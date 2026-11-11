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
- **Sized to the place.** A small place with a few things is fine; a big place with a great many
  is fine too. Things nest two to four deep where it suits, most with something to do. A tavern
  has its mugs, tables, regulars, kitchen, cellar and rooms. A city has streets, shops, houses, a
  watch, a gaol and walls. Never pad a small place to reach a count. Old places are enriched only
  when they feel empty for what they are.
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

337 spaces (99 secret), 80 artifacts. `(s)` secret, `(w)` wonder.

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
| Tickover, the steam city | the Punctual Gate, Escapement Street, No. 4 Ratchet Terrace, Regulator Square, inside the Great Clock (s), the Boiler Hall, the Fire Under (s, w), Winders' Row, Fusee the clockmaker, the Patent Office, the Vault of Refused Devices (s), The Safety Valve (inn), the Constabulary, the Airship Quay, the Weather Permitting (airship), inside the envelope (s) |
| The Afterthoughts, isles off Saltwick | the Ferry, the Landing on Muckle Afterthought, The And Another Thing (inn), Herself (the still) (s), the Net Loft, the Smokehouse, the Kirk of the Ninth Wave, the Customs station, the Bonded Store (s), the Stack, the Other Light, the Pipes (sea caves), the Sea's Own Customs House (s, w), Sometimes (w, low tide only), the Drowned Kirk (s) |
| The Glowers, the evil country | the Unadvised Road, Lower Wince, the Wince Acre, The Last Chance (inn), the Vigilant Society (s), the Gate of Castle Regret (w), its Great Hall, the Dining Room, the Library, the Laboratory (s), the Long Gallery, the Morning Room (s, w), the Bat Loft, the Crypt, the Waiting Room, the Lower Office (s), Lost Property (s, w) |
| The Loose Ends, sky islands | the Path That Kept Going (w), Landfall, Tether, Lightly & Daughter, the Keel (s), Spar's kites, Where Things Go (s, w), The Slow Spill (inn), the Cloud Pasture, Wrong Way Up (w), the Weather Office, the Returns (s, w), the Fall That Never Lands (w), the Other Observatory, the Chart Room (s) |
| The Further Down, under everything | Past the Last Grating, the Slow River, the Pale Wood, inside the Great Cap (s), Pardon (w), The Closed Eye (inn), the Lost Property Market, the Unclaimed Shelf (s, w), the Dungeon of Dire Peril, the Final Chamber (s), the Lake With No Far Side (w), the Island in the Middle (s), the Stair Nobody Counted, the Wall Underneath, Where the Echoes Go (s, w) |
| The Sweltering, a jungle | Mango Landing, Pomfret's Northern Curiosities, the Antiquities Department (s), aboard the Perhaps, the Falls of Standing Rain (w), Stilts, the Hammock House, Camp Brandish, the High Walk, the Hostess's Dell (s), the Ring of Giants, the Tower of Magister Null (s, w), the Red Temple, the Waiting Room under it (s), Mount Maybe, Where It Considers (s, w) |
| Head Office, where the devils work | Reception, the Lift, Under the Bottom (s, w), the Department of Temptation, Contracts, the Small Print (s, w), Personnel, the Staff Canteen, the Archive, the Refusals (s, w), Customer Experience, the Works, the Stokers' Garden (s, w), the Executive Floor, the Chairman's Office (s) |
| The Small Heavens, planes of the small gods | the Airing Cupboard, Behind the Heavens (s), the Passage of Jamb, the Doorstep, the Porch, Clamber's Hill, About Four on a Thursday, the Prayer Office, Not Known at This Address (s, w), the Anteroom of the Not Yet (s), the Kitchen of Auntie Stock, the Halls of Thrum (w), the Celestial Counting House, Down the Back of the Bench (s), Very Nearly (s, w) |
| The Cold Shoulder, the frozen north | the Regardless (mail boat), Blowhard Station, Drift, Number 14 Patience Row, Gudrun Tallow the chandler, The Thin Ice (inn), the Bath House, the Kettle (s), the Lines, the Moot (s), H.M.S. Perseverance, the Great Cabin (s), the Hanging Water, the Cold Light, the Look (s, w), the Last Hut, Peg Sixty-Two (s, w) |
| The Dithers, a fen | the Mostly Causeway, the Staithe, Much Wavering, Withy Row, No. 3 the Boards, The Loose Mooring (floating inn), the Lodgings (s), the Heronry, the Holt (s), the Turbary, the Keeping (s, w), Fogmere (w), Under Fogmere (s, w), the Spire of Little Wavering (w), the Lower House (s) |
| The Parch, a desert | the Desert Express, Budget's End, The Long Wait (caravanserai), the Caravan, the Thousand Awnings, Wick's Lamps, Inside the Lamp (s, w), the Baths of Great Shade, the Court of the Reasonable Sultana, the Itemised Pyramid, the King's Own Account (s), the White Nothing, the Oasis As Advertised, the Mirage From Inside (s, w), the Singers, the Top of the Pillar (s), the City Half Out, the Library of Sand (s, w) |
| Erstwhile, the old capital | the Old Road, the Kings' Gate, the Processional Way, the Wednesday Market, the Royal Baths, The Quiet Pint (inn), the Rose and Remainder (theatre), Under the Stage (s), the Royal Mint, the Strong Room (s), the Old Palace, the Throne Room, the Hall of Kings, the Old Royal Library, the Struck Shelf (s), the Thursday (s, w), the King's Gardens, the Middle of the Maze (s, w) |

**Artifacts** (collected, never used): Griffonsbane, the Unfalling Staff, the rat crown, the muster
horn; the Right Hand of Saint Wobble, the Staff of Orrin Skybreaker, the Left Hand of Maud
Ironhand; Mag Pargeter's Spoon, A Practical Course of Levitation; the Axe That Was Never Swung,
the Upstream Cup; the pending acorn, the Horn of Evening, the parting comb; the Compass of Second
Opinions, the Horn of the Sea-King; the Crown of the Long Winter, the Hammer Called Enough, the
Last Word; Ever-True, the Hinge, the Mountain's Reply, the Pawned Crown, the Patient Lens; Wilful,
the Key of the Kingdom, the Cup of Plenty, the Carp of King Osbert, the Standing Crown; the glass
turnip, the unlanded pebble, the poker sword Mournbright; the Winding Key of Tickover, the Fourth
Minute, the Perpetual Engine of Ignatius Brass, the Governor of Storms; the First Drop, the Fair
Wind in Bond, the Selkie Chart, the Tongue of the Drowned Bell; the Stake of Saint Orrin, the
Patient Mirror, the Cape of Entrances, the Fair Contract; the Kite That Flies the Wind, the Day
Kept Back, the Plumb Line That Points Up, the Pin of the Fixed Star; the Lamp of the Kept Noon,
the Finding Needle, the Aegis Provisional, the Oar of the First Crossing; the North Wind bottled,
Pathmaker, the Cloak of Unseeing, the Idol of Considerable Patience; the Last Full Stop, the Plain
No, the Pen That Binds, the Original Pitchfork; the Latchkey of Heaven, the First Farthing, the
Thunderbolt of Thrum, the Crown You Nearly Had; the Unthrown Harpoon, the Writ of Standing, the
Fallen Ribbon, the Last Sheet; the Broom That Swept the Sea Back, Jack's Own Lantern, the Torc of
the King in the Peat, the Old Mace of the Lower House; the Abacus of the Last Sum, the Unspent
Wish, the Windproof Page, the Flask of As Advertised; the Pasteboard Crown, the Unstruck Die, the
Book of Grants, the Pen of the Last Thursday.

**People who recur:** Mag Pargeter, hedge-witch of Greenhollow, forged her own patent of nobility
to found the Collegium, wrote the real lessons on a wall for servants, and signed the dwarves'
visitors' book; H. Pargeter of the Tide Office (Inward, on leave) shares the name, link undecided.
Tib the scullery maid is the only working magician in the Collegium. Madam Spindle was sent down
from its kitchens. Wilf Tuttle, at sea, carves "Wilf woz ere" on things everywhere. King Humbert
drinks cider in the Snug. Old Pebble is the apprentice who broke through under the mine.
Since 0.7.0: Captain Hester Ballast flies the Weather Permitting out of Tickover (founder Honoria
Tick; Obadiah Pinion, Chief Winder, has never wound the Clock; Miss Lettice Fusee, clockmaker).
Dod Larkin ferries the Afterthoughts; Ansel Crake keeps the Other Light against Old Wim. The Count
of Regret signs "R.", mends the road at night and drinks beetroot; Clemence, who bit him, writes
from the hot south; Mr Brimley is Sub-Assistant Tempter (Acting). In the Loose Ends: Mrs Halyard
at the mast, Nan Wether the cloud shepherd, Mr Mild of the Weather Office, Ignatius Cope the
astronomer, who writes to Dr Vane. Under everything: Mr Tench the ferryman (formerly Complaints),
the Murmurs of Pardon, Nigel Clatter the skeleton on strike. In the Sweltering: Kev (Dob's
partner, not poorly), Mr Pomfret the hatter, Yessa the pilot, Professor Vole-Brandish and Dr
Mimms, the Hostess (a plant), Magister Ignatius Null, the last Reader who could do magic. An
"M. Pargeter" left a library slip at the Wall Underneath three hundred years ago.

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

Added in 0.7.0. A branch off the Cliff Road leads to Tickover; a platform ticket from the Gate
boards the airship, whose moorings appear as the places are found (the town wall, the Light, the
summit, the castle wall walk, the Ribs, Landfall, the Tall Tree), all one-way drops. Asking why
the Clock is four minutes late opens its works; a turn at the shovel opens the Fire Under; a
rejection slip from the Patent Office opens the Vault. The ferry from Saltwick harbour costs
agreeing with the ferryman; Sometimes stands dry only once the tide is signed out. A fingerpost
on the Drovers' Way points to the Glowers: the tomb's foot and a countersign open the hunters'
room, knocking opens the castle, the Count's old ticket is served at once in the Waiting Room,
form nine opens Lost Property. One more step off the summit of Old Grumble finds the Path That
Kept Going; a borrowed peg opens Where Things Go. A red thread through the last grating of the
Great Drain, or the dust in the Oubliette, leads to the Further Down, which joins the two. Kev's
boat runs from the Cove of Second Thoughts to the Sweltering; the glow-worm lamp from the Hammock
House lights the stair under the Red Temple.

Hints added in 0.7.0, to keep or veto. Tickover: the Great Clock was never wound and "started
with" its four minutes; the Boiler sits on a warm stone nobody lit, and warm air goes slowly in
and out under the city; the Clock skipped once, at 3.19. The Glowers: the Count has not slept in
six hundred years and misses dreaming ("I think everything I ever cared for began in that way"),
the strongest of the batch; the devils' oldest claim on the world came back stamped "NOT YOURS.
PRIOR." The Afterthoughts: the seals' chart ends in one closed eye; the drowned bell is cast with
RING SOFTLY. The Loose Ends: the plumb line points a little east of up; the Gap has a straight
edge, has grown, and is missing from the oldest tablet; the First Chart is one hide too big for
any calf. The Further Down: the lake shows stars and the Gap; the oldest echo is an answer whose
call has not been made; the Wall Underneath is thought to be the root of Aldmoor's growing wall;
carvings show people climbing up out of the ground to a bare hill. The Sweltering: the Red Temple
was built already ruined; its crystal dome leaves the Gap unset.

Left open in 0.7.0: what the warm stone under Tickover is and what the Winding Key fits; where Mr
Pargeter is and whose thumbprints mark the tide pole; the Count's soul on shelf 212 and Head
Office below; what holds the Loose Ends up and the word scraped off the First Chart; who built
the Wall Underneath, the seventh rower on the island, the gaol key for the end cell; the second
door under the Red Temple.

Added in 0.8.0. The tube marked DOWN in the Lower Office reaches Head Office; signing the
visitors' book works the lift; Mr Brimley's confirmation can be carried up and stamped, after
which he is no longer Acting. Each shrine on the Street of Small Gods takes a small devotion and
opens its god's plane; the staff corridor behind the Airing Cupboard joins them. The mail boat
runs north from Muckle Afterthought to the Cold Shoulder once you help with the bag. A line of
stones west of the reed beds is the Mostly Causeway into the Dithers; waking the punter opens the
fen, and the floating inn is found by following the marsh light. The platform ticket also boards
the Desert Express at the Punctual Gate; a date buys the lead camel's consent, a bath admits to
the Sultana's court. A turning nobody takes on Petitioners' Hill is the Old Road to Erstwhile;
admitting you do not know the password passes the gate. The airship also moors at Blowhard
Station and at Post No. 9 on the salt.

Settled in 0.8.0. The repealed Thursday: ninety years ago, in Erstwhile, the King heard all 4,009
petitioners in one afternoon and granted every request, giving away more than the Crown owned.
The Council could neither honour nor refuse a king's word, so it struck the day from the calendar
and his name from every stone, coin and book, moved the court to Stillstanding, and founded the
one-petition-a-year queue. The Treasury's single coin dates from this. His statue is the one in
the Oubliette. He walked barefoot into the maze and no prints come out; a ninety-year-old walnut
stands one stride past the last one (implied, never stated). His name is never given. The gods
are younger than the world and none of them made it; nor did the devils, whose First Claim came
back stamped PRIOR. Thrum, Lord of All, has been forgotten nine hundred years.

People since 0.8.0: Miss Cinder, Old Scuttle, Mrs Scorch, Mr Quire, Mr Wrack and the Chairman (who
is out) at Head Office. The gods: Our Lady of Lost Socks, Jamb, Mother Mind-the-Step, Old
Looks-Like-Rain, Old Clamber, the God of Thursdays, Auntie Stock, Saint Ledger, Tuppence, Almost;
Vesper the caretaker; Mrs Collect, Postmistress of Heaven. North: Captain Agnes Thole of the
Regardless, Josiah Flense, Mother Skerry, Captain Sir Edmund Fallow of the Perseverance, Marit
Frost of the Cold Light, Mr Aubrey Level of the Survey. In the fen: Seth Quant the punter, Thirza
Pym the Reeve, the Tuesday Circle (Agnes Mould, Dorcas Withy, Petronella Fogg), the King in the
Peat. In the Parch: Mr Punch and Mrs Cinder of the Express, Ezra Halt, Ama Shool, the Duchess (a
camel), Sultana Emmerat the Reasonable, Bartlemy the genie, King Tot the Exact, Steadfast Ibb. In
Erstwhile: Garrick the ghost sentry, Mr Ambrose Lull the living landlord, Master Quire the
librarian, Master Bezant of the Mint, Rose the mason.

Hints added in 0.8.0, to keep or veto (two per region). Head Office stands on a seamless pale
floor it did not lay, with one curved line in it; the Chairman's pencil note on the First Claim,
"Quite right." The prayers addressed to no god go in a pigeonhole marked with a curved line and
are gone by morning; "the light was already on when the first of us got here." The oldest ice is
perfectly clear, as if there had been nothing yet to make dust; the surveyor's chain comes out a
little long, lately. The Old Track in the peat was laid ready before there was anyone to walk it;
the frogs' first Act found that "things were already going on". The pyramid's first line: "The
ground: received. Not invoiced. Query."; every lintel of the buried city has the curved line. The
first king "came up the hill", with a second line ruled and never cut; the Chronicle "from the
Beginning" opens in the second year.

Left open in 0.8.0: where the Chairman is; who empties the pigeonhole, and whether the cat is the
Unknown God; where Mr Pargeter went (his prints go north past Peg Sixty-Two) and what is past it;
where the Old Track leads; Phase Two of the railway and the Far Coast; whether the walnut is the
King; a large barefoot visitor underground.

Left open on purpose: what the Ribs were, and the passage going further into the head; what the
Gap is; who is fed in the bricked-up cell of the gaol; who signs the tide back in.

## Backlog

In no particular order.

- More mountains, more forest, more lakes. What Old Grumble is saying.
- The Far Coast, beyond the end of the railway. What is past Peg Sixty-Two.
- The high mooring "where the stars leave off".
- A way to board the airship elsewhere than Tickover (it only drops, for now).
- Carry-a-letter errands between the lighthouse keepers.
- Wonders, by the thousand.
- The seven feathers, once their role is decided.
