space {
  id = "castle_dungeon",
  region = "castle",
  name = "The Dungeons",
  description = "Forty steps down, the castle keeps its word about dungeons: black stone, iron rings, a brazier, a rack. Then you look again. The rings have coats on them. Somebody has put a rug down.",
  palette = { bg = "#0b0b0e", text = "#c4c2c0", dim = "#64626a", accent = "#d08a50", border = "#3a343a" },
  ambience = {
    drip { glyphs = "⠁⠂⠄⡀", color = "#56607a", rate = 0.2 },
    flicker { color = "#d08a50", strength = 0.12 },
  },

  things = {
    { name = "Grist",
      key = "jailer",
      description = "The jailer: a broad man with a ring of keys and a mug. His were the eyes at the slot. The rest of him is less alarming, and he knows it, which is why there is a slot.",
      actions = {
        { "Show the warrant", say "He reads it twice. \"Doesn't say what for.\" He holds it to the brazier. \"That's his thumb, though. That's garden.\" He hands it back with something close to respect. \"Look at what you like. Don't feed Pelham, he's had his.\"" },
        { "Ask who is locked up", say "\"Locked,\" he says, and laughs, and stops when he sees that you mean it. \"There's the one. His door's been open since the old King died. He likes it shut at night. I shut it.\"" },
      } },
    { name = "the rack",
      description = "The real thing: oak, rollers, a wheel with handles. There are shirts on it.",
      things = {
        { name = "the shirts", description = "Drying. The rack gives a very even stretch. The whole guardroom sends its linen down." },
      },
      actions = {
        { "Turn the wheel", say "A sleeve gets slightly longer. Grist takes your hand off the wheel, gently, as you would with a child at a loom." },
      } },
    { name = "the Royal Torturer",
      key = "torturer",
      description = "A thin man in a leather apron, at a desk, filling in a form. The post is hereditary and has not had a client in sixty years. Every quarter he must account for that in writing, to an office that does not answer. It has done to him what he is not allowed to do to anybody else.",
      things = {
        { name = "his instruments", description = "Laid out on a cloth: oiled, sharp, labelled. One of them is in use, as a paperweight." },
      },
      actions = {
        { "Ask what the form is", say "\"Form 12: Nil Return, Torments.\" He turns it so that you can see. Sixty years of them, his and his father's, each saying {i}none{/}. \"If I miss a quarter,\" he says, \"they send an inspector. To see why I am not doing it properly.\"" },
      } },
    { name = "the end cell",
      key = "end cell",
      description = "The door is open. Inside: a bed with a quilt, a shelf of books, a geranium in the window slit, and a small old man in a chair with a napkin tucked into his collar.",
      things = {
        { name = "Old Pelham",
          key = "pelham",
          description = "Put in thirty-four years ago, over a duck. Sentence: twenty years. He has done the sum. He has decided not to bring it up, in case they notice.",
          actions = {
            { "Ask about the duck", say "\"It was the Chancellor's duck,\" he says, \"and it was my pond. That's all I'll say. The duck knows what it did.\"" },
            { "Admire the cell", when = no(flag "knows_tunnel"), set "knows_tunnel",
              say "You say that it is the nicest room you have seen in the castle, and it is. Pelham goes pink. \"You've not seen the best of it.\" He gets up, shifts the bed a foot to the left, and lifts the rug. \"Twenty years, with a spoon. Go on. Mind the bend, I went round a pipe.\"" },
          } },
        { name = "the geranium", description = "Red, in a cracked mug, turned daily towards the slit. It gets an hour of sun at midsummer and makes it last." },
        { name = "the spoon", description = "On the shelf, in the place of honour. Pewter. The bowl is worn down to a crescent the width of a fingernail." },
      } },
    { name = "the hole in the floor",
      description = "A round hole in the lowest passage, with its iron grille hinged back and a ladder going down. No light goes down with the ladder. The torches on the wall lean, very slightly, the other way.",
      actions = {
        { "Call down", say "Your voice goes in and is not sent back. It has not been lost. It has been kept." },
      } },
  },

  exits = {
    { to = "castle_bailey", description = "Up forty steps and out through nine bolts." },
    { to = "spoon_tunnel", label = "Under Pelham's rug",
      description = "Down through the floor of the end cell, by invitation.",
      requires = flag "knows_tunnel", hidden = true },
    { to = "oubliette", label = "The hole in the floor",
      description = "Down the ladder, with a light of your own.",
      requires = item "lantern",
      locked = "it is dark down there in a way the torches do not wish to discuss" },
  },
}

space {
  id = "spoon_tunnel",
  region = "castle",
  secret = true,
  name = "Pelham's Tunnel",
  description = "A tunnel one old man wide, dug with a spoon. You can tell: the walls are scalloped all the way along, each scoop the size of a mouthful, twenty years of them. It is neat. It is swept. Halfway along there is a mat.",
  palette = { bg = "#100e0c", text = "#cac4b8", dim = "#6c665c", accent = "#c8a878", border = "#40382c" },

  things = {
    { name = "the scallops",
      description = "You try to count the ones within reach and give up after three hundred. Each was a morning's work. Not one is careless." },
    { name = "the bend",
      description = "Here the tunnel meets a lead pipe and goes round it, respectfully, in a curve. The pipe is warm. It runs to the kitchens." },
    { name = "the mat",
      description = "Plaited rush, with {i}WIPE{/} worked into it. He is a guest at the other end, and behaves like one." },
    { name = "a tally",
      description = "Scratched lines, in fives, for yards. Near the far end they stop, and there is one word: {i}PIE.{/}" },
    { name = "the far end",
      description = "The tunnel comes up under a flagstone. Pelham dug towards freedom for twenty years, and missed, and came up at two in the morning in the castle pantry, under a shelf of pies. He sat there until it began to get light. Then he took one pie, the smallest, and went home." },
  },

  exits = {
    { to = "castle_dungeon", label = "Pelham's cell", description = "Back to the rug, the quilt and the geranium." },
    { to = "castle_kitchens", label = "The flagstone", description = "Up into the pantry, among the pies. Take nothing. He has an arrangement." },
  },
}

space {
  id = "oubliette",
  region = "castle",
  wonder = true,
  name = "The Oubliette",
  description = "The ladder ends on a floor of dust. This is where the kingdom put what it wished to forget, and it was never people. Your lantern finds them one at a time: the things that were dropped down the hole, struck off the lists, and not mentioned again. {magic}They are all still here. Nobody told them.{/}",
  palette = { bg = "#08090e", text = "#bcc0cc", dim = "#565a70", accent = "#9a8fd0", border = "#2a2c48" },
  ambience = {
    dust { glyphs = "·˙", color = "#444860", rate = 0.2, speed = 0.1 },
  },

  things = {
    { name = "a statue with no name",
      description = "A king in marble, twice life size, lying on his side where he landed. The name on the plinth has been chiselled off, and the number, and the dates. Whoever did it left the face. It is a mild face. He would like to know what he did.",
      actions = {
        { "Dust him off", say "You clean the marble with your sleeve, as far up as you can reach. It makes no difference to history. He is a little easier to see." },
      } },
    { name = "a crate of hats",
      description = "Tall, pointed, with a bell on the end. They were the fashion for one season, two hundred years ago, and were then banned by statute, with penalties. You look at one. You understand the statute.",
      actions = {
        { "Try one on", say "The bell rings. Up in the Great Hall a duchess shudders, and does not know why." },
      } },
    { name = "a portrait, face to the wall",
      description = "A big canvas leaning on its face against the stone. On the back, in chalk: {b}NO.{/}",
      actions = {
        { "Turn it round", say "You get one corner an inch from the wall. A painted eye looks out through the gap, with great interest. You put the corner back. The chalk was right." },
      } },
    { name = "a music box",
      description = "The last copy of a song that was forbidden for being too easy to remember. The lid is wired shut and sealed by three archbishops.",
      actions = {
        { "Hum near it", say "The box hums the next bar. It is in your head now, and will be for a week. This is why." },
      } },
    { name = "the repealed Thursday",
      key = "thursday",
      wonder = true,
      description = "A calendar leaf the size of a door, on good vellum, in a frame. One Thursday in a spring three reigns ago, on which something happened at court. The day was repealed by decree and taken out of the week, and the histories go from Wednesday to Friday without a mark. Here it is. {magic}It is still that afternoon inside the frame.{/} The light on the vellum falls from a window that is not down here.",
      actions = {
        { "Hold a hand to it", fx("wash", "#e0c890"),
          say "Sun, on the back of your hand, at the bottom of a hole in the ground. It is a warm day in there. Whatever happened on it, the weather was not to blame." },
      } },
    { name = "the first stone",
      key = "first stone",
      wonder = true,
      description = "Low in the far wall, where the foundations go into the hill, there is one stone unlike the rest. The masons built on it and round it and did not cut it. It was here when they came. There is a single curved line in its face, worn nearly smooth, and nothing else. Nobody dropped this one down the hole. {magic}Everything else was put on top of it, and that did as well.{/}",
      variants = {
        { when = item "signet_ring",
          description = "Low in the far wall, where the foundations go into the hill, there is one stone unlike the rest. The masons built on it and round it and did not cut it. It was here when they came. There is a single curved line in its face, worn nearly smooth. You take the ring out of your pocket and hold it up. It is the same line. {magic}Nobody dropped this one down the hole. Everything else was put on top of it, and that did as well.{/}" },
      },
      actions = {
        { "Touch it", say "Cold, as stone is. You had expected something. You find that you are standing quite still anyway." },
      } },
  },

  exits = {
    { to = "castle_dungeon", label = "The ladder", description = "Up, to torches, shirts and a man with a mug. You are surprised how glad you will be of them." },
  },
}
