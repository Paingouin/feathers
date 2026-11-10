//! Runs a pack's script hooks while the game is played.

use mlua::{Function, Lua, Table, Value};

use crate::game::{Scripts, State};
use crate::world::{Effect, HookId, Span, Text};

use super::build::plain_effect;
use super::lua_message;
use super::markup::{self, Theme};

/// The pack's Lua runtime and the functions the world refers to by [`HookId`].
pub struct LuaScripts {
    lua: Lua,
    hooks: Vec<Function>,
    theme: Theme,
    make_ctx: Function,
}

impl LuaScripts {
    pub(super) fn new(lua: Lua, hooks: Vec<Function>, theme: Theme) -> mlua::Result<Self> {
        let make_ctx = lua.globals().raw_get("__ctx")?;
        Ok(Self {
            lua,
            hooks,
            theme,
            make_ctx,
        })
    }

    pub fn hook_count(&self) -> usize {
        self.hooks.len()
    }

    /// Calls a hook with a fresh context; returns what it returned and the context it wrote to.
    fn call(&self, hook: HookId, state: &State) -> mlua::Result<(Value, Table)> {
        let function = self
            .hooks
            .get(hook.0)
            .ok_or_else(|| mlua::Error::runtime("unknown script hook"))?;
        let set_of = |keys: &mut dyn Iterator<Item = &str>| -> mlua::Result<Table> {
            let table = self.lua.create_table()?;
            for key in keys {
                table.raw_set(key, true)?;
            }
            Ok(table)
        };
        let ctx: Table = self.make_ctx.call((
            state.location.as_str(),
            set_of(&mut state.flags.iter().map(String::as_str))?,
            set_of(&mut state.inventory.iter().map(|i| i.as_str()))?,
            set_of(&mut state.visited.iter().map(|s| s.as_str()))?,
        ))?;
        let returned = function.call(ctx.clone())?;
        Ok((returned, ctx))
    }

    fn emitted(&self, ctx: &Table) -> mlua::Result<Vec<Effect>> {
        let out: Table = ctx.raw_get("_out")?;
        out.sequence_values::<Table>()
            .map(|effect| plain_effect(&effect?, &self.theme).map_err(mlua::Error::runtime))
            .collect()
    }
}

/// A script that fails must not take the game down: its error is shown where its output would be.
fn failure(error: &mlua::Error) -> Span {
    Span::plain(format!("[script error: {}]", lua_message(error)))
}

impl Scripts for LuaScripts {
    fn condition(&self, hook: HookId, state: &State) -> bool {
        match self.call(hook, state) {
            Ok((value, _)) => !matches!(value, Value::Nil | Value::Boolean(false)),
            Err(_) => false,
        }
    }

    fn effects(&self, hook: HookId, state: &State) -> Vec<Effect> {
        self.call(hook, state)
            .and_then(|(_, ctx)| self.emitted(&ctx))
            .unwrap_or_else(|error| vec![Effect::Say(Text::Static(vec![failure(&error)]))])
    }

    fn text(&self, hook: HookId, state: &State) -> Vec<Span> {
        let rendered = self.call(hook, state).and_then(|(value, _)| match value {
            Value::Nil => Ok(Vec::new()),
            Value::String(text) => {
                markup::parse(&text.to_string_lossy(), &self.theme).map_err(mlua::Error::runtime)
            }
            other => Err(mlua::Error::runtime(format!(
                "a text function must return a string, not {}",
                other.type_name()
            ))),
        });
        rendered.unwrap_or_else(|error| vec![failure(&error)])
    }
}
