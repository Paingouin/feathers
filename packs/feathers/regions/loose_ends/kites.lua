-- Jem Spar's kite loft, and the place the long line goes.

space {
  id = "le_kite_loft",
  region = "loose_ends",
  name = "Spar, Kites",
  description = "A sail loft over a boathouse that has never held a boat. The whole end wall is open to the sky, and kites go out of it on lines, hundreds of them, standing in the wind at every height like a shoal. Between them and you is a bench, a glue pot, and an old man in a great hurry.",
  palette = { bg = "#0c1016", text = "#d8dce4", dim = "#6c7688", accent = "#e86a50", border = "#3e4a66" },
  ambience = { dust { glyphs = "◊˙·", color = "#b06a5a", rate = 0.2, speed = 0.6 }, fog { color = "#162030", speed = 0.3, strength = 0.2 } },

  things = {
    { name = "Jem Spar",
      key = "le_spar",
      icon = "☺",
      description = "The kite maker: eighty, quick, with a knife in his teeth and cane shavings in his beard. Everything that moves between the islands and is not on a rope goes by one of his kites. The bread. The post. On one occasion, the vicar.",
      things = {
        { name = "his knife", description = "Worn to a sliver. He splits cane with it by feel, into four, into eight, while looking at the sky." },
        { name = "his beard", description = "White, with a small box kite caught in it that he has not noticed, or has and is saving." },
        { name = "his thumbs", description = "Grooved across the pad by sixty years of twine. He can tell the wind's speed by which groove it sings in." },
      },
      actions = {
        { "Ask about the kites", say "\"Bread kite, post kite, doctor's kite, that's got the red tail so they clear the lines.\" He does not stop cutting. \"Child's kite. Child's other kite, they always lose the first. And up top there, the black one, that's the parish's. Tells us if the island's drifting. We'd want to know.\"" },
        { "Ask about the borrowed stone", say "He goes still. \"Who's been reading planks?\" He looks at the bench. It stands on four legs, and under one leg, to level it, is a flat grey stone the size of a hearthstone, floating an inch off the boards. \"I said I'd return it,\" he says. \"I didn't say this century.\"" },
        { "Ask about the first kite", when = no(item "le_line_peg"),
          say "\"Hers? The one that flew the wind?\" He laughs, with the knife still in. \"Got away from her. Got away from everybody. It's wherever things go.\" He jerks his head at a single grey line running out of the loft and down. \"That goes there. But you'd want a peg, and you'd want to be the sort of fool I was at your age.\"" },
        { "Show him the peg", when = all { item "le_line_peg", no(flag "le_line_open") }, set "le_line_open",
          say "He takes your wrist and looks at the peg, and at the name on it. \"She lent you that? She's not lent one since the curate.\" He walks you to the edge of the floor, where the grey line is made fast to a ring, and tests it with his thumb. It hums. \"Clip on. Feet up. It's downhill all the way, and it ends in something soft.\" He considers. \"It ended in something soft sixty years ago.\"" },
      } },
    { name = "the open wall",
      description = "Thirty feet of sky where the gable should be. The floor simply stops. There is a brass rail at knee height, which he steps over forty times a day.",
      things = {
        { name = "the kites, out",
          wonder = true,
          key = "le_kite_shoal",
          description = "They stand off the loft in the wind, tier above tier: diamonds, boxes, a long red dragon in forty hoops, bread kites squat as loaves, the black parish kite so high it is a full stop. {magic}Every line comes back to one ring in this floor, and the ring sings. Each kite has its own note, and the whole sky is being played, one man's work, in a chord that changes when the wind does.{/} He cannot hear it any more. He says it is like a miller and the wheel. But he knew, the day the vicar's line parted, before anyone shouted.",
          actions = {
            { "Put your hand on the ring", say "The iron buzzes in your palm like a hive. You can feel them, each one, pulling: the heavy tug of the bread kite, the dragon's slow roll, and far above everything a single thin steady draw, patient, from the black kite that watches where the village is." },
          } },
        { name = "the brass rail", description = "Worn bright in one place, where he rests a boot while he thinks." },
        { name = "the ring", description = "Iron, a yard across, let into the floor and leaded. Two hundred lines are made fast to it with the same knot. He ties it in the dark." },
      } },
    { name = "the long line",
      key = "le_long_line",
      description = "One grey cord, older than the rest, running out through the open wall and away south, and down, until the eye loses it in cloud. No kite is on it. It does not sing. It only goes somewhere.",
      variants = {
        { when = flag "le_line_open",
          description = "One grey cord, older than the rest, running out and down into the cloud to the south. He has cleared the washing off the first twenty yards for you. It is taut, and it hums very low, and it is just above head height, the height of a person with a peg." },
      },
      things = {
        { name = "the knot at the ring", description = "Not his. A different knot, with more turns than it needs, tied by somebody who was angry. He has never had to retie it." },
        { name = "a tag", description = "Bone, on a wire. {i}Do not cut. Do not haul. Things are on it.{/}" },
      } },
    { name = "the bench",
      description = "Twelve feet of scrubbed deal, covered in cane, silk, paste and paper. One leg stands on a flat stone that is not standing on anything.",
      things = {
        { name = "the borrowed stone", description = "The thirteenth, from the path. It floats an inch above the floorboards with a bench leg on it and has not sunk a hair in sixty years. It is the only level surface in the building, and he is not giving it back." },
        { name = "a kite half made", description = "A small diamond in yellow paper. For the Coombes' new one. He makes each child its first, and writes the name inside the spine where it cannot be seen." },
        { name = "the glue pot", description = "Fish glue, on a spirit lamp, at a simmer. It has not been allowed to go cold since his master's day. The smell is in the wood and the rafters." },
        { name = "a drawing", description = "Pinned under a pot. A kite the size of the green, with a basket. Beside it, a column of sums that gets angrier toward the bottom, and across the lot, in a woman's hand: {i}No, Jem.{/}" },
      } },
    { name = "the cane rack",
      description = "Bamboo and split ash, sorted by length, standing in tubs of water to keep it supple.",
      things = {
        { name = "the bamboo", description = "It comes up from Below by airship once a year, from somewhere hot. He sniffs each cane and can tell you whether it grew in the sun." },
        { name = "a cane with a notch", description = "Set apart. He measures the grandchildren against it. The lowest notch is very low and has a date beside it of last week." },
      } },
    { name = "bolts of silk",
      description = "On a shelf, in a dozen colours, each wrapped in paper. The red is nearly gone. Red is for doctor's kites and dragons, and there has been a hard winter and a wedding." },
    { name = "the reels",
      description = "A wall of them, each on a peg with a brass number. The line runs from the reel through a block in the rafters and out to its kite.",
      things = {
        { name = "reel number one", description = "The bread kite. It has a ratchet and a little bell. When the baker on Mill Rock ties on the loaves, he tugs twice, and the bell says so." },
        { name = "reel number forty", description = "The post. There is a bag clipped on halfway out, coming in hand over hand by itself; the wind does it, with a paddle wheel no bigger than a plate." },
        { name = "an empty peg", description = "No number. The brass has been unscrewed and the holes filled. You ask. He says, \"The vicar's,\" and goes on cutting." },
      },
      actions = {
        { "Wind one in a turn", say "You give number seven one turn. Far out, a green box kite dips. A shutter opens on a rock half a mile off, and a fist is shaken, small and clear. Jem Spar takes the handle from you without comment and gives it one turn back." },
      } },
    { name = "the dragon",
      description = "The red one, forty hoops of silk on a spine of cane, brought in for mending. It lies the length of the loft, breathing with the draught. It goes up on feast days and takes six men.",
      things = {
        { name = "its head", description = "Paper on wicker, with eyes of mirror glass and a beard of unravelled rope. It is, you are told, a likeness of nobody, and nobody's mother in law has been satisfied by this." },
        { name = "a torn hoop", description = "The twenty-third. A sky mouse went through it at speed. The mouse has been forgiven. The hoop is being done in double silk." },
      },
      actions = {
        { "Look it in the eye", say "You see yourself in the mirror glass, twice, small and upside down. The dragon stirs in the draught and one hoop lifts. You step back. It is a kite. It was, you are almost certain, only a kite." },
      } },
    { name = "the rafters",
      description = "Hung with finished kites, by the hundred, each tied by the nose. They turn all together when the wind shifts, as cows do in a field.",
      things = {
        { name = "a kite shaped like a pair of trousers", description = "It flies, he says, better than anything in the shop, and he cannot find out why, and it is a great grief to him." },
        { name = "a very old kite", description = "Brown paper gone to lace, on a frame of willow. His master's master's. It is past flying. Once a year he carries it to the edge and holds it up, so that it can feel a wind." },
      } },
    { name = "the apprentice",
      icon = "☺",
      description = "A girl of twelve, sweeping shavings toward the open wall and over. She has a line on her ankle and a kite on her back, folded, with a rip cord. He makes all his apprentices wear one. He was an apprentice.",
      actions = {
        { "Ask if she likes the work", say "\"I like it when the wind backs,\" she says, \"and they all come round together, and he doesn't see I've stopped sweeping.\" She looks out at them. \"He does see. He just lets me.\"" },
      } },
    { name = "a weather glass",
      description = "A bulb of water with a spout, hung by the door. The level is halfway up the spout. Beside it he has pinned a note from the Weather Office and a note of his own. The Office's says {i}Fair{/}. His says {i}Ha.{/}" },
    { name = "a shelf of failures",
      description = "Kept, as a lesson. A kite of lead foil, for a bet. A kite with a bell on that frightened the sheep. A square one.",
      things = {
        { name = "the square one", description = "It will not fly. He has tried it in every wind for fifty years. There is nothing wrong with it. It simply does not care to." },
      } },
  },

  exits = {
    { to = "le_tether", label = "Down the outside stair", description = "Back to the green, ducking under a hundred taut lines." },
    { to = "le_lost_property", label = "The long line", description = "Clip on. Feet up. Downhill all the way, he says, and it ended in something soft sixty years ago.",
      requires = all { flag "le_line_open", item "le_line_peg" }, hidden = true },
  },
}

space {
  id = "le_lost_property",
  region = "loose_ends",
  secret = true,
  wonder = true,
  name = "Where Things Go",
  description = "The long line ends at a low island, lower than all the others, lying in a bay of standing cloud where every wind in the sky gives up. It is soft underfoot. It is soft because it is three fathoms deep in hats.",
  palette = { bg = "#0e0e14", text = "#dcd8e0", dim = "#74707e", accent = "#d0a0e0", border = "#443e5c" },
  ambience = { dust { glyphs = "˙·∙◊", color = "#9a90b0", rate = 0.5, speed = 0.2 }, fog { color = "#1c1a28", speed = 0.1, strength = 0.5 } },

  things = {
    { name = "the hats",
      description = "Everything that was ever blown off a head. Straw, felt, a bishop's, a great many of the flat kind worn in Greenhollow. They have drifted against the windward shore in a bank you could lose a cow in, and the newest are still settling.",
      things = {
        { name = "a helmet", description = "A guardsman's, Aldmoor pattern. You would have said a helmet could not blow off. There is a chin strap, bitten through." },
        { name = "a crown, paper", description = "Gold foil, from a cracker. It has been here longest of all the hats near it and is not a bit faded. Things keep, here." },
        { name = "a wizard's hat", description = "Blue, pointed, with stars. Inside the band, a laundry mark from the Collegium and the words {i}NOT a toy{/}." },
        { name = "your own hat", description = "You look for a while. It is on top, a little to the left, quite dry. It left you in the Mumblewood in a gust, or on the pass, or the day you held up the wrong kite. You are not sure which, and it seems to have arrived either way.",
          actions = {
            { "Put it on", say "It fits as it always did, badly, in the same places. You had not known you missed it. You tie it under your chin with the string Mr Lightly gave you, as people do here." },
          } },
      },
      actions = {
        { "Wade in", say "You go in to the waist. It is like wading in leaves. A bowler turns over under your foot and something small and indignant leaves it, gliding, on its ears." },
      } },
    { name = "the kites",
      description = "Hung in a dead thorn tree, by the dozen, by their own broken lines. Every kite a child ever let go of. They move a little in the no wind, like fish asleep.",
      things = {
        { name = "a kite with a name in the spine", description = "You tilt one to the light. Inside the cane, in a neat hand: a child's name, and a year. All the yellow ones have it. Jem Spar's first kites come here in the end, nearly every one." },
        { name = "the vicar's kite", description = "Large, black, clerical, with a harness. The harness is empty and unbuckled. The buckles were undone from the inside, calmly. You look round. There is a path beaten through the hats, leading off, and a faint smell of pipe tobacco." },
        { name = "the top of the thorn", description = "Above all the others, on the highest twig, by forty yards of chewed twine: a grey diamond with a tail of seven rags. It is the only kite in the tree that is not hanging. It is flying, in still air, by itself.",
          key = "le_first_kite",
          visible_if = no(flag "le_kite_taken") },
      },
      actions = {
        { "Climb for the grey one", when = no(flag "le_kite_taken"), set "le_kite_taken", give "le_wind_kite", fx "sparkle",
          say "The thorn is dead and brittle and you go up it by apology. As you get near, the air begins to move: toward the kite, from every side, lifting the other kites on their lines. You take hold of the twine. A wind arrives at your shoulder like a horse that has been waiting to be led. You wind it in, a hand at a time, and the whole bay sighs and lies down again." },
      } },
    { name = "the washing",
      description = "A drift of it along the lee shore. Sheets, shirts, a great many single socks, each one the half of a quarrel.",
      things = {
        { name = "a pillowcase", description = "A good one, linen, with a {i}P{/} in the corner. You fold it and put it by. You are going back that way." },
        { name = "the socks", description = "Thousands. No two alike. You have always wondered. Now that you know, it does not seem to help." },
        { name = "a wedding veil", description = "Caught on a stone, spread out, perfect. It left a church door in Saltwick in a squall forty years ago, and the bride laughed, and it is the thing everyone remembers of the day." },
      } },
    { name = "the long line's end",
      description = "It comes down out of the cloud and is made fast to a boulder with the same angry knot as at the top. Somebody rode it down here once, tied it off, and went back up by some harder way to tie the other end.",
      things = {
        { name = "initials on the boulder", description = "Cut deep. Hers, the first kite maker's. Under them: {i}IT IS HERE SOMEWHERE AND I AM NOT LOOKING FOR IT.{/}" },
        { name = "a basket on a pulley", description = "For going back. You sit in it and pull. It is a long pull and there is a sandwich box nailed to the side, empty, for morale." },
      } },
    { name = "letters",
      description = "The ones that were snatched out of a hand at a street corner. They lie in the lee of a rock like leaves, thousands, in every hand.",
      things = {
        { name = "a love letter", description = "Never delivered. It is a good one. You read the first line and the last and put it back face down. The two of them married other people, you expect, and wondered now and then." },
        { name = "a page of a regulation", description = "{i}212 (b): nor shall any person dance.{/} So that is where the second half went. Aldmoor has been enforcing the first half from memory." },
        { name = "a letter addressed to Mother", description = "{i}It is not so bad. There is a view. I think of the{/} and no more; the rest of the sheet is clean. He wrote one once that he meant to send, then. The wind had other ideas, and he started again, and stopped at the same place." },
        { name = "a bill, unpaid", description = "From a tailor in Aldmoor to a Sir Aubrey. It has been seeking him across the sky for three years. It has got further than he has." },
      },
      actions = {
        { "Read one at random", say "{i}Dear Tom, the answer is yes, and has been yes since Michaelmas, you great fool, come Saturday.{/} It is dated before you were born. You hope Tom came anyway. You stand holding it for longer than you can account for." },
      } },
    { name = "balloons",
      description = "Up under the cloud ceiling, bobbing: every balloon let go at a fair. They are still round. The strings hang down in a curtain you have to walk through.",
      actions = {
        { "Pull one down", say "A red one. You hold the string. After a minute you remember being four, and a fair, and exactly how it felt when the string was not in your hand any more. You tie this one to a stone. It may be somebody's." },
      } },
    { name = "the still air",
      wonder = true,
      key = "le_still_bay",
      description = "No wind comes here. They all end at the edge of the bay, and put down what they were carrying, and go back. {magic}You are standing where the wind keeps what it takes, and none of it is spoiled. Every hat is dry. Every letter can be read. A soap bubble hangs at the height of your eyes with a street in it, upside down, blown by a child who is a grandmother now.{/} You had taken the wind for a thief. It turns out to be a collector. It loses nothing, and it has kept all of it for somebody.",
      actions = {
        { "Breathe out", say "Your breath goes a yard and stops, and hangs, a small cloud of your own making. It will be here when you are old. You find you are trying to breathe out something worth keeping." },
      } },
    { name = "the soap bubble",
      description = "As big as an apple, unburst. In the skin of it is a row of houses, a pump, a woman at a door, all curved and upside down and brightly coloured. It turns once in the time it takes you to walk round it." },
    { name = "a path through the hats",
      description = "Trodden, recent, leading to a lean-to built of umbrellas. Somebody lives here.",
      things = {
        { name = "the lean-to", description = "Forty umbrellas, overlapped like slates. Inside: a bed of scarves, a stack of other people's letters arranged by street, and a kettle." },
        { name = "the vicar",
          icon = "☺",
          description = "A long, placid clergyman in a cassock patched with flags, sorting letters into a wicker hamper. He came down on a kite fifteen years ago, when his line parted. Tether mourned him. He has not been in a hurry to correct them.",
          actions = {
            { "Ask why he stays", say "\"I had a parish of two hundred souls and the sound of my own voice,\" he says. \"Here I have everybody's last words to somebody, and nobody to read them to.\" He ties a bundle. \"I send them on. A few a week, by the basket, to the post kite. Forty years late is still in time, for some letters. You would be surprised which.\"" },
            { "Ask about the grey kite", say "\"I don't touch it. It was here before me. It flies when nothing else does, and on some nights the whole bay leans toward it.\" He smiles. \"If you want it, take it, with my blessing, and I shall get a night's sleep.\"" },
            { "Promise not to tell", say "\"Oh, tell Jem,\" he says. \"He has guessed. A pouch of tobacco comes down that line every Christmas, pegged, with no note. Don't tell Mrs Pegg. I owe her for a surplice.\"" },
          } },
        { name = "a sorting frame", description = "Pigeon holes made of hat boxes, labelled with the streets of towns he has never visited. {i}Elbow Lane. Fish Steps. Chisel St (below ground? query).{/}" },
      } },
    { name = "umbrellas",
      description = "A grove of them, stuck in the ground by their ferrules, open, where they landed. Turned inside out, every one, and holding rain that fell in other counties." },
    { name = "the edge of the bay",
      description = "Where the standing cloud begins. You can see winds arrive: a streak in the white, a flurry, something small let go of, and then the streak turning round.",
      things = {
        { name = "an arrival", description = "As you watch, a child's mitten comes in, red, turning over and over, and settles on the hats near your foot. It is still warm. You look up the way it came. Somewhere, not long ago, somebody small is being told it does not matter." },
      },
      actions = {
        { "Pick up the mitten", say "You put it on a stone where it will be seen, beside the red balloon. You have begun, you notice, a small department. The vicar looks over and nods as one professional to another." },
      } },
    { name = "a weathercock",
      description = "Brass, lying on its side in the hats, its spindle snapped. It blew off the Weather Office in the gale of the first kite, and the Office tied the next one down. This one still points, lying there, straight at the dead thorn." },
  },

  exits = {
    { to = "le_kite_loft", label = "The basket back up the line", description = "Sit, pull, and do not count. There is an empty sandwich box, for morale." },
  },
}
