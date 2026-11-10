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
    { name = "the Oratory of the God of Small Change",
      description = "A booth with a counter. He is prayed to for the right coins at the right time. The priest breaks large prayers into smaller ones.",
      things = {
        { name = "the offering dish", description = "Full of farthings. You may take change from it for a larger coin. The god keeps a small percentage and nobody has ever caught him at it." },
      } },
    { name = "the Temple of the Unknown God",
      description = "A handsome portico with nothing inside. It was built in case. The Council felt that with so many gods about, one had probably been missed, and it would be awkward.",
      things = {
        { name = "the empty altar", description = "Swept daily. There is a visitors' book on it, for the god to sign when he arrives. It has one entry, a paw print, and the priests are divided." },
        { name = "the priest of the Unknown God", description = "He conducts a service every evening, to whom it may concern.",
          actions = { { "Ask what the god is god of", say "\"We'll ask,\" he says. \"When he comes. I've a list.\" He shows you the list. The first question is {i}Were we close?{/}" } } },
      } },
    { name = "the Shrine of the Wall",
      description = "A branch of the one on the ramparts, for worshippers who do not like stairs. A brick, on a cushion. You are invited to lean on the building next door." },
    { name = "the Goose Chapel",
      description = "Small, white, and kept very clean by people who look over their shoulders. Nobody worships here. They come to stay on the right side of it.",
      things = {
        { name = "the image", description = "A goose, in white marble, life size. The sculptor has given it an expression of such calm ill will that offerings are left at arm's length, on a pole." },
        { name = "the offerings", description = "Bread, mostly. Good bread. Nobody leaves it crusts." },
      },
      actions = {
        { "Make an offering", when = flag "goose_respects_you", say "You have nothing to give. You stand before the marble goose anyway, as one who has met the original and been allowed to leave. The verger, watching, takes off his hat." },
        { "Make an offering", say "You have nothing to give. The marble goose looks at you. You find a crumb in your pocket after all, and leave it, on the pole." },
      } },
    { name = "a street of candle sellers",
      description = "A stall for every temple, each selling the candle that its god prefers.",
      things = {
        candle { name = "a candle for Saint Ledger", description = "Numbered, and with a receipt." },
        candle { name = "a candle for the Lady of Lost Socks", description = "Sold singly. You cannot buy two." },
        candle { name = "a candle for the Unknown God", description = "No wick. \"We don't like to presume,\" says the seller." },
      } },
    { name = "a theological argument",
      description = "Two priests, nose to nose, in the middle of the street. One serves the God of Mornings and one the Goddess of Evenings, and they are settling, as they do every day, who has noon.",
      actions = {
        { "Suggest they share it", say "They turn on you together. It is the first thing they have agreed on in forty years. You leave them to it, closer than they were." },
      } },
    { name = "the oldest temple",
      description = "At the end of the street, the smallest building in it: one room of dark stone without a door, a window or a name. Every other temple here has a founding date. This one has a founding date for the street, which was built up to it.",
      things = {
        { name = "the lintel", description = "Where a name would be carved there is one curved line, cut deep, worn shallow. The priests of the other gods nod to it as they pass, the way you would to a neighbour who was there before you and has never said what he does." },
        { name = "a saucer of milk", description = "Left on the step each morning by a child from the lane, who was told by her grandmother, who was told by hers. Nobody remembers who it is for. Something drinks it." },
      } },
    { name = "the holy well",
      description = "A stone basin fed by a pipe from the fountain's overflow. The water goes up the pipe, so the well is filled from the bottom and blessed on the way.",
      things = {
        { name = "the cup on a chain", description = "Tin, dented. The water tastes of stone and, very slightly, of having changed its mind." },
      },
      actions = {
        { "Drink", say "Cold, clean, and going the wrong way: you feel it in your chest before your throat. You are blessed, or at least rinsed." },
      } },
    { name = "a beggar with a bowl",
      description = "He sits between the two richest temples and collects from the worshippers of both, who each give to spite the other. He owns three houses on Elbow Lane.",
      actions = {
        { "Turn out your pockets", say "You show him: one copper, spoken for. He looks at it, and at you, and puts a farthing in {i}your{/} hand. \"Don't spend it at Ledger's,\" he says." },
      } },
    { name = "the incense",
      description = "Forty kinds, from forty doors, meeting in the middle of the street. The result is the smell of Aldmoor's religion: sandalwood, beeswax, fish, and something from the Goose Chapel that is mostly fear." },
  },

  exits = {
    { to = "market" },
    { to = "cistern", label = "The chute",
      description = "Down the chute. It looks very much like a way in. It does not look at all like a way back.",
      requires = flag "knows_undertown",
      locked = "a long slide into the dark: you would want to know where it goes first" },
  },
}
