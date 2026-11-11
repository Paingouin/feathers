-- Head Office: Temptation, Contracts, and the Small Print.

space {
  id = "ho_temptation",
  region = "head_office",
  name = "The Department of Temptation",
  description = "A long room laid out for four hundred, with a desk for each, a speaking tube for each, and a great map of the upper world along one wall. Eleven of the desks are occupied. The rest have chairs tipped against them and a card: {i}Vacant. Apply within.{/} A bell on the wall rings every time somebody upstairs is tempted. It is quiet enough to hear the eleven breathing.",
  palette = { bg = "#100a0c", text = "#dccdc8", dim = "#7e6862", accent = "#e05848", border = "#5c2c28" },
  ambience = {
    embers { glyphs = "·˙", colors = { "#b03828", "#e07848" }, rate = 0.05 },
    dust { glyphs = "·", color = "#40302e", rate = 0.1, speed = 0.08 },
  },

  things = {
    { name = "the Head of Temptation",
      key = "ho_head_tempter",
      icon = "☻",
      description = "Mrs Scorch, in half-moon spectacles and a cardigan the colour of a clinker, at a desk on a dais. She has the largest target in the Firm and the smallest staff. She goes through the day's returns with a red pencil, and where another manager would sigh she lets out a little smoke.",
      things = {
        { name = "her red pencil", description = "Worn to a stub. She gets a new one each quarter and there has never been enough quarter left over." },
        { name = "her cardigan", description = "Hand-knitted, by her, in meetings. One sleeve is longer than the other by the length of the Budget." },
        { name = "the returns", description = "A thin sheaf. {i}Approaches made: 9. Approaches heard out: 2. Sold: 0. Remarks: subject said he would think about it; subject's dog bit our Mr Singe.{/}" },
      },
      actions = {
        { "Ask why so few", say "\"Nobody will go up.\" She takes off the spectacles. \"It's the weather, and the mud, and the people. You stand at a crossroads four days, and along comes a fellow with a fiddle, and before you can open your mouth he's told you about his mother's leg. They want listening to. That's all most of them want. We haven't the hours.\"" },
        { "Ask to be tempted", say "She looks you over, kindly, from your hat to your boots, and runs a finger down a list. \"Adventurer. You'd want glory, a sword that works, and somebody to have been wrong about you.\" She shuts the list. \"I could do you all three, dear, and you'd hand them back in a week for want of anything to grumble at. I've seen your sort. You are a pleasure to meet and a waste of a form.\"" },
        { "Ask about the Glowers branch", say "\"Brimley's shop. One alderman in three hundred years, and him not finished reading.\" She lets out some smoke. \"And do you know, I'd give six of my eleven for him. He writes a tidy hand and he's never once put in for expenses. If the Chairman were in I'd have had him confirmed long since.\"" },
      } },

    { name = "the eleven",
      description = "The whole field strength of infernal temptation, at eleven desks near the front where the lamps are.",
      things = {
        { name = "Mr Singe", description = "With a bandaged shin and his foot on a stool. He is writing a long report about a dog. It is his fourth draft and it is getting fairer to the dog each time." },
        { name = "a tempter rehearsing", description = "She is saying it over to a hand mirror. \"Have you ever wished.\" Too keen. \"Have you ever {i}wished{/}.\" Too oily. \"Wished, have you?\" She puts her head down on the blotter." },
        { name = "a tempter on the speaking tube", description = "\"Yes. Yes, I see. And then what did your brother say?\" He has been on that tube since Michaelmas. He has filled two notebooks. He covers the mouthpiece and whispers to you: \"I think she's nearly ready to hear about the offer.\" He has thought so since Martinmas." },
        { name = "a very young tempter", description = "First week. Horns hardly through. He has a sample case on his knees, open: a purse that is never empty, a mirror that says yes, a small bottle of being right. He keeps touching them. He cannot believe anybody would say no." },
      },
      actions = {
        { "Ask the young one how it is going", say "\"I've got an old lady in Lower Wince,\" he says. \"She let me in. She gave me a bun.\" He swallows. \"She asked if I was eating properly and whether my mother knew where I was. I've to go back Thursday. She's knitting me something for the horns.\"" },
      } },

    { name = "the empty desks",
      description = "Three hundred and eighty-nine of them, in rows, going back into the dark where the lamps have been turned down to save oil.",
      things = {
        { name = "a tipped chair", description = "It has been tipped so long that it has left two dents in the edge of the desk." },
        { name = "a desk with a plant on it", description = "Dead, in a pot. The devil who had it went up to a crossroads in the reign of some king or other and sends a card each midwinter. He has a smallholding now. He keeps bees." },
        { name = "a desk with its drawer open", description = "In it: a pair of woollen gloves, a guide to the upper roads, and a half-written letter of resignation which gets as far as {i}It is not the work, it is the{/} and stops." },
      } },

    { name = "the great map",
      wonder = true,
      description = "It covers the whole of the long wall: the upper world, painted on plaster, coast and moor and mountain, with every village named. You find Greenhollow, no bigger than a thumbnail, with its well. You find Aldmoor. Into every place a small brass pin has been set for each soul the Firm holds there, and you step back to take in the size of the harvest. There are perhaps forty pins. On a map the size of a barn, in a business older than the hills, forty. You look for a long time at all the unpinned country, the plain crowded plaster, parish after parish of people who were asked and said they would rather not. Nobody ever painted a picture of that. It turns out that somebody did, and that it hangs in the last place you would look.",
      things = {
        { name = "the pin at Castle Regret", description = "One pin, black-headed, in the Glowers. It has a paper flag: {i}212. Disputed.{/} It is loose in its hole. A clerk comes by each morning and pushes it back in, and each morning it has worked a little way out." },
        { name = "the edges of the map", description = "The painters did the coast and went a little way out to sea, and then the plaster is simply bare. Nobody was sent that far. In the north, past the last island, somebody has pencilled a question mark, and somebody senior has rubbed it out." },
        { name = "a place with no pins at all", description = "Greenhollow. Not one, in all its history. A note is pasted beside it: {i}Do not send. They ask you in, and you are there all day, and you come away with onions.{/}" },
      } },

    { name = "the temptation bell",
      description = "A brass bell on a bracket by the door, with a wire going up through the ceiling. It rings when anyone upstairs is fairly tempted. It has a cobweb in it.",
      actions = {
        { "Flick it", say "It gives one clear note. All eleven heads come up like deer. Mrs Scorch has a hand on her pencil. Then they see you by the bell, and each of them finds something on the desk to look at, and nobody speaks to you for a minute, out of tact." },
      } },

    { name = "the sample cupboard",
      description = "A glass-fronted press, kept locked, with the standard offers on shelves.",
      things = {
        { name = "a purse that is never empty", description = "It never is. The coin in it is always the same coin. Shopkeepers get to know it." },
        { name = "a fiddle", description = "Whoever plays it plays better than anyone alive. There are eleven of these upstairs already, and their owners meet at fairs and cannot stand each other." },
        { name = "a jar labelled YOUTH", description = "It has a great deal of dust on it, which seems unfair." },
        { name = "a shelf marked WHAT THEY ACTUALLY WANT", description = "Empty, and always has been. A card: {i}Not stocked. Enquirers to be told to ask at home.{/}" },
      } },

    { name = "the targets board",
      description = "A blackboard on an easel. {i}SOULS THIS QUARTER.{/} A red line climbs across it, bravely, towards the top right corner. Beneath it runs a white line, flat as a pond, and that is the real one." },

    { name = "the recruiting poster",
      description = "{i}TEMPTERS WANTED. See the world. Meet people. Outdoor work, own crossroads provided.{/} The devil in the picture is standing under a blue sky. The artist had never seen one and has given it corners." },

    { name = "the speaking tubes",
      description = "One per desk, of brass, with a whistle in the end. They go up through the rock to wherever a tempter is posted.",
      actions = {
        { "Listen at one", say "You pull the whistle out of a tube on an empty desk and put your ear to it. Wind. Rain on a signpost. A long way off, a cart. Nobody has stood at that crossroads for a century and the tube has gone on faithfully bringing the weather down." },
      } },

    { name = "the kettle",
      description = "On a ring in the corner. It boils without help. Eleven mugs hang over it and a twelfth, new, with a small pair of horns painted on in a wobbly hand." },

    { name = "the lost umbrella stand",
      description = "By the door, full. Every tempter is issued one for the upper world and every one comes back with somebody else's. There is a shepherd's crook in there, and a bishop's." },
  },

  exits = {
    { to = "ho_lift", label = "The lift", description = "Scuttle holds the door with his black finger." },
  },
}

space {
  id = "ho_contracts",
  region = "head_office",
  name = "Contracts",
  description = "A hall of high desks and higher stools, where a hundred scriveners in black sleeves write without looking up. The air is brown with ink. Parchment hangs drying on lines overhead like washing. Here every bargain the Firm strikes is drawn, engrossed, checked, checked again and sent down to be signed, and here every word of it is weighed by people who have a great respect for words and no illusions about them.",
  palette = { bg = "#0e0b08", text = "#dcd2bc", dim = "#7c6e56", accent = "#d8a040", border = "#58421e" },
  ambience = {
    dust { glyphs = "·˙", color = "#4a3e28", rate = 0.15, speed = 0.1 },
    flicker { color = "#d8a040", strength = 0.1 },
  },

  things = {
    { name = "the Chief Scrivener",
      key = "ho_scrivener",
      icon = "☻",
      description = "Mr Quire: thin, dry, the colour of a law book, with a pen behind each ear and a third in his teeth. He has drawn every form of contract the Firm uses and can recite any of them, and he has a horror of ambiguity which amounts to a kind of honesty.",
      things = {
        { name = "his sleeves", description = "Black sateen to the elbow, to keep the ink off. The ink has come up to meet them from the other direction." },
        { name = "his three pens", description = "Left ear for drafts. Right ear for fair copies. The one in his teeth is for corrections, and is bitten nearly through." },
        { name = "his magnifying glass", description = "On a ribbon. He looks at you through it for a moment, with a huge pale eye, in case you had a clause somewhere." },
      },
      actions = {
        { "Ask whether the contracts are fair", say "He takes the pen out of his teeth. \"Scrupulously. People think we cheat. We have never needed to. We tell them the price, in plain words, on the first page, in letters an inch high.\" He puts it back. \"They don't read the first page. They turn straight to the back to look for the trick, and sign while they're hunting for it.\"" },
        { "Ask to read the small print", when = no(flag "ho_small_print_open"), set "ho_small_print_open",
          say "Every pen in the hall stops. Mr Quire looks at you for a long moment through the glass. \"Nobody asks,\" he says. \"In all the years. They assume the worst of it and sign.\" He climbs down from his stool, which takes a while, and unhooks a key from under his coat. \"It is through the little door. I must warn you that it is exactly what it says. It is print, and it is small. Wipe your feet.\"" },
        { "Ask to read the small print", when = flag "ho_small_print_open", say "\"The little door is open,\" he says. \"I have left it so. I find I rather like having had it asked.\"" },
      } },

    { name = "the scriveners",
      description = "A hundred backs, bent. A hundred pens. They write in unison, more or less, and when they dip, a hundred elbows go out together like a rowing crew.",
      things = {
        { name = "a scrivener writing WHEREAS", description = "He has been on the capital W since the morning. It has a dragon in it, and the dragon has a small contract of its own." },
        { name = "a scrivener ruling lines", description = "Faint, in pencil, one every eighth of an inch, on a skin as big as a tablecloth. When the writing is done she will rub them all out again. She regards the writing as an interruption." },
        { name = "a scrivener who has made a blot", description = "He is sitting quite still with his hands flat on the desk. The others have moved their stools a little away. A senior is on his way down the hall with a pumice stone, not hurrying." },
        { name = "the checker of commas", description = "An old devil with a lens screwed into one eye, reading a finished deed with a pin. He moves the pin from comma to comma. \"A comma,\" he says, to nobody, \"once cost us a duchess.\"" },
      } },

    { name = "the drying lines",
      description = "Cords run from pillar to pillar overhead, and the fresh deeds are pegged along them to dry, swaying in the warm air.",
      things = {
        { name = "a deed still wet", description = "{i}...the party of the second part, hereinafter the Soul...{/} The ink shines. A drop has gathered at the foot of a long s and is thinking about the floor." },
        { name = "the pegs", description = "Clothes pegs, of bone. Each is numbered. There is a ledger for the pegs." },
      } },

    { name = "the standard form",
      description = "Framed on the end wall, twelve feet high, so that every stool can see it: the Standard Terms, from which all the others are cut down.",
      things = {
        { name = "the first page", description = "In red capitals an inch tall. {i}THE PRICE IS YOU. ALL OF YOU. FOR EVER. PLEASE BE SURE.{/} There is nothing else on the page. It is the most honest sentence you have read in any office, above ground or below." },
        { name = "the middle pages", description = "Definitions. A {i}day{/} is defined. {i}For ever{/} is defined, at some length, with examples. {i}You{/} is defined, and you read that one twice, uneasily, since it is thorough." },
        { name = "the foot of the last page", description = "Where the frame ends, the text does not. It gets smaller, line by line, and runs down off the parchment on to the wall, and along the skirting, and under a little door." },
      } },

    { name = "the little door",
      key = "ho_little_door",
      description = "A door in the wainscot no higher than your belt, with a brass handle and a keyhole. The last line of the Standard Terms runs under it, in letters the size of ants.",
      variants = {
        { when = flag "ho_small_print_open", description = "The little door stands open on a passage. The last line of the Standard Terms runs in under the lintel and on down the wall inside, shrinking as it goes." },
      } },

    { name = "the ink works",
      description = "A row of stone vats at the side of the hall, with a devil stirring each.",
      things = {
        { name = "the black vat", description = "Oak gall, iron and soot. It is for everything the Firm writes." },
        { name = "the red vat", description = "For first pages and for totals. You ask what goes into it. \"Beetroot,\" says the stirrer. \"What did you think? We get it from a gentleman in the Glowers, by the cask.\"" },
        { name = "an empty vat", description = "Scrubbed white, and labelled {i}Signatory's own{/}. Nothing is ever kept in it. The signatory brings that along." },
      } },

    { name = "the rejected drafts",
      description = "A wicker hamper by the door, full of screwed-up parchment.",
      things = {
        { name = "a draft with a loophole", description = "Smoothed out, it reads well enough. Then you see that clause nine lets the signatory off if it rains. It has been circled in red and marked {i}WHO{/}." },
        { name = "a draft that is too kind", description = "{i}...and may at any time change his mind...{/} Somebody wrote that in a fair hand, late on a long shift, and crossed it out, and then left it lying where it could be seen." },
      },
      actions = {
        { "Pocket a loophole", say "You reach for the draft with the rain in it. The hamper has a lid, and the lid comes down on your fingers, gently, like a cat's mouth. Mr Quire does not turn round. \"Those are to be burnt,\" he says. \"Every one is counted.\"" },
      } },

    { name = "the stool for witnesses",
      description = "A plain three-legged stool by the end wall, with a cushion. Every deed needs a witness, and the witness must be a party with nothing to gain. It has been empty since the Firm was founded. They use a stamp." },

    { name = "the dictionary",
      description = "On a lectern, chained: the Firm's own, in forty volumes, of which this is the first. Every word is defined so that it can mean only the one thing.",
      things = {
        { name = "the entry for SOUL", description = "It runs to nine pages and ends: {i}see also Sundries{/}." },
        { name = "the entry for MERCY", description = "A single line. {i}Not a term of art. See the other party.{/} There is no entry for the other party." },
      } },

    { name = "the sand box",
      description = "Fine white sand for blotting, in a tray as big as a bed. It is raked each night into waves, around three stones. The scriveners say this is not for any reason." },
  },

  exits = {
    { to = "ho_lift", label = "The lift", description = "Back to the wall of buttons." },
    { to = "ho_small_print", label = "The little door",
      description = "Stoop, and follow the last line of the Standard Terms in under the lintel.",
      requires = flag "ho_small_print_open", hidden = true },
  },
}

space {
  id = "ho_small_print",
  region = "head_office",
  secret = true,
  wonder = true,
  name = "The Small Print",
  description = "A passage, and every inch of it is written on. The text of the Standard Terms comes in under the little door and covers the walls, the floor and the vault overhead in close black lines. Near the door the letters are as tall as your hand. A few steps on they are the size of a book's. Then a newspaper's. Then you are walking through a grey mist that is all words, and ahead of you the passage narrows with the print, and goes on, and the grey gets finer and paler until it shines like silk. Nothing here is hidden. Every word of what they do to people is on these walls, in order, and has been all along.",
  palette = { bg = "#0c0c0b", text = "#d8d6cc", dim = "#74726a", accent = "#f0e8c8", border = "#46443c" },
  ambience = {
    dust { glyphs = "·˙'", color = "#4c4a44", rate = 0.25, speed = 0.05 },
    shimmer { color = "#2a2a26", strength = 0.3 },
  },

  things = {
    { name = "the large print",
      description = "By the door, where you can still read it standing up.",
      things = {
        { name = "clause one", description = "{i}The price is as stated on the first page. It has not changed while you were reading this.{/}" },
        { name = "clause two", description = "{i}The Firm will deliver exactly what was asked for. The Firm draws the signatory's attention to the word 'exactly'.{/}" },
        { name = "clause seven", description = "{i}The signatory may not later claim to have been drunk, young, in love, or a king.{/}" },
      } },

    { name = "the middle print",
      description = "Ten paces in. You need to stoop, and then to squint.",
      things = {
        { name = "a clause about fiddles", description = "{i}Musical ability supplied under this deed is not warranted to bring happiness, and in the Firm's experience does not.{/}" },
        { name = "a clause about weather", description = "{i}Nothing herein obliges the Firm's representative to stand in the rain beyond four days.{/} It is initialled, with feeling, by a great many different hands." },
        { name = "a clause in the margin", description = "Added sideways, later, in a hurry: {i}For the avoidance of doubt, a dog is not a party.{/}" },
      } },

    { name = "the fine print",
      description = "Twenty paces in. The lines are hairs. A reading glass hangs here on a hook, and with it you can just make one out.",
      things = {
        { name = "the reading glass", description = "As big as a soup plate, in a brass rim. The handle is worn into the shape of a claw." },
        { name = "a clause about refunds", description = "You hold the glass steady. {i}A soul will be returned on application by the signatory in person, at the counter, on signature of form 212.{/} So it is there. It was always there. You think of a tall gentleman upstairs who sat down to wait three hundred years ago and has never been told." },
        { name = "a clause about clauses", description = "{i}The smallness of this print is not intended to conceal. It is simply that there is a great deal to say and only one wall.{/}" },
      },
      actions = {
        { "Read with the glass", say "You go along the wall a line at a time. It is dry, exact and endless, and nowhere in it can you find a lie. It says what will be taken. It says how long for. A dozen times it very nearly begs the reader to go home. You hang the glass up again with your eyes watering, and it is not all from the strain." },
      } },

    { name = "the finer print",
      description = "Forty paces in. The walls have closed to the width of your shoulders. The writing is a sheen on the stone, like the bloom on a plum.",
      things = {
        { name = "the sheen", description = "You breathe on it and for a moment the letters stand out in the damp, ten thousand to the inch, perfectly formed. Some scrivener cut every one. You wonder with what, and who sharpened it." },
        { name = "a seat in the wall", description = "A niche, with a cushion, for the proof reader. A lens on a bracket. A candle. A calendar, on which the days are crossed off with strokes too small to count." },
      } },

    { name = "the proof reader",
      key = "ho_proof_reader",
      icon = "☻",
      description = "A very small, very old devil called Minim, no bigger than a cat, with eyes like two drops of ink and a lens in each. He walks the passage from the large end to the small, reading every word, and when he gets to the end he starts again. He has found one mistake in nine hundred years. He will tell you about it.",
      things = {
        { name = "his lenses", description = "Ground by himself, one inside the other, six deep. With all six down he can read the Stop. He says it is restful." },
        { name = "his one mistake", description = "\"Clause forty thousand and six. 'Therefor' for 'therefore'. It let out a tinker.\" He still cannot say it without his voice going. \"He had the right. It was in the wording. I waved him off myself.\"" },
      },
      actions = {
        { "Ask what is at the end", when = no(item "ho_full_stop"), give "ho_full_stop", fx "sparkle",
          say "\"The Stop,\" says Minim. He leads you on until the passage is a crack, and reaches in an arm, and brings out a square of vellum under a watch glass. One dot. \"Everything after clause one million is in there. Each clause a tenth of the last. It all had to go somewhere.\" He holds it out. \"Take it. No, take it. I have it by heart, and nobody ever came this far. It ought to belong to somebody who walked the whole wall.\"" },
        { "Ask whether there is a way out in it", say "Minim takes off his lenses, all six, and rubs his eyes with the heels of his claws. \"I am the only one who has read all of it,\" he says. \"And I am not to say. But I will tell you that I read it over and over, and that I am not looking for mistakes any more.\"" },
      } },

    { name = "the floor",
      description = "Written on, like the rest. You have been walking on definitions. Your boots have left no mark: the ink went into the stone a long time back.",
      things = {
        { name = "the word under your left heel", description = "{i}Notwithstanding.{/} You move your foot off it, out of some instinct." },
      } },

    { name = "the vault overhead",
      description = "The schedules and appendices are up there, in columns. Tables of penalties. Tables of interest. A table of what the Firm considers a reasonable time, the entries in which are all the same." },

    { name = "the narrowing",
      description = "Ahead, the passage draws in, as a road does toward the horizon, but this one really is getting smaller. At the far end there is a point of pale light no bigger than a full stop. That is not where the passage ends, Minim says. That is the passage.",
      actions = {
        { "Go as far as you can", say "You turn sideways. You breathe in. You get another six feet, with the whole of the law pressing on your chest and your back, a shining grey like the inside of a mussel shell. Then you can go no further, and neither, you see, could anyone who signed. You back out a shuffle at a time." },
      } },

    { name = "a line somebody has underlined",
      description = "In the middle print, at knee height, one line has a faint scratch drawn beneath it with a claw. {i}The Firm did not make the signatory and makes no claim to know who did.{/} The scratch is very old. Minim says it was there before him and that he dusts round it." },

    { name = "the draught",
      description = "A thread of cooler air comes up the passage from the small end and stirs the hair on your wrists. Minim says it has always done so and that it smells, to him, of outside, though he has never been." },
  },

  exits = {
    { to = "ho_contracts", label = "The little door", description = "Back up the print, as it grows, to the hall of stools." },
  },
}
