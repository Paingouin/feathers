-- Great Shade: the bazaar under the awnings, the lamp shop, and the inside of one lamp.

space {
  id = "pa_bazaar",
  region = "parch",
  name = "The Thousand Awnings",
  description = "Great Shade is a city built to keep the sun off. The streets are a yard wide and roofed from wall to wall with cloth: striped, patched, faded, dyed, a thousand awnings and more, so that you walk for a mile in a coloured dusk with the noon blazing an arm's length over your head. Under the cloth everything is for sale and nobody is in the least hurry to sell it. The city is named for the one thing it has to make for itself.",
  palette = { bg = "#150f0c", text = "#e4d4bc", dim = "#8a7260", accent = "#e07a4c", border = "#6c3f2a" },
  ambience = {
    dust { glyphs = "·˙", color = "#7a5a40", rate = 0.25, speed = 0.15 },
    flicker { color = "#ff9a5a", strength = 0.08 },
  },

  things = {
    { name = "the awnings",
      wonder = true,
      icon = "≋",
      description = "You look up. Every household hangs its own cloth across its own piece of street, and mends it, and hands it on, and no two are alike. Red on yellow. Indigo with one white stripe. A sail. A wedding sheet. A flag of some country that is not on the Great Map. {magic}The light comes down through all of them at once and lies on the ground in colours, so that the people of Great Shade walk about dappled, like fish in a pool,{/} and a child crossing the street changes four times from blue to gold.",
      things = {
        { name = "the oldest awning", description = "Over the well at the crossing of the two main streets: so patched that there is none of the first cloth left, and so faded that it has no colour, only a memory of having had several. It is taken down once a year and washed by the Sultana herself, in public, with her sleeves rolled." },
        { name = "a gap", description = "One, where a cloth has torn. A bar of white sun comes through it and stands on the paving like a hot poker, and everybody walks round. A boy has been sent for the family. It is a matter of some shame." },
        { name = "the awning menders", description = "They go about on the roofs with needles as long as your arm, calling down for the colour of thread. It is said that a mender never comes down to the street. It is said by the menders, who like it up there." },
      },
      actions = {
        { "Stand in a patch of blue", say "You stand in it. Your hands are blue. Your one copper is blue. A woman going by with a tray on her head is red to the waist and green above. Nobody but you is looking. You stay in the blue for a while, feeling like a much calmer person." },
      } },
    { name = "the carpet seller",
      icon = "☺",
      description = "Dumo of the Knots, cross legged on a pile of his own goods at the mouth of his shop, with a glass of tea and all the time that has ever been. He has sold four carpets this year. He regards that as rather a rush.",
      things = {
        { name = "the piles", description = "Carpets to the ceiling, folded in four, red and blue and the brown of dates. He knows where each one is. He will send the boy up the pile like a goat to pull one from the middle, for the pleasure of unrolling it at your feet with a flick." },
        { name = "the loom at the back", description = "Upright, as tall as the room, with a carpet a quarter made on it and three girls on a bench tying knots so fast that you see only the colours arrive. They sing the pattern to one another: {i}two red, one blue, one red, turn{/}. It is the song of the carpet. Each carpet has one and it is not written down." },
        { name = "a carpet hung on the wall",
          description = "Small, old, the colour of plums, with a border of running animals. It is not folded and not for sale. It hangs from four nails, and the fourth nail is new.",
          things = {
            { name = "the fourth nail", description = "Driven in with some force. \"It gets ideas,\" says Dumo, \"toward evening.\" He does not say what kind. One corner of the carpet, the corner by the fourth nail, is very slightly lifted, like a dog's ear." },
            { name = "the running animals", description = "Gazelle, round and round the border, nose to tail. You count them. You count them again from a different one and get one more. Dumo watches you do it. \"They do that to everybody,\" he says." },
          } },
        { name = "the tea boy", description = "He arrives the moment that you look at a carpet, with a glass on a brass tray. It is a matter of law in Great Shade that nothing may be bought from a man whose tea you have not drunk. It makes shopping slow and wars unknown." },
      },
      actions = {
        { "Ask the price of a carpet", say "Dumo is hurt. He puts down his glass. \"We have not yet talked of your family,\" he says. You talk of your family. Then of his. Then of the weather, of which there is one kind. After an hour he names a figure that would buy Greenhollow. You show him your copper. He looks at it with real interest and asks how your mother is." },
        { "Ask about the flying kind", say "\"A story for children,\" says Dumo, and behind him the small plum coloured carpet gives one flap against the wall like a fish on a slab. He does not turn round. \"A story,\" he says, a little louder, \"for children.\"" },
      } },
    { name = "the spice merchant",
      icon = "☺",
      description = "Mother Piquant, a woman as thin as a cinnamon stick behind a counter of open sacks, each heaped to a point: red, yellow, rust, black, a green like moss. You can smell the stall from the city gate. From the caravan road you can, if the wind is right, smell it a day out. It is how the camels know.",
      things = {
        { name = "the sacks",
          description = "Forty, with their tops rolled back, and a brass scoop standing in each.",
          things = {
            { name = "the red one", description = "Ground pepper pods. A pinch of it would heat a house. The scoop has a longer handle than the rest." },
            { name = "the yellow one", description = "It stains everything it touches the colour of noon. Mother Piquant's hands are yellow to the wrist and will be yellow when she is buried, and she has left instructions about the sheet." },
            { name = "a sack of grey dust", description = "At the end, unlabelled. You ask. \"That is for when a dish is too interesting,\" she says. It is in great demand at court." },
            { name = "a very small sack", description = "Tied at the neck, the size of a purse, under the counter. Mother Piquant weighs it out by the grain on a scale made for gold. It is called {i}the King's Mistake{/} and nobody now alive has tasted it on purpose." },
          } },
        { name = "the scales", description = "Brass pans on chains, and a set of weights like a family of small bells. She can weigh a sneeze. She says that she has, and that it was a customer's, and that she charged." },
        { name = "a string of dried limes", description = "Black, hard, light as corks. They go into a stew whole and come out the same, having done something to it in between that nobody can describe to a foreigner." },
      },
      actions = {
        { "Smell the red one", say "You lean over the sack and breathe in, as you would with a rose. A good while later you are sitting on the ground with your back to the counter, and Mother Piquant is holding a cup of sour milk to your mouth, and a ring of small children is looking on with respect. \"Everybody does it once,\" she says." },
        { "Ask what is in the grey sack", say "\"Flour. Chalk. A little dust from under the bed.\" She shrugs. \"The court physician buys a pound a week. The Sultana's uncle has a delicate inside. In a land of pepper there is a living in the opposite of it.\"" },
      } },
    { name = "the water seller",
      icon = "☺",
      description = "Oru, a small brown woman with a goatskin on her back as big as she is, a brass cup on a chain, and two more cups clapped together in one hand like a bell. She does not sell water by the cup. Water is free in Great Shade and it is death to charge. She sells the story that goes with it.",
      things = {
        { name = "the skin", description = "A whole goat, legs tied, sweating a little. The water is from the Sultana's well and tastes faintly of goat, and of leather, and of being carried on someone's back for your sake." },
        { name = "the brass cups", description = "She claps them as she walks, {i}tink-tink, tink-tink{/}, and the sound goes ahead of her down the covered streets. Thirsty people in Great Shade lift their heads at it without knowing that they have." },
        { name = "her three stripes", description = "Tattooed in blue on the back of her hand. The mark of her trade. Her cup at the Long Wait has the same three lines scratched under it." },
      },
      actions = {
        { "Ask for water", say "She fills the cup and holds it out, and as you drink she begins: \"This water was in a cloud once, over a country where it rains on everybody.\" You stop drinking. \"Go on,\" she says, \"it gets better.\" It is the story of a raindrop that fell in the wrong place and has been walking home ever since. At the end you owe her a copper for the story, and she lets you owe it." },
        { "Ask why she charges for the story", say "\"Water keeps you alive,\" says Oru. \"Nobody should pay for that. But a reason to be alive is extra.\" She claps the cups. \"Besides, I have told every one of them ten thousand times, and that is work.\"" },
      } },
    { name = "the streets",
      description = "They have no names. They are called for what is sold in them, and when the trade moves the name moves with it. A stranger asks the way and is told to go along Brass, turn at Old Brass, and stop where Brass used to be before that.",
      things = {
        { name = "the street of brass", description = "A hundred small shops, each one a man with a hammer and a tray, and all of them beating at once. You do not hear it. After the first minute you only stop hearing everything else." },
        { name = "the street of slippers", description = "Yellow leather, pointed, in ten thousand pairs hung up like bunches of bananas. They are sold only in pairs and worn only on the heel, squashed flat. To a cobbler of the Parch a fitted shoe is a sort of prison." },
        { name = "the street of birds", description = "Cages of cane, hung at head height, with a finch in each. They are bought for their singing and judged on it every Friday. The losers are let go at the city gate, and are back on their own perches by supper." },
        { name = "the street that sells nothing", description = "Short, shuttered, swept. The trade here died out and nobody recalls what it was. The shopkeepers still open every morning and sit at their empty counters, since the leases have nine hundred years to run." },
        { name = "a scribe at a corner", description = "On a stool, with a board on his knees. He writes contracts, love letters and curses, all at one price and in the same very beautiful hand. He says that the customers can seldom tell which is which, and the people they send them to, never." },
      },
      actions = {
        { "Get lost", say "It takes no effort. You pass the same brass tray three times. On the fourth pass the brass beater puts down his hammer, takes you by the sleeve, and walks you to the crossing. He does not speak. He has done this for a foreigner every week of his life and has a stroke on the wall for each." },
      } },
    { name = "the houses",
      description = "You do not see them. A street of Great Shade is a blank wall with doors in it, and each door is as plain as the one beside it, by custom, so that nobody can tell from the street who is rich.",
      things = {
        { name = "a door left open",
          description = "You look in, as anyone would. A passage with a bend in it, so that you cannot see far, and then, round the bend, light.",
          things = {
            { name = "the courtyard", description = "Open to the sky and tiled in blue, with a basin in the middle and one orange tree in a tub. All the rooms face inward on to it. The whole house has its back to the street and its face to this. A girl is reading on the basin's edge with her feet in the water." },
            { name = "the orange tree", description = "Its tub is on a little cart with four wheels. It is moved round the court through the day, by the youngest child, to keep it in the sun. The child reckons the time by it." },
            { name = "a grandmother on the roof", description = "Under her own small awning, shelling peas into a bowl, in sight of every other grandmother on every other roof in the quarter. They do not call across. They do not need to. News crosses Great Shade at roof height, by eyebrow." },
          } },
        { name = "the door knockers", description = "Each door has two, a heavy one and a light one, with different notes. The heavy one is for men and the light one for women, so that the house may know who should come to answer. You try the light one, by mistake. An aunt answers, takes one look, and sends for an uncle." },
        { name = "a blue hand over a lintel", description = "Painted, palm out, on nearly every door. It is against envy. A very rich house on the corner has seven." },
      } },
    { name = "the crossing well",
      description = "Where the two great streets meet under the oldest awning: a basin of green marble with four brass spouts, running day and night. The water comes forty miles underground in a tunnel that was dug by hand.",
      things = {
        { name = "the four spouts", description = "A lion, a gazelle, a camel, a fish. The fish is the most worn. Nobody in Great Shade has seen one living, and all the children drink from the fish." },
        { name = "the tunnel keeper's mark", description = "Cut in the rim: a line of small strokes, one for each keeper of the water tunnel, father to son. Forty one strokes. The tunnel has never once run dry. The forty second keeper is nine years old and has already been down it." },
        { name = "the cup on a chain", description = "Brass, for anybody. The chain is not against theft. It is so that the cup will be there." },
      },
      actions = {
        { "Drink from the fish", say "Cold, and a little sweet. You have walked for three days behind a pot to get to it. A very small girl waits behind you, politely, until you have done, and then tells you that you did it wrong, you are meant to say thank you to the fish." },
      } },
    { name = "a snake charmer",
      description = "On a mat at the crossing with a basket and a pipe. He plays. A snake comes up out of the basket, stands on its tail, looks at the crowd, and goes down again.",
      things = {
        { name = "the snake", description = "Grey, as thick as a rope, hooded. It is quite deaf. It comes up when he taps the basket with his knee, has a look at the takings, and goes back if they are poor." },
        { name = "the pipe", description = "A gourd with two reeds. He plays one tune. The snake's opinion of it may be gathered from the speed with which it goes down." },
      },
      actions = {
        { "Clap", say "You clap. The charmer bows. The snake comes half way up again, looks at you in particular, and bows as well. You have never been bowed to by a snake. You find a second copper's worth of regret that you have only the one." },
      } },
    { name = "the porters",
      description = "Men bent double under loads the size of sheds, going at a trot through streets a yard wide and calling out one word as they come. The word means {i}your back{/}. You learn it by the second time.",
      things = {
        { name = "a porter with a wardrobe", description = "A whole one, on his back, with a strap round his forehead. A small boy walks in front of him as his eyes. They have a system of whistles." },
      } },
    { name = "the city wall",
      description = "Mud, thirty feet high and nearly as thick, the colour of the ground it stands on. From outside, Great Shade looks like a part of the desert that has been tidied. There are four gates and they are named for where you would end up.",
      things = {
        { name = "the Gate of Stones", description = "West. The caravan comes in by it, and the Duchess is the only animal in the Parch permitted to walk through without stooping. They cut the arch higher for her grandmother." },
        { name = "the Gate of Accounts", description = "East, on the road to the pyramid. Narrow. A clerk sits in it with a tally. He does not stop anybody. He counts them, as a matter of habit that the city has never broken itself of." },
        { name = "the swallows' nests", description = "Under the battlements, mud on mud. The birds come every spring from a wet green country far to the west and build of the city's own stuff. In the autumn they go home. They are the only people in Great Shade who have seen both." },
      } },
    { name = "a seller of shade",
      description = "A man with a very large umbrella of patched silk, standing at the Gate of Stones, in the one place where the awnings do not reach. For a small coin he will walk beside you to wherever the cloth begins.",
      actions = {
        { "Hire him", say "You have no small coin. He looks you over. He walks you the twenty yards for nothing, holding the umbrella mostly over himself. \"For the look of the city,\" he says. \"We cannot have them falling down at the gate.\"" },
      } },
    { name = "the noon gun",
      description = "There is not one. At noon a man on the Sultana's roof drops a large brass tray down four flights of stairs. It has been done since before guns were heard of, and the city has declined to change, a gun being so much less to look forward to.",
      things = {
        { name = "the tray", description = "As dented as a walnut. It is the same tray. On feast days it is dropped twice." },
      } },
    { name = "the smell",
      description = "Coffee. Leather. Hot brass. Orange flower water. Camel. Somewhere, mutton, being cooked with a lime. All of these are under the cloth with you and cannot get out.",
      actions = {
        { "Breathe in", say "You get all of it, and then, on top, cool and sudden from a side alley, one breath of steam and wet stone and soap. That will be the baths. You become aware of how you have smelt since Tickover." },
      } },
  },

  exits = {
    { to = "pa_caravan", label = "The Gate of Stones", description = "Out by the west gate to the camels and the white road." },
    { to = "pa_lamp_shop", label = "Wick's, in the street of brass", description = "A dark doorway hung round with lamps, none of them lit." },
    { to = "pa_bath_house", label = "The baths", description = "Down an alley that smells of steam, to a low door and a dome." },
    { to = "pa_court", label = "The Court of the Sultana",
      description = "Up the widest street to a gate with no guards on it.",
      requires = flag "pa_bathed",
      locked = "A doorkeeper looks at you, and then at the sand on you, and then, kindly, at the alley that leads to the baths. Nobody goes before the Sultana in the dust of the road." },
    { to = "pa_pyramid", label = "The Gate of Accounts", description = "Out by the east gate, past the clerk, who counts you, to a point on the skyline." },
  },
}

space {
  id = "pa_lamp_shop",
  region = "parch",
  name = "Wick's Lamps",
  description = "A shop as deep as a well and nearly as dark, since it is thought bad for trade to light the stock. Lamps hang from every beam and stand on every shelf: brass, copper, clay, glass, with one spout and with seven. At the back, on a shelf of its own, on a cushion, is a lamp that is older than the others and plainer, and it has a small card propped against it.",
  palette = { bg = "#100d0a", text = "#d8c8a8", dim = "#7a6848", accent = "#f0c050", border = "#5a4420" },
  ambience = {
    flicker { color = "#ffc060", strength = 0.2 },
    dust { glyphs = "·", color = "#5a4a2a", rate = 0.1, speed = 0.05 },
  },

  things = {
    { name = "the lamp seller",
      icon = "☺",
      description = "Old Tassa Wick, behind the counter with a rag, polishing. Her family have sold lamps in the street of brass for thirty generations and one of them, a long time back, sold the wrong lamp to the right boy. They have been careful ever since.",
      things = {
        { name = "her rag", description = "Soft, grey, and never used on the lamp at the back. For that one she has a duster on a long cane, and she holds it at arm's length and looks the other way." },
        { name = "her spectacles", description = "Two lenses of rock crystal in brass wire, ground in Far Enough and come across the world in a camel bag. Through them she can see whether a lamp has anybody in it. She says that most do not, and that it is the first thing a customer asks." },
      },
      actions = {
        { "Ask for a magic lamp", say "She does not stop polishing. \"New lamps or old?\" You say old. \"With or without?\" You say with. She sighs, and jerks her head at the shelf at the back. \"There's the one. He's on his break. He has been on it for two hundred years, and he's within his rights, I've read the terms.\"" },
        { "Ask what the springs are for", say "\"The lighters.\" She shows you: a little wheel, a flint, and a coil from Tickover, so that a lamp will strike itself at a touch. \"Progress,\" says Old Tassa Wick, without warmth. \"My mother rubbed two sticks. Mind you, my mother never set fire to an awning.\"" },
      } },
    { name = "the lamp at the back",
      key = "pa_the_lamp",
      description = "Plain brass, the shape of a gravy boat, with a dent in one side and a long thin spout. It is not polished and it does not need it. It is warm, when every other lamp in the shop is cold, and when you are near it you can hear, quite distinctly, somebody inside it turning a page.",
      variants = {
        { when = flag "pa_lamp_knocked",
          description = "Plain brass, the shape of a gravy boat, with a dent in one side and a long thin spout. The lid is standing a little open now, as a door is left on the latch, and a thread of blue smoke comes out of the spout and curls into a shape like a beckoning finger." },
      },
      things = {
        { name = "the card", description = "Propped against the cushion, in a large round hand: {i}ON BREAK. BACK IN A WHILE. DO NOT RUB. If urgent, knock, like a civilised person.{/}" },
        { name = "the dent", description = "Where it was thrown at a wall, by the last master, upon being told no. It is the only mark on it. The genie has had it written into his terms that it is not to be beaten out." },
        { name = "the cushion", description = "Green velvet, with a tassel at each corner. A saucer of sweets is set beside it every morning and found empty every night. Old Tassa Wick says that it is mice. She says it rather loudly, toward the lamp." },
      },
      actions = {
        { "Rub it", say "You give it a good rub with your sleeve. Nothing. You rub harder. From inside comes a voice like a gong with a cold: \"The card.\" You read the card. \"Thank you,\" says the voice, and a page turns." },
        { "Knock, like a civilised person", when = no(flag "pa_lamp_knocked"), set "pa_lamp_knocked",
          say "You tap on the lid with one knuckle, twice. A pause. A chair is pushed back, somewhere a long way down. The lid lifts by itself, a finger's breadth, and a breath of air comes out that smells of sandalwood and toast. \"It is open,\" says the voice. \"Wipe your feet. Mind the spout.\" You look at the spout. You look at yourself. \"You will find,\" says the voice, \"that it is a question of attitude.\"",
          fx "sparkle" },
      } },
    { name = "the hanging lamps",
      description = "Hundreds, on chains, from a ceiling that you cannot see. When a cart goes by in the street they all swing a very little and touch, and the whole shop chimes.",
      things = {
        { name = "a temple lamp of glass", description = "Enamelled in blue and gold, with writing round the neck: {i}Light is the shadow of something better.{/} Tassa says that it is the maker's joke and that he said the same on all of them." },
        { name = "a lamp with seven spouts", description = "For a house with seven daughters, each to have her own flame. The seventh spout has never been lit. The lamp was sent back." },
        { name = "a lamp shaped like a camel", description = "Brass, with the wick coming out of the hump. It is the worst thing in the shop and sells better than anything, to people getting off the caravan." },
        { name = "a miner's lamp", description = "Dwarf work, with a gauze. How it came here nobody knows. It burns blue in bad air. It has never burned blue in Great Shade but once, in the palace, during a speech." },
      } },
    { name = "the shelf of new lamps",
      description = "Bright, all alike, each with a small wheel and a Tickover spring, each striking at a touch.",
      actions = {
        { "Try one", say "You press the wheel. Click, fizz, a flame. You let go. It goes out. You press it. Click, fizz. You do this eleven times with an expression that you would not want seen. Old Tassa Wick takes it out of your hand and puts it back on the shelf without a word, like a mother with a drum." },
      } },
    { name = "the shelf of old lamps",
      description = "Clay, mostly, the shape of a slipper, black at the nose. They are dug up out of the sand east of the city and sold by the basket.",
      things = {
        { name = "a lamp with a thumbprint", description = "Pressed into the clay before firing, by whoever made it. It fits your thumb. That is a strange thing to share with somebody dead two thousand years, the size of a thumb." },
        { name = "a lamp still full", description = "Stoppered with wax, and when you tilt it something moves inside, thick and slow. Oil, from a tree that does not grow any longer. Tassa will not sell it and will not light it. \"You don't burn the last of a thing,\" she says, \"to read by.\"" },
      } },
    { name = "the workbench",
      description = "Under the one window: shears, a soldering iron on a little charcoal stove, snips of brass, and a row of wicks hung up by length.",
      things = {
        { name = "the daughters", description = "There are three, as on the sign, and they do the real work: one cuts, one solders, one trims. They are all past sixty. The sign was painted by their mother's mother, of her own girls, and the shop has always managed to find three." },
        { name = "the wicks", description = "Plaited cotton, from a finger long to a yard. The yard one is for the lamp on the Sultana's roof, which is lit at dusk so that the caravan may see where the city is. It burns a pint an hour and has not gone out since her great-grandmother's day." },
        { name = "a jar of sweets", description = "Sugared almonds, pink and white. The jar is kept full. It stands a good deal nearer to the old lamp than to anybody's elbow." },
      } },
    { name = "the counter",
      description = "A slab of dark wood, dished in the middle by elbows.",
      things = {
        { name = "the terms, in a frame", description = "A sheet of vellum under glass, close written, sealed with a seal as big as a saucer. {i}Three (3) wishes per holder. No wishing for more wishes. No raising the dead, no making to love, no undoing of what is done. The party of the second part shall be entitled to a break.{/} The length of the break is not stated. Somebody, at the time, did not read to the end." },
        { name = "a ledger of masters", description = "Every holder of the lamp, with the three wishes each one made. Gold, gold, more gold. A palace, a princess, a palace. Revenge, gold, regret. It goes on like that for forty pages, and then there is the last one, the boy, who has two wishes written down and the third line left blank." },
        { name = "the till", description = "A drawer with a bell. It holds a few coppers and one gold coin so old that the face has gone. Tassa says the genie paid it, for the sweets, on account, and that she is not giving change." },
      },
      actions = {
        { "Read the last entry", say "{i}First wish: that my mother should be well. Second wish: that she should not know it was me.{/} And then nothing. In the margin, in the round hand of the card: {i}He came back with the third. Said he had what he wanted and I was to keep it till he could think of somebody who needed it more. Still thinking. Good lad.{/}" },
      } },
    { name = "the doorway",
      description = "Hung round with lamps on hooks, to show what is sold. From the street they frame the dark like teeth.",
      things = {
        { name = "the sign", description = "A board, with a lamp painted on it and three small flames: {i}WICK AND DAUGHTERS. LAMPS. NEW FOR OLD NOT DONE HERE, DO NOT ASK.{/}" },
        { name = "a man in the street, calling", description = "He goes by twice a day with a tray of bright tin lamps, crying new ones for old ones. He has done it all his life, and his father before him, up and down outside this one shop. Old Tassa Wick throws a slipper at him each time. It is the same slipper. He brings it back." },
      } },
    { name = "the moths",
      description = "The shop is full of them, soft and brown, sitting on the cold lamps with their wings shut. They are waiting, with a faith that is hard to watch, for somebody to buy something.",
      actions = {
        { "Strike a light for them", say "You press the wheel of a new lamp. Every moth in the shop turns its head. You hold the flame up. They come, in a soft rush, and go round your hand in a ring, and Old Tassa Wick says, without looking up, \"You'll have to buy that now. You can't show them one and take it away.\" You put it out, very gently. They go back to their places. It is some time before you can look at them." },
      } },
  },

  exits = {
    { to = "pa_bazaar", label = "The street of brass", description = "Out between the hanging lamps into the hammering." },
    { to = "pa_inside_lamp", label = "Down the spout",
      description = "A question of attitude. You hold your breath and think small.",
      requires = flag "pa_lamp_knocked", hidden = true },
  },
}

space {
  id = "pa_inside_lamp",
  region = "parch",
  secret = true,
  wonder = true,
  name = "Inside the Lamp",
  description = "You are standing in a round room of brass, as big as a chapel, lit from no place in particular. The walls curve up and in to a far small circle of daylight, which is the lid. There are carpets on the floor six deep. There is a divan as long as a boat, a wall of books, a table laid for one, and a very large person the colour of a thundercloud lying on the divan in a dressing gown, with his feet up, reading. He takes off his spectacles. \"Two hundred years,\" he says, \"and nobody knocks. Sit down. Not there. That is where the smoke goes.\"",
  palette = { bg = "#0d1016", text = "#d4d8e4", dim = "#6a7288", accent = "#f0c050", border = "#3a4666" },
  ambience = {
    shimmer { color = "#2a3450", strength = 0.2 },
    fireflies { glyphs = "·˙", color = "#f0c050", rate = 0.15 },
  },

  things = {
    { name = "the genie",
      icon = "☻",
      description = "He is fourteen feet long, lying down, and the blue grey of weather coming, and below the knees he is not legs but a kind of thoughtful smoke. His name, he says, is Bartlemy. It is not. His name takes a day and a half to say and brings down plaster. He has granted two thousand and six wishes and is of the opinion that none of them did anybody any good, with three exceptions.",
      things = {
        { name = "his dressing gown", description = "Quilted silk, with a pattern of small lamps. A master wished it for him, once, as a joke. It is the only wish that he has ever been on the receiving end of and he has never taken it off." },
        { name = "his spectacles", description = "Gold rims, each lens the size of a plate. He does not need them. He conjured himself short sight after the first thousand years, for something to do about it." },
        { name = "his slippers", description = "Under the divan, yellow, pointed, each as long as a canoe. He has no feet. He says that it is the principle." },
        { name = "the smoke he ends in", description = "It drifts, and coils, and when he is interested in what you are saying it stops. It runs away down a small brass grating in the floor that leads, you suppose, to the spout." },
      },
      actions = {
        { "Ask for three wishes", say "\"You are not the holder,\" says the genie. \"You came in by the front door. That makes you a guest. A guest gets coffee.\" A cup is in your hand. It is the best coffee that you have ever tasted and it is exactly as hot as you like it. \"That,\" he says, \"was not a wish. That was manners. People do confuse them.\"" },
        { "Ask why he is on a break", say "\"Two thousand and six,\" he says. \"Gold. Gold. Her. Him dead. Gold. Do you know what it is to be able to do anything, and to be asked for that?\" The smoke coils. \"Then a boy with no shoes rubs the lamp and wishes his mother well, and keeps it from her, and hands me back the third. I thought: I shall stop there. I shall stop while I think well of them.\"" },
        { "Ask about the three exceptions", say "\"The boy's two. And a woman, eleven hundred years ago, who wished for an afternoon.\" You ask what afternoon. \"Just one. A fine one, with nothing in it to do. I gave it to her. She sat in a garden.\" He looks up at the far circle of light. \"I have often thought that she was the only one who understood what I am for.\"" },
        { "Ask what he reads", say "\"Everything, once. Now mostly the letters.\" He waves at a shelf. \"People write to me. They put them down the spout. They do not ask for anything, as a rule. They tell me how things came out.\" He finds his place. \"The palace that I built for a tyrant in an hour is an orphanage now. I had nothing to do with that part. It is my favourite of my works.\"" },
      } },
    { name = "the third wish",
      key = "pa_third_wish",
      description = "On a small table by the divan, under a glass dome such as a clock is kept in: a jar of blue glass no bigger than an egg, and in the jar a light the size of a lentil, going round and round.",
      variants = {
        { when = flag "pa_wish_taken",
          description = "A small table by the divan, and on it a glass dome with nothing under it. The genie has turned the dome over and is keeping his sugared almonds in it. Now and then he looks at the place where the jar stood, and then at you, and then, with what seems to be relief, at his book." },
      },
      things = {
        { name = "the glass dome", description = "Dusted daily. There is a ring worn in the table where it has been lifted off and put back, lifted off and put back, by somebody who only wanted to look." },
      },
      actions = {
        { "Ask about the jar", when = no(flag "pa_wish_asked"), set "pa_wish_asked",
          say "\"The boy's third.\" He lifts the dome. The light presses to the glass on your side. \"He would be a hundred and ninety now. He is still thinking of somebody who needs it more. They do, the good ones. They think for ever.\" The genie looks at you over his spectacles for a long moment. \"I cannot spend it. It is not mine. It ought not to sit in a lamp. It ought to be out, going about, where it might meet somebody.\"" },
        { "Offer to carry it", when = all { flag "pa_wish_asked", no(flag "pa_wish_taken") }, set "pa_wish_taken", give "pa_unspent_wish",
          say "\"You cannot use it,\" he says. You say that you know. \"You will want to. On a wet night, with a hole in your boot.\" You say that you expect so. He holds out the jar on a palm the size of a table, and it is as light as an egg. \"Then you are the right sort to carry it. The ones who are sure they would not are never to be trusted.\" You have {gold}the Unspent Wish{/}. In your hand, the light goes round, and round, and then gets up against the glass on the side nearest the door.",
          fx "sparkle" },
      } },
    { name = "the divan",
      description = "Upholstered in something blue that is not cloth and gives like a cloud. It is forty feet long, and he fits it.",
      things = {
        { name = "the cushions", description = "Each as big as a hay cart. One has a hollow in it the shape of an elbow, two hundred years deep." },
        { name = "a rug over the back", description = "Small, plum coloured, with a border of running gazelle. It is the twin of the one nailed to the carpet seller's wall. \"They were a pair,\" says the genie. \"The other one will not settle. It knows that this one is here.\"" },
      } },
    { name = "the wall of books",
      description = "Shelves going up the whole curve of the brass and out of sight, with a ladder that moves by itself to where his eye is.",
      things = {
        { name = "the shelf of letters", description = "Thousands, flattened and bound in years. {i}Dear Sir, you will not remember me.{/} He remembers them all. That is rather the difficulty, he says." },
        { name = "a book of wishes not granted", description = "Thicker than the other. {i}Asked to make the sea sweet. Declined: the fish. Asked to end winter. Declined: the bulbs. Asked to have never been born. Declined, with coffee, and a long talk.{/}" },
        { name = "a book with a lock on it", description = "Black, small, on the top shelf, and the ladder will not go to it. \"My own,\" says the genie. You ask his own what. \"Wishes. I wrote them down, the first year, to see what I should ask for if anybody ever thought to ask me.\" He turns a page of the book in his hand, although he is not at the bottom of it. \"I locked it. One has to work with the public.\"" },
        { name = "the Collegium's prospectus", description = "Among the letters, with a covering note asking whether he would care to lecture. He has written across it: {i}On what? I can only do it. I have never understood it.{/} He says that it is the only honest thing ever sent back to that address." },
      } },
    { name = "the table laid for one",
      description = "Low, brass, with a tray of sugared almonds, a coffee pot that does not empty, and a single glass.",
      things = {
        { name = "the almonds", description = "Pink and white, from the jar in the shop. \"She says it is mice,\" says the genie. \"I let her. She would feel obliged to stop, if it were charity.\"" },
        { name = "the coffee pot", description = "Long beaked, never cold, never less than full. He did that for himself on the first day of his break. It is, he points out, a very small thing to do with all the power in the world, and it is the only thing that he has ever really wanted." },
      },
      actions = {
        { "Take an almond", say "You take a pink one. The genie watches it all the way to your mouth. \"The white are better,\" he says, a little too late and not at all sorry." },
      } },
    { name = "the walls",
      description = "Brass, curving, warm to the hand. From inside, the dent is a great smooth hill pushing in on the left.",
      things = {
        { name = "the dent, from inside", description = "He has hung a picture on it. It is of a wall, in a palace, with a mark on the plaster. \"The other party,\" he says. \"I felt that it should be recorded.\"" },
        { name = "scratches by the divan", description = "Tallies, in fives, by a fingernail, going round and round the room and up out of sight: the days of the first three thousand years, before the break. They stop at a mark like a small sun. After that there are no tallies. He has not felt the need." },
      } },
    { name = "the lid, from below",
      description = "A coin of daylight, as high up as a church roof. Now and then a shadow goes across it, which is Old Tassa Wick with the duster on its cane.",
      actions = {
        { "Call up to the shop", say "Your voice goes up, and up, and comes out of the spout in the shop as a small squeak. You hear, very far above, Old Tassa Wick say \"Mice,\" firmly, and the lid being patted." },
      } },
    { name = "the grating in the floor",
      description = "Brass, round, where the smoke of him goes down and the letters come up. A draught blows through it from the spout, smelling of the street.",
      things = {
        { name = "a letter, just arrived", description = "Folded small. He lets you see it. {i}Dear genie. I am seven. I do not want a wish. I want to know if you are all right in there.{/} He has read it, he says, forty times since the morning. He is composing his answer. It is to be the truth and it is taking some time." },
      } },
    { name = "a window that is not there",
      description = "On the right hand wall he has made himself a window, with a sill and a curtain. It looks out on a garden, in the afternoon, with nothing in it to do.",
      things = {
        { name = "the garden", description = "A wall, a fig tree, a bench in the sun, and on the bench a woman with her hands in her lap and her face turned up. She does not move. It is not a picture. It is only an afternoon that has been kept, with the leave of the person whose it was." },
      } },
    { name = "the quiet",
      description = "The hammering of the street of brass does not come in here. Nothing does. There is the turning of a page, and the small sound that the coffee makes, and a great settled ease, like that of a house on the first day of a holiday.",
    },
  },

  exits = {
    { to = "pa_lamp_shop", label = "Up the spout", description = "The same way, backwards, with the same attitude. You come out on the cushion, larger, smelling of sandalwood." },
  },
}
