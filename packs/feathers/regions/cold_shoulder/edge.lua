-- The shore and the far end: the frozen waterfall, the lighthouse of ice, the hill where the
-- lights are seen, the Survey's last hut, and what is past it.

space {
  id = "cs_frozen_falls",
  region = "cold_shoulder",
  name = "The Hanging Water",
  description = "South of Drift the sea ice runs up against land: a black cliff three hundred feet high, the first rock you have seen in days. A river comes over the top of it. It came over the top of it, rather, on some day in a long-ago autumn, and was caught. The whole fall stands there from lip to foot, a pillar of ice as wide as a street, with every rope and veil and thread of the water still in it, stopped. Out on a spur at the cliff's end something tall and pale is giving off light.",
  palette = { bg = "#050b12", text = "#d0e0ec", dim = "#587088", accent = "#8fe0f8", border = "#244860" },
  ambience = {
    shimmer { color = "#3f8fa0", strength = 0.4, speed = 0.3 },
    snow { glyphs = "·˙", color = "#8ab0d0", rate = 0.1, speed = 0.15 },
  },
  backdrop = {
    "▓▓▓▓▓▓▓▓▓▓▓▓║║║║║▓▓▓▓▓▓▓▓▓▓▓▓▓▓",
    "▓▓▓▓▓▓▓▓▓▓▓▓║║║║║▓▓▓▓▓▓▓▓▓▓▓▓▓▓",
    "▓▓▓▓▓▓▓▓▓▓▓▓║║║║║▓▓▓▓▓▓▓▓▓▓▓▓▓▓",
    "▔▔▔▔▔▔▔▔▔▔▔▔▀▀▀▀▀▔▔▔▔▔▔▔▔▔▔▔▔▔▔",
  },

  things = {
    { name = "the fall",
      wonder = true,
      icon = "║",
      description = "You stand at the foot and look up. It is not a lump of ice. It is a {magic}waterfall{/}, complete, with nothing left out except the moving. Here is the smooth green shoulder where it came over the lip. Here it broke on a ledge and threw out a fan, and the fan is still there, every drop of it, hanging in the air on stalks as fine as hair. Here two streams crossed and plaited. Down at the foot is the great white boil where it struck the pool, a heap of frozen spray as high as a house, and the spray has the shape of the splash. You can see what the water was {i}about to do{/}. One long thread, halfway up, has left the main fall and is leaning out to the left, into space, towards a ledge it had not yet reached. It has been about to land for longer than the town has been on the ice. You catch yourself holding your breath for it.",
      things = {
        { name = "the green shoulder", description = "At the very top, where it bends over the lip, the ice is clear and deep green, like bottle glass, and you can see the cliff's edge through it, and a stone, in the act of being rolled." },
        { name = "the fan", description = "Ten thousand drops on ten thousand threads. When a breath of air moves at the cliff foot they touch one another and chime, the whole fan at once, very high and small, like someone running a finger round the rims of all the glasses there are." },
        { name = "the leaning thread", description = "As thick as your wrist, and a hundred feet long, unsupported, reaching out sideways from the fall. By every rule it ought to have snapped in the first wind. The people of Drift come here when they have a thing to decide. They look at the thread. They say it helps to see something that has not come down yet, and may still land well." },
        { name = "the frozen boil", description = "At the foot, a hill of white foam turned to stone, full of hollows. Children climb in it. Inside, it is like being in the middle of a great noise that has been switched off." },
      },
      actions = {
        { "Listen at the ice", say "You put your ear to the pillar. For a while you hear your own blood. Then, from deep inside, small and far and quite unmistakable: {i}water{/}. A trickle. A thread of the river is still alive in the heart of it, running down inside the ice in the dark, from the top to the bottom, as it has every winter, keeping the way open. The fall is not dead. It is {i}holding the note{/}.", fx "wash" },
        { "Touch the leaning thread", say "You can just reach the tip, standing on the frozen boil. You put one finger against it. It does not give. You take your finger away with great care, all the same, and look round to see if anyone saw you risk it." },
      } },
    { name = "the cliff",
      description = "Black basalt, in columns, like the pipes of an organ. After so many days of white and blue it looks like the most solid thing ever made. You put your bare hand on it for the pleasure of touching something that will not melt.",
      things = {
        { name = "the columns", description = "Six-sided, each as thick as a tree, fitted without a gap. The Drift children say giants stacked them. The surveyor says they cooled that way. The children's account has the advantage that somebody meant it." },
        { name = "lichen", description = "Orange, in rings the size of plates, on the south-facing rock. It grows the width of a thread in a year. The largest ring was the size of a coin when the kingdom was founded. It is the oldest living thing you have touched, and it is a stain." },
        { name = "a ledge with a nest", description = "Sticks, bones and a red mitten, built up over generations into a heap as high as a man. A pair of ravens have it. They are the only birds that stay the winter. They watch you, and say something to one another in a low voice, and you feel that it was accurate." },
      } },
    { name = "the plunge pool",
      description = "A round floor of black ice at the foot of the fall, swept clear by the wind, as smooth as a mirror and as dark.",
      things = {
        { name = "what is under the ice", description = "You kneel and shade your eyes. Down in the black there are fish: big, slow, hanging head upstream in the place where the current used to be, moving just enough. They are waiting where the water told them to wait. They have great faith." },
        { name = "skate marks", description = "Loops and eights, cut white into the black. Somebody comes here to skate alone, and is very good, and has signed the ice in the middle with a flourish that is not a name." },
      },
      actions = {
        { "Slide across it", say "You take a run. You go a great deal further than you meant to, quite gracefully, for about half of it. Then you finish the distance sitting down, turning slowly, with the frozen waterfall going round you like a lighthouse beam. The ravens make a noise. You would not call it laughing. They would." },
      } },
    { name = "the watchers' bench",
      description = "A plank on two stones, facing south, with a brazier beside it. From January a boy is posted here at noon, every day, to watch for the sun.",
      things = {
        { name = "the notch", description = "In the hills to the south there is one gap, like a gunsight. On the day the sun returns it shows there first, for a few minutes, a red rim. The bench is lined up on it with two pegs." },
        { name = "the sun horn", description = "A cow's horn on a thong. He blows it when he sees the rim. Then he runs. Then the whole of Drift comes out on to Long Street, facing south, and they broach the Long Night, and nobody says anything for the length of time the sun is up, which that first day is about as long as a hymn." },
      },
      actions = {
        { "Sit and look south", say "The notch is grey. Then, as you watch, the grey at the bottom of it goes rose, and then the colour of the inside of a shell, and stays so, and then fades. That was noon. No sun. But it was nearer than yesterday. You find that you are leaning towards it, as a plant does." },
      } },
    { name = "the ice climbers",
      description = "Two young men from Drift, on the fall itself, a hundred feet up, with axes and spiked boots and one rope. They are doing it because it is there and their mothers are not.",
      actions = {
        { "Call up to them", say "\"Is it safe?\" you shout. There is a pause. \"No!\" comes down, with great cheerfulness. And then, after another pause, from the other one: \"Don't tell our mam!\"" },
      } },
    { name = "the old shoreline",
      description = "Where the sea ice meets the rock there is a beach, of sorts: grey shingle glued together with frost, and a line of driftwood thrown up along it, white as bone.",
      things = {
        { name = "the driftwood", description = "Whole trees, some of them, with the roots on. There is not a tree within four hundred miles. They come up the coast on the current, from the south, from the Mumblewood perhaps, taking a year or two over it, and arrive with the bark worn off and every knot showing. It is Drift's only timber. A man who finds a straight one marks it with his sign and it is his." },
        { name = "a glass float", description = "Green, the size of a head, netted in rope, off some southern fishing boat. It has rolled up the shingle and frozen in. A candle inside it would make a lamp. You see by the scorch on the glass that somebody has had the same thought." },
        { name = "a bottle", description = "Corked, frosted, with a paper in it. You hold it to the light. The paper says, in a round hand: {i}To whoever finds this: I am seven and I live in Saltwick. Please write back.{/} The ink has faded brown. She will be a grandmother. You put it back where it lay, for somebody who has a pen." },
      } },
    { name = "the path along the cliff foot",
      description = "A ledge of ice, trodden, with a rope rail, going east round the base of the cliff towards the spur. It is sanded with ash." },
    { name = "the cold",
      description = "In the shadow of the cliff it is a different kind from the cold out on the ice. That was wide and clean. This is close, and still, and old, and comes off the rock like a breath out of a cellar. Your eyelashes freeze together when you blink, and you have to think about opening them." },
    { name = "the echo",
      description = "The cliff gives everything back, once, exactly.",
      actions = {
        { "Shout", say "\"HELLO!\" The cliff says {i}hello{/}. And a moment after, very faint, from inside the fall, ten thousand hanging drops shiver and say something that is not hello but is certainly a reply. You do not shout again. One does not, in a place that is holding so still." },
      } },
    { name = "a cairn with a tin",
      description = "At the cliff foot, a pile of stones and in it a biscuit tin with a book and a pencil. Visitors sign.",
      things = {
        { name = "the book", description = "Mostly Drift names, year after year, the same ones, with the date of their first sight of the sun. A few strangers. {i}Capt. A. Thole, came by sea, went back by sea.{/} {i}H. Pargeter. Observed: fall does not ebb. Noted.{/} {i}Wilf woz ere and it was COLD.{/}" },
      },
      actions = {
        { "Sign it", say "The pencil is frozen to the tin. You breathe on it until it comes away and write your name, and the date, and after some thought, {i}Saw it holding.{/}" },
      } },
  },

  exits = {
    { to = "cs_town", label = "Back to Drift", description = "North over the sea ice to the smokes." },
    { to = "cs_ice_light", label = "Along the cliff foot to the spur", description = "East by the ash path, towards the tall pale thing that shines." },
  },
}

space {
  id = "cs_ice_light",
  region = "cold_shoulder",
  name = "The Cold Light",
  description = "On the last spur of rock, where the cliff runs out into the frozen sea, stands a lighthouse built of ice. It is sixty feet high, round, tapering, laid in courses of sawn blocks as clear as glass, and the lamp at the top shines down through the whole of it, so that the tower is lit from inside like a candle seen through a hand. There is no ship within three hundred miles that could want it, except one, and that one is not going anywhere. It is lit every night all the same.",
  palette = { bg = "#040a12", text = "#d4e4f0", dim = "#5a7088", accent = "#a0e8ff", border = "#285068" },
  ambience = {
    shimmer { color = "#4fb8d4", strength = 0.5, speed = 0.4 },
    stars { glyphs = "·˙✦", color = "#7f9ac0", rate = 0.3 },
  },
  backdrop = {
    "              ✦                ",
    "             ▄█▄               ",
    "             ███               ",
    "            ▐███▌              ",
    "▔▔▔▔▔▔▔▔▔▔▔▔▀▀▀▀▀▔▔▔▔▔▔▔▔▔▔▔▔▔▔",
  },

  things = {
    { name = "the tower",
      wonder = true,
      icon = "▲",
      description = "You walk round it. The blocks are cut from the plunge pool, each the size of a tea chest, each chosen for having no flaw, and set with water for mortar, which froze as it was poured. There is not a nail in the building. You can see through the wall to the stair inside, winding up, and a figure climbing it, bent by the ice into a long blue shape. And the light comes down. {magic}It comes down through the lamp room floor and through every course of the wall, bending a little at each joint, so that the whole tower glows from the top as a taper glows, brightest at the head and fading to the foot, green-white, steady, cold.{/} It has to be rebuilt every autumn. The summer takes a third of it. They have rebuilt it a hundred and four times, a little differently each year, and every one of those towers stood on this rock and was this one.",
      things = {
        { name = "the courses", description = "Forty rings of blocks. The lowest three are last year's, and the year before's, grey and bubbled, left in as a foundation. The keeper says there is a little of every tower in the bottom of this one, if you melted it." },
        { name = "the mortar lines", description = "Where block meets block there is a seam as thin as a hair, whiter than the rest. Light catches in them. From a distance the tower seems to be wearing a net of silver thread." },
        { name = "a handprint in the wall", description = "At shoulder height, on the seaward side, melted a finger deep into a block: a small hand, a child's. Every keeper's child puts a bare hand on the first block of the new tower and holds it there for a count of sixty. It is how the tower is told who it belongs to. This one is the present keeper's own, done forty years ago, on a block she has cut out and built in again each autumn since." },
      },
      actions = {
        { "Put your hand on it", say "You take off your mitten. The ice is so cold that it feels dry. Light is going through it under your palm, on its way down, and for a moment your hand is lit from behind and you can see the shadows of your own bones. You snatch it away. Then, feeling foolish, you put it back.", fx "sparkle" },
      } },
    { name = "the keeper",
      icon = "☺",
      description = "Marit Frost, sixty, small, quick, in a parka of white fox, with an ice saw over her shoulder. Her family have kept the Cold Light since it was a lantern on a pole. She builds it, lights it, and on the first warm day of June stands and watches it start to go.",
      things = {
        { name = "her saw", description = "The teeth are set wide, for ice. The handle is worn into the shape of her mother's hands, which were bigger than hers, and she has never had it altered." },
        { name = "her ice core", description = "A rod of ice as long as a spear and as thick as a wrist, which she drew from the oldest floe with a hollow drill and keeps in a rack outside the door. It is ringed like a tree, a dark line for every summer's dust, thousands of them. At the bottom end the rings stop: the last hand's length is perfectly clear, with not a speck in it, as though when that ice was laid down there had been nothing yet to make dust." },
      },
      actions = {
        { "Ask who the light is for", say "\"Whoever's out,\" she says. \"The {i}Perseverance{/} takes a bearing on it every night, to be sure she's where she was. A sealer, in a blow. The bears don't need it but I think they like it.\" She shrugs. \"And say nobody. It's still the end of the land. A place like that ought to have a light on. So you know it's the end on purpose.\"" },
        { "Ask when to look up", when = no(flag "cs_lights_known"), set "cs_lights_known",
          say "You have been told that there are lights in the northern sky, and you have looked every night, and seen stars. Marit laughs, a short white puff. \"You've been looking from the town. Sixty lamps and sixty chimneys. You'd not see your own hand.\" She points past the tower with her saw, to where the spur humps up into a bare round hill. \"The Look. There's a path behind the wood store. Go up when my lamp's been lit an hour, lie on your back, and wait till you've stopped waiting. They don't come for people who are in a hurry.\"" },
        { "Ask when to look up", when = flag "cs_lights_known",
          say "\"Behind the wood store,\" she says. \"On your back. No hurry.\"" },
        { "Ask what happens in summer", say "\"It weeps,\" she says. \"From the top. By midsummer the lamp room's on the ground and I keep the flame in the hut.\" She runs a hand down the wall. \"My mother said, don't be sorry for it. A stone light is built once and then it's only old. This one's new every year.\"" },
      } },
    { name = "the door",
      description = "An arch in the ice, with a slab of ice for a door, hung on leather. It opens inward on to the foot of the stair.",
      things = {
        { name = "the stair", description = "Cut in the thickness of the wall, each tread sanded, going up and round. Climbing it you are inside the light. Your shadow goes up the wall ahead of you, blue, and another comes down to meet it." },
        { name = "the date block", description = "Over the arch, a block with a number scratched in it: {i}104{/}. Last year's block, {i}103{/}, is the doorstep. You wipe your feet on a century." },
      },
      actions = {
        { "Climb the stair", say "Fifty-two steps. The walls creak, very quietly, the whole way, as the tower takes your weight and says so. At the top the light is so bright that you come out into the lamp room with your eyes shut, and open them a little at a time." },
      } },
    { name = "the lamp room",
      description = "The top of the tower: a ring of ice pillars, a roof of seal hide, and in the middle, on a slate, the lamp.",
      things = {
        { name = "the lamp", description = "A stone bowl of seal oil with a wick of moss, no bigger than a soup plate. That is all. The flame is as long as your finger. The tower does the rest: every block is a lens, and takes the little yellow flame, and cools it, and hands it on larger." },
        { name = "the slate", description = "So that the lamp does not melt its own lighthouse. There is a ring of water round it all the same, a finger wide, which freezes each dawn and thaws each dusk. Marit calls it the moat." },
        { name = "the great lens", description = "On the north side, one block has been ground into a boss as big as a cartwheel, clear as air. Marit and her mother before her polished it with their bare palms. It throws a beam north across the ice, a white road, to the horizon and off the edge of it." },
        { name = "the view from the top", description = "South, the black cliff and the fall. West, the gold smudge of Drift, and far out the three small masts. North, the beam, going out over a plain with nothing on it, until the plain and the dark are the same thing. The beam does not stop there. You simply cannot see any more of it." },
      },
      actions = {
        { "Trim the wick", say "She lets you. You pinch the charred end with the bone tongs and the flame stands up, clear. Sixty feet of tower brightens under your feet, all at once, like a held breath let go. Out on the ice, a long way off, a very small light blinks twice. \"That's Mr Wren,\" says Marit. \"He's seen you. He'll log it.\"" },
      } },
    { name = "the keeper's hut",
      description = "Stone and turf, low, at the foot of the tower, on the side away from the wind. One room, a stove, a bed, and a shelf of last flames.",
      things = {
        { name = "the shelf of flames", description = "A row of little horn lanterns, each with a candle end in it, unlit, each labelled with a year. At the end of every winter she takes a light from the great lamp before the tower falls, and that flame lights next autumn's. The lanterns are the ones that carried it over. It is the same fire as on the pole a hundred and four years ago. It has simply never been allowed to finish." },
        { name = "the summer flame", description = "In the stove. That is where it lives from June to September. She does not let the stove out. If she is ill, Drift sends somebody to sit with it." },
        { name = "a letter on the table", description = "From Saltwick, in a big sprawling hand. {i}Madam, I am told you keep a light up there made of ice. I do not believe it. Mine is stone. Yours faithfully, Wim, the Light, Saltwick.{/} And a second, a month later: {i}Madam, the mail captain has sworn to it on a Bible. I take off my hat. W.{/} She has them both pinned up." },
      } },
    { name = "the block yard",
      description = "Beside the tower, a stack of sawn ice blocks under a hide, spares for mending. Each is numbered with a hot nail for its course.",
      things = {
        { name = "a flawed block", description = "Set aside. It has a leaf in it. A whole birch leaf, yellow, flat, in the middle of a block cut from a pool four hundred miles from the nearest birch. She cannot bring herself to build with it and cannot bring herself to let it melt. It has been in the yard nine winters, under its own little roof." },
      },
      actions = {
        { "Lift a block", say "It weighs as much as a calf and wants to slide. You get it to your knees. Marit takes it from you with a hook and a twist of her hip and sets it on the stack in one movement. She is a third your size. \"You'll get it,\" she says. \"About the fortieth tower.\"" },
      } },
    { name = "the wood store",
      description = "A lean-to of driftwood against the hut. Behind it the rock rises in a hump, and a line of footholds has been chipped in the frost.",
      things = {
        { name = "the footholds", key = "cs_look_path", visible_if = flag "cs_lights_known",
          description = "Chipped with an adze, sanded with ash, going up the bare hump of the hill behind. Her path. Her mother's before that." },
      } },
    { name = "the beam on the ice",
      description = "It lies north across the frozen sea, dead straight, as wide as a road, and where it passes the snow glitters. Now and then something crosses it: a fox, trotting, lit for three strides. Once, a long way out, something much larger, walking, which stopped in the light, turned its head towards the tower for a moment, and went on." },
    { name = "the fog bell",
      description = "A bronze bell under a little roof, with a rope. In a white blow, when even this light cannot be seen at a hundred yards, she rings it once a minute, all night, turn about with the town bell, so that between the two of them anyone out there has a line to walk along.",
      actions = {
        { "Ask to ring it", say "\"Not unless there's need,\" she says. \"Drift would ring back. Then the Station. Then that old man on the ship would fire a gun. We'd have the whole north out of bed.\" She pats the bell. \"It's nice to know they would, though.\"" },
      } },
    { name = "the end of the land",
      description = "Past the tower the rock goes down in three steps into the ice and is finished. There is a brass stud set in the last of it, with a crown. You stand on the stud. Everything that the kingdom calls ground is behind your heels." },
  },

  exits = {
    { to = "cs_frozen_falls", label = "Back along the cliff foot", description = "West by the ash path to the Hanging Water." },
    { to = "cs_lights_hill", label = "Up behind the wood store",
      description = "By the chipped footholds, up the bare round hill they call the Look.",
      requires = flag "cs_lights_known", hidden = true },
  },
}

space {
  id = "cs_lights_hill",
  region = "cold_shoulder",
  secret = true,
  wonder = true,
  name = "The Look",
  description = "A bald dome of rock, swept clean by the wind, with the whole sky over it. The tower's glow is below you and behind. You lie down on your back, as you were told, on a reindeer skin that somebody has left for the purpose, and look up. Stars. More stars. You wait. You get tired of waiting. You think about your feet. And then, when you have honestly forgotten what you came for, a pale green curtain is {shimmer}let down out of nothing, across the whole north, and begins, very slowly, to move{/}.",
  palette = { bg = "#030810", text = "#d0e8e0", dim = "#507068", accent = "#70f0b0", border = "#205848" },
  ambience = {
    shimmer { color = "#30c080", strength = 0.7, speed = 0.3 },
    stars { glyphs = "·˙✦", color = "#8fb0c8", rate = 0.5 },
  },
  backdrop = {
    "  ░░▒▒▓▓▒▒░░    ░░▒▒▓▒░        ",
    "    ░▒▓▓▓▒░   ░▒▓▓▓▒░░   ░▒▒░  ",
    "     ░▒▓▒░     ░▒▓▒░      ░▒░  ",
    "      ░▒░       ░░               ",
  },

  things = {
    { name = "the curtain",
      icon = "≈",
      description = "It hangs from as high as you can see to the edge of the world, in folds, like a cloth on a line, and it is {shimmer}green{/}: the green of a leaf with the sun behind it, which you have not seen for weeks. It sways. A fold travels along it from the east, slow as a thought, and where the fold passes the lower hem brightens to rose, and then to a red like the inside of your eyelids. It makes no sound. That is the hardest part to believe. A thing that size, moving, and you can hear your own heart.",
      things = {
        { name = "the hem", description = "The bottom edge is sharp, as if cut, and rimmed with crimson. It trails just above the ice, you would swear, just over there. Marit says men have walked towards it all night. It is always just over there." },
        { name = "the rays", description = "The curtain is made of upright threads, thousands of them, side by side, each one lengthening and shortening on its own, like the hammers in a piano seen from above while someone plays a slow piece." },
        { name = "the fold", description = "It comes along the curtain again. This time when it reaches the place above you the whole sky {shimmer}ripples{/}, once, from north to south, as a horse's skin does when a fly lands, and is still." },
      },
      actions = {
        { "Lie still and watch", say "You do not know how long. The green becomes two curtains, then three, one behind another. They cross. Where they cross there is a white so bright it has an edge. Then the whole thing gathers itself to a point straight overhead and opens, like a flower, like an eye, like a hand, a crown of rays pouring down on every side of you with you at the middle of it. You hear somebody say \"oh\", quite quietly. It is some time before you find out who.", fx "wash" },
        { "Whistle at it", say "The Drift children say that if you whistle it comes closer, and that you must not. You whistle, two notes. A fold in the curtain, you would take your oath, {shimmer}leans{/}. You stop whistling. It straightens. You lie there with your heart going like a mill and do not try it again." },
      } },
    { name = "the reindeer skin",
      description = "Spread on the rock, hair up, with a stone on each corner. It is always here. You are lying in a hollow in it the shape of a great many other people's shoulders.",
      things = {
        { name = "a horn of something", description = "Wedged in a crack beside the skin, stoppered with a rag. Spirits, strong, left by the last person for the next. You take a mouthful, as is plainly intended, and leave the rest, as is plainly intended too." },
      } },
    { name = "the sky behind the lights",
      description = "Through the curtain, where it thins, the stars go on shining, quite unconcerned, like an audience that has seen the play.",
      things = {
        { name = "the pole star", description = "Nearly overhead. Everything else in the sky is going round it, slowly, the whole night long, like water round a plug. Up here it is not a star to steer by. You are almost under it. It is like standing at the foot of the nail the sky is hung on." },
        { name = "a shooting star", description = "One, white, short, straight down through the green. The curtain does not so much as stir. Each to his own trade." },
      } },
    { name = "the ice below, lit",
      description = "You turn your head. The whole frozen sea is faintly green, to the horizon, and every ridge on it has a shadow that moves when the curtain moves. Your own hand, held up, is green on one side. It is like being at the bottom of very clear water, looking up at the light on the top." },
    { name = "the tower from above",
      description = "Down the hill behind your head, the Cold Light, glowing its steady pale glow. From here you see that the two lights are the same colour. Marit's mother said the tower was built to answer. Nobody alive knows whether she meant it as a joke." },
    { name = "what fell",
      key = "cs_fallen_piece",
      description = "A few paces off, on the bare rock, in a dish the frost has made, there is a small green light the length of your hand, lying on the ground. It folds. It goes rose at one edge and green again. It is {glow}doing what the sky is doing{/}, in little, a breath behind. An empty jam jar stands beside it, with holes in the lid, and a note under a stone.",
      variants = {
        { when = flag "cs_ribbon_taken", name = "a dish in the frost",
          description = "A shallow hollow in the rime, a hand long, where something lay that was not warm and not cold. The frost round it has grown in a pattern of fine green-white ferns, all pointing inward. The note is still under its stone." },
      },
      things = {
        { name = "the note", description = "In Marit's square hand. {i}It came down in the big night nine winters back, the one that lasted till morning. It does no harm. It does not get dimmer. I cannot keep it in the hut, it will not stay off the window. If you have been up here long enough to find this, you may take it south and show them. Use the jar. M.F.{/}" },
      },
      actions = {
        { "Pick up what fell", when = no(flag "cs_ribbon_taken"), set "cs_ribbon_taken", give "cs_fallen_ribbon",
          say "You kneel. You have no idea how one picks up a light. You slide the jar under the edge of it, as you would with a spider, and it flows in, of itself, folding, and settles at the bottom, and goes on with what it was doing. You screw on the lid. Overhead the great curtain sways on, minding its own business. You hold the jar up against it. The small one and the large one fold together, in time, for three long breaths. Then the one in the jar turns a little, and leans towards your coat, where it is warmer, and you understand that it has agreed to come.", fx "sparkle" },
      } },
    { name = "the cold on your face",
      description = "It is forty degrees of frost and you are lying on a rock. Your nose has stopped reporting. You know that you ought to get up. You know that in a minute you will. The lights go on, and the minute goes on being the next one." },
    { name = "the silence",
      description = "Some people say they hear it: a hiss, a crackle, like silk being drawn through a ring. You listen as hard as you have ever listened to anything. There is the wind on the rock. There is your own breath, freezing as it leaves you, with the faintest tinkle, which is the sound they call up here the whisper of the stars. If the lights are saying anything, they are saying it to each other." },
    { name = "a second hollow in the rock",
      description = "Beside the skin, worn smooth: a dip the shape of a person much smaller than you, lying down. Marit's, from when she was a child and her mother brought her up here to be shown what the family's light was in aid of.",
      actions = {
        { "Think about that", say "A hundred and four towers. A flame carried over every summer in a horn lantern. All of it, you see now, so that at the end of the land there should be one small light that people made, saying to all this: {i}yes, we saw. Here is ours.{/}" },
      } },
    { name = "the north",
      description = "Under the curtain's hem, where the sky meets the ice, there is nothing to see. No hill. No glint. The lights hang over it, and light it from end to end, and show you nothing, since nothing out there stands up to be shown." },
  },

  exits = {
    { to = "cs_ice_light", label = "Down the footholds", description = "Stiff, frozen, and not the same, back down to the tower and the hut." },
  },
}

space {
  id = "cs_last_hut",
  region = "cold_shoulder",
  name = "The Last Hut",
  description = "Two days by the flags from Drift, or so it feels, though it is four hours. A cabin of tarred planks, guyed down with wire against the wind, with a brass plate on the door: {b}ROYAL SURVEY. NORTHERN SERIES. STATION 91.{/} Beside it stand a signal mast, a rain gauge full of snow, and a theodolite on a tripod under a canvas hood, pointing north. A line of bamboo pegs with red rags leads away from the hut in that direction, each smaller than the last, out on to a plain so level and so white that your eyes keep trying to find something in it and coming back empty.",
  palette = { bg = "#080b10", text = "#dce0e4", dim = "#687078", accent = "#f0e0b0", border = "#3a4450" },
  ambience = {
    snow { glyphs = "·˙", color = "#a0a8b8", rate = 0.25, speed = 0.4 },
    fog { color = "#182028", speed = 0.2, strength = 0.4 },
  },

  things = {
    { name = "the surveyor",
      icon = "☺",
      description = "Mr Aubrey Level, of the Survey, forty, thin, wind-burned, with frost in his moustache and a pencil behind each ear. He has had the station three years and is to be relieved by the man off the mail boat. He does not seem as pleased about it as you would expect.",
      things = {
        { name = "his field book", description = "Columns of angles and distances, in a hand like print. For the first peg, a page of figures. For the second, a page. By the fortieth peg the entries are getting shorter. The last page says only: {i}As before.{/}" },
        { name = "his eyes", description = "Pale, and screwed up, and with a look in them that you have seen in sailors and in very old shepherds: of having looked at a long way off for a long time, and being a little surprised, each time, by anything near." },
      },
      actions = {
        { "Ask to see the map", say "He unrolls it on the table and holds the corners down with a mug, a lamp, a boot and his elbow. There is the border, the title, the scale, the little north arrow. There is a column of signatures. The rest of the sheet is clean white paper. \"Ninety-one,\" he says. \"Three years.\" You say that there is nothing on it. \"That,\" says Mr Level, \"is the survey. I have been over every yard of it. I can vouch for that sheet.\"" },
        { "Offer to carry the chain", when = no(flag "cs_chain_carried"), set "cs_chain_carried",
          say "\"I measure out to the last peg every day,\" he says. \"To see if it's where I left it. It's a two-man job and I'm one man.\" You say you could hold an end. He looks at you as a hermit might look at somebody offering to help him pray. Then he fetches the chain down off its hook: a hundred links of steel, with brass tags. \"You take the ring. Walk north on the pegs till it comes taut and shout. Then I come up to you and you go on.\" He stops. \"When we get to the last one,\" he says, \"you'll want to go a bit further. Everybody does. I shan't stop you. I'll just say that I'll be standing at the peg, and that I'd take it kindly if you came back to it.\"" },
        { "Offer to carry the chain", when = flag "cs_chain_carried",
          say "\"You know the way out,\" he says. \"And, what's the main thing, back.\"" },
        { "Ask what is past the last peg", say "He takes a pencil from behind his ear, looks at it, and puts it back. \"I'm a surveyor,\" he says. \"I'm paid to say what's there. Bearing, distance, height above the sea. I have set up the instrument at that peg four hundred times and taken a sight north.\" He is quiet. \"There is nothing wrong with the instrument,\" he says. \"I've had it checked.\"" },
      } },
    { name = "the theodolite",
      description = "Brass, on three legs, under a hood: a small telescope on a pair of graduated circles, for measuring angles to things. It is trained due north.",
      things = {
        { name = "the eyepiece", description = "Rimed. There is a little leather cap to keep the frost off, hanging by a thong. The brass round it is worn bright by three years of one eyebrow." },
        { name = "the circles", description = "Silver, divided to the minute of arc. To fix a point you need a thing to point at. The horizontal circle reads the same as it did yesterday. It reads the same as it did in the first surveyor's day. There is a small dent in the frost on the scale at that reading, where forty-four thumbs have checked it." },
      },
      actions = {
        { "Look through it", say "You put your eye to it. A white disc, crossed by two hairs. You turn the focus. A white disc, crossed by two hairs, sharper. You swing it left: white. Right: white. You are about to say that it is covered, when a fleck of snow drifts across the field, small and exact, a long way off, and you understand that it is not covered. That is the view. You are looking, in perfect focus, at a very great distance, and it has nothing in it to focus on." },
      } },
    { name = "the line of pegs",
      description = "Bamboo canes, each with a red rag and a number on a tin tag, set a chain apart, going north. You can see nine. The surveyor says there are sixty-two.",
      things = {
        { name = "the first peg", description = "{i}N 91/1{/}. Right outside the door. It has a tin cup hung on it, for the surveyor's tea, which he drinks standing here each morning, looking along the line as a farmer looks along a furrow." },
        { name = "the furthest you can see", description = "A red speck. Beyond it you believe you can see another, and another beyond that, but you find that you are seeing them because you know they are there." },
      } },
    { name = "the cabin",
      description = "One room. A bunk, a stove, a drawing table under the one window, and a wall of pigeonholes with rolled sheets.",
      things = {
        { name = "the drawing table", description = "Tilted, with a T-square and a set of pens laid out in order of fineness. Sheet ninety-one is pinned to it with brass pins. Every pen is clean. The ink in the well has a skin on it." },
        { name = "the pigeonholes", description = "Copies of the ninety finished sheets, every hill and beck of the kingdom, hachured, contoured, lettered. You pull one out at random and find Greenhollow, with the well marked, and the Tipsy Griffon, and a tiny cross for the chapel. It is so full that there is hardly room for the names." },
        { name = "the stove", icon = "♨", description = "Sheet iron, red hot, and making no impression on the room at all beyond a yard. He has drawn a chalk circle on the floor at that distance and labelled it {i}The Tropics{/}." },
        { name = "the bunk", description = "Blankets, a sleeping bag of reindeer hide, and on the wall beside the pillow, in pencil, small tallies in fives. Not days. You ask. \"Times I've dreamed there was a hill,\" he says. \"I wake up and reach for the book.\"" },
      } },
    { name = "the predecessors",
      description = "A board over the door with forty-three names in gilt, each with its years. Every one of them served out his time and went home. The Survey is proud of that. Not a man lost, in a hundred and thirty years, at the hardest station in the service.",
      things = {
        { name = "the first name", description = "{i}Jno. Datum, 1st Surveyor.{/} He came up with a boy and a mule, fixed the peg at the Kettle, drew the first sheet in a fortnight, and wrote to the office that the north would be done by Michaelmas." },
        { name = "a gap in the gilt", description = "Between the twentieth and twenty-first names a line has been scraped off and not replaced. You ask. \"Mr Meridian,\" says Level. \"He handed in a finished sheet. Hills, a river, a lake, all named. It's very fine work. They sent a man to check it.\" He straightens a pen. \"He'd drawn his mother's country, from memory. Every beck. He couldn't stand the white, you see. He's in Aldmoor now, keeps a stationer's. He's perfectly well.\"" },
      } },
    { name = "the relief's kit",
      description = "By the door, a new sea chest and a roll of blankets, sent up ahead by sledge, labelled {i}T. Benchmark, Survey{/}. On top of it is a parcel in oilcloth: forty-four years' worth of the same advice, passed from each surveyor to the next. It is one sheet. It says {i}Come back to the peg.{/}" },
    { name = "the signal mast",
      description = "A pole with a yard and halyards, for hoisting cones and balls that can be read from Drift with a glass. Today it shows one black ball: {i}all well, nothing to report{/}. There is a second ball in the locker for {i}something to report{/}. It has never been bent on. The paint on it is perfect." },
    { name = "the visitors' slate",
      description = "A school slate by the door, for people to leave word when he is out on the line.",
      things = {
        { name = "the writing on it", description = "Mostly Drift people, about fish. And at the bottom, in a clerk's small careful hand that he has not had the heart to wipe: {i}Called about the tide. Was shown the sheet. That would account for it. Have gone on to see. Kindly do not wait dinner. H.P.{/}" },
      },
      actions = {
        { "Ask about the clerk", say "\"I took him out to sixty-two,\" says Level. \"He set down his stool and sat on it, and looked north for an hour with a ledger on his knee. Then he said, 'It doesn't come back by itself, you know. Somebody is being very regular.' And he thanked me, and picked up his stool, and I went back for the chain.\" He rubs his eyes. \"When I looked round he was a good way past the peg. Walking quite steadily. I shouted. He raised his hat.\"" },
      } },
    { name = "the dog",
      icon = "d",
      description = "One sledge dog, old, grey muzzled, lying across the threshold. She goes out along the pegs with him every day as far as sixty-two, and at sixty-two she sits down and will not pass it for any persuasion. She does not whine. She waits, facing south, with her back to it, until he is ready to go home.",
      actions = {
        { "Stroke her", say "She thumps her tail on the boards, twice. Then she gets up, goes round behind you, and lies down again between you and the north, with a sigh. It is very lightly done. You do not think she knows she does it." },
      } },
    { name = "the wind",
      description = "It comes from the north, steady, not hard, without a gust in it. A wind off a hill has lumps in it, and a wind off water smells. This smells of nothing whatever, and it is as even as a planed board." },
    { name = "the flags back to Drift",
      description = "A line of poles with black rags, going south-west, each one in sight of the next. In the south, a faint gold stain on the cloud shows where the lamps are. You are surprised by how much you like looking at it." },
  },

  exits = {
    { to = "cs_town", label = "The flags back to Drift", description = "South-west, pole by pole, towards the gold on the cloud." },
    { to = "cs_the_white", label = "Out along the pegs",
      description = "North, with the ring of the chain in your mitten, counting red rags.",
      requires = flag "cs_chain_carried", hidden = true },
  },
}

space {
  id = "cs_the_white",
  region = "cold_shoulder",
  secret = true,
  wonder = true,
  name = "Peg Sixty-Two",
  description = "The last cane, with its red rag, standing in the snow. Mr Level stops beside it, puts his hand on the top, and nods to you. You walk on. Ten paces. Twenty. You look back and the rag is a spot of red, and the man a grey stroke beside it, and that is all there is behind you. Ahead there is not that. There is no line where the ground stops and the sky starts. There is no shadow, yours included. The snow under your boots makes no sound that you can find afterwards. You are standing, as far as your eyes can tell you, {whisper}in the middle of a sheet of paper{/}.",
  palette = { bg = "#b8c0c8", text = "#20262e", dim = "#687480", accent = "#a83030", border = "#8c98a4" },
  ambience = {
    snow { glyphs = "·", color = "#e8ecf0", rate = 0.15, speed = 0.1 },
    fog { color = "#d0d6dc", speed = 0.1, strength = 0.5 },
  },

  things = {
    { name = "the white",
      description = "It is not fog. Fog has a nearness. It is not a blizzard, since the air is still and you can see your hand, your boots, the grain of your mitten, all perfectly sharp. You simply cannot see anything {i}else{/}. Up is the colour of down. You hold out your arm and the hand at the end of it is the furthest thing in the world. It is not frightening, and that is what surprises you. It is like the quiet of a best parlour with the dust sheets on.",
      things = {
        { name = "the ground", description = "You stamp. It is there. Firm, level, a little give in the top inch. You crouch and look closely at it and it is snow: small dry grains, each one six sided, each one different, as snow is everywhere. Whatever else may be said about this place, it has not skimped on the snow." },
        { name = "the horizon", description = "You turn all the way round, slowly, looking for it. South there is one: a faint pencil line, with a red dot on it. The other three quarters of the circle have not been given one." },
        { name = "your shadow", description = "You look for it. The light is coming equally from everywhere, and you have none. You lift a foot. There is no dark under it. You have never before been anywhere that took so little notice of your being in the way." },
      },
      actions = {
        { "Walk a little further", say "You go on. You count your steps so as to have something. Fifty. A hundred. Nothing comes nearer, since there is nothing, and nothing falls behind. You stop, with the odd certainty that you have not moved, and look back. The red dot is exactly as small as it was. It has not got smaller. You walk another hundred. It has not got smaller. You could walk all day, you think, and be no further from that peg and no nearer to anything else, and you turn round, quite calmly, and it takes you twenty paces to reach it.", fx "wash" },
        { "Shout", say "You fill your chest and shout your own name. It goes out of your mouth and you hear it, close and plain, as you would in a cupboard. Nothing brings it back. Nothing takes it away either. It just stops being said. You feel that you have made a mark on a clean thing, and that it has been politely overlooked." },
      } },
    { name = "the last peg",
      key = "cs_peg_62",
      icon = "¡",
      description = "A bamboo cane, a red rag, a tin tag: {i}N 91/62{/}. It has been replaced forty-four times and it is the best loved object in the Survey. The snow round the foot of it is trodden into a hard dish by generations of boots standing as close to it as they can get.",
      things = {
        { name = "the tin tag", description = "Punched with the number, and under the number, scratched with a knife point by many different hands, a row of small crosses. One for each time somebody went past it and came back. You find a knife in your pocket." },
        { name = "the red rag", description = "Flannel, from a surveyor's shirt. Every relief brings a new one, red, as red as he can get. Out there, twenty paces off, you saw why. It is the only colour for a day's march, and your eye goes to it like a child to its mother." },
        { name = "the surveyor's footprints", description = "Two, side by side, deep, exactly at the peg, toes to the north. And not one print of his beyond it. Not in three years. He has stood here four hundred times and watched other people go." },
      },
      actions = {
        { "Scratch your cross", say "You add a small cross at the end of the row. Mr Level watches you do it. \"That's the lot of us, then,\" he says. \"And you.\" He does not say what he means by us. You think he means everyone who has ever seen what was not there, and gone home, and not made something up." },
      } },
    { name = "the chain",
      description = "Lying on the snow from sixty-one to sixty-two, a hundred links, taut. Level reads the brass tag at the peg, as he does every day, and writes in his book, and you see his pencil stop for a moment before it goes on.",
      things = {
        { name = "the tag at the peg", description = "You look over his arm. The chain is a hundred links. The peg stands at a hundred links and a part of one. \"It comes out a little long, lately,\" says Mr Level, not looking up. \"Same pegs, same chain. I put it down to the cold.\"" },
      } },
    { name = "the sheet",
      key = "cs_sheet_case",
      description = "Mr Level has brought the map case out with him, on his back, as he does every day in case there should be something to put on it. He unslings it now and takes out sheet ninety-one, and holds it up at arm's length against the north. You look from one to the other. {i}The paper and the country are the same white.{/} Where the sheet's edge crosses your view there is no edge. For a moment you cannot tell whether he is holding up a map of the place or a window on to it.",
      variants = {
        { when = flag "cs_sheet_given", name = "the empty map case",
          description = "A leather tube with a brass cap, slung on Mr Level's back, with nothing in it for the first time in a hundred and thirty years. He keeps touching the strap. \"Benchmark will have brought a fresh one,\" he says. \"They always send a fresh one. It's the same sheet.\"" },
      },
      actions = {
        { "Take the last sheet", when = no(flag "cs_sheet_given"), set "cs_sheet_given", give "cs_last_sheet",
          say "He lowers it. He looks at it for a while, and then at you, and then at the row of crosses on the tag. \"I'm relieved next week,\" he says. \"I'm to take this down to the office and they'll file it with the other forty-three. All white. All signed.\" He rolls it up, slowly, and holds it out. \"They don't look at them. I'd sooner it went with somebody who's stood here. Show it to people. Tell them it isn't that we didn't go.\" You take it. It weighs what paper weighs. \"And if anybody says it's blank,\" says Mr Level, with the first heat you have heard from him, \"you tell them it is {i}accurate{/}.\"", fx "sparkle" },
      } },
    { name = "a set of prints going north",
      description = "They start a pace beyond the peg. A man's boots, square toed, with a neat small heel, going straight out into the white at an even stride. Beside each left print there is a small round mark, three dots in a triangle, where something with three legs was set down now and then for a rest. They are old. They ought to have drifted over long since, and they have not, since nothing here moves the snow.",
      things = {
        { name = "where they go", description = "You follow them with your eye. Ten prints, sharp as when they were made. Then ten more, fainter. Then you are not sure. They do not stop, as far as you can tell, and they do not turn. They get to the place where you cannot see anything, and go on into it at the same pace, like a man who knows the office hours." },
        { name = "a dropped thing", description = "By the fourth print, half sunk, a rubber stamp with a wooden handle. You pick it up and read the face backwards. {i}RECEIVED{/}, and a space for the date. You look at it for some time, and then you set it back in its own dent, handle up, where its owner will see it if he comes home this way." },
      },
      actions = {
        { "Follow them a little way", say "You put your boot in the first print. It fits. The second. The third. At the fourth you pass the stamp. At the tenth you look up, and the white in front of you is exactly what it was, and you are suddenly and entirely sure that the man who made these was not lost. He was {i}going to see somebody{/}. You have no such appointment. You walk backwards to the peg, in his prints, so as not to spoil the snow." },
      } },
    { name = "the dog, sitting",
      icon = "d",
      description = "At the peg, with her back to you and to all of it, facing home. Her ears are turned round to listen behind her. When you come back in from the white she gets up at once and leans against your knee, hard, and does not look at you, as if she had not been in the least concerned." },
    { name = "the quiet",
      description = "No wind out here, though there was at the hut. No creak from the ice. You can hear the frost forming on your scarf. Level says that after a month you stop noticing, and after a year you notice everywhere else, and how much of it is noise." },
    { name = "Mr Level, at the peg",
      icon = "☺",
      description = "Standing with one hand on the cane, as a man stands with a hand on a gate. Out here his face is different. In the hut he looked tired. Here he looks like someone at the edge of a sea, who cannot swim, and comes every day to look at it.",
      actions = {
        { "Ask what he thinks it is", say "He takes his time. \"The office says it's unsurveyed,\" he says. \"That's so. I've surveyed it for three years and it's unsurveyed.\" He scratches at the frost in his moustache. \"My own view, and you'll not find it in the book: there's plenty there. Miles of it. It's only that none of it sticks up, and a map is a list of what sticks up.\" He looks north. \"I find I don't mind that. It's the finished sheets I can't sit easy with now. All those names.\"" },
        { "Ask whether he will miss it", say "\"They'll give me a desk in Aldmoor,\" he says. \"Drawing other men's hills.\" He pats the top of the peg, twice, as one pats a horse. \"I shall come up on the mail boat. For my holidays. Benchmark won't mind. Somebody always does, from the forty-three. You'll have seen one at the inn.\"" },
      } },
    { name = "the way back",
      description = "The red rag of sixty-one, and beyond it sixty, and the chain lying between like a line ruled on the snow. You had not known that a row of sticks could look like home." },
    { name = "the snow falling",
      description = "It comes down here as it does everywhere: slowly, straight, each flake by itself. You watch one all the way. It lands on the white and is the white. If you wanted to keep a country with nothing written on it, you think, this is how you would go about it, a grain at a time, and no hurry." },
    { name = "your own tracks",
      description = "Out and back, a loop of dents, the only marks on that side of the peg besides the clerk's. They look very small, and rather pleased with themselves. By the look of his, they will still be here when you are old." },
  },

  exits = {
    { to = "cs_last_hut", label = "Back along the pegs", description = "South, sixty-one, sixty, with the dog going ahead and the chain rattling behind." },
  },
}
