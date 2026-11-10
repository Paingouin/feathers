space {
  id = "barley_road",
  region = "greenhollow",
  name = "The Barley Road",
  description = "The road out. Barley on both sides, sky on top, and Aldmoor's walls ahead, getting larger at the speed of walking.",
  ambience = {
    dust { glyphs = "·∙˙", color = "#6f7448", rate = 0.6, speed = 1.4 },
    fireflies { glyphs = "✧·", color = "#d8e27a", rate = 0.35 },
  },

  things = {
    { name = "a signpost",
      key = "signpost",
      description = function(ctx)
        local seen = ctx:visited("aldmoor_gate")
        return "Two arms. One says {place}GREENHOLLOW{/} and has been corrected by hand to {whisper}WHY{/}. The other says {place}ALDMOOR{/}"
          .. (seen and ", which you can now confirm is true." or ", which you will have to take on trust.")
      end,
      actions = {
        { "Check which way it points", say "Both arms point along the road. It is a signpost for people who were already going." },
      } },
    { name = "a scarecrow",
      icon = "Ψ",
      description = "It wears a breastplate, one gauntlet, and a helmet with a dent in it. It is better equipped than you are.",
      things = {
        { name = "the dented helmet", description = "Inside the rim, a name scratched out, and under it another, and under that another." },
        { name = "a crow", description = "Sitting on the scarecrow's shoulder, entirely at ease. One of them is not doing its job." },
      },
      actions = {
        { "Challenge it to a duel", say "It declines, by continuing to be straw. You are fairly sure you would have won. Fairly." },
        { "Ask where it got the armour", say "The barley rustles. On reflection, you withdraw the question." },
      } },
    { name = "the barley",
      description = "Waist-high and whispering. If you listen, the whisper is mostly the word {whisper}barley{/}.",
      actions = {
        { "Walk into it", say "Three steps in, you can no longer see the road. Four steps in, you come out on the road again, facing the other way. Barley is like that here." },
      } },
  },

  exits = {
    { to = "village_square", description = "The village, already looking smaller and slightly offended." },
    { to = "mill_lane" },
    { to = "aldmoor_gate" },
  },
}
