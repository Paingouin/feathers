space {
  id = "aldmoor_gate",
  region = "aldmoor",
  name = "The Aldmoor Gate",
  description = "Two towers, one portcullis, and a queue. The queue is the oldest structure of the three.",
  backdrop = {
    "   ▄ ▄ ▄                 ▄ ▄ ▄   ",
    "   █████▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█████   ",
    "   █████  ╔═══════════╗  █████   ",
    "   █████  ║ ╫ ╫ ╫ ╫ ╫ ║  █████   ",
  },

  things = {
    guard { name = "the gate sergeant",
            description = "He has a helmet, a ledger, and the calm of a man who has never once been in a hurry on someone else's behalf.",
            actions = {
              { "Ask about the toll", say "\"Gate tax. One copper. Not to keep, mind. I bite it and you get it back. Council just likes to know you've got one.\"" },
              { "Explain that you are an adventurer", say "He writes something in the ledger. It is quite short. You suspect it is 'another one'." },
              { "Salute", say "He salutes back, then looks annoyed at having done it." },
            } },
    guard(),
    { name = "the queue",
      description = "A farmer, a cart, a second farmer, and a man who has been here so long he has started selling pies to the others.",
      things = {
        { name = "the pie man", description = "He joined the queue in spring. He has a pitch now, and regulars.",
          actions = {
            { "Buy a pie", when = item "copper_coin", say "\"One copper.\" You look at your one copper. You look at the gate. The pie man has seen this exact tragedy before." },
            { "Buy a pie", say "\"One copper.\" You pat the place where a copper would be. The pie man has seen this tragedy too, and it is shorter." },
          } },
        { name = "the cart", description = "Turnips. All the way down." },
      },
      actions = {
        { "Join it", say "You join the queue. Some time later you are older, and in the same place, and you leave the queue." },
      } },
    { name = "the list of regulations",
      description = "Nailed to the gate, forty feet long, trailing into a puddle.",
      things = {
        { name = "regulation 1", description = "{b}No dragons{/} within the walls." },
        { name = "regulation 2", description = "{b}No persons resembling dragons{/}, at the sergeant's discretion." },
        { name = "regulation 847", description = "{b}No reading of regulation 848.{/}" },
        { name = "regulation 848", wonder = true,
          description = "It is blank. It is, nevertheless, {magic}very clearly a regulation{/}: you find you have straightened your collar." },
      } },
  },

  exits = {
    { to = "barley_road" },
    { to = "cliff_road", description = "Along the outside of the walls and uphill, towards where the wind is coming from. No tax on leaving." },
    { to = "market",
      description = "Through the gate: noise, awnings, and the smell of things for sale.",
      requires = item "copper_coin",
      locked = "\"Gate tax. One copper.\"" },
  },
}
