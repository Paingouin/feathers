//! The immutable description of a world, as loaded from a pack.
//!
//! Nothing here knows about Lua or the terminal: it is plain data plus lookups.

mod id;
mod style;

use std::collections::{BTreeMap, BTreeSet};

pub use id::{HookId, ItemId, RegionId, SpaceId};
pub use style::{
    AmbientKind, AmbientSpec, OneShot, OneShotKind, Palette, Rgb, Span, Style, Text, TextFx,
    plain_text,
};

/// A test on the player's progress.
#[derive(Clone, Debug, PartialEq, Eq)]
pub enum Condition {
    Always,
    Flag(String),
    Item(ItemId),
    Visited(SpaceId),
    Not(Box<Condition>),
    All(Vec<Condition>),
    Any(Vec<Condition>),
    Script(HookId),
}

/// A change an action makes to the player's progress, or feedback it gives.
#[derive(Clone, Debug, PartialEq, Eq)]
pub enum Effect {
    SetFlag(String),
    ClearFlag(String),
    GiveItem(ItemId),
    TakeItem(ItemId),
    Say(Text),
    Go(SpaceId),
    Fx(OneShot),
    Script(HookId),
}

/// Something the player can do to a node.
#[derive(Clone, Debug, PartialEq, Eq)]
pub struct Action {
    pub label: String,
    pub when: Condition,
    /// A once-only action disappears after it has been done.
    pub once: bool,
    pub effects: Vec<Effect>,
}

/// An alternative face of a node, used while its condition holds. The first matching variant wins.
#[derive(Clone, Debug, PartialEq, Eq)]
pub struct Variant {
    pub when: Condition,
    pub name: Option<Text>,
    pub description: Option<Text>,
    pub actions: Option<Vec<Action>>,
    pub things: Option<Vec<Thing>>,
}

/// What every explorable element shares: a name, a description, actions, and things inside it.
#[derive(Clone, Debug, PartialEq, Eq)]
pub struct Node {
    pub name: Text,
    pub description: Text,
    pub icon: Option<String>,
    pub actions: Vec<Action>,
    pub things: Vec<Thing>,
    pub variants: Vec<Variant>,
}

/// Anything found inside a space, an item or another thing: objects, creatures, people, details.
#[derive(Clone, Debug, PartialEq, Eq)]
pub struct Thing {
    /// Stable identity, unique in the world; progress such as once-only actions is recorded against it.
    pub key: String,
    pub node: Node,
    pub visible_if: Condition,
    pub wonder: bool,
}

/// What the player sees of an exit they cannot take yet.
#[derive(Clone, Debug, PartialEq, Eq)]
pub enum Locked {
    /// The destination does not appear at all.
    Hidden,
    /// The destination is listed with a hint.
    Shown(Text),
}

/// A one-way link from a space to another.
#[derive(Clone, Debug, PartialEq, Eq)]
pub struct Exit {
    pub to: SpaceId,
    /// Defaults to the destination's name.
    pub label: Option<Text>,
    /// Defaults to the destination's description.
    pub description: Option<Text>,
    pub requires: Condition,
    pub locked: Locked,
}

#[derive(Clone, Debug, PartialEq)]
pub struct Space {
    pub id: SpaceId,
    pub region: RegionId,
    pub node: Node,
    pub exits: Vec<Exit>,
    pub secret: bool,
    pub wonder: bool,
    pub on_enter: Vec<Effect>,
    pub look: Look,
}

#[derive(Clone, Debug, PartialEq, Eq)]
pub struct Item {
    pub id: ItemId,
    pub node: Node,
}

#[derive(Clone, Debug, PartialEq)]
pub struct Region {
    pub id: RegionId,
    pub name: Text,
    pub description: Text,
    pub look: Look,
}

/// Visual identity of a region or space. A space inherits whatever it leaves unset from its region.
#[derive(Clone, Debug, Default, PartialEq)]
pub struct Look {
    pub palette: Option<Palette>,
    pub ambience: Option<Vec<AmbientSpec>>,
    pub backdrop: Option<Vec<String>>,
}

/// A progress counter shown in the journal.
#[derive(Clone, Debug, PartialEq, Eq)]
pub struct Tracker {
    pub name: String,
    pub counts: TrackerKind,
}

#[derive(Clone, Debug, PartialEq, Eq)]
pub enum TrackerKind {
    Spaces,
    Secrets,
    Wonders,
    Items(Vec<ItemId>),
    Flags(Vec<String>),
}

/// The words the interface uses, so a pack can rename or translate them.
#[derive(Clone, Debug, PartialEq, Eq)]
pub struct Labels {
    pub destinations: String,
    pub carrying: String,
    pub actions: String,
    pub go: String,
    pub journal: String,
    pub resume: String,
    pub new_journey: String,
    pub nothing_to_do: String,
    pub wonder: String,
    pub secret: String,
    pub seen: String,
}

impl Default for Labels {
    fn default() -> Self {
        Self {
            destinations: "Destinations".into(),
            carrying: "Carrying".into(),
            actions: "Actions".into(),
            go: "Go there".into(),
            journal: "Journal".into(),
            resume: "Continue".into(),
            new_journey: "New journey".into(),
            nothing_to_do: "Nothing to do here but look.".into(),
            wonder: "A wonder".into(),
            secret: "A secret place".into(),
            seen: "Seen".into(),
        }
    }
}

#[derive(Clone, Debug, Default, PartialEq, Eq)]
pub struct Meta {
    pub id: String,
    pub name: String,
    pub version: String,
    pub author: String,
    pub description: String,
}

#[derive(Clone, Debug, PartialEq)]
pub struct World {
    pub meta: Meta,
    pub start: SpaceId,
    pub labels: Labels,
    pub trackers: Vec<Tracker>,
    /// In declaration order, which is the order the journal lists them in.
    pub regions: Vec<Region>,
    pub spaces: BTreeMap<SpaceId, Space>,
    pub items: BTreeMap<ItemId, Item>,
}

impl World {
    pub fn space(&self, id: &SpaceId) -> Option<&Space> {
        self.spaces.get(id)
    }

    pub fn item(&self, id: &ItemId) -> Option<&Item> {
        self.items.get(id)
    }

    pub fn region(&self, id: &RegionId) -> Option<&Region> {
        self.regions.iter().find(|r| &r.id == id)
    }

    /// Keys of every thing marked as a wonder, whichever variant it lives in.
    pub fn wonder_things(&self) -> BTreeSet<&str> {
        fn collect<'a>(node: &'a Node, out: &mut BTreeSet<&'a str>) {
            let variant_things = node.variants.iter().filter_map(|v| v.things.as_ref());
            for thing in node.things.iter().chain(variant_things.flatten()) {
                if thing.wonder {
                    out.insert(thing.key.as_str());
                }
                collect(&thing.node, out);
            }
        }
        let mut out = BTreeSet::new();
        for space in self.spaces.values() {
            collect(&space.node, &mut out);
        }
        for item in self.items.values() {
            collect(&item.node, &mut out);
        }
        out
    }
}
