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
    { name = "a hole among the barley",
      visible_if = visited "hollow_oak",
      description = "Where you came out, on your elbows. From this side it is plainly a fox's front door, and it slopes the wrong way for anyone without four legs and a low opinion of you." },
    { name = "a milestone",
      description = "{i}ALDMOOR 3{/}. Somebody has scratched {i}still{/} after it." },
    { name = "a tinker",
      description = "Sitting on the bank with his pack open, eating bread. He sells ribbons, needles and news.",
      things = {
        { name = "his pack",
          description = "Ribbons, a mousetrap, a tin whistle, and a charm against geese, untested.",
          things = {
            { name = "the charm against geese", description = "A blue bead on a string. He has sold eleven in Greenhollow. He has never been back the same way twice." },
          } },
      },
      actions = {
        { "Ask the news", say "\"Star fell on Hobmoor. King's in a meeting. Price of turnips is up, on account of the star.\" He chews. \"That'll be a ha'penny.\" You have not got one. \"Then you never heard it,\" he says." },
      } },
    { name = "a farmer at a gate",
      description = "Giles Furrow, leaning, watching the barley grow. It is his job, and he is good at it.",
      actions = {
        { "Ask about the whispering", say "\"It's saying barley,\" he says. \"What else does it know?\"" },
        { "Ask about the star", say "\"Went over my head. Green. Took the top off the hedge.\" He points north with his pipe. \"Holloway got it. Typical. I've the better field.\"" },
      } },
    { name = "a singed hedge",
      description = "The top of the hawthorn is burned off in a clean line, all at one angle, pointing north over the rise towards the moor." },
    { name = "a stile",
      description = "Into the north field, where a green track sets off over the rise. The top bar is polished by drovers and, on the far side, sheep." },
    { name = "poppies",
      description = "Red, in a scatter at the field's edge, where the plough turned.",
      things = {
        { name = "a field mouse", description = "Halfway up a barley stalk, which is bending. It has a grain in both hands and a decision to make." },
      } },
    { name = "the ditch",
      description = "A dry ditch with a wet bottom. Something plops.",
      things = {
        { name = "a grass snake", description = "Olive, with a yellow collar, sunning on the bank. It leaves without hurry when you look, and the grass closes over the place." },
      } },
    { name = "the wheel ruts",
      description = "Two, deep, with grass between. In the grass a line of barley has seeded from a split sack and come up in single file, all the way to town." },
    { name = "the sky",
      description = "A great deal of it. One cloud, shaped like nothing.",
      actions = {
        { "Lie on the verge and watch", say "You watch the cloud for a quarter of an hour. It is the most restful thing you have done since you became an adventurer, this morning." },
      } },
    { name = "a skylark",
      description = "A dot, very high, pouring out song. You cannot find it until it stops, and then it drops into the barley and is nowhere." },
  },

  exits = {
    { to = "moor_road", description = "Over the stile and north by a green drovers' track onto Hobmoor, where a star came down eleven days ago. The heather is singed in a straight line all the way." },
    { to = "village_square", description = "The village, already looking smaller and slightly offended." },
    { to = "mill_lane" },
    { to = "aldmoor_gate" },
  },
}
