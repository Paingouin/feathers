space {
  id = "mill_lane",
  region = "greenhollow",
  name = "Miller's Lane",
  description = "A rutted lane, a millstream, and a windmill turning steadily on a day with no wind at all. Nobody here thinks this worth mentioning.",

  things = {
    { name = "the windmill",
      wonder = true,
      icon = "✶",
      description = "Its sails go round against the breeze, unhurried, {shimmer}as if stirring something very large and very slow{/}. Ask the miller why and he will say: it always has.",
      things = {
        { name = "the sails", description = "Patched canvas. They cast a shadow that arrives slightly before they do." },
        { name = "the mill door", description = "Locked. From inside comes the sound of grinding, though the hopper has been empty since harvest.",
          actions = { { "Knock", say "The grinding pauses. Then, politely, resumes." } } },
      },
      actions = {
        { "Wet a finger and test the wind", say "Nothing. Not a breath. The sails go round anyway, and you put your finger away." },
      } },
    { name = "the miller",
      description = "A man the colour of flour, including, somehow, his eyes.",
      actions = {
        { "Talk", say "\"Flour's flour,\" he says, as though settling a long argument." },
        { "Ask about the windmill", say "\"Turns,\" he says. You wait. That was the whole answer." },
      } },
    { name = "the miller's cat",
      icon = "c",
      description = "Asleep on a sack in a patch of sun that has no business being that shape.",
      actions = {
        { "Stroke it", say "It permits four strokes. The fifth is a matter for the courts." },
      } },
    { name = "flour sacks",
      description = "Stacked like a fortification. One has a boot print on it, pointing up.",
      things = {
        { name = "the boot print", description = "Just the one, halfway up the stack. Whoever made it did not make a second." },
      } },
    { name = "the millstream",
      description = "Clear, quick, and running, if you watch a leaf go by, very slightly uphill.",
      actions = {
        { "Float a leaf", say "It sails off towards the hills with enormous confidence." },
      } },
  },

  exits = {
    { to = "village_square" },
    { to = "barley_road", description = "A footpath along the stream, joining the road beyond the last hedge." },
    { to = "wood_edge", description = "Upstream, which here means uphill, to where the trees begin and the muttering starts." },
  },
}
