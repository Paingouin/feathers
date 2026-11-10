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

    { name = "the mill pond",
      description = "Above the weir the stream widens and goes dark and slow.",
      things = {
        { name = "a pike",
          description = "A long shadow under the lily pads, perfectly still. It is known as the Magistrate. The ducklings are counted nightly." },
        { name = "water lilies",
          description = "White, open, each with a beetle in it, like a guest in a hotel." },
        { name = "a heron",
          description = "Grey, on one leg, at the edge. It has been about to strike since you arrived. The fish knows. They are both prepared to wait." },
      },
      actions = {
        { "Skim a stone", say "Three bounces. On the fourth it goes slightly up, in keeping with the stream, and you and the pond both pretend not to have seen." },
      } },
    { name = "the footbridge",
      description = "Two planks and a rail. The rail is on the upstream side, which here is the side you would fall." },
    { name = "the miller's cart",
      description = "Loaded with sacks for Aldmoor, shafts down, waiting for Captain.",
      things = {
        { name = "a sack with a hole",
          description = "Leaking flour in a thin line down the lane.",
          things = {
            { name = "the sparrows", description = "Nine of them, following the line of flour at a walk, with the look of an audience that has seen the play before and still likes it." },
          } },
      } },
    { name = "the miller's house",
      description = "Stone, beside the mill, white in every crack.",
      things = {
        { name = "the miller's wife",
          description = "Mrs Grist, at the door, shaking out a cloth. A cloud comes off it. She is the only one in the lane who is not the colour of flour, and she works at it.",
          actions = {
            { "Ask about the mill", say "\"It grinds,\" she says. \"He says don't ask what, so I don't. Forty years. We've never run short and we've never bought grain.\" She shakes the cloth again. \"I don't look in the hopper. It's a happy marriage.\"" },
          } },
        { name = "a pie on the sill", description = "Cooling. The crust was white going into the oven and is white coming out." },
        { name = "the doorstep", description = "Scrubbed daily. Floured hourly." },
      } },
    { name = "a retired millstone",
      description = "Leaning against the wall, cracked across. The furrows are worn to nothing in the middle.",
      things = {
        { name = "a snail", description = "Halfway across the stone, on a journey it began yesterday. It has not looked back once." },
      } },
    { name = "the hedgerow",
      description = "Hawthorn, bramble and dog rose, all holding each other up.",
      things = {
        { name = "blackberries",
          description = "The low ones are gone. The good ones are where they always are, a hand beyond where a hand goes.",
          actions = {
            { "Reach for the good ones", say "You get one. You pay for it with three scratches and a sleeve. On those terms it is the best blackberry anyone has ever eaten." },
          } },
        { name = "a wren", description = "The size of a thumb, with the voice of a bird six times that. It is telling you about the hedge." },
        { name = "a hedgehog", description = "A ball of spikes under the dock leaves, breathing. It has decided that you are not there." },
      } },
    { name = "the mill garden",
      description = "Beans in rows, and one bed kept apart under a net.",
      things = {
        { name = "the marrow",
          description = "Large. Not large enough: the miller has heard there is a bigger one, in a walled garden somewhere in Aldmoor, and it keeps him awake." },
        { name = "a bean row", description = "Up their poles and over the top, waving about for something further to climb." },
      } },
    { name = "a kingfisher",
      wonder = true,
      icon = "v",
      description = "On a willow twig over the stream. {magic}Blue past what blue is for.{/} It goes. You had it for one second, and you will be telling people about it for a week, and they will say yes, there is a kingfisher.",
    },
    { name = "the weir",
      description = "A lip of mossy stone where the pond lets itself down into the stream. The water goes over it and then, a yard on, appears to think better of the direction.",
      things = {
        { name = "an eel trap", description = "Wicker, long, empty. The eels here swim upstream to the hills and are not seen again. The miller has stopped taking it personally." },
      } },
  },

  exits = {
    { to = "village_square" },
    { to = "cabbage_row", description = "Up a path between garden walls, to the back of the village." },
    { to = "barley_road", description = "A footpath along the stream, joining the road beyond the last hedge." },
    { to = "wood_edge", description = "Upstream, which here means uphill, to where the trees begin and the muttering starts." },
  },
}
