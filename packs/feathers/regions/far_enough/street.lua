space {
  id = "chisel_street",
  region = "far_enough",
  name = "Chisel Street",
  description = "The shopping street of Far Enough, cut into the north wall of the cavern: forty shop fronts in a row, each exactly as wide as its neighbour, each with an iron sign hung dead level. Nothing is on offer. Nothing is reduced. A dwarf shop sells one kind of thing, has always sold it, and regards a second line as a loss of nerve.",

  things = {
    { name = "the shop signs",
      description = "Iron, square, on brackets, every one at the same height. They are inspected with a level on the first of the month, and a sign that has dropped is taken in for the night like a child that has misbehaved.",
      things = {
        { name = "a sign with a kettle", description = "The kettle shop. There is one kettle in the window. It is the kettle. You may order one like it and collect it in four years." },
        { name = "a sign with a boot", description = "The cobbler makes one boot, the left, and his brother across the street makes the right. They have not spoken since a quarrel in their father's time. The boots match to a hair." },
        { name = "a sign with nothing on it", description = "A blank square of iron. The shop below sells signs. He says that to put anything on his own would be to favour a customer." },
        { name = "a sign with a rune that glows", description = "Blue, steady, cold. The rune-smith's. It is the only sign in the street that needs no lamp, and the lamplighter crosses over when he passes it." },
      } },
    { name = "the kettle shop",
      description = "A window, a counter, and behind the counter an order book as thick as a step. The shopkeeper does not make kettles. He takes down what you want, tells you that you do not want that, and sends the Forge what you should have asked for.",
      things = {
        { name = "the kettle in the window", description = "Black iron, a quart, with a spout whose curve was settled four hundred years ago. You look at it for some time. You have owned kettles. You see now that you have only owned things for heating water in." },
        { name = "the order book", description = "The current page is being filled for delivery in four years' time. An early page has one entry in a round, foreign, farmhand's script: {i}one, for the range. M.P. Paid in mushrooms.{/}" },
        { name = "the shopkeeper", description = "He looks at your hands, your pack, and the way you stand, and says: \"Pint and a half. Short spout. You pour in a hurry.\" You do pour in a hurry. Nobody has ever told you.",
          actions = {
            { "Order a kettle", say "He writes it down. It will be ready in four years, and it will outlast you, and he will want to know who it is to go to after. You say you have not thought. \"Think,\" he says, and leaves the line blank, and puts a small mark beside it that means he will ask again." },
          } },
      } },
    { name = "the two cobblers",
      description = "One on each side of the street, door facing door. Lefts on this side, rights on that. A customer is measured twice, by two dwarves who will not look at each other, and the boots are brought together for the first time on the customer's feet.",
      things = {
        { name = "the left cobbler", description = "He is stitching a welt with the door open, so that he can not look at his brother properly.",
          actions = {
            { "Ask about the quarrel", say "\"He knows what he said.\" You go across and ask the other. \"He knows what he said.\" It is the same sentence, in the same voice, and each of them is holding the last in exactly the same way." },
          } },
        { name = "the right cobbler", description = "He is stitching a welt with the door open. Every so often both of them reach for the wax at the same moment, and both stop." },
        { name = "a pair in the middle of the street", description = "On a stone, halfway between the two doors: one finished left boot and one finished right, set down for collection. Neither brother carried his all the way. They meet at the stone when the street is empty, the neighbours say, and stand the pair straight, and go back in." },
      } },
    { name = "the beard-ring maker",
      description = "A window of small iron rings on velvet, plain, twisted, and one or two with a stone. A dwarf's beard rings say what he is: trade, tier, family, whether he is spoken for.",
      things = {
        { name = "a wedding ring", description = "It is in two halves that screw together round both beards at once. They are worn that way for the length of the ceremony, which is why dwarf weddings are held seated." },
        { name = "a plain ring with a nick", description = "For an apprentice. The nick is filed out when he passes. There is one dwarf in the city, the maker says, who has worn his nicked for a thousand years and will not have it touched, and he would thank you not to ask who." },
        { name = "a ring for a visitor", description = "He has made one, this morning, on hearing. It is far too small for a finger and you have no beard. He has thought of that. It is on a cord, for the neck.",
          actions = {
            { "Try it on", say "It hangs at your collarbone, cold and then warm. The rune on it, he tells you, means {i}guest{/}. He will not take anything for it. He would like it mentioned at the gate, on your way out, that it was fitted properly." },
          } },
      } },
    { name = "the lamp shop",
      description = "Brass lamps in rows, every one lit. The lampwright sells the lamp and, with it, the right to a trimmer for life. It is the trimmer you are paying for.",
      things = {
        { name = "a miner's lamp", description = "Small, caged, with a hook for the belt. It will not go out in wind, water or bad air, and it dims a full minute before the air goes bad, to let you say something to the others." },
        { name = "a reading lamp", description = "A green glass shade and a weighted foot. The lampwright says it gives a light that makes poor reasoning visibly worse. The Hall of Grievances has two hundred." },
        { name = "a night light", description = "For children: a glowcap under a glass bell, on a brass saucer. It needs watering, and that is the lesson." },
      } },
    { name = "the bakery",
      description = "The warmest front in the street. Square loaves in an iron rack, square buns, and a tray of something square and sweet that the baker calls cake and that weighs what a brick weighs.",
      things = {
        { name = "the baker", description = "Floury to the elbows, with her beard in a bag. She gives you the end of a loaf, since it is the end, and nobody is charged for an end.",
          actions = {
            { "Eat it", say "Dark, sour, close-grained, and still warm in the middle. It takes some chewing. By the time you have finished you feel that you have done a small job of work and been paid for it." },
          } },
        { name = "the cake", description = "Honey, malt and ground mushroom, baked for a shift and aged for a year. It is cut with a saw. A slice the size of a domino will see a miner through to supper." },
        { name = "the oven", description = "It has no fire. A flue in the back wall comes straight from the Great Forge. The first baker paid for the flue with a loaf a day for ever, and the loaf still goes round every morning, on a tray, to the stoker." },
      } },
    { name = "the stationer",
      description = "Slates, by size. Chalk, by hardness. Chisels for lettering, in sets of nine. And at the back, under glass, for the curious: a sheet of paper.",
      things = {
        { name = "the sheet of paper", description = "One, yellowed, brought down by a tall person long ago. The stationer shows it to apprentices as a warning. \"Burns,\" he says. \"Tears. Gets wet. They write {i}laws{/} on it up there.\"" },
        { name = "a pocket slate", description = "Two leaves of black stone hinged in iron, the size of your palm, with a chalk in the spine. Every dwarf carries one. What is on it is nobody's business, and what is on it is mostly sums." },
        { name = "a box of mistakes", description = "Slates with an error carved in them, sold cheap, for practice. There are four in the box. It is last century's stock." },
      } },
    { name = "the street itself",
      description = "Twelve feet wide, paved, with a gutter down the middle that has never had anything in it. A dwarf sweeps it at each change of shift. He starts at one end as his opposite number starts at the other, and they meet in the middle and nod.",
      things = {
        { name = "the kerb", description = "Each kerbstone carries the mark of the shop it fronts. The shopkeeper owns it, scrubs it, and is answerable for it. One, outside the sign shop, is a fraction prouder than its neighbours. There have been words." },
        { name = "a handcart", description = "Parked square to the kerb with its wheels chocked, on a level street. The carter says a street is only level until it isn't." },
      } },
    { name = "the shoppers",
      description = "Dwarves, with baskets. They do not browse. Each knows what he came for, goes to the shop that sells it, buys the one, and is home in a quarter of an hour. The idea of going out to see what there is has not occurred to this people.",
      things = {
        { name = "a dwarf comparing two nails", description = "The exception. He has been at the ironmonger's window since the start of the shift, with a nail in each hand, turning them. They came from the same batch. He will decide, and he will be right." },
        { name = "a mother and son", description = "She is buying him his first slate. He wants the large one. She says he will grow into the small one. It is a very old joke down here and she tells it without a smile." },
      } },
    { name = "a house door between two shops",
      description = "Number 2,117. A round iron door with a brass lamp over it and a boot scraper beside it, and on the step, set out neatly, a row of small clay pots with mushrooms in them. Somebody lives here and likes it." },
    { name = "the schoolroom window",
      description = "At the end of the street, a long low window with forty small faces at it. They were looking at their slates until you came round the corner. A voice from inside says a short word and the faces go down again, all but one." },
    { name = "the Counting House front",
      description = "The last building on the street and the largest: a face of polished black stone with one door and no window. Over the door, carved a yard high, a single rune. Any dwarf will tell you it means {i}exactly{/}." },
    { name = "a street newt",
      icon = "s",
      description = "Grey, on the warm kerb outside the bakery, which is the best pitch in the street and has been handed down. It eats crumbs. The baker sweeps them its way and denies it.",
      actions = {
        { "Give it a crumb", say "It takes the crumb in both hands, like a small clerk with a document, and turns its back on you to eat." },
      } },
  },

  exits = {
    { to = "plumb_square", description = "Back along the street to the square and the clock." },
    { to = "rune_shop", description = "Under the sign that glows, through a door with no handle that opens when it has looked at you." },
    { to = "dwarf_house", label = "Number 2,117", description = "The round iron door with the mushroom pots. It is ajar, and somebody is calling you in." },
    { to = "school_room", description = "Round the end of the long window, to a door with forty pairs of small boots outside it." },
    { to = "counting_house", description = "Through the one door in the black stone front, under the rune that means exactly." },
  },
}

space {
  id = "rune_shop",
  region = "far_enough",
  name = "Coldchisel's",
  description = "A narrow shop lit blue by its own stock. This is where Far Enough buys its magic, and Far Enough will have no magic that does not earn its keep. No wands. No crystal balls. Shelves of plain, heavy, useful objects, each with one rune cut into it and a label saying what it does and for how long.",
  palette = { bg = "#090c12", text = "#c8d0dc", dim = "#5c6880", accent = "#70b8f0", border = "#283c5c" },
  ambience = {
    shimmer { color = "#70b8f0", strength = 0.2 },
    dust { glyphs = "·", color = "#44506a", rate = 0.15, speed = 0.15 },
  },

  things = {
    { name = "Odda Coldchisel",
      key = "runesmith",
      icon = "☺",
      description = "The rune-smith: a spare, grey dwarf woman with a jeweller's glass pushed up on her forehead and a chisel no longer than a pin. She is the fourth of her line to keep the shop. She does not call it magic. She calls it finishing.",
      things = {
        { name = "her chisel", description = "The cutting edge is a single crystal, from somewhere she will not name. With it she can put a rune on the head of a nail, and has, for a customer who wanted a nail that would stay." },
        { name = "her glass", description = "Three lenses on a swivel. With all three down she can see whether a rune means it." },
        { name = "her beard", description = "Short, iron-grey, with nine blue rings in it, one for each rune she is licensed to cut. There is room for a tenth. She says there is always room for a tenth, and that is what is wrong with rune-smiths." },
      },
      actions = {
        { "Ask for something magic", say "She winces at the word. \"What do you want it to {i}do{/}?\" You say you had not thought. Fly, perhaps. Fire from the hands. She looks at your hands. \"What for?\" she says, and waits, and it turns out that you do not have an answer that survives being looked at." },
        { "Ask how a rune works", say "\"You tell a thing what it is,\" she says. \"Firmly. In its own language. A stone that's been told it's warm stays warm. Most things only need telling once, if you mean it.\" She pulls the glass down and looks at you through it. \"People take more,\" she says." },
        { "Ask about the level in the case", when = no(item "true_level"),
          say "\"Ever-True. Great-gran's.\" She does not look round at it. \"It's right about everything. Walls, floors, people. I can't sell it. Every customer picks it up, and looks at the bubble, and puts it down and goes home quiet.\" She shrugs. \"Hold it if you like. Everyone does once.\"" },
        { "Ask about the level in the case", say "\"It went with you,\" she says. \"First time it's gone with anyone. I'd take that as the reading, if I were you, and not look at the bubble too often.\"" },
      } },
    { name = "a glass case on the counter",
      key = "level case",
      description = "Iron-framed, unlocked. In it, on grey felt, a spirit level of black bronze as long as your forearm, with one glass and one bubble. A card: {i}NOT FOR SALE. Has been tried.{/}",
      variants = {
        { when = item "true_level",
          description = "Iron-framed, unlocked, and empty, with a long dent in the grey felt. The card has been turned over. On the back, in chalk: {i}Out. With a tall person. It chose.{/}" },
      },
      actions = {
        { "Hold the level", once = true, give "true_level", fx "sparkle",
          say "It is heavy and cold. The bubble slides to one side at once, a hair off centre, and stays. \"There,\" says the rune-smith, not unkindly. \"That's you.\" You wait for it to go further. It does not. She comes round the counter, pulls her glass down, and looks for a long time. \"A hair,\" she says. \"It gave my mother a full quarter. It gave the Foreman an eighth and he never came back.\" She shuts the empty case. \"It won't better that for anyone. Take it. {gold}Ever-True.{/} It's no use to you, you understand. It only tells you.\"" },
      } },
    { name = "the warm shelf",
      description = "Flat black stones in three sizes, each cut with the rune for {i}warm{/}. This is the bread and butter of the trade.",
      things = {
        { name = "a pocket stone", description = "{i}Warm. One winter. Tell it thank you in spring or it sulks.{/}" },
        { name = "a bed stone", description = "{i}Warm, foot end. Fifty years. Not to be used with a second bed stone: they compete.{/}" },
        { name = "a pasty stone", description = "{i}Hot. One hundred years, or one dropping.{/} There is a waiting list for these, and the pasty seller in the square is on it for his grandson." },
      },
      actions = {
        { "Pick one up", say "Warm as a hand. It warms a little more while you hold it, as if pleased, and you put it back before you have to buy it." },
      } },
    { name = "the sharp shelf",
      description = "Knives, chisels, saws, each with a small rune at the heel. The rune is for {i}keen{/}. It does not make a blade sharp. It makes the blade want to be.",
      things = {
        { name = "a kitchen knife", description = "{i}Keen. Will not cut the cook. Will cut the cook's brother, if he has it coming.{/} The cook at the Second Shift has one. Her brother carves his own meat." },
        { name = "a razor", description = "Unsold, dusty, and the only one. It was a special order, long ago, for a dwarf who then thought better of it. It is still keen. It has had nothing to do for three hundred years and you can feel it hoping." },
        { name = "a saw that hums", description = "A crosscut, for the Under-Fields. The rune is for {i}straight{/}. It hums one note while it is cutting true and stops if you wander. The farmer says it is like working with her mother." },
      } },
    { name = "the finding shelf",
      description = "Small things with the rune for {i}here{/}: you are meant to tie one to whatever you lose most.",
      things = {
        { name = "a key fob", description = "{i}Here. Rings when called by name. You must give it a name.{/} Every dwarf in the city has one of these, and so at the end of a shift the whole of Plumb Square can be heard quietly calling out names like a lambing." },
        { name = "a spectacle chain", description = "{i}Here. Tugs.{/}" },
        { name = "a returned one", description = "In a tray marked {i}REFUNDS{/}, the only item. A tag: {i}Tied it to my husband. It works. That was not the trouble.{/}" },
      } },
    { name = "the staying shelf",
      description = "Nails, pegs, wedges and a doorstop, cut with {i}stay{/}. Set one and it is set. The label on the shelf says, in capitals, {b}BE SURE.{/}",
      things = {
        { name = "the nail", description = "The one she cut on the head, for the customer who wanted a nail that would stay. He drove it in the wrong place. It is here, with a square foot of his wall still round it, because that was easier." },
        { name = "a tent peg", description = "For the tall trade, of which there is none. It was made on spec, six hundred years ago, the week of the king. She says a shop should have one thing in it that is waiting for somebody." },
      } },
    { name = "the quiet shelf",
      description = "One item: a small iron bell with no clapper and the rune for {i}hush{/}. You ring it and a room goes quiet for as long as it would have rung.",
      things = {
        { name = "the label", description = "{i}Hush. Not for use in the Great Forge. Not for use during the song. Not for use on a spouse, by order of the Watch, see charge book, page one, line two, pending.{/}" },
      },
      actions = {
        { "Ring it", say "You swing it. Nothing. And then you notice the nothing: the tick of the shop clock has gone, and the hum of the sign, and your own breathing. For three seconds you are standing inside the bell. Then everything comes back, rather loud, and the rune-smith takes it out of your hand and puts it on a higher shelf." },
      } },
    { name = "the workbench",
      description = "Behind the counter: a vice, a lamp with a blue flame, and a tray of blanks. She cuts one rune a day. It takes the morning to cut and the afternoon to mean.",
      things = {
        { name = "today's rune", description = "On a kettle lid, half done: three strokes of a five-stroke rune. Already the lid is a little warm. She says a rune starts to work as soon as it knows what it is going to be, and that is why you never stop halfway and go to lunch." },
        { name = "a tray of failures", description = "Stones, split. A rune cut without conviction cracks the thing it is cut in. There are six in the tray. They are from her first year, and she keeps them where she can see them." },
        { name = "the pattern book", description = "Stone leaves on an iron ring: the nine runes, each drawn stroke by stroke. After the ninth there is a tenth leaf, blank, polished, and worn at the corner by four generations of thumbs." },
      },
      actions = {
        { "Ask about the tenth leaf", say "\"There's a tenth,\" she says. \"Everybody in the trade knows there's a tenth. Nobody knows what it's for. Great-gran thought she had the first stroke.\" She turns the blank leaf to the light, and for a moment there is the ghost of one line on it. Then it is only polish. \"I'm not cutting a thing when I don't know what it says,\" she says, and shuts the book." },
      } },
    { name = "the shop door",
      description = "No handle, inside or out. It has the rune for {i}know{/}, and it opens to anybody it has seen before, and to a stranger after a short pause. You were given the pause. You have the impression of having been read.",
      actions = {
        { "Ask whom it would not open for", say "\"It's never refused,\" she says. \"It took a long time over the troll.\"" },
      } },
    { name = "the shop clock",
      description = "On the wall, plain, with the rune for {i}true{/} on the pendulum. It keeps the same time as the shift clock in the square to within nothing at all. There is a small brass plate under it: {i}Movement by Pebble.{/}" },
    { name = "a jar of glow beetles",
      icon = "c",
      description = "On the windowsill: a dozen beetles the size of peas, each shining a steady blue. They are not for sale. They wandered in, generations ago, having taken the sign for a relative, and have been fed ever since.",
      actions = {
        { "Tap the jar", say "They all go out. One comes back on, cautiously, then the rest, and for a while they blink at you in a pattern that looks a good deal like being discussed." },
      } },
    { name = "a notice by the till",
      description = "{i}No credit. No refunds, bar the one. No runes for luck: there is no such rune and you would not like it if there were.{/}" },
  },

  exits = {
    { to = "chisel_street", description = "Out through the door that knows you now, into yellow lamplight." },
  },
}

space {
  id = "dwarf_house",
  region = "far_enough",
  name = "Number 2,117, Chisel Street",
  description = "A dwarf house: one round room cut in the rock, eight feet across and five high, with a range, a box bed, a table, and a place for everything. You are in it on your knees. The household is delighted. They have set a place for you, on the floor, with a cushion.",
  palette = { bg = "#120d08", text = "#d8ccb8", dim = "#786a58", accent = "#e8b060", border = "#4c3a22" },
  ambience = { flicker { color = "#e8b060", strength = 0.2 }, steam { glyphs = "∙°˙", color = "#6e6050", rate = 0.25 } },

  things = {
    { name = "Dame Brenna Tallow",
      key = "dame tallow",
      icon = "☺",
      description = "A round, brisk dwarf with flour on her beard and a ladle, who called you in off the street because you looked as if nobody had fed you. She is the wife of Brun Tallow, of the ladder. She will tell you about the ladder.",
      actions = {
        { "Accept tea", say "It arrives in a stone cup the size of an eggcup, with a slab of the square cake. You are watched while you eat it. You say it is very good. She says it is not her best. Her husband, without looking up, says it is her best. They have had this exchange every teatime for a hundred and ninety years and it has never once gone differently." },
        { "Ask about the ladder", say "\"It had nine rungs,\" she says. \"It has always had nine rungs. Old Hask's grandfather says ten. Forty grudges on it and there's the ladder on the wall, you can count.\" You count. Nine. \"Of course,\" she says, lowering her voice, \"there's a mark on the rail where a tenth might have been. We don't mention that. He sanded it.\"" },
        { "Compliment the house", say "\"It's small,\" she says, pleased. \"Brun's people cut it. A room should be no bigger than you can keep right.\" She looks at you, folded up on her floor with your knees by your ears. \"You'll have a terrible lot to keep right, up there. All that outside.\"" },
      } },
    { name = "Brun Tallow",
      icon = "☺",
      description = "In the chair by the range, with a pipe, mending a boot. He nodded when you came in, and that was the welcome. He is a compost turner by trade and a man of few words by choice, and he keeps looking at the height of you with the eye of someone working out a load.",
      things = {
        { name = "his pipe", description = "Stone, with a lid. He smokes dried moss. It smells of a wet wall on fire, and you are getting used to it." },
        { name = "the boot", description = "A left. He bought it across the street from the right, as everyone does. He is putting in a stitch the cobbler would be ashamed not to have put in himself, and both of them know he will say so." },
      },
      actions = {
        { "Ask about his work", say "He takes the pipe out. \"Heaps,\" he says. He puts the pipe back. Then, because you are a guest: \"You turn them. You keep them warm. You don't rush them. In the end there's mushrooms.\" He has just told you, you realise, everything the dwarves know about anything." },
      } },
    { name = "the range",
      description = "Iron, black-leaded, with a kettle on the hob and a flue to the Great Forge. It heats the room, cooks the dinner and airs the linen, and it is polished every morning before anything else is done.",
      things = {
        { name = "the kettle", description = "Forge-made, a wedding present, a hundred and ninety years old. There is not a mark on it. Dame Tallow says it was her mother's choice and she would have had the shorter spout." },
        { name = "the oven", description = "A square loaf, a dish of something under a crust, and on the bottom shelf, wrapped in a cloth, a brick. The brick is for the bed." },
        { name = "a row of ladles", description = "Nine, by size, each on its own hook with its outline on the wall behind. You begin to think the whole city is hung up on outlines." },
      } },
    { name = "the box bed",
      description = "A cupboard in the wall with doors, a feather quilt, and two pillows. It is four feet long. They sleep in it side by side, with the doors shut, and consider a tall person's bed to be a kind of field.",
      things = {
        { name = "the quilt", description = "Stuffed with cave wool, not feathers. There are no feathers under the mountain, Dame Tallow says, and she is not sure she holds with them: sleeping under a thing that used to go about in the air." },
        { name = "the carved doors", description = "A pattern of mushrooms and picks, done by Brun the winter before they were married, with a penknife. One mushroom is noticeably better than the rest. He did that one last." },
      } },
    { name = "the ladder",
      key = "the Tallow ladder",
      description = "On the wall, on two pegs, with its outline behind it: a short oak ladder with nine rungs. It has not been used since the grandfather's day. It cannot be, while the matter stands. It is evidence.",
      things = {
        { name = "the nine rungs", description = "Evenly spaced, all the way up. Then, above the ninth, a slightly longer piece of rail than you would expect." },
        { name = "a smooth place on the rail", description = "Sanded, and oiled, and sanded again. You run your thumb over it. There might have been a mortise there once. There might not. You look at Brun Tallow. Brun Tallow looks at his boot.",
          actions = {
            { "Say nothing", say "You say nothing. Dame Tallow fills your cup. Something has been understood among the three of you, and it will not be carved." },
          } },
      } },
    { name = "the table",
      description = "Stone, round, with two stools and, today, a cushion on the floor. The top is level. You know, because there is a marble in a groove in the middle of it, and the marble is not moving.",
      things = {
        { name = "the marble", description = "Clear crystal, in a ring groove. If the house ever shifts, it will roll, and they will know before the cups do. Every dwarf table has one. It is the first thing a child is taught to watch." },
        { name = "the place set for you", description = "A stone plate, a stone cup, a spoon. All of them the household's best, and all of them the size you would give a doll. They have put out two of each, side by side, so that it comes to a proper helping." },
      } },
    { name = "the dresser",
      description = "Cut into the wall: four shelves of stone plates, standing in grooves. One for each day of the dwarf week, which has nine, and two spare.",
      things = {
        { name = "the wedding plate", description = "Grey slate, inlaid with a line of silver that goes once round the rim and meets itself without a join. You are not to touch it. You are allowed to look at it from where you are." },
        { name = "a child's cup", description = "Small even for here, with two handles. Their daughter's. She is ninety now and a clerk at the Hall, and it is still kept on the low shelf where she could reach." },
      } },
    { name = "the mushroom pots",
      description = "On the windowsill and the step: a row of clay pots with one fancy mushroom in each. Dame Tallow breeds them. She is trying for a blue one with a white edge, and has been for sixty years.",
      things = {
        { name = "the nearly blue one", description = "Grey, with a tinge. She turns the pot so that you get it in the best light. You say it is blue. \"It isn't,\" she says, \"but you're a kind liar.\"" },
        { name = "a prize card", description = "Third, at the Under-Fields show, the year of the last counting. Second was Farmer Marl. First was Farmer Marl's gran, who had not entered." },
      } },
    { name = "the household slate",
      description = "By the door: the week's work, the week's meals, and a column headed with a rune that Dame Tallow says means {i}owed{/}. Brun owes her a shelf. It has been on the slate since their wedding. He says he is choosing the stone." },
    { name = "the house cricket",
      icon = "c",
      description = "White, on the hearth, in a cage with the door open. Every dwarf house has one for luck. This one is very old and no longer chirps, and is kept on, says Dame Tallow, because you do not turn a body out for going quiet.",
      actions = {
        { "Listen for it", say "Nothing. Then Brun Tallow, without lifting his eyes from the boot, makes a small noise in his throat: {i}tk{/}. Dame Tallow does not seem to have heard. The cricket, you would swear, looks grateful." },
      } },
    { name = "the ceiling",
      description = "Five feet up, smooth, and whitewashed. You have not hit it, since you have not stood. There is a mark on it all the same, old and faint, at about the height of a tall head. \"The king,\" says Dame Tallow. \"Brun's people had him to tea. He {i}would{/} get up to make a speech.\"" },
  },

  exits = {
    { to = "chisel_street", description = "Out through the round door, on your knees, with a second slab of cake pressed on you in a cloth." },
  },
}

space {
  id = "school_room",
  region = "far_enough",
  name = "The Schoolroom",
  description = "A long low room with forty stone desks in rows and a dwarf child at each, slate in hand. At the front, on a step, the schoolmistress, with a pointer. The lesson stopped when you came in. Forty faces are turned to you, and the schoolmistress has decided, you can see it happen, to make use of you.",

  things = {
    { name = "the schoolmistress",
      icon = "☺",
      description = "Mistress Ketta Slatewell, small, upright, with her beard in a tight bun and a pointer of white bone. She has taught every dwarf in the city under two hundred and can still put a name to the back of any head in the square.",
      things = {
        { name = "her pointer", description = "She does not strike with it. She points with it, at the place on your slate where you went wrong, and holds it there in silence until you find the error yourself. Grown smiths go pale when they describe this." },
        { name = "her bun", description = "Wound so tight that it lifts her eyebrows. The children believe that if it ever came undone she would unravel completely." },
      },
      actions = {
        { "Introduce yourself", say "\"Class,\" she says, \"this is a tall person. Note the proportions. Note the boots.\" Forty chalks scratch. \"It has come down the Low Road, which is how long? Hask?\" A small voice gives a figure. \"And is it lost?\" The class looks you over. \"Yes, miss,\" they say together. You open your mouth, and close it." },
        { "Ask what they are learning", say "\"Straight,\" she says. \"This term, straight. Next term, level. In the third year we begin square.\" And reading? \"When they can rule a line worth writing on.\"" },
        { "Offer to teach them something", say "A dangerous brightness comes into her eye. She gives you the step, and the pointer. Forty faces wait. You tell them about the sky: that it is blue, and goes up for ever, and has weather in it. There is a long silence. A hand goes up at the back. \"What holds it?\" You say nothing does. Forty children look at one another, and then, with great pity, at you." },
      } },
    { name = "the class",
      description = "Forty of them, between twenty and fifty, in grey smocks, with the first fluff of beard on the older ones. They sit straight. They have been sitting straight since they could sit.",
      things = {
        { name = "the one who did not look down", description = "Front row, a girl of forty or so. You have met: she waved at you in the square. She has drawn you on her slate, to scale, with measurements, and she holds it up for you to check.",
          actions = {
            { "Check her figures", say "She has your height to within a thumb. She has the helmet at the angle it is actually at. Under the drawing, a column of sums and a conclusion, double underlined. You ask the schoolmistress what it says. \"That you would not fit in the cage of the Longshift standing,\" she reads, \"and therefore sat.\" You did sit. The girl nods, and makes a tick." },
          } },
        { name = "a boy at the back", description = "He is carving something under his desk with a nail. The schoolmistress knows. She is letting him finish, to see whether it is straight." },
        { name = "two sisters sharing a slate", description = "They have ruled a line down the middle of it, and each keeps to her own half with a strictness that has plainly been the subject of a treaty." },
      } },
    { name = "the big slate",
      description = "The whole front wall, black, ruled in a grid. Today's exercise is on it: one line, drawn by the schoolmistress, freehand, from one side to the other. It is straight. The class has been copying it since the start of the shift.",
      things = {
        { name = "the line", description = "You hold your thumb up to it and squint. It does not waver by the width of the chalk in thirty feet. She did it in one stroke, walking, without looking back." },
        { name = "yesterday's exercise", description = "Not wiped, in the corner, for reference: a dot. Under it, in her hand: {i}Before you draw a line, be sure where you are starting.{/}" },
      } },
    { name = "a child's desk",
      description = "Stone, with a groove for the chalk and a hollow for the elbow. The hollow has been worn by a great many elbows, and each child's desk is the one a parent sat at.",
      things = {
        { name = "initials in the stone", description = "Runes, cut small, going back along the edge: a child, the child's mother, her father, his. The oldest is so worn that you can only feel it." },
        { name = "a slate with a line on it", description = "Nearly straight. At the far end it dips, by a hair, where the hand got tired. The pointer has left a small white dot beside the dip. There is nothing else written on the slate. There does not need to be." },
        { name = "a lunch tin", description = "A square of loaf, a square of blue cheese, a square of cake. The lid has the child's rune and, under it, scratched by a parent: {i}eat the loaf first{/}." },
      } },
    { name = "the wall of firsts",
      description = "A row of slates on pegs: the first straight line of every child who has passed through the room. There are nine hundred. They are all the same line. Parents come and find their own and stand in front of it.",
      things = {
        { name = "a slate near the start", description = "Older than the others, the slate gone grey. The line on it is straight. Below it the name has been chalked and re-chalked for a thousand years: a short name, one rune, the kind you give a small child. It is the rune on the handle of a pick." },
        { name = "an empty peg", description = "At the end of the row, with tomorrow's date. Somebody in this room is nearly there. All forty of them think it is them." },
      } },
    { name = "the model of the city",
      description = "On a table at the back: Far Enough in grey clay, every tier, every door, made by the class, and remade each year by the next. It is used for sums. If a pasty leaves the square at the start of the shift, and so on.",
      things = {
        { name = "the Longshift", description = "A thread of wire going up out of the model to a nail in the ceiling, with a paper flag: {i}the mine{/}. And from the same nail, a second thread going down, much further, past the table, to the floor. At the bottom of it there is nothing. The children are not taught what the second thread is. They put it in every year regardless." },
        { name = "a very small clay figure", description = "New, and not to scale, and twice as tall as the clay doors. It has a helmet on at an angle. It was added this morning, in the square, by the look of the fingerprints, during break." },
      } },
    { name = "the boots outside the door",
      description = "Forty pairs, in a row, toes to the wall, left and right. Slippers are worn in class, to save the floor. A child who puts his boots down crooked has to take the whole row up and lay it again." },
    { name = "the school newt",
      icon = "s",
      description = "In a glass tank on the windowsill, green, placid, named Foreman. The children take turns to feed it and to write up its day. The log goes back four hundred years and nine newts, all named Foreman.",
      things = {
        { name = "the newt log", description = "{i}Foreman ate. Foreman sat on the stone. Foreman looked at Hask.{/} Today's entry, in careful chalk, already: {i}Foreman saw a tall person and did not mind.{/}" },
      } },
    { name = "the dunce's corner",
      description = "There is not one. There is a stool, by the schoolmistress's step, called the thinking stool, and to be sent to it is no disgrace. You sit there until you see it. Some very distinguished dwarves hold the record." },
    { name = "the alphabet frieze",
      description = "Round the top of the wall: the runes, each with a picture. {i}Pick. Kettle. Mushroom. Hinge.{/} The last picture, for the last rune, is a plain blue square. Under it somebody has written a word and somebody else has chalked over it.",
      actions = {
        { "Ask what the blue square is for", say "The schoolmistress looks at it, and for the first time since you came in she is not quite straight. \"It is the rune for {i}stop{/},\" she says. \"That is all they need at this age.\" The girl in the front row is looking at the blue square, and at you, and doing a sum." },
      } },
  },

  exits = {
    { to = "chisel_street", description = "Out past the forty pairs of boots, to a chorus of chalk." },
  },
}

space {
  id = "counting_house",
  region = "far_enough",
  name = "The Counting House",
  description = "The bank of Far Enough: a hall of black stone with forty clerks at forty sloping desks, each with an abacus of iron beads. Nobody speaks. There is only the click of the beads, in time, a little faster than the Forge. Every coin, kettle and mushroom in the city is entered here, and the books have balanced every night since the founding.",
  palette = { bg = "#0c0b0a", text = "#d4ccb8", dim = "#6e665a", accent = "#e6c14c", border = "#4a4028" },

  things = {
    { name = "the Chief Teller",
      key = "chief teller",
      icon = "☺",
      description = "Master Dorn Pennyweight, at the high desk, with a beard combed into two exact halves and a pen of solid iron. He has never been out by a farthing. He looks at you as he would look at a figure in the wrong column.",
      things = {
        { name = "his iron pen", description = "It writes on stone, by scratching. The Counting House does not use chalk. A sum that can be rubbed out, he says, is an opinion." },
        { name = "his beard", description = "Parted in the middle and weighed. He has it trimmed to balance. The barber uses scales." },
        { name = "his abacus", description = "Nine rods, nine beads to a rod, each bead a different metal. The top rod is gold, and he has never moved a bead on it. Nobody in Far Enough has ever needed that column." },
      },
      actions = {
        { "Ask to open an account", say "\"Deposit?\" You turn out your pockets onto his desk. He looks at what is there. He moves one bead, on the lowest rod, a very short distance, and moves it back. \"Come again,\" he says, \"when you are a going concern.\"" },
        { "Ask what the city is worth", say "He tells you. It is an exact figure, down to a fraction, and it takes him a quarter of a minute to say. \"As of the last bead,\" he adds. Behind him a bead clicks. He says the figure again, one farthing higher." },
        { "Ask about the oldest account", when = no(flag "fe_knows_account"), set "fe_knows_account",
          say "He does not need to look it up. \"Six hundred and four years. A pledge. One item, left against a bar bill at the Second Shift by a party who could not pay.\" He turns a page of stone. \"The Stoutbarrows sold us the debt. We hold the item. It has never been redeemed.\" He looks at you, and then, slowly, at the top of your head, and down. \"The terms,\" he says, \"pass an unredeemed pledge to the next of the pledger's kind to sign the book at the gate.\" A long pause. \"You have signed the book.\" He takes a key off his chain as a man parts with a tooth. \"Strongroom. The stair behind my desk. I shall want a receipt.\"" },
        { "Ask about the oldest account", say "\"It is closed,\" he says. \"After six hundred and four years it is closed.\" He looks at the line he has ruled under it. You would not have said a dwarf could look wistful about a ledger. \"It was a very tidy debt,\" he says." },
      } },
    { name = "the forty clerks",
      description = "In four rows of ten, each at a sloping desk of slate. They add in time. On every ninth click, forty right hands turn forty pages.",
      things = {
        { name = "a clerk adding", description = "Her fingers go down the rods without her eyes. She is doing the day's mushrooms. When she reaches the foot of the column she taps the desk once, and the clerk behind her, who has done the same column, taps once, and they do not look at each other, since it agreed." },
        { name = "a clerk who has stopped", description = "Third row, with his hand raised. He is out by one. Nobody turns round. The Chief Teller comes down from the high desk, without hurry, and stands behind him, and the clerk goes back up the column bead by bead while thirty-nine others add a little more quietly. It was a nail. He had counted a nail twice. He is given the afternoon to get over it." },
        { name = "the ninth click", description = "Forty pages, turned together. Stone pages. It sounds like one great book being read by one very large person." },
      } },
    { name = "the day book",
      description = "On a stand in the middle of the floor: a slab ruled in columns, with today's dealings. Everything bought and sold in Far Enough since the shift began is on it. It is not long. People here buy one thing.",
      things = {
        { name = "an entry for a pasty", description = "{i}One, mushroom. To: a tall person. Paid: by the city. See notice wall.{/} You have been an expense." },
        { name = "an entry for a helmet", description = "{i}One, visitor's, large. Issued. On loan. Value: see Forge. Condition on return: to be compared.{/}" },
        { name = "an entry struck through", description = "A line ruled cleanly across it and initialled. The Counting House does not rub out. An error stays on the page, struck, for ever, with the name of whoever made it. There are eleven in the building." },
      } },
    { name = "the scales",
      description = "Brass, in a glass case, tall as a dwarf. Everything of value is weighed here before it is entered. They are so fine that the case is kept shut against breath.",
      things = {
        { name = "the weights", description = "A set of nine, gold-plated, from a pound down to a thing you can only see as a glint. They are checked each year against a master set kept in the strongroom, which is checked against a set that nobody is allowed to see." },
        { name = "a grain of dust", description = "On the left pan. The scales are tipped by it. A junior clerk stands by with a brush of a single hair, waiting for leave to open the case." },
      },
      actions = {
        { "Ask to be weighed", say "There is a consultation. You are led round the back, to the scales they use for ore. A clerk reads the dial, writes it down, and shows it to another clerk, and for the first time since you came in you hear a dwarf of the Counting House make a sound that is not a click." },
      } },
    { name = "the coin",
      description = "A dwarf penny, in a dish on the counter, for visitors to look at. Square, iron, with a hole in the middle to thread on a cord. One side has a pick. The other side has the weight, the date, and the name of the dwarf who struck it.",
      things = {
        { name = "the hole", description = "Square as well. A string of dwarf pennies hangs dead straight and does not jingle. They think a purse that makes a noise is asking for it." },
      },
      actions = {
        { "Bite it", say "You are stopped, quite gently, by three clerks. It is not that you would hurt it. It is that it would then have to be weighed again." },
      } },
    { name = "the tally of the Longshift",
      description = "A slab on the wall, apart from the rest, under its own lamp. The mine's account. Ore out, wages in, for two thousand years. A thousand years ago the ore stops. The wages go on, every shift, to this one, in a column that has no end drawn under it.",
      things = {
        { name = "the last line of ore", description = "A weight, a date, and a level. And where the next weight should be, the clerk of the day has written one small rune and gone on to the wages. It is the rune on the plank at the bottom of the mine." },
        { name = "the wages column", description = "Forty miners, paid every shift for a thousand years for work suspended pending review. The Chief Teller is asked, now and then, whether this is sound. He says that it balances. He says that the day it stops balancing will be the day somebody tells those men it is over, and that he will not be the clerk who writes that entry." },
      } },
    { name = "the queue at the counter",
      description = "Three dwarves, each with a cord of pennies. They are paying in. Dwarves do not draw out. The savings of Far Enough have been going up since the founding and nobody has decided what they are for.",
      things = {
        { name = "a dwarf with one penny", description = "A child, on tiptoe, paying in her first. The clerk enters it in a new ledger with her name cut on the front, and shows her the line, and she reads it four times. It will be worth a kettle by the time she marries." },
      } },
    { name = "the high desk",
      description = "The Chief Teller's: black stone, on a dais of three steps, so that he can see every abacus in the hall. Behind it, a narrow arch with an iron gate.",
      variants = {
        { when = flag "fe_knows_account",
          description = "The Chief Teller's: black stone, on a dais of three steps. Behind it, the iron gate in the narrow arch stands unlocked, and a stair goes down. He has put a small lamp at the top of it for you. He has entered the lamp." },
      } },
    { name = "the motto",
      description = "Round the top of the hall in runes a foot high. A clerk will translate without looking up: {i}What is counted is kept. What is kept is counted.{/} You ask if that is not the same thing twice. He says that it is, and that it agrees." },
    { name = "a counting beetle",
      icon = "c",
      description = "On the rim of the day book: a small brown beetle that taps its head on the stone, steadily, a little faster than the Forge. The clerks say they learned the time from it. It is fed on the dust from the iron pens and has a line in the accounts.",
      actions = {
        { "Tap back", say "You tap the stone, once, off the beat. The beetle stops. Forty clerks stop. The beetle starts again. So do they. The Chief Teller makes a small mark on a slate that you suspect has your name at the top." },
      } },
  },

  exits = {
    { to = "chisel_street", description = "Out through the one door, into a street that sounds very loose by comparison." },
    { to = "dwarf_strongroom", label = "The strongroom stair",
      description = "Through the iron gate behind the high desk and down, with the Chief Teller's key.",
      requires = flag "fe_knows_account", hidden = true },
  },
}

space {
  id = "dwarf_strongroom",
  region = "far_enough",
  secret = true,
  name = "The Strongroom",
  description = "A vault under the Counting House, behind a door two feet thick. Here it is, then: the hoard of the dwarves under the mountain. Gold in bars, to the ceiling. Chests. Crowns. The lamp finds no end to it. Every bar is numbered, every chest is labelled, and the whole of it is stacked in rows with a ruled aisle between, like a warehouse of very good bricks.",
  palette = { bg = "#100d06", text = "#dcd0b0", dim = "#7a6c48", accent = "#f0cc50", border = "#5a4a20" },
  ambience = {
    shimmer { color = "#f0cc50", strength = 0.3 },
    stars { colors = { "#f0cc50", "#f8e8a0" }, rate = 0.3 },
    dust { glyphs = "·", color = "#5a5030", rate = 0.1, speed = 0.1 },
  },

  on_enter = function(ctx)
    if not ctx:visited("dwarf_strongroom") then
      ctx:say("You stand in the doorway with your mouth open. Every story you were ever told about dwarf gold was true, and had been modest. Then you see the labels, and the aisle numbers, and a small sign that says {i}PLEASE DO NOT LEAN ON THE GOLD{/}.")
    end
  end,

  things = {
    { name = "the pledge shelf",
      key = "pledge shelf",
      icon = "♔",
      description = "By the door, on its own: a stone shelf marked with the rune for {i}held{/}. Things left against a debt. There is one item on it, on a velvet block, under a glass bell that is dusted every morning.",
      variants = {
        { when = item "pawned_crown",
          description = "By the door: a stone shelf marked with the rune for {i}held{/}. A velvet block, a glass bell set down beside it, and a ring in the nap where something sat for six hundred and four years. The strongroom clerk has not put the bell back. He says he will, when he has got used to it." },
      },
      things = {
        { name = "the crown under the bell", visible_if = no(item "pawned_crown"),
          description = "Heavy gold, eight points, a blue stone at the brow. The crown of the old kings of the tall folk. It came down the Low Road on the head of a conqueror, and three days and a very great deal of beer later it stayed behind, in lieu. A ticket is tied to one point with string.",
          actions = {
            { "Take the crown", once = true, give "pawned_crown", fx("flash", "#f0cc50"),
              say "The clerk lifts the bell with both hands. You pick it up. It is heavier than a crown looks in pictures, and warm from the lamp, and the blue stone has a light a long way down in it. {gold}The Pawned Crown.{/} By the terms of the ticket it is yours. By the terms of the crown, you are now rightful king of everything above ground. The clerk has you sign for it, in three places, and then asks, with real anxiety, whether you would like a bag." },
          } },
        { name = "the bar bill", description = "Framed, beside the shelf: a slate from the Second Shift, six hundred and four years old. A column of marks, four deep, the whole length of it, and at the bottom, in the first Stoutbarrow's hand: {i}and his army had the same{/}." },
        { name = "the ticket stub", description = "The Counting House's half, on a nail. {i}One crown. Pledger says he will be back for it Thursday.{/} A dwarf has added, some centuries later, the only joke in the building: {i}which{/}." },
      } },
    { name = "the gold",
      description = "Bars, the size of a square loaf, stamped with a weight and a number, stacked nine high in rows that go back out of the lamplight. You could buy the kingdom above with one aisle. Nobody here can think of anything the kingdom above has that they want.",
      things = {
        { name = "bar number one", description = "At the front of the first row, under glass. Smaller than the rest and not quite square: the first gold out of the mountain, cast in a ladle by the First Foreman. It has a thumbprint in it. Children are brought to see the thumbprint." },
        { name = "a bar, close to", description = "Dull yellow, with a skin of dust. You had expected it to gleam. It gleams where the clerk's sleeve has brushed it, in one stripe, and the stripe is so bright that it looks wet." },
        { name = "the aisle numbers", description = "Chalked on the floor: nine, ten, eleven. You walk as far as forty and the rows are still going. From somewhere ahead comes the small sound of a clerk counting, bar by bar. He counts all of it once a year, and it takes him the year." },
        { name = "the sign", description = "{i}PLEASE DO NOT LEAN ON THE GOLD.{/} Below, smaller: {i}It dents.{/}" },
      },
      actions = {
        { "Lift a bar", say "You get both hands under one and heave. It comes up an inch. You put it down, on your finger, and say the word from the cold plunge. The clerk writes down the number of the bar, the time, and the word." },
        { "Ask what it is all for", say "The clerk stops counting. It is a question he has plainly asked himself, on the long aisles. \"It was in the way,\" he says. \"You dig, and there it is. You can't leave it lying about.\" He looks down the rows. \"So we keep it tidy. Somebody might want it.\"" },
      } },
    { name = "the strongroom clerk",
      key = "strongroom clerk",
      icon = "☺",
      description = "A young dwarf, for the post, with ink to the elbows and a lamp on his helmet. He is the only one who works down here. He is delighted to see you. He would be delighted to see anyone.",
      things = {
        { name = "his tally slate", description = "Today: bars four thousand and one to four thousand and ninety. All present. He says it with the quiet pride of a shepherd." },
        { name = "his lunch", description = "On a bar of gold, on a cloth, so as not to mark it: a square of loaf and a pickled thing. The bar is worth more than Aldmoor. He uses it because it is the right height." },
      },
      actions = {
        { "Ask if anyone has ever stolen anything", say "\"From here?\" He thinks. \"A fellow took a bar home once, in my grandfather's time. To see how it'd look on the mantel.\" And? \"Brought it back. Said it didn't go with anything.\"" },
        { "Ask which is the most valuable thing", say "He does not go to the gold. He takes you to a chest in the corner and opens it with great care. Inside, on straw, is a row of iron weights. \"The master set,\" he says, in a whisper. \"Everything else in the city is only worth what these say it is.\"" },
      } },
    { name = "a chest of gems",
      description = "Oak, iron-bound, open. Sorted. Rubies in one tray, by size. Emeralds in the next. Each stone sits in its own numbered hollow.",
      things = {
        { name = "the diamonds", description = "A tray of them, each as big as a hazelnut, graded and labelled. The label says {i}clear, common{/}. The dwarves use them for drill bits." },
        { name = "an empty hollow", description = "Number forty, in the sapphires. A slate beside it: {i}Out on loan to the Forge. For a lens. Since the second century. Reminders sent.{/}" },
        { name = "a tray of grey pebbles", description = "Kept with the gems, sorted as carefully, labelled {i}interesting{/}. A clerk long ago liked them. Nobody has had the heart to take them out, and they have been counted along with the rest for nine hundred years." },
      },
      actions = {
        { "Run your hand through them", say "You do not get the chance. Each one is in its hollow. You pick up a ruby the size of an egg and look through it at the lamp, and the clerk waits, holding out his palm, with his eye on the empty place." },
      } },
    { name = "a rack of crowns",
      description = "On pegs, in a row, like hats in a hall: seven crowns of the dwarf foremen of old, iron every one, each plainer than the last. The newest is a flat iron band. The dwarves gave up kings some time ago and then, by degrees, gave up the decoration.",
      things = {
        { name = "the oldest crown", description = "Iron, with nine square points and a ruby. It looks uncomfortable. The foreman who wore it is recorded as having been short-tempered, and the two facts are generally linked." },
        { name = "the newest crown", description = "A band of iron, with a rune inside. The rune says {i}this will do{/}. Nobody has worn it. The present Foreman has a helmet, like everyone else, and turns up for work." },
      } },
    { name = "the king's other things",
      description = "A crate, labelled {i}PLEDGE, SUNDRIES{/}. He paid for the second night with what else he had on him.",
      things = {
        { name = "a sword", description = "Long, jewelled, and blunt. The Forge was asked to value it and sent back one word, which the label does not repeat." },
        { name = "a banner", description = "Silk, folded square. A gold beast on a blue field. It was to have been planted on the dwarves' great hall. It was used, in the event, as a tablecloth, and has a ring on it." },
        { name = "one spur", description = "The left. The right is believed to be still at the Second Shift, in something." },
        { name = "a speech", description = "On a roll of the paper stuff, in a fair hand: {i}People of the Deep, you are conquered.{/} It goes on for a page. Across the top, in the same hand, much less fair: {i}do NOT read this out, they are being very nice{/}." },
      } },
    { name = "the master weights",
      description = "The chest in the corner: nine iron weights on straw, plain, dark, handled only with tongs. Against these the gold weights upstairs are checked, and against the gold weights, everything.",
      things = {
        { name = "a tenth place in the straw", description = "A hollow, the same shape, a little smaller than the smallest. Nothing in it. The clerk says there is a tenth, the true one, that these were checked against at the founding, and that it is kept somewhere even he is not told. He looks at the floor when he says it. You look at the floor too. It is a floor." },
      } },
    { name = "the door, from inside",
      description = "Two feet of iron on hinges as thick as your arm. It closes without a sound. On the inside there is a handle, and a bell-pull, and a cupboard with a week of square loaf in it, in case the clerk is ever shut in. He has been, twice. He counted." },
    { name = "the ledger of the hoard",
      description = "A wall of slate, floor to roof, one line to a bar. It gives the weight, the number, the level it came from and the name of the miner. Every ounce in the room can be walked back to a pick and a pair of hands.",
      things = {
        { name = "the last entries", description = "A thousand years old. The level is the lowest. The miners' names are forty you have heard sung about. After them the wall is clean, ruled, and waiting." },
      } },
    { name = "a gold moth",
      icon = "w",
      description = "On bar number one: a small moth the exact yellow of the gold, with a dusting on its wings that is, the clerk swears, the real thing. It eats nothing anybody has seen. It is in the ledger, at the end, under {i}one, living, weight variable{/}.",
      actions = {
        { "Let it land on you", say "It crosses to your sleeve and sits. When it goes, there is a fleck of gold on the cloth the size of a pin's head. The clerk looks at the fleck, and at you, and you watch him wrestle with it, and at last decide, with a small noble sigh, not to enter it." },
      } },
    { name = "the quiet",
      description = "Thick. The gold takes sound in and keeps it. You say {i}hello{/}, to see, and it goes a yard and is deposited." },
  },

  exits = {
    { to = "counting_house", label = "The strongroom stair", description = "Up, to the click of beads, with something heavy to declare." },
  },
}
