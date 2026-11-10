space {
  id = "bell_loft",
  region = "greenhollow",
  secret = true,
  name = "The Bell Loft",
  description = "Rafters, pigeons, and a bell the size of a cow. From up here the whole village is one handful of roofs, and beyond it more world than you had planned for.",
  palette = { bg = "#0d0e15", text = "#c8c9d2", dim = "#666a7c", accent = "#9fb4e8", border = "#353a52" },
  ambience = { dust { glyphs = "·˙", color = "#5a5f78", rate = 0.5 }, stars { glyphs = "·∙✧", color = "#8f9fd0", rate = 0.2 } },

  things = {
    { name = "the bell",
      wonder = true,
      icon = "Ω",
      description = "Green bronze, crack-free, and silent when struck. The villagers say it rings {magic}yesterday{/}: that is why you sometimes wake sure you have just heard something.",
      things = {
        { name = "the clapper", description = "Wrapped in nothing. Muffled by nothing. It simply arrives at the bell and the sound goes somewhere else." },
        { name = "the founder's mark", description = "A date that has not happened yet, struck through, and an apology." },
      },
      actions = {
        { "Strike it", say "Nothing. Then you remember, quite clearly, hearing a bell on your way into the village this morning.", fx "wash" },
      } },
    { name = "the pigeons",
      description = "Forty or so, in rows, facing the bell like a congregation that has given up on the sermon.",
      actions = {
        { "Count them", say "Forty-one. No: forty. One of them was a particularly round shadow." },
      } },
    { name = "the louvred window",
      description = "Through the slats: the square, the mill turning in no wind, the long road, and a smudge of smoke where Aldmoor must be.",
      things = {
        { name = "the view of the goose", description = "A white dot in the square. It is facing the chapel. It is facing {i}up{/}." },
      } },
    { name = "an old nest",
      description = "Wedged in the highest rafter, far too big for a pigeon and far too old to say whose. It is lined with something that has kept its colour.",
      actions = {
        { "Reach for it", say "Your fingers stop a hand's width short. They would stop a hand's width short, you suspect, however long your arm." },
      } },
  },

  exits = {
    { to = "chapel", label = "The ladder down", description = "Down, rung by rung, into candle smoke." },
  },
}
