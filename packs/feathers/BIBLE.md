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
- **Dense.** A space carries about 10 to 16 things at the top level, most of them nested two to
  four deep, most with something to do. A tavern has its mugs, tables, regulars, kitchen, cellar
  and rooms. A city has streets, shops, houses, a watch, a gaol and walls. When in doubt, open it
  and put something inside. Old places are enriched in every batch.
- Items are keys and curiosities. They are obtained through actions and open routes.
- **Artifacts** are mighty, legendary items that can be collected and not used. They are hidden
  deep or kept in secret places, and counted by the Artifacts tracker. Exploring pays off.
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

145 spaces (42 secret), 32 artifacts. `(s)` secret, `(w)` wonder.

| Region | Spaces |
|---|---|
| Greenhollow, a village | Village Square, The Tipsy Griffon, its kitchen, its landing, its attic (s), its cellar (s), Mill Lane, Cabbage Row, the chapel, the bell loft (s), the graveyard, Saint Wobble's crypt (s), Barley Road |
| Aldmoor, a town | the gate, the market, The Three Regulations (inn), Nobles' Row, House Vaux-Pimbleton, the study behind the bookcase (s), the Street of Small Gods, Elbow Lane, Pell the bookkeeper, Spindle's magic shop, No. 9 Elbow Lane, the Roof Road (s), the Watch House, the gaol, the town wall, the Snug in the Wall (s) |
| The Collegium, a noble academy of magic | the Porter's Lodge, the Quadrangle, the hall, the Lecture Theatre, the Library, the Restricted Stacks (s), the Observatory, the Practical Room, the Founder's Study (s) |
| The Undertown | the Great Drain, the cistern, the smugglers' vault (s), the buried shrine (s), the silt gallery, the old sluice, the court of the rats (s) |
| The Mumblewood, a forest | the edge, The Path That Tries, the deep wood, the root barrow (s), the hermit's clearing and hut, the Climbing Falls (w), behind the falls (s), Lake Perhaps, the reed beds, the Island of One Tree, the room under the lake (s), inside the old oak (s) |
| The Everwood, the elves | the Border, the Glade of the Long Afternoon, the High Houses, the Root (s), the Court of Leaves, the Pool of the First Night (s, w), the Remembering Tree (w) |
| Saltwick, a harbour and its coast | the Cliff Road, the harbour, the Slack Water inn, the chandlery, the harbour floor, the Light's cellar (s), the Tide Office, where the tide is kept (s, w), the Light, the Lamp Room (w), the Long Strand, inside the wreck (s), the owner's cabin (s), the Cove of Second Thoughts, the smugglers' hole (s) |
| The Grumbles, mountains | the Goat Track, the marmot meadow, the mirror tarn, the hut, the Pass, the troll's front room (s), the Col, the glacier, the ice cave (s), the Gorge of Late Replies (w), the Monastery, its refectory, its silent library, the founder's cell (s), the Shouting Room (s), the Longshift Mine, its gallery, the foreman's office (s), the bottom level (s, w), the top of Old Grumble (w) |
| Far Enough, the dwarf city | the Low Road, the Gates, Plumb Square, the Watch-Post, the wall under the mountain, the Great Forge, the Cold Forge (s), the Hall of Grievances, the Unlodged Room (s), The Second Shift, Pebble's Room (s, w), the Under-Fields, Gran Marl's Garden (s, w), the Hot Level, Chisel Street, Coldchisel's rune shop, a dwarf house, the schoolroom, the Counting House, the Strongroom (s) |
| Castle Stillstanding, seat of the Crown | Petitioners' Hill, the Bailey, the Armoury, the Jewel House, the Chapel Royal, the Royal Vault (s), Godric's Hoard (s, w), the Great Hall, the Royal Treasury (s), the Muniment Room, the Royal Apartments, the Kings' Closet (s), the Kitchens, the Walled Garden (s), the Dungeons, Pelham's Tunnel (s), the Oubliette (w), the Wall Walk, the Survey Tower |
| Hobmoor, a moor | the Drovers' Way, the Dint (w), inside the star (s, w), the Ribs (w), Underrib, inside the head (s, w) |

**Artifacts** (collected, never used): Griffonsbane, the Unfalling Staff, the rat crown, the muster
horn; the Right Hand of Saint Wobble, the Staff of Orrin Skybreaker, the Left Hand of Maud
Ironhand; Mag Pargeter's Spoon, A Practical Course of Levitation; the Axe That Was Never Swung,
the Upstream Cup; the pending acorn, the Horn of Evening, the parting comb; the Compass of Second
Opinions, the Horn of the Sea-King; the Crown of the Long Winter, the Hammer Called Enough, the
Last Word; Ever-True, the Hinge, the Mountain's Reply, the Pawned Crown, the Patient Lens; Wilful,
the Key of the Kingdom, the Cup of Plenty, the Carp of King Osbert, the Standing Crown; the glass
turnip, the unlanded pebble, the poker sword Mournbright.

**People who recur:** Mag Pargeter, hedge-witch of Greenhollow, forged her own patent of nobility
to found the Collegium, wrote the real lessons on a wall for servants, and signed the dwarves'
visitors' book; H. Pargeter of the Tide Office (Inward, on leave) shares the name, link undecided.
Tib the scullery maid is the only working magician in the Collegium. Madam Spindle was sent down
from its kitchens. Wilf Tuttle, at sea, carves "Wilf woz ere" on things everywhere. King Humbert
drinks cider in the Snug. Old Pebble is the apprentice who broke through under the mine.

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
down to the bottom level; the ore cart runs one-way to the Aldmoor Gate. In the castle: a ticket
from the post, swapped with the man at the front of the queue, passes the gate; sitting on the
throne opens the treasury; asking the cook about the marrows opens the garden where King Humbert
the Fourth is hiding from his court ("in a meeting"); his pre-signed warrant opens the dungeon;
admiring Old Pelham's cell opens his tunnel, which comes up in the kitchen pantry and is known
from both ends afterwards; the monks' lantern lights the Oubliette; the garderobe on the wall
drops one-way into the Great Drain. Telling the Surveyor-General about Old Grumble (after the
summit) makes the Survey strike out "settling" on the Great Map.

Added in 0.6.0. In Aldmoor: the bookkeeper's overdue book, returned, sends the Librarian for the
long ledger and opens the Restricted Stacks; Gran Tuttle's cats open the attic and the Roof Road,
which jumps one-way to the town wall; the watchman's tea opens the Snug; confessing to something
opens the gaol. In the Collegium: the pickpocketed invitation (Sir Aubrey is enrolled and has
never attended) passes the porter; the bronze page on the statue opens the Founder's Study; a
splinter of the fallen star buys a look through the Long Glass. On Hobmoor: listening to the star
opens it; the landlady of the Funny Bone gives the path to the head. In the Everwood: being looked
at passes the border; a name from the Namer admits to the court; the child gives away the Root;
the Lady's boon opens the pool. Under the Grumbles: the shift bell in the mine opens the Low Road;
the visitors' helmet admits to Far Enough; the grudge ledger names Pebble, telling him you have
seen the breach opens his room, and his small pick from the bottom level goes back on its nail;
the tradesmen's door comes out behind the troll. In the castle: the warrant also opens the royal
apartments; the burial register, the fish in the chapel floor and the last page in the Kings'
Closet lead down to the Royal Vault and Godric's Hoard.

The lake shows a different sky, and something large crosses it. That is as close as anything
comes to the secret. The curved marks of the Great Drain turn up again in the smugglers' hole,
at the height of the highest tide, and the oldest tide ledger opens with the sea already in.
Under the Grumbles the dwarves dug through into the same sky the lake shows, and stopped. From
the Col the land has a grain, as grass does after something has gone over it. Old Grumble is
partway through a word, and nobody knows what it is. Under the castle, the first stone of the
Oubliette carries the signet ring's single curved line and was there before the masons. The
oldest panel of the hall tapestry shows a man on the bare hill looking up at a sky whose thread
has gone. The Survey's one leaning tower is the true one.

Hints added in 0.6.0, to keep or veto: the Aldmoor wall measures a few inches longer every spring;
the mason's level in the Snug sits off centre, towards the Grumbles; the oldest temple on the
Street of Small Gods has no name, only the curved line; the Baroness's book of seals gives that
line the origin "prior"; the Collegium bestiary has had its birds cut out, and the index gives
them all the same page; the Gap, a place in the sky with no stars, from whose edge the star fell;
the orrery has an empty socket where the world should be; the standing stones on Hobmoor all lean
towards the mountains; the Pool of the First Night has no Gap in it; the topmost leaf of the
Remembering Tree is a first morning in which the forest is already old; Pebble's notebook: above
has weather, below is always "evening"; the slab in the Unlodged Room reflects a ceiling very far
up and blue; the Saltwick Light has a root of gold thread going into the bedrock.

Left open on purpose: what the Ribs were, and the passage going further into the head; what the
Gap is; who is fed in the bricked-up cell of the gaol; who signs the tide back in.

## Backlog

In no particular order.

- Deeper undergrounds below the Oubliette. Sewers beyond the Great Drain. The king whose name was chiselled off. What happened on the repealed Thursday.
- More mountains, more forest, a jungle, more lakes. What Old Grumble is saying.
- Fauna and plants, as things to look into everywhere.
- More coast. Isles. Sky islands. Who signs the tide back in (Mr Pargeter, Inward, is on leave). Where the charts stop.
- A steampunk city, and a flying steam airship whose destinations are the docks already found.
- An invisible mage tower.
- A vampire castle. Evil places and devils: bureaucratic, dreadful hosts.
- Gods and their divine planes.
- Wonders, by the thousand.
- The seven feathers, once their role is decided.
