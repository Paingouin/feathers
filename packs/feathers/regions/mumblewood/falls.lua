space {
  id = "upward_falls",
  region = "mumblewood",
  wonder = true,
  name = "The Climbing Falls",
  description = "Here the millstream meets a cliff and, having come this far uphill, simply keeps going. The water climbs the rock in a long white rope, {shimmer}unhurried, roaring softly upwards{/}, and pours over the top out of sight.",
  palette = { bg = "#0a1113", text = "#c6d2cf", dim = "#62757a", accent = "#8fd6d0", border = "#2c4a4d" },
  ambience = {
    steam { glyphs = "·∙˙", color = "#7fa8a8", rate = 0.7, speed = 1.2 },
    shimmer { color = "#9fe0dc", strength = 0.2 },
  },

  things = {
    { name = "the plunge pool",
      description = "At the foot, where the water gathers itself before the climb. It is perfectly still. It is taking a breath.",
      actions = {
        { "Drop a pebble in", say "It sinks. A little later, some way up the falls, you see it go by." },
      } },
    { name = "the spray",
      description = "The only part that falls. It drifts down on you, slow as an afterthought." },
    { name = "a salmon",
      icon = "α",
      description = "Going {i}down{/} the falls, with enormous effort, against the current. It looks furious. Everything it was ever told has turned out to be backwards.",
      actions = {
        { "Cheer it on", say "It makes another yard downwards. You have never seen a fish look grateful, and you do not now." },
      } },
    { name = "the wet steps",
      description = "Cut into the cliff beside the water by somebody who wanted to walk up next to it. Each has a hollow worn in the middle. Many have.",
      things = {
        { name = "a handprint", description = "Pressed into the rock at the steepest step, at the height where anyone would steady themselves. The rock was not soft. The hand was patient." },
      } },
    { name = "a surveyor's stake",
      description = "Hammered in by the Royal Survey. The tag reads: {i}Waterfall. Direction: disputed. See appendix.{/}",
      things = {
        { name = "the appendix", description = "Nailed underneath. It reads, in full: {i}No.{/}" },
      } },
  },

  exits = {
    { to = "forest_path" },
    { to = "lake_shore", description = "Up the wet steps beside the water, to wherever it thinks it is going." },
  },
}
