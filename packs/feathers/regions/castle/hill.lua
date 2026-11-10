space {
  id = "castle_hill",
  region = "castle",
  name = "Petitioners' Hill",
  description = "The road up to the castle, and on it the queue. It begins at the gate and goes down the hill in a tidy line, past a tea stall, a barber and a small school. Some of the queue was born in it.",

  things = {
    { name = "the castle",
      description = "Grey walls, a gatehouse, and four towers against the sky. The portcullis stuck at half height in the reign before last. Everyone ducks. The royal portraits since then all show a slight stoop.",
      things = {
        { name = "the fourth tower",
          description = "Built later, by a different king, with a different idea of what a tower was. It leans away from the other three. They are not on speaking terms." },
      } },
    { name = "the ticket post",
      key = "ticket post",
      description = "A post with a spike of paper tickets and a board: {b}NOW SERVING: 7{/}. The 7 is painted on. There is lichen on it.",
      variants = {
        { when = flag "ticket_swapped",
          description = "A post with a spike of paper tickets and a board: {b}NOW SERVING: 8{/}. The paint is wet. A small crowd has gathered to look at it, and one man is sketching." },
      },
      actions = {
        { "Take a ticket", once = true, give "queue_ticket",
          say "You pull one off the spike. {b}4,112{/}. You do some arithmetic about it. The arithmetic is not encouraging." },
      } },
    { name = "the man at the front",
      key = "front man",
      visible_if = no(flag "ticket_swapped"),
      description = "He stands at the head of the queue with ticket number 8 in his hand and the calm of a man who has been next for eleven years.",
      actions = {
        { "Ask what he is petitioning for",
          say "\"It was about a fence,\" he says. \"Or a goose. It was very important.\" He thinks. \"I had it written down. I ate off the back of it in the fourth winter.\"" },
        { "Offer to swap tickets", when = item "queue_ticket", set "ticket_swapped",
          say "He looks at your 4,112 for a long time. \"Thirty years, at this rate,\" he says, and his whole face eases. \"Time to remember what it was.\" He presses number 8 into your hand and walks down the hill to the back, greeting people as he goes." },
      } },
    { name = "the gap at the front",
      visible_if = flag "ticket_swapped",
      description = "Where the man with number 8 stood, the grass has not grown for eleven years. The queue is looking at the gap, and then at you, and doing sums." },
    { name = "the queue",
      description = "Four thousand people standing in order. It has bylaws. It has a cricket team. Twice it has declared independence, and both times it was told to wait.",
      things = {
        { name = "the tea stall",
          description = "Founded by number 212, to pass the time. It is run now by her granddaughter, who holds number 212.",
          actions = {
            { "Ask for tea", say "\"There's a queue,\" she says. There is. It is a different one. It crosses the first at right angles, and where they meet there is a man who has not moved in a week, out of fairness to both." },
          } },
        { name = "the mayor of the queue",
          description = "Elected by numbers 40 to 900. He wears a chain of office made of ticket stubs.",
          actions = {
            { "Petition him", say "He hears you out and tells you, kindly, to get in line. You point out that this is a line. He says yes, and there is one for him too." },
          } },
        { name = "a child",
          description = "Number 3,300, inherited. She is playing castles in the dust, with a row of pebbles waiting outside." },
      } },
    guard {
      name = "the gate guard",
      key = "gate guard",
      description = "A helmet at the gate, with a list. He calls the next number once a year, on the King's birthday, if the King is available.",
      actions = {
        { "Show your ticket", when = all { item "queue_ticket", no(flag "ticket_swapped") },
          say "\"Four thousand, one hundred and twelve,\" he reads. He looks down the hill. He looks at you. \"Bring a book,\" he says, not unkindly." },
        { "Show your ticket", when = flag "ticket_swapped",
          say "\"Eight!\" he shouts, in a voice that has been kept in a box for eleven years. The queue cheers. Somebody's grandmother faints. \"In you go. Mind your head.\"" },
        { "Ask to go in", say "\"Number?\" he says. It is the whole of his side of every conversation he has had at this gate." },
      } },
  },

  exits = {
    { to = "nobles_row", description = "Downhill, to hedges and washed cobbles." },
    { to = "castle_bailey",
      description = "Under the portcullis, stooping, into the castle.",
      requires = flag "ticket_swapped",
      locked = "the guard is serving number 8, and you are not number 8" },
  },
}
