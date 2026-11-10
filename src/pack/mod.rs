//! Loading a world from a pack: a directory of Lua files with a `pack.lua` manifest.
//!
//! Pack code runs in a sandbox: no file, process or module access, and no source of randomness,
//! so a world is the same for everyone.

mod build;
mod hooks;
mod markup;
mod validate;

use std::collections::BTreeMap;
use std::fs;
use std::path::{Path, PathBuf};

use mlua::{Lua, LuaOptions, StdLib, Table, Value};

pub use hooks::LuaScripts;
pub use validate::Stats;

use crate::error::{Error, Result};
use crate::world::{Meta, World};

use build::Builder;

/// The version of the pack format this engine understands (`api = 1` in `pack.lua`).
pub const API_VERSION: i64 = 1;

const PRELUDE: &str = include_str!("prelude.lua");
const MANIFEST: &str = "pack.lua";
const INCLUDED: &str = "feathers.included";

/// A successfully loaded pack.
pub struct Pack {
    pub world: World,
    pub scripts: LuaScripts,
    pub report: Report,
}

/// What loading noticed that is not an error.
#[derive(Clone, Debug, Default)]
pub struct Report {
    pub warnings: Vec<String>,
    pub stats: Stats,
}

/// A pack found on disk, described by its manifest only.
#[derive(Clone, Debug)]
pub struct PackInfo {
    pub path: PathBuf,
    pub meta: Meta,
}

/// The first line of a Lua error, without mlua's framing or the traceback.
fn lua_message(error: &mlua::Error) -> String {
    let text = error.to_string();
    let line = text.lines().next().unwrap_or_default();
    line.strip_prefix("runtime error: ")
        .or_else(|| line.strip_prefix("syntax error: "))
        .unwrap_or(line)
        .to_owned()
}

/// Resolves a path given by pack code, refusing anything that could leave the pack directory.
fn inside(root: &Path, name: &str) -> mlua::Result<PathBuf> {
    let name = name.strip_suffix(".lua").unwrap_or(name);
    let safe = !name.is_empty()
        && !name.starts_with('/')
        && !name.contains(['\\', ':'])
        && name.split('/').all(|part| !part.is_empty() && part != "." && part != "..");
    if !safe {
        return Err(mlua::Error::runtime(format!(
            "include \"{name}\": paths must be relative and stay inside the pack"
        )));
    }
    let path = root.join(format!("{name}.lua"));
    // A symlink could still point outside: compare the real locations.
    let real = |p: &Path| p.canonicalize().map_err(|e| mlua::Error::runtime(format!("{}: {e}", p.display())));
    if !real(&path)?.starts_with(real(root)?) {
        return Err(mlua::Error::runtime(format!(
            "include \"{name}\": resolves outside the pack"
        )));
    }
    Ok(path)
}

/// A Lua state fit for running untrusted pack code rooted at `root`.
fn sandbox(root: &Path) -> mlua::Result<Lua> {
    let lua = Lua::new_with(
        StdLib::TABLE | StdLib::STRING | StdLib::MATH | StdLib::UTF8,
        LuaOptions::default(),
    )?;
    let globals = lua.globals();
    for name in ["dofile", "loadfile", "load", "loadstring", "require", "collectgarbage"] {
        globals.raw_set(name, Value::Nil)?;
    }
    // Worlds are hand-made and identical for everyone: no dice.
    let math: Table = globals.raw_get("math")?;
    math.raw_set("random", Value::Nil)?;
    math.raw_set("randomseed", Value::Nil)?;
    let string: Table = globals.raw_get("string")?;
    string.raw_set("dump", Value::Nil)?;
    // Printing would scribble over the interface.
    globals.raw_set("print", lua.create_function(|_, _: mlua::MultiValue| Ok(()))?)?;

    globals.raw_set(
        "__where",
        lua.create_function(|lua, level: usize| {
            Ok(lua
                .inspect_stack(level, |debug| {
                    let source = debug.source();
                    format!(
                        "{}:{}",
                        source.short_src.as_deref().unwrap_or("?"),
                        debug.current_line().unwrap_or(0)
                    )
                })
                .unwrap_or_default())
        })?,
    )?;
    lua.load(PRELUDE).set_name("=feathers").exec()?;

    lua.set_named_registry_value(INCLUDED, lua.create_table()?)?;
    let root = root.to_path_buf();
    globals.raw_set(
        "include",
        lua.create_function(move |lua, name: String| {
            let name = name.strip_suffix(".lua").unwrap_or(&name).to_owned();
            let included: Table = lua.named_registry_value(INCLUDED)?;
            let cached: Value = included.raw_get(name.as_str())?;
            if cached != Value::Nil {
                return Ok(cached);
            }
            let path = inside(&root, &name)?;
            let code = fs::read_to_string(&path)
                .map_err(|e| mlua::Error::runtime(format!("include \"{name}\": {e}")))?;
            let value: Value = lua.load(code).set_name(format!("@{name}.lua")).eval()?;
            let remembered = if value == Value::Nil { Value::Boolean(true) } else { value };
            included.raw_set(name, remembered.clone())?;
            Ok(remembered)
        })?,
    )?;
    Ok(lua)
}

fn manifest(lua: &Lua, dir: &Path) -> std::result::Result<Table, String> {
    let path = dir.join(MANIFEST);
    let code = fs::read_to_string(&path).map_err(|e| format!("{MANIFEST}: {e}"))?;
    match lua.load(code).set_name(format!("@{MANIFEST}")).eval::<Value>() {
        Ok(Value::Table(table)) => Ok(table),
        Ok(_) => Err(format!("{MANIFEST}: must return a table: return {{ id = \"...\", ... }}")),
        Err(error) => Err(lua_message(&error)),
    }
}

/// Every content file of a pack, as include names, in loading order: files at the root, then
/// `blueprints/` (so they exist before anything uses them), then everything else, each sorted.
fn content_files(dir: &Path) -> Result<Vec<String>> {
    fn visit(dir: &Path, prefix: &str, out: &mut Vec<String>) -> Result<()> {
        let entries = fs::read_dir(dir).map_err(|e| Error::io(dir, e))?;
        for entry in entries {
            let entry = entry.map_err(|e| Error::io(dir, e))?;
            let name = entry.file_name().to_string_lossy().into_owned();
            let path = entry.path();
            if name.starts_with('.') {
                continue;
            }
            if path.is_dir() {
                visit(&path, &format!("{prefix}{name}/"), out)?;
            } else if let Some(stem) = name.strip_suffix(".lua") {
                out.push(format!("{prefix}{stem}"));
            }
        }
        Ok(())
    }
    let mut files = Vec::new();
    visit(dir, "", &mut files)?;
    files.retain(|name| name != "pack");
    files.sort_by_cached_key(|name| {
        let rank = match name {
            n if !n.contains('/') => 0,
            n if n.starts_with("blueprints/") => 1,
            _ => 2,
        };
        (rank, name.clone())
    });
    Ok(files)
}

/// Loads the pack in `dir`. Fails with every problem found, not just the first.
pub fn load(dir: &Path) -> Result<Pack> {
    let fail = |problems: Vec<String>| Error::Pack {
        pack: dir.to_path_buf(),
        problems,
    };
    let engine = |error: mlua::Error| fail(vec![lua_message(&error)]);

    let lua = sandbox(dir).map_err(engine)?;
    let manifest_table = manifest(&lua, dir).map_err(|problem| fail(vec![problem]))?;
    let (theme, mut problems) = build::theme(&manifest_table);
    let mut builder = Builder::new(theme);
    let manifest = builder.manifest(&manifest_table);

    let include: mlua::Function = lua.globals().raw_get("include").map_err(engine)?;
    for file in content_files(dir)? {
        if let Err(error) = include.call::<Value>(file.as_str()) {
            problems.push(lua_message(&error));
        }
    }

    let declared: Table = lua.globals().raw_get("__pack").map_err(engine)?;
    let tables = |kind: &str| -> Vec<Table> {
        declared
            .raw_get::<Table>(kind)
            .map(|list| list.sequence_values::<Table>().flatten().collect())
            .unwrap_or_default()
    };

    let mut regions = Vec::new();
    let mut seen: BTreeMap<String, String> = BTreeMap::new();
    let mut duplicate = |kind: &str, id: &str, src: String, builder: &mut Builder| {
        match seen.insert(format!("{kind} '{id}'"), src) {
            Some(first) => {
                builder.problem(format!("{kind} '{id}' is already declared at {first}"));
                true
            }
            None => false,
        }
    };
    let src_of = |table: &Table| table.raw_get::<String>("__src").unwrap_or_default();

    for table in tables("regions") {
        if let Some(region) = builder.region(&table)
            && !duplicate("region", region.id.as_str(), src_of(&table), &mut builder)
        {
            regions.push(region);
        }
    }
    let mut items = BTreeMap::new();
    for table in tables("items") {
        if let Some(item) = builder.item(&table)
            && !duplicate("item", item.id.as_str(), src_of(&table), &mut builder)
        {
            items.insert(item.id.clone(), item);
        }
    }
    let mut spaces = BTreeMap::new();
    for table in tables("spaces") {
        if let Some(space) = builder.space(&table)
            && !duplicate("space", space.id.as_str(), src_of(&table), &mut builder)
        {
            spaces.insert(space.id.clone(), space);
        }
    }

    let world = World {
        meta: manifest.meta,
        start: manifest.start,
        labels: manifest.labels,
        trackers: manifest.trackers,
        regions,
        spaces,
        items,
    };
    let Builder {
        theme,
        hooks,
        problems: found,
        ..
    } = builder;
    problems.extend(found);

    let mut report = Report::default();
    report.stats = validate::validate(&world, hooks.len(), &mut problems, &mut report.warnings);
    if !problems.is_empty() {
        return Err(fail(problems));
    }
    let scripts = LuaScripts::new(lua, hooks, theme).map_err(engine)?;
    Ok(Pack {
        world,
        scripts,
        report,
    })
}

/// Finds the packs directly inside `dir`, by reading their manifests. Unreadable ones are skipped.
pub fn discover(dir: &Path) -> Vec<PackInfo> {
    let Ok(entries) = fs::read_dir(dir) else {
        return Vec::new();
    };
    let mut packs: Vec<PackInfo> = entries
        .flatten()
        .map(|entry| entry.path())
        .filter(|path| path.join(MANIFEST).is_file())
        .filter_map(|path| {
            let lua = sandbox(&path).ok()?;
            let table = manifest(&lua, &path).ok()?;
            let meta = Builder::new(build::theme(&table).0).manifest(&table).meta;
            (!meta.id.is_empty()).then_some(PackInfo { path, meta })
        })
        .collect();
    packs.sort_by(|a, b| a.meta.name.cmp(&b.meta.name));
    packs
}
