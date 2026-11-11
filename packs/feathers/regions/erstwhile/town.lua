-- The town: the Processional Way and its houses, the market the dead still hold, and the baths.

space {
  id = "er_high_street",
  region = "erstwhile",
  name = "The Processional Way",
  description = "The great street of the old capital, wide enough for six horses and a mistake. Half the houses have roofs. The rest have trees. And the whole length of it is busy with people the colour of mist, shopping, sweeping their steps and raising their hats to one another. They raise them to you too. You are the first new face in ninety years, and nobody is so rude as to stare.",

  things = {
    { name = "the passers-by",
      description = "Dozens of them, in the fashions of three reigns back: wide sleeves, small hats, shoes with roses on. They walk round you. That is the surprising thing. They go through carts, walls and one another without a thought, and they walk round you, because it is manners.",
      things = {
        { name = "a gentleman with a cane", description = "He bows as he passes, a proper one with the leg. His cane goes through a fallen roof beam at every other step and he has not once looked down.",
          actions = {
            { "Bow back", say "You bow, with the leg, as nearly as you can. He stops. \"New at court?\" he says. \"You will find it quiet this week. They are away. Back Friday.\" He lowers his voice. \"Between ourselves, I think there was a little unpleasantness. It will blow over.\" He walks on through a wheelbarrow." },
          } },
        { name = "a woman with a basket", description = "The one you saw from the gate. The basket has a cloth over it. She is going to market. She gets as far as the fountain, remembers something, and goes back for it." },
        { name = "two boys with a hoop", description = "They run it down the middle of the street, through everybody, shouting. They are the only people in Erstwhile who are in a hurry, and they have been late for supper since before your grandfather was born." },
        { name = "a lamplighter", description = "With a ladder and a pole, working up the street. He puts his ladder against a post that fell down forty years ago, climbs to where the lamp was, and lights it. A small grey light hangs there in the air after he has gone.",
          actions = {
            { "Stand under the lamp", say "It gives no heat and almost no light. It gives a little, though. By it you can read the name of the street on a wall that is no longer there." },
          } },
      },
      actions = {
        { "Raise your hat", say "You have no hat. You raise your hand to where it would be. Up and down the street forty grey hats go up in answer, in a wave, the way wind goes through barley. You are, it seems, received." },
      } },
    { name = "a house with a roof",
      description = "Number 12, three storeys, timber and plaster, with the door open and a brass plate: {i}Jno. Fettle, Glover to the Court{/}. Inside, a family is at supper.",
      things = {
        { name = "the Fettles at table", description = "A father, a mother, a grandmother and four children of assorted sizes, all the grey of the street, round a table with nothing on it. They are passing dishes. The dishes are not there, and they are being careful not to spill.",
          actions = {
            { "Wish them good appetite", say "All seven look up. \"Will you sit?\" says Mistress Fettle, and a child is moved along the bench with one look. You sit. You are passed something with both hands. You hold your hands as if they were full, and say it is very good, and the grandmother says that it wants salt and always did." },
          } },
        { name = "the glover's bench", description = "By the window: wooden hands in a row, in sizes, for stretching gloves. One pair is very large and very fine, with the fingers worn. The King took a ten.",
          things = {
            { name = "an unfinished glove", description = "White kid, the right hand, stitched to the last finger and left with the needle in. There is a note pinned to the cuff: {i}H.M., for Thursday week.{/}" },
          } },
        { name = "the empty chair", description = "At the foot of the table. A real one, of real oak, drawn up square with a real cushion on it, and not a speck of dust. They keep a place. They could not tell you who for." },
        { name = "the stairs", description = "The bottom four have rotted through. The children go up and down them at a run." },
      } },
    { name = "a house with a tree",
      description = "Number 14 has no roof, no floors and no back wall, and an elm eighty feet high standing in the parlour. Its tenants have not moved out. They live on floors that are no longer there, at three heights, and you can see up through all of them.",
      things = {
        { name = "the ground floor", description = "An old man in a chair by a hearth, reading. His chair is against the trunk. He leans round the elm to get the light without knowing that he does it." },
        { name = "the first floor", description = "Fifteen feet up, in the air, a woman is making a bed. She shakes a sheet out over nothing. It goes through a bough, and a wood pigeon on the bough moves along a little." },
        { name = "the second floor", description = "Higher still, among the leaves, a girl sits in a window that is not there and looks out over the street with her chin on her fist. Of all of them, you think that she has some idea.",
          actions = {
            { "Wave to her", say "She sees you. She does not wave. She looks at you for a long moment, and then at her own hand on the sill, and then back, and puts one finger to her lips. Then she smiles, to show that it is all right, and looks away up the street." },
          } },
      } },
    { name = "the shops",
      description = "A row of them under an arcade: bow windows with no glass, signs on iron brackets, and a keeper in every doorway with his hands under his apron.",
      things = {
        { name = "a pastry cook's", description = "{i}Mrs Gilliflower. Tarts, Raised Pies, Subtleties for Banquets.{/} The window holds a sugar palace under a film of grey, with every turret in place. It is not a ghost. Nothing in ninety years has cared to eat it.",
          things = {
            { name = "the sugar palace", description = "Two feet high, the Old Palace to the life, made for a banquet on a Thursday evening. There is a tiny sugar figure on the top step with both arms out. The rain has not been kind to the rest of the court. Him it has left." },
          } },
        { name = "a wigmaker's", description = "Blocks in a row, each with a wig the colour of cobweb, since by now it is cobweb. The wigmaker stands behind them, combing one that is not there, and telling it the news." },
        { name = "a stationer's", description = "{i}Petitions Drawn Up in a Fair Hand, 2d. Humble ones, 3d.{/} The stationer has a pen behind his ear and a queue of four. Business has never been so steady.",
          actions = {
            { "Ask for a petition", say "\"To whom?\" he says, pen ready. To the King, you suppose. He puts the pen down. \"Then you had better be quick,\" he says, \"he is giving audience Thursday, and I hear he is in a rare mood.\" You ask which Thursday. He looks at you as if you had asked which sun." },
          } },
        { name = "a shop with its shutters up", description = "The only one. {i}GONE TO STILLSTANDING. ACCOUNTS TO BE SETTLED THERE.{/} The other shopkeepers do not look at it. In ninety years nobody has taken the board down, because that would mean reading it." },
      } },
    { name = "the fountain",
      description = "A basin in the middle of the way with four stone lions back to back. Three are dry. The fourth still runs, a thread of water from its mouth, fed by the conduit under the old road. It is where the city gets its news.",
      things = {
        { name = "the running lion", description = "Its lower jaw has worn away, so that the water falls out sideways and it looks to be telling you something in confidence." },
        { name = "the gossips", description = "Six or seven women with pitchers that fill and do not get heavier. They are talking about a cook's boy who has run off, a tax, and whether Himself will hold the audience this week after what the Chancellor said.",
          actions = {
            { "Ask what the Chancellor said", say "They look at one another, delighted. \"He said, {i}Sire, you cannot possibly say yes to all of them.{/}\" \"In front of everybody.\" \"And Himself said,\" and here all six say it together, as people do with a line they love, \"{i}Can I not?{/}\" They shake their heads. \"We shall see Thursday,\" says the eldest. \"I would not miss it.\"" },
          } },
        { name = "the basin", description = "Green and clear. There are coins in it, real ones, a few, recent. The shepherd's family, perhaps. Somebody living has been wishing here." },
      },
      actions = {
        { "Drink", say "Cold, with a taste of stone. A grey pitcher is held under the lion beside your hands, through your wrists, without a splash. \"After you,\" says its owner. You tell her no, after her, and that goes on for some time." },
      } },
    { name = "the triumphal arch",
      description = "Across the top of the street: three openings, a great deal of carving and a long inscription to a victory. Bushes grow along the cornice. The centre opening was for the King alone, and nobody uses it, alive or dead.",
      things = {
        { name = "the inscription", description = "{i}TO THE EVERLASTING MEMORY OF THE VICTORY AT{/}, and then a patch where the stone has come away with the name of the place on it. Nobody you ask can remember where it was. They are sure it was everlasting." },
        { name = "the centre opening", description = "The paving under it is unworn and has moss on it. Ninety years of ghosts have gone round by the side arches, taking their hats off as they pass the middle.",
          actions = {
            { "Walk through the middle", say "You walk through the King's arch. The street goes quiet behind you. On the far side a very old grey man in a herald's coat is waiting, and you brace yourself. \"Thank you,\" he says. \"Somebody should. It gets to feel neglected.\"" },
          } },
      } },
    { name = "the gutters",
      description = "Stone channels down each side, running with clear water from the fountain. Paper boats go down them. The boys with the hoop made the first ones. The boats are not grey. Somebody finds paper.",
      things = {
        { name = "a paper boat", description = "You fish one out. It is folded from a petition, in a fair hand, the humble kind at threepence. {i}...that Your Majesty will be pleased to...{/} The rest is hull. The stationer gives the boys his spoiled sheets. He spoils a good many, on purpose." },
      } },
    { name = "a sedan chair",
      description = "Set down at the kerb, real, with the paint flaked off and the poles still through the rings. Two grey chairmen stand in the shafts, front and back, resting. They are waiting for the fare to come out of a house that fell down in a gale.",
      actions = {
        { "Get in", say "The seat holds. The chairmen straighten, spit on their hands, and lift. The chair stays exactly where it is on the cobbles and they go off up the street at a trot without it, in step, calling \"By your leave!\" You sit in it a while. It is the most comfortable you have been all week. Then they come back, puzzled, and you get out and pretend to pay." },
      } },
    { name = "the town crier",
      icon = "☺",
      description = "A fat grey man in a three-cornered hat with a bell that makes no sound. He rings it, waits for the hush he remembers, and reads from a paper.",
      actions = {
        { "Listen to the news", say "\"Oyez. The price of bread, a penny. The Court is from home, and returns Friday. The audience of petitions appointed for Thursday will be held Thursday. Found, in the Palace, a liver and white spaniel.\" He rolls up the paper. It is the same paper. He would tell you that it is not his fault if there is no more news than that." },
      } },
    { name = "a weed in the paving",
      description = "Between two setts in the very middle of the Processional Way, one dandelion, in flower. All day the dead walk through it. It has grown a little to one side, as a tree does in a wind." },
    { name = "the palace on its mound",
      description = "At the head of the street, up a flight of a hundred steps: a long front of pale stone with a hundred windows, and behind the roofline, in place of chimneys, the heads of full-grown oaks. Every shutter is open. One window, in the middle of the first floor, has the afternoon sun on it. It has it now. It had it when you came in, and the sun was on the other side of the sky." },
  },

  exits = {
    { to = "er_gate", description = "Down to the gate and the sentry, who will want to know that you are going." },
    { to = "er_market", description = "A square off the street, full of awnings and voices." },
    { to = "er_theatre", description = "A round wooden building down a side lane, with a flag up. A flag up means a play." },
    { to = "er_baths", description = "A dome with steam coming out of the top. Real steam." },
    { to = "er_inn", description = "A sign with a tankard on it, and under the sign a lit window, yellow, with glass in." },
    { to = "er_mint", description = "A square stone building with barred windows and its door standing open." },
    { to = "er_palace", label = "Up the hundred steps", description = "To the Old Palace, where the one window has the sun on it." },
  },
}

space {
  id = "er_market",
  region = "erstwhile",
  name = "The Wednesday Market",
  description = "A cobbled square under a clock with one hand. It is Wednesday: in Erstwhile it generally is. The stalls are up, forty of them, with their awnings, and every one of them is bare boards and has a crowd round it. The dead are buying. They pick things up that are not there, turn them over, put them back and say that they will think about it.",
  ambience = {
    fog { color = "#1c1a28", speed = 0.1, strength = 0.3 },
    dust { glyphs = "·˙∙", color = "#6a6088", rate = 0.3, speed = 0.2 },
  },

  things = {
    { name = "the clock",
      description = "On a tower over the market hall. It has lost the minute hand. The hour hand stands a little short of six, and has done since the weights ran down. Everybody in the square sets their day by it and is always in good time.",
      things = {
        { name = "the motto on the dial", description = "{i}IT IS LATER THAN YOU THINK.{/} A pigeon has built on the IT IS, and the rest has weathered, so that it now reads only {i}THAN YOU THINK{/}, which people find comforting." },
        { name = "the weights", description = "Two iron pears at the bottom of the tower, resting on the floor. The winder went with the court. He took the key, meaning to send it back." },
      } },
    { name = "the fishwife",
      icon = "☺",
      description = "A broad grey woman behind a slab, with her sleeves rolled. She holds up nothing by the tail and tells the square that it was swimming this morning.",
      actions = {
        { "Ask if it is fresh", say "She gives you a look that has stopped duchesses. \"Fresh? It come up the river today.\" It did. It was that day's catch. She slaps it down on the slab in front of you, and there is a wet sound, and no fish, and a few real scales on the stone that the river still sends her out of habit." },
      } },
    { name = "a cheese stall",
      description = "Run by two brothers who do not agree about cheese. The wheel between them has been gone since the mice of ninety years ago. The argument is in its prime.",
      things = {
        { name = "the cheese wire", description = "Real, on its board, rusted through in the middle. One brother picks up each handle when a customer comes, and they cut the air between them with a good deal of care." },
        { name = "a mousehole in the stall", description = "With a mouse in it, living, small and brown. It sits up when the brothers cut. It does not know what it expects. Its family has sat up for that wire for three hundred generations." },
      },
      actions = {
        { "Ask for a taste", say "A grey thumb and finger hold out a crumb of nothing. You take it and chew. \"Well?\" says one. \"Sharp,\" you say. \"There!\" he says to the other. \"Too sharp?\" says the other. You say no, exactly sharp enough, and they both look at you with dislike for having ended it." },
      } },
    { name = "the ribbon woman",
      description = "A tray on a strap, and on the tray the ghosts of ribbons, lilac and grey and a faded rose. Among them, one that is red. A real one, silk, new.",
      things = {
        { name = "the red ribbon", description = "A yard of it, scarlet, bright as a cut finger in all that grey. She does not seem to know that it is different. Girls come and hold it against their hair, and it will not go with them, and they put it back and take the lilac.",
          actions = {
            { "Ask where she got it", say "\"A gentleman left it,\" she says. \"In payment. Walked through here barefoot of a Thursday evening with the sun behind him and not a penny on him, and bought the whole tray for the children in the square, and paid with that off his own sleeve.\" She touches it. \"It keeps its colour very well.\"" },
          } },
      } },
    { name = "the market hall",
      description = "An open hall on stone pillars with a room above for the weights and measures. The pillars are worn at hip height on one side, where the same people have leaned to talk for four hundred years and are leaning now.",
      things = {
        { name = "the standard yard", description = "A brass bar let into a pillar, to measure cloth against. It has shrunk a little in the cold of ninety winters, and the ghost drapers have shrunk their ells to match. It is the last law in Erstwhile that anybody enforces." },
        { name = "the pillory", description = "At the end of the hall, for short weight. A grey baker stands in it with his head and hands through the holes. The board rotted off its post in your grandfather's time and is lying in the nettles. He could go. He was given until six." },
        { name = "the notice of tolls", description = "{i}By favour of the King, this market is free to all comers on Wednesdays for ever.{/} It is the one grant of that reign that nobody thought to strike out, because it was made on a Tuesday." },
      } },
    { name = "a pieman",
      description = "With a tray on his head and a handbell. He cries pies. The tray is real, tin, and there is a real pie on it, one, golden, steaming.",
      things = {
        { name = "the pie", description = "Pork, by the smell, with a raised crust and a hole in the top. It is hot. It has, you would swear, just come out of an oven. The pieman passes close, crying it, and none of his customers so much as looks." },
      },
      actions = {
        { "Buy the pie", say "You hold out your copper. His hand passes through it and he frowns, and tries again, and then he gives a small shrug and tips the tray. The pie slides into your hands. It is real and it burns your fingers. You eat it standing in the square. It is the best pie in the kingdom, and it was made this morning at the inn by a living man who puts one on that tray every Wednesday and has never said why." },
      } },
    { name = "a quack on a tub",
      description = "A thin grey man with a case of bottles, selling an elixir to a ring of the dead. {i}Doctor Bolus's Sovereign Cordial. Against Agues, Humours, and the Decline.{/}",
      actions = {
        { "Ask what it cures", say "\"Mortality, sir!\" he cries, and holds a bottle up to the light, and the light comes through him and the bottle both. \"Not one customer of mine has died since I came to this pitch. Ask them!\" The crowd nods. It is perfectly true. You do not buy a bottle. You feel that it would be taking an unfair advantage." },
      } },
    { name = "the egg girl",
      description = "About nine, with a basket, sitting on the hall steps. She is not selling. She is counting the people in the square on her fingers and getting a different answer each time, because of you.",
      actions = {
        { "Ask what she is counting", say "\"Us,\" she says. \"There is always the same. Two hundred and six, market days.\" She looks at you. \"Two hundred and seven.\" She thinks about it honestly, the way a child does. \"You have a shadow,\" she says. \"I had one. Where do you get them?\" You tell her that they come with you. She nods, and counts you again, and seems pleased with the total." },
      } },
    { name = "the cobbles",
      description = "Worn into paths between the stalls, deep ones, like the runs of animals. The living made the first inch of them. The dead have made the rest, and the dead weigh nothing. You do not know how that is managed. It has taken them ninety years.",
      wonder = true },
    { name = "a dog under a stall",
      description = "A grey terrier, fast asleep with its nose on its paws. Its legs are going. It is after a rat that was caught in the old King's time, and it is gaining." },
    { name = "the market cross",
      description = "A stone shaft on five steps in the middle of the square. Proclamations were read from it. The last one is still pasted to the shaft, under a little roof somebody made for it out of a slate.",
      things = {
        { name = "the last proclamation", description = "Half a sheet. The top is gone to the weather. {i}...and whereas no such day was, nor anything done upon it, all persons holding papers of that date are to bring them in to be burned, and will be thanked.{/} Under it is the seal of the Council. There is no royal seal.",
          actions = {
            { "Read it aloud", say "You read it out, since that is what the cross is for. The market does not stop. But round the foot of the steps a few grey heads turn, and one old man takes a folded paper half out of his coat, and looks at it, and puts it back, and buttons the coat." },
          } },
        { name = "the top step", description = "Hollowed by the feet of criers. Somebody has set a jam jar in the hollow with a bunch of hawthorn in it. The water is fresh." },
      } },
    { name = "the awnings",
      description = "Striped canvas, gone to threads, lilac and grey. They belly and fall in a wind you cannot feel. It is a Wednesday's wind, from a long time ago, and it was blowing from the west." },
  },

  exits = {
    { to = "er_high_street", description = "Back to the Processional Way." },
  },
}

space {
  id = "er_baths",
  region = "erstwhile",
  name = "The Royal Baths",
  description = "A domed hall over a hot spring. Springs do not move with the court. The water still comes up at blood heat into a round marble pool, the steam still goes out through the eye of the dome, and the dead of Erstwhile still come in to sit in it up to their necks, sighing. It is the one thing in the city that they are right about.",
  palette = { bg = "#0c1214", text = "#cfd8d8", dim = "#62787a", accent = "#8fd0c8", border = "#2e4a4c" },
  ambience = {
    steam { glyphs = "˙°∙", color = "#4a6a6c", rate = 0.5 },
    drip { glyphs = "⠁⠂⠄⡀", color = "#5aa098", rate = 0.2 },
  },

  things = {
    { name = "the great pool",
      wonder = true,
      description = "Forty feet across, green marble, full to the lip and smoking gently. A dozen grey heads rest along the rim with their eyes shut. The water does not part round them. It goes on being a flat, clear disc with the dome in it, and where each bather sits there is only a place where the steam hangs a little differently, as if it had been asked to wait.",
      things = {
        { name = "the spring", description = "In the middle, under the surface, a slow boil where the hot water comes up through a brass rose. It has not missed an hour since the baths were built over it, nor for however long before." },
        { name = "a judge", description = "Up to his chin, with his wig on. He kept it on in the bath in life, in case of being recognised. He is asleep. He has reserved judgement." },
        { name = "two merchants", description = "Side by side, talking low about the price of alum and whether the removal of the court will affect it. They have decided to wait and see." },
        { name = "an old soldier", description = "With one grey leg and a place where the other is not. In the water you cannot tell which is which. That is why he comes." },
      },
      actions = {
        { "Get in", say "You leave your clothes on a bench and go down the steps. It is hot. It is properly, wonderfully hot, and the road goes out of your legs like a tide. Along the rim the grey heads make room, a hand's width each, without opening their eyes. Nobody speaks. You have never in your life been in such good company, and it takes you an hour to get out." },
      } },
    { name = "the dome",
      description = "Coffered stone with a round eye at the top, open to the sky. Ferns grow round the eye in a green ring and drip. The steam goes up through it in a column, and from outside, the shepherd says, on a cold morning the city looks to be breathing." },
    { name = "the bath keeper",
      icon = "☺",
      description = "A stout grey woman in clogs with a pile of towels over her arm. She hands one to everybody who comes out. The towels are as grey as she is. Yours, when she gets to you, is real.",
      things = {
        { name = "the real towel", description = "Rough, clean, and smelling of a clothes line. It has a name tape: {i}QUIET PINT{/}. The landlord sends them up of a Monday. She has never asked how the linen comes back so heavy." },
      },
      actions = {
        { "Ask what it costs", say "\"A penny the bath, a halfpenny the towel, and nothing for the conversation, there being none allowed.\" She nods at a board. You say you have only the one copper. \"Then owe it,\" she says. \"Everybody does. I have it all written down for when the court is back and people are in funds.\"" },
      } },
    { name = "the board of rules",
      description = "{i}No Talking. No Splashing. No Swords. No Petitions to be Presented to Persons in the Water.{/}",
      things = {
        { name = "the last rule", description = "Added in a hurry, in different paint, and underlined. There was an incident. A king is entitled to one hour a week in which nobody asks him for anything, and for some years this was where he took it." },
      } },
    { name = "the royal alcove",
      description = "A recess off the pool with its own steps and a curtain rail. The curtain is gone. On the bench inside, folded, is a bath robe.",
      things = {
        { name = "the robe", description = "Real, white once, with a lion worked on the pocket in gold thread. It has been folded for ninety years and has kept the fold. Nobody has moved it. The dead will not, and the living have not been in." },
        { name = "a cake of soap", description = "In a dish. Cracked like a dry river. It still smells, very faintly, of bay." },
        { name = "a slate", description = "Hung on the wall with a pencil on a string, for a man to make notes in his bath. It has been wiped, and written on once more. {i}Why not all of them?{/} And under that, after what looks like a long time: {i}Thursday.{/}",
          actions = {
            { "Read the slate again", say "{i}Why not all of them? Thursday.{/} The first line is a question. He has pressed hard on the second, and it is not one. A man sat in hot water for an hour, with nobody asking him for anything, and worked out that he would rather they did." },
          } },
      } },
    { name = "the cold plunge",
      description = "A square tank in the corner, fed from the roof. It is full of rain, and frogs, and one water lily that has come from somewhere. A grey gentleman stands on the edge in his drawers, nerving himself.",
      actions = {
        { "Tell him it is not so bad", say "\"That is what they all say,\" he says, without turning. \"I have been told so by every person in these baths.\" He bends his knees. He straightens them. \"I shall go in presently. One does not want to rush it.\" The frogs, who have seen this before, do not move." },
      } },
    { name = "the hot room",
      description = "Through an arch: marble benches in tiers round a floor too warm to stand on. The spring runs under it. Nothing grows here and nothing has fallen in. It is the best-preserved room in the capital and nobody is in it but a single very thin ghost, lying flat, who came in ninety years ago for his chest.",
      things = {
        { name = "the thin ghost", description = "He breathes in, slowly, and out. He says the heat is doing him good and that he feels a different man." },
        { name = "the floor", description = "You can see the heat coming off it in a shiver. Set in the centre is a bronze grating, and under the grating you can hear the spring going by in the dark, in a great hurry, on its way to being a bath." },
      } },
    { name = "the changing benches",
      description = "Oak, round the wall, with pegs above. On every peg hangs a suit of grey clothes that you can see the wall through. On one peg hang yours.",
      things = {
        { name = "a peg with a ticket", description = "Number 9. The bathers hang a wooden ticket round their necks to get their own clothes back. Every ghost in the pool is wearing one. So, you find, are you, and you do not remember being given it." },
        { name = "a lost property box", description = "One left glove, a wig, a set of teeth, a sword that was not supposed to be brought in. All grey, all waiting. At the bottom, real, a child's wooden boat." },
      } },
    { name = "the masseur",
      description = "An enormous grey man with his arms folded, standing by a slab. He has had no custom in ninety years. The dead do not get stiff.",
      actions = {
        { "Lie on the slab", say "He cracks his knuckles, which makes no sound, and sets about your shoulders. You feel nothing. Then you feel a cold, exact pressure go down each side of your spine, like two icicles being drawn along it, and something in your neck that has been wrong since the Goat Track gives up with a click. \"Carrying your pack on one side,\" he says. \"They all do.\"" },
      } },
    { name = "the conduit",
      description = "A stone channel taking the overflow out through the wall, steaming. It runs down behind the houses to the gardens. Where it goes, things are green all winter." },
    { name = "the mosaic floor",
      description = "Round the pool, in small stones: fishes, a sea god, tritons blowing shells. Two hundred years of wet feet have worn a path through the sea god's middle, and somebody long ago replaced the missing stones with whatever was to hand, so that he has a belt of pebbles, buttons and one tooth." },
  },

  exits = {
    { to = "er_high_street", description = "Out into the cool of the street, feeling a different man." },
  },
}
