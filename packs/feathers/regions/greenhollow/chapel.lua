space {
  id = "chapel",
  region = "greenhollow",
  name = "The Chapel of Saint Wobble",
  description = "A small stone chapel to Saint Wobble, patron of things that very nearly fell over. The roof is original. This is considered her chief miracle.",
  palette = { bg = "#0e0f14", text = "#cdc9c0", dim = "#6e6c74", accent = "#c9a8e8", border = "#3d3b4d" },
  ambience = { dust { glyphs = "·˙∙", color = "#6a6478", rate = 0.6 }, flicker { color = "#e8c070", strength = 0.2 } },

  things = {
    { name = "the altar",
      description = "A slab on four legs, one shorter than the others. It has been about to tip for three hundred years.",
      things = {
        candle(),
        candle { name = "a second candle", description = "Leaning. In this chapel that is a form of prayer." },
        { name = "the offering bowl", description = "Two buttons, a bean, and an IOU from the priest to the saint." },
      },
      actions = {
        { "Steady it", say "You put a hand on it. The whole chapel seems to hold its breath. You take the hand away, carefully." },
      } },
    { name = "Father Dunstable",
      icon = "†",
      description = "Asleep in the front pew with the serenity of a man whose god asks only that he not fall off it.",
      things = {
        { name = "his sermon notes", description = "One line: {i}Brethren, we are all of us leaning.{/} Then a drawing of a duck." },
      },
      actions = {
        { "Cough politely", say "He stirs. \"...and so we see,\" he announces, and is asleep again before the end of it." },
        { "Ask for a blessing", say "Without waking, he raises a hand and tilts it from side to side. You feel, obscurely, propped up." },
      } },
    { name = "the east window",
      description = "Old glass, older than the saint. It shows a great bird asleep with its head under its wing, in colours nobody mixes any more. No one remembers who paid for it. The priest dusts it first.",
      actions = {
        { "Look closely", say "The leading is so fine you cannot find where one feather ends and the sky begins. You stand there longer than you meant to." },
      } },
    { name = "the bell rope",
      description = "It goes up through a hole in the ceiling. A sign says {whisper}DO NOT{/}, and the rest has been worn away by people who did.",
      variants = {
        { when = flag "rope_pulled",
          description = "Beside it hangs a rope ladder that was not there before. The sign now reads, in its entirety, {whisper}DO NOT{/}. You did." },
      },
      actions = {
        { "Pull it", when = no(flag "rope_pulled"), set "rope_pulled", fx "shake",
          say "You pull. Far above, a bell swings mightily and makes no sound at all. Then a rope ladder unrolls and hits you on the head, which does." },
        { "Pull it", say "The bell swings. Silence. You have the uneasy feeling you will hear it later." },
      } },
  },

  exits = {
    { to = "village_square" },
    { to = "bell_loft", description = "Up through the hole in the ceiling, into the dark and the smell of pigeons.",
      requires = flag "rope_pulled", hidden = true },
  },
}
