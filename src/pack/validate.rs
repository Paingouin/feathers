//! Checks a freshly built world for dangling references and likely mistakes.

use std::collections::{BTreeMap, BTreeSet, VecDeque};

use unicode_width::UnicodeWidthChar;

use crate::world::{
    Condition, Effect, ItemId, Look, Node, SpaceId, Text, TrackerKind, World,
};

/// Size of a pack, for `feathers check`.
#[derive(Clone, Debug, Default, PartialEq, Eq)]
pub struct Stats {
    pub spaces: usize,
    pub things: usize,
    pub actions: usize,
    pub items: usize,
    pub secrets: usize,
    pub wonders: usize,
    pub hooks: usize,
    /// Region name and number of spaces, in declaration order.
    pub regions: Vec<(String, usize)>,
}

#[derive(Default)]
struct Walk<'a> {
    conditions: Vec<(&'a str, &'a Condition)>,
    effects: Vec<(&'a str, &'a Effect)>,
    undescribed: Vec<&'a str>,
    icons: Vec<(&'a str, &'a str)>,
    things: usize,
    actions: usize,
}

impl<'a> Walk<'a> {
    fn node(&mut self, at: &'a str, node: &'a Node) {
        if node.description.is_blank() {
            self.undescribed.push(at);
        }
        if let Some(icon) = &node.icon {
            self.icons.push((at, icon));
        }
        let variant_actions = node.variants.iter().filter_map(|v| v.actions.as_ref());
        for action in node.actions.iter().chain(variant_actions.flatten()) {
            self.actions += 1;
            self.conditions.push((at, &action.when));
            self.effects.extend(action.effects.iter().map(|e| (at, e)));
        }
        self.conditions
            .extend(node.variants.iter().map(|v| (at, &v.when)));
        let variant_things = node.variants.iter().filter_map(|v| v.things.as_ref());
        for thing in node.things.iter().chain(variant_things.flatten()) {
            self.things += 1;
            self.conditions.push((&thing.key, &thing.visible_if));
            self.node(&thing.key, &thing.node);
        }
    }
}

fn flatten<'a>(condition: &'a Condition, out: &mut Vec<&'a Condition>) {
    match condition {
        Condition::Not(inner) => flatten(inner, out),
        Condition::All(list) | Condition::Any(list) => list.iter().for_each(|c| flatten(c, out)),
        leaf => out.push(leaf),
    }
}

fn one_cell(c: char) -> bool {
    c.width() == Some(1)
}

pub(super) fn validate(
    world: &World,
    hooks: usize,
    problems: &mut Vec<String>,
    warnings: &mut Vec<String>,
) -> Stats {
    let known_space = |id: &SpaceId| world.space(id).is_some();
    let known_item = |id: &ItemId| world.item(id).is_some();

    if !known_space(&world.start) {
        problems.push(format!(
            "pack.lua: start space '{}' does not exist",
            world.start
        ));
    }

    let mut walk = Walk::default();
    let mut go_targets: BTreeMap<&SpaceId, Vec<&SpaceId>> = BTreeMap::new();
    for space in world.spaces.values() {
        let at = space.id.as_str();
        if world.region(&space.region).is_none() {
            problems.push(format!(
                "space '{at}': region '{}' does not exist",
                space.region
            ));
        }
        let before = walk.effects.len();
        walk.node(at, &space.node);
        walk.effects.extend(space.on_enter.iter().map(|e| (at, e)));
        let links = go_targets.entry(&space.id).or_default();
        for (_, effect) in &walk.effects[before..] {
            if let Effect::Go(to) = effect {
                links.push(to);
            }
        }
        for exit in &space.exits {
            if !known_space(&exit.to) {
                problems.push(format!(
                    "space '{at}': exit leads to '{}', which does not exist",
                    exit.to
                ));
            }
            links.push(&exit.to);
            walk.conditions.push((at, &exit.requires));
        }
    }
    let item_keys: Vec<(String, &Node)> = world
        .items
        .values()
        .map(|item| (format!("item '{}'", item.id), &item.node))
        .collect();
    for (at, node) in &item_keys {
        walk.node(at, node);
    }

    let mut tested_flags: BTreeMap<&str, &str> = BTreeMap::new();
    let mut leaves = Vec::new();
    for (at, condition) in &walk.conditions {
        leaves.clear();
        flatten(condition, &mut leaves);
        for leaf in &leaves {
            match leaf {
                Condition::Flag(flag) => {
                    tested_flags.entry(flag).or_insert(at);
                }
                Condition::Item(item) if !known_item(item) => {
                    problems.push(format!("{at}: condition needs item '{item}', which does not exist"));
                }
                Condition::Visited(space) if !known_space(space) => {
                    problems.push(format!("{at}: condition mentions space '{space}', which does not exist"));
                }
                _ => {}
            }
        }
    }

    let mut set_flags: BTreeSet<&str> = BTreeSet::new();
    let mut scripted_effects = false;
    for (at, effect) in &walk.effects {
        match effect {
            Effect::SetFlag(flag) => {
                set_flags.insert(flag);
            }
            Effect::GiveItem(item) | Effect::TakeItem(item) if !known_item(item) => {
                problems.push(format!("{at}: effect uses item '{item}', which does not exist"));
            }
            Effect::Go(space) if !known_space(space) => {
                problems.push(format!("{at}: effect goes to '{space}', which does not exist"));
            }
            Effect::Script(_) => scripted_effects = true,
            _ => {}
        }
    }

    for tracker in &world.trackers {
        match &tracker.counts {
            TrackerKind::Items(items) => {
                for item in items.iter().filter(|i| !known_item(i)) {
                    problems.push(format!(
                        "pack.lua: tracker '{}' counts item '{item}', which does not exist",
                        tracker.name
                    ));
                }
            }
            TrackerKind::Flags(flags) => {
                for flag in flags {
                    tested_flags.entry(flag).or_insert("pack.lua");
                }
            }
            _ => {}
        }
    }

    for (flag, at) in &tested_flags {
        if !set_flags.contains(flag) {
            warnings.push(format!(
                "{at}: flag '{flag}' is tested but never set{}",
                if scripted_effects { " by a declared effect (a script may set it)" } else { "" }
            ));
        }
    }

    // Reachability, ignoring conditions: can the player ever get there at all?
    let mut reached: BTreeSet<&SpaceId> = BTreeSet::new();
    let mut queue = VecDeque::from([&world.start]);
    while let Some(id) = queue.pop_front() {
        if known_space(id) && reached.insert(id) {
            queue.extend(go_targets.get(id).into_iter().flatten());
        }
    }
    for id in world.spaces.keys().filter(|id| !reached.contains(id)) {
        warnings.push(format!(
            "space '{id}' cannot be reached from the start{}",
            if scripted_effects { " by exits or declared effects" } else { "" }
        ));
    }

    for at in &walk.undescribed {
        warnings.push(format!("{at}: no description"));
    }
    for region in &world.regions {
        if region.description.is_blank() {
            warnings.push(format!("region '{}': no description", region.id));
        }
    }
    for (at, icon) in &walk.icons {
        if !(icon.chars().count() == 1 && icon.chars().all(one_cell)) {
            warnings.push(format!(
                "{at}: icon '{icon}' should be a single one-cell-wide character (no emoji)"
            ));
        }
    }
    let looks = world
        .regions
        .iter()
        .map(|r| (format!("region '{}'", r.id), &r.look))
        .chain(
            world
                .spaces
                .values()
                .map(|s| (format!("space '{}'", s.id), &s.look)),
        );
    for (at, look) in looks {
        check_look(&at, look, warnings);
    }

    let region_name = |text: &Text, id: &str| match text {
        Text::Static(spans) => crate::world::plain_text(spans),
        Text::Script(_) => id.to_owned(),
    };
    Stats {
        spaces: world.spaces.len(),
        things: walk.things,
        actions: walk.actions,
        items: world.items.len(),
        secrets: world.spaces.values().filter(|s| s.secret).count(),
        wonders: world.spaces.values().filter(|s| s.wonder).count() + world.wonder_things().len(),
        hooks,
        regions: world
            .regions
            .iter()
            .map(|region| {
                let spaces = world.spaces.values().filter(|s| s.region == region.id);
                (region_name(&region.name, region.id.as_str()), spaces.count())
            })
            .collect(),
    }
}

fn check_look(at: &str, look: &Look, warnings: &mut Vec<String>) {
    let wide: BTreeSet<char> = look
        .ambience
        .iter()
        .flatten()
        .flat_map(|spec| spec.glyphs.iter().copied())
        .chain(look.backdrop.iter().flatten().flat_map(|row| row.chars()))
        .filter(|c| !one_cell(*c))
        .collect();
    if !wide.is_empty() {
        warnings.push(format!(
            "{at}: ambience or backdrop uses characters that are not one cell wide: {}",
            wide.iter().collect::<String>()
        ));
    }
}
