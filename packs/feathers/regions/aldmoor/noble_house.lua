space {
  id = "noble_house",
  region = "aldmoor",
  name = "House Vaux-Pimbleton",
  description = "A drawing room upholstered in ancestors. There is a party in progress, in the sense that a glacier is in progress.",
  palette = { bg = "#120e12", text = "#d8ccc8", dim = "#7a6a70", accent = "#e0b060", border = "#4a3a44" },
  ambience = { flicker { color = "#ffcf80", strength = 0.25 }, dust { glyphs = "·˙", color = "#5c4c54", rate = 0.3 } },

  things = {
    { name = "the Baroness",
      icon = "♛",
      description = "Baroness Ottoline Vaux-Pimbleton: a great many pearls, arranged around a formidable absence of doubt.",
      actions = {
        { "Introduce yourself as Sir Aubrey", say "\"Aubrey! You've grown.\" She peers. \"Sideways, mostly. Do have a vol-au-vent.\" Evidently nobody here has ever looked at Sir Aubrey either." },
        { "Compliment the house", say "\"It has been in the family since we took it off the previous family,\" she says warmly." },
        { "Ask about her study", say "\"I have no study. I have never studied. Ask anyone.\" Her eyes go, for the length of a blink, to the bookcase." },
      } },
    { name = "the portrait gallery",
      description = "Eleven generations of Vaux-Pimbletons, each painted looking down at the one before.",
      things = {
        { name = "Lord Hubert the Unready", description = "Painted with one boot on. The other boot has its own, smaller portrait." },
        { name = "Lady Maud the Brief", description = "Baroness for one afternoon. She seems content with how it went." },
        { name = "a portrait turned to the wall", description = "The label reads {whisper}We do not discuss Cousin Ignatius{/}.",
          actions = { { "Turn it round", say "It is a painting of the back of a painting. Cousin Ignatius was thorough." } } },
      } },
    { name = "the harpsichord",
      description = "Played, presently, by a nephew who has been told he is musical.",
      actions = {
        { "Request a tune", say "He plays it. You would not have known it was that tune, and nor, by its expression, would the harpsichord." },
      } },
    { name = "the bookcase",
      description = "Floor to ceiling, leather and gilt. Every spine is dusty except one: {i}A Complete History of Drains{/}, which is polished with handling.",
      variants = {
        { when = flag "book_pulled",
          description = "It stands a hand's breadth out from the wall now, like a door pretending it isn't. Nobody at the party has noticed. Nobody at the party notices things." },
      },
      things = {
        { name = "A Complete History of Drains", visible_if = no(flag "book_pulled"),
          description = "Volume one of one. No one reads about drains for pleasure. Someone has read this a great deal.",
          actions = {
            { "Pull it", set "book_pulled", fx "shake",
              say "The book tips, something behind the wall says {i}clunk{/}, and the whole bookcase eases outward. The harpsichord covers the noise, which is the first useful thing it has done." },
          } },
        { name = "the other books", description = "Bought by the yard. Several are the same book. One is a block of wood, bound." },
      } },
    { name = "a tray of vol-au-vents",
      description = "Small pastry cases filled with a substance. The substance is the same colour as the pastry.",
      actions = {
        { "Eat one", say "It tastes expensive, which is not the same as good, but you have a second one in case it becomes the same." },
      } },
  },

  exits = {
    { to = "nobles_row" },
    { to = "secret_study", label = "The gap behind the bookcase",
      description = "The gap behind the bookcase: a narrow door, a narrow stair, and lamplight.",
      requires = flag "book_pulled", hidden = true },
  },
}
