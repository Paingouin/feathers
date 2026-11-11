space {
  id = "great_hall",
  region = "castle",
  name = "The Great Hall",
  description = "A long hall under banners so old that their colours are a matter of record, not of sight. At the far end, on a dais, the throne. On the throne, a card.",

  things = {
    { name = "the throne",
      key = "throne",
      icon = "♔",
      description = "Oak and gilt, carved with lions that all look slightly to one side, at something the carver did not include. It is empty.",
      things = {
        { name = "the card", description = "{i}IN A MEETING.{/} It is printed. The corners have gone soft with age." },
        { name = "the cushion", description = "Plumped daily. There is no dent in it. There has been no dent in it since the spring before last." },
        { name = "the left armrest",
          key = "left armrest",
          description = "The lion's head on the left arm is shinier than the one on the right. Somebody was in the habit of holding it.",
          variants = {
            { when = flag "throne_sat",
              description = "The lion's head on the left arm is shinier than the one on the right. It turns. You know that now." },
          } },
        { name = "the right armrest", description = "This lion has its mouth open. Generations of kings have kept a boiled sweet in it. There is one there now, gone grey." },
        { name = "the footstool", description = "Embroidered with a map of the kingdom, so that the monarch may rest his feet on it. The Grumbles are worn through." },
        { name = "the canopy", description = "Cloth of gold on four posts, sagging in the middle under two centuries of dust. A clerk comes once a year and measures the sag. It has its own file." },
      },
      actions = {
        { "Sit on it", when = no(flag "throne_sat"), set "throne_sat", fx "shake",
          say "You sit. Nobody stops you: the Chamberlain is busy stopping somebody else. It is very comfortable. You grip the arms as kings do, and the left lion turns under your hand, and behind the dais a piece of the panelling opens, the width of one careful king." },
        { "Sit on it", when = flag "throne_sat",
          say "You sit again. From here the hall is long and full of people who want something. You begin to see the point of the card." },
      } },
    { name = "the Lord Chamberlain",
      key = "chamberlain",
      icon = "♝",
      description = "A tall man in black with a staff of office, standing between the court and the throne with the patience of a locked door.",
      variants = {
        { when = flag "warrant_given",
          description = "A tall man in black with a staff of office. He looks at the mud on your boots. It is garden mud. He looks at it for some time, and then, with great care, at the ceiling." },
      },
      things = {
        { name = "his staff of office", description = "White wood, six feet, with a gold knob. He strikes the floor with it three times to announce the King. There is a worn place in the flagstone, and cobweb across it." },
        { name = "his small book", description = "Bound in black. Every page is headed {i}The Meeting{/}, with a date, and under that the one word: {i}Continuing{/}." },
      },
      actions = {
        { "Ask to see the King",
          say "\"His Majesty is in a meeting.\" With whom? \"With advisers.\" Which advisers? \"The meeting,\" he says, \"is to decide that.\"" },
        { "Ask when the meeting ends",
          say "He consults a small book. \"It has not been minuted as ending,\" he says. \"We are hopeful about the autumn.\" He does not say which." },
      } },
    { name = "the court",
      description = "A crowd in velvet, waiting to be noticed by a chair.",
      things = {
        { name = "a duchess", description = "She has been curtseying since the card went up. She says it is easier than starting again.",
          things = {
            { name = "her train", description = "Nine feet of brocade, held by a page who was a boy when he took it up and now has a beard." },
          } },
        { name = "a poet",
          description = "Commissioned to write an ode on the King's return. He has the first line. It is {i}O{/}.",
          actions = {
            { "Suggest a second line", say "You suggest one. He writes it down, reads it, and crosses it out so thoroughly that the pen goes through. \"No,\" he says, \"but thank you. I was beginning to think it was me.\"" },
          } },
        { name = "an ambassador",
          description = "From a country across the sea, in furs, with a casket. He came to present his credentials. He has been presenting them, at intervals, to the card.",
          things = {
            { name = "the casket", description = "Gifts for the King: a jar of spice, a clock, a small live tortoise. The tortoise was a hatchling when he landed." },
          },
          actions = {
            { "Ask about his country", say "He tells you, with longing. It has mountains, a short summer, and a king who is in a great deal. \"He is always {i}there{/},\" the ambassador says. \"You cannot get anything done.\"" },
          } },
        { name = "the heir presumptive",
          description = "A cousin of the King's, twenty or so, standing as near to the throne as is decent. He has been heir for eleven years and has spent them learning to look as if he does not mind.",
          actions = {
            { "Ask if he wants to be king", say "He looks at the card. He looks at the hall, and the court, and the Chamberlain. \"I breed spaniels,\" he says. \"I should like to go on doing that.\" He lowers his voice. \"Is he well? Wherever he is? Tell him not to hurry.\"" },
          } },
        { name = "two barons", description = "They have a boundary dispute, and came to have it judged. While they waited their children married each other. The dispute is now with themselves, and they are pressing it." },
      } },
    { name = "the high table",
      description = "On the dais, across the hall, with a white cloth and one place laid at the centre in gold.",
      things = {
        { name = "the King's place",
          description = "A gold plate, a gold cup, a knife with a jewelled handle. Dinner is served to it at noon and removed at one.",
          things = {
            { name = "the gold cup", description = "Full of wine. It is poured fresh every day. There is a line on the inside, like the line on a bath, from two years of it." },
            { name = "the gold plate", description = "Today: marrow, stuffed. The plate has been set down in front of an empty chair by a footman who then stood back and waited to be told that it was excellent." },
          } },
        { name = "the royal taster",
          description = "A small sad man with a spoon, who tastes the King's food for poison. With no King to eat the rest, he has to finish it. He has put on four stone and nobody has tried to poison anyone.",
          actions = {
            { "Ask how it is", say "\"Marrow,\" he says. \"Stuffed.\" He takes another spoonful with the air of a man on a long march. \"If somebody would only poison it. Just for a change.\"" },
          } },
        { name = "the salt", description = "A silver ship as long as your arm, holding the salt. Where you sit in relation to it is your whole standing in the kingdom. You are standing by the door." },
      } },
    { name = "the long tables",
      description = "Two of them down the length of the hall, oak, with benches. The court eats here, in order of rank, as fast as it can, in case the King comes in.",
      things = {
        { name = "the benches", description = "Polished by generations of the well born. At the lower end the polish stops and the splinters begin." },
        { name = "carved initials", description = "Under the edge of the table, where a squire could reach with a knife during a long grace. Four hundred years of them. One says only {i}still grace{/}." },
        { name = "the hounds",
          description = "Three wolfhounds under the table, the size of ponies, asleep in a heap. They belong to the King. They look up at every footstep, and put their heads down again.",
          actions = {
            { "Let one sniff your boots", say "It sniffs. It stops. It gets up, all of it, and stands with its nose pressed to the mud on your heel, tail going. The other two come. You are, for a minute, the most interesting person in the Great Hall, and the Chamberlain has noticed." },
          } },
      } },
    { name = "the minstrels' gallery",
      description = "A balcony over the door, with a carved rail and five musicians.",
      things = {
        { name = "the minstrels",
          description = "Lute, viol, shawm, tabor, and a man with a harp who seems to be asleep. They are engaged to play when the King enters. They hold their instruments ready. They have held them ready since the spring before last.",
          things = {
            { name = "the shawm player", description = "He has had the reed in his mouth for so long that he speaks round it. His wife says it has improved him." },
            { name = "the harper", description = "He is not asleep. He is counting rests. He will tell you the number if asked, and it is in the millions." },
          },
          actions = {
            { "Ask for a tune", say "They look at each other. \"We've the one,\" says the lutenist. \"The fanfare. We can't play it till he comes.\" He plucks one string, very softly, and all five of them flinch and look at the door." },
          } },
        { name = "the carved rail", description = "Oak leaves, acorns, and at the centre a small carved face with its fingers in its ears. The carver had met minstrels." },
      } },
    { name = "the great hearth",
      description = "Wide enough for a tree, and burning one. Two iron firedogs in the shape of lions hold the log.",
      things = {
        { name = "the firedogs", description = "The lions have been in the fire for three centuries and wear the expression of the court: patient, and too warm." },
        { name = "the chimney breast", description = "The arms of every queen consort, carved in a column. The lowest is still sharp. The top ones have been smoothed by smoke into a row of polite bumps." },
        { name = "a page asleep in the inglenook", description = "Curled up on the hearth bench with his cap over his eyes. He was told to wait here until he was sent for." },
      } },
    { name = "the roof",
      description = "Hammerbeams, black with age, each one ending in a carved angel holding a shield.",
      things = {
        { name = "the angels", description = "Forty. Thirty-nine look down at the hall. One, over the dais, has been carved looking sideways out of the window, toward the kitchen side of the castle. It is smiling slightly." },
        { name = "the banners",
          description = "Hung from the beams, one for every campaign.",
          things = {
            { name = "the largest banner", description = "{i}THE SIEGE.{/} A castle, embroidered, and round it a great many small figures going away." },
            { name = "a banner with a fish", description = "Blue, with a gold carp. No campaign is named on it. The carp is very well done." },
          } },
      } },
    { name = "the long tapestry",
      description = "It runs the length of the hall and tells the history of the kingdom king by king, from the door to the dais.",
      things = {
        { name = "the newest panel",
          description = "The present King, embroidered from memory. The needlewomen have given him a marrow to hold. It is the most lifelike thing in the panel." },
        { name = "the middle panels",
          description = "Kings with swords, kings with laws, and one king with a fish, for reasons the caption has lost.",
          things = {
            { name = "the king with the fish", description = "He holds it in both arms, as you would hold a child or a prize. It is gold thread. He looks out of the cloth with enormous satisfaction, and whatever the joke was, he took it with him." },
            { name = "a panel cut out", description = "Between two kings there is a square of plain canvas, hemmed, where a panel has been unpicked. The kings on either side have been moved up a little to make it less obvious. It is very obvious." },
            { name = "the miser king", description = "A thin king, sitting on a chest, with his arms folded. The caption: {i}Godric the Careful. He spent nothing.{/} The needlewomen have sewn his purse shut with real thread." },
          } },
        { name = "the oldest panel",
          description = "The end nearest the door, worn by eight hundred years of passing shoulders. A hill with no castle on it yet, and one man standing on it, looking up. The thread of the sky has all gone. There is only bare linen, and he is looking at that." },
      } },
    { name = "the petition box",
      description = "A locked oak box by the door with a slot in the lid. It is emptied every evening into a larger box.",
      things = {
        { name = "the slot", description = "A corner of paper sticks out. It has been pushed in, and has come back, the way a tide leaves things." },
      },
      actions = {
        { "Post a petition", say "You have no paper, so you say it into the slot: that you would like, if convenient, an adventure. The box takes it as it takes everything." },
      } },
    { name = "a jester",
      description = "In motley, on the dais steps, with his bladder on a stick across his knees. He is licensed to mock the King to his face. He has had no face to work with for two years and has gone quiet and thoughtful.",
      actions = {
        { "Ask for a joke", say "\"A king walks into a garden,\" he says, and stops. He looks at you sharply. \"That's all I have. I don't know why it's that. It came to me.\"" },
      } },
    { name = "the stair to the royal apartments",
      description = "A broad stair behind a curtain at the side of the dais, with a gentleman in livery on the bottom step.",
      things = {
        { name = "the Gentleman of the Stair",
          description = "His whole office is this step. He admits to the apartments those who have business there, on proof of it. In two years there has been nobody up there to have business with, and he has been firmer than ever.",
          actions = {
            { "Ask to go up", when = no(item "warrant"),
              say "\"On whose authority?\" You say your own. He smiles, as one smiles at a child's drawing." },
            { "Ask to go up", when = item "warrant",
              say "You show him the paper. He reads the signature. He looks at the thumbprint, and then at your boots, and steps off his step for the first time in your acquaintance. \"Wipe them,\" he says." },
          } },
      } },
    { name = "the door to the muniment room",
      description = "A small door under the gallery with {i}RECORDS{/} on it in white paint, and under that, in pencil, {i}knock and wait{/}, and under that, in another pencil, {i}he won't hear, go in{/}." },
    candle { name = "a state candle", description = "As thick as your arm, in an iron stand. It is lit for the King. It has burned down four inches since he was last seen, and a clerk measures it weekly." },

    { name = "the sideboard of state",
      description = "Oak, black with age, the length of a barge. On it the plate that is brought out for great occasions, and has therefore been out, waiting, since the meeting began.",
      things = {
        { name = "the great salt", description = "A silver castle, a foot high, with the salt in the keep. To sit below it is to be nobody. The court has spent four hundred years edging it down the table, an inch a reign." },
        { name = "a nef", description = "A gilt ship on wheels, for passing the wine. It has not sailed this reign. A spider has rigged it, correctly." },
        { name = "the royal toothpick", description = "Gold, in a case, with a page assigned to it. The page is forty. He was assigned at nine." },
      } },
    { name = "the dogs under the tables",
      description = "Four or five, of no breed, belonging to the Hall itself. They know the hour of every meal that used to be served here and still turn up for each.",
      actions = {
        { "Drop them something", say "You have a crust. It does not reach the floor. There is a brief, silent rearrangement of dogs, and then five faces looking up at you with the settled conviction that you are the King." },
      } },
    { name = "the echo of the Hall",
      description = "Speak under the middle of the roof and your voice comes back late: not at once, but a good while after, when you have stopped expecting it.",
      things = {
        { name = "a late return",
          description = "As you stand there the rafters give back, quite clearly, a cough and the words {i}my lords, I shall be brief{/}. The Chamberlain does not look up. That one is from the last reign. It was not brief." },
      },
      actions = {
        { "Say something for later", say "\"The adventurer was here,\" you tell the roof. Nothing. You wait. Nothing. It will come back to somebody, some evening years on, in an empty hall, and they will wonder who." },
      } },
  },

  exits = {
    { to = "castle_bailey" },
    { to = "muniment_room", description = "Through the small door under the gallery, without knocking." },
    { to = "royal_apartments",
      description = "Up the broad stair behind the curtain.",
      requires = item "warrant",
      locked = "the Gentleman of the Stair admits nobody without something signed" },
    { to = "treasury", label = "The gap in the panelling",
      description = "Behind the dais, sideways, breathing in.",
      requires = flag "throne_sat", hidden = true },
  },
}

space {
  id = "treasury",
  region = "castle",
  secret = true,
  name = "The Royal Treasury",
  description = "A vault behind the throne, built for the wealth of a kingdom, with shelves to the ceiling and a floor reinforced against the weight of gold. The reinforcement has not been tested.",
  palette = { bg = "#12100a", text = "#d8d0b8", dim = "#7a7258", accent = "#e6c14c", border = "#4c4424" },
  ambience = {
    dust { glyphs = "·˙", color = "#6e6440", rate = 0.2, speed = 0.2 },
    shimmer { color = "#e6c14c", strength = 0.12 },
  },

  things = {
    { name = "the shelves",
      description = "Labelled in a fine hand: {i}GOLD. SILVER. PLATE. JEWELS. MISC.{/} They are dusted weekly. Only {i}MISC.{/} has anything on it.",
      things = {
        { name = "the gold shelf", description = "Bare oak, sagging a little in the middle, from before. There are round marks in the dust where the duster has gone carefully round nothing." },
        { name = "the silver shelf", description = "One teaspoon, tarnished, with a tag: {i}Not Treasury. Cook's. Return.{/} The tag is dated in the last reign." },
        { name = "the plate shelf", description = "A dinner service for two hundred, gold, with the royal arms. It is represented by its receipt." },
        { name = "a box of notes",
          description = "Slips of paper, each beginning {i}I.O.U.{/} and ending in a royal signature. Four reigns of them. The earliest are on vellum.",
          things = {
            { name = "the newest note", description = "{i}I.O.U. the wages of the Household, Michaelmas. H.R.{/} There is a little earth in the fold." },
            { name = "the oldest note", description = "Vellum, brown, cracked at the seal. {i}Owed to Godric our father's hoard, the price of one roof. To be put back.{/} It is not signed as paid." },
          },
          actions = {
            { "Read one", say "{i}I.O.U. one war, to be paid for afterwards.{/} Signed by the king with the fish." },
          } },
        { name = "the crown jewels",
          description = "On a velvet stand: crown, orb, sceptre. They are very bright.",
          things = {
            { name = "the great ruby",
              description = "Glass. Good glass. There is a tiny bubble in it, and a tiny note under the stand: {i}Original with the Baroness V-P, against the loan of 1,400. Do not mention at dinner.{/}" },
            { name = "the orb", description = "A brass doorknob, the large kind, gilded. If you turn it in the light you can see where the spindle went." },
            { name = "the sceptre", description = "A curtain pole, with its finial. The Jewel House says these are on loan to the Treasury. The Treasury has a card saying they are at the Jewel House. Both cards are true in spirit." },
          } },
      } },
    rat {
      name = "the Treasury mouse",
      description = "Thin, dignified, and on the Crown's payroll as Keeper of the Reserve. It is paid in cheese rind, in arrears.",
      things = {
        { name = "its hole", description = "In the skirting, with a tiny arch. Over the arch somebody has painted, with a one-hair brush, the royal arms." },
      },
      actions = {
        { "Salute it", say "It sits up. It has been waiting a long time for somebody to take the post seriously." },
      } },
    { name = "the Reserve",
      key = "reserve",
      wonder = true,
      icon = "¢",
      description = "On a marble plinth in the middle of the floor, under a glass dome, on a cushion: {gold}one gold coin{/}. This is the Reserve. Every wage, every tax and every note in that box is a promise about this coin. It is quite small. {shimmer}It shines as though it knew.{/}",
      things = {
        { name = "the face on the coin",
          description = "A king. You do not recognise him, and neither would he: the nose has been worn flat by four hundred years of people checking that it was still there." },
        { name = "the cushion under it", description = "Purple, with a dip the size of a thumbnail. It was made for a heap." },
      },
      actions = {
        { "Lift the dome", fx "sparkle",
          say "You lift it one inch. In the market of Aldmoor, at that moment, the price of turnips does something that nobody can explain. You put the dome down very gently. The turnips recover." },
      } },
    { name = "the ledger",
      description = "The accounts of the kingdom, in one volume. Left-hand pages: what is owed. Right-hand pages: {i}see left{/}.",
      things = {
        { name = "the first page", description = "A different hand, small and tight, in ink gone rust brown: {i}Received, nothing. Spent, nothing. Remaining, all.{/} It is the only page in the book that balances." },
      } },
    { name = "the great scales",
      description = "Brass, taller than you, for weighing tribute by the sack. One pan holds a set of weights. The other holds a dead leaf, and is up.",
      actions = {
        { "Put a hand in the empty pan", say "The beam swings. For a moment you are worth eleven pounds of brass. The mouse makes a note." },
      } },
    { name = "the Chancellor's desk",
      description = "A high desk with a stool, an abacus and an inkwell.",
      things = {
        { name = "the abacus", description = "All the beads are pushed to one side and tied there with a ribbon." },
        { name = "a letter from a moneylender", description = "{i}We regret that we cannot extend further credit against the Reserve, having now lent against it nine times, and seen it.{/}" },
        { name = "the tally sticks", description = "Hazel rods, notched for debts and split down the middle, one half for each party. The Crown's halves are stacked here like firewood. In hard winters they have been miscounted." },
      } },
    { name = "the strongbox",
      description = "Iron, banded, with three locks, standing open. Inside is a second strongbox, also open. Inside that there is a third, shut. It is the only shut thing in the Treasury, and the keys are gone.",
      actions = {
        { "Shake the smallest box", say "Something slides and knocks. It sounds like a single button. Hope has been built on less in this room, and is." },
      } },
    { name = "the reinforced floor",
      description = "Flagstones a foot thick on oak baulks, built to carry forty tons of bullion. Your footsteps do not sound on it at all. It has been waiting to bear something, and you are not it." },

    { name = "the audit",
      description = "A trestle at the back with an abacus, a ledger and an auditor, who is asleep sitting up with the pen still in his hand.",
      things = {
        { name = "the abacus", description = "Ten wires. All the beads but one have been taken off and put in a drawer, to save confusion." },
        { name = "the auditor",
          description = "Sent by the Council eleven years ago to count the wealth of the kingdom. He counted it the first morning. He has been checking the figure since, in case he missed some.",
          actions = {
            { "Wake him", say "He comes to with a start. \"One!\" he says. Then he sees you, and the shelves, and sags. \"I keep thinking there is a second,\" he says. \"A florin, behind something. I get up and look.\" He looks behind something. \"No.\"" },
          } },
      } },
    { name = "a row of money bags",
      description = "Canvas, each stencilled with a sum. {i}1,000. 5,000. 10,000.{/} They are hanging on pegs, flat, like coats.",
      things = {
        { name = "the largest bag", description = "{i}100,000.{/} There is something in the bottom of it. You feel through the canvas. It is a dried pea, and it has been there long enough to be entered in the ledger." },
      } },
    { name = "a mousehole",
      description = "In the skirting, with a tiny heap beside it: three crumbs, a bead and a bent pin, put outside the door. Even the mouse, it seems, has looked round the Treasury and decided to make a contribution." },
  },

  exits = {
    { to = "great_hall", label = "The gap in the panelling", description = "Back out behind the throne, looking like someone who has seen nothing of interest." },
  },
}
