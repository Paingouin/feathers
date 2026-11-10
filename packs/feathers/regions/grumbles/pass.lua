space {
  id = "toll_pass",
  region = "grumbles",
  name = "The Pass of Reasonable Charges",
  description = "A notch between two mountains, wide enough for a cart and a grievance. A striped pole lies across the road. Beside it, on a folding stool, sits a troll. There is no bridge. There is a sign where a bridge would be announced.",
  variants = {
    { when = flag "riddle_answered",
      description = "A notch between two mountains, wide enough for a cart and a grievance. The striped pole is up. The troll is on his stool with his book, moving his lips. There is still no bridge." },
  },

  things = {
    { name = "the troll",
      key = "troll",
      icon = "Ω",
      description = "Nine feet of grey rock with moss in the folds, a council badge, and reading glasses on a string. {danger}He could fold you like a letter.{/} He wets a finger the size of a loaf and finds his place in a very small book.",
      things = {
        { name = "his badge", description = "{i}Licensed Toll Troll, No. 3.{/} There is no number 2. Nobody mentions number 1." },
        { name = "his book", description = "{i}Riddles for Use at Tolls, Bridges and Similar.{/} The first page is soft and grey with use. The rest are as new." },
        { name = "his stool", description = "Folding, canvas, council issue, rated for one clerk. It goes on working out of fear." },
      },
      actions = {
        { "Ask to pass", when = no(flag "riddle_answered"),
          say "\"Riddle first,\" says the troll, in the voice of a millstone clearing its throat. He reads with his finger. \"{i}What goes up the mountain, and down the mountain, and never moves?{/}\" He looks at you over his glasses. He has all day. He has had all of them." },
        { "Guess", when = all { no(flag "knows_riddle"), no(flag "riddle_answered") },
          say "\"A goat?\" \"Moves.\" \"A tired goat?\" He writes something down. \"That's two. You get three. Nobody ever told me what happens after three, so we would both be finding out.\"" },
        { "Answer: a road", when = all { flag "knows_riddle", no(flag "riddle_answered") }, set "riddle_answered",
          say "\"A road,\" you say. He turns to the back of the book. He turns to it again. \"It says a road. You said a road.\" He lifts the pole with one finger and seems a little lost. \"Forty years. I never learned what I do next.\"" },
        { "Talk", when = flag "riddle_answered",
          say "\"I'm on riddle the second,\" he says, not looking up. \"It's about an egg, I think. Don't tell me.\"" },
        { "Ask about the bridge", when = all { flag "riddle_answered", no(flag "knows_troll_bridge") }, set "knows_troll_bridge",
          say "\"Trolls have bridges. It's in the licence.\" He glances at the sound, dry road. \"Council says there is nothing here to bridge. I said that is hardly my fault.\" He lowers his voice, and gravel comes down somewhere. \"I have been getting on with it myself. Evenings. Would you like to see?\"" },
      } },
    { name = "the striped pole",
      key = "pole",
      description = "Red and white, across the road at the height of a cart horse's chest. A goat walks under it. The troll watches it go. Goats are exempt. He checked.",
      variants = {
        { when = flag "riddle_answered",
          description = "Up, at an angle, and trembling slightly. It has not been up in forty years and is unsure of the etiquette." },
      } },
    { name = "the sign",
      description = "{b}BRIDGE{/}, and an arrow. The arrow points at a stretch of perfectly good road. Under it, in the council's lettering: {i}Pending{/}." },
    { name = "the tariff board",
      description = "{i}Carts, 2. Persons, 1. Persons of quality, 1 and a bow. Goats, exempt. Riddle answered correctly, free.{/} The last line is in different paint. It was added by someone sure it would never come up." },
    { name = "a door in the rock",
      visible_if = flag "knows_troll_bridge",
      description = "Round the side of the outcrop: a slab of stone on a hinge, with a boot scraper beside it and a mat that says nothing, being a rock." },
  },

  exits = {
    { to = "goat_track", description = "Back down the way the goats come up." },
    { to = "high_col",
      description = "Under the pole and on up the road, to where the wind is coming through.",
      requires = flag "riddle_answered",
      locked = "the pole is down, and the troll has a riddle" },
    { to = "troll_den", label = "The door in the rock",
      description = "Into the outcrop, ducking, though the door was not made for anyone who needs to.",
      requires = flag "knows_troll_bridge", hidden = true },
  },
}

space {
  id = "troll_den",
  region = "grumbles",
  secret = true,
  name = "The Troll's Front Room",
  description = "A cave made comfortable by someone very large and very careful. A stone armchair, a rug, a kettle the size of a font. And at the far end, on a table under a good lamp, the thing he does in the evenings.",
  palette = { bg = "#110e0b", text = "#d4cabb", dim = "#75695a", accent = "#e6b566", border = "#46392a" },
  ambience = {
    flicker { color = "#e6b566", strength = 0.12 },
    dust { glyphs = "·˙", color = "#6a5a44", rate = 0.2, speed = 0.2 },
  },

  things = {
    { name = "the bridge",
      key = "model bridge",
      wonder = true,
      icon = "∩",
      description = "A bridge six feet long, built of matchsticks. Three arches, a parapet, lamp standards the size of pins, and every stone of it drawn on in ink. It crosses a river of blue paper. {magic}The fingers that made it are each as thick as your arm.{/} At one end stands a toll booth, and in the booth, a stool.",
      things = {
        { name = "the toll booth", description = "The door opens. Inside is a book the size of a lentil. You cannot check that it has pages. You are certain that it has." },
        { name = "the fourth arch", description = "Not finished. Beside it lies a pair of tweezers, bent, and beside those a second pair, bent, and a third." },
        { name = "the paper river", description = "Painted with a current, and one small fish, going under the second arch." },
      },
      actions = {
        { "Breathe carefully", say "You step back from the table with your hands at your sides. Nothing falls. It is the bravest thing you have done all day." },
      } },
    { name = "the plans",
      description = "Pinned along the wall: forty years of drawings, each one stamped by the council. {i}Refused: no river.{/} {i}Refused: no river.{/} The latest has a river drawn in, in blue crayon. It is stamped {i}Nice try{/}." },
    { name = "the armchair",
      description = "Cut from the wall, with a cushion embroidered {i}HOME IS WHERE THE TOLL IS{/}. The needlework is exquisite. You are having to revise several opinions.",
      actions = {
        { "Sit in it", say "Your feet stick straight out. You are, briefly, four years old. The chair is very comfortable for a rock." },
      } },
    { name = "the rug",
      description = "Knitted, and you know by whom. It is the shape of a goat, much enlarged. Something was traded for it, probably a book." },
    candle { description = "Kept at the far end of the room from the table, behind glass, by someone who has thought about it." },
  },

  exits = {
    { to = "toll_pass", label = "The door in the rock", description = "Out to the road, the pole, and the stool." },
  },
}
