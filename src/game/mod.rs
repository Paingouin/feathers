//! The rules: how commands change the player's progress, and what the player can see.
//!
//! [`Game::apply`] is the only way progress changes and [`Game::view`] is the only thing an
//! interface needs to read, so everything here runs (and is tested) without a terminal.

pub mod save;
mod scripts;
mod state;
mod view;

use std::rc::Rc;

pub use scripts::{NoScripts, Scripts};
pub use state::State;
pub use view::{
    Journal, JournalRegion, JournalSpace, NodeKind, Seen, TrackerCount, View, ViewAction, ViewNode,
};

use crate::world::{
    Action, Condition, Effect, Exit, ItemId, Locked, Node, OneShot, Space, SpaceId, Span, Text,
    Thing, Tracker, TrackerKind, World,
};

/// Effects can trigger further effects (scripts, arriving somewhere); this bounds runaway chains.
const MAX_CHAIN: usize = 16;

/// Something the player asks for.
#[derive(Clone, Debug, PartialEq, Eq)]
pub enum Command {
    /// Do one of a node's actions. Travelling is the single action of an exit.
    Act { key: String, action: usize },
    /// Turn attention to a node. Looking at a wonder discovers it.
    Look { key: String },
}

/// Something that happened as a result of a command, for the interface to present.
#[derive(Clone, Debug, PartialEq, Eq)]
pub enum Event {
    Said(Vec<Span>),
    Moved { from: SpaceId, to: SpaceId },
    Gained(Vec<Span>),
    Lost(Vec<Span>),
    Fx(OneShot),
    Discovered { what: Discovery, name: Vec<Span> },
}

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum Discovery {
    Secret,
    Wonder,
}

pub struct Game<S> {
    world: Rc<World>,
    state: State,
    scripts: S,
}

/// A node as it currently presents itself, after picking the variant that applies.
struct Face<'a> {
    name: &'a Text,
    description: &'a Text,
    actions: &'a [Action],
    things: &'a [Thing],
}

enum Target<'a> {
    Node {
        key: String,
        node: &'a Node,
        wonder: bool,
    },
    Exit(&'a Exit),
}

fn exit_key(space: &Space, index: usize) -> String {
    format!("{}>{}#{index}", space.id, space.exits[index].to)
}

fn item_key(item: &ItemId) -> String {
    format!("item:{item}")
}

fn once_key(node_key: &str, label: &str) -> String {
    format!("{node_key}::{label}")
}

/// A fingerprint of what a node shows. It is stored in saves, so it must not depend on the
/// build or the platform: FNV-1a over the name, the description and the action labels.
fn fingerprint(node: &ViewNode) -> u64 {
    let mut hash: u64 = 0xcbf2_9ce4_8422_2325;
    let mut feed = |bytes: &[u8]| {
        for byte in bytes.iter().chain(&[0xff]) {
            hash = (hash ^ u64::from(*byte)).wrapping_mul(0x0000_0100_0000_01b3);
        }
    };
    let texts = node.name.iter().chain(&node.description);
    texts.for_each(|span| feed(span.text.as_bytes()));
    node.actions.iter().for_each(|a| feed(a.label.as_bytes()));
    hash
}

/// (looked at, on show) over a node and everything inside it.
fn seen_counts(node: &ViewNode) -> (usize, usize) {
    let own = usize::from(node.seen != Seen::New);
    node.children
        .iter()
        .map(seen_counts)
        .fold((own, 1), |(s, t), (cs, ct)| (s + cs, t + ct))
}

impl<S: Scripts> Game<S> {
    /// A fresh journey. Call [`Game::begin`] to arrive at the starting space.
    pub fn new(world: Rc<World>, scripts: S) -> Self {
        let state = State::new(world.start.clone());
        Self::resume(world, scripts, state)
    }

    /// Continues from saved progress. The state's location must exist in the world
    /// (see [`save::reconcile`]).
    pub fn resume(world: Rc<World>, scripts: S, state: State) -> Self {
        Self {
            world,
            state,
            scripts,
        }
    }

    pub fn world(&self) -> &World {
        &self.world
    }

    pub fn state(&self) -> &State {
        &self.state
    }

    /// Arrives at the current location as if just travelled there. Used to start a journey.
    pub fn begin(&mut self) -> Vec<Event> {
        let mut events = Vec::new();
        let world = Rc::clone(&self.world);
        let here = self.state.location.clone();
        self.arrive(&world, &here, &mut events, 0);
        events
    }

    pub fn apply(&mut self, command: Command) -> Vec<Event> {
        let mut events = Vec::new();
        let world = Rc::clone(&self.world);
        match command {
            Command::Act { key, action } => self.act(&world, &key, action, &mut events),
            Command::Look { key } => self.look(&world, &key, &mut events),
        }
        events
    }

    fn act(&mut self, world: &World, key: &str, action: usize, events: &mut Vec<Event>) {
        match self.find(world, key) {
            Some(Target::Exit(exit)) => {
                if action == 0 && self.test(&exit.requires) {
                    self.travel(world, &exit.to, events, 0);
                }
            }
            Some(Target::Node { key, node, .. }) => {
                let Some(chosen) = self.face(node).actions.get(action) else {
                    return;
                };
                if !self.available(&key, chosen) {
                    return;
                }
                if chosen.once {
                    self.state.spent.insert(once_key(&key, &chosen.label));
                }
                self.run(world, &chosen.effects, events, 0);
            }
            None => {}
        }
    }

    fn look(&mut self, world: &World, key: &str, events: &mut Vec<Event>) {
        let Some(Target::Node { key, node, wonder }) = self.find(world, key) else {
            return;
        };
        let shown = self.view_node(key.clone(), NodeKind::Thing, node, false);
        let first_time = self.state.seen.insert(key, fingerprint(&shown)).is_none();
        if wonder && first_time {
            events.push(Event::Discovered {
                what: Discovery::Wonder,
                name: shown.name,
            });
        }
    }

    fn run(&mut self, world: &World, effects: &[Effect], events: &mut Vec<Event>, depth: usize) {
        if depth > MAX_CHAIN {
            return;
        }
        for effect in effects {
            match effect {
                Effect::SetFlag(flag) => {
                    self.state.flags.insert(flag.clone());
                }
                Effect::ClearFlag(flag) => {
                    self.state.flags.remove(flag);
                }
                Effect::GiveItem(id) => {
                    if let Some(item) = world.item(id)
                        && !self.state.has(id)
                    {
                        self.state.inventory.push(id.clone());
                        events.push(Event::Gained(self.spans(self.face(&item.node).name)));
                    }
                }
                Effect::TakeItem(id) => {
                    if let Some(item) = world.item(id)
                        && self.state.has(id)
                    {
                        events.push(Event::Lost(self.spans(self.face(&item.node).name)));
                        self.state.inventory.retain(|held| held != id);
                    }
                }
                Effect::Say(text) => events.push(Event::Said(self.spans(text))),
                Effect::Go(to) => self.travel(world, to, events, depth + 1),
                Effect::Fx(fx) => events.push(Event::Fx(*fx)),
                Effect::Script(hook) => {
                    let produced = self.scripts.effects(*hook, &self.state);
                    self.run(world, &produced, events, depth + 1);
                }
            }
        }
    }

    fn travel(&mut self, world: &World, to: &SpaceId, events: &mut Vec<Event>, depth: usize) {
        if world.space(to).is_none() {
            return;
        }
        let from = std::mem::replace(&mut self.state.location, to.clone());
        events.push(Event::Moved {
            from,
            to: to.clone(),
        });
        self.arrive(world, to, events, depth);
    }

    /// Runs what happens on entering `space`. It only counts as visited afterwards, so its
    /// `on_enter` can tell a first visit from a return.
    fn arrive(&mut self, world: &World, id: &SpaceId, events: &mut Vec<Event>, depth: usize) {
        let Some(space) = world.space(id) else {
            return;
        };
        if !self.state.visited.contains(id) {
            let discoveries = [
                (space.secret, Discovery::Secret),
                (space.wonder, Discovery::Wonder),
            ];
            for (_, what) in discoveries.into_iter().filter(|(marked, _)| *marked) {
                events.push(Event::Discovered {
                    what,
                    name: self.spans(self.face(&space.node).name),
                });
            }
        }
        self.run(world, &space.on_enter, events, depth + 1);
        self.state.visited.insert(id.clone());
    }

    fn test(&self, condition: &Condition) -> bool {
        match condition {
            Condition::Always => true,
            Condition::Flag(flag) => self.state.flags.contains(flag),
            Condition::Item(item) => self.state.has(item),
            Condition::Visited(space) => self.state.visited.contains(space),
            Condition::Not(inner) => !self.test(inner),
            Condition::All(all) => all.iter().all(|c| self.test(c)),
            Condition::Any(any) => any.iter().any(|c| self.test(c)),
            Condition::Script(hook) => self.scripts.condition(*hook, &self.state),
        }
    }

    fn spans(&self, text: &Text) -> Vec<Span> {
        match text {
            Text::Static(spans) => spans.clone(),
            Text::Script(hook) => self.scripts.text(*hook, &self.state),
        }
    }

    fn face<'a>(&self, node: &'a Node) -> Face<'a> {
        let variant = node.variants.iter().find(|v| self.test(&v.when));
        Face {
            name: variant.and_then(|v| v.name.as_ref()).unwrap_or(&node.name),
            description: variant
                .and_then(|v| v.description.as_ref())
                .unwrap_or(&node.description),
            actions: variant
                .and_then(|v| v.actions.as_deref())
                .unwrap_or(&node.actions),
            things: variant
                .and_then(|v| v.things.as_deref())
                .unwrap_or(&node.things),
        }
    }

    fn available(&self, node_key: &str, action: &Action) -> bool {
        self.test(&action.when)
            && !(action.once
                && self
                    .state
                    .spent
                    .contains(&once_key(node_key, &action.label)))
    }

    fn here<'a>(&self, world: &'a World) -> &'a Space {
        world
            .space(&self.state.location)
            .or_else(|| world.space(&world.start))
            .expect("a loaded world always contains its start space")
    }

    /// Finds a node the player can currently perceive: in the space, its exits, or their pockets.
    fn find<'a>(&self, world: &'a World, key: &str) -> Option<Target<'a>> {
        let space = self.here(world);
        if key == space.id.as_str() {
            return Some(Target::Node {
                key: key.to_owned(),
                node: &space.node,
                wonder: false,
            });
        }
        if let Some(found) = self.find_thing(&space.node, key) {
            return Some(found);
        }
        if let Some(index) = (0..space.exits.len()).find(|&i| exit_key(space, i) == key) {
            let exit = &space.exits[index];
            let perceived = self.test(&exit.requires) || exit.locked != Locked::Hidden;
            return perceived.then_some(Target::Exit(exit));
        }
        self.state
            .inventory
            .iter()
            .filter_map(|id| world.item(id))
            .find_map(|item| {
                if item_key(&item.id) == key {
                    Some(Target::Node {
                        key: key.to_owned(),
                        node: &item.node,
                        wonder: false,
                    })
                } else {
                    self.find_thing(&item.node, key)
                }
            })
    }

    fn find_thing<'a>(&self, parent: &'a Node, key: &str) -> Option<Target<'a>> {
        self.face(parent)
            .things
            .iter()
            .filter(|thing| self.test(&thing.visible_if))
            .find_map(|thing| {
                if thing.key == key {
                    Some(Target::Node {
                        key: key.to_owned(),
                        node: &thing.node,
                        wonder: thing.wonder,
                    })
                } else {
                    self.find_thing(&thing.node, key)
                }
            })
    }

    pub fn view(&self) -> View {
        let world = &*self.world;
        let space = self.here(world);
        let region = world.region(&space.region);
        let look = |pick: fn(&crate::world::Look) -> bool| {
            if pick(&space.look) {
                Some(&space.look)
            } else {
                region.map(|r| &r.look).filter(|l| pick(l))
            }
        };
        View {
            region: region.map(|r| self.spans(&r.name)).unwrap_or_default(),
            space: self.view_space(space),
            exits: (0..space.exits.len())
                .filter_map(|i| self.view_exit(world, space, i))
                .collect(),
            items: self
                .state
                .inventory
                .iter()
                .filter_map(|id| world.item(id))
                .map(|item| self.view_node(item_key(&item.id), NodeKind::Item, &item.node, false))
                .collect(),
            trackers: self.trackers(),
            palette: look(|l| l.palette.is_some())
                .and_then(|l| l.palette)
                .unwrap_or_default(),
            ambience: look(|l| l.ambience.is_some())
                .and_then(|l| l.ambience.clone())
                .unwrap_or_default(),
            backdrop: look(|l| l.backdrop.is_some())
                .and_then(|l| l.backdrop.clone())
                .unwrap_or_default(),
        }
    }

    fn view_node(&self, key: String, kind: NodeKind, node: &Node, wonder: bool) -> ViewNode {
        let face = self.face(node);
        let mut actions: Vec<ViewAction> = Vec::new();
        for (id, action) in face.actions.iter().enumerate() {
            // Several actions may share a label under different conditions: show the first that applies.
            if self.available(&key, action) && actions.iter().all(|a| a.label != action.label) {
                actions.push(ViewAction {
                    id,
                    label: action.label.clone(),
                });
            }
        }
        let children = face
            .things
            .iter()
            .filter(|thing| self.test(&thing.visible_if))
            .map(|thing| {
                let known_wonder = thing.wonder && self.state.seen.contains_key(&thing.key);
                self.view_node(
                    thing.key.clone(),
                    NodeKind::Thing,
                    &thing.node,
                    known_wonder,
                )
            })
            .collect();
        let mut shown = ViewNode {
            key,
            kind,
            name: self.spans(face.name),
            icon: node.icon.clone(),
            description: self.spans(face.description),
            actions,
            children,
            locked: None,
            wonder,
            seen: Seen::New,
        };
        if self.state.seen.get(&shown.key) == Some(&fingerprint(&shown)) {
            let inside = shown.children.iter().all(|c| c.seen == Seen::Complete);
            shown.seen = if inside {
                Seen::Complete
            } else {
                Seen::Partial
            };
        }
        shown
    }

    /// A space as it would show if the player were standing in it.
    fn view_space(&self, space: &Space) -> ViewNode {
        self.view_node(
            space.id.to_string(),
            NodeKind::Space,
            &space.node,
            space.wonder,
        )
    }

    fn view_exit(&self, world: &World, space: &Space, index: usize) -> Option<ViewNode> {
        let exit = &space.exits[index];
        let open = self.test(&exit.requires);
        let locked = match (&exit.locked, open) {
            (_, true) => None,
            (Locked::Hidden, false) => return None,
            (Locked::Shown(hint), false) => Some(self.spans(hint)),
        };
        let destination = world.space(&exit.to);
        let target = destination.map(|s| self.face(&s.node));
        // An exit's mark speaks for the place it leads to.
        let seen = match destination {
            Some(space) if self.state.visited.contains(&space.id) => {
                match self.view_space(space).seen {
                    Seen::Complete => Seen::Complete,
                    _ => Seen::Partial,
                }
            }
            _ => Seen::New,
        };
        let name = exit.label.as_ref().or(target.as_ref().map(|f| f.name));
        let description = exit
            .description
            .as_ref()
            .or(target.as_ref().map(|f| f.description));
        let show = |text: Option<&Text>| text.map(|t| self.spans(t)).unwrap_or_default();
        Some(ViewNode {
            key: exit_key(space, index),
            kind: NodeKind::Exit,
            name: show(name),
            icon: None,
            description: show(description),
            actions: if open {
                vec![ViewAction {
                    id: 0,
                    label: world.labels.go.clone(),
                }]
            } else {
                Vec::new()
            },
            children: Vec::new(),
            locked,
            wonder: false,
            seen,
        })
    }

    fn trackers(&self) -> Vec<TrackerCount> {
        let world = &*self.world;
        let spaces = |marked: fn(&Space) -> bool| {
            let all = world.spaces.values().filter(|s| marked(s));
            let total = all.clone().count();
            let found = all.filter(|s| self.state.visited.contains(&s.id)).count();
            (found, total)
        };
        let count = |tracker: &Tracker| match &tracker.counts {
            TrackerKind::Spaces => spaces(|_| true),
            TrackerKind::Secrets => spaces(|s| s.secret),
            TrackerKind::Wonders => {
                let (found, total) = spaces(|s| s.wonder);
                let things = world.wonder_things();
                let seen = things
                    .iter()
                    .filter(|key| self.state.seen.contains_key(**key))
                    .count();
                (found + seen, total + things.len())
            }
            TrackerKind::Items(items) => (
                items.iter().filter(|i| self.state.has(i)).count(),
                items.len(),
            ),
            TrackerKind::Flags(flags) => (
                flags
                    .iter()
                    .filter(|f| self.state.flags.contains(*f))
                    .count(),
                flags.len(),
            ),
        };
        world
            .trackers
            .iter()
            .map(|tracker| {
                let (found, total) = count(tracker);
                TrackerCount {
                    name: tracker.name.clone(),
                    found,
                    total,
                }
            })
            .collect()
    }

    pub fn journal(&self) -> Journal {
        let world = &*self.world;
        let regions = world
            .regions
            .iter()
            .filter_map(|region| {
                let spaces: Vec<JournalSpace> = world
                    .spaces
                    .values()
                    .filter(|s| s.region == region.id && self.state.visited.contains(&s.id))
                    .map(|space| {
                        let shown = self.view_space(space);
                        let (seen, total) = seen_counts(&shown);
                        JournalSpace {
                            name: shown.name,
                            description: shown.description,
                            secret: space.secret,
                            wonder: space.wonder,
                            here: space.id == self.state.location,
                            seen,
                            total,
                        }
                    })
                    .collect();
                (!spaces.is_empty()).then(|| JournalRegion {
                    name: self.spans(&region.name),
                    description: self.spans(&region.description),
                    spaces,
                })
            })
            .collect::<Vec<JournalRegion>>();
        let spaces = regions.iter().flat_map(|r| &r.spaces);
        Journal {
            trackers: self.trackers(),
            seen: spaces.clone().map(|s| s.seen).sum(),
            total: spaces.map(|s| s.total).sum(),
            regions,
        }
    }
}

#[cfg(test)]
mod tests;
