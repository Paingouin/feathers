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
    { name = "the cot",
      description = "A narrow iron bed against the curve of the wall, made so tight you could bounce a herring off it. He has slept in it for forty years with his boots beside it, toes to the stair.",
      things = {
        { name = "the blanket", description = "Grey wool, darned in forty places with whatever wool there was. It is by now more darn than blanket, and a record of every colour of jersey he has ever worn out." },
        { name = "a sea chest at the foot",
          description = "Painted green, rope handles, his name on the lid in white: {i}W. HARKER{/}.",
          things = {
            { name = "a best suit", description = "Folded in paper, with camphor. Never worn. He bought it for a day that was going to come by sea." },
            { name = "a bundle of letters, unsent", description = "Tied with net twine. Hundreds. They are all addressed to the same name, care of a ship. He had nowhere to post them from that the sea could not post from better, so he kept them dry instead." },
          } },
      } },
    { name = "the kitchen shelf",
      description = "One plank, one hook, one of everything. A keeper's kitchen is whatever will fit between the stove and the wall.",
      things = {
        { name = "a frying pan", description = "Black iron, never washed, only wiped. It has cooked a herring a day for forty years and has opinions about any other fish." },
        { name = "a loaf under a cloth", description = "Baked by him, on Mondays, in the stove. It is the shape of the tin and the weight of a brick, and he thinks it rather good." },
        { name = "a jar of pickled eggs", description = "Eleven, in brown vinegar, looking out. There were twelve at the new year. He is a man of iron restraint." },
        { name = "the tea caddy",
          description = "Tin, painted with a ship. The tea is rationed by the spoon, and the spoon is rationed by notches on the handle.",
          things = {
            { name = "a note inside the lid", description = "{i}Two spoons when she comes.{/} The paper is brown at the folds." },
          } },
      } },
    { name = "the store cupboard",
      description = "Built into the thickness of the wall, with a door that shuts like a safe. Everything the Crown thinks a lighthouse needs, issued yearly, and never used.",
      things = {
        { name = "forty years of wicks", description = "In their paper bands, stacked like bank notes. The lamp has no wick. He signs for them every spring. \"Wouldn't want them thinking it's easy,\" he says." },
        { name = "a tin of brass polish", description = "This he does use. It is the eleventh this year. The empty tins are flattened and nailed over a damp place on the wall, overlapping, like the scales of a fish." },
        { name = "the fog signal", description = "A brass hand-horn with a bellows. He tried it once, in his first fog. The lamp upstairs dimmed, as if wincing, and he has never liked to since." },
      } },
    { name = "a model ship",
      description = "On the table by the window, half built: a full-rigged ship, a foot long, every plank laid separately. He works on it in the evenings. He has been working on it for thirty years, because every time he gets to the rigging he takes it apart, having remembered her better.",
      things = {
        { name = "the name on the stern", description = "Painted with a single hair: {i}MARGARET HARKER{/}. There was never a ship of that name. He says there should have been, and that it is the least he could do." },
        { name = "a matchbox of spare parts", description = "Blocks the size of lentils, an anchor like an eyelash. You breathe out, carefully, in the other direction." },
      },
      actions = {
        { "Admire it", say "\"The line of the bow's wrong,\" he says. It is perfect. \"She was finer than that.\" You understand that he is not talking about a ship, and you admire it again, more quietly." },
      } },
    { name = "the window",
      description = "A slot in a wall six feet thick, glazed with glass an inch through. It looks straight down the mole to the harbour. He can see every soul who walks out toward him, a good five minutes before they arrive, and has the kettle on or the door bolted accordingly.",
      things = {
        { name = "a row of sea-glass on the sill", description = "Green, white, one rare blue, sorted by colour, ground soft by the sea. He picks a piece off the rocks every morning. There is a jar under the cot with the rest of forty years." },
        { name = "the weather glass", description = "A barometer in a mahogany case. The needle says {i}CHANGE{/}. It has said {i}CHANGE{/} since he came. He taps it every morning, and it is always right." },
      } },
    { name = "his oilskins",
      description = "Hung by the door, black, stiff, standing nearly by themselves in the shape of him. In a gale he puts them on and goes out on the gallery to see that the lamp is all right. The lamp has never not been all right. He goes anyway.",
      things = {
        { name = "the sou'wester", description = "A hat like a coal scuttle. There is a gull's dropping on it that he has not cleaned off, on the grounds that it will only happen again." },
      } },
    { name = "the lighthouse cat",
      icon = "c",
      description = "Black, heavy, with white whiskers, asleep on the stove's warm shelf. She came down the mole one night in a storm, walked in, and has not asked his leave for anything since. He calls her the Relief.",
      actions = {
        { "Stroke her", say "She opens one eye and assesses whether you are worth waking for. You are not. You are, however, allowed to continue." },
      } },
    { name = "the hearth rug",
      key = "hearth rug",
      description = "A rag rug in front of the stove, made of old jerseys, nailed down at the corners. Nailed down quite firmly, for a rug.",
      variants = {
        { when = visited "light_cellar",
          description = "A rag rug in front of the stove, with a trapdoor under it, as you are in a position to know. Wim watched you come up through his floor without a word. He has moved the cat's dish off the rug, as a courtesy." },
      },
      actions = {
        { "Stamp on it", say "It sounds like floor. Then, just afterwards, it sounds like a great deal of space under the floor. Wim does not look up. \"Stores,\" he says." },
      } },
    { name = "a chart of ships passed",
      description = "Pinned to the curve of the wall: a sheet ruled in squares, with a small ink ship for every vessel that has gone by the Light in his time. Thousands. He draws each one from the gallery, with her rig right.",
      things = {
        { name = "a square left empty", description = "One, in the middle of a crowded row, thirty years back. Under it, very small: {i}fog{/}. He has never forgiven the fog." },
        { name = "the last row", description = "Forty-one squares, each with a neat dash. No ships. Under the last: {i}tide not signed{/}." },
      } },
  },

  exits = {
    { to = "saltwick_harbour", description = "Back along the mole, with weather on both sides." },
    { to = "light_cellar", label = "The trap under the rug",
      description = "Under the hearth rug and down twelve iron rungs, into the root of the tower.",
      requires = visited "light_cellar", hidden = true },
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
    { name = "the clockwork",
      description = "A cabinet of brass wheels and a great weight on a chain, built by the Crown to turn the lamp. It is wound, oiled and going. It is not connected to anything. The beam goes round by itself and the clockwork goes round beside it, a little behind, like a small dog with a large one.",
      things = {
        { name = "the winding handle", description = "Worn bright. Wim winds it every evening at dusk. He knows. He says the lamp might like the company." },
        { name = "the maker's plate", description = "{i}Guaranteed to keep the beam to time.{/} Scratched below it, by one keeper after another, in nine different hands: {i}Slow. Slow. Slow. Still slow.{/}" },
      },
      actions = {
        { "Stop the wheels", say "You put a finger on the escapement. The clockwork stops. The beam goes round exactly as before. You let go, and the wheels hurry for a moment to catch up." },
      } },
    { name = "the glass",
      description = "Forty panes in an iron cage, floor to roof, each one a yard high. Salt on the outside. On the inside, by the door, names.",
      things = {
        { name = "the keepers' names", description = "Scratched in one pane with a diamond, one under another: every keeper since the tower. {i}Harker{/} is at the bottom, with a year. There is no second year after it yet, and he has left room." },
        { name = "a pane that is older", description = "Greener than the rest, thick, with bubbles in it. Through this one the harbour looks the way the beam shows it, all the time. Wim stands here in the evenings. He says he is checking for salt." },
      } },
    { name = "a moth",
      wonder = true,
      description = "One grey moth, circling the lamp, as moths do. It goes into the flame. It comes out of the other side. {magic}It is a little larger, and its wings are unworn.{/} It circles, and goes in again. Wim says it was here when he came. He says it has been getting younger the whole time, and that he tries not to think about where that ends.",
      actions = {
        { "Hold out a finger", say "It lands. It weighs nothing. Its wings are perfect, soft as soot, without one scale missing. It rests there for the length of a breath, like something that has all the time there is, and goes back to the light." },
      } },
    { name = "the keeper's stool",
      description = "Three legs, one short, set where a man can sit with his back to the lamp and watch what the beam does to the world.",
      things = {
        { name = "a second logbook",
          description = "Kept under the stool, not downstairs with the official one. This is where he writes what he sees.",
          things = {
            { name = "an entry", description = "{i}The quay, in the beam: a woman in a long coat, standing at the end, with her arm up. She was asking something. I could not hear, at the distance and the years.{/}" },
            { name = "another entry", description = "{i}The Strand, in the beam: the Unsinkable, afloat, going by very proud. I waved. I do not know why. A man on her deck waved back and then looked puzzled.{/}" },
            { name = "the last entry", description = "{i}The mole, in the beam: a girl, walking out to the tower with a basket. She had not sailed yet. I went down. There was nobody. I have sat with my back to it since, the hour she used to come.{/}" },
          } },
      },
      actions = {
        { "Sit on it", say "You sit with the lamp behind you and the beam going over your shoulder. The harbour comes and goes: now, then, now, then. After a few turns you find you are waiting for somebody too, and you do not know who." },
      } },
    { name = "the view",
      description = "All of it. The harbour, a toy. The cliff road, a thread. The Strand, a grey ribbon going off to the south. And the sea, on three sides, taking up the rest.",
      things = {
        { name = "the Calf Rock", description = "A black tooth half a mile out, with white round it. There are seals on it. One is sitting up, in a way that at this distance could be mistaken for a person combing her hair." },
        { name = "the horizon from up here", description = "It is further off than from the cliff. That is all. You had hoped, from this height, to see past it." },
        { name = "the weathercock on the roof", description = "A copper fish, not a bird: this is Saltwick. It swims into the wind with its mouth open. In a flat calm it turns to face the lamp." },
      } },
    { name = "a polishing cloth",
      description = "Folded on the rail, soft and black with forty years of brass. He will not have a new one. He says this one knows the work.",
    },
  },

  exits = {
    { to = "saltwick_light", label = "The stair down", description = "Ninety-nine steps. You count ninety-eight, and say nothing." },
  },
}
