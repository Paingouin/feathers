space {
  id = "old_mine",
  region = "grumbles",
  name = "The Longshift Mine",
  description = "Past the gate the tunnel is square, dry and exact, cut by people who measured twice and then cut for a thousand years. Your lantern finds rails, props, and tools hung in order of size. Nobody is here. Everything is ready for them.",
  palette = { bg = "#0e0c0a", text = "#cfc8bc", dim = "#6e665a", accent = "#e0a050", border = "#40362a" },
  ambience = {
    flicker { color = "#e0a050", strength = 0.12 },
    dust { glyphs = "·˙", color = "#5e5446", rate = 0.2, speed = 0.2 },
  },

  things = {
    { name = "the gate sign",
      description = "Runes hammered in iron and, underneath, for visitors, a translation: {b}SHUT. BACK SOON.{/} The rust on it is older than Aldmoor. Soon is a dwarf word." },
    { name = "the tool wall",
      description = "Picks in a row, smallest to largest, each on its peg with its outline painted on the wall behind it. One outline has no pick.",
      things = {
        { name = "the empty outline", description = "A small pick, by the shape. Under it, in chalk, in a hand that presses hard: {b}WHO.{/}" },
        { name = "a coil of rope",
          key = "mine rope",
          visible_if = no(flag "rope_taken"),
          description = "Tarred hemp on a peg with a rune over it. It was coiled by an expert, and has stayed coiled out of respect.",
          actions = {
            { "Take the rope", give "rope", set "rope_taken",
              say "You lift it down. Painted on the wall behind it is the outline of a coil of rope. You can feel the outline looking at you all the way to the gate." },
          } },
      } },
    { name = "the ore cart",
      description = "An iron tub on four wheels, at the top of a pair of rails that go down into the dark at an angle you would call ambitious. There is a brake lever. It has a dwarf's amount of handle and a troll's amount of rust." },
    { name = "the cage",
      key = "cage",
      description = "An iron cage over a shaft, on a chain as thick as your leg. A plate beside it lists the levels in runes. The lowest is not a rune. It is a scratch, as though the engraver's hand slipped, or stopped.",
      variants = {
        { when = flag "cage_down",
          description = "An iron cage over a shaft, on a chain as thick as your leg, with its door standing open. On the plate beside it, the lowest level is not a rune. It is a scratch." },
      },
      actions = {
        { "Pull the lever", when = no(flag "cage_down"), set "cage_down", fx "shake",
          say "A counterweight goes up past you in the dark, unhurried. The cage door opens. After a thousand years, on the first pull. You would like the dwarves to know that you noticed." },
      } },
    { name = "a lunch pail",
      description = "Tin, on a bench, with a rune on the lid. Inside: a crust, a rind, and a pickled thing that has had a thousand years to get stronger. {danger}Do not.{/}",
      actions = {
        { "Sniff it", say "Your eyes shut on their own. When they open the lid is back on. You do not remember doing that." },
      } },
  },

  exits = {
    { to = "high_col", description = "Out through the gate, to wind and daylight." },
    { to = "sky_seam", label = "The cage",
      description = "Down the shaft on a thousand-year-old chain, to the level with no name.",
      requires = flag "cage_down", hidden = true },
    { to = "aldmoor_gate", label = "The ore cart", set "cart_ridden", fx "shake",
      say "You let off the brake. What follows is a long dark mile that you experience mainly as a noise, most of it yours. Then daylight, a bang, and a turnip.",
      description = "Down the rails in an iron tub, to wherever the dwarves sent their ore. There is a brake. It is ornamental." },
  },
}

space {
  id = "sky_seam",
  region = "grumbles",
  secret = true,
  wonder = true,
  name = "The Bottom Level",
  description = "The cage stops where the shaft does. One short gallery, the props still pale and new. At the end of it the dwarves broke through, and put down their tools, and went home. You can see why. {magic}There is sky down here.{/}",
  palette = { bg = "#0a0c18", text = "#c8cee0", dim = "#5c648a", accent = "#8fa8f0", border = "#2c3668" },
  ambience = {
    stars { color = "#8fa8f0", rate = 0.3 },
    shimmer { color = "#8fa8f0", strength = 0.2 },
  },

  things = {
    { name = "the breach",
      key = "breach",
      wonder = true,
      icon = "◊",
      description = "A hole in the rock face the size of a door, the pick marks still sharp around it. Beyond it there is no more mountain. There is blue: a deep late-evening blue, going down, with a slow cloud in it a long way below your boots. Air comes up through the hole. {shimmer}It is warm, and smells of rain on a summer field.{/}",
      variants = {
        { when = visited "lake_island",
          description = "A hole in the rock face the size of a door, the pick marks still sharp around it. Beyond it there is no more mountain. There is blue, going down, with a slow cloud a long way below your boots. You have seen that cloud. You rowed over it, on Lake Perhaps, and it was below you then too. {shimmer}The air coming up is warm, and smells of rain on a summer field.{/}" },
      },
      things = {
        { name = "the cloud", description = "Small, pink underneath, in no hurry. It is lit from below." },
        { name = "a star", description = "One, already out. It is straight down." },
      },
      actions = {
        { "Drop a pebble", say "It falls out of the mountain and into the evening, and gets small, and you do not hear it land. You had not really expected to." },
        { "Lean out", fx("wash", "#8fa8f0"),
          say "You hold the rock with both hands and put your head into somebody else's weather. The mountain has no underneath. There is only down, and it is beautiful, and you come back in quite quickly." },
      } },
    { name = "the last pick",
      description = "Leaning on the wall where its owner stood it. The small one, from the empty outline upstairs. It was the apprentice who broke through." },
    { name = "a chalk mark",
      description = "On the last prop, in runes, with a translation scratched under it by some later visitor: {i}NO MORE DOWN. DOWN HAS RUN OUT.{/}" },
    { name = "a barrier",
      description = "A plank across the gallery at dwarf chest height, which is your knee. One rune is painted on it. You do not read runes. You can read that one." },
  },

  exits = {
    { to = "old_mine", label = "The cage", description = "Up the shaft, to rock on every side, which you find you have missed." },
  },
}
