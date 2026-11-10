//! Everything that changes while playing. This is exactly what a save file holds.

use std::collections::{BTreeMap, BTreeSet};

use serde::{Deserialize, Serialize};

use crate::world::{ItemId, SpaceId};

#[derive(Clone, Debug, PartialEq, Eq, Serialize, Deserialize)]
pub struct State {
    pub location: SpaceId,
    /// In the order the items were obtained.
    #[serde(default)]
    pub inventory: Vec<ItemId>,
    #[serde(default)]
    pub flags: BTreeSet<String>,
    #[serde(default)]
    pub visited: BTreeSet<SpaceId>,
    /// Once-only actions already done.
    #[serde(default)]
    pub spent: BTreeSet<String>,
    /// Every node the player has looked at, with a fingerprint of what it showed at the time,
    /// so that a node whose content has changed since counts as new again.
    #[serde(default)]
    pub seen: BTreeMap<String, u64>,
}

impl State {
    pub fn new(start: SpaceId) -> Self {
        Self {
            location: start,
            inventory: Vec::new(),
            flags: BTreeSet::new(),
            visited: BTreeSet::new(),
            spent: BTreeSet::new(),
            seen: BTreeMap::new(),
        }
    }

    pub fn has(&self, item: &ItemId) -> bool {
        self.inventory.contains(item)
    }
}
