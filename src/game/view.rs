//! What the player can currently perceive. The interface draws this and nothing else.

use crate::world::{AmbientSpec, Palette, Span};

#[derive(Clone, Debug, PartialEq)]
pub struct View {
    pub region: Vec<Span>,
    pub space: ViewNode,
    pub exits: Vec<ViewNode>,
    pub items: Vec<ViewNode>,
    pub trackers: Vec<TrackerCount>,
    pub palette: Palette,
    pub ambience: Vec<AmbientSpec>,
    pub backdrop: Vec<String>,
}

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum NodeKind {
    Space,
    Thing,
    Exit,
    Item,
}

/// How much of a node the player has taken in.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum Seen {
    /// Never looked at, or changed since. For an exit: its destination has not been visited.
    New,
    /// Looked at, but something inside it is new or changed.
    Partial,
    /// It and everything inside it have been looked at as they are now.
    Complete,
}

#[derive(Clone, Debug, PartialEq, Eq)]
pub struct ViewNode {
    /// Pass this back in a [`Command`](super::Command) to refer to the node.
    pub key: String,
    pub kind: NodeKind,
    pub name: Vec<Span>,
    pub icon: Option<String>,
    pub description: Vec<Span>,
    pub actions: Vec<ViewAction>,
    pub children: Vec<ViewNode>,
    /// For an exit that cannot be taken yet: the hint to show.
    pub locked: Option<Vec<Span>>,
    /// True for a wonder the player has already discovered.
    pub wonder: bool,
    pub seen: Seen,
}

#[derive(Clone, Debug, PartialEq, Eq)]
pub struct ViewAction {
    /// Pass this back in a [`Command`](super::Command) to do the action.
    pub id: usize,
    pub label: String,
}

#[derive(Clone, Debug, PartialEq, Eq)]
pub struct TrackerCount {
    pub name: String,
    pub found: usize,
    pub total: usize,
}

/// The places visited so far, grouped by region.
#[derive(Clone, Debug, PartialEq, Eq)]
pub struct Journal {
    pub trackers: Vec<TrackerCount>,
    /// Nodes looked at, over the nodes currently on show, across every visited space.
    pub seen: usize,
    pub total: usize,
    pub regions: Vec<JournalRegion>,
}

#[derive(Clone, Debug, PartialEq, Eq)]
pub struct JournalRegion {
    pub name: Vec<Span>,
    pub description: Vec<Span>,
    pub spaces: Vec<JournalSpace>,
}

#[derive(Clone, Debug, PartialEq, Eq)]
pub struct JournalSpace {
    pub name: Vec<Span>,
    pub description: Vec<Span>,
    pub secret: bool,
    pub wonder: bool,
    pub here: bool,
    /// Nodes looked at, over the nodes currently on show there.
    pub seen: usize,
    pub total: usize,
}
