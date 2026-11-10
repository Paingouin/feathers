//! Strongly typed identifiers so a space id can never be passed where an item id is expected.

use std::fmt;

use serde::{Deserialize, Serialize};

macro_rules! string_id {
    ($(#[$doc:meta])* $name:ident) => {
        $(#[$doc])*
        #[derive(Clone, Debug, PartialEq, Eq, Hash, PartialOrd, Ord, Serialize, Deserialize)]
        #[serde(transparent)]
        pub struct $name(String);

        impl $name {
            pub fn new(id: impl Into<String>) -> Self {
                Self(id.into())
            }

            pub fn as_str(&self) -> &str {
                &self.0
            }
        }

        impl fmt::Display for $name {
            fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
                f.write_str(&self.0)
            }
        }
    };
}

string_id!(
    /// Identifies a region (a named group of spaces).
    RegionId
);
string_id!(
    /// Identifies a space (a place the player can stand in).
    SpaceId
);
string_id!(
    /// Identifies an item the player can carry.
    ItemId
);

/// Handle to a script function owned by the pack's scripting runtime.
#[derive(Clone, Copy, Debug, PartialEq, Eq, Hash)]
pub struct HookId(pub usize);
