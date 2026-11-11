-- Drift, the town on the ice: its street, a house, and the chandler.

space {
  id = "cs_town",
  region = "cold_shoulder",
  name = "Drift",
  description = "A town of sixty houses, built on the sea. The ice here is forty feet thick and moves, as a whole, about a house length to the west every year, so each winter the easternmost street is taken down, carried through the town on sledges, and put up again at the western end. Nobody in Drift has ever moved house and nobody has had the same neighbours twice. The houses are timber on runners, painted red and yellow against the white, and every chimney is smoking.",
  palette = { bg = "#070b13", text = "#d4dce8", dim = "#5e6c84", accent = "#f0b860", border = "#2c4260" },
  ambience = {
    snow { glyphs = "·∙˙*", color = "#8a96aa", rate = 0.35, speed = 0.3 },
    flicker { color = "#f0b060", strength = 0.08 },
  },
  backdrop = {
    "   ▄█▄      ▄█▄     ▄█▄    ▄█▄ ",
    "  █████    █████   █████  █████",
    "══╧═══╧════╧═══╧═══╧═══╧══╧═══╧",
    "                               ",
  },

  things = {
    { name = "Long Street",
      description = "The one street that runs the length of the town, east to west, packed snow between two rows of houses. It is the only street that is never moved. It simply gets a new end each year and loses an old one, like a very slow piece of string being pulled across a table.",
      things = {
        { name = "the street lamps", description = "Seal oil, in glass, on whalebone posts, lit all day from October to March, since day in those months is a rumour. The lamplighter goes round with a ladder and a covered flame and has a route that changes every winter." },
        { name = "the rope rail", description = "A rope strung post to post down both sides at hand height, the whole length of the street. In a white blow you cannot see your own mittens. You go home along the rope, counting knots. Every child knows the number of its own door." },
        { name = "the sledge ruts", description = "Two polished grooves down the middle. Dogs have the right of way, then sledges, then anybody carrying soup." },
      },
      actions = {
        { "Walk the length of it", say "It takes six minutes. Eleven people say good morning, and four ask whether you have eaten. A woman you have never met stops you, turns up your collar, tucks your muffler in, and walks on. Nobody has done that to you since you were six. You are not sure you care to be so well looked after by people you have not paid." },
      } },
    { name = "the east end",
      description = "Where the town is being taken apart. Three houses have their roofs off and stand open like boxes. A fourth is on a sledge already, whole, with its curtains still up.",
      things = {
        { name = "a house on a sledge", description = "Number 58 as was. Twenty men and forty dogs are leaning into the traces. The stove is still alight inside, since it is bad luck to let a hearth go out for a move. Smoke goes down the street ahead of them from the chimney, and an old woman is sitting in the window with her knitting, going to her new address at a slow walk, bowing to people." },
        { name = "a row of post holes", description = "Where last year's east end stood. Already the snow has filled them level. In a month you would not know." },
        { name = "the crack", description = "A hundred yards past the last house the ice has a seam in it, with black water showing a hand wide. It opens a little every year. That is the edge the town is walking away from. Children are taken out to see it once, and held by the hood." },
      },
      actions = {
        { "Lend a shoulder", say "You get in between two men and push. The house does nothing. Then somebody starts a song, and on the third beat of it the runners break free with a crack and the whole thing goes off down Long Street like a cupboard on a pond. You are given no thanks, and a place at somebody's table, which is how it is done." },
      } },
    { name = "the west end",
      description = "Where the town is being put together. New post holes, cut with a hot iron. A string line. Houses arriving and being lowered off their sledges on to fresh ice that nobody has lived on before.",
      things = {
        { name = "the street namer", description = "An old man with a pot of red paint and a board. Every new street has to be named before the first house is set down. He has named sixty-one. He is standing with the brush loaded, looking at the white ahead of him, and is in no hurry.",
          actions = {
            { "Ask what this one will be called", say "\"Last year was Further Street,\" he says. \"Year before, Patience Row. I had a Hope Street once but it went off the east end before anybody could get used to it.\" He looks at the board. \"I think Mind How You Go.\" He paints it. It will be that for sixty years." } } },
        { name = "the string line", description = "Pegged out dead straight, west. Somebody has to decide each year which way west is, since the ice turns a little as it goes. They do it by the stars, and by where the dogs lie down." },
      } },
    { name = "the meeting post",
      description = "In the middle of Long Street, a whale's jawbone set upright, hung with notices on bits of board.",
      things = {
        { name = "the notices", description = "{i}LOST: one mitten, left, grey. FOUND: one mitten, left, grey, not the same one. WANTED: a right.{/} And: {i}The Moot sits at the dark of the moon. Those with business are to bring fish.{/}" },
        { name = "the temperature board", description = "A slate with a hook. On the hook hangs a wet sock. Beside it, a key: {i}Stiff in 10 breaths: mild. In 5: fresh. At once: stay in.{/} The sock is like a plank." },
        { name = "the list of streets", description = "Sixty-one names in red, with a line through the ones that have gone off the east end. Twenty-two lines. A town that remembers streets it no longer has, and knows where each one is now, out there under the snow, in the order they went." },
      } },
    { name = "the post office",
      description = "A red hut with a horn over the door. The postman is Mr Orm Tally. The mail comes once a month and he delivers one letter a day, to make it last.",
      things = {
        { name = "the pigeonholes", description = "By street, then by how far the street has travelled. He alone understands it. There was a deputy, once, who filed by house number. He was sent back south for his own sake." },
        { name = "the newspapers", description = "A year of the {i}Intelligencer{/} in a stack, to be put out one each morning, in order. Today's is eleven months old. The town is very anxious about a by-election that was settled last spring." },
        { name = "a dead-letter shelf", description = "Three letters. One for a street that went off the east end. One for {i}The Bear, if literate{/}. One with no stamp, in pencil, for {i}The Tide Office, Saltwick{/}, sender not given, held for a penny." },
      },
      actions = {
        { "Show him the mail tally", when = item "cs_mail_token", say "He looks at the notches and puts the kettle on without a word. You get a mug of something black and sweet and a seat by the sorting stove. \"Nine bags,\" he says, respectful. You do not correct him." },
      } },
    { name = "the people",
      description = "Round, slow-moving bundles of fur and wool with a face somewhere near the top. You learn to know them by their hats.",
      things = {
        { name = "a woman with a creel", description = "Fish, frozen in the shapes they were caught in. She is selling them by the curve." },
        { name = "children on a sledge", description = "Five on a sledge meant for two, going down Long Street behind one dog who is clearly doing it for his own reasons. They all shout good morning to you, separately, in order of size." },
        { name = "a man carrying a door", description = "His own. He takes it with him when he calls on people, in case of a blow, so that he can be shut in wherever he happens to be." },
        { name = "the lamplighter", description = "Bess Wick, with a ladder and a pan of coals. She lights sixty lamps at what would be dusk if there had been a day. She says the dark up here is not unfriendly. It just likes to be asked in properly." },
      } },
    { name = "the dogs",
      icon = "d",
      description = "Everywhere: thick, pale, curled up in the snow with their tails over their noses, in drifts of six and eight. They are not pets. They are colleagues.",
      actions = {
        { "Pat one", say "It opens one blue eye and one brown eye and looks at your hand, and then at you, as a sergeant looks at a recruit who has offered to shake. Then it sighs, and permits it, briefly." },
      } },
    { name = "the town well",
      description = "A hole through forty feet of ice, lined with barrel staves, kept open with a hot iron ball on a chain. They do not draw water from it. They draw fish. The water they melt.",
      things = {
        { name = "the iron ball", description = "Heated in a brazier and lowered twice a day. It goes down hissing. They call it the Sun, and it is the only one they see for some months." },
      },
      actions = {
        { "Look down it", say "Blue walls going down, bluer and bluer, to a black disc at the bottom the size of a coin, which is the sea. The town is standing on that. You step back from the edge with great care, and then it occurs to you that there is nowhere to step back to." },
      } },
    { name = "the ice underfoot",
      description = "You scrape the snow aside with your boot. Under it the ice is grey-green and clear for a hand's depth and then cloudy, with white cracks in it like the veins in marble.",
      actions = {
        { "Listen to it", say "You kneel and put your ear down. A long way under you something creaks, slowly, like a ship turning at anchor. Then a ping, high and far off, that runs away under the town from one end to the other. \"That's her stretching,\" says a passing child, kindly. \"She does that.\"" },
      } },
    { name = "the bell on a sledge",
      description = "The town bell, on its own runners, parked wherever the middle of the town is this year. It is rung in a blow, every minute, all night, for anyone out on the ice to walk towards.",
      actions = {
        { "Ring it", say "One stroke. It is a flat, loud, unlovely bell and you can hear it go out over the ice for miles. Every door on Long Street opens. Every head looks at you, counts you, sees that you are not lost, and goes in again. Nobody is cross. They would sooner come out for nothing." },
      } },
    { name = "smoke",
      description = "Sixty chimneys, and no wind. The smoke goes straight up in sixty grey columns and spreads out flat at the same height, as if the town had a ceiling." },
  },

  exits = {
    { to = "cs_station", label = "The sledge road to the Station", description = "West along the poles to Blowhard and the bay." },
    { to = "cs_inn", description = "The big yellow house in the middle of Long Street with a lamp at every window." },
    { to = "cs_chandler", description = "A red shop with a ship's lantern over the door and everything in the world hanging outside it, stiff." },
    { to = "cs_house", description = "Number 14, Patience Row, lately of the east end, with a blue door." },
    { to = "cs_bath_house", description = "The long low building that is all steam, at the end of a path of duckboards." },
    { to = "cs_fishing_camp", label = "Out to the fishing camp", description = "North on to the open ice, where the little huts stand about like dice." },
    { to = "cs_frozen_falls", label = "The shore, and the Hanging Water", description = "South to where the ice meets land, and a cliff with something white standing against it." },
    { to = "cs_last_hut", label = "The Last Hut", description = "North-east by a line of flags, a long cold way, to the Survey's hut at the end of the map." },
  },
}

space {
  id = "cs_house",
  region = "cold_shoulder",
  name = "Number 14, Patience Row",
  description = "One room, twelve feet by sixteen, on larch runners, with a stove in the middle and everything else arranged by how badly it minds the cold. It is the house of Mother Skerry, who is ninety and was born in it when it stood at the west end. It has since crossed the whole town with her inside, and went back to the west on a sledge last winter to start again.",
  palette = { bg = "#120d0a", text = "#dcd0c0", dim = "#7a6a5a", accent = "#f0a850", border = "#4a3828" },
  ambience = { flicker { color = "#ffb060", strength = 0.2 }, embers { glyphs = "·˙", color = "#e08040", rate = 0.1 } },

  things = {
    { name = "Mother Skerry",
      icon = "☺",
      description = "In a chair by the stove, under four shawls, knitting something long. She has outlived three husbands, two stoves and nineteen streets.",
      things = {
        { name = "her knitting", description = "A muffler. It goes from her needles into a basket, out of the basket, across the floor, and out through a hole in the wall bored for it. She has been at it since she was a girl. The far end is somewhere out on the ice to the east, under the snow, where the house used to be. She will not cast off. \"When I stop,\" she says, \"I'll have stopped.\"" },
        { name = "her spectacles", description = "Two discs of clear ice in a wire frame, ground by the lens man at the Last Hut. She keeps a spare pair on the window sill outside. In summer she manages without." },
      },
      actions = {
        { "Tell her about the goat", say "\"A goat?\" she says. \"I never ordered a goat.\" You say it has come all the way from Muckle, in a coat. She thinks. \"Four years back,\" she says, slowly. \"I'd a fancy for milk in my tea.\" She looks at the stove for a while. \"Well. Bring her in. She'll have been wondering.\"" },
        { "Ask how she likes moving", say "\"I've never moved in my life,\" she says. \"I sit here. They move the town round me. Last winter they put me at the front.\" She clicks her needles. \"I can see where we're going now. There's nothing there. It's very restful.\"" },
      } },
    { name = "the stove",
      icon = "♨",
      description = "Cast iron, black, on a slab of slate so that it does not melt its way through the floor and the ice and go to the bottom of the sea, which happened to the first one.",
      things = {
        { name = "the hearth fire", description = "It was lit from her mother's, which was lit from her mother's. It has crossed the town on a sledge, alight. In Drift a cold stove is how you say that somebody has died." },
        { name = "a pot of fish", description = "Always fish. Today with an onion in it, which makes it an occasion." },
        { name = "socks on a string", description = "Eleven, steaming. None of them is hers. Any passer-by with wet feet may come in and hang a sock. It is not thought worth mentioning." },
      },
      actions = {
        { "Warm your hands", say "You hold them out. The pain as they come back is remarkable. Mother Skerry watches with interest. \"That's them forgiving you,\" she says." },
      } },
    { name = "the box bed",
      description = "A cupboard in the wall with a sliding door and a mattress of eider down a yard deep. You get in, shut the door, and are warm by your own breath in a quarter of an hour.",
      things = {
        { name = "the quilt", description = "Patchwork. Each patch is from the coat of somebody who lived on a street that is gone. She can name them all by touch." },
        { name = "marks on the bed door", description = "Heights of children, cut with a knife, with initials. The lowest is hers. The highest is a grandson, who is on the {i}Regardless{/} and ducks to come in." },
      } },
    { name = "the window",
      description = "Two panes thick, with moss between. The inner glass has frost on it in ferns, an inch deep.",
      things = {
        { name = "the frost ferns", description = "They grow from the bottom corner each night and are different every morning. She reads them, like tea leaves, and says that today's are {i}company, and a goat{/}. You are impressed until you remember that she can see the street." },
        { name = "a peephole", description = "A penny, warmed on the stove and pressed against the frost, leaves a round hole to look out of. There is a penny on the sill for it. It is the only use for money in the house." },
      },
      actions = {
        { "Look out through the peephole", say "Nothing. A white field going west, flat, without a mark, into a white sky. No street, no neighbour, no post. She is the first house in the town now. Everything Drift is going to be is behind her, and in front is this." },
      } },
    { name = "the runners",
      description = "You can see the tops of them along the foot of each wall: two larch beams, shod with whalebone, on which the house stands and travels. A trapdoor in the floor lets you grease them from inside.",
      actions = {
        { "Lift the trapdoor", say "Blue light comes up through the ice. Down there, frozen in at arm's length, is a mitten, a spoon and a clay pipe, dropped through by some other house on some other street when this ice was further east. She looks over your shoulder. \"That's Aggie Flett's pipe,\" she says. \"She'll be glad to know.\"" },
      } },
    { name = "the wall of doors",
      description = "The north wall is hung, floor to ceiling, with house numbers: tin plates, painted. 61, 47, 33, 20, 9, 58, 14. Every address the house has had.",
      things = {
        { name = "number 9", description = "From when it was nearly at the east end and you could hear the crack at night. She speaks of it as people speak of having lived, once, in a rough part of a city." },
      } },
    { name = "the larder",
      description = "A box on the outside of the wall with a hatch on the inside. Up here it is the larder that is cold by nature and the trick is the rest of the house.",
      things = {
        { name = "a frozen ham", description = "Sent up by a niece in Aldmoor. It rings when you tap it. She saws a slice off on Sundays." },
        { name = "a jar of bilberry jam", description = "From the one fortnight of summer, on the one hill. There are six empty jars beside it, washed and kept. Nothing is thrown away where everything came by sea." },
        { name = "a block of milk", description = "Frozen, with a string through it. She has had it four years, against the goat." },
      } },
    { name = "the clock",
      description = "A wag-at-the-wall with a painted face, from Tickover, with one hand. In a country where the sun does not come up for three months, they found that minutes gave themselves airs." },
    { name = "the shelf of visitors",
      description = "Over the door, a row of small things left by everybody who has ever come in from a blow: a button, a foreign coin, a pressed flower, a brass pen nib.",
      things = {
        { name = "the pen nib", description = "Office issue, fine point, with a little ink dried on it. \"A clerk,\" she says. \"Last winter. Sat where you are. Very worried about something being signed for. I gave him fish and he went on north with a stool on his back.\" She shrugs her shawls. \"He'd nice manners. He folded the blanket.\"" },
      },
      actions = {
        { "Leave something", say "You go through your pockets. You put a Greenhollow bootlace on the shelf, between the button and the coin. She nods. You have been in from a blow. It is on record." },
      } },
    { name = "the door",
      description = "Blue, and it opens inward, like every door in Drift, so that you are not shut in by a drift in the night. There is a shovel hung on the inside of it. That is the difference between the north and everywhere else: the shovel is on the inside." },
  },

  exits = {
    { to = "cs_town", label = "Out to Long Street", description = "Through the blue door, with your collar up." },
  },
}

space {
  id = "cs_chandler",
  region = "cold_shoulder",
  name = "Gudrun Tallow, Chandler",
  description = "A shop the shape of a ship's hold, with a counter at one end and a stove at the other and, between them, everything anybody could need in a place where the next shop is four hundred miles south. It is all hanging from the roof. You go about in it stooping, among boots, lanterns, rope, snowshoes, kettles and stockfish, and they turn slowly as you pass, like things in a wardrobe that have been talking about you.",
  palette = { bg = "#0e0c0a", text = "#d8ccb8", dim = "#786c5c", accent = "#e8b050", border = "#483c2c" },
  ambience = { flicker { color = "#f0a850", strength = 0.15 }, dust { glyphs = "·˙", color = "#70644c", rate = 0.2, speed = 0.3 } },

  things = {
    { name = "the chandler",
      icon = "☺",
      description = "Gudrun Tallow, six feet tall and nearly as far round in her indoor furs. She took the shop from her aunt and the aunt had it from a shipwreck.",
      things = {
        { name = "her ledger", description = "Nobody pays in money. The ledger says who owes whom a day's work, a string of fish, a mended net. She squares it at midsummer and it always comes out even, which she puts down to people being better than they think." },
        { name = "her measuring look", description = "She has looked at you once and knows your boot size, your hat size, and that your coat is a southern coat that somebody sold you with a straight face." },
      },
      actions = {
        { "Ask what you need", say "\"For up here?\" She walks round you. \"All of it. That coat's a letter of introduction to the frost.\" She takes down a fur hood, a pair of mittens on a string and something for your nose, and puts them on you as if dressing a child. \"Bring them back,\" she says. \"Or don't, and I'll know which way to send the dogs.\"" },
        { "Ask about the clerk", say "\"The Tide man? Thin, cold hands, ink on the cuff. He traded me his sleeve guards for a pair of snowshoes.\" She points up. \"Asked if I'd a chart of where the water goes when it's out. I said if I had I'd be rich. He said that was rather his view.\"" },
      } },
    { name = "the ceiling",
      description = "The stock. A man could be lost in it.",
      things = {
        { name = "snowshoes", description = "Bent ash and gut, like the bats for a game nobody has taught you. One pair has a ticket: {i}Lent. H.P. Not back.{/}" },
        { name = "a pair of sleeve guards", description = "Black cotton, elasticated, office issue, with a fine frost of dried ink on the right one. They hang between a seal lance and a kettle, and are the only thing in the shop that has ever been indoors on purpose." },
        { name = "sealskin boots", description = "Sewn with sinew, fur inside, the seams chewed soft. The chewing is done by old women with good teeth and is paid at a higher rate than the sewing." },
        { name = "lanterns", description = "Thirty, every pattern, and one that has been alight since the shop opened, as a sample." },
        { name = "stockfish", description = "Cod, split and dried on racks until they are the colour and hardness of a plank. They are sold by the fathom. You can eat one, after a week's soaking, or shingle a roof with it." },
        { name = "a kayak", description = "Skin over bone, as light as a basket, hung by the bow. There is a note pinned inside the cockpit: {i}Tip yourself out now, in the shop, and see how you like it.{/}" },
      },
      actions = {
        { "Push your way through", say "You go into the stock with your arms up. Boots knock your ears. A kettle hits you, apologetically, in the mouth. You come out at the far end beside the stove, wearing a coil of rope you did not have before, and Gudrun puts it on the slate without looking round." },
      } },
    { name = "the counter",
      description = "A plank on two flour barrels, scrubbed white, with a brass yard let into the edge.",
      things = {
        { name = "the jar of sweets", description = "Boiled, striped, stuck together into one sweet the shape of the jar. She breaks pieces off it with a hammer kept for the purpose." ,
          actions = { { "Ask for one", say "She hits the jar. A piece the size of a walnut comes off and is put in your mitten. It is peppermint. It is so cold that it burns, and then so strong that it burns again, the other way." } } },
        { name = "the scales", description = "Brass pans, and for weights a set of round grey stones, each marked with a pound value in red. They are honest. The stones were chosen by the whole town, in public, on the ice." },
        { name = "a box of needles", description = "Steel, from the south, each one stuck through a card. A needle is worth a fox skin. A woman's needle case goes to her daughter by will." },
        { name = "the tobacco", description = "A black rope of it, tarred, sold by the inch. The inch is measured against Gudrun's thumb. Men have been known to look at her hands before deciding to smoke." },
      } },
    { name = "the candle bench",
      description = "By the stove: a trough of melted tallow and a wheel hung with wicks. She is, after all, a chandler.",
      things = {
        candle { description = "Seal tallow, dipped forty times. It burns yellow and smells a little of the sea, and will last a night that is three months long if you are careful with it." },
        { name = "the dipping wheel", description = "Forty wicks on a hoop. Each goes down into the tallow and comes up a coat thicker, turn after turn. It is the slowest way there is of making anything, and she does it while serving." },
        { name = "the great candle", description = "As thick as your leg and as tall as a child, with rings marked on it. It is the town's winter clock. Lit at the last sunset, it burns down a ring a day, and when it is a stub the sun comes back. She has never been out by more than an afternoon." },
      },
      actions = {
        { "Dip a candle", say "She gives you a wick. You dip. It comes up with a skin of tallow you can hardly see. You dip again. \"Thirty-eight more,\" she says. You have never before made anything that took patience, and you find that around the twentieth dip the patience arrives by itself." },
      } },
    { name = "the rope walk",
      description = "Down the length of the shop, at knee height, a rope is being laid: three strands coming off three hooks and twisting into one. A boy walks backwards with the end.",
      things = {
        { name = "the boy", description = "Gudrun's nephew, Pip Tallow. He has walked backwards for so many miles in this shop that he bumps into things when he goes forwards." },
      } },
    { name = "the map nailed to the wall",
      description = "A printed chart of the kingdom, the ordinary one, from a shop in Aldmoor. The Cold Shoulder is a strip along the top with a decorative whale. Somebody has pencilled a small arrow in the top margin, pointing off the sheet, and written beside it {i}us{/}." },
    { name = "the lost and found",
      description = "A barrel by the door, full of single mittens. They are hung out in pairs, whatever the colours, on the principle that two lefts are warmer than one.",
      actions = {
        { "Rummage", say "Grey, red, grey, a child's with a bell on it, a seaman's with no thumb. At the bottom, a thin black office glove, right hand, with a darn in the first finger done in very small neat stitches. You put it back on top, where it will be seen." },
      } },
    { name = "the weather glass",
      description = "A tube of spirit on a board, with a scale. The scale stops well above where the spirit is. Below the last mark someone has inked in three more: {i}Hm. Well. Stay in.{/}" },
    { name = "the stove",
      icon = "♨",
      description = "With a ring of chairs round it and two old men in them who are not customers. They have been not buying anything here since they were boys.",
      actions = {
        { "Sit with them", say "A chair is hooked out for you with a foot. Nothing is said for some time. Then one of them remarks that it is not so cold as it was in the Year of the Two Winters, and the other says that it is colder, and they look to you. You say it seems cold enough. They nod. You have got on well." },
      } },
  },

  exits = {
    { to = "cs_town", label = "Out to Long Street", description = "Under the ship's lantern and into the snow." },
  },
}
