space {
  id = "tipsy_griffon",
  region = "greenhollow",
  name = "The Tipsy Griffon",
  description = "Every adventure starts in a tavern. This one would like it known that it never agreed to that.",
  palette = { bg = "#140f0b", text = "#d6c8ac", dim = "#7a6a55", accent = "#f0a04a", border = "#4d3a28" },
  ambience = {
    flicker { color = "#ff9a3c", strength = 0.5 },
    embers { glyphs = "∙·˙", colors = { "#ffb347", "#ff6a00", "#7a2a00" }, rate = 0.35 },
  },

  things = {
    { name = "the barman",
      icon = "☻",
      description = "He polishes a mug that has never been clean and will never be clean. It is a relationship.",
      variants = {
        { when = flag "bed_broken",
          description = "He polishes the same mug, but now he is doing it {danger}at{/} you. He has come out from behind the bar to do it properly, which leaves the trapdoor unattended." },
      },
      things = {
        { name = "his moustache", description = "Load-bearing." },
        { name = "the mug", description = "Legend says that if it is ever truly clean, the tavern falls." },
        { name = "his opinion of you",
          description = "Low, but with room to fall.",
          variants = {
            { when = flag "bed_broken", description = "It has found the room." },
          } },
      },
      actions = {
        { "Talk", when = flag "bed_broken",
          say "\"That bed was my grandmother's.\" It was not. It was, at most, somebody's grandmother's problem." },
        { "Talk", say "\"Room's two coppers. Bed's extra. Using the bed's extra again.\"" },
        { "Ask about the cellar", when = no(flag "bed_broken"),
          say "\"There is no cellar,\" he says, standing squarely on the trapdoor." },
        { "Order the stew", say "It arrives. It was a decision, and you made it." },
        { "Tell a joke", say "He laughs exactly once, like a door closing." },
      } },

    { name = "the guest room",
      description = "Up four stairs and a moral compromise. One bed, one candle, one window painted shut.",
      things = {
        { name = "the guest bed",
          description = "A bed in the loosest legal sense. Four planks, one of them load-bearing, none of them yours.",
          variants = {
            { when = flag "bed_broken",
              name = "a pile of planks",
              description = "It was a bed. Now it is a lesson.",
              actions = {
                { "Apologise to it", say "The planks accept your apology with the dignity of the recently freed." },
                { "Look underneath", say "There is no underneath any more. You saw to that." },
              } },
          },
          actions = {
            { "Lie down", say "You lie down. The bed lets you know, at length, what it thinks of that." },
            { "Break it", set "bed_broken", fx "shake",
              say "It offers no resistance. It had been waiting. Downstairs, a mug stops being polished." },
            { "Look underneath", say "Dust, a single sock, and the sense that the sock is waiting for someone." },
          } },
        candle { description = "The room's only candle. It burns low out of what you assume is embarrassment." },
        { name = "the painted-shut window",
          description = "Through the paint you can just make out the square, and the goose, which can certainly make out you." },
      } },

    { name = "the hearth",
      icon = "♨",
      description = "It {flicker}crackles{/} like gossip. Over it hangs a stuffed griffon's head that is, on inspection, two chickens and a great deal of confidence.",
      things = {
        { name = "the griffon's head", description = "The label says {whisper}slain by the founder{/}. The stitching says {whisper}assembled by the founder{/}." },
      },
      actions = {
        { "Poke the fire", say "It pokes back.", fx "sparkle" },
        { "Warm your hands", say "For a moment you are not an adventurer. You are just warm. It is very nearly better." },
      } },

    { name = "a party of adventurers",
      icon = "♣",
      description = "A proper party, in the corner, having a proper argument about who was supposed to bring the map.",
      things = {
        { name = "the dwarf", description = "He is counting the party's gold. He has been counting it since the last tavern. There are four coins.",
          actions = { { "Ask about gold", say "\"Don't have any. Never heard of it. What's gold.\" He sits on the purse." } } },
        { name = "the elf", description = "She is very beautiful and wishes to discuss it.",
          actions = { { "Compliment her hair", say "\"I know,\" she says, kindly." } } },
        { name = "the wizard", description = "Asleep under his hat. A spell is leaking out of his sleeve and turning a spoon, slowly, into a slightly different spoon.",
          things = {
            { name = "the spoon", wonder = true,
              description = "It is {shimmer}halfway{/} between two spoons. Scholars would kill to see this. It is, however, a spoon." },
          } },
        { name = "the empty chair", description = "Reserved for the thief. Nobody has seen the thief in days. Nobody can find their purse either. Morale is mixed." },
      },
      actions = {
        { "Ask to join", say "They look at your boots. They look at each other. \"We'll let you know,\" says the dwarf, who will not." },
      } },
  },

  exits = {
    { to = "village_square" },
    { to = "griffon_cellar",
      description = "A trapdoor with a brass ring, worn smooth by a boot that is usually standing on it.",
      requires = flag "bed_broken",
      locked = "the barman is standing on it" },
  },
}
