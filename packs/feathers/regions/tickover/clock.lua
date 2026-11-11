-- Regulator Square and the Great Clock, outside and in.

space {
  id = "tk_regulator_square",
  region = "tickover",
  name = "Regulator Square",
  description = "The middle of Tickover: a paved square with the Guildhall on one side, the Patent Office on another, and in the centre a tower of brick and brass two hundred feet high with a clock on every face. The trams go round it. The pigeons go round it. At the quarter the whole square stops, looks up, and takes out its watch.",
  backdrop = {
    "          ▄▄▄▄▄▄▄          ",
    "          █(◷)█          ",
    "          █ ║ █          ",
    "          █ ║ █          ",
    "  ▄▄▄▄▄▄▄▄█ ║ █▄▄▄▄▄▄▄▄  ",
  },

  things = {
    { name = "the Great Clock",
      wonder = true,
      icon = "◷",
      description = "Four faces of white glass, each thirty feet across, lit from behind even at noon. The hands are the length of tram cars. The minute hand does not creep: it stands, and then all at once it is on the next mark, with a sound you feel in your teeth. {magic}It has never stopped, never been cleaned, and never, in three hundred years, been right.{/} It is four minutes behind the sun, to the second, and every clock in the city is set by it. They could move the hands. Nobody has ever proposed it twice.",
      things = {
        { name = "the minute hand", description = "Black iron with a gilt tip. A kestrel is sitting on it, at the far end, riding it round. When the hand jumps the bird does not so much as open a wing." },
        { name = "the south face", description = "The glass is in sixty panes. One, near the IIII, is a slightly different white. It was broken once, from the inside." },
        { name = "the numerals", description = "Brass, taller than a man. Four is written {i}IIII{/}, as on all clocks, and here the four strokes have been gilded and the rest have not." },
        { name = "the bell", description = "Somewhere above the faces. It is called Old Punctual. It strikes the hour four minutes after the hour, and the note goes out over the city like a lid being put on." },
      },
      actions = {
        { "Check it against the sun", say "You hold up your hand and squint, as you were taught by a shepherd who was usually wrong. Four minutes. A passing clerk sees you doing it and says, not unkindly, \"We know.\"" },
        { "Wait for the jump", say "You watch the minute hand. Nothing. Nothing. Then it is on the next mark and the ground has given a small knock under your boots, and you did not see it move. You watch again. You never do see it." },
      } },
    { name = "the Winder",
      icon = "☺",
      description = "A stout man in a frock coat with brass buttons and a chain of office, standing at the foot of the tower beside a small iron door, with his thumbs in his waistcoat. He is Mr Obadiah Pinion, Chief Winder of Tickover. He has held the post for nineteen years. He looks like a man guarding a cake.",
      things = {
        { name = "his chain of office", description = "Gilt links, each one a tiny key. The pendant is a clock face with no hands. He turns it over when he sees you looking." },
        { name = "his thumbs", description = "Smooth and pink. They are not the thumbs of a man who winds anything." },
        { name = "the iron door behind him",
          description = "Low, studded, with a brass plate: {i}GUILD OF WINDERS. NO ADMITTANCE EXCEPT ON THE BUSINESS OF THE HOUR.{/}",
          variants = {
            { when = flag "tk_winder_asked", description = "Low, studded, and ajar. Mr Pinion has unlocked it and is standing well back from it, as you stand back from a dog you have vouched for." },
          } },
      },
      actions = {
        { "Ask why it is four minutes late", when = no(flag "tk_winder_asked"), set "tk_winder_asked",
          say "\"Behind,\" says Mr Pinion. \"Not late.\" Then he looks at you for some time. \"You're not from here. You'd not tell the Regulator.\" He takes out a key no bigger than a tooth and unlocks the iron door. \"Go up and see for yourself. I'll tell you what I tell the apprentices: I have been Chief Winder nineteen years, and I have never wound it. Nor did the man before me. There's a ledger. Read the ledger.\" He holds the door, and does not come in." },
        { "Ask what a Winder does", say "\"Stands here,\" says Mr Pinion. \"At the quarters I look up. On the hour I nod. It is a position of trust.\"" },
        { "Ask who winds it, then", when = flag "tk_winder_asked", say "\"That,\" says Mr Pinion, \"is the question the Guild was founded not to ask.\"" },
      } },
    { name = "the Guildhall",
      description = "A front of red brick and brass columns, with twelve statues along the cornice, one for each guild: Winders, Fitters, Stokers, Springers, Gaugers and the rest.",
      things = {
        { name = "the twelve statues",
          description = "Brass, twice life size, each holding the tool of the trade.",
          things = {
            { name = "the Winder", description = "Holding a key the length of his arm, with a bow like a clover leaf. The real one, they say, is somewhere in the tower. The statue's is hollow, and has a starling in it." },
            { name = "the Stoker", description = "A woman with a shovel, looking down. All the others look at the Clock. She looks at the pavement, or through it." },
            { name = "the thirteenth plinth", description = "At the end of the row, empty, with four bolt holes. The Guild of Inventors was to have gone there. It was voted down, on the ground that inventors cannot agree on a tool." },
          } },
        { name = "the Guildhall steps", description = "Twelve, each given by a guild, each a different stone. The Springers' step is slightly bouncy. It is a matter of pride and of several sprained ankles." },
        { name = "the Regulator's balcony", description = "A brass rail on the first floor. The Lord Regulator comes out on it once a year, reads the time aloud, and goes in. It is the whole of the ceremony. People bring chairs." },
      } },
    { name = "a tram going round",
      description = "The line makes a ring about the tower. The same tram has been going round it since you arrived. Nobody gets on or off.",
      actions = {
        { "Ask the conductor", say "\"Circular,\" he says, from the step, coming past. Next time round: \"Training.\" Next time: \"Him, not me.\" The driver is a boy of fourteen with his tongue between his teeth." },
      } },
    { name = "the people looking up",
      description = "On the quarter the whole square stops. Hats tip back. Watches come out. For a breath it is the quietest place in the city.",
      things = {
        { name = "a row of watches", description = "Held up to the Clock like children held up to a bishop. Each is found to be exactly four minutes behind, and is put away with a little sigh of pleasure." },
        { name = "a visitor from Aldmoor", description = "A man in a good coat, staring at his own watch, then at the Clock, then at the sun. He is right, and forty thousand people are wrong, and he can feel it going out of him. By tomorrow he will have set it back." },
        { name = "a child not looking up", description = "A small girl, holding her mother's hand, looking instead at the foot of the tower, at a grating in the pavement. \"It's breathing,\" she says. Her mother says, \"That is the Boiler, dear.\" The girl says, \"No.\"" },
      } },
    { name = "a grating in the pavement",
      description = "A round iron grid at the foot of the tower, with warm air coming up through it. It lifts the hem of your coat, and lets it fall, and lifts it.",
      actions = {
        { "Stand on it", say "Warm, up your trouser legs. Then nothing. Then warm. It is slower than the chimneys. It is slower than anything else in Tickover, and it does not keep the city's time." },
      } },
    { name = "the pigeons",
      description = "Several hundred, grey, with brass rings. They go up at each jump of the hand and come down again on the same stones.",
      things = {
        { name = "the pigeon inspector", description = "A man with a ledger and a bag of grain, counting. He marks them present. One is missing. He looks up at the kestrel on the minute hand and makes a small cross in the book, without rancour." },
      } },
    { name = "a statue of the Founder",
      description = "A bronze of a lean woman in a leather apron, holding a pocket watch at arm's length and frowning at it. {i}HONORIA TICK, WHO SET US GOING{/}.",
      things = {
        { name = "the watch in her hand", description = "A real one, set in the bronze, wound by the Guild each morning. It is four minutes behind. They say she made it so on the first day, and when the apprentices asked her why, she said, \"We were not the first thing that started.\"" },
        { name = "the inscription on the plinth", description = "{i}She found a warm place and built on it.{/} That is all. The guide books say it means the hot springs. There are no hot springs." },
        { name = "her frown", description = "It is not the frown of someone whose watch is wrong. It is the frown of someone listening for a second sound under the first." },
      },
      actions = {
        { "Stand as she stands", say "Arm out, chin down, frowning at your empty hand. A pigeon lands on your wrist. You hold the pose for the honour of adventurers everywhere, and a child puts a farthing in your hat, except that you have no hat, so it goes in your boot." },
      } },
    { name = "the time office",
      description = "A kiosk of brass and glass where, for a halfpenny, a clerk will tell you the time.",
      things = {
        { name = "the clerk", description = "He has a window, a watch, and a speaking trumpet. People come from the outer streets to be told. It is the same time as on every wall, and they like to hear it said by an official." },
        { name = "the tariff", description = "{i}The Time: ½d. The Time, with Sympathy: 1d. The Right Time: By Appointment.{/} The last line has been painted out and can still be read." },
      },
      actions = {
        { "Ask for the Right Time", say "The clerk goes still. Then he slides the window shut, puts up a card that says {i}OILING{/}, and sits behind it with his back to you until you go away." },
      } },
    { name = "a hot chestnut engine",
      description = "A barrow with a small locomotive on it, cut in half, the firebox full of chestnuts. The seller blows the whistle when a batch is done.",
      actions = {
        { "Hold out a hand", say "He looks at the hand, and at you, and drops one chestnut in it, split and steaming. \"First one's the city's,\" he says. \"We like to see people eat.\" It burns your tongue. It is worth it." },
      } },
    { name = "the weather mast",
      description = "A pole on the Guildhall roof with brass arms that swing out to show tomorrow's weather: sun, rain, fog.",
      things = {
        { name = "the fourth arm", description = "It has never swung out. It is cast in the shape of a hand, open, palm down, like a hand laid on something to quiet it." },
      } },
    { name = "a public notice board",
      description = "Bills in a brass frame, pasted square.",
      things = {
        { name = "a bill of the Guild of Winders", description = "{i}APPRENTICE WANTED. Must be patient, discreet, and not curious. Curiosity will be noted at interview.{/}" },
        { name = "a bill of the airship company", description = "{i}THE WEATHER PERMITTING. Departs the Quay when she departs. Moorings added as discovered. Passengers are advised to have been there before.{/}" },
        { name = "a small handbill", description = "{i}I. BRASS will demonstrate his Engine on these steps at noon. It cannot work. Come and see it work.{/} The date is ninety years ago. Nobody has pasted over it." },
      } },
  },

  exits = {
    { to = "tk_escapement_street", description = "Down the tram line, in step." },
    { to = "tk_patent_office", description = "A grey front with a queue outside, every person in it holding something under a cloth." },
    { to = "tk_boiler_hall", description = "A wide street going downhill toward the tallest chimney, and getting warmer." },
    { to = "tk_constabulary", description = "A blue lamp over a door, and from inside, a sound of winding." },
    { to = "tk_quay", description = "A flight of iron stairs up to the roofs, where a long grey shape rides on a mast." },
    { to = "tk_clock_works", label = "The Winders' door",
      description = "The low iron door at the foot of the tower, and a stair going up inside the dark.",
      requires = flag "tk_winder_asked", hidden = true },
  },
}

space {
  id = "tk_clock_works",
  region = "tickover",
  secret = true,
  name = "Inside the Great Clock",
  description = "A stair of four hundred iron steps brings you out into the works: a room as big as a barn, lit white on four sides by the backs of the faces. Wheels as tall as houses stand in the gloom, not moving. Then, all at once, with a sound like a door shut in a cathedral, everything has turned one tooth. Nobody is here. There is dust on every lever.",
  palette = { bg = "#0e0e10", text = "#d6d2c6", dim = "#6e6a60", accent = "#f0e6c0", border = "#4a4636" },
  ambience = { dust { glyphs = "·˙", color = "#8a8470", rate = 0.5, speed = 0.1 }, shimmer { color = "#f0e6c0", strength = 0.08 } },

  things = {
    { name = "the going train",
      wonder = true,
      icon = "☼",
      description = "The great wheels: brass, spoked, the largest forty feet across, set one behind another into the dark. They do not turn. They wait, the whole minute, with the teeth just touching, and then they have moved. {magic}There is no weight. There is no spring. You look for the thing that drives them, as every apprentice has looked, and the train simply ends, at a last small wheel on a bare arbor, turning by itself.{/} The Guild has a word for it. The word is {i}willing{/}.",
      things = {
        { name = "the last small wheel", description = "No bigger than a plate. Its arbor goes into a plain brass bush in the frame and stops there. Nothing is behind the frame but the wall, and behind the wall, the air over the square." },
        { name = "the teeth", description = "Cut by hand, each one, three hundred years ago, and not worn. Where two wheels meet, the brass is as sharp as the day it was filed. A clock that drove itself would wear. This one is being carried." },
        { name = "the oil cups", description = "A hundred, one at every pivot, all dry. A spider has made an oil cup her house. The pivots do not squeak." },
      },
      actions = {
        { "Lay a hand on the great wheel", say "Cold brass. You stand with your palm on a spoke for most of a minute. Then it goes, under your hand, one tooth, and it does not feel like a machine going. It feels like a shoulder shifting in sleep." },
      } },
    { name = "the escapement",
      description = "Two steel pallets on an arm, rocking over a toothed wheel: the part that lets the clock go one step and no further.",
      things = {
        { name = "the pallets", description = "Faced with ruby, each the size of your thumbnail. They catch, and hold, and let go. Tick is the catching. Tock is the letting go. In between, you now understand, is where Tickover lives." },
        { name = "a chalk mark on the frame", description = "A line, and beside it four short strokes with a bar through. Somebody was keeping count of something, and stopped at four." },
      } },
    { name = "the pendulum",
      description = "A rod of iron and zinc going down through a slot in the floor into the shaft of the tower, with a bob at the bottom like a cannon ball for a giant.",
      things = {
        { name = "the slot in the floor", description = "You lie down and look through. The bob swings two hundred feet below, slow, across a disc of grey light. That is the grating in the square. The warm air comes up the shaft past the bob, and stops, and comes." },
        { name = "pennies on the pendulum", description = "A little tray halfway down the rod with a stack of old pennies on it. Adding one makes a clock go faster by a hair. There are forty. Each has a paper label with a year and the words {i}NO DIFFERENCE{/}." },
      },
      actions = {
        { "Time it against your pulse", say "You count. The pendulum is steady. Your pulse hurries to meet it, as you might hurry to keep up with someone tall. After a while they agree. You are not sure which of you gave way." },
      } },
    { name = "the backs of the faces",
      description = "Four walls of white glass with the numerals showing through in reverse and the shadows of the hands going over like the arms of something wading.",
      things = {
        { name = "the pane that was broken", description = "Low on the south face, by the IIII. The lead round it is newer. On the sill beneath, swept into a corner and never thrown out, there is a little heap of the old glass, and it is all on the inside. Whatever broke it came in." },
        { name = "the shadow of the kestrel", description = "A small dark shape near the tip of the minute hand, riding it. At the jump it does not flinch. It was hatched on that hand. It thinks the world goes like this." },
        { name = "the gas jets", description = "A ring behind each face, to light it. They are lit. The stopcocks are stiff with verdigris and have plainly not been touched in a man's lifetime." },
      } },
    { name = "the Winders' ledger",
      description = "A book the size of a paving stone on an iron lectern, chained. Three centuries of entries in three hundred hands, one line for each day.",
      things = {
        { name = "the first page",
          description = "The Founder's own hand, square and plain. {i}Day 1. Wound, by all hands, eleven turns. Set going at noon by the sun. Noted at once that the Clock stood four minutes behind. Did not correct. H.T.{/}",
          things = {
            { name = "a note in the margin", description = "Same hand, smaller, a different ink. {whisper}It did not lose them. It started with them. It is keeping time from when something else began, and I will not be the one to tell it that it is wrong.{/}" },
          } },
        { name = "the second page", description = "{i}Day 2. Went up to wind. Found it wound.{/} And the same on day 3, and day 4, in the same hand, getting shorter, until it is only {i}Wound{/}, and then a tick, and then three hundred years of ticks." },
        { name = "a page with a black border",
          description = "A hundred and ten years ago. One line. {i}The Clock skipped.{/}",
          things = {
            { name = "what is written under it", description = "{i}At 3.19 of the afternoon the hand stood for the space of two jumps. All wheels still. Warm air from the shaft ceased. Then went on as before. The city has been told that it was a pigeon. Four minutes signed out to the Clockmaker's keeping against its happening again: one remains.{/}" },
          } },
        { name = "today's line", description = "Mr Pinion has been up, or sent a boy. There is a tick. The ink is wet. There are no footprints in the dust but yours." },
      },
      actions = {
        { "Read the ledger", set "tk_knows_minutes",
          say "You read the first page and the black one, and a good many ticks between. So: nobody winds it, it began four minutes behind something, and once, at 3.19, it stopped for two beats and frightened the Guild so badly that they put four minutes by, like candles for a power cut. Three are gone. {gold}One remains, in the Clockmaker's keeping.{/} You shut the book quietly. It is the kind of book you shut quietly." },
      } },
    { name = "the winding barrel",
      description = "An iron drum as long as a cart, with a square arbor on the end for a key, and a rope that goes up to a pulley and comes down to nothing. There is no weight on the rope. It hangs slack, and the clock goes.",
      things = {
        { name = "the square arbor", description = "Bright on the corners, where the key bit, on the first day. You try the big iron key on it, later, if you have it. It is the wrong size. It was always the wrong size. The Guild has spent three hundred years not saying so." },
        { name = "the slack rope", description = "Hemp, grey, swaying a little in the warm air from the shaft. A wren has pulled some of it out for a nest." },
      } },
    { name = "a hook on the wall",
      key = "tk_key_hook",
      description = "An iron hook by the stair head, and on it, hung by its clover leaf bow, a black key as long as your forearm. A brown tag turns on a string.",
      variants = {
        { when = item "tk_winding_key", name = "an empty hook",
          description = "An iron hook with a clean patch of wall behind it in the shape of a key. Nobody will miss it. The last person to look for it was looking for the hole." },
      },
      actions = {
        { "Take the key", once = true, give "tk_winding_key",
          say "You lift it down. It is heavier than it ought to be. The tag says {i}do not wind anything{/}. Under your feet the Clock goes one tooth, exactly as before, entirely unconcerned. You have {gold}the Winding Key of Tickover{/}, which wound the Great Clock once and has been out of work ever since." },
      } },
    { name = "the bell loft ladder",
      description = "Iron rungs up through a trap to where Old Punctual hangs.",
      things = {
        { name = "Old Punctual", description = "A bell of nine tons, green as a pond, with a hammer on a lever. You can see the lip of it through the trap. Cast round the lip: {i}I SPEAK WHEN I AM READY{/}." },
        { name = "the bell hammer", description = "It lifts by itself, a hair, as you watch, considering the hour. It lowers again. Not yet. Four minutes yet." },
      } },
    { name = "the apprentices' corner",
      description = "A bench, a stove gone cold, and three hundred years of boys kept waiting with nothing to wind.",
      things = {
        { name = "carvings on the bench", description = "Initials, dates, a row of gallows for a word game. One long entry, cut deep: {i}I asked Mr Verge who winds it and was put on pigeons for a year.{/}" },
        { name = "a pack of cards", description = "Greasy, fifty one. The missing card is the four of clubs. It is always the four of something." },
        { name = "a tin mug", description = "With a ring of tea dried in it and a date scratched on the handle from before the reigning Regulator was born." },
      } },
    { name = "the warm air",
      description = "It comes up the pendulum shaft and fills the works: faintly sweet, like a linen cupboard, and not at all like steam. It comes, and stops, and comes. The dust in the white light drifts up with it and settles back.",
      actions = {
        { "Breathe it in", say "It is the air of a place where something has slept a long while with the windows shut. It is not unpleasant. You find you have lowered your voice, though you were not speaking." },
      } },
    { name = "a kestrel's larder",
      description = "On a girder under the south face: a row of pigeon rings, laid out by number.",
      things = {
        { name = "the rings", description = "Thirty or so, brass, each stamped. The inspector down in the square has a cross in his book for every one. It is, in its way, the only other ledger in the tower that is kept up." },
      } },
    { name = "the oil cupboard",
      description = "A tall press of japanned tin, on the landing, with a hundred little cans on its shelves. Each has a spout as fine as a needle and a label.",
      things = {
        { name = "the labels", description = "{i}Going train, top pivot. Going train, second. Strike, hammer arbor.{/} Every bearing in the Clock has its own can and its own oil. They are not to be mixed. The Winders speak of a man who once used the wrong can as other people speak of a murderer." },
        { name = "a can with a black ribbon", description = "On the top shelf, by itself. {i}For the wheel that does not need it.{/} It is full. It has never been used. It is refilled each year, in case the wheel should change its mind." },
        { name = "a rag", description = "Folded square. It has wiped the same brass for two hundred years and is by now more brass than rag. It would ring if you dropped it." },
      },
      actions = {
        { "Sniff the oil", say "Neat's-foot, and something sharp, and a little clove. It is the smell of the whole of Tickover, at its source. You realise that you have been smelling it faintly since the Gate, on everyone's hands, and had taken it for honesty." },
      } },
    { name = "a slate of faults",
      description = "Hung by the door of the works, with a slate pencil on a string. Any fault observed in the Clock is to be chalked here, by whoever sees it, with the hour.",
      things = {
        { name = "the entries", description = "There are two. The first: {i}Late. 4 min.{/} It is so old that the slate has been framed round it. The second, lower down, in a child's hand: {i}It looked at me.{/} Nobody has rubbed that out either." },
        { name = "the slate pencil", description = "Unworn. In Tickover, having nothing to write on the slate of faults is a matter of civic pride, and having the slate anyway is a matter of civic honesty." },
      } },
  },

  exits = {
    { to = "tk_regulator_square", description = "Down four hundred steps to the iron door, where Mr Pinion is not asking." },
  },
}
