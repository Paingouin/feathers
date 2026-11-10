# Writing a pack

A pack is one world. The player loads exactly one pack per session; packs never combine, depend
on or patch each other, and each has its own save. Everything the player reads comes from the
pack: names, descriptions, actions, colours, even the interface's labels.

Check your work as you go:

```sh
feathers check packs/mine          # errors, warnings, counts per region
feathers packs/mine --at some_id   # start a throwaway session in any space
```

Errors name the file, the line and the thing at fault, and are all reported at once.

## Files

```
packs/mine/
  pack.lua                 the manifest (required)
  items.lua                any other file at the root
  blueprints/*.lua         loaded before the rest, so regions can use them
  regions/<name>/*.lua     everything else, in sorted order
```

Only `pack.lua` has a fixed name. Every other `.lua` file is found and run automatically: root
files first, then `blueprints/`, then the remaining directories, each in sorted order. There is
no file list to maintain, and the directory layout is yours to choose.

`include "blueprints/common"` runs another file of the pack early (once) and returns what it
returned. Paths are relative to the pack and cannot leave it.

Lua is sandboxed: `string`, `table`, `math` and the basics are there; `io`, `os`, `debug`,
`require` and `math.random` are not. A world is the same for everybody.

## The manifest

```lua
-- pack.lua
return {
  id = "mine",                 -- letters, digits, _ and -; names the save file
  name = "My World",
  version = "0.1.0",
  author = "You",
  api = 1,                     -- the engine API this pack was written for
  description = "Shown in the pack picker.",
  start = "village_square",    -- the space a new journey begins in

  theme = { gold = "#e6c14c", danger = "red" },   -- colour names usable in markup

  trackers = {                 -- counters shown in the footer and the journal
    { name = "Places",  count = "spaces" },
    { name = "Secrets", count = "secrets" },
    { name = "Wonders", count = "wonders" },
    { name = "Relics",  items = { "crown", "sceptre" } },
    { name = "Rumours", flags = { "heard_about_baroness" } },
  },

  labels = { destinations = "Ways on", carrying = "Pockets", go = "Go there" },
}
```

`labels` may replace any of: `destinations`, `carrying`, `actions`, `go`, `journal`, `continue`,
`new_journey`, `nothing_to_do`, `wonder`, `secret`, `seen`.

## Regions, spaces, items

```lua
region { id = "greenhollow", name = "Greenhollow",
         description = "A village famous for nothing, and proud of it." }

item { id = "copper_coin", name = "bent copper coin",
       description = "Bitten once, by someone optimistic." }

space {
  id = "village_square", region = "greenhollow",
  name = "Village Square",
  description = "A muddy square, a well, and a notice board nobody reads.",
  things  = { ... },
  exits   = { ... },
  actions = { ... },
}
```

A space may also be `secret = true` (counted by a `secrets` tracker) and `wonder = true`.

Every node (a space, a thing, an item) shares the same fields:

| Field | Meaning |
|---|---|
| `name`, `description` | text, with markup; or a function (see Scripts) |
| `icon` | one single-width character shown before the name |
| `actions` | what the player may do to it |
| `things` | what is inside it |
| `variants` | how it changes with the state of the world |

A missing description is a warning, not an error.

### Things

Things nest as deep as you like. Characters are things; so is a moustache.

```lua
things = {
  { name = "the old well", description = "Deeper than the village's patience.",
    things = {
      { name = "a bucket", description = "It has seen things. Mostly water." },
    } },
  { name = "a loose stone", visible_if = flag "knows_about_stone", wonder = true,
    description = "..." },
}
```

- `visible_if` hides the thing until a condition holds.
- `wonder = true` makes it a wonder: discovered when the player looks at it.
- `key` gives the thing a stable identity. By default the name is used, which is what
  once-actions and seen marks are remembered under; set a `key` if you intend to rename it
  later, and always when the name is a function.

### Actions

```lua
actions = {
  { "Talk", say "\"Onions. Or go away. Or both.\"" },
  { "Haul it up", once = true, give "copper_coin", say "Something glints at the bottom." },
  { "Ask about the cellar", when = no(flag "bed_broken"), say "\"What cellar.\"" },
  { "Talk", when = flag "bed_broken", say "He is busy mourning a bed." },
}
```

An action is a label followed by any number of effects. `when` makes it available only under a
condition; `once = true` removes it after use. Several actions may share a label under different
conditions: the first available one is shown. Folding and unfolding never change the world;
actions are the only thing that does.

Effects: `say "text"`, `set "flag"`, `clear "flag"`, `give "item"`, `take "item"`,
`go "space"`, `fx "shake"` (also `"flash"`, `"sparkle"`, `"wash"`, with an optional colour:
`fx("flash", "#ffcc66")`).

Conditions: `flag "name"`, `item "id"` (the player carries it), `visited "space"`,
`no(c)`, `all { c1, c2 }`, `any { c1, c2 }`.

### Variants

The first variant whose `when` holds replaces the fields it gives; the rest stay as written.

```lua
{ name = "the barman", description = "He polishes a glass that will never be clean.",
  variants = {
    { when = flag "bed_broken", description = "He polishes the glass at you." },
  } }
```

A variant may replace `name`, `description`, `actions` and `things`. This is how an action on
one thing changes another.

### Exits

```lua
exits = {
  { to = "tipsy_griffon" },
  { to = "barley_road", description = "Fields, sky, and the firm promise of a town." },
  { to = "griffon_cellar", label = "The trapdoor",
    requires = flag "bed_broken", locked = "the barman is standing on it" },
  { to = "bell_loft", requires = flag "rope_pulled", hidden = true },
}
```

An exit is shown by the name of the place it leads to, unless it has a `label`. Its description
defaults to the destination's. With `requires`, choose one of `locked = "hint"` (shown, greyed,
with the hint) or `hidden = true` (absent until the condition holds). Exits are one-way: write
the return exit in the other space if there is one.

`on_enter` on a space runs effects each time the player arrives:
`on_enter = say "A goose regards you."`, a list of effects, or a function.

## Text

```
"A {gold}suspicious{/} amount of pie."      a theme colour or a built-in one
"{#ff8800}ember{/}"                          any hex colour
"{b}bold{/} and {i}italic{/}"
"It {flicker}crackles{/} like gossip."      also {shimmer}, {wave}, {glow}
"{{ a literal brace"
```

Built-in colours: black, white, grey, red, orange, yellow, green, cyan, blue, magenta (purple),
pink, brown. An unknown tag is a load error. Any single-cell-wide character may be used; emoji
and other double-width glyphs draw a warning.

## Look

Regions and spaces may set their own colours and ambience; a space inherits its region's.

```lua
region { id = "undertown", name = "The Undertown", description = "...",
  palette  = { bg = "#0b1210", text = "#b8c4b0", dim = "#5c6b60",
               accent = "#6fae5a", border = "#2f4a3a" },
  ambience = { drip { glyphs = "⠁⠂⠄⡀", color = "#4f8f7a", rate = 0.3 },
               fog  { color = "#1c2a24", speed = 0.2 } },
  backdrop = { "    ▄▄█▄▄      ", "  ▄█▀▀▀▀▀█▄    " },   -- dim art behind the panels
}
```

Ambient kinds: `rain`, `snow`, `drip`, `embers`, `fireflies`, `fog`, `flicker`, `shimmer`,
`stars`, `steam`, `dust`. Each takes any of `glyphs`, `color` or `colors`, `rate`, `speed`,
`strength`. Ambience is drawn behind the text and is purely cosmetic.

## Blueprints

For things that recur. Each call gives a fresh copy; fields you pass replace the blueprint's.

```lua
-- blueprints/common.lua
candle = blueprint {
  name = "a candle", description = "It burns with the quiet smugness of all candles.",
  things = { { name = "a drip of wax", description = "Still warm. Don't." } },
}

-- in any space
things = { candle(), candle { name = "a black candle", description = "It has given up." } }
```

A blueprint is an ordinary Lua function, so you may also write your own functions and loops to
compose content by fixed rules.

## Scripts

Where data is not enough, a function may stand in for a description or name, a condition, an
effect, or `on_enter`. It receives `ctx`:

| Read | Write |
|---|---|
| `ctx:flag(name)`, `ctx:has(item)`, `ctx:visited(space)`, `ctx.here` | `ctx:set(name)`, `ctx:clear(name)`, `ctx:give(item)`, `ctx:take(item)`, `ctx:say(text)`, `ctx:go(space)`, `ctx:fx(kind)` |

```lua
description = function(ctx)
  return ctx:has("onion") and "It smells of you." or "It smells of damp."
end,
actions = {
  { "Count your coins", function(ctx)
      if ctx:has("copper_coin") then ctx:say("One.") else ctx:say("That was quick.") end
    end },
},
```

A text function returns a string (markup allowed); a condition function returns a truthy value.
Ids used inside functions cannot be checked at load time, so prefer plain data when it will do.

## Saves and changing a pack

A save records the player's place, items, flags, visited places, spent once-actions and what
they have seen, by id. Packs may grow freely: ids that no longer exist are dropped, and a save
whose place is gone restarts at `start`. When a node's name, description or actions change, it
shows as new again. Renaming an id is the one thing that loses progress attached to it.
