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
    { name = "a buffer stop",
      key = "buffer stop",
      description = "Two iron posts and a beam in the long grass under the wall, at the end of a pair of rusted rails that come out of the hillside. The queue has always taken it for a sculpture.",
      variants = {
        { when = flag "cart_ridden",
          description = "Two iron posts and a beam in the long grass under the wall. There is now an ore cart against it, and a dent in the beam, and a turnip that was not involved until recently. You would rather not discuss any of them." },
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
    { name = "the portcullis",
      description = "Oak and iron, hanging in its slot over the roadway with its teeth showing. It was last lowered for a drill, and came down on the mayor's hat, with the mayor one pace behind it.",
      things = {
        { name = "the winch", description = "In the left tower. Two men to turn it. One of them has been at lunch since the drill." },
        { name = "a flattened hat", description = "Nailed to the gate post as a caution. It was a very tall hat. It is now a very wide one." },
      } },
    { name = "the left tower",
      description = "Round, four floors, with an arrow slit on each. A line of washing goes from the top slit to the right tower.",
      things = {
        { name = "the guardroom", description = "A table, a brazier, a pack of cards with fifty-three in it. The extra one is the Sergeant, drawn in ink, and beats everything.",
          things = {
            { name = "the brazier", description = "Charcoal, a kettle, and a toasting fork made out of a decommissioned pike." },
            { name = "a rota", description = "Chalked on the wall. Every shift is marked {i}GATE{/}. Somebody has added, beside the night shifts, {i}(wall){/} and a small mug." },
          } },
        { name = "the murder hole", description = "A slot in the ceiling of the gateway, for pouring things on invaders. It is used for lowering the Sergeant's lunch." },
      } },
    { name = "the right tower",
      description = "The same as the left, except that it has been let. A family lives in it. There are geraniums in the arrow slits.",
      things = {
        { name = "a child at an arrow slit", description = "She is defending the town with a pea shooter. She has hit the pie man twice. He thinks it is flies." },
      } },
    { name = "the tax table",
      description = "A trestle by the gate, with a cloth, a ledger and a scale.",
      things = {
        { name = "the biting ledger", description = "Every coin shown at the gate is entered, with the name of the bearer and a small drawing of the tooth marks. Yours would make a short entry." },
        { name = "the scale", description = "For weighing goods. One pan is lower than the other with nothing on it. The Council built the difference into the tariff." },
        { name = "a turnip tariff", description = "{i}Turnips: one in forty, to the Gate.{/} There is a heap of turnips behind the table as high as the Sergeant. Nobody knows what the Gate wants them for." },
      } },
    { name = "the ditch",
      description = "Dry, grassed over, with a goat in it. The goat belongs to nobody and is paid for out of the defence budget.",
      things = {
        { name = "the goat", description = "It keeps the grass down and has opinions on visitors. It is chewing something with writing on it.",
          actions = { { "Look at what it is eating", say "Regulation 849 to 900. You will never know. From the goat's expression, they were dry." } } },
        { name = "a drawbridge chain", description = "Rusted solid. The bridge has been down so long that there is a market stall bolted to it." },
      } },
    { name = "a pedlar",
      description = "On a blanket in the lee of the wall, outside the tax line. Ribbons, pins, laces, and a tray of charms against being taxed. He does good business in those and has never paid any.",
      actions = {
        { "Ask what he has for an adventurer", say "He looks you over. \"Bootlaces,\" he says. \"You'll be glad of them. And a map.\" He shows you the map. It is of the queue." },
      } },
    { name = "swallows",
      description = "Nesting in the gate arch, a dozen mud cups in a row. They go in and out over the heads of the queue all day and have never once paid the tax." },
    { name = "a crate held at the gate",
      description = "Stencilled {i}CURIOS. This Side Up. Do Not Anger.{/} It has been impounded pending a ruling on whether a god is livestock. Through the slats, forty small faces are scowling at the tax table.",
      things = {
        { name = "the customs docket", description = "{i}Idols, jungle, 40. Declared value: priceless. Assessed value: firewood. Duty: disputed.{/} The sergeant has added, in pencil: {i}one of them looked at me.{/}" },
        { name = "a thumbprint on one forehead", description = "Green paint, dry. A thumb about the size of your own. A clerk has circled it and written {i}ritual marking?{/}" },
      },
      actions = {
        { "Scowl back", say "You give it your best. Forty carved faces hold their own without effort. The sergeant, who has been at it all morning, says quietly: \"You can't win. I've tried. They don't blink.\"" },
      } },
    { name = "the gate cat",
      description = "Black and white, on the tax table, on the paperwork, on the exact form that is wanted. It is on the strength. It draws a ration, and has a number.",
      things = {
        { name = "its collar", description = "A brass tag: {i}GATE, No. 3.{/} Numbers 1 and 2 are the sergeant and the portcullis." },
      },
      actions = {
        { "Try to move it", say "You slide a hand under. It becomes heavier. It is a known property of the cat. The queue behind you sighs as one, having each tried." },
      } },
    { name = "the boot scraper",
      description = "Cast iron, by the wicket, in the form of a hedgehog. Regulation 9 requires its use. There is a gap beside it where a second one stood until somebody sold it abroad.",
      actions = {
        { "Scrape your boots", say "Half of the Barley Road comes off. The hedgehog bears it. A guard nods, and makes a tick on a slate that has not had one since Tuesday." },
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
