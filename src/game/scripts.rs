//! The seam between the rules and a pack's scripting runtime.

use crate::world::{Effect, HookId, Span};

use super::state::State;

/// Runs the script hooks a world refers to. Scripts read the state; whatever they want to change
/// comes back as ordinary effects, so the rules stay the only code that mutates progress.
pub trait Scripts {
    fn condition(&self, hook: HookId, state: &State) -> bool;
    fn effects(&self, hook: HookId, state: &State) -> Vec<Effect>;
    fn text(&self, hook: HookId, state: &State) -> Vec<Span>;
}

/// For worlds without script hooks: conditions fail, effects and text are empty.
#[derive(Clone, Copy, Debug, Default)]
pub struct NoScripts;

impl Scripts for NoScripts {
    fn condition(&self, _: HookId, _: &State) -> bool {
        false
    }

    fn effects(&self, _: HookId, _: &State) -> Vec<Effect> {
        Vec::new()
    }

    fn text(&self, _: HookId, _: &State) -> Vec<Span> {
        Vec::new()
    }
}
