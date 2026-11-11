space {
  id = "under_fields",
  region = "far_enough",
  name = "The Under-Fields",
  description = "A cavern of terraces, lit a dim blue-green by what grows on them. This is the farm of Far Enough: mushrooms by the acre in rows ruled with string, and between the rows, slowly, the cattle.",
  palette = { bg = "#08100e", text = "#c4d2c8", dim = "#5a7068", accent = "#6fd0b0", border = "#234a40" },
  ambience = {
    fireflies { glyphs = "·∙", color = "#6fd0b0", rate = 0.3 },
    fog { color = "#0e1f1a", speed = 0.15, strength = 0.4 },
    drip { glyphs = "⠁⠂⠄", color = "#4f9f8a", rate = 0.15 },
  },

  things = {
    { name = "Farmer Marl",
      key = "farmer",
      icon = "☺",
      description = "A dwarf woman in a leather apron, with a saw over her shoulder. She looks at your boots, which are standing on a row.",
      variants = {
        { when = flag "fe_seam_shown",
          description = "A dwarf woman in a leather apron, with a saw over her shoulder. She has stopped looking at your boots. She tells the cattle about you as she passes them, in a low voice, and you gather the report is fair." },
      },
      things = {
        { name = "her saw", description = "A two-handed crosscut, for the big caps. She can drop a Stout Brown so that it falls along its own row and bruises nothing." },
        { name = "her apron pocket", description = "String, a line level, and a twist of paper with spore in it that she will not let you look at with your breath." },
        { name = "her beard", description = "Short, practical, and tied back with garden twine. There is moss in it, cultivated." },
      },
      actions = {
        { "Get off the row", when = no(flag "fe_off_row"), set "fe_off_row",
          say "You get off the row. \"Thank you,\" she says, in the tone of a grudge narrowly not lodged." },
        { "Admire the mushrooms properly", when = no(flag "fe_seam_shown"), set "fe_seam_shown",
          say "You say they are the finest you have ever seen, and you mean it, having seen only small ones and a soup. She thaws by degrees. She shows you the Stout Brown, the Pale Lady, the one you must not sing to. At the far wall she stops, looks at you once more, and moves a hurdle. \"My gran's,\" she says. \"Not for the market. Don't touch, don't breathe on them, don't tell the Forge.\"" },
        { "Ask about the cattle", say "\"Loaf cattle. Blind as bread. Follow the bell.\" Who rings the bell? She looks at you as if you had asked who breathes for them. \"They wear it,\" she says." },
        { "Ask what grows best", say "\"Whatever you leave alone and look at every day,\" she says. \"Same as children.\"" },
      } },
    { name = "the mushroom rows",
      description = "Pale caps the size of shields, labelled by variety on slate. They are harvested with a saw.",
      things = {
        { name = "a glowcap", description = "It gives off the light the cavern is lit by. You have seen a small cousin of this in the Mumblewood, in a ring. The farmer says they got theirs from a tall person, long ago, for a kettle.",
          actions = {
            { "Cup your hands round it", say "Your hands go green and you can see the bones in them. The glowcap brightens a little, as things do when they are attended to." },
          } },
        { name = "a Stout Brown", description = "A cap you could shelter under and a stem like a gatepost. One of these feeds a tier for a week. It is sawn into planks and fried." },
        { name = "a Pale Lady", description = "Tall, thin, white, with a veil. She bruises if looked at sharply. The farmer approaches her from the side." },
        { name = "a label", description = "{i}Row 40. Stout Brown. Do not sing to.{/}",
          things = {
            { name = "the back of the label", description = "{i}Reason: it joins in.{/}" },
          } },
        { name = "a bed of buttons", description = "Ordinary small mushrooms, by the ten thousand, grown for the pasty trade. They come up square if you box them, and the pasty men insist." },
      },
      actions = {
        { "Sing to row forty", say "You get as far as the second {i}down{/}. From the row comes a low hum, a little flat, and forty caps tilt toward you. The farmer has you by the elbow and off the terrace before the third." },
      } },
    { name = "the cave cattle",
      key = "cattle",
      description = "Low, white, eyeless, and shaped like a loaf. They graze the moss off the rock and are led by a bell they wear themselves, each following the one in front, in a circle, contentedly, for life.",
      things = {
        { name = "the bell cow", description = "She is the only one with a bell and so, by the logic of the herd, the leader. She is following the last cow, who is following the rest, who are following her. It has worked for two thousand years." },
        { name = "a calf", description = "The size and shape of a bun. It has not learned the circle yet, and wanders, bumps gently into your shin, and stays there, having found something to follow." },
        { name = "the milk", description = "Thick, faintly blue, and sold by the slice. The cheese made from it is the only yellow thing in Far Enough and is looked on as exotic." },
      },
      actions = {
        { "Pat one", say "It is cool and dense, like bread dough. It leans on you. The whole herd stops, because the bell has, and waits for you to finish." },
        { "Walk in the circle", say "You fall in behind the last cow. After one full round you notice that the calf is behind you, and behind it the bell cow, and that technically you are now leading. You step out, carefully, so as not to found anything." },
      } },
    { name = "the string lines",
      description = "Every row is ruled. There is a dwarf whose trade is to check them, and another to check him.",
      things = {
        { name = "the line checker", description = "He walks the rows with a brass square, sighting along each string. He has never found one out. He says that is exactly what a line that was out would want him to think." },
        { name = "the checker's checker", description = "Twenty paces behind, with a larger square. They have not spoken in thirty years, professionally. They are brothers-in-law and get on very well at home." },
      } },
    { name = "a blind fish pond",
      description = "A tank cut in the floor. White fish with no eyes come to the surface when you lean over, having felt you think about it.",
      things = {
        { name = "the fish", description = "As long as your arm and as pale as a candle. They do not see the green light. They turn toward warmth, toward sound, and toward anybody who is about to drop a crumb." },
        { name = "the pond keeper's stool", description = "By the edge. He feeds them by tapping the water: once for come, twice for wait. They know both, and he says they have a third of their own that means {i}more{/}." },
      },
      actions = {
        { "Think about dropping a crumb", say "The water boils with fish. You have not moved. You think, guiltily, about not dropping one, and they sink away, and one stays, and looks at you with a face that has no eyes in it, reproachfully." },
      } },
    { name = "the terraces",
      description = "Nine, stepping down the cavern wall, each held by a dressed stone kerb and watered by a channel as wide as two fingers. The water runs along the top terrace, drops to the next, and so down. Nobody pumps it. They found the slope and built to it.",
      things = {
        { name = "the top channel", description = "It comes out of the rock through a bronze spout in the shape of a hand. The hand is held as the First Foreman holds his: flat. So much, and no more." },
        { name = "a snail", icon = "@", description = "As big as your fist, with a shell of clear horn through which you can see it thinking. It is on the kerb, crossing from one terrace to the next. It set off, the farmer says, when she was a girl.",
          actions = {
            { "Help it across", say "The farmer's hand closes on your wrist. \"It'll get there,\" she says. \"It wants to have done it.\"" },
          } },
      } },
    { name = "the compost hall",
      description = "An arch in the wall, and beyond it, heaps. Stone dust from the Hall of Grievances, spent malt from the Second Shift, and filings from the Forge, all turned together by dwarves with forks. The mushrooms are fed, you realise, on grudges, beer and iron. It explains the people.",
      things = {
        { name = "a compost turner", description = "He turns each heap once a shift and takes its temperature with his elbow. He will tell you that it is the most important job in the city, and he is not far wrong." },
        { name = "a pile of grudge dust", description = "Grey, fine, and labelled by decade. The farmer says the old stuff grows a better mushroom. Bitterness mellows." },
      } },
    { name = "a moss wall",
      description = "The cavern's far side, hung with a moss as thick as a fleece, which the cattle graze as high as they can reach. Above that line it grows a yard deep, and things live in it.",
      things = {
        { name = "a moss mouse", description = "Green. Truly green, the green of the moss, with pink feet. It looks at you from a hole it has made, with eyes like two drops of ink." },
        { name = "glow worms", description = "A scatter of small cold lights, higher up, each letting down a thread with a bead on it. The dwarf children call them the low stars and are forbidden to poke them and poke them." },
      } },
    { name = "the market barrow",
      description = "Loaded for the morning: sawn planks of Stout Brown, a crate of buttons, a slab of blue milk in a cloth, and a cheese.",
      things = {
        { name = "the cheese", description = "Yellow. Actually yellow. In this light it is the brightest thing for a mile, and it is carried up to the square under a cover so as not to startle people." },
      } },
    { name = "a hurdle against the far wall",
      key = "hurdle",
      description = "Woven of mushroom stalk, dried hard, leaning on the rock. It looks as though it was put down there and forgotten.",
      variants = {
        { when = flag "fe_seam_shown",
          description = "Woven of mushroom stalk, moved aside. Behind it there is a crack in the wall the width of a dwarf, and coming out of the crack a light that is not green: violet, and rose, and a clear water-white." },
      } },
    { name = "the smell",
      description = "Earth, rain and cellar. It is the smell of the Mumblewood after a wet night, a mile underground, with no rain and no wood. You had not known you missed it." },
    { name = "the scarecrow",
      description = "In the middle of the mushroom rows: two crossed staves, an old helmet and a miner's coat stuffed with moss. There are no crows. It is there for the bats, who are not afraid of it and hang from its arms.",
      things = {
        { name = "its helmet", description = "A proper one, with a candle bracket. Farmer Marl's grandfather's. He says the old fellow would have liked to be still on the land, in a manner of speaking." },
        { name = "the bats on its arms", description = "Eleven, in a row, asleep. They keep the gnats down. Marl takes his cap off to them at dusk, when they leave, and counts them back in." },
      },
      actions = {
        { "Straighten its helmet", say "It has slipped over one eye. You set it right. Farmer Marl, three rows off, stops hoeing. \"He always wore it like that,\" he says. You put it back over the eye. It does look more like somebody." },
      } },
    { name = "the weather slate",
      description = "By the barrow: a slate with the day's forecast, as the surface has it, sent down from the shutter at the top. {i}Up there: rain.{/} And beneath, as every day, in Marl's hand: {i}Down here: none. Same as ever. Good growing.{/}" },
  },

  exits = {
    { to = "plumb_square", description = "Up the ramp, into lamplight that now looks very yellow." },
    { to = "crystal_garden", label = "Behind the hurdle",
      description = "Through the crack in the far wall, sideways, toward the coloured light.",
      requires = flag "fe_seam_shown", hidden = true },
  },
}

space {
  id = "crystal_garden",
  region = "far_enough",
  secret = true,
  wonder = true,
  name = "Gran Marl's Garden",
  description = "A cave the size of a chapel, and every inch of it crystal: violet, rose, a clear water-white, growing out of the walls in beds and borders. Somebody has been gardening this. There are stakes, and labels, and a small watering can.",
  palette = { bg = "#0c0a14", text = "#d4cce0", dim = "#6a6080", accent = "#c89cf0", border = "#3a2e5c" },
  ambience = {
    shimmer { colors = { "#c89cf0", "#f0a8c8", "#c8e8f0" }, strength = 0.3 },
    stars { colors = { "#c89cf0", "#f0a8c8", "#e8f4f8" }, rate = 0.35 },
  },

  things = {
    { name = "the crystal beds",
      key = "crystal beds",
      wonder = true,
      icon = "◊",
      description = "{shimmer}They grow.{/} An inch in a lifetime, a dwarf lifetime, if they are watered with the right water and spoken to firmly. Gran Marl planted the rose border as a girl. Her granddaughter may live to see it flower, which is what they call it when one of them splits and shows the colour inside.",
      things = {
        { name = "the violet bed", description = "Amethyst, in ranks, the tallest as high as your knee. This is the oldest planting, eleven generations back, and the points have begun to lean together at the top, as old trees do across a lane." },
        { name = "the rose border", description = "Pink, clear, no longer than a finger. Young. Each one is tied to a stake with a thread, to train it straight." },
        { name = "the white bed", description = "Water-clear, six-sided, sharp. You see the cave through them upside down and very small.",
          things = {
            { name = "a flowering", description = "One crystal in the white bed has opened along its length. Inside it is hollow, and lined with points, and every point has a light in it with no lamp to put it there.",
              actions = {
                { "Look into it", fx "sparkle",
                  say "You put your eye to the split. A room of lights, going back and back, far further than the crystal is long. You are looking at an inch of stone and you cannot see the end of it. You take your eye away before you start to feel like a visitor." },
              } },
          } },
        { name = "a label", description = "{i}Amethyst, early. Planted the year of the Second Counting. Coming on.{/}" },
        { name = "a seedling", description = "A grain of something bright in a thimble of grit, under a bell glass. This year's. It is the only one the farmer has planted herself, and she has not yet told her gran it took." },
      },
      actions = {
        { "Watch one grow", say "You watch a crystal for as long as you can bear. Nothing happens. You are fairly sure that it was nothing happening very slowly, and that this is different." },
      } },
    { name = "the watering can",
      description = "Tin, tiny, with a rose the size of a thimble. The water in it comes from one drip in the roof and tastes, the farmer says, of the colour blue.",
      things = {
        { name = "the drip", description = "One drop every nine seconds, into a stone cup, from a point in the ceiling where a crystal the length of a spear hangs straight down. It is the mountain's own clock again. Here, at last, you can see what it has been making." },
        { name = "the stone cup", description = "Worn into a bowl by the drip. It took a few thousand years. Gran Marl's people found it already made and concluded that somebody was expected." },
      },
      actions = {
        { "Taste the water", say "One drop, off a fingertip. Cold. And then, at the back of the tongue, something you have no word for but {i}blue{/}. The farmer was not being fanciful. You doubt that she knows how." },
      } },
    { name = "a bench",
      description = "Stone, for one. Worn in the middle by eleven generations sitting to watch things grow that cannot be seen to.",
      things = {
        { name = "a cushion", description = "Flat as a slate, and embroidered, in thread that has faded to no colour, with a border of small picks. It is her gran's work. It is the only soft thing in the garden and it has been sat on for four hundred years." },
      },
      actions = {
        { "Sit and watch", say "You sit. The colours move a little when you breathe, since every face is a mirror and you are in all of them. After a while you stop breathing so much. After a longer while you understand why a person would spend a life in here and count it well used." },
      } },
    { name = "the stakes",
      description = "Each young crystal is tied to a stake with thread, to train it straight. The stakes are slivers of slate, the thread is spider silk, and the knots are a gardener's.",
      things = {
        { name = "one let go its own way", description = "It grows out sideways from the bed, across the path, and has a label: {i}Leave her be.{/} You step over it. Everybody has stepped over it, for six hundred years, and there is a dip in the floor on the far side where they land." },
      } },
    { name = "Gran Marl",
      key = "gran",
      icon = "☺",
      description = "In the corner, on a stool, wrapped in a shawl the colour of the rock, so still that you had taken her for part of it. She is the oldest dwarf you have seen: older, by the look of her, than Old Pebble. She has a thread in one hand and a stake in the other, and she is in the middle of a knot.",
      things = {
        { name = "her hands", description = "Knuckled like roots. The knot she is tying is finer than your eye can follow, and she is not looking at it." },
        { name = "her shawl", description = "Knitted of something grey that glints. Cave wool, off the loaf cattle, spun with a little crystal dust. It took her mother a lifetime. It will see out three more." },
      },
      actions = {
        { "Say good day", say "A long pause. \"There aren't any, down here,\" she says. \"Days.\" Another pause, in which you are looked at. \"But it was well meant.\" She finishes the knot." },
        { "Ask how old the garden is", say "\"My gran's gran's gran found the drip,\" she says. \"Everything since is weeding.\" She looks at the violet bed. \"I've seen the back row put on a thumb's width. Not many can say that. You'd need to have been paying attention.\"" },
        { "Ask why it is kept secret", say "\"The Forge'd want it for lenses. The Counting House'd want it counted.\" She sniffs. \"It's not for anything. That's hard to explain to people. So we don't.\"" },
        { "Admire the flowering", when = no(flag "fe_gran_gift"), set "fe_gran_gift",
          say "You tell her about the lights inside the white one, going back and back. She puts the thread down. \"You looked in,\" she says. \"Most say {i}pretty{/} and ask what it's worth.\" She thinks about you for a while, at the speed she thinks about crystals. \"The cushion,\" she says. \"Lift it. I can't be doing with it any more, my eyes have gone long. It ought to be looked through by somebody.\"" },
      } },
    { name = "under the cushion",
      key = "under cushion",
      visible_if = flag "fe_gran_gift",
      description = "A hollow in the stone of the bench, lined with moss, and in it a disc of clear crystal the size of your palm, in a ring of plain iron.",
      variants = {
        { when = item "garden_lens",
          description = "A hollow in the stone of the bench, lined with moss, with the print of a disc in it. Gran Marl has put the cushion back over it and sat down on the cushion, which settles the matter." },
      },
      actions = {
        { "Take the lens", once = true, give "garden_lens", fx "sparkle",
          say "It is cold and has no weight to speak of. You hold it up, and the garden through it is the same garden, and more so: every crystal a little further along, the rose border in flower, the seedling under its glass as tall as your hand. {gold}The Patient Lens.{/} \"Don't look at people with it,\" says Gran Marl. \"Not unless you're ready.\"" },
      } },
    { name = "the path",
      description = "Raked grit, a foot wide, winding between the beds so that nothing need be stepped over but the one. It is raked after every visit. Your boot prints, each as long as a bed, will be a morning's work.",
      actions = {
        { "Apologise for your feet", say "\"They'll rake out,\" says the old woman, from her corner. \"You've stayed on the path. The last tall one didn't know there was one.\" She does not say when that was, and you find you believe it was a very long time ago." },
      } },
    { name = "a crystal moth",
      icon = "w",
      description = "On the tallest amethyst: a moth with wings like two panes of mica, clear, veined, catching every colour in the cave. It lives on the dust that crystals shed as they grow. It does not eat much.",
      actions = {
        { "Hold out a finger", say "It steps on. It weighs nothing at all. Through its wings your finger is violet, then rose, then clear, and you stand like that until Gran Marl says, quite gently, that it has work to do." },
      } },
    { name = "the roof",
      description = "Hung with points, the longest directly over the cup. Between them the rock is dark blue and sparkles, and you are back under the mountain's own idea of a night sky, which it has been working on by itself, in private, since before anybody dug." },
    { name = "the silence",
      description = "Not quite. If you hold still there is a sound at the edge of hearing, very high and very small, as of a great many glass threads being drawn out. The farmer says that is them. Her gran says that is only what people hear who want to." },
    { name = "the seed tray",
      description = "A slate tray of fine sand, with a row of specks in it, each under its own glass thimble. Next century's crystals. Gran Marl started them when she was a girl. They are, she says, coming on.",
      things = {
        { name = "the largest speck", description = "The size of a grain of salt, with one face you can see if you hold your breath. It is forty years old. She is very pleased with it, and tells it so, and says that the others are listening." },
        { name = "the labels", description = "A sliver of slate beside each thimble, with a name and a date to plant out. The dates are all some hundreds of years off. She has written them without a tremor, as you would write next Tuesday." },
      },
      actions = {
        { "Ask who will plant them out", say "\"Somebody,\" says Gran Marl. \"I shan't know them. That's all right. Whoever started these beds didn't know me, and look how well we've got on.\"" },
      } },
    { name = "a snail",
      description = "On the path, with a shell like smoky glass. It eats the lichen off the crystals and leaves them bright. It crosses the garden once a year. Gran Marl sets her calendar by it and says it has never been late." },
  },

  exits = {
    { to = "under_fields", label = "The crack in the wall", description = "Sideways, back to green light and the sound of a bell going round." },
  },
}

space {
  id = "hot_level",
  region = "far_enough",
  name = "The Hot Level",
  description = "The public baths of Far Enough, cut into the rock under the Great Forge, where the heat comes down through the roof. Three pools, a steam room, a cold plunge, and a rule carved over the door: {b}BEARDS TO BE WRUNG BEFORE LEAVING{/}.",
  palette = { bg = "#0f0c0c", text = "#d8cec8", dim = "#786a68", accent = "#e8a890", border = "#4a3230" },
  ambience = {
    steam { glyphs = "∙°˙", color = "#8a7672", rate = 0.8, speed = 0.4 },
    fog { color = "#221816", speed = 0.2, strength = 0.5 },
    drip { glyphs = "⠁⠂⠄", color = "#a08880", rate = 0.2 },
  },

  things = {
    { name = "the bath keeper",
      icon = "☺",
      description = "Dame Odda Rillwater, behind a counter of towels, with her sleeves rolled. She has seen every dwarf in the city without his mail on and is impossible to impress.",
      things = {
        { name = "her towels", description = "Grey, square, folded to the same size, in stacks of nine. A dwarf towel covers a dwarf. She looks at you, and at the towels, and gets out three and a length of string." },
        { name = "her slate", description = "Who is in which pool, and for how long. A dwarf who over-soaks is fetched out. It is in the charter." },
      },
      actions = {
        { "Ask for a bath", when = no(flag "fe_bathed"), set "fe_bathed", fx "wash",
          say "You are issued three towels, a block of grey soap, and a look. The warm pool comes up to your knees. You sit down in it, and it comes up to your chest, and a day and a mile of mountain float off you and are carried away down a drain cut to take exactly that much. Around you, forty dwarves with wet beards politely do not stare. When you get out, the bath keeper inspects you, and wrings your hair, since you have nothing else." },
        { "Ask for a bath", say "\"You've had one,\" she says. \"It's on the slate.\" You say that where you come from a person might have two. She looks at you with new concern for where you come from." },
        { "Ask about the rule over the door", say "\"A wet beard on a stone stair,\" she says. \"Year of the founding. Forty steps, a full kettle, and the Foreman at the bottom.\" She folds a towel. \"He was very good about it. We carved it anyway.\"" },
      } },
    { name = "the warm pool",
      description = "A square basin thirty paces across, waist deep for a dwarf, with a stone bench all round under the water. This is where the city sits at the end of a shift and says nothing, at length.",
      things = {
        { name = "the bathers", description = "Forty or so, in to the chest, beards floating before them on the water like so many rafts. Nobody talks. It is the one place in Far Enough where no work is being done and nobody is checking." },
        { name = "a floating tray", description = "Cork, with a mug on it, lid down, pushed gently from bather to bather round the pool. It belongs to nobody. Whoever empties it sends it to the bar hatch, and it comes back." },
        { name = "the bar hatch", description = "A slot in the wall at water level, with a tap behind it. The Second Shift is next door, and its ninth Stoutbarrow understood where his customers went." },
      } },
    { name = "the hot pool",
      description = "Smaller, deeper, directly under the hottest part of the fire, and the colour of strong tea. Old smiths sit in it up to the chin with their eyes shut. It is said to take the hammer out of the shoulders.",
      things = {
        { name = "an old smith", description = "Only the nose and the top of the beard show. He has been in since the turn of the shift. The slate says he has a quarter of an hour left and the keeper is watching the clock." },
        { name = "the ceiling above it", description = "Bare rock, too hot to touch, glowing a very dull red in one place. That is the underside of the trench. You are sitting, in a manner of speaking, beneath the oldest fire in the world, having a wash." },
      },
      actions = {
        { "Put a toe in", say "You put a toe in. You take the toe out. The old smith opens one eye. \"Tall folk,\" he says, \"are mostly surface,\" and shuts it again. You feel that it was an observation and not an insult." },
      } },
    { name = "the cold plunge",
      description = "A round shaft of black water, straight off the mountain, a yard across and of no known depth. A dwarf goes from the hot pool to this in one stride, shouts one word, and climbs out a better person.",
      things = {
        { name = "the word", description = "It is carved on the rim, so that the young ones know which. It is the only rude word in dwarvish, and this is the only place it may be said." },
        { name = "the rope", description = "Knotted, hanging into the shaft, for getting out. It goes down further than anybody has needed." },
      },
      actions = {
        { "Jump in", fx "shake",
          say "Your whole body turns into one bright, astonished line. You hear a voice shout the word on the rim, with feeling, and it is yours, and you did not know you knew it. Forty dwarves in the warm pool nod. Your accent, you gather, was good." },
      } },
    { name = "the steam room",
      description = "A low door, and behind it a white fog with benches in it. Water runs down a channel onto a slab of rock that is the floor of the Forge, and goes up as steam with a sound like a long sigh.",
      things = {
        { name = "shapes in the steam", description = "Dwarves, you assume. Square, seated, silent. One of them shifts along to make room, and you sit, and nobody ever knows it was you." },
        { name = "the birch switches", description = "A bundle by the door, for beating the back. There are no birches under the mountain. These are imported, at great cost, through the troll, who thinks they are for sweeping." },
      } },
    { name = "the beard room",
      description = "A row of stone basins, each with a mirror of polished steel, a comb on a chain, and a wringing post. This is where the real work of a bath is done.",
      things = {
        { name = "a wringing post", description = "A bronze pillar with a groove worn round it. You wind the beard on, lean back, and walk in a circle. The floor round each post has a path in it." },
        { name = "a dwarf plaiting", description = "He has the beard in nine strands and his tongue between his teeth. A smith's plait. If he gets it wrong he cannot go on shift, and will have to wash it and start again." },
        { name = "the beard oil", description = "A stone jar of something dark that smells of malt, iron and pine. The pine is a luxury. It comes down once a year, a single flask, and is thinned to last." },
        { name = "the mirror", description = "Polished steel, hung at dwarf height. It shows you a belt, a shirt, and the lower part of a chin with no beard on it. A passing bather looks at the reflection and then, quickly, kindly, away." },
      } },
    { name = "the changing shelves",
      description = "Cut into the wall, one per citizen, numbered, each holding a pair of boots, a folded shirt of mail, and a helmet. Nothing is locked. There has been one theft here in the city's history.",
      things = {
        { name = "a shelf with a plate", description = "{i}From this shelf, in the ninth century, a left boot was taken in error and returned the next day with an apology and a pasty.{/} That is the theft. There is a plate for it." },
        { name = "your shelf", description = "Chalked with the rune they have been using for you all day. It is the top one. You are the only person in the city who can reach it, and the keeper is pleased to have found a use for it at last." },
      } },
    { name = "the drain",
      description = "A grating in the floor, and under it, running water. Everything the baths use goes down here, warm, and comes out through the Under-Fields, which is why the mushrooms on the bottom terrace are the size they are." },
    { name = "bath newts",
      icon = "s",
      description = "Pink, the length of a finger, a dozen of them, in the warm overflow channel. They are the pale cousins of the forge newt. They eat what comes off a miner, and are the reason the water is clear.",
      actions = {
        { "Dangle a hand", say "They gather round your fingers and begin, very delicately, to tidy them. It tickles beyond bearing. You hold out for a count of five, which the keeper says is two more than the king." },
      } },
    { name = "the rule over the door",
      description = "{b}BEARDS TO BE WRUNG BEFORE LEAVING{/}. Under it, in chalk, new today: {i}hair also{/}." },
    { name = "the towel dwarf",
      description = "At a hatch by the pools, with towels in a stack squared like bricks. One each. He folds them himself. He can tell from across the hall when one has been used and hung up wrong, and it is the nearest he comes to pain.",
      things = {
        { name = "the stack", description = "Every corner is in line. You could strike a plumb down it. He tells you that this is not vanity: a towel folded true dries true." },
      },
      actions = {
        { "Ask for a towel", say "He looks at the length of you and then at the towels, and something in him gives way. He takes two. He joins them, with a row of stitches as small as rune work, there and then, at the hatch, and hands you the result folded true. \"There's no call for a person to dry in halves,\" he says." },
      } },
    { name = "the beard rack",
      description = "By the hot pool: a row of pegs at chest height. A beard may not go in the water loose. It is plaited, coiled and hung on a peg, with its owner standing by it, up to the neck. From the side, the pool is a row of heads, each tied to the wall." },
  },

  exits = {
    { to = "plumb_square", description = "Up the stair, wrung, into air that feels thin and cool." },
  },
}
