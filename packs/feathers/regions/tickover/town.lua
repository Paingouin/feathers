-- The Safety Valve (an inn) and the Constabulary.

space {
  id = "tk_inn",
  region = "tickover",
  name = "The Safety Valve",
  description = "The inn on the corner of Escapement Street, where the city goes to let it out. For eleven hours a day Tickover keeps time. Here, from six until the last whistle, it is permitted not to. The room is low and full of steam from a copper on the bar, and the clock on the wall has a tea cosy over it.",
  palette = { bg = "#150f0a", text = "#dccdb6", dim = "#7e6a54", accent = "#e8a04c", border = "#583c24" },
  ambience = { flicker { color = "#ffb060", strength = 0.22 }, steam { glyphs = "˙·∙", color = "#70665a", rate = 0.5 } },

  things = {
    { name = "the bar",
      description = "A counter of riveted copper, with a brass foot rail worn down like a doorstep and a row of pressure gauges where another house would have pumps.",
      things = {
        { name = "the landlady",
          icon = "☺",
          description = "Mrs Agatha Cam: broad, red armed, with her sleeves rolled and a stoker's rivet number on her wrist. She did twenty years on the shovel and then bought the Valve with the difference between what the Boiler burned and what the books said. Nobody has asked to see the sums.",
          actions = {
            { "Order a drink", say "\"What pressure?\" You do not know. \"Low, then.\" She opens a cock under the first gauge and fills a mug with something brown that hisses. You show the copper. \"That's your gate copper. I'd as soon take a man's boots.\" It is on the house. It tastes of malt and hot pennies, and it goes down like a lift." },
            { "Ask for the news", say "\"Clock's behind. Boiler's warm. Thrupp refused another forty.\" She wipes the copper. \"And the {i}Weather Permitting{/} is in, on the roof, which means Hester Ballast will be down for her pint and telling lies about clouds.\"" },
            { "Ask about the tea cosy", say "\"House rule. No time in here. If you want to know how late you are, go and be late outside.\" She nods at the wall. \"It's still going under there. We can hear it. We find that sufficient.\"" },
          } },
        { name = "the three gauges",
          description = "Brass dials over three brass cocks. {i}LOW. WORKING. BLOWING OFF.{/}",
          things = {
            { name = "the one marked BLOWING OFF", description = "The needle is in the red. It is the strong ale. You are allowed one, and Mrs Cam chalks your name on the copper, and at closing she reads out the names and those people are helped home." },
          } },
        { name = "the row of mugs",
          description = "Tin, on hooks, each stamped on the base with a rivet number in place of a name.",
          things = {
            { name = "a mug with a black ribbon", description = "Rivet 2,206. He retired on a Friday and was dead by Sunday. They give stokers a week, usually, to get used to the quiet. His mug is filled at six and poured on the fire at closing." },
            { name = "a mug with a clock face on it", description = "For Mr Pinion, the Chief Winder. It is the only mug that is always clean. He has never been in. He is thought to be proud. In fact, nobody has ever asked him." },
            { name = "a mug with a hole drilled in it", description = "For inventors. They are served. They are told it is a test." },
            { name = "the visitors' mug", description = "It has a small wind-up key in the base. Wound, it walks slowly along the bar away from you. This is thought very funny, every time, by the same eleven men." },
          } },
        { name = "the copper", description = "A great kettle at the end of the bar, always on, for toddies and for the general fug. A fitter has rigged a whistle to it that plays the first bar of the stoking song when it boils. Mrs Cam has rigged a cork to the whistle." },
        { name = "a jar of pickled gherkins", description = "Each on a small brass cog for a handle. The jar is refilled by a pipe from the cellar. Nobody has seen the bottom of it or wishes to." },
        { name = "the slate", description = "Tabs, in chalk, by rivet number. One line reads {i}The Patent Office: 11,000 small brandies{/}. That is Agnes Thrupp. She buys one for every man her brother refuses, and they never know who sent it." },
      } },
    { name = "the clock under the cosy",
      description = "A round shape on the wall under quilted wool, with a pom pom. It ticks through the wool like a heart under a blanket.",
      actions = {
        { "Lift the cosy", say "Forty faces turn. The fiddle stops. Mrs Cam does not raise her voice. \"We don't,\" she says. You let it down. The fiddle goes on. A stoker beside you says, kindly, that everybody tries it the once." },
      } },
    { name = "the fire",
      description = "A grate of real coal with a brass hood. Not for warmth: the whole city is warm. For looking at.",
      things = {
        { name = "the settle", description = "High backed, black with age, reserved for stokers off shift. They sit with their feet out to a fire a hundredth the size of the one they have fed all day, and say it is not the same thing at all." },
        { name = "a toasting fork on a spring", description = "It toasts one side of a muffin and then, with a ping, throws it. You are meant to catch it. A dog lives by the hearth entirely on the misses." },
        { name = "the dog", description = "A brindled terrier called Gasket, fat as a bolster, with one ear up for the ping.",
          actions = { { "Scratch his ears", say "He leans on your leg with his whole weight. A muffin goes over. He is gone, and back, and leaning again, chewing, before you have missed him." } } },
        { name = "the mantel", description = "A row of first shovels, worn to stubs, each with a name. A stopped steam gauge. And a pair of baby's clogs, with iron rims, the size of your thumb." },
      } },
    { name = "the regulars",
      description = "Stokers, fitters, a tram driver with his cap off, two clerks who have loosened their collars by one hole.",
      things = {
        { name = "the men out of step", description = "A table of six, tapping their feet, each to his own time, with great enjoyment. One is going very fast. One has stopped altogether and is merely holding his foot in the air." },
        { name = "a gauger with her spectacles off", description = "On a stool, eyes shut. \"Eleven hours of needles,\" she says. \"I come here to look at nothing. Would you mind standing a little to the left? You're something.\"" },
        { name = "a fiddler",
          description = "By the fire, playing reels, and never the same length twice. He adds a bar or drops one as he pleases, and the dancers have to guess.",
          actions = { { "Clap along", say "You clap. He changes time at once, to throw you. You follow. He changes again. For a minute it is a duel, and then he gives you a nod, the whole room having seen that you lost, but lost late." } } },
        { name = "Captain Ballast, when she is in",
          icon = "☺",
          description = "A lean weathered woman in a leather coat with a pair of smoked goggles pushed up into grey hair, drinking at WORKING pressure. Hester Ballast, master of the {i}Weather Permitting{/}. She has her feet on a second chair, as if the floor might tilt.",
          actions = {
            { "Ask where the airship goes", say "\"Anywhere there's a thing to tie to. I don't keep a route, I keep a list.\" She looks you over. \"I only take people to places they've already been. Company rule. You'd not believe how folk carry on when they see a thing from above that they've not first seen from the side.\"" },
            { "Ask what it is like up there", say "\"Quiet.\" She drinks. \"You get above the weather and there's the top of it, white, like a field under snow that nobody has walked on. And you want to. That's the danger of it.\" She puts her feet back on the chair. \"I keep a rope on the new hands for the first month.\"" },
          } },
        { name = "a clerk drafting a complaint", description = "In the corner, with a pen. It is a complaint to the Street Committee about the noise from the Safety Valve. He drafts one every night, here, with a pint, and at closing Mrs Cam reads it, corrects the spelling, and puts it on the fire for him." },
      } },
    { name = "the dancing floor",
      description = "A square of boards by the fire with brass studs at the corners. The dances of Tickover are all for sets of eight, by numbers, like the working of a loom. Here they do them wrong, on purpose, and fall over.",
      actions = {
        { "Join a set", say "You are number six. You are meant to pass right shoulders with three and turn four. You pass something with someone and turn Mrs Cam, who was only carrying a tray. There is a cheer. It is explained to you afterwards that this is the nearest the dance has ever come to being done properly." },
      } },
    { name = "the kitchen",
      description = "Through a hatch behind the bar: a range fed straight off a steam main, and a cook with her hair in a net.",
      things = {
        { name = "the cook", description = "Little Sal, Big Sal's mother, who is four foot ten and has never in her life used a clock in a kitchen. \"It's done when it's done,\" she says. In Tickover this counts as open revolt." },
        { name = "the steam pudding", description = "Suet, in a cloth, the size of a cannon ball, cooked in the exhaust of the tap room main. It is the only dish. It comes with treacle or with gravy, and you are asked which, and then given whichever is nearer.",
          actions = { { "Ask for a slice", say "A slice comes through the hatch on a tin plate, steaming like a small volcano. Gravy. It has the weight of a paving stone and the comfort of a hand on the back of your neck. \"He's eating it hot,\" Little Sal reports to the range. \"Brave. Stupid. I like him.\"" } } },
        { name = "the pressure cooker", description = "A brass sphere with eight bolts and a little dancing weight on top. A dent in the ceiling above it has been painted round with a gold frame, and dated." },
        { name = "a rack of spoons", description = "All bent to the same angle. There was a spoon bending engine, refused. Mrs Cam bought it at the Office door for a shilling. It turned out that the angle is the right one for suet." },
        { name = "the kitchen cat", description = "Asleep on the steam pipe, on a folded sack: thin, grey, ordinary. It is not the municipal cat. It is nobody's number anything, and is the more contented for it." },
      } },
    { name = "the cellar hatch",
      description = "A plate in the floor behind the bar, with a ring, and a hiss of pipes below.",
      things = {
        { name = "the cellar",
          description = "No barrels. Three copper vats, lagged and riveted like small boilers, with pipes going up to the gauges.",
          things = {
            barrel { name = "one real barrel", description = "Oak, in the corner, with a tap. It is cider, from Greenhollow, for the homesick. It takes a carter a week to bring it and it is the only thing in the house that is allowed to be flat." },
            { name = "the vat marked BLOWING OFF", description = "It ticks as it works. There is a safety valve on top, of course. It lifts every so often and the cellar smells for a moment like Christmas." },
            { name = "a warm patch of wall", description = "At the back, where the cellar runs out toward the Boiler Hall. The cellarman puts the dough there to rise, and it has never failed, and on cold nights he puts himself there." },
            rat { description = "Sleek and steam cleaned. It sits on a pipe elbow where the lagging has worn through. Warmest seat in the house." },
          } },
      } },
    { name = "the stairs",
      description = "Up to four rooms on a landing with a gas jet.",
      things = {
        { name = "the Regulator's Room",
          description = "The best: a brass bedstead, a carpet, a window on the street.",
          things = {
            { name = "the brass bed", description = "A Lord Regulator is supposed to have slept here, in the last century, on the night the Clock skipped, because he could not bear to be in sight of it. The maids say you can still see where he gripped the rail." },
            { name = "the alarm clock", description = "Under a second, smaller tea cosy. House rule extends to the bedrooms. You are woken by Mrs Cam banging on the pipe with a spanner, when she thinks of it." },
          } },
        { name = "the second room", description = "Let by the month to a traveller in gauge glasses, from Aldmoor. He came for two nights eleven years ago. He says he is waiting for the right moment to leave, and it keeps being four minutes off." },
        { name = "the third room", description = "Captain Ballast's, when the ship is in. A hammock, slung across a room with a perfectly good bed in it. The bed has charts on it." },
        { name = "the cheap room",
          description = "Under the roof, next to the chimney breast: a pallet, a hook, a skylight.",
          things = {
            candle(),
            { name = "the skylight", description = "Stand on the pallet and put your head out: roofs, chimneys puffing in time, the white face of the Great Clock, and over on the Guildhall side a long grey shape nosing at a mast like a horse at a gate." },
            { name = "names on the rafter", description = "Fitters, tinkers, a dwarf (in runes, low down). {i}Wilf woz ere, going up tomorrow{/}. And under a different date, same knife: {i}Wilf woz ere, been up, not saying{/}." },
          },
          actions = {
            { "Carve your name", say "You find a gap and cut it in, with the date. You consider adding {i}adventurer{/}. You add it. You consider the spelling. It is too late now." },
          } },
      } },
    { name = "the sign",
      description = "Outside, over the door, a brass valve on a bracket, with a real wisp of steam piped to it, and the words {i}THE SAFETY VALVE. A. CAM. LICENSED TO LET OFF.{/}" },
    { name = "a penny engine",
      description = "On the end of the bar: a glass case with a tiny beam engine in it. Put in a penny and it runs for a minute. It does nothing else. The stokers put in pennies all night and watch it with the expression of men looking at a baby.",
      actions = {
        { "Watch it", say "Somebody else's penny. The beam nods, the wheel goes round, a governor no bigger than two peas spins out. A stoker with forearms like hams says, softly, \"Look at her go,\" and you find you have said, \"Yes.\"" },
      } },
    { name = "the settle by the window",
      description = "Where the fitters' wives sit, with a half of LOW and the whole of the city's business.",
      actions = {
        { "Listen in", say "Pinion let a stranger up the tower. Lettice Fusee has no apprentice and won't be told. The Boiler's burning less again. Mrs Pawl's top room whistled back. They know everything, and they see you listening, and one of them moves up so that you can hear better." },
      } },
  },

  exits = {
    { to = "tk_escapement_street", description = "Out into the street, where it is, regrettably, a time." },
  },
}

space {
  id = "tk_constabulary",
  region = "tickover",
  name = "The Constabulary",
  description = "A blue lamp, a brass door, and inside a charge room with a high desk, a rack of truncheons, and along the back wall twelve sentry niches. In nine of them stands a brass constable, life size, in a blue tin coat. Three niches are empty. A sergeant in shirt sleeves is going down the row with a key the size of a starting handle.",
  palette = { bg = "#0c0f14", text = "#ccd2d8", dim = "#66707a", accent = "#6ea0d8", border = "#2c405a" },
  ambience = { flicker { color = "#6ea0d8", strength = 0.1 } },

  things = {
    { name = "Sergeant Ratchet",
      icon = "♜",
      description = "The only constable in Tickover with a pulse: a heavy patient man with a walrus moustache and a right arm half as thick again as his left, from the winding. He has nine wound and three out, and it is not yet noon.",
      things = {
        { name = "the winding key", description = "Steel, with a wooden cross handle. Forty turns a constable, twice a day. He has done it for twenty six years. He says the first thousand are the worst." },
        { name = "his moustache", description = "Grey, drooping, and waxed at the tips with machine oil, because it is what there is." },
        { name = "his right arm", description = "His tunics are made specially. The tailor charges for a sleeve and a half." },
      },
      actions = {
        { "Report a crime", say "\"Go on.\" You think. You tell him that somebody in Greenhollow sold you a sword that turned out to be a poker. He writes it down. \"Outside the city bounds,\" he says. \"But I'll have Number 9 look reproachful in that direction.\" He seems to mean it." },
        { "Ask if there is any crime", say "\"Lateness,\" says the Sergeant. \"Being more than four minutes behind. Being less. We had a man last year who was on time. Brought his own from Aldmoor and wouldn't hand it in.\" He shakes his head. \"He came round. They do. It's lonely, being right.\"" },
        { "Offer to wind one", say "He hands you the key and points you at Number 2. You get eleven turns on before your arms go. Number 2's eyes open, he says \"Evening all,\" takes one step and stops, with his foot up. \"That's about what eleven turns gets you,\" says the Sergeant, finishing the job. \"A greeting and a doubt.\"" },
      } },
    { name = "the twelve niches",
      description = "Arched recesses, numbered in brass, each with a hook for a lantern and a drip tray.",
      things = {
        { name = "Constable 1", description = "The oldest. His brass has gone the colour of tea and one eyelid sticks. He is kept for ceremonial and for standing outside the Guildhall, where a slow blink is taken for dignity." },
        { name = "Constable 3",
          description = "Open at the chest, with the door of him swung back, so that you can see the works: a mainspring like a coiled eel, and above it, where you would not expect anything, a small brass heart on a pivot, beating.",
          things = {
            { name = "the brass heart", description = "It does no work. It is not connected to the spring. The maker put one in each of the twelve and left no note. The Sergeant oils them last, and by hand." },
          } },
        { name = "Constable 5", description = "He lists a little. A label on his truncheon: {i}LAZY ON THE LEFT. SEE FUSEE.{/} He is waiting to go to the Clockmaker, with the air of a man waiting for the dentist." },
        { name = "Constable 9", description = "The best of them. Bright as a new kettle, never missed a beat. He is facing, you notice, a few degrees off true, toward the north east. Toward Greenhollow. He is looking reproachful." },
        { name = "the three empty niches", description = "Numbers 7, 11 and 12. Seven is on the Gate. Eleven is on the Quay. A card hangs in the twelfth: {i}OUT{/}. The card is yellow with age and the hook is rusted to the ring." },
      },
      actions = {
        { "Ask about Number 12", say "The Sergeant stops winding. \"Went out on his beat the day the Clock skipped. A hundred and ten years back. Never came in.\" He goes on winding. \"Spring should have run down in twelve hours. But there's folk say they've seen a blue coat at the far end of a street, late. Walking steady. We leave his niche. You would.\"" },
      } },
    { name = "the charge desk",
      description = "High, sloped, with a ledger chained to it and a pen on a spring.",
      things = {
        { name = "the charge book", description = "{i}Jas. Tappet, fitter: early for work, third offence. A pigeon: no ring. Person unknown: whistling out of time near the Guildhall, to the distress of a tram.{/}" },
        { name = "the lost property shelf",
          description = "Behind the desk: umbrellas, one glove, a cage.",
          things = {
            { name = "a lost minute", description = "In a jam jar with a paper lid, labelled in the Sergeant's hand: {i}Found, Pawl Lane. One minute, loose. Owner may claim on description.{/} You hold it up. It is only a jar. The Sergeant says people come in and look at it, and go quiet, and do not claim it." },
            { name = "a lost umbrella, steam", description = "It opens when you look at it. It has a plaster stuck to one rib, in sympathy." },
          } },
        { name = "the pen on a spring", description = "It writes, and returns itself to the inkwell. It was meant to save time. It saves about a second, each time, and the Sergeant reckons he has been given back a whole afternoon over his career and intends to spend it fishing." },
      } },
    { name = "the cells",
      description = "Two, at the back, with barred doors of polished brass. They are spotless.",
      things = {
        { name = "the first cell",
          description = "A bunk, a bucket, and a clock on the wall, bolted on, with the hands at the right time: the sun's time, four minutes on.",
          things = {
            { name = "the right clock", description = "This is the punishment. You are put in with it for a night. The Sergeant says that by morning most men are begging to be let out to where everyone agrees." },
          } },
        { name = "the second cell",
          description = "Occupied. A young man in a good Aldmoor coat is sitting on the bunk with a pocket watch held tight in both hands.",
          things = {
            { name = "the prisoner", description = "\"It is twenty past eleven,\" he says to you through the bars. \"It {i}is{/}. You're from outside, you know it is.\" You do know. You look at the clock in the charge room. It says sixteen minutes past. You find, to your alarm, that you believe the clock." },
          },
          actions = {
            { "Tell him he is right", say "\"Thank you,\" he says. His eyes fill. \"Thank you.\" The Sergeant, behind you, says gently, \"That won't help him, sir. He's got to live here. He's marrying a Coil.\"" },
          } },
      } },
    { name = "the oiling table",
      description = "A zinc bench with a constable's left arm on it, off at the shoulder, and a row of little cans.",
      things = {
        { name = "the arm", description = "Brass, jointed, with a white cotton glove on the hand. The fingers drum on the zinc, slowly, waiting." },
        { name = "the cans of oil", description = "{i}Joints. Eyes. Voice. Conscience.{/} The last is nearly full. A little goes a long way, says the Sergeant, and too much and they won't arrest anybody." },
      },
      actions = {
        { "Shake its hand", say "You take the gloved hand. It grips, firmly, twice, and lets go. From niche 4, across the room, a voice like a closing drawer says, \"Pleased to make your acquaintance.\" Number 4 has no left arm. He is looking straight ahead." },
      } },
    { name = "the rack of truncheons",
      description = "Twelve, numbered, of turned boxwood. They have never been used on anybody. A brass constable has only to walk toward you at an even pace, and you find you have decided to go home.",
      things = {
        { name = "truncheon 12", description = "In its slot, dusted. Wherever he is, he went out without it." },
      } },
    { name = "the beat board",
      description = "A map of the city in brass inlay on slate, with twelve pegs, one for each constable, moved by wires under the floor as they walk.",
      things = {
        { name = "peg 7", description = "At the Punctual Gate, not moving. A wisp of chalk dust rises from it. He is still on the riddle." },
        { name = "peg 11", description = "On the Guildhall roof, by the mast. It goes four paces one way and four the other." },
        { name = "the hole for peg 12", description = "Empty. The peg was lost. But the wire under the slate is still live, and if you put your finger over the hole you can feel it moving, a small steady rub, going down a street on the east side that the map does not show." },
      },
      actions = {
        { "Put your finger over the hole", say "A tickle of wire. Left, left, a pause. Left. He is walking. A hundred and ten years on a twelve hour spring, and walking, somewhere off the edge of the slate. You take your finger away and do not tell the Sergeant. He knows. It is why the niche is dusted." },
      } },
    { name = "the blue lamp",
      description = "Over the door outside: cobalt glass in an iron frame, with the word {i}CONSTABULARY{/} and a gas jet.",
      things = {
        { name = "a moth", description = "Going round it. Even the moths here go round a lamp at a steady pace, and all the same way." },
      } },
    { name = "a noticeboard of bye laws",
      description = "Framed, under glass, in very small print.",
      things = {
        { name = "bye law 4", description = "{i}No person shall be on time within the City bounds.{/}" },
        { name = "bye law 19", description = "{i}No person shall inquire of a Winder what he winds.{/}" },
        { name = "bye law 61", description = "{i}Riddles shall not be put to the Constabulary. (Added following the events of the Tuesday.){/}" },
        { name = "bye law 100", description = "The last, and in larger type. {i}In the event of the Clock stopping, all persons shall stand still where they are and wait, quietly, and not try to help.{/} You read it twice. It does say {i}help{/}." },
      } },
    { name = "the Sergeant's kettle",
      description = "On a gas ring by the desk, with one mug. The brass constables do not take tea. He pours a second mug anyway at four o'clock and sets it in niche 12, and at five he empties it.",
      actions = {
        { "Accept a cup", say "He rinses the second mug and gives it to you. \"He won't mind,\" says the Sergeant. \"He was always civil.\" It is good strong tea. You drink it standing next to an empty niche and feel, oddly, in company." },
      } },
  },

  exits = {
    { to = "tk_regulator_square", description = "Out under the blue lamp, at a steady pace." },
  },
}
