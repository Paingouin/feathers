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
    { name = "the great houses",
      description = "Nine of them, one for each founding family, each trying to be an inch taller than its neighbours without being seen to try.",
      things = {
        { name = "House Fenwick-Thrum",
          description = "Shuttered. The family is abroad, and has been for eleven years. The knocker is tied up in a stocking. Sir Aubrey is believed to be at the Collegium, or in a spa, or was it the navy.",
          things = {
            { name = "the brass plate", description = "{i}FENWICK-THRUM{/}. You look at the name for some time, in a spirit of rehearsal." },
            { name = "a heap of post", description = "Eleven years of invitations, visible through the letter slot. He is the most invited man in Aldmoor. He has never refused anything, by never answering." },
          } },
        { name = "House Mere", description = "The Duke's. Its front door is exactly one inch taller than the Baroness's. The inch was added by night." },
        { name = "a house with scaffolding", description = "It is being made an inch taller." },
      } },
    { name = "a duchess walking a very small dog",
      description = "The dog is the size of a muff and is carried over puddles by a footman employed for the purpose.",
      things = {
        { name = "the dog", description = "It has a pedigree longer than yours. It looks at you and yawns, with all of its tiny teeth." },
        { name = "the puddle footman", description = "He has one duty and he lives for rain." },
      },
      actions = {
        { "Bow", say "You bow. The duchess does not see you. The dog does, and is carried past you at eye level, and you get the impression that it has taken your name." },
      } },
    { name = "the street sweeper",
      description = "An old man with a broom, who washes the cobbles every dawn. He knows what every house has thrown out. He could bring down the nobility and has decided that it is not worth the bending.",
      actions = {
        { "Ask what he has found", say "\"Love letters. False teeth. A crown, once, paste.\" He leans on the broom. \"And every year, from the Pimbletons, a great heap of hedge clippings that goes on wriggling.\"" },
      } },
    { name = "the cobbles",
      description = "Washed, dried and, on feast days, polished. Between two of them, outside House Mere, a dandelion has come up. It has been reported.",
      things = {
        { name = "the dandelion", description = "Yellow, cheerful, and entirely alone on the Row. A committee is to meet about it. You find that you are on its side." },
      } },
    { name = "a carriage, waiting",
      description = "Black, with a crest on the door and four greys. The coachman has been told to wait and has not been told for what. That was on Tuesday.",
      things = {
        { name = "the coachman", description = "Asleep, upright, with the reins in his hands. The horses are asleep too. It is a very well matched turnout." },
        { name = "the crest", description = "A swan, with the usual number of necks. Painted before the hedge began to give the family ideas." },
      } },
    { name = "the railings",
      description = "Iron, black, with gilded spikes. Each house has its own pattern of spike. The patterns are registered.",
      things = {
        { name = "a kite", description = "Caught on a spike outside House Vaux-Pimbleton. A child's, home-made, from Elbow Lane. No servant has been told to remove it, so it stays, and flutters, and lowers the tone." },
      } },
    { name = "a lamp post with a ribbon",
      description = "Tied in a bow, in the Mere colours. It marks a duel that was to be fought here at dawn. Both parties sent their apologies and a servant." },
    { name = "the view up the hill",
      description = "At the top of the Row the houses stop, and there is the castle: three towers upright, one not, and a thin dark line coming down from the gate that you take for a wall until part of it sits down." },
    { name = "a delivery at the area steps",
      description = "A handcart with sacking on the wheels, and a large mild man in a jersey carrying a crate down to a kitchen door. He touches his cap to you. It is Dob, or somebody very like him, and it is not vinegar.",
      things = {
        { name = "the crate", description = "{i}CURIOS{/}, by the stencil. A footman signs for it without reading, as footmen do for anything that comes to the right door." },
        { name = "the handcart", description = "It smells of tar and weed. One word is carved into the handle, and has been half planed off." },
      },
      actions = {
        { "Ask what he is delivering", say "\"Antiquities,\" says the large man, comfortably. \"From the jungle. Very old. Mind your fingers, some of them are still tacky.\"" },
      } },
    { name = "a governess with two children",
      description = "In grey, at a brisk walk, with a boy and a girl in tow, both of whom are being improved. She names each house as they pass and the virtue for which it is known. Several of the virtues give her trouble.",
      things = {
        { name = "the boy", description = "He has a frog in his pocket. You can tell by the pocket." },
        { name = "the girl", description = "She has seen the frog. She is weighing her options, and the price is going up with every house." },
      } },
    { name = "the boot scrapers",
      description = "One by every door, iron, each in the family crest: a lion, a boar, a swan, and at number six a plain hedgehog, which is the oldest family of the lot and has never needed to say so." },
  },

  exits = {
    { to = "market" },
    { to = "castle_hill", description = "Uphill, where the street runs out of houses and turns into a queue." },
    { to = "noble_house",
      description = "A front door taller than your prospects, with a knocker shaped like a disapproving face.",
      requires = item "invitation",
      locked = "the footman would like to see an invitation" },
  },
}
