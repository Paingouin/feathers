-- Things that turn up again and again. Define once, stamp anywhere:
--   candle()                             a plain one
--   candle { description = "..." }       same, with something replaced

candle = blueprint {
  name = "a candle",
  icon = "¡",
  description = "It burns with the quiet smugness of all candles.",
  things = {
    { name = "a drip of wax", description = "Still warm. Don't." },
  },
  actions = {
    { "Blow it out", say "It goes out. It comes back. Somebody paid extra for these.", fx "sparkle" },
  },
}

barrel = blueprint {
  name = "a barrel",
  icon = "Θ",
  description = "A barrel. In stories there is always something in the barrel.",
  actions = {
    { "Knock on it", say "It sounds full. Of what, the barrel declines to say." },
    { "Hide in it", say "You try. You are discovered immediately, by yourself." },
  },
}

rat = blueprint {
  name = "a rat",
  icon = "r",
  description = "Sleek, unhurried, and visibly doing better than you are.",
  actions = {
    { "Shoo it", say "It considers the request and files it." },
    { "Befriend it", say "It accepts your friendship as a cat accepts a compliment." },
  },
}

guard = blueprint {
  name = "a town guard",
  icon = "♜",
  description = "A helmet with a man in it. The helmet is the senior partner.",
  things = {
    { name = "his halberd", description = "Mostly used for leaning." },
    { name = "his moustache", description = "Regulation length. He has checked." },
  },
  actions = {
    { "Salute", say "He salutes back, then looks annoyed at having done it." },
    { "Ask for directions", say "\"That way,\" he says, pointing at everything." },
  },
}
