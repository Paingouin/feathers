space {
  id = "nobles_row",
  region = "aldmoor",
  name = "Nobles' Row",
  description = "The street where the money lives. The cobbles are washed daily. So, by the look of them, are the passers-by.",

  things = {
    { name = "the hedges",
      description = "Clipped into the shapes of the families' heraldic beasts: a lion, a stag, and something the Pimbletons insist is a swan.",
      things = {
        { name = "the Pimbleton swan", description = "It has too many necks. The gardener has been let go. The hedge has not.",
          actions = { { "Count the necks", say "Three. No. It depends on where you stand, which is not a property hedges usually have." } } },
      } },
    { name = "a footman",
      icon = "♝",
      description = "He guards the door of House Vaux-Pimbleton with a tray, on which there is nothing, held as though there were.",
      variants = {
        { when = visited "noble_house",
          description = "He has let you in once and has been thinking about it ever since. The tray trembles very slightly." },
      },
      actions = {
        { "Announce yourself", when = no(item "invitation"),
          say "\"And sir has an invitation?\" He looks at your boots as he says 'sir'. It is quite a feat of aim." },
        { "Announce yourself", when = item "invitation",
          say "\"Sir Aubrey Fenwick-Thrum,\" he reads, and looks at you, and looks at the card, and decides that his wages do not cover it. \"...Of course.\"" },
        { "Ask what is on the tray", say "\"The tray, sir, is ceremonial.\" He will not be drawn further." },
      } },
    { name = "a sedan chair",
      description = "Parked, unattended, with a small sign: {whisper}BACK IN FIVE GENERATIONS{/}.",
      actions = {
        { "Sit in it", say "For a moment you are important. Then a passing duchess looks at you, and you are not." },
      } },
  },

  exits = {
    { to = "market" },
    { to = "noble_house",
      description = "A front door taller than your prospects, with a knocker shaped like a disapproving face.",
      requires = item "invitation",
      locked = "the footman would like to see an invitation" },
  },
}
