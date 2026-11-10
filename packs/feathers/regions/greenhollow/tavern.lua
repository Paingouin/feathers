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
          description = "A bed in the loosest legal sense. Four planks, one of them doing all the work, none of them yours.",
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

    { name = "the bar",
      description = "Oak, ringed with the ghosts of ten thousand mugs.",
      things = {
        { name = "the mugs on their hooks",
          description = "Forty pewter mugs, one to a regular, each dented in its own way.",
          things = {
            { name = "Jeb's mug",
              description = "It has a dent the shape of Old Jeb's forehead. It was an accident. There is a second dent." },
            { name = "the mug of a man who left",
              description = "Hung at the end, dusty. He went adventuring twenty years ago. It is washed every spring, in case." },
            { name = "a mug with a glass bottom",
              description = "So that you can see who is coming at you while you finish. Nobody in Greenhollow has ever come at anybody. It is the look of the thing." },
          } },
        { name = "the ale tap",
          description = "One ale. It is called Ale.",
          actions = {
            { "Order a pint", say "It is brown, flat, and tastes faintly of a cellar that is not there. By the second mouthful you are fond of it." },
          } },
        { name = "the slate",
          description = "Tabs, in chalk. The party of adventurers owe for eleven nights. Beside the figure somebody has drawn four small coins and a question mark." },
        { name = "a jar of pickled eggs",
          description = "They have been here since the founder. One is eaten each year, by lot.",
          actions = {
            { "Take one", say "The room goes silent. The barman shakes his head, slowly. You put the lid back on. The room resumes." },
          } },
      } },

    { name = "the regulars",
      description = "Six men and a dog at the long table, who have been having the same conversation since they were boys.",
      things = {
        { name = "a man explaining the weather",
          description = "He predicted rain for today. It is fine. He says it is raining somewhere, and that he never said where." },
        { name = "a card game",
          description = "Played with a deck of forty-nine. Everyone knows which three are missing and plays round them.",
          actions = {
            { "Ask to be dealt in", say "They deal you in. You lose a button, your second-best bootlace, and a promise. They are very nice about it." },
          } },
        { name = "the dog under the table",
          description = "Grey at the muzzle, asleep across eleven feet." },
        { name = "an empty stool",
          description = "Old Tom's. He died on a Tuesday. Nobody sits there, and nobody has ever had to say so." },
      } },

    { name = "the dartboard",
      description = "Elm, soaked nightly. The wall round it has more holes in it than the board.",
      things = {
        { name = "a dart in the ceiling",
          description = "It has been there nine years. The thrower maintains it was a good throw, at the time." },
      },
      actions = {
        { "Throw a dart", say "It lands in the wall, among friends." },
      } },

    { name = "the tavern cat",
      icon = "c",
      description = "Black, one-eyed, called Bailiff. He sleeps on the bar in the one place a mug needs to go.",
      actions = {
        { "Move him", say "You lift him. He stays the same shape. You put him down a foot along, and he is back in the place before your hands are clear." },
      } },

    { name = "a minstrel",
      icon = "♪",
      description = "In the corner, tuning a lute. He knows one song, about a hero who slew a dragon, and has been asked not to sing it while the party is in.",
      things = {
        { name = "his lute", description = "Five strings and a bootlace. The bootlace is the one in tune." },
        { name = "his hat, for coins", description = "It holds a button and a boot. He is hoping for the other boot." },
      },
      actions = {
        { "Request the song", say "He gets four words in. The dwarf, without looking round, throws a boot. The minstrel catches it and puts it in the hat." },
      } },

    { name = "the stairs",
      description = "Four up to the guest room, then twelve more to the landing, each with a note of its own.",
      actions = {
        { "Creep up them", say "You could not wake more people with a trumpet." },
      } },

    { name = "the tavern sign, from behind",
      description = "You can see the back of it through the fanlight: a griffon holding a tankard, falling over. The front, you recall, is the same picture, but the griffon looks pleased." },

    { name = "the kitchen door",
      description = "Behind the bar, swinging. Each swing lets out heat, steam, and half a sentence in a woman's voice. The halves do not go together and you would not want them to." },

    { name = "the beams",
      description = "Black oak, low enough to have opinions about tall customers.",
      things = {
        { name = "the notches",
          description = "One for every adventurer who has hit their head on the way to the bar. They are in groups of five. There are a great many groups." },
        { name = "a horse brass",
          description = "Nailed up for luck, a sun with a face. The face has seen the stew." },
      } },
  },

  exits = {
    { to = "village_square" },
    { to = "griffon_kitchen", description = "Through the swinging door behind the bar, into the heat." },
    { to = "griffon_landing", description = "Up all sixteen stairs, announcing yourself on each." },
    { to = "griffon_cellar", label = "The trapdoor",
      description = "A trapdoor with a brass ring, worn smooth by a boot that is usually standing on it.",
      requires = flag "bed_broken",
      locked = "the barman is standing on it" },
  },
}
