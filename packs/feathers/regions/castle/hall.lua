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
      actions = {
        { "Ask to see the King",
          say "\"His Majesty is in a meeting.\" With whom? \"With advisers.\" Which advisers? \"The meeting,\" he says, \"is to decide that.\"" },
        { "Ask when the meeting ends",
          say "He consults a small book. \"It has not been minuted as ending,\" he says. \"We are hopeful about the autumn.\" He does not say which." },
      } },
    { name = "the court",
      description = "A crowd in velvet, waiting to be noticed by a chair.",
      things = {
        { name = "a duchess", description = "She has been curtseying since the card went up. She says it is easier than starting again." },
        { name = "a poet",
          description = "Commissioned to write an ode on the King's return. He has the first line. It is {i}O{/}.",
          actions = {
            { "Suggest a second line", say "You suggest one. He writes it down, reads it, and crosses it out so thoroughly that the pen goes through. \"No,\" he says, \"but thank you. I was beginning to think it was me.\"" },
          } },
      } },
    { name = "the long tapestry",
      description = "It runs the length of the hall and tells the history of the kingdom king by king, from the door to the dais.",
      things = {
        { name = "the newest panel",
          description = "The present King, embroidered from memory. The needlewomen have given him a marrow to hold. It is the most lifelike thing in the panel." },
        { name = "the middle panels",
          description = "Kings with swords, kings with laws, and one king with a fish, for reasons the caption has lost." },
        { name = "the oldest panel",
          description = "The end nearest the door, worn by eight hundred years of passing shoulders. A hill with no castle on it yet, and one man standing on it, looking up. The thread of the sky has all gone. There is only bare linen, and he is looking at that." },
      } },
    candle { name = "a state candle", description = "As thick as your arm, in an iron stand. It is lit for the King. It has burned down four inches since he was last seen, and a clerk measures it weekly." },
  },

  exits = {
    { to = "castle_bailey" },
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
        { name = "a box of notes",
          description = "Slips of paper, each beginning {i}I.O.U.{/} and ending in a royal signature. Four reigns of them. The earliest are on vellum.",
          actions = {
            { "Read one", say "{i}I.O.U. one war, to be paid for afterwards.{/} Signed by the king with the fish." },
          } },
        { name = "the crown jewels",
          description = "On a velvet stand: crown, orb, sceptre. They are very bright.",
          things = {
            { name = "the great ruby",
              description = "Glass. Good glass. There is a tiny bubble in it, and a tiny note under the stand: {i}Original with the Baroness V-P, against the loan of 1,400. Do not mention at dinner.{/}" },
          } },
      } },
    rat {
      name = "the Treasury mouse",
      description = "Thin, dignified, and on the Crown's payroll as Keeper of the Reserve. It is paid in cheese rind, in arrears.",
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
      },
      actions = {
        { "Lift the dome", fx "sparkle",
          say "You lift it one inch. In the market of Aldmoor, at that moment, the price of turnips does something that nobody can explain. You put the dome down very gently. The turnips recover." },
      } },
    { name = "the ledger",
      description = "The accounts of the kingdom, in one volume. Left-hand pages: what is owed. Right-hand pages: {i}see left{/}." },
  },

  exits = {
    { to = "great_hall", label = "The gap in the panelling", description = "Back out behind the throne, looking like someone who has seen nothing of interest." },
  },
}
