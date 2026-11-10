-- The rest of the Tipsy Griffon: the kitchen behind the bar, the landing over it, and the roof.

space {
  id = "griffon_kitchen",
  region = "greenhollow",
  name = "The Griffon's Kitchen",
  description = "Through the door behind the bar: a low room, hot as an argument, where one pot has been on the fire since the tavern opened and one woman has been keeping it from getting ideas.",
  palette = { bg = "#150e09", text = "#d8c8a8", dim = "#7c6a52", accent = "#f09040", border = "#523a24" },
  ambience = {
    steam { glyphs = "∙°˙", color = "#8a7a66", rate = 0.6 },
    flicker { color = "#ff9a3c", strength = 0.4 },
  },

  things = {
    { name = "the cook",
      icon = "☺",
      description = "Hilda Stock: broad, floury to the elbow, and armed with a spoon. She is the barman's sister, and the reason he is polite.",
      things = {
        { name = "her spoon", description = "Beech, a yard long, scorched at one end. It stirs, tastes, points and settles disputes." },
        { name = "her apron", description = "A history of the week's menu, most recent on top." },
      },
      actions = {
        { "Compliment the stew", say "\"What did you taste?\" You say meat. She nods slowly. \"That's good,\" she says. \"It's good that you think that.\"" },
        { "Offer to help", say "She hands you a sack of turnips and a knife. Some time later you have peeled one and she has done the sack. She says you can keep yours." },
        { "Ask about the founder", when = no(flag "gh_knows_attic"), set "gh_knows_attic",
          say "\"Old Barnaby Griff? Killed a griffon, to hear the sign tell it. Came home with a sword, never drew it again, and opened a pub, which is the cleverest thing any hero ever did.\" She points the spoon at the ceiling. \"His trunk's still in the roof. Hatch is in the linen cupboard, behind the good sheets. Nobody goes up. It hums.\"" },
        { "Ask about the founder", say "\"I've said. Linen cupboard, behind the good sheets. And if you crease them you'll iron them.\"" },
      } },

    { name = "the Perpetual Stew",
      key = "perpetual stew",
      wonder = true,
      icon = "♨",
      description = "An iron pot the size of a font. It has not been empty, or off the heat, in a hundred and forty years. Every day something goes in and something is ladled out. {magic}By now there is no saying what it is a stew of, except: of here.{/}",
      things = {
        { name = "the surface", description = "Brown, slow, thoughtful. A carrot rises, looks about, and goes back down." },
        { name = "the ladle", description = "Worn to half a bowl by five cooks." },
      },
      actions = {
        { "Taste it", say "Every Sunday dinner the village has ever had, at once. Somebody's wedding. A hard winter. You find that you know what Old Tom was like, and that you would have liked him." },
      } },

    { name = "the pantry",
      description = "A cold cupboard that you can walk into, and should not, without asking.",
      things = {
        { name = "a ham", description = "Hanging from a hook. It has a name, Geoffrey, and a waiting list." },
        { name = "a wheel of cheese",
          description = "Blue-veined, powerful, kept under a cloth and a brick. The brick is for the cheese's protection, the cook says, which is not the way round you had assumed.",
          actions = {
            { "Lift the cloth", say "Your eyes water. Two rooms away, the cat leaves the building." },
          } },
        { name = "jars of pickle", description = "Forty, labelled by year. The oldest has no label. It has a padlock." },
        { name = "a pantry mouse", description = "On the flour shelf, fat and calm. It and the cat have an understanding that is older than you are." },
      } },

    { name = "the bread oven",
      description = "Brick, domed, and warm since before dawn.",
      things = {
        { name = "a loaf",
          description = "Just out. The crust is making the small crackle that bread makes when it meets cold air. It is the best sound in Greenhollow.",
          actions = {
            { "Tear off the heel", say "The cook sees. The cook allows it. You will remember this bread on worse days." },
          } },
        { name = "the peel", description = "A wooden paddle on a pole, for reaching into the oven. Also, by the scorch marks on the door frame, for seeing the barman out." },
      } },

    { name = "a boy at the sink",
      description = "Pip, eleven, up to his shoulders in a tub of mugs. He intends to be an adventurer. He has a list of equipment. It is longer than yours, and better.",
      things = {
        { name = "the tub", description = "Grey water and pewter. Somewhere in it is the barman's mug, which Pip has been told never to get clean, and has never dared ask why." },
      },
      actions = {
        { "Ask to see the list", say "{i}Rope. Lantern. Second socks. A hat. Something to give to things that are hungry.{/} You read it twice. You ask whether you might copy it down." },
      } },

    { name = "the herb bunches",
      description = "Hung from the beams: thyme, sage, bay, and one bunch that nobody planted. It turned up in the garden one spring and smells of thunder.",
      actions = {
        { "Smell the odd one", say "The hair on your arms stands up. Outside, quite far off, something rumbles, in a clear sky. The cook takes it out of your hand and hangs it back up." },
      } },

    { name = "the spit",
      description = "A roast turning before the fire, driven by a wheel in the wall made for a small dog to run in.",
      things = {
        { name = "the turnspit dog", description = "Asleep in the wheel, on his back. The roast is being turned by the boy, with his foot, while he washes up." },
      } },

    { name = "the kitchen table",
      description = "Scrubbed white, scarred by a century of knives.",
      things = {
        { name = "a heap of turnips", description = "Tonight's stew, tomorrow's stew, and a share of every stew to come." },
        { name = "the knife", description = "Sharpened so many times that it is mostly handle now. The cook will not have another." },
        { name = "a bowl of eggs", description = "Brown, and one of them still warm. Laid this morning by the understudies." },
      } },

    { name = "the back door",
      description = "Open onto the yard: a midden, a water butt, and hens.",
      things = {
        { name = "the hens", description = "Five, brown, scratching. Two of them are kept as understudies for the griffon's head, should it ever need restoring." },
        { name = "the water butt", description = "Rain off the thatch. A frog lives in it. The cook says it is the one from the well, come down in the world." },
        { name = "the midden", description = "Peelings, bones and a broken mug. A rat is going through it in the manner of a customer." },
      } },

    { name = "a row of copper pans",
      description = "Hung by size, polished, never used. Everything is cooked in the pot. The pans are for morale." },
  },

  exits = {
    { to = "tipsy_griffon", description = "Back through the swinging door, timing it." },
  },
}

space {
  id = "griffon_landing",
  region = "greenhollow",
  name = "The Upstairs Landing",
  description = "A corridor under the thatch with four doors, a window at the end, and a floor that reports every step to the room below.",
  palette = { bg = "#120e0b", text = "#d2c6ae", dim = "#74675a", accent = "#e0a860", border = "#48392a" },
  ambience = { dust { glyphs = "·˙", color = "#5a4c3c", rate = 0.4 }, flicker { color = "#ffb060", strength = 0.15 } },

  things = {
    { name = "the door of Room Two",
      description = "Shut. Behind it somebody is snoring with real architecture: an intake, a held note, a collapse.",
      things = {
        { name = "the keyhole",
          description = "A large man in a small bed, on his back, with his boots on. A traveller in buttons, by the sample case. The snore lifts the blanket and sets it down." },
      },
      actions = {
        { "Knock", say "The snore stops. A voice says \"No, the blue ones,\" with great clarity. The snore resumes." },
      } },

    { name = "Room Three",
      description = "The party's room. The door stands open, since the lock was picked from the inside, by the thief, on the way out.",
      things = {
        { name = "four bedrolls",
          description = "Three have been slept in. The fourth is neatly made up round a bolster, in the shape of someone who is still here." },
        { name = "the map",
          description = "On the table at last: the one they were arguing about. It is of a different kingdom. The dwarf got it at a discount." },
        { name = "the wizard's spellbook",
          description = "Left open and face down, with the spine cracked. The page is a spell for finding lost things. There is a bookmark in it, which is a note from the thief: {i}don't bother{/}." },
        { name = "the elf's mirror",
          description = "Silver, the size of a hand. Look into it and you are shown yourself as an elf would see you.",
          actions = {
            { "Look in it", say "You look. It is brief. You put the mirror down gently, facing the table." },
          } },
        { name = "the dwarf's sock", description = "Hung on the bedpost, heavy, knotted at the top. It clinks. That makes four coins and one more that he has not told them about." },
      } },

    { name = "the door at the end",
      description = "Painted shut, papered over, with a dresser pushed against it. The barman says there are three rooms. You count the doors again.",
      actions = {
        { "Listen at it", say "Nothing. Then, faintly, a bed creaking, as somebody turns over who has been asleep since before the dresser." },
      } },

    { name = "the linen cupboard",
      description = "Sheets, ironed and stacked, and the smell of lavender doing its best.",
      things = {
        { name = "the good sheets",
          description = "Kept for gentry. Never used. They have gone yellow along the folds, waiting for somebody good enough." },
        { name = "a lavender bag", description = "Muslin, tied with thread. It has been losing to the smell of stew for thirty years and has not given up." },
        { name = "a hatch in the ceiling",
          key = "attic hatch",
          visible_if = flag "gh_knows_attic",
          description = "Behind the good sheets, above the top shelf: a square of boards with a ring in it. Now that you know, you can hear it. A hum, very low, the note a bee makes in a jar.",
          variants = {
            { when = flag "gh_attic_open",
              description = "Open. The shelves make a ladder up to it, and the hum comes down." },
          },
          actions = {
            { "Open the hatch", when = no(flag "gh_attic_open"), set "gh_attic_open", fx "shake",
              say "You climb the shelves. The good sheets will never be the same. The hatch lifts on dust and dark, and the hum gets into your teeth." },
          } },
      } },

    { name = "a portrait of the founder",
      description = "Barnaby Griff in oils, a tankard in one hand, and the other hand resting on nothing at the height of his hip, where a sword hilt would be. The painter was told to leave it out.",
      things = {
        { name = "his expression", description = "Content. It is the face of a man who has done one enormous thing and intends never to do another." },
      } },

    { name = "the landing window",
      description = "It looks over the back yard, the hens, and the fields going off towards the wood.",
      things = {
        { name = "a spider in the frame", description = "Large, striped, at the centre of its web, with the confidence of a landlord." },
      } },

    { name = "the floorboards",
      description = "Elm, wide, loud.",
      actions = {
        { "Find the quiet one", say "There is supposed to be one. You try them all. You are now known to everyone downstairs, by weight." },
      } },

    { name = "a chamber pot",
      description = "Under the hall table. Blue and white china, with a view of a castle painted on it. It is the finest object in the tavern." },

    { name = "a row of boots",
      description = "Outside the doors, to be cleaned. Nobody cleans them. They are put out from habit and taken in from habit, and the boy in the kitchen has never been told." },

    candle { name = "the landing candle", description = "On a bracket, in a glass. It lights the way to the stairs and makes the door at the end darker." },
  },

  exits = {
    { to = "tipsy_griffon", description = "Down the sixteen stairs. They know you now." },
    { to = "griffon_attic", label = "The hatch",
      description = "Up the linen shelves and through the hatch, into the roof.",
      requires = flag "gh_attic_open", hidden = true },
  },
}

space {
  id = "griffon_attic",
  region = "greenhollow",
  secret = true,
  name = "The Roof Space",
  description = "Under the thatch, bent double among the rafters. Dust, an old wasps' nest, mouse roads through the straw, and at the far end a sea chest. The hum is coming from the chest.",
  palette = { bg = "#0f0d0a", text = "#cfc4a8", dim = "#6c6250", accent = "#d8b860", border = "#40382a" },
  ambience = { dust { glyphs = "·˙∙", color = "#5c5240", rate = 0.6, speed = 0.2 }, shimmer { color = "#d8b860", strength = 0.1 } },
  variants = {
    { when = item "griffonsbane",
      description = "Under the thatch, bent double among the rafters. Dust, an old wasps' nest, mouse roads through the straw, and at the far end a sea chest. It is quiet up here now. You had got used to the hum." },
  },

  things = {
    { name = "the sea chest",
      description = "Iron-bound, with {i}B.G.{/} burned into the lid. It is not locked. Nobody ever thought it needed to be.",
      things = {
        { name = "a folded surcoat",
          description = "Blue, moth-eaten, with a griffon on it, rampant. There is a rent across the chest that somebody stitched up with fishing line, by firelight, badly." },
        { name = "a bundle of letters",
          description = "From a woman in Saltwick, tied with ribbon. The last one says {i}come home, then, and we'll open that pub{/}." },
        { name = "a claw",
          description = "Longer than your hand, black, curved, real. So there was a griffon. You think of the two chickens on the wall downstairs with new respect for what they are covering for." },
        { name = "something long, wrapped in oilcloth",
          key = "wrapped sword",
          description = "This is what hums.",
          variants = {
            { when = item "griffonsbane",
              name = "an empty oilcloth",
              description = "Folded, on top of the surcoat. The chest is quiet." },
          },
          actions = {
            { "Unwrap it", once = true, give "griffonsbane", fx "flash",
              say "A sword. Plain hilt, grey blade, no jewels, and an edge that the light slides off. {gold}Griffonsbane{/}: it says so, in small letters by the guard, with no flourish. It stops humming when you pick it up, as a cat stops calling when the door opens. You are holding a real one. You have no idea what to do with it, and it seems content with that." },
          } },
      } },

    { name = "the chimney breast",
      description = "Warm brick, coming up through the floor from the hearth. Somebody used to sit against it, often, long ago. There is a place worn in the boards.",
      things = {
        { name = "a tankard",
          description = "Pewter, dry, with B.G. on it. He came up here to sit with the chest. Not to open it. To sit." },
      } },

    { name = "the thatch, from inside",
      description = "Gold, close, and full of small lives.",
      things = {
        { name = "a sleeping bat", description = "One, hung from a rafter, wrapped in itself. It is the size of a plum." },
        { name = "a mouse road", description = "A track through the straw, worn smooth, with a junction and what looks very like a lay-by." },
      } },

    { name = "the old wasps' nest",
      description = "Grey paper, as big as a bucket, empty for years. It is the most delicate thing you have ever seen made by anything that angry." },

    { name = "a gap in the thatch",
      description = "A hole the width of a thumb. Through it: the square, the well, and the goose, which is looking at the hole." },

    { name = "a crate of tavern signs",
      description = "The old ones, retired as they faded. In the oldest the griffon is not holding a tankard and is not falling over. It is very large, and it is coming this way, and the painter's hand was not steady." },
  },

  exits = {
    { to = "griffon_landing", label = "The hatch", description = "Down the shelves, apologising to the sheets." },
  },
}
