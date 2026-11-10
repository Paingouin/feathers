space {
  id = "second_cove",
  region = "saltwick",
  name = "The Cove of Second Thoughts",
  description = "A notch in the cliffs with a floor of wet shingle that is not usually a floor. The rock is green to twice your height, which is how deep you would be standing on any other day. It is very quiet. The sea is a long way off, and you keep checking.",

  things = {
    { name = "the high-water mark",
      description = "A line on the cliff well over your head: weed below, bare rock above. Somebody has cut a notch at it, and a date. Higher up there is a second notch, and the words {whisper}spring tide, and what a day{/}." },
    { name = "a mooring ring",
      description = "Iron, set in the rock eight feet up, and bright where a rope has run through it. Recently. Fishing boats do not come here." },
    { name = "the weed",
      key = "weed curtain",
      description = "A fall of bladderwrack down the back wall of the cove, thick as a carpet. When the air moves, the rest of the weed in the cove swings out. This swings {i}in{/}.",
      variants = {
        { when = flag "weed_parted",
          name = "a gap in the weed",
          description = "Held aside on a hook somebody fixed there for the purpose. Behind it: a cave mouth, a draught, and a smell of tar and brandy." },
      },
      actions = {
        { "Part the weed", when = no(flag "weed_parted"), set "weed_parted",
          say "Wet, heavy, and there is no rock behind it. There is a hook to hold it back. People have gone to some trouble here." },
      } },
    { name = "the limpets",
      description = "Each on its own worn spot. They have been told the sea is coming back, and are prepared to wait." },
    { name = "a stranded jellyfish",
      description = "A clear dome on the shingle with four purple rings. {danger}It stings{/}, says every instinct you have. At present it is busy being a puddle.",
      actions = {
        { "Poke it with a stick", say "It wobbles. Nothing else. You have menaced a pudding." },
      } },
  },

  exits = {
    { to = "long_strand", description = "Back over the rocks, with an eye on the horizon." },
    { to = "sea_cave", label = "Behind the weed",
      description = "Through the gap, into the dark and the smell of tar.",
      requires = flag "weed_parted", hidden = true },
  },
}

space {
  id = "sea_cave",
  region = "saltwick",
  secret = true,
  name = "The Smugglers' Hole",
  description = "A sea cave, dry at the back, with a shelf of rock for a quay and a rowing boat hauled up on it. Kegs, bales, a lantern, a rota. Somebody runs a quiet business out of the sea here, and keeps it tidy.",
  variants = {
    { when = visited "smugglers_vault",
      description = "A sea cave, dry at the back, with a shelf of rock for a quay and a rowing boat hauled up on it. Kegs, bales, a lantern, a rota. The vault under Aldmoor turns out to have a seaside branch." },
  },
  palette = { bg = "#0a0e10", text = "#c0c8c4", dim = "#5a6864", accent = "#e0b060", border = "#3a4640" },
  ambience = {
    drip { glyphs = "⠁⠂⠄⡀", color = "#4f7f8a", rate = 0.4 },
    flicker { color = "#e0b060", strength = 0.15 },
  },

  things = {
    { name = "the boat",
      description = "Black, tarred, the oars wrapped in rag to keep them quiet. The old name has been painted out and a new one painted over it: {i}Nothing To Declare{/}." },
    barrel { name = "a keg", description = "Chalked {i}VINEGAR{/}. A second hand has added {i}(the good){/}." },
    { name = "the rota",
      description = "Pinned to a bale. {i}Mon: Dob. Tues: Dob. Weds: Dob (Kev poorly). Thurs: Kev, with Dob.{/} At the bottom, {i}No landings till the tide is fixed{/} has been crossed out, and under it, in a hurry: {i}It is OUT. We can walk it. Bring the cart.{/}" },
    { name = "the lantern",
      description = "Shuttered on three sides, so that it shines only out to sea. Lighthouses are for people with nothing to hide." },
    { name = "an old carving",
      description = "Above the tunnel mouth, older than tar and brandy: a row of small curved marks, cut deep. Waves, or wings. They run along the wall at the exact height of the highest tide.",
      variants = {
        { when = visited "great_drain",
          description = "Above the tunnel mouth, older than tar and brandy: a row of small curved marks, cut deep. The same marks run the length of the Great Drain, at the height of a raised hand. Here they keep to the height of the highest tide. Whoever cut them walked from there to here, or the other way." },
      } },
    { name = "the tunnel",
      description = "A passage cut into the back of the cave, climbing inland, with a rope along the wall and cart ruts in the floor." },
  },

  exits = {
    { to = "second_cove", description = "Out past the weed, into the light." },
    { to = "smugglers_vault", label = "The tunnel", set "sea_tunnel",
      description = "Up and inland by the cart ruts, a long dark mile, to wherever the brandy goes." },
  },
}
