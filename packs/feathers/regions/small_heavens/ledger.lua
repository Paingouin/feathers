-- The heaven of Saint Ledger, and the one down the back of his bench.

space {
  id = "sh_ledger_hall",
  region = "small_heavens",
  name = "The Celestial Counting House",
  description = "A banking hall, in grey stone, with a clock at each end that agree. High desks in rows, a stool at every desk, a blessed clerk on every stool, and the sound of ten thousand pens. This is the heaven of Saint Ledger. The righteous come here and are given a column to add. It is all they ever wanted. Everything in the kingdom that was ever owed, paid, promised or put off is entered here, and it balances, and it is the only place where it does.",
  palette = { bg = "#0e1010", text = "#d4d8d0", dim = "#6c746c", accent = "#b8c890", border = "#384238" },
  ambience = { dust { glyphs = "·", color = "#4c564a", rate = 0.1, speed = 0.2 } },

  things = {
    { name = "Saint Ledger",
      icon = "§",
      description = "A narrow saint in a high collar, at a desk on a dais, with a halo that has a dent in it and a pen behind each ear. In life he was the first man in Aldmoor to keep honest books, and was martyred for it by a committee. He does not smile. But when a column comes out right, something happens at the corners of his eyes, and the clerks nearest him sit up straighter.",
      things = {
        { name = "the dent in his halo", description = "The shape of the bowl of a ladle. He had gone to ask what a bowl of soup cost. He says the question stands. He has not been back." },
        { name = "his pens", description = "A black one for what is owed and a red one for what is forgiven. The red one has been cut once. It is still on its first nib." },
        { name = "his collar", description = "Starched. It has kept his chin up through nine centuries of other people's arithmetic." },
      },
      actions = {
        { "Ask what you owe", say "He turns back a great many pages. \"One night's lodging, Greenhollow, a bed, broken. A cracked mug of slops, Aldmoor, remitted by the house. One left sock, donated, see Socks.\" He runs a finger down. \"Against which: a floor mopped. A door held for a cat. A column dusted, if you have got to that.\" He rules a line. \"You are, to my surprise, a little in credit. Do not let it go to your head. It is very little.\"" },
        { "Ask whether anything is forgiven", say "\"Forgiven is not my word.\" He takes the red pen from behind his ear and looks at it. \"Written off. When there is no prospect of recovery, and the debtor is sorry.\" He puts it back. \"I do more of it than is generally known. I do it after hours. A saint has his reputation to think of.\"" },
        { "Ask who made the world", say "\"That is before the books open.\" He says it with distaste. \"I was a clerk in Aldmoor. The town was already in arrears when I got there, and so was everything else. I do not speculate. I enter.\" He dips the black pen and does not look at page one. \"Was there anything else? There is a queue.\"" },
      } },
    { name = "the Great Ledger",
      wonder = true,
      description = "On a lectern the size of a pulpit: a book as tall as a door, bound in something grey, with a silk marker. {shimmer}The pen that writes in it is not held by anybody.{/} It goes down the page by itself, steadily, entering the kingdom as it happens. A loaf bought. A promise made on a quay. A copper coin, bent, handed over at a gate. Each line is ruled off, and each page comes out, at the foot, to nothing owing and nothing over. It has never once had to be gone through twice.",
      things = {
        { name = "today's page", description = "The ink is wet. {i}Recd. of an adventurer, one question, impertinent. Pd. to same, one answer, sufficient.{/} You are, as you watch, entered." },
        { name = "the silk marker", description = "Red, faded to rose. It marks the place where the King's account begins. That account is in marrows, and it is the only one in the book kept in a different column, headed {i}In Kind{/}." },
        { name = "the binding", description = "Grey, scuffed, patched at the corners with newer hide. The spine has no title. A book that holds everything does not need to say which book it is." },
      },
      actions = {
        { "Look yourself up", say "It takes a moment, since the pen will not stop for you. There. Your name, a short column, a great many small sums. Kindnesses, chiefly, received and not noticed: a farthing from a beggar, a prayer from a landlady, a goose that let you go. You had not known anybody was keeping count. It seems you have been running, all this time, on other people's credit." },
      } },
    { name = "the blessed clerks",
      description = "Row on row, on high stools, in black, adding. They have sleeve protectors and a look of absolute peace. In life they were told that the sum would never come out. Here it does, every time, at the bottom of every page.",
      things = {
        { name = "a clerk who is humming", description = "Under his breath, a hymn, in four four time. He taps the totals. He was a tax collector in Aldmoor and was not liked. He is liked here. He has a desk by the window." },
        { name = "an empty stool", description = "Third row, with a cushion on it and a pen laid ready. {i}Reserved: A. Pell.{/} The bookkeeper of Elbow Lane is expected, in due course, and has been since he was nine and first made a column agree." },
        { name = "a clerk with an abacus", description = "A dwarf, the only one in the hall, with ink in his beard. He came up from Far Enough over a matter of four pence in the Counting House accounts, to check it at the source, and found it so restful that he stayed. The four pence was right." },
      },
      actions = {
        { "Add a column", say "They give you a stool and a short one, twelve lines, farthings. You add it. You get a different answer from the one at the foot. You add it again, and get the foot. A clerk leans over. \"First time's always nerves,\" he whispers. You have seldom felt so forgiven." },
      } },
    { name = "the two clocks",
      description = "One at each end of the hall, brass faced. They agree to the second. Aldmoor's clocks have never agreed in the town's history, and half the petitions that come up here are about that.",
      things = {
        { name = "the plate under the near one", description = "{i}Regulated by H. Tick, of Tickover, on approval.{/} She sent the bill up with it. He paid on the day. They have corresponded ever since, with great warmth, entirely in figures." },
      } },
    { name = "the queue at the grille",
      description = "Souls, in a line, with papers, waiting to have their accounts made up. They are not anxious. Everybody has been told that it comes out to nothing, in the end, and most of them find when they get to the front that they had thought they owed a great deal more.",
      things = {
        { name = "an old woman with a jam jar", description = "Full of buttons. She has saved them all her life against this day. The clerk at the grille is counting them, each one, and writing her a receipt." },
        { name = "a baron", description = "With a strongbox, sweating. He would like to settle in advance. He has been told that it is not that kind of account." },
      } },
    { name = "the docket spike",
      description = "A brass spike on a block, with the dockets for every miracle done this week. Socks: four thousand and six. Soup: uncounted, she will not file. Almost: three, each stamped {i}PENDING{/}.",
      actions = {
        { "Read the top one", say "{i}MIRACLE, minor. A door in Greenhollow, stuck, opened at the second try. Claimed by: Jamb. Disputed by: Damp.{/} There is a hearing next century." },
      } },
    { name = "the benches",
      key = "sh_benches",
      description = "Along the wall under the windows, for those waiting: long oak settles with horsehair cushions, buttoned. They have been sat on by every soul in Aldmoor for nine hundred years, each with a pocket.",
      variants = {
        { when = flag "sh_bench_found", description = "Long oak settles with horsehair cushions. One cushion is pushed aside. Between the seat and the back there is a gap, a hand wide, which goes down very much further than a bench is deep, and at the bottom of it something glints, and there is a sound like a small tambourine." },
      },
      actions = {
        { "Feel down the back of the bench", when = no(flag "sh_bench_found"), set "sh_bench_found",
          say "Your fingers go down between the cushions. Horsehair. Crumbs. A farthing. Another. Your arm is in to the shoulder and you have not touched the bottom, and something down there takes your hand in a small dry grip and shakes it. \"Mind your head coming down,\" says a voice like two coins rubbed together. \"It's low. It's all low. That's the idea.\"", fx "sparkle" },
      } },
    { name = "the windows",
      description = "Tall, plain, north facing, for a steady light. Through them, far below, the roofs of the Street of Small Gods, with the incense coming up like a column of figures." },
    { name = "the inkwell",
      description = "A cistern, really, in the middle of the hall, with a pump. Black on one side and red on the other. The red side is low. He says it evaporates." },
    { name = "a notice",
      description = "Framed. {i}THE BOOKS CLOSE AT THE END OF TIME. Queries after that date cannot be entertained.{/} And under it, a second frame, smaller: {i}Until then, ask. That is what the grille is for.{/}" },
    { name = "the waste paper basket",
      description = "Wicker, by the dais, with one sheet in it. A page of the Great Ledger, torn out by hand. It is the only one. It is a Thursday's. He will not say who tore it or by what authority, but his collar has gone a little limp on that side ever since." },
  },

  exits = {
    { to = "temple_quarter", label = "The public stair", description = "Down to the Temple, past the collection box, which is also on the way out." },
    { to = "sh_small_change", label = "Down the back of the bench", description = "Head first, between the cushions.",
      requires = flag "sh_bench_found", hidden = true },
  },
}

space {
  id = "sh_small_change",
  region = "small_heavens",
  secret = true,
  name = "Down the Back of the Bench",
  description = "You slide down between the cushions and land on a floor of coins. It is a long low place, like the inside of a sofa, lit by what comes down through the gaps: horsehair overhead, springs, a rafter of oak. Everything that was ever dropped and not thought worth looking for is here. Farthings, chiefly. This is the heaven of the God of Small Change, who lives directly underneath Saint Ledger, and whom Saint Ledger has been trying to find, with a view to an audit, for nine hundred years.",
  palette = { bg = "#120f0a", text = "#dcd2b8", dim = "#7c6e50", accent = "#d8a848", border = "#4e3e20" },
  ambience = { shimmer { color = "#d8a848", strength = 0.18 }, dust { glyphs = "·˙", color = "#6a5a36", rate = 0.2 } },

  things = {
    { name = "the God of Small Change",
      icon = "☻",
      description = "The size of a child, the colour of an old penny, with bright eyes and a waistcoat made entirely of pockets. He goes by Tuppence. He is prayed to at every market stall and on every doorstep when the rent man comes: {i}let me have it on me{/}. He is the god of having just enough, by a farthing, at the last moment, and he has never once let it be a farthing over.",
      things = {
        { name = "his waistcoat", description = "Forty pockets, each with one coin. He knows which. When somebody down there pats their coat in a panic, he pats his, and one of his pockets is empty and one of theirs is not." },
        { name = "his fingers", description = "Quick, thin, green at the tips from copper. He counts all the time, without looking, like a man telling beads." },
        { name = "his percentage", description = "A small tin with a slot. The offering dish in his Oratory is always a farthing short, and here it is. He is not ashamed. \"Expenses,\" he says." },
      },
      actions = {
        { "Ask why never a farthing over", say "\"Because then it'd be {i}money{/},\" he says, appalled. \"That's him upstairs. I don't do money. I do {i}enough{/}. You get to the counter, you're a ha'penny short, you find one in the lining. That's me. It's a ha'penny. If I made it a shilling you'd stop being grateful and start being rich, and nobody ever prayed to me rich.\"" },
        { "Ask about Saint Ledger", say "He points up. Through the horsehair you can hear ten thousand pens, like rain on a roof. \"He knows I'm somewhere. He can't make his farthings come out, see, not to the last one, and it drives him wild. There's always one gone.\" He shows you his teeth, which are small and milled at the edges. \"He's a good saint. He writes off more than he lets on. I leave him the odd one on his desk. He thinks it's a miracle. Well. It is.\"" },
        { "Ask who made the world", say "\"Somebody with change,\" he says at once. \"You can tell. It's all bits. Nothing in it comes out round.\" He turns a coin over his knuckles. \"I came with the first coin, and that was already owed to somebody. I'll tell you what I do know. I've been down the back of everything there is, and I've never found the bottom, and I've never found a thing that was truly lost. Only dropped.\" The coin vanishes. \"Have you got a button on you? I'll give you a fair rate.\"" },
      } },
    { name = "the floor of coins",
      wonder = true,
      description = "{shimmer}Ankle deep, wall to wall, and every one of them was once the difference.{/} The farthing a widow could not find on rent day, and then could. The halfpenny that fell through a floorboard and was the first thing a child ever grieved for. The coppers off dead men's eyes, given back. They are not treasure. All of it together would not buy a horse. But there is not a coin here that somebody did not, once, need more than gold.",
      things = {
        { name = "a halfpenny with a hole", description = "Worn on a string, by a sailor, for luck. The string broke off the Stack in a gale. He lived. Tuppence says the luck was in the hole, not the coin, and he has kept the coin and sent the hole back." },
        { name = "a bent copper", description = "Bitten. You know one very like it. In fact you take yours out and hold them side by side, and there is no telling them apart, and for a moment you could not swear which hand is which." },
        { name = "a drift of buttons", description = "In the corner, deep. Shirt, coat, one of pearl. \"Southern,\" says Tuppence. \"It's legal tender where it's warm. I do a little exchange.\" He does not say with whom." },
        { name = "a king's head, worn off", description = "A coin so old that the king on it is a smooth place. The name round the rim has been scratched through with a nail, letter by letter, on purpose. Tuppence takes it out of your hand and puts it at the bottom of the heap." },
      },
      actions = {
        { "Wade in", say "They slide and chink round your shins, cold and then warm. You pick up a handful. Farthing, farthing, a token for a ferry, a tooth. Each one, as you touch it, gives you a small clear pang of relief that is not yours: somebody's, long ago, finding it. You stand there, up to the ankles in other people's close shaves, and it is like standing in a warm bath." },
      } },
    { name = "the oldest coin",
      key = "sh_oldest_coin",
      description = "On a nail by itself, on the rafter, out of the heap: a thing the size of a lentil, with no head and no tail.",
      variants = {
        { when = flag "sh_farthing_taken", description = "A nail in the rafter, and under it a small bright ring on the oak where a thing the size of a lentil hung for longer than there have been pockets." },
      },
      actions = {
        { "Ask about the coin on the nail", when = no(flag "sh_farthing_taken"), set "sh_farthing_taken", give "sh_first_farthing",
          say "\"That's the First. Everything else is change from it.\" He takes it down and holds it on his palm, and for once his fingers are still. \"Can't be spent. Nothing's that cheap. I've had it on that nail since I had a nail.\" He looks at you sideways. \"You've a bent copper and it's spoken for. I know. I've been watching that copper.\" He drops the First into your pocket himself, so quickly that you do not see it go. \"Now you've always got something on you. Don't thank me. It's expenses.\"", fx "sparkle" },
      } },
    { name = "the springs",
      description = "Overhead, in rows, like the pipes of an organ lying down. When a soul upstairs sits heavily, they sing, and a little rain of crumbs and coppers comes through.",
      actions = {
        { "Wait for somebody to sit", say "A baron, by the sound of the springs. A long groan, and then, through the gap, one gold piece, turning. Tuppence catches it. He looks at it with dislike. He climbs on a heap and pushes it back up through the cushions. \"Not mine,\" he says. \"He'll miss that. They always miss the big ones. It's the little ones they pray about.\"" },
      } },
    { name = "the other things",
      description = "It is not all coin. Down the back of anything there is the rest of it: the things that go with small change.",
      things = {
        { name = "a thimble", description = "Silver, dented. A seamstress looked for it for forty years. She was told it would turn up. It has, here." },
        { name = "a key to nothing", description = "Small, brass. Everybody has one in a drawer. This is where they are from." },
        { name = "a pencil stub", description = "An inch long, chewed. With an inch of pencil a man can still sign his name, and that has been the difference more often than gold has." },
        { name = "a comb with three teeth", description = "He uses it. His hair is the colour of a new penny and stands straight up." },
      } },
    { name = "the gaps",
      description = "Cracks of light in the upholstery of the ceiling. Each one comes out somewhere: the back of a pew, the lining of a coat, a hole in a pocket, a grating in a street.",
      things = {
        { name = "a gap that smells of beer", description = "It comes out under the bar of the Tipsy Griffon, between two boards. The barman's whole stock of small change has gone down it, over the years, a coin at a time. He blames the adventurers." },
        { name = "a gap with a draught", description = "Up through a drain in the market, under the fountain. Wishes come down that one, with their coins. He keeps the coins and sends the wishes on. \"Not my department. There's a place for meant ones. Further down than me.\"" },
        { name = "a gap that is a pocket", description = "You look up into it. Wool, a hole, daylight. A hand comes in, pats, and withdraws. It is a very familiar hand. It is yours, from this morning, checking for your copper." },
      } },
    { name = "the scales",
      description = "A pair small enough for a doll's shop, in brass. He weighs need on them. A farthing against a widow goes down with a bang. A sovereign against a baron does not move the pan." },
    { name = "a row of jam jars",
      description = "On the rafter, labelled. {i}Rent. Coal. The doctor. Something for the baby.{/} It is the same row that stands on a shelf in every poor kitchen in the kingdom. These are the ones the jars down there are filled from, when they come out right at the end of the week and nobody can think how." },
    { name = "the low roof",
      description = "You cannot stand up. Nobody can, here. It is a heaven you come into on your knees, with your arm out, feeling for something, and in his view that is the right way to come into one." },
    { name = "the chink",
      description = "All the time, soft, from every side: coins settling. It is the sound a purse makes when it is not quite empty. You had not known how much you liked that sound." },
  },

  exits = {
    { to = "sh_ledger_hall", label = "Up between the cushions", description = "Feet first on a heap of farthings, and haul." },
  },
}
