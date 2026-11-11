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

    { name = "a carter with a wheel off",
      description = "A wagon of turnips, down on one corner, and a man sitting on the shaft looking at the wheel in the ditch. He is Holloway's carter, bound for Aldmoor market with the first load since the star.",
      things = {
        { name = "the turnips", description = "Ordinary, purple topped. Each one has been chalked with a small star, to put the price up. The carter says they came from the next field but one, and that the public is not to know that." },
        { name = "the wheel", description = "Lying flat in the ditch with a grass snake coiled in the hub. Neither the carter nor the snake is in any hurry about this." },
        { name = "the carthorse's nosebag", description = "Oats, and the horse's whole face. It has been told they will be here a while and has made itself comfortable." },
      },
      actions = {
        { "Offer to help lift", say "You get your shoulder under the axle and heave. The wagon does not move. The carter gets his shoulder under, beside yours, and it goes up like a lid. \"There,\" he says kindly. \"Couldn't have done it without you.\" The horse looks round at this, and then at you, and goes back in the bag." },
      } },
    { name = "a wayside shrine",
      description = "A niche of stones at the field corner, knee high, with a slate roof. Inside is a figure so worn that it might be anyone. Travellers leave something, going out.",
      things = {
        { name = "the offerings", description = "A bootlace. A crust. A bent nail. Eleven identical blue beads on strings, left by people who had just bought a charm against geese and thought better of relying on it alone." },
        { name = "the figure", description = "A lump of grey stone with a suggestion of shoulders. The farmers say it is Saint Wobble, before she was famous. One side of the base is worn, as if she had been leaning even then." },
      },
      actions = {
        { "Leave something", say "You have a coin and an onion and you need both. You leave a promise, said aloud, which costs nothing now. The figure has heard a great many of those, and has an air of keeping accounts." },
      } },
    { name = "a shepherd and his flock",
      description = "Coming the other way, filling the road hedge to hedge: forty ewes, a dog, and an old man walking behind with a crook, in no hurry at all.",
      things = {
        { name = "the sheepdog", description = "Black and white, low to the ground, working the flock with its eyes. It looks at you once. You step onto the verge. You had not decided to." },
        { name = "a black lamb", description = "One, in the middle, going sideways for the fun of it. Every flock has to have one, the shepherd says, or the others would not know they were white." },
      },
      actions = {
        { "Wait for them to pass", say "It takes a quarter of an hour. Each ewe looks at you as she goes by, and each says the same thing. At the end the shepherd nods. \"Adventurer?\" Yes. \"Ah.\" He looks at his sheep, and at you, and you understand that you have been counted in with something." },
      } },
    { name = "a harvest mouse's nest",
      description = "A ball of woven barley leaf, the size of an apple, slung between three stalks a foot off the ground. It sways when the field sways. There is no door. She goes in through the wall and it closes after her.",
      actions = { { "Look closely", say "The leaves have been shredded lengthways while still growing, and plaited, so the nest is alive and green and part of the field. Inside, something the weight of a halfpenny turns over. You withdraw, on tiptoe, from a house." } } },
    { name = "an eel man with a barrow",
      icon = "☺",
      description = "A short brown man in thigh boots, wheeling a flat barrow with a wet sack over it, coming the other way. He is from the fen beyond the wood and has walked two days to sell smoked eel in Aldmoor market. He walks as if the road might give under him, testing each step, though it has been dry since Easter.",
      things = {
        { name = "the barrow", description = "No sides, and one wide wheel like a drum. It is built not to sink. On a hard road it is the most ridiculous thing you have seen. He says where he comes from it is the roads that are ridiculous." },
        { name = "under the sack", description = "Gold eels, packed in rushes, a hundred or so. And at the front, wrapped separately in a dock leaf, one cabbage. That is not for sale. That is going home." },
      },
      actions = {
        { "Ask where he is from", say "\"Much Wavering.\" You say you have not heard of it. \"No,\" he says, \"it's moved.\" He looks at the barley on both sides, standing in dry ground as far as he can see, and shakes his head slowly. \"All this,\" he says. \"And none of it floats.\"" },
      } },
  },

  exits = {
    { to = "moor_road", description = "Over the stile and north by a green drovers' track onto Hobmoor, where a star came down eleven days ago. The heather is singed in a straight line all the way." },
    { to = "village_square", description = "The village, already looking smaller and slightly offended." },
    { to = "mill_lane" },
    { to = "aldmoor_gate" },
  },
}
