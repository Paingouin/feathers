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
        { name = "the gatehouse",
          description = "Two drum towers and an arch between them, with a room over the arch for pouring things on visitors. The room is let to a retired herald, who pours tea, and misses.",
          things = {
            { name = "the murder holes", description = "Five, in the roof of the arch. Four have been plugged against the draught. The fifth has a geranium in it." },
            { name = "the royal arms",
              description = "Carved over the arch: a lion, standing, on a field of nothing in particular, and the motto {i}HERE WE ARE{/}. It was adopted after the siege and nobody has been able to argue with it." },
          } },
        { name = "the portcullis",
          description = "Oak and iron, hanging at the height of a tall man's collar. Two centuries of hats have polished the bottom bar.",
          things = {
            { name = "the bottom bar", description = "There is a row of small dents in it, and under each a name and a date, scratched by friends of the forehead concerned." },
            { name = "the winch",
              description = "In the gatehouse wall, with a handle for four men. It is seized solid. A brass plate says that repair has been approved.",
              things = {
                { name = "the brass plate", description = "{i}Repair approved{/}, and a date, and under it nine later plates, each approving the one above." },
              } },
          },
          actions = {
            { "Duck", say "You duck, although you are four yards from it. So does everybody near you. It is catching." },
          } },
        { name = "the moat",
          description = "Dry since the spring that fed it was diverted to the kitchens. The queue has allotments in it now, in strips, numbered to match the tickets.",
          things = {
            { name = "the allotments",
              description = "Beans, cabbages, a row of leeks tied up with string. Number 31 grows only flowers. Number 32 has views about that and has put up a fence.",
              things = {
                { name = "a scarecrow", description = "It is holding a ticket. Nobody will say whether it is a joke. It has moved up twice." },
              } },
            { name = "the drawbridge",
              description = "Down, and has been since the chains were sold. Grass grows in the planks. A goat keeps it short and is on the castle's books as a mower.",
              actions = {
                { "Stamp on it", say "It booms. Down in the moat a man looks up from his beans and asks you, civilly, to mind the marrows. They are not his marrows. He is being careful on principle." },
              } },
          } },
      } },
    { name = "the ticket post",
      key = "ticket post",
      description = "A post with a spike of paper tickets and a board: {b}NOW SERVING: 7{/}. The 7 is painted on. There is lichen on it.",
      variants = {
        { when = flag "ticket_swapped",
          description = "A post with a spike of paper tickets and a board: {b}NOW SERVING: 8{/}. The paint is wet. A small crowd has gathered to look at it, and one man is sketching." },
      },
      things = {
        { name = "the spike", description = "Tickets in a fat grey block, printed by the thousand in the old King's time. They were ordered in bulk. It was the last piece of forward planning the Crown undertook." },
        { name = "a notice under the board",
          description = "{i}Lost tickets will not be replaced. Found tickets must be handed in. Tickets may be left in a will, but not sold, lent, wagered or eaten.{/} The last word has been added by hand." },
      },
      actions = {
        { "Take a ticket", once = true, give "queue_ticket",
          say "You pull one off the spike. {b}4,112{/}. You do some arithmetic about it. The arithmetic is not encouraging." },
      } },
    { name = "the man at the front",
      key = "front man",
      visible_if = no(flag "ticket_swapped"),
      description = "He stands at the head of the queue with ticket number 8 in his hand and the calm of a man who has been next for eleven years.",
      things = {
        { name = "his boots", description = "Resoled four times without his taking them off. The cobbler works kneeling." },
        { name = "his folding stool", description = "He has never opened it. \"You sit down,\" he says, \"and that's when they call you.\"" },
      },
      actions = {
        { "Ask what he is petitioning for",
          say "\"It was about a fence,\" he says. \"Or a goose. It was very important.\" He thinks. \"I had it written down. I ate off the back of it in the fourth winter.\"" },
        { "Offer to swap tickets", when = item "queue_ticket", set "ticket_swapped",
          say "He looks at your 4,112 for a long time. \"Thirty years, at this rate,\" he says, and his whole face eases. \"Time to remember what it was.\" He presses number 8 into your hand and walks down the hill to the back, greeting people as he goes." },
      } },
    { name = "the gap at the front",
      visible_if = flag "ticket_swapped",
      description = "Where the man with number 8 stood, the grass has not grown for eleven years. The queue is looking at the gap, and then at you, and doing sums.",
      things = {
        { name = "two pale patches", description = "The shape of two boots, in the turf. Somebody has already put a pebble border round them." },
      } },
    { name = "the queue",
      description = "Four thousand people standing in order. It has bylaws. It has a cricket team. Twice it has declared independence, and both times it was told to wait.",
      things = {
        { name = "the tea stall",
          description = "Founded by number 212, to pass the time. It is run now by her granddaughter, who holds number 212.",
          things = {
            { name = "the urn", description = "Copper, dented, never cold. It has been topped up and never emptied, so somewhere in it is some of the first tea." },
            { name = "the mugs",
              description = "On hooks, each with a number painted on. You are meant to use your own.",
              things = {
                { name = "mug 4,112", description = "There is one. It is new, and the paint is dry. They knew somebody would be along." },
              } },
            { name = "a plate of rock cakes", description = "Named for the texture. The oldest is kept under a glass cover and is consulted about the weather." },
          },
          actions = {
            { "Ask for tea", say "\"There's a queue,\" she says. There is. It is a different one. It crosses the first at right angles, and where they meet there is a man who has not moved in a week, out of fairness to both." },
          } },
        { name = "the mayor of the queue",
          description = "Elected by numbers 40 to 900. He wears a chain of office made of ticket stubs.",
          things = {
            { name = "the chain of office", description = "Stubs of the departed, threaded on string: people who reached the front in the old days, or gave up, or married out. Number 7 is the middle link and is varnished." },
            { name = "the bylaws",
              description = "A fat book on a camp table. No pushing. No holding of places for longer than a meal. No dying without notice.",
              things = {
                { name = "bylaw 1", description = "{i}The queue is a line. A line has two ends and no opinions.{/}" },
                { name = "bylaw 60", description = "{i}A place may be held by a hat for an hour, a dog for a day, and a relative for life.{/}" },
                { name = "the last bylaw", description = "{i}Any person reaching the front shall tell the rest what it was like.{/} It has not been needed in eleven years." },
              } },
          },
          actions = {
            { "Petition him", say "He hears you out and tells you, kindly, to get in line. You point out that this is a line. He says yes, and there is one for him too." },
          } },
        { name = "a child",
          description = "Number 3,300, inherited. She is playing castles in the dust, with a row of pebbles waiting outside.",
          things = {
            { name = "the pebbles", description = "Forty or so, in order of size. The one at the front has a pebble of its own, behind it, holding its place." },
          },
          actions = {
            { "Ask what the pebbles want", say "\"To go in,\" she says. And when they go in? She looks at you as at a slow adult. \"Then they come out and get at the back.\"" },
          } },
        { name = "the barber",
          description = "Number 590, with a chair, a strop and a basin. He cuts the queue's hair in order, starting at the front. By the time he reaches the back the front needs doing.",
          things = {
            { name = "the chair", description = "It stands in the line, in his place. Customers come to it, sit, and are for that time number 590, which some of them find restful." },
            { name = "a jar of combs", description = "In blue water. The water is older than the apprentice." },
          },
          actions = {
            { "Ask for a trim", say "He looks at your hair with real interest. \"Who did this?\" Nobody did it. It happened. He nods slowly. \"You are number?\" You tell him. \"I'll see you in the spring of the year after next,\" he says, and writes it down." },
          } },
        { name = "the school",
          description = "Three benches and a slate under an awning. The children of the queue learn letters, sums, and standing.",
          things = {
            { name = "the slate", description = "{i}If the gate serves one petitioner a year, and Edric is number 2,040, how old will Edric be?{/} Under it a child has written: {i}sad{/}." },
            { name = "the schoolmistress", description = "Number 1,118. She teaches from memory, having lent the book to number 1,119 some years ago. It is working its way down the hill.",
              actions = {
                { "Ask what she teaches", say "\"Patience,\" she says, \"and long division. They are the same subject.\"" },
              } },
          } },
        { name = "the cricket team",
          description = "Eleven numbers in a row, by a happy accident: 700 to 710. They play along the line, since they may not leave it, and have only ever scored in one direction.",
          things = {
            { name = "the bat", description = "Split and bound with twine. Carved on the back are the fixtures: {i}Queue v. Garrison{/}, every midsummer, and under each one the word {i}drawn{/}." },
          } },
        { name = "a lawyer",
          description = "Number 1,402, in a black gown gone green. He joined the queue to petition for a client. The client is at number 6,000, petitioning to find out what happened to the lawyer.",
          actions = {
            { "Ask for advice", say "\"My advice,\" he says, \"is that you have no case, no standing, and no prospects, and that will be four pence.\" You have no pence. \"Then it was conversation,\" he says, relieved, \"and I can say what I think. Go home.\"" },
          } },
        { name = "the very end",
          description = "You cannot see it from here. They say that it is past the turnpike now, and that the last man does not know yet that he is in it." },
      } },
    { name = "a seller of cushions",
      description = "A woman with a barrow, working the line. Cushions, shooting sticks, a patent stool with one leg. She is not in the queue. She says there is no money in arriving.",
      things = {
        { name = "the barrow",
          description = "Painted {i}STAND EASY{/} on the side.",
          things = {
            { name = "a kneeling cushion", description = "For the last ten yards, where people begin to rehearse." },
            { name = "a one-legged stool", description = "You supply the other two. It is selling well." },
          } },
      },
      actions = {
        { "Ask the price", say "She looks at your ticket, not at you. \"Four thousand? For you, a payment plan.\"" },
      } },
    { name = "a herald",
      description = "In a tabard, with a scroll, on the bank above the road. Once a day he reads the Crown's proclamations to the queue. The queue treats it as weather.",
      things = {
        { name = "the tabard", description = "The lion on it has been darned so often that it has become a slightly different animal." },
        { name = "the scroll",
          description = "Today's business, in a clerk's hand.",
          things = {
            { name = "the first item", description = "{i}His Majesty is in a meeting.{/}" },
            { name = "the second item", description = "{i}The meeting is going well.{/}" },
            { name = "the third item", description = "{i}There is no third item. Persons waiting for a third item are to disperse.{/}" },
          } },
      },
      actions = {
        { "Listen to the proclamation", say "\"Hear ye,\" he says, without force. He reads all three items. At the end the queue claps, twice, in unison, as a thing it has been asked to do." },
      } },
    { name = "the jackdaws",
      icon = "v",
      description = "A grey-headed crowd of them on the gatehouse roof, watching the queue with their heads on one side. They take turns on the best chimney. It is done strictly in order.",
      actions = {
        { "Watch them", say "One arrives late and lands at the front. There is a silence. It walks, by itself, the whole length of the ridge, and sits down at the end. You have seen less shame at a hanging." },
      } },
    { name = "a milestone",
      description = "Set in the bank: {i}CASTLE, 0{/}. Somebody has scratched under it: {i}in theory{/}." },
    { name = "the view down the hill",
      description = "Nobles' Row, then the roofs of Aldmoor, then the wall. The queue runs through all of it as a seam runs through a coat. Carts go round. A wedding once went round." },
    guard {
      name = "the gate guard",
      key = "gate guard",
      description = "A helmet at the gate, with a list. He calls the next number once a year, on the King's birthday, if the King is available.",
      things = {
        { name = "his list", description = "Four thousand numbers in a column, and seven ticks. The seventh tick is in his father's hand." },
        { name = "his halberd", description = "Mostly used for leaning. There is a hook on it for his lunch." },
        { name = "his moustache", description = "Regulation length. He has checked." },
      },
      actions = {
        { "Show your ticket", when = all { item "queue_ticket", no(flag "ticket_swapped") },
          say "\"Four thousand, one hundred and twelve,\" he reads. He looks down the hill. He looks at you. \"Bring a book,\" he says, not unkindly." },
        { "Show your ticket", when = flag "ticket_swapped",
          say "\"Eight!\" he shouts, in a voice that has been kept in a box for eleven years. The queue cheers. Somebody's grandmother faints. \"In you go. Mind your head.\"" },
        { "Ask to go in", say "\"Number?\" he says. It is the whole of his side of every conversation he has had at this gate." },
      } },

    { name = "a goat on a tether",
      description = "Belonging to nobody in the queue, and fed by all of it. It eats petitions. It will not touch any other paper, and people who have lost heart bring theirs to it on purpose.",
      things = {
        { name = "a half-eaten petition",
          description = "{i}...humbly beg that Your Majesty will look into the matter of my neighbour's...{/} The rest is goat. The neighbour, you gather, has got away with it." },
      },
      actions = {
        { "Offer it your copper", say "It sniffs the coin, looks at you with one long sideways pupil, and declines. It has its standards. It is a civil servant, in its way." },
      } },
    { name = "a seller of maps of the queue",
      description = "A boy with a tray. For a farthing: a printed plan of the hill showing the queue, with landmarks. {i}The Bend. The Slow Patch. Where Old Harrow Got To.{/}",
      things = {
        { name = "this year's edition", description = "The queue has not moved since the last edition. He has reprinted it anyway, with the date changed, and a new border of marrows." },
        { name = "a pencil cross", description = "On his own copy, halfway down: {i}me, born here.{/}" },
      },
      actions = {
        { "Ask where you are on it", say "He finds the spot with a finger: off the bottom of the page, past the border, on the back. \"You're in the appendix,\" he says. \"That's still on the map. Some aren't.\"" },
      } },
    { name = "a turning nobody takes",
      description = "Behind the tea stall a second road leaves the hill, wide, green and empty, going round the back of the castle and away east. The queue has its back to it. Four thousand people stand within a stone's throw of an open road, and not one of them is looking.",
      things = {
        { name = "an old fingerpost", description = "{i}ERSTWHILE{/}, and under it, added: {i}(formerly){/}. The arm has dropped until it points at the ground." },
        { name = "the tea stall's back wall", description = "Number 212 put the stall here so that the urn would face the queue. Her granddaughter says that it was also so that nobody would have to look down that road while they drank." },
      },
      actions = {
        { "Ask the queue where it goes", say "\"Nowhere,\" says number 31, quickly. \"The old town,\" says number 32, to annoy him. \"Where the court was. Before.\" Before what? They both look at their feet. \"Before the queue,\" says 31 at last. \"My great-grandfather used to say that there was a time you could just walk in. On a Thursday.\" Number 32 tells him to hush, there is no such day, and they are friends again for a minute." },
      } },
    { name = "a shrine by the road",
      description = "A niche in a boundary stone with a candle stub, kept up by the queue. It is to the Patron of Those Who Wait. Nobody knows the saint's name. They were told it would be announced.",
      actions = {
        { "Light the stub", say "It takes. Three places back, somebody says \"ah, that's nice,\" and it is passed down the hill by word of mouth, a little altered at each telling, until at the bottom you have performed a miracle." },
      } },
  },

  exits = {
    { to = "nobles_row", description = "Downhill, to hedges and washed cobbles." },
    { to = "er_old_road", label = "The old road",
      description = "Round the back of the hill, where the queue does not go: a green road with thorn trees down the middle." },
    { to = "castle_bailey",
      description = "Under the portcullis, stooping, into the castle.",
      requires = flag "ticket_swapped",
      locked = "the guard is serving number 8, and you are not number 8" },
  },
}
