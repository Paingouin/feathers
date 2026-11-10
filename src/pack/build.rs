//! Turns the tables a pack declared in Lua into the world model, collecting every problem
//! instead of stopping at the first, so an author can fix a whole batch at once.

use std::collections::HashMap;
use std::fmt::Display;

use mlua::{Function, Table, Value};

use crate::world::{
    Action, AmbientKind, AmbientSpec, Condition, Effect, Exit, HookId, Item, ItemId, Labels,
    Locked, Look, Meta, Node, OneShot, OneShotKind, Palette, Region, RegionId, Rgb, Space, SpaceId,
    Text, Thing, Tracker, TrackerKind, Variant, plain_text,
};

use super::API_VERSION;
use super::markup::{self, Theme};

const NODE_FIELDS: [&str; 6] = [
    "name",
    "description",
    "icon",
    "actions",
    "things",
    "variants",
];
const LOOK_FIELDS: [&str; 3] = ["palette", "ambience", "backdrop"];

pub(super) struct Builder {
    pub theme: Theme,
    pub hooks: Vec<Function>,
    pub problems: Vec<String>,
    /// `file:line` of the declaration being read.
    src: String,
    /// Where inside that declaration we are, e.g. `space 'inn'`, `thing 'the bed'`.
    trail: Vec<String>,
}

pub(super) struct Manifest {
    pub meta: Meta,
    pub start: SpaceId,
    pub labels: Labels,
    pub trackers: Vec<Tracker>,
}

fn type_name(value: &Value) -> &'static str {
    value.type_name()
}

fn field(table: &Table, name: &str) -> Value {
    table.raw_get(name).unwrap_or(Value::Nil)
}

fn string_of(value: &Value) -> Option<String> {
    match value {
        Value::String(s) => Some(s.to_string_lossy()),
        Value::Integer(i) => Some(i.to_string()),
        Value::Number(n) => Some(n.to_string()),
        _ => None,
    }
}

fn required(table: &Table, name: &str) -> Result<String, String> {
    let value = field(table, name);
    string_of(&value).ok_or_else(|| format!("'{name}' must be a string, not {}", type_name(&value)))
}

fn color(text: &str, theme: &Theme) -> Result<Rgb, String> {
    theme
        .color(text)
        .ok_or_else(|| format!("'{text}' is not a colour (use \"#rrggbb\" or a theme name)"))
}

/// Converts an effect table that contains no script function. Shared with the runtime, which
/// uses it for the effects a script hook emits.
pub(super) fn plain_effect(table: &Table, theme: &Theme) -> Result<Effect, String> {
    let kind = required(table, "__fx")
        .map_err(|_| "expected an effect such as say \"...\" or set \"flag\"".to_owned())?;
    Ok(match kind.as_str() {
        "set" => Effect::SetFlag(required(table, "name")?),
        "clear" => Effect::ClearFlag(required(table, "name")?),
        "give" => Effect::GiveItem(ItemId::new(required(table, "id")?)),
        "take" => Effect::TakeItem(ItemId::new(required(table, "id")?)),
        "go" => Effect::Go(SpaceId::new(required(table, "id")?)),
        "say" => Effect::Say(Text::Static(markup::parse(
            &required(table, "text")?,
            theme,
        )?)),
        "fx" => {
            let name = required(table, "kind")?;
            let kind = OneShotKind::parse(&name)
                .ok_or_else(|| format!("unknown fx '{name}' (shake, flash, sparkle or wash)"))?;
            let color = match field(table, "color") {
                Value::Nil => None,
                value => Some(color(&string_of(&value).unwrap_or_default(), theme)?),
            };
            Effect::Fx(OneShot { kind, color })
        }
        other => return Err(format!("unknown effect '{other}'")),
    })
}

impl Builder {
    pub fn new(theme: Theme) -> Self {
        Self {
            theme,
            hooks: Vec::new(),
            problems: Vec::new(),
            src: String::new(),
            trail: Vec::new(),
        }
    }

    pub fn at(&mut self, src: impl Into<String>) {
        self.src = src.into();
    }

    pub fn problem(&mut self, message: impl Display) {
        let mut text = self.src.clone();
        for step in &self.trail {
            text.push_str(if text.is_empty() { "" } else { ": " });
            text.push_str(step);
        }
        self.problems.push(format!("{text}: {message}"));
    }

    fn within<R>(&mut self, step: String, body: impl FnOnce(&mut Self) -> R) -> R {
        self.trail.push(step);
        let result = body(self);
        self.trail.pop();
        result
    }

    fn hook(&mut self, function: Function) -> HookId {
        self.hooks.push(function);
        HookId(self.hooks.len() - 1)
    }

    /// Reports fields the engine does not know, which are nearly always typos.
    fn known(&mut self, table: &Table, allowed: &[&[&str]], positional: bool) {
        let mut unknown = Vec::new();
        let _ = table.for_each(|key: Value, _: Value| {
            match &key {
                Value::String(s) => {
                    let name = s.to_string_lossy();
                    let ok = name.starts_with("__")
                        || allowed.iter().any(|set| set.contains(&name.as_str()));
                    if !ok {
                        unknown.push(format!("unknown field '{name}'"));
                    }
                }
                Value::Integer(_) if positional => {}
                other => unknown.push(format!(
                    "unexpected {} entry (a missing 'name =' or a stray comma?)",
                    if matches!(other, Value::Integer(_)) {
                        "positional"
                    } else {
                        type_name(other)
                    }
                )),
            }
            Ok(())
        });
        unknown.sort();
        unknown.dedup();
        for message in unknown {
            self.problem(message);
        }
    }

    fn string(&mut self, table: &Table, name: &str) -> Option<String> {
        match field(table, name) {
            Value::Nil => None,
            value => {
                let text = string_of(&value);
                if text.is_none() {
                    self.problem(format!(
                        "'{name}' must be a string, not {}",
                        type_name(&value)
                    ));
                }
                text
            }
        }
    }

    fn id(&mut self, table: &Table, name: &str) -> Option<String> {
        let id = self.string(table, name);
        if id.is_none() {
            self.problem(format!("missing '{name}'"));
        }
        id
    }

    fn boolean(&mut self, table: &Table, name: &str) -> bool {
        match field(table, name) {
            Value::Nil => false,
            Value::Boolean(b) => b,
            value => {
                self.problem(format!(
                    "'{name}' must be true or false, not {}",
                    type_name(&value)
                ));
                false
            }
        }
    }

    fn number(&mut self, table: &Table, name: &str) -> Option<f32> {
        match field(table, name) {
            Value::Nil => None,
            Value::Integer(i) => Some(i as f32),
            Value::Number(n) => Some(n as f32),
            value => {
                self.problem(format!(
                    "'{name}' must be a number, not {}",
                    type_name(&value)
                ));
                None
            }
        }
    }

    fn list(&mut self, table: &Table, name: &str) -> Option<Vec<Value>> {
        match field(table, name) {
            Value::Nil => None,
            Value::Table(list) => Some(list.sequence_values::<Value>().flatten().collect()),
            value => {
                self.problem(format!(
                    "'{name}' must be a list, not {}",
                    type_name(&value)
                ));
                None
            }
        }
    }

    fn markup(&mut self, source: &str) -> Text {
        match markup::parse(source, &self.theme) {
            Ok(spans) => Text::Static(spans),
            Err(message) => {
                self.problem(message);
                Text::plain(source)
            }
        }
    }

    fn text(&mut self, table: &Table, name: &str) -> Option<Text> {
        match field(table, name) {
            Value::Nil => None,
            Value::String(s) => Some(self.markup(&s.to_string_lossy())),
            Value::Function(f) => Some(Text::Script(self.hook(f))),
            value => {
                self.problem(format!(
                    "'{name}' must be text or a function, not {}",
                    type_name(&value)
                ));
                None
            }
        }
    }

    fn color(&mut self, table: &Table, name: &str) -> Option<Rgb> {
        let text = self.string(table, name)?;
        match color(&text, &self.theme) {
            Ok(rgb) => Some(rgb),
            Err(message) => {
                self.problem(format!("'{name}': {message}"));
                None
            }
        }
    }

    fn condition(&mut self, value: Value) -> Condition {
        let table = match value {
            Value::Nil => return Condition::Always,
            Value::Function(f) => return Condition::Script(self.hook(f)),
            Value::Table(table) => table,
            other => {
                self.problem(format!("expected a condition, not {}", type_name(&other)));
                return Condition::Always;
            }
        };
        let need = |builder: &mut Self, name: &str| {
            required(&table, name).unwrap_or_else(|message| {
                builder.problem(format!("condition: {message}"));
                String::new()
            })
        };
        match string_of(&field(&table, "__cond")).as_deref() {
            Some("flag") => Condition::Flag(need(self, "name")),
            Some("item") => Condition::Item(ItemId::new(need(self, "id"))),
            Some("visited") => Condition::Visited(SpaceId::new(need(self, "id"))),
            Some("not") => Condition::Not(Box::new(
                self.condition(table.raw_get(1).unwrap_or(Value::Nil)),
            )),
            Some(kind @ ("all" | "any")) => {
                let parts = self
                    .list(&table, "list")
                    .unwrap_or_default()
                    .into_iter()
                    .map(|part| self.condition(part))
                    .collect();
                if kind == "all" {
                    Condition::All(parts)
                } else {
                    Condition::Any(parts)
                }
            }
            _ => {
                self.problem(
                    "expected a condition such as flag \"name\", item \"id\" or a function",
                );
                Condition::Always
            }
        }
    }

    fn effect(&mut self, value: Value) -> Option<Effect> {
        match value {
            Value::Function(f) => Some(Effect::Script(self.hook(f))),
            Value::Table(table) => {
                if let Value::Function(f) = field(&table, "text") {
                    return Some(Effect::Say(Text::Script(self.hook(f))));
                }
                match plain_effect(&table, &self.theme) {
                    Ok(effect) => Some(effect),
                    Err(message) => {
                        self.problem(message);
                        None
                    }
                }
            }
            other => {
                self.problem(format!(
                    "expected an effect such as say \"...\" or a function, not {}",
                    type_name(&other)
                ));
                None
            }
        }
    }

    /// `on_enter` and similar: one function, or a list of effects.
    fn effects(&mut self, table: &Table, name: &str) -> Vec<Effect> {
        match field(table, name) {
            Value::Nil => Vec::new(),
            Value::Function(f) => vec![Effect::Script(self.hook(f))],
            Value::Table(list) if field(&list, "__fx") == Value::Nil => list
                .sequence_values::<Value>()
                .flatten()
                .filter_map(|value| self.effect(value))
                .collect(),
            single => self.effect(single).into_iter().collect(),
        }
    }

    fn action(&mut self, value: Value) -> Option<Action> {
        let Value::Table(table) = value else {
            self.problem("an action must be a table: { \"Label\", effects... }");
            return None;
        };
        let Some(label) = string_of(&table.raw_get(1).unwrap_or(Value::Nil)) else {
            self.problem("an action must start with its label: { \"Label\", effects... }");
            return None;
        };
        self.within(format!("action '{label}'"), |b| {
            b.known(&table, &[&["when", "once"]], true);
            let effects = (2..=table.raw_len())
                .filter_map(|i| b.effect(table.raw_get(i).unwrap_or(Value::Nil)))
                .collect();
            Some(Action {
                when: b.condition(field(&table, "when")),
                once: b.boolean(&table, "once"),
                effects,
                label: label.clone(),
            })
        })
    }

    fn actions(&mut self, table: &Table) -> Option<Vec<Action>> {
        let list = self.list(table, "actions")?;
        Some(list.into_iter().filter_map(|v| self.action(v)).collect())
    }

    fn things(&mut self, table: &Table, parent_key: &str) -> Option<Vec<Thing>> {
        let list = self.list(table, "things")?;
        let mut siblings: HashMap<String, usize> = HashMap::new();
        Some(
            list.into_iter()
                .filter_map(|value| self.thing(value, parent_key, &mut siblings))
                .collect(),
        )
    }

    fn thing(
        &mut self,
        value: Value,
        parent_key: &str,
        siblings: &mut HashMap<String, usize>,
    ) -> Option<Thing> {
        let Value::Table(table) = value else {
            self.problem(format!(
                "a thing must be a table, not {}",
                type_name(&value)
            ));
            return None;
        };
        // A thing's identity comes from its place in the tree: its explicit key, else its name.
        let segment = match (self.string(&table, "key"), field(&table, "name")) {
            (Some(key), _) => key,
            (None, Value::String(name)) => {
                match markup::parse(&name.to_string_lossy(), &self.theme) {
                    Ok(spans) => plain_text(&spans),
                    Err(_) => name.to_string_lossy(),
                }
            }
            (None, Value::Function(_)) => {
                self.problem("a thing whose name is a function needs a 'key'");
                return None;
            }
            (None, _) => {
                self.problem("a thing needs a 'name'");
                return None;
            }
        };
        let mut key = format!("{parent_key}/{segment}");
        let count = siblings.entry(key.clone()).or_insert(0);
        *count += 1;
        if *count > 1 {
            key = format!("{key}#{count}");
        }
        self.within(format!("thing '{segment}'"), |b| {
            b.known(
                &table,
                &[&NODE_FIELDS, &["key", "visible_if", "wonder"]],
                false,
            );
            Some(Thing {
                node: b.node(&table, &key),
                visible_if: b.condition(field(&table, "visible_if")),
                wonder: b.boolean(&table, "wonder"),
                key,
            })
        })
    }

    fn node(&mut self, table: &Table, key: &str) -> Node {
        let name = self.text(table, "name").unwrap_or_else(|| {
            self.problem("missing 'name'");
            Text::empty()
        });
        Node {
            name,
            description: self.text(table, "description").unwrap_or_else(Text::empty),
            icon: self.string(table, "icon"),
            actions: self.actions(table).unwrap_or_default(),
            things: self.things(table, key).unwrap_or_default(),
            variants: self.variants(table, key),
        }
    }

    fn variants(&mut self, table: &Table, key: &str) -> Vec<Variant> {
        let list = self.list(table, "variants").unwrap_or_default();
        list.into_iter()
            .enumerate()
            .filter_map(|(index, value)| {
                self.within(format!("variant {}", index + 1), |b| {
                    let Value::Table(variant) = value else {
                        b.problem("a variant must be a table: { when = ..., description = ... }");
                        return None;
                    };
                    b.known(
                        &variant,
                        &[&["when", "name", "description", "actions", "things"]],
                        false,
                    );
                    if field(&variant, "when") == Value::Nil {
                        b.problem(
                            "missing 'when' (a variant without a condition would always apply)",
                        );
                    }
                    Some(Variant {
                        when: b.condition(field(&variant, "when")),
                        name: b.text(&variant, "name"),
                        description: b.text(&variant, "description"),
                        actions: b.actions(&variant),
                        things: b.things(&variant, key),
                    })
                })
            })
            .collect()
    }

    fn exit(&mut self, value: Value) -> Option<Exit> {
        let Value::Table(table) = value else {
            self.problem("an exit must be a table: { to = \"space_id\" }");
            return None;
        };
        let to = self.id(&table, "to")?;
        self.within(format!("exit to '{to}'"), |b| {
            b.known(
                &table,
                &[&["to", "label", "description", "requires", "locked", "hidden"]],
                true,
            );
            let effects = (1..=table.raw_len())
                .filter_map(|i| b.effect(table.raw_get(i).unwrap_or(Value::Nil)))
                .collect();
            let hint = b.text(&table, "locked");
            let hidden = b.boolean(&table, "hidden");
            if hint.is_some() && hidden {
                b.problem("use either 'locked' (shown with a hint) or 'hidden', not both");
            }
            Some(Exit {
                to: SpaceId::new(to.clone()),
                label: b.text(&table, "label"),
                description: b.text(&table, "description"),
                requires: b.condition(field(&table, "requires")),
                locked: hint.map_or(Locked::Hidden, Locked::Shown),
                effects,
            })
        })
    }

    fn look(&mut self, table: &Table) -> Look {
        let palette = match field(table, "palette") {
            Value::Nil => None,
            Value::Table(colors) => self.within("palette".into(), |b| {
                b.known(
                    &colors,
                    &[&["bg", "text", "dim", "accent", "border"]],
                    false,
                );
                let base = Palette::default();
                Some(Palette {
                    bg: b.color(&colors, "bg").unwrap_or(base.bg),
                    text: b.color(&colors, "text").unwrap_or(base.text),
                    dim: b.color(&colors, "dim").unwrap_or(base.dim),
                    accent: b.color(&colors, "accent").unwrap_or(base.accent),
                    border: b.color(&colors, "border").unwrap_or(base.border),
                })
            }),
            _ => {
                self.problem("'palette' must be a table of colours");
                None
            }
        };
        let ambience = self.list(table, "ambience").map(|list| {
            list.into_iter()
                .filter_map(|value| self.ambient(value))
                .collect()
        });
        let backdrop = self
            .list(table, "backdrop")
            .map(|rows| rows.iter().filter_map(string_of).collect());
        Look {
            palette,
            ambience,
            backdrop,
        }
    }

    fn ambient(&mut self, value: Value) -> Option<AmbientSpec> {
        let kind = match &value {
            Value::Table(table) => string_of(&field(table, "__amb")),
            _ => None,
        };
        let (Value::Table(table), Some(kind)) = (value, kind) else {
            self.problem("'ambience' entries must be effects such as rain { ... } or fog { ... }");
            return None;
        };
        self.within(format!("ambience {kind}"), |b| {
            b.known(
                &table,
                &[&["glyphs", "color", "colors", "rate", "speed", "strength"]],
                false,
            );
            let mut colors: Vec<Rgb> = b.color(&table, "color").into_iter().collect();
            for value in b.list(&table, "colors").unwrap_or_default() {
                match color(&string_of(&value).unwrap_or_default(), &b.theme) {
                    Ok(rgb) => colors.push(rgb),
                    Err(message) => b.problem(message),
                }
            }
            Some(AmbientSpec {
                kind: AmbientKind::parse(&kind)?,
                glyphs: b
                    .string(&table, "glyphs")
                    .map(|g| g.chars().filter(|c| !c.is_whitespace()).collect())
                    .unwrap_or_default(),
                colors,
                rate: b.number(&table, "rate"),
                speed: b.number(&table, "speed"),
                strength: b.number(&table, "strength"),
            })
        })
    }

    pub fn region(&mut self, table: &Table) -> Option<Region> {
        self.at(string_of(&field(table, "__src")).unwrap_or_default());
        let id = self.id(table, "id")?;
        self.within(format!("region '{id}'"), |b| {
            b.known(
                table,
                &[&["id", "name", "description"], &LOOK_FIELDS],
                false,
            );
            Some(Region {
                name: b.text(table, "name").unwrap_or_else(|| {
                    b.problem("missing 'name'");
                    Text::empty()
                }),
                description: b.text(table, "description").unwrap_or_else(Text::empty),
                look: b.look(table),
                id: RegionId::new(id.clone()),
            })
        })
    }

    pub fn item(&mut self, table: &Table) -> Option<Item> {
        self.at(string_of(&field(table, "__src")).unwrap_or_default());
        let id = self.id(table, "id")?;
        self.within(format!("item '{id}'"), |b| {
            b.known(table, &[&["id"], &NODE_FIELDS], false);
            Some(Item {
                node: b.node(table, &format!("item:{id}")),
                id: ItemId::new(id.clone()),
            })
        })
    }

    pub fn space(&mut self, table: &Table) -> Option<Space> {
        self.at(string_of(&field(table, "__src")).unwrap_or_default());
        let id = self.id(table, "id")?;
        self.within(format!("space '{id}'"), |b| {
            b.known(
                table,
                &[
                    &["id", "region", "exits", "secret", "wonder", "on_enter"],
                    &NODE_FIELDS,
                    &LOOK_FIELDS,
                ],
                false,
            );
            let region = b.id(table, "region").unwrap_or_default();
            let exits = b
                .list(table, "exits")
                .unwrap_or_default()
                .into_iter()
                .filter_map(|value| b.exit(value))
                .collect();
            Some(Space {
                region: RegionId::new(region),
                node: b.node(table, &id),
                exits,
                secret: b.boolean(table, "secret"),
                wonder: b.boolean(table, "wonder"),
                on_enter: b.effects(table, "on_enter"),
                look: b.look(table),
                id: SpaceId::new(id.clone()),
            })
        })
    }

    /// Reads `pack.lua`'s table, except its theme (see [`theme`]), which is needed first.
    pub fn manifest(&mut self, table: &Table) -> Manifest {
        self.at("pack.lua");
        self.known(
            table,
            &[&[
                "id",
                "name",
                "version",
                "author",
                "description",
                "api",
                "start",
                "theme",
                "trackers",
                "labels",
            ]],
            false,
        );
        let id = self.id(table, "id").unwrap_or_default();
        if !id
            .chars()
            .all(|c| c.is_ascii_alphanumeric() || c == '_' || c == '-')
        {
            self.problem(
                "'id' may only contain letters, digits, '_' and '-' (it names the save file)",
            );
        }
        match field(table, "api") {
            Value::Integer(API_VERSION) => {}
            Value::Nil => self.problem(format!(
                "missing 'api' (this engine speaks api = {API_VERSION})"
            )),
            other => self.problem(format!(
                "pack wants api {}, this engine speaks api {API_VERSION}",
                string_of(&other).unwrap_or_else(|| type_name(&other).to_owned())
            )),
        }
        let meta = Meta {
            name: self.string(table, "name").unwrap_or_else(|| id.clone()),
            version: self.string(table, "version").unwrap_or_default(),
            author: self.string(table, "author").unwrap_or_default(),
            description: self.string(table, "description").unwrap_or_default(),
            id,
        };
        let start = SpaceId::new(self.id(table, "start").unwrap_or_default());

        let mut labels = Labels::default();
        if let Value::Table(custom) = field(table, "labels") {
            self.within("labels".into(), |b| {
                let slots: [(&str, &mut String); 11] = [
                    ("destinations", &mut labels.destinations),
                    ("carrying", &mut labels.carrying),
                    ("actions", &mut labels.actions),
                    ("go", &mut labels.go),
                    ("journal", &mut labels.journal),
                    ("continue", &mut labels.resume),
                    ("new_journey", &mut labels.new_journey),
                    ("nothing_to_do", &mut labels.nothing_to_do),
                    ("wonder", &mut labels.wonder),
                    ("secret", &mut labels.secret),
                    ("seen", &mut labels.seen),
                ];
                let names: Vec<&str> = slots.iter().map(|(name, _)| *name).collect();
                b.known(&custom, &[&names], false);
                for (name, slot) in slots {
                    if let Some(text) = b.string(&custom, name) {
                        *slot = text;
                    }
                }
            });
        }

        let trackers = self
            .list(table, "trackers")
            .unwrap_or_default()
            .into_iter()
            .filter_map(|value| self.tracker(value))
            .collect();
        Manifest {
            meta,
            start,
            labels,
            trackers,
        }
    }

    fn tracker(&mut self, value: Value) -> Option<Tracker> {
        let Value::Table(table) = value else {
            self.problem("a tracker must be a table: { name = \"Secrets\", count = \"secrets\" }");
            return None;
        };
        let name = self.id(&table, "name")?;
        self.within(format!("tracker '{name}'"), |b| {
            b.known(&table, &[&["name", "count", "items", "flags"]], false);
            let strings = |b: &mut Self, field: &str| -> Option<Vec<String>> {
                Some(b.list(&table, field)?.iter().filter_map(string_of).collect())
            };
            let counts = if let Some(items) = strings(b, "items") {
                TrackerKind::Items(items.into_iter().map(ItemId::new).collect())
            } else if let Some(flags) = strings(b, "flags") {
                TrackerKind::Flags(flags)
            } else {
                match b.string(&table, "count").as_deref() {
                    Some("spaces") => TrackerKind::Spaces,
                    Some("secrets") => TrackerKind::Secrets,
                    Some("wonders") => TrackerKind::Wonders,
                    _ => {
                        b.problem(
                            "needs count = \"spaces\", \"secrets\" or \"wonders\", or a list of 'items' or 'flags'",
                        );
                        return None;
                    }
                }
            };
            Some(Tracker {
                name: name.clone(),
                counts,
            })
        })
    }
}

/// Reads the manifest's colour names. Returns the problems found alongside.
pub(super) fn theme(manifest: &Table) -> (Theme, Vec<String>) {
    let mut theme = Theme::default();
    let mut problems = Vec::new();
    match field(manifest, "theme") {
        Value::Nil => {}
        Value::Table(colors) => {
            let _ = colors.for_each(|name: String, value: Value| {
                match Rgb::parse(&string_of(&value).unwrap_or_default()) {
                    Some(rgb) => theme.insert(name, rgb),
                    None => problems.push(format!(
                        "pack.lua: theme: '{name}' must be \"#rrggbb\" or a built-in colour name"
                    )),
                }
                Ok(())
            });
        }
        _ => problems.push("pack.lua: 'theme' must be a table of colours".to_owned()),
    }
    (theme, problems)
}
