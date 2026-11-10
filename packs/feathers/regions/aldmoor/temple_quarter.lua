space {
  id = "temple_quarter",
  region = "aldmoor",
  name = "The Street of Small Gods",
  description = "Aldmoor has a god for everything, and here they all are, shoulder to shoulder, each in a temple the size its congregation can afford.",
  ambience = { steam { glyphs = "∙°˙", color = "#7a7284", rate = 0.5 }, flicker { color = "#e8c070", strength = 0.12 } },

  things = {
    { name = "the Temple of Saint Ledger",
      icon = "§",
      description = "Patron of taxes, tallies, and things owed. The grandest temple on the street, since everyone gives, and it is not optional.",
      things = {
        { name = "the collection box", description = "It has a slot for coins and a second, larger slot for receipts." },
        { name = "a clerk-priest", description = "He blesses you, and then hands you an itemised account of the blessing.",
          actions = { { "Dispute the account", say "He produces a form for disputing accounts. There is a fee for the form." } } },
      } },
    { name = "the Shrine of Our Lady of Lost Socks",
      description = "A single alcove with a basket. Leave one sock; she is said to know where the other went, and to be keeping it.",
      things = {
        { name = "the basket", description = "Hundreds of socks, every one of them single. It is the loneliest object you have ever seen." },
      },
      actions = {
        { "Pray for a sock", say "You feel a draught round one ankle. You look down. You do not want to talk about it." },
      } },
    { name = "the Chapel of the God of Doors That Stick",
      description = "Nobody has been inside in forty years. They assume it is very nice.",
      actions = {
        { "Try the door", say "It sticks. Somewhere within, something is pleased." },
      } },
    { name = "the Altar of Almost",
      wonder = true,
      icon = "◇",
      description = "A plinth with nothing on it, to the goddess of what very nearly happened. {shimmer}The air above the plinth is the exact shape of a statue.{/} People leave offerings beside it of things they almost did.",
      things = {
        { name = "the offerings", description = "An unsent letter. One dancing shoe. A ticket to a ship, never used, soft at the folds." },
      },
      actions = {
        { "Leave an offering", say "You have nothing to leave. You are an adventurer who has, so far, almost had an adventure. You stand there a while. That seems to count." },
      } },
    { name = "a queue of pilgrims",
      description = "They are queueing for the wrong god, and have been told, and are staying on principle.",
      actions = {
        { "Ask whom they are queueing for", say "\"We'll know when we get there,\" says the one at the back, serenely." },
      } },
    { name = "a collapsed drain",
      key = "drain",
      description = "Between two temples the paving has fallen in, leaving a smooth dark chute of old brick. The priests on either side each say it is the other god's responsibility.",
      actions = {
        { "Drop a pebble", say "A rattle, a long quiet, then a deep and distant {i}plunk{/}, with an echo that goes on far too long for a drain." },
      } },
  },

  exits = {
    { to = "market" },
    { to = "cistern", label = "The chute",
      description = "Down the chute. It looks very much like a way in. It does not look at all like a way back.",
      requires = flag "knows_undertown",
      locked = "a long slide into the dark: you would want to know where it goes first" },
  },
}
