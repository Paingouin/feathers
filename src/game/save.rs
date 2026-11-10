//! Save files: one JSON document per pack.

use std::fs;
use std::io;
use std::path::{Path, PathBuf};

use serde::{Deserialize, Serialize};

use crate::error::{Error, Result};
use crate::world::World;

use super::state::State;

#[derive(Serialize, Deserialize)]
struct SaveFile {
    pack: String,
    version: String,
    state: State,
}

/// Where the save for `world` lives inside `dir`.
pub fn path(dir: &Path, world: &World) -> PathBuf {
    dir.join(format!("{}.json", world.meta.id))
}

/// Writes the save atomically, so a crash mid-write cannot corrupt an existing save.
pub fn write(path: &Path, world: &World, state: &State) -> Result<()> {
    let file = SaveFile {
        pack: world.meta.id.clone(),
        version: world.meta.version.clone(),
        state: state.clone(),
    };
    let json = serde_json::to_string_pretty(&file).map_err(|e| Error::Save {
        path: path.to_path_buf(),
        reason: e.to_string(),
    })?;
    if let Some(dir) = path.parent() {
        fs::create_dir_all(dir).map_err(|e| Error::io(dir, e))?;
    }
    let temp = path.with_extension("json.tmp");
    fs::write(&temp, json).map_err(|e| Error::io(&temp, e))?;
    fs::rename(&temp, path).map_err(|e| Error::io(path, e))
}

/// Reads the save for `world`, adapted to the pack as it is now. `None` when there is no save.
pub fn read(path: &Path, world: &World) -> Result<Option<State>> {
    let json = match fs::read_to_string(path) {
        Ok(json) => json,
        Err(e) if e.kind() == io::ErrorKind::NotFound => return Ok(None),
        Err(e) => return Err(Error::io(path, e)),
    };
    let file: SaveFile = serde_json::from_str(&json).map_err(|e| Error::Save {
        path: path.to_path_buf(),
        reason: e.to_string(),
    })?;
    if file.pack != world.meta.id {
        return Err(Error::Save {
            path: path.to_path_buf(),
            reason: format!("belongs to pack '{}', not '{}'", file.pack, world.meta.id),
        });
    }
    let mut state = file.state;
    reconcile(&mut state, world);
    Ok(Some(state))
}

/// Makes a state saved against an older version of the pack valid for the current one:
/// references to things that no longer exist are dropped, and a vanished location becomes the start.
pub fn reconcile(state: &mut State, world: &World) {
    state.inventory.retain(|item| world.item(item).is_some());
    state.visited.retain(|space| world.space(space).is_some());
    if world.space(&state.location).is_none() {
        state.location = world.start.clone();
    }
}
