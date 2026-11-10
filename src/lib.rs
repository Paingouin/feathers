//! Feathers: an engine for textual worlds to wander through.
//!
//! A world is a *pack* of Lua files. The engine loads exactly one pack, lets the player travel
//! between its spaces, look into the things found there and act on them.
//!
//! Layers, each depending only on those before it:
//! - [`world`]: the immutable description of a world;
//! - [`game`]: the rules and the player's progress;
//! - [`pack`]: loading a world from Lua;
//! - [`ui`]: the terminal interface.

pub mod error;
pub mod game;
pub mod pack;
pub mod ui;
pub mod world;

pub use error::{Error, Result};
