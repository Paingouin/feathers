# Feathers: world bible

Design notes for the authors of this pack. The engine does not load this file.
**It contains the world's deepest secret. Nothing below the first section may be stated in the
game until it is decided how and where.**

## The secret

The world was the dream of the **Dreamer Bird**, and the dream became real. Only a handful of
people in all of history have known. No character says it, no book contains it, no description
hints at it by name.

Seven feathers exist and are the eventual soft goal. **No feather is in the game yet**: what they
are, where they lie and what they do is undecided.

## Tone

- Irreverent parody of fantasy: a world of incompetent heroes, petty officials and objects with
  opinions. Deadpan, never winking.
- Sincere when a wonder deserves it. The jokes make room for the quiet moments.
- Voice only: no names, characters or places borrowed from anyone else's work.
- The player is a would-be adventurer: under-equipped, over-confident, addressed as "you".
  The prose teases them and is fond of them.

## Rules of the world

- Exploration only. No combat, no stats, no death, no fail state.
- Danger is menacing but harmless: devils, vampires and dungeons are characters and places to
  look into.
- Nothing is random. Every place and thing is hand-written, and the same for everyone.
- Everything has a description. Most things have something inside them.
- Items are keys and curiosities. They are obtained through actions and open routes.
- Secrets everywhere: about one secret space for every three ordinary ones, plus things hidden
  deep inside ordinary objects.
- An open web of regions with loops, shortcuts, one-way drops and locked routes. No main quest.
- Wonders are meant to number in the thousands over time: nested things, landmark spaces, whole
  regions, and keys to the divine. They are added little by little.
- Many gods, each with a plane that can be visited, added over time.

## Writing conventions

- Exits show the name of the place they lead to. Give an exit a `label` when the way itself is a
  thing (a trapdoor, a chute) or when the name would give a secret away.
- Prefer a variant on another node over a line of `say`: the world should visibly remember.
- A locked exit that is shown gets a hint that is a small joke and a real clue.
- Recurring props come from `blueprints/common.lua`; override the description when the place
  deserves its own line.
- Colours: `gold` for valuables, `magic` for the uncanny, `danger` for menace, `whisper` for
  asides, `place` for place names.

## What exists

| Region | Spaces |
|---|---|
| Greenhollow, a village | Village Square, The Tipsy Griffon, its cellar (secret), Mill Lane, the chapel, the bell loft (secret), Barley Road |
| Aldmoor, a town | the gate, the market, Nobles' Row, a noble house, a study behind a bookcase (secret), the Temple Quarter |
| The Undertown | the Great Drain, the cistern, the smugglers' vault (secret), the buried shrine (secret) |
| The Mumblewood, a forest | the edge, The Path That Tries, the hermit's clearing, the Climbing Falls (wonder), the shore of Lake Perhaps, the Island of One Tree, the room under the lake (secret), inside the old oak (secret) |
| Saltwick, a harbour and its coast | the Cliff Road, the harbour, the Tide Office, where the tide is kept (secret, wonder), the Saltwick Light, the Lamp Room (wonder), the Long Strand, inside the wreck (secret), the Cove of Second Thoughts, the smugglers' hole (secret) |
| The Grumbles, mountains | the Goat Track, the hut at the snow line, the Pass of Reasonable Charges, the troll's front room (secret), the Col, the Gorge of Late Replies (wonder), the Monastery of the Held Tongue, the Shouting Room (secret), the Longshift Mine, the bottom level (secret, wonder), the top of Old Grumble (wonder) |

Threads through it: a coin from the well pays the gate tax; breaking the tavern bed moves the
barman off the trapdoor; the cellar crowbar opens the market grate; a pickpocketed invitation
opens the noble house; the map in the study reveals the Undertown's routes; the signet ring
opens the bronze door. In the Mumblewood: a moon-cap from the mushroom ring buys the hermit's oar;
the oar takes the boat to the island; the stone under the willow opens the room under the lake;
following the fox opens the oak, whose burrow drops one-way into the Barley Road. In Saltwick:
the bottle on the strand is the keeper's letter and opens the lamp room; the stamp in the gull's
nest lets the clerk sign the tide out, for good; the bare shore shows the wreck and opens the
cove; the weed in the cove hides the smugglers' hole, whose tunnel climbs to the vault under
Aldmoor and is known from both ends afterwards. In the Grumbles: the book propping Ma Scree's
table holds the answer to the troll's one riddle; asking him about his bridge opens his front
room; the echo in the gorge gives away the monks' Thursdays, and saying so opens the Shouting
Room; the monks' lantern opens the dwarf mine; the mine's rope reaches the summit; the cage goes
down to the bottom level; the ore cart runs one-way to the Aldmoor Gate.

The lake shows a different sky, and something large crosses it. That is as close as anything
comes to the secret. The curved marks of the Great Drain turn up again in the smugglers' hole,
at the height of the highest tide, and the oldest tide ledger opens with the sea already in.
Under the Grumbles the dwarves dug through into the same sky the lake shows, and stopped. From
the Col the land has a grain, as grass does after something has gone over it. Old Grumble is
partway through a word, and nobody knows what it is.

## Backlog

In no particular order.

- A castle. Dungeons and deeper undergrounds. Sewers beyond the Great Drain.
- More mountains, more forest, a jungle, more lakes. Where the dwarves went. What Old Grumble is saying.
- Fauna and plants, as things to look into everywhere.
- More coast. Isles. Sky islands. Who signs the tide back in.
- A steampunk city, and a flying steam airship whose destinations are the docks already found.
- An invisible mage tower.
- A vampire castle. Evil places and devils: bureaucratic, dreadful hosts.
- Gods and their divine planes.
- Wonders, by the thousand.
- The seven feathers, once their role is decided.
