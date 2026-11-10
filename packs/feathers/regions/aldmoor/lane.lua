-- Elbow Lane: the part of Aldmoor that people actually live in. Shops, a house, and the roofs.

space {
  id = "elbow_lane",
  region = "aldmoor",
  name = "Elbow Lane",
  description = "Off the market the town stops showing off. A lane with a bend in the middle, houses that lean together overhead until they very nearly agree, and a shop for anything a person can make a living from.",

  things = {
    { name = "the leaning houses",
      description = "Each floor sticks out a little further than the one below, to get more room without paying for more ground. By the top, neighbours across the lane could shake hands. One pair have been refusing to for twenty years.",
      things = {
        { name = "a washing line", description = "It crosses the lane between the two houses that do not speak. The washing on it is neutral, and is brought in by a third party." },
        { name = "an upstairs window",
          description = "Open, with an elbow on the sill and a woman behind the elbow. She has watched this lane every day since she was married. She could tell you who you are, if you asked, and where you got those boots.",
          actions = {
            { "Ask who you are", say "\"Not from here,\" she says. \"Left foot's seen a river. Slept in a barn Tuesday.\" She looks harder. \"Had an onion.\" You thank her and move out of range." },
          } },
        { name = "a door with nine bells", description = "One for each family in the house, each bell a different size. Children ring all nine and run. It plays the first line of a hymn." },
      } },
    { name = "the town crier",
      key = "crier",
      icon = "♪",
      description = "A man with a bell, a scroll and a chest like a barrel. He has the news. He bought a great deal of it cheap some years ago and is working through his stock.",
      things = {
        { name = "his bell", description = "Brass, dented on one side, from the time he rang it at the Baroness." },
        { name = "his scroll", description = "Several yards of it, trailing behind him. The far end is in the fountain." },
      },
      actions = {
        { "Listen", when = flag "cart_ridden",
          say "\"Oyez! At the Gate! A turnip was struck by a person in an ore cart! The turnip is comfortable! The person is described as,\" he looks at the scroll, and then at you, for some time, \"at large!\" He rings the bell at you, personally, twice." },
        { "Listen", say "\"Oyez! The King remains in residence! The queue is of the usual length! Lost: one pick, small, answers to nothing!\" He rings the bell. A baby starts up three houses off, and he looks satisfied." },
        { "Ask for today's news", say "\"Today's?\" He is hurt. \"I've got good news here from the old king's time that's never been cried once. You'll get today's when I come to it.\"" },
      } },
    { name = "the chandler's",
      description = "Candles, in the window, in rows by size. The display relights itself all day long. Children are brought to watch it instead of being taken to the fair.",
      things = {
        candle { name = "the largest candle", description = "As thick as your leg and made for the temple of Saint Ledger. It burns for a year, and comes with a second, smaller candle to light it by." },
        { name = "the chandler", description = "A soft, pale man who smells of tallow and looks as if he might have a wick.",
          actions = { { "Ask about the weathercock", say "\"Don't.\" He glances at his own roof. \"Oiled it twice. Turns sweet as you like. And then it goes back.\"" } } },
      } },
    { name = "the cobbler's",
      description = "{i}Boots mended while you wait.{/} There is a bench of men waiting, in their socks. Several have brought lunch. One has brought a bed roll.",
      things = {
        { name = "the cobbler", description = "He has nails in his mouth and has had since his apprenticeship. His wife has never heard him say her name clearly.",
          actions = { { "Show him your boots", say "He turns one over. He says something through the nails that is clearly a number, and then, seeing your face, a much smaller number, and then just shakes his head and pats the boot, as you would a dog that is doing its best." } } },
        { name = "a single enormous boot", description = "In the window, for show. Made for a customer who paid for the pair in advance and collected the left one. Nobody likes to think about why he did not come back for the right." },
      } },
    { name = "the locksmith's",
      description = "Shut. The locksmith is standing outside it with his hands in his pockets, in a small and sympathetic crowd. He has locked himself out. It is his best lock.",
      actions = {
        { "Offer the crowbar", when = item "crowbar", say "He looks at it the way a surgeon looks at an axe. \"I'd know,\" he says. \"Every time I went in. I'd know.\"" },
        { "Commiserate", say "\"Nine levers,\" he says, with a kind of ruined pride. \"I told the Guild it couldn't be picked. I was right. I'd give a lot to have been wrong.\"" },
      } },
    { name = "the baker's",
      description = "A hatch in a wall with heat coming out of it and a queue of four. The loaves go out as fast as they come up, still too hot to hold, and are carried home in aprons.",
      things = {
        { name = "the baker", description = "Flour to the eyebrows. She has been up since two and will tell you so with her whole face.",
          actions = { { "Ask for the heel of a loaf", say "She looks at you, top to bottom, and puts a crust in your hand without a word. It burns your fingers. It is the best thing that has happened to you in Aldmoor." } } },
        { name = "a tray of buns", description = "Each with one currant, placed exactly in the middle. The Council regulates currants." },
      } },
    { name = "the street lamp",
      description = "The only one in the lane. It is lit at dusk by a man with a pole and put out at dawn by the same man. In between he stands under it, since it is the only light, and reads." },
    { name = "a ginger cat",
      icon = "c",
      description = "On a sill, in the one patch of sun the lane gets. It owns the lane. The deeds are held elsewhere, but everyone knows.",
      actions = {
        { "Stroke it", say "It permits one. You go for a second and are corrected." },
      } },
    { name = "the gutter",
      description = "A stone channel down the middle of the lane with a trickle in it, heading for the market grate and the Undertown.",
      things = {
        { name = "a paper boat", description = "Folded from a page of regulations and launched by a child upstream. It goes under the bend with its flag up. In a day or so it will be in the Great Drain, and after that nobody can say." },
      } },
    { name = "the far end of the lane",
      description = "The lane ends at a high wall of pale stone with ivy trained across it in the shape of a coat of arms. Above the wall there is a copper dome and a tower with a light in it, and the light is the wrong colour." },
  },

  exits = {
    { to = "market", description = "Back to the awnings and the elbows." },
    { to = "bookshop", description = "A narrow shop front with a bow window full of spines, facing inward." },
    { to = "magic_shop", description = "A crooked door under a sign of a hand holding a star. The star has been repainted as a discount." },
    { to = "lane_house", description = "A front door standing open on a kitchen, a fire and the smell of pie. You are an adventurer. Open doors are your profession." },
    { to = "watch_house", description = "A square stone building with a blue lamp and forty halberds visible through the window." },
    { to = "academy_gate", description = "To the pale wall at the end of the lane, and the arch in it." },
  },
}

space {
  id = "bookshop",
  region = "aldmoor",
  name = "A. Pell, Bookkeeper",
  description = "The sign says {b}BOOKKEEPER{/}, and it means it. There are books from the floor to the ceiling, up the stairs and across the landing, and in forty years of trading Mr Pell has not let one go. He keeps them.",
  palette = { bg = "#110f0c", text = "#d4ccba", dim = "#756c5c", accent = "#d0a868", border = "#463c2e" },
  ambience = { dust { glyphs = "·˙", color = "#5c5446", rate = 0.4, speed = 0.2 }, flicker { color = "#ffc878", strength = 0.1 } },

  things = {
    { name = "Mr Pell",
      icon = "☺",
      description = "A narrow man in fingerless gloves, up a ladder. He looks at customers as a shepherd looks at a strange dog.",
      things = {
        { name = "his ladder", description = "On a rail, so that it runs the length of the shop. He has not touched the floor during business hours since the spring." },
        { name = "his spectacles", description = "Two pairs, one on top of the other: one for reading, one for watching you." },
      },
      actions = {
        { "Ask to buy a book", say "\"Which?\" You point. He comes along the rail, takes it down, looks at it fondly, and puts it back on a higher shelf. \"Not that one,\" he says." },
        { "Ask how he stays in business", say "\"People pay me.\" He nods at a locked case. \"There's a book in there about every family on Nobles' Row. They would sooner I kept those.\"" },
        { "Ask for a recommendation", say "\"For you?\" He considers you from the ladder. \"Something with pictures and a strong binding.\" He does not fetch it. It was only an opinion." },
      } },
    { name = "the shelves",
      description = "Arranged by a system. The system is that Mr Pell knows where they are.",
      things = {
        { name = "A Complete History of Drains, volume two",
          description = "The spine says volume two. Mr Pell says that there is no volume one and never was, and that the book is the more interesting for it." },
        { name = "The Adventurer's Handbook",
          description = "Chapter one: {i}Are You Sure.{/} Chapter two: {i}Equipment You Will Not Have.{/} You shut it before it becomes personal.",
          actions = {
            { "Read chapter three", when = item "rope", say "{i}The Rope, and Why You Should Have Brought One.{/} You pat your rope. The book goes on to say that it should not be somebody else's." },
            { "Read chapter three", say "{i}The Rope, and Why You Should Have Brought One.{/} You shut it again." },
          } },
        { name = "a book on swimming", description = "The pages are still joined at the edges. A man in Saltwick bought it, brought it back unopened, and moved inland, in that order." },
        { name = "Mushrooms of the Mumblewood",
          description = "Every plate is of the same blue mushroom from a different side. Under each, the same caption: {i}No.{/}" },
        { name = "a shelf of atlases",
          description = "Maps of the kingdom, from every century. They agree about the middle.",
          things = {
            { name = "the oldest atlas", description = "The coast is drawn in with confidence up to the edge of the page, and then the mapmaker has written, small, {i}and so on{/}." },
          } },
        { name = "a very small book", description = "The size of a thumbnail, bound in red. It is the complete regulations of Aldmoor as they stood on the day the town was founded. There is one: {i}Be reasonable.{/}" },
      } },
    { name = "the locked case",
      description = "Glass-fronted, with a brass lock. Slim volumes in plain covers, one for each great house, each written by a servant.",
      things = {
        { name = "the Vaux-Pimbleton volume", description = "The thickest. A ribbon marks a chapter called {i}Cousin Ignatius{/}. Mr Pell says the Baroness pays quarterly, in advance, and has never once asked to see it." },
        { name = "the royal volume", description = "Very thin. It appears to be mostly about marrows." },
      } },
    { name = "the till",
      description = "Brass, ornate, and empty of everything except a moth. The moth has been entered in the accounts.",
      things = {
        { name = "the account book", description = "Forty years of entries. Income: {i}nil{/}. Outgoings: {i}books{/}. In the margin of each page, in a different ink, the same word: {i}worth it{/}." },
      } },
    { name = "the stairs",
      description = "A book on every step, at both ends, so that the way up is one foot wide. On the landing there is a bed with books under it instead of legs.",
      things = {
        { name = "the kitchen, such as it is", description = "A gas ring on a pile of encyclopaedias. He has cooked on {i}Aardvark to Bassoon{/} for so long that it is done on one side." },
      } },
    { name = "a shop cat",
      icon = "c",
      description = "Grey, asleep on an open dictionary, on the word {i}mine{/}." },
    { name = "a book under glass",
      key = "overdue",
      description = "On the counter, under a glass dome: a plain grey volume with a Collegium shelf mark. A card is propped beside it. {i}Not mine. Due back thirty-one years ago last spring.{/}",
      variants = {
        { when = item "overdue_book",
          name = "an empty glass dome",
          description = "A dome, a card, and a book-shaped clean patch in the dust. Mr Pell keeps looking at it from the ladder. He looks ten years younger and has not noticed yet." },
        { when = flag "co_stacks_open",
          name = "an empty glass dome",
          description = "A dome and a card. Mr Pell has turned the card over and written on the back: {i}Returned.{/} He has underlined it. He dusts the dome every morning anyway." },
      },
      actions = {
        { "Offer to take it back", once = true, give "overdue_book",
          say "He goes very still. \"I can't go in there,\" he says. \"The fine. Thirty-one years at a ha'penny a day. I worked it out once, and had to sit down.\" He lifts the dome in both hands and passes you the book as though it were asleep. \"Don't say my name.\"" },
      } },
  },

  exits = {
    { to = "elbow_lane", description = "Out, past a bell on the door that Mr Pell has muffled with a sock." },
  },
}

space {
  id = "magic_shop",
  region = "aldmoor",
  name = "Spindle's Thaumaturgical Sundries",
  description = "A shop the width of a corridor, hung to the rafters with things that glow, hum or have a label saying that they will. This is where Aldmoor buys its magic. Most of it works a little. Madam Spindle prices by how little.",
  palette = { bg = "#100d15", text = "#d2cadc", dim = "#6f6680", accent = "#b98cf0", border = "#40345a" },
  ambience = {
    shimmer { color = "#b98cf0", strength = 0.15 },
    fireflies { glyphs = "✧·", color = "#d0b0ff", rate = 0.3 },
  },

  things = {
    { name = "Madam Spindle",
      icon = "☺",
      description = "Small, brisk, and wrapped in so many shawls that she is roughly spherical. She was sent down from the Collegium's kitchens for doing a spell in front of a student, and opened a shop, and now the students come to her.",
      things = {
        { name = "her shawls", description = "Seven. The innermost one is said to be enchanted. She says it is wool, and that wool is quite enough." },
        { name = "her abacus", description = "The beads move before she touches them. She says it is impatient, not magic." },
      },
      actions = {
        { "Ask what really works", say "\"The kettle,\" she says. \"The broom, on a good day. That jar by your elbow, which you'll kindly not touch.\" She looks round the shop. \"The rest is hope with a label on. People pay more for that, mind.\"" },
        { "Ask about the Collegium", say "\"Three hundred young gentlemen and not a spark among them. The magic in that building goes in at the back door every morning with the coal.\" She sniffs. \"I should know. I carried the coal.\"" },
        { "Ask for something for an adventurer", say "She looks you over. \"Socks,\" she says. \"Dry ones. I've nothing stronger.\"" },
      } },
    { name = "the wand rack",
      description = "Forty wands in a rack by price. Hazel, ash, one of liquorice.",
      things = {
        { name = "a student's wand", description = "Ebony, silver-tipped, eleven guineas. It does nothing at all. It is the best seller: at the Collegium it is worn, not used." },
        { name = "a hazel twig", description = "Tuppence, cut from a hedge on Tuesday, with the bark on. Madam Spindle says it is the only one in the rack she would care to be on the wrong end of." },
        { name = "the liquorice wand", description = "For children. It turns the tongue black, which is all that most people ask of magic." },
      },
      actions = {
        { "Wave one", say "You give the hazel a flick. On the top shelf a stuffed owl turns its head and looks at you. Madam Spindle takes the twig out of your hand without a word and puts it back." },
      } },
    { name = "the potion shelf",
      description = "Bottles, by colour. Each has a label with the effect, and a second label, smaller, with the effect observed.",
      things = {
        { name = "a love potion", description = "{i}Effect: love. Effect observed: a rash, and they are still together.{/}" },
        { name = "a potion of invisibility", description = "The bottle is empty. Or it works. The price is the same." },
        { name = "a potion of giant strength", description = "{i}Shake well.{/} Nobody has been able to get the stopper out." },
        { name = "Gribbert's blue", description = "Bought in from the market. It is blueberry cordial. She sells it as blueberry cordial, at a small loss, as a rebuke." },
      } },
    { name = "the crystal ball",
      description = "On a velvet cushion, clouded. A card says that it shows what is to come.",
      actions = {
        { "Gaze into it", say "The mist clears. You see a shop, narrow, cluttered, with an adventurer in it bending over a crystal ball. It is about four seconds ahead. You watch yourself straighten up, disappointed, and then you do." },
      } },
    { name = "the cloak rail",
      description = "Cloaks of every kind, on hangers.",
      things = {
        { name = "a cloak of visibility", description = "Scarlet, with bells. {i}Guaranteed.{/} Sold mostly to people who have to cross Elbow Lane after dark when the carts are about." },
        { name = "a cloak of elvenkind", description = "Grey-green and very fine. The label inside says {i}Made in Saltwick{/}." },
        { name = "an empty hanger", description = "It swings a little. The ticket on it says {i}Invisibility, cloak of. Sold as seen.{/}" },
      } },
    { name = "the bargain bin",
      description = "A tea chest by the door, marked {b}ALL ITEMS ONE PENNY, NO RETURNS, NO BLAME{/}.",
      things = {
        { name = "a ring of power", description = "Brass. The power is unspecified. It turns the finger green, and you gather that this is the power." },
        { name = "a bag of holding", description = "It holds things. It is a bag." },
        { name = "a cursed sock", description = "Single. Whoever wears it will always have one foot slightly damp. Three have been sold. All three were returned by other people." },
        { name = "a magic mirror",
          description = "Hand-sized, cracked across. It answers one question a day, truthfully.",
          actions = { { "Ask who is the fairest", say "\"Not asking that are you,\" says the mirror. \"Not with that hat.\" That was the question for today. The crack, you notice, is where somebody threw it." } } },
      } },
    { name = "the stuffed owl",
      description = "On the top shelf, moth-eaten, with glass eyes. It was the familiar of the last court wizard and has been dead for sixty years. It keeps an eye on the till.",
      actions = {
        { "Stare at it", say "It does not blink, having no eyelids and being dead. You look away first all the same." },
      } },
    { name = "a self-sweeping broom",
      description = "It stands in the corner on its bristles. When it thinks nobody is looking it gives the floor a single resentful stroke." },
    { name = "the window prop",
      key = "window prop",
      description = "The shop window is held open by a length of black thornwood, six feet long, with a knot at the top like a fist. The sash has worn a notch in it. The air round the knot is doing something that air on Elbow Lane does not do.",
      variants = {
        { when = item "archmage_staff",
          name = "the shop window",
          description = "Propped open, now, with a broom handle. Madam Spindle says it is a better fit, and quieter, and that the milk has stopped going off." },
      },
      actions = {
        { "Ask about the window prop", once = true, give "archmage_staff",
          say "\"That? Came with the shop. It hums in thunder and it turned the last cat inside out, briefly.\" She pulls it from under the sash and jams a broom handle in its place. \"You want it, you carry it. Don't point it at the Grumbles. There was a fellow did that once, and they've never been the same shape since.\" You have been given {gold}the Staff of Orrin Skybreaker{/}, for nothing, to get it out of the way." },
      } },
    { name = "a jar by your elbow",
      wonder = true,
      description = "A plain jam jar with a cloth tied over the top. {magic}Inside it there is a very small thunderstorm.{/} A grey cloud the size of a plum, rain you could not fill a thimble with, and every minute or so a flicker and a sound like a mouse clearing its throat. Madam Spindle made it herself, one wet afternoon, to see if she still could. It is not for sale.",
      actions = {
        { "Watch it", fx "sparkle", say "It rains on a patch of moss at the bottom of the jar. The moss is doing well. A thread of lightning comes down, no thicker than a hair, and for an instant the whole shop is lit from the inside of a jam jar." },
      } },
  },

  exits = {
    { to = "elbow_lane", description = "Out, under a door bell that rings before you touch the door." },
  },
}

space {
  id = "lane_house",
  region = "aldmoor",
  name = "No. 9, Elbow Lane",
  description = "The door was open and you are an adventurer, and so here you are in somebody's kitchen. A fire, a scrubbed table, a dresser of plates. An old woman looks up from her knitting, and is not in the least surprised.",
  palette = { bg = "#120f0c", text = "#d6cdbc", dim = "#786c5c", accent = "#e0a060", border = "#4a3c2c" },
  ambience = { flicker { color = "#ffb060", strength = 0.2 }, steam { glyphs = "˙·∙", color = "#6c645a", rate = 0.2 } },

  things = {
    { name = "Gran Tuttle",
      icon = "☺",
      description = "Eighty if she is a day, and knitting something with five sleeves. She has decided that you are her grandson Wilf. Wilf, you gather, is at sea, and a good deal shorter.",
      things = {
        { name = "the knitting", description = "Grey wool, five sleeves so far, and room for more. \"For the swan on Nobles' Row,\" she says. \"It feels the cold. Three necks last time I looked, so I'm doing five to be safe.\"" },
        { name = "her needles", description = "Steel, and fast. She does not look at them. They seem to know the way." },
      },
      actions = {
        { "Explain that you are not Wilf", say "\"No,\" she agrees. \"You never were one for it.\" She pours you a cup of tea. You drink it. It is easier." },
        { "Ask about the noise upstairs", when = no(flag "al_attic_open"), set "al_attic_open",
          say "\"That's the cats. They hold their meetings on the roof, Tuesdays, and whenever there's a quarrel. Go up and tell them I've a pie in, and they're to keep it down.\" She points a needle at the ceiling over the stairs, where there is a hatch you had not noticed." },
        { "Ask about Wilf", say "\"Went for a sailor. Writes when he's somewhere with a post.\" She nods at the mantelpiece. \"He carves his name on things. I've told him. They'll know who it was, I said, you've put your name.\"" },
      } },
    { name = "the fire",
      description = "Coal, banked up, with a trivet and a black kettle. It has not been let out since her wedding.",
      things = {
        { name = "the kettle", description = "It has not been off the boil since her wedding either. The tea in this house is of a strength normally used on fence posts.",
          actions = { { "Have more tea", say "A second cup. You can feel it in your teeth. You understand how she has lived to eighty: nothing would dare." } } },
        { name = "the toasting fork", description = "Three prongs, one bent, hanging on a nail. It has done forty thousand slices." },
      } },
    { name = "the dresser",
      description = "Oak, to the ceiling, with every plate the family has ever owned stood on edge.",
      things = {
        { name = "the best plate", description = "Painted with a harbour and a white tower. It is kept for visitors of quality. You are having your tea out of a cup with no handle." },
        { name = "a jar of buttons",
          description = "Every button that has ever come off anything in Elbow Lane. Children are sent here to match them.",
          things = {
            { name = "a gold button", description = "Stamped with a crown. It came off somebody in a hurry, climbing the back wall of the Tipsy Griffon in Greenhollow, sixty years ago. She has never said who. She smiles at it sometimes." },
          } },
        { name = "the drawer", description = "String, candle ends, a single dancing shoe. She almost went to a dance once. The other shoe is on the Altar of Almost." },
      } },
    { name = "the mantelpiece",
      description = "A clock, two china dogs, and the post.",
      things = {
        { name = "a letter from Wilf", description = "{i}Dear Gran. The sea is big. I am well. The captain says we are going on to where the charts stop, to see what is holding them up. Your loving W.{/}" },
        { name = "the china dogs", description = "A pair, facing outward. One has been broken and mended so many times that it is mostly glue, and is the favourite." },
        { name = "the clock", description = "Stopped at ten to three. It is right twice a day, and she has arranged to have her tea at both." },
      } },
    { name = "a pie, cooling",
      description = "On the windowsill, at the back, out of reach from the street. A precaution learned from experience. It is beef, by the smell, and the smell is going up the stairs and through the roof.",
      actions = {
        { "Look at it meaningfully", say "\"When it's cold,\" says Gran Tuttle, without turning round." },
      } },
    { name = "the pantry",
      description = "A cupboard under the stairs with a stone shelf.",
      things = {
        { name = "a crock of dripping", description = "It goes back, in layers, to the old king's time. The bottom is said to be valuable." },
        { name = "jars of pickled onions", description = "Marta's, from Greenhollow, bought by the dozen. The jars are sweating slightly, as if they too were under strain." },
        { name = "a mousetrap", description = "Set, baited, and never sprung. There is a small plate of cheese beside it, for the mouse, so that it is not tempted." },
      } },
    { name = "the stairs",
      description = "Steep, boxed in, with a rope for a banister. Upstairs is one bedroom under the eaves.",
      things = {
        { name = "the bedroom",
          description = "A brass bed, a patchwork quilt, a washstand. Everything is where it was put fifty years ago.",
          things = {
            { name = "the quilt", description = "Made of every shirt Wilf grew out of. You can follow him up it, from the size of a handkerchief to the size of a door." },
            { name = "a sea chest", description = "Wilf's old one, from his first voyage. On the lid, with a penknife: {i}Wilf woz ere{/}. She has put a doily over it." },
          } },
        { name = "the attic hatch",
          visible_if = flag "al_attic_open",
          description = "A square of boards in the ceiling with a loop of rope. There is daylight round the edge of it, and, very faintly, the sound of one cat speaking and a great many listening." },
      } },
  },

  exits = {
    { to = "elbow_lane", description = "Out of the front door, which you leave as you found it." },
    { to = "rooftops", label = "The attic hatch",
      description = "Up the stairs, up a ladder, and out among the chimneys.",
      requires = flag "al_attic_open", hidden = true },
  },
}

space {
  id = "rooftops",
  region = "aldmoor",
  secret = true,
  name = "The Roof Road",
  description = "Up through the hatch, between the chimney pots, there is another Aldmoor. Ridge tiles worn into a path. Planks across the gaps. The whole town below you with its hat off. The cats were here first, and have the freehold.",
  palette = { bg = "#0d0f14", text = "#ccd0d8", dim = "#666c7a", accent = "#e0a85a", border = "#3a4254" },
  ambience = { steam { glyphs = "∙°˙", color = "#6a6c78", rate = 0.5 }, dust { glyphs = "·", color = "#565a66", rate = 0.2 } },

  things = {
    { name = "the parliament of cats",
      wonder = true,
      icon = "c",
      description = "Forty cats on one roof, in rows, facing a tabby on a chimney pot. Nobody is washing. {magic}One cat speaks at a time, and the others wait their turn.{/} You do not understand a word of it, but you know a point of order when you hear one.",
      things = {
        { name = "the Speaker", description = "A tabby with one ear, in the seat by the warm flue. She has looked at you once and ruled that you may stay so long as you do not contribute." },
        { name = "the opposition", description = "Eleven toms on the next roof with their backs turned. They are listening to every word." },
        { name = "the ginger member", description = "The cat from the sill in Elbow Lane. Up here it sits in the front row and is listened to. It gives you a look that asks you not to mention the stroking." },
        { name = "a kitten", description = "In the gallery, on a gutter, being shushed." },
      },
      actions = {
        { "Tell them about the pie", say "You deliver Gran Tuttle's message. The Speaker hears you out. A motion is put. Forty cats turn and look at the kitchen chimney of number nine, and then, with great discipline, face front." },
      } },
    { name = "the chimney pots",
      description = "Every household's smoke. You can tell what is for supper along the whole of the lane. Number four is burning it.",
      things = {
        { name = "the chimney of number nine", description = "Beef, pastry and coal. A sparrow is sitting on the rim with its eyes shut." },
        { name = "a sweep's brush", description = "Stuck in a pot, bristles up, since the day the sweep retired mid-chimney. It has a nest in it." },
      } },
    { name = "a plank bridge",
      description = "Laid across the gap above Elbow Lane by somebody with business on both sides and no wish to be seen in the street. It is polished with use.",
      actions = {
        { "Cross it", say "You cross it on your hands and knees. On the far roof there is a skylight, and under the skylight a man counting money, who looks up, and you cross back rather faster." },
      } },
    { name = "the weathercock",
      key = "weathercock",
      description = "Brass, on the chandler's roof. Since the night of the bang it has pointed north over the moor, whatever the wind is doing. The chandler has had it oiled twice. It turns freely, and then it goes back.",
      variants = {
        { when = visited "the_dint",
          description = "Brass, on the chandler's roof, pointing north whatever the wind does. You know what at, now, having been. It is pointing at the Dint. It is the only one in town with any news." },
      } },
    { name = "a roof garden",
      description = "Three tubs and a bucket on a flat piece of lead: runner beans, a tomato, and a rose that has gone up a chimney stack for the warmth.",
      things = {
        { name = "a snail", description = "Four storeys up, on a bean leaf. It has plainly not come by the stairs. You respect it." },
      } },
    { name = "the town, from above",
      description = "The market is a square of awnings. The castle sits on its hill with three of its towers upright. Round the edge of everything runs the wall, and here the wall is close: four feet from the last roof, with a walkway on top. A person could step across, if they were that sort of person." },
    { name = "a skylight",
      description = "Over the bookkeeper's landing. You can see down onto his bed, which is standing on books, and a book open on the pillow, where another person would keep a wife." },
  },

  exits = {
    { to = "lane_house", label = "The attic hatch", description = "Back down through the hatch into the smell of pie." },
    { to = "town_wall", label = "The jump to the wall", fx "shake",
      say "It is four feet. It is nothing. You think about it for a good while, and then for a very short while indeed.",
      description = "From the last roof to the top of the town wall. Four feet across and forty down." },
  },
}
