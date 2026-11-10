space {
  id = "saltwick_light",
  region = "saltwick",
  name = "The Saltwick Light",
  description = "A white tower at the end of the mole, with the sea working at three sides of it. The ground floor is one round room: a stove, a cot, a stair going up the wall, and forty years of one man's tidiness.",
  ambience = { flicker { color = "#e8b060", strength = 0.12 } },

  things = {
    { name = "Old Wim, the keeper",
      key = "keeper",
      icon = "☻",
      description = "A big slow man in a jersey. He looks at you, then past you at the water, then at you again, having checked.",
      variants = {
        { when = flag "keeper_has_letter",
          description = "He sits by the stove with a small damp paper on his knee, reading it. He has read it a good many times now. It is not long." },
      },
      actions = {
        { "Talk", when = no(flag "keeper_has_letter"),
          say "\"Nobody goes up. Lamp's particular.\" He looks at the water. \"I'm waiting on a letter. Comes by sea. You'd know it if you saw it.\"" },
        { "Talk", when = flag "keeper_has_letter",
          say "\"She says the weather's fine,\" he says. \"It'll have changed.\" He folds the paper along its creases, and unfolds it again." },
        { "Give him the bottle", when = item "bottle", take "bottle", set "keeper_has_letter",
          say "He holds it up to the window and goes quite still. He draws the cork with his teeth. \"Forty years,\" he says. \"She said she'd write.\" He waves a hand at the stair without looking up. You are, as of now, somebody who goes up." },
        { "Ask about the lamp",
          say "\"Lit before my time. Before anyone's. Never been out, never been fed. I polish the brass and keep the book.\" He nods at the ceiling. \"It doesn't show ships the rocks. Ships know the rocks. It shows 'em something else.\"" },
      } },
    { name = "the stove",
      description = "Black iron, blackleaded weekly.",
      things = {
        { name = "a kettle", description = "It has been about to boil since you came in." },
      } },
    { name = "the keeper's log",
      description = "One line a night: {i}Lamp burning. Nothing to report.{/} Fourteen thousand lines.",
      things = {
        { name = "a longer entry", description = "Thirty years back, one night only: {i}Lamp burning. Saw my father on the quay in the beam, mending a net. He has been dead nine years. Nothing else to report.{/}" },
      } },
    { name = "the stair",
      description = "Stone steps up the inside of the wall, ninety-nine by Wim's count. He counts them every night, in case." },
  },

  exits = {
    { to = "saltwick_harbour", description = "Back along the mole, with weather on both sides." },
    { to = "lamp_room", label = "The stair",
      description = "Ninety-nine steps, to whatever a lamp is being particular about.",
      requires = flag "keeper_has_letter",
      locked = "\"Nobody goes up,\" says the keeper, from in front of it" },
  },
}

space {
  id = "lamp_room",
  region = "saltwick",
  wonder = true,
  name = "The Lamp Room",
  description = "The top of the tower: a cage of glass, an iron gallery outside it, and in the middle a lamp the size of a cartwheel, burning without oil, wick, or sound. The beam goes round slowly. You find you turn to follow it.",
  palette = { bg = "#0c0e14", text = "#d6d0c0", dim = "#74705e", accent = "#ffd27a", border = "#4a4226" },
  ambience = {
    flicker { color = "#ffd27a", strength = 0.2 },
    stars { color = "#8a93a8", rate = 0.4 },
  },

  things = {
    { name = "the lamp",
      icon = "☼",
      description = "A steady gold flame standing on nothing. It gives no heat. Look at it and then away, and no green shape follows your eye about: it has not used up any of your sight.",
      things = {
        { name = "the lens", description = "Rings of glass as thick as your arm. Wim's cloth has worn the brass frame bright and never touched the glass, which does not take dust." },
      } },
    { name = "the beam",
      wonder = true,
      description = "Where the beam falls, {magic}it is not now{/}. It crosses the harbour, and for the width of the light the quay is new stone, with other boats at it, and people in old hats who do not look up. Then it passes, and Saltwick is Saltwick again.",
      things = {
        { name = "the cliff in the beam", description = "For a moment there is no road on it, and no bench, and the sheep on the ledge is a lamb." },
        { name = "the sea in the beam", description = "The same. Exactly the same. It is the one thing the light does not change." },
      },
      actions = {
        { "Stand in it", fx("flash", "#ffd27a"),
          say "The light goes over you. For one second your boots are new, your pack is light, and you have not yet told anyone you were going to be an adventurer. Then it moves on, and you have, and you are." },
      } },
    { name = "the gallery",
      description = "An iron walkway round the outside of the glass, with a rail, a view, and a wind that goes through your pockets.",
      things = {
        { name = "a gull's nest",
          key = "gull nest",
          description = "Wedged behind the rail: seaweed, twine, a spoon, three buttons, a spectacle lens, and no gull, for the moment. In the middle, where the egg should be, sits a brass-handled stamp.",
          variants = {
            { when = flag "stamp_taken",
              description = "Seaweed, twine, a spoon, a spectacle lens, and four buttons. One of them is yours. It seemed fair." },
          },
          actions = {
            { "Take the stamp", when = no(flag "stamp_taken"), give "tide_stamp", set "stamp_taken",
              say "It is warm. You leave a button from your coat in its place, and go back inside before the management returns." },
          } },
      } },
  },

  exits = {
    { to = "saltwick_light", label = "The stair down", description = "Ninety-nine steps. You count ninety-eight, and say nothing." },
  },
}
