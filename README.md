# Feathers

A textual world explorer for the terminal. You stand in a place, open the things in it to find
more things inside, do whatever the author let you do to them, and walk on to the next place.
There is no combat and nothing is generated at random: every place, object and joke was written
by hand.

The engine is written in Rust and knows nothing about any particular world. A world is a **pack**
of Lua files; the pack in this repository, `packs/feathers`, is a small kingdom with large
opinions.

## Play

```sh
cargo run --release -- packs/feathers
```

With no argument the game lists the packs found under `./packs`. Progress is saved automatically
to `./saves/<pack id>.json`, one save per pack, and the start screen offers to continue it.

| Key | Does |
|---|---|
| `↑` `↓` | move through the tree, or through the actions |
| `←` `→` | fold and unfold a thing |
| `Tab` | switch between the tree and the actions |
| `Enter` / `Space` | do the action, or travel |
| `PgUp` `PgDn` | scroll a long description |
| `j` | journal: places, secrets, wonders, how much you have seen |
| `q` | save and quit |

Marks in the tree show what is left to look at: `●` new, `◐` partly seen, `✓` everything seen.

Options:

- `--no-motion` turns every animation off.
- `--at SPACE` starts a throwaway session in the given space, without touching the save.
- `feathers check PACK` loads a pack and reports its errors, warnings and counts.

The interface wants a terminal with 24-bit colour and falls back to 256 colours when
`COLORTERM` does not announce it.

## Write a world

See [docs/modding.md](docs/modding.md). The short version: make a directory with a `pack.lua`,
declare regions, spaces and items in Lua, and run `feathers check` on it.

## Layout

```
src/world   the immutable description of a world
src/game    the rules: state, commands, the view the interface draws, saves
src/pack    Lua packs: sandbox, loader, validation, script hooks
src/ui      the crossterm interface: canvas, ambience, panels
packs/      worlds
```

`cargo test` runs the engine tests, the loader tests and a walk through the whole Feathers pack.
