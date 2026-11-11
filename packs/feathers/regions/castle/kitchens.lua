space {
  id = "castle_kitchens",
  region = "castle",
  name = "The Kitchens",
  description = "A vault of fire and copper where forty people cook for a court that eats standing up. It is hot and loud, and it is the one room in the castle where things are decided and then happen.",
  palette = { bg = "#14100c", text = "#d8ccba", dim = "#7c6e5c", accent = "#e89a50", border = "#4e3a26" },
  ambience = {
    embers { glyphs = "∙·˙", color = "#e89a50", rate = 0.2 },
    steam { glyphs = "∙°˙", color = "#70685e", rate = 0.4 },
  },

  things = {
    { name = "Mistress Dobbin",
      key = "cook",
      description = "The cook, with a ladle that she carries as other people carry a rank. She has cooked for three kings and has an opinion of each. It is the same opinion.",
      things = {
        { name = "her ladle", description = "Iron, a yard long, the bowl worn thin on one side. It has stirred, tasted, pointed, and on one occasion knighted. The scullion concerned still answers to Sir." },
        { name = "her apron", description = "White at six in the morning. By now it is a record of the day: gravy, flour, a green smear at the hip the exact colour of marrow." },
        { name = "her keys", description = "Pantry, larder, spice cupboard, cellar. They hang at her waist and are the only keys in the castle that open what they say they open." },
      },
      actions = {
        { "Offer to help", say "She gives you an onion and a knife. A minute later she takes back the knife. A minute after that she takes back the onion. \"Stand there,\" she says, and points to a spot from which nothing can be reached." },
        { "Ask about the marrows", when = no(flag "knows_garden"), set "knows_garden",
          say "\"Every morning,\" she says. \"On the step. Washed. No note.\" She jerks the ladle at the back wall. \"Through there, behind the flour. Forty years I've cooked here and I never asked who digs that garden. Because then I'd know, and I'd have to curtsey to the soup.\"" },
        { "Ask about the pies", when = no(visited "spoon_tunnel"),
          say "\"Six go in the pantry at night. Five come out in the morning. Twenty years.\" Her eyes narrow. \"And it's never the best one. That's what gets me. It's a polite thief.\"" },
        { "Ask about the pies", when = visited "spoon_tunnel",
          say "You open your mouth. You think of Old Pelham, and his napkin, and the mat. \"Mice,\" you say. She looks at you for a long moment. \"Mice,\" she agrees, and puts a seventh pie in the oven." },
        { "Ask about the three kings", say "\"The old one's father sent everything back. The old one ate it and said nothing. This one,\" and the ladle goes toward the back wall and stops, \"this one knows what a vegetable is. I'll say that. I'll say no more than that.\"" },
      } },
    { name = "the marrows",
      description = "A heap of them by the back wall, green and striped and enormous. There is marrow soup today. There was marrow soup yesterday. The court has stopped asking.",
      things = {
        { name = "the top marrow", description = "Still wet from the pump, and tied round the middle with a twist of garden twine in a bow. It is the only one with a bow. That one, the kitchen knows, is for Cook." },
        { name = "the bill of fare",
          description = "Chalked on a slate over the heap.",
          things = {
            { name = "today", description = "{i}Marrow soup. Marrow, stuffed. Marrow, plain. A pudding.{/}" },
            { name = "the pudding", description = "Small letters, lower down: {i}(marrow){/}." },
          } },
      } },
    { name = "the great hearth",
      description = "You could roast an ox in it, and they are.",
      things = {
        { name = "the turnspit dog",
          description = "A small brown dog in a wheel, trotting, turning the ox. He has the look of a professional. At six a bell goes, he steps out, another dog steps in, and they nod.",
          things = {
            { name = "the wheel", description = "Oak, on an axle, greased with dripping. There is a small brass plate on the rim: {i}Shift ends at the bell. No barking in the wheel.{/}" },
          },
          actions = {
            { "Pet him", say "He allows it without breaking stride. He is at work." },
          } },
        { name = "the ox", description = "Whole, on a spit the thickness of your wrist, going round over a bed of coals. It has been basted every quarter hour since before dawn, by a boy with a mop." },
        { name = "the basting boy", description = "Eleven years old, scarlet in the face, with a ladle of fat on a pole. He has no eyebrows. They come back in the summer, when the court is away, and he is rather proud of them.",
          actions = {
            { "Ask if he likes the work", say "\"It's warm,\" he says. Then, with feeling: \"It's warm.\"" },
          } },
        { name = "the dripping pan", description = "Iron, six feet long, under the spit. What collects in it is the single most valuable substance in the castle, and the scullions fight over the bread." },
        { name = "the off-duty dog", description = "On a folded sack by the wall, legs twitching. He is asleep and still trotting." },
      } },
    { name = "the bread ovens",
      description = "Three brick mouths in the side wall, each with an iron door. Four hundred loaves a day come out of them.",
      things = {
        { name = "the baker",
          description = "Hob Crust, white to the elbows, who starts at midnight and has not seen the sun on a weekday since he was apprenticed. He is the cheerfullest man in the castle. He says it is the hours: he has never been awake for any news.",
          actions = {
            { "Ask for a loaf", say "He tears one in half and gives you the bigger piece. It is hot, and the crust sings. You are not on any list. He has never asked to see a list." },
          } },
        { name = "the peel", description = "A wooden paddle on a ten foot handle, for reaching the back of the oven. Scorched black at the blade and white at the grip." },
        { name = "the first oven",
          description = "The oldest, with a keystone carved with a wheatsheaf.",
          things = {
            { name = "the sourdough crock", description = "On a shelf above the oven door, under a cloth. The leaven in it was started in the reign of the first king and has been fed every day since. It is, by a long way, the oldest living member of the household." },
          } },
        { name = "the cooling racks", description = "Loaves in ranks, ticking as they cool. A small hand comes up from under the table, takes one, and goes down again. The baker counts in thirteens for that reason." },
      } },
    { name = "the stockpot",
      description = "A copper the size of a bath, on its own fire, that has not been emptied within memory. Bones go in. Stock comes out. It is the foundation of everything and nobody is certain what is at the bottom.",
      things = {
        { name = "the surface", description = "A slow brown simmer. Now and then something large rolls over, shows a knuckle, and goes down." },
        { name = "the ladder", description = "Four rungs, hooked to the rim, for the boy who skims it." },
      },
      actions = {
        { "Taste the stock", say "Deep, brown, and going back a long way. You taste beef, and under it older beef, and under that something that might be the last reign. It is very good." },
      } },
    { name = "the sauce cook",
      description = "A narrow man with a moustache, a foreigner, working alone at a small charcoal stove with eleven small pans. He was hired at great expense to bring the cuisine of his country to the royal table. Every dish he sends up is returned with a request for gravy.",
      things = {
        { name = "the eleven pans", description = "Each with a spoonful of something the colour of amber or cream, kept at the point of perfection. He makes them every day. He eats them himself, at night, standing, with his eyes shut." },
      },
      actions = {
        { "Taste a sauce", say "He watches your face as a man watches a door for a doctor. It is the best thing you have ever put in your mouth, and you say so. He turns away quickly, and does something with a cloth at his eyes, and gives you the pan." },
      } },
    { name = "the pastry table",
      description = "A slab of cold marble by the north door, floured, with a woman at it making pie lids.",
      things = {
        { name = "the pastry cook", description = "Mag Butterwick, with forearms like hams and fingers as light as a lacemaker's. She crimps the edge of a pie between finger and thumb, sixty crimps to a lid, without looking." },
        { name = "the pie lids", description = "Each has a different leaf cut into it, so that the pies can be told apart. Oak for beef, bay for game. One has a small spoon, and she puts that one at the end of the shelf, and does not say for whom." },
        { name = "the rolling pin", description = "Boxwood, a yard long, worn waisted by forty years of the same two hands." },
      } },
    { name = "the pantry",
      description = "A cold room off the kitchen, shelved to the roof, with a row of pies cooling under cloths.",
      things = {
        { name = "the pies", description = "Six. Counted nightly, in ink." },
        { name = "the pie tally", description = "A slate on the pantry door. {i}In: 6. Out: 5.{/} Every line the same, for twenty years of lines. The slate has been turned over twice and replaced once." },
        { name = "the cheeses", description = "Wheels of it on the top shelf, waxed, each with a date. The oldest has a ribbon on it and is being kept for the King's return. It is audible." },
        { name = "the jam shelf",
          description = "Rows of jars with paper lids.",
          things = {
            { name = "a jar of marrow jam", description = "{i}Marrow and ginger.{/} There are sixty jars of it. Mistress Dobbin says that it is a perfectly good jam and that nobody is to look at her like that." },
          } },
        { name = "a loose flagstone",
          visible_if = visited "spoon_tunnel",
          description = "In the corner, under the bottom shelf. From this side it fits so well that nobody has seen it in twenty years. There are a few crumbs on it." },
      } },
    { name = "the spice cupboard",
      description = "A small iron door in the wall, with three locks. Pepper, cloves, a nutmeg. Each is worth more by weight than anything in the Treasury, which is not saying a great deal.",
      things = {
        { name = "the nutmeg", description = "One. It is grated on feast days, six strokes, and weighed before and after. It has lasted two reigns and is the size of a pea." },
      } },
    { name = "the scullery",
      description = "Through an arch, in the steam: two stone sinks, a mountain of pans, and the people who wash them.",
      things = {
        { name = "the scullions", description = "Six children with their sleeves pinned up, working along a row of pots with sand and rags. They sing as they go. It is the forbidden song from the Oubliette. Nobody has ever managed to forbid it down here.",
          actions = {
            { "Listen to the song", say "It has three notes and goes round. You have it by the second time. You will have it for a week. The scullions grin at you: they know." },
          } },
        { name = "the great cauldron", description = "On its side in the corner, being scoured from the inside by the smallest scullion, who has climbed in. Her singing comes out of it enlarged." },
        { name = "the pump", description = "Lead, with a long handle. This is the spring that used to fill the moat. It was turned in here two reigns ago by a cook who was tired of carrying water, and no king has had the nerve to turn it back." },
        { name = "Sir", description = "A scullion of twelve or so, on a box, scrubbing a roasting tin. He was tapped on both shoulders with the ladle, for catching a falling tureen. There is no doubt in the kitchen that it counts." },
      } },
    { name = "the pot rack",
      description = "Copper pans on hooks along a beam, in order of size, from one you could bath in to one for a single egg. They are polished with lemon and salt until the fire shows in every one." },
    { name = "the serving hatch",
      description = "A slot in the wall toward the Hall, with a shelf. Dishes go out. An hour later the same dishes come back.",
      things = {
        { name = "a returned plate", description = "Gold. Marrow, stuffed, with one spoonful gone from the side. That will be the taster. Mistress Dobbin looks at it, then at the back wall, and scrapes it into the dogs' bowl without a word." },
        { name = "a footman waiting", description = "He stands at the hatch with a tray, in the heat, not sweating. They are trained not to. It comes out later, all at once, in the buttery." },
      } },
    { name = "the kitchen cat",
      icon = "c",
      description = "Black, enormous, on the warm bricks over the bread oven. She has not caught a mouse in years. She is on the strength as a deterrent.",
      actions = {
        { "Offer her your hand", say "She smells it. Loaf, stock, sauce: she reads off everything you have been given. She looks at you with new respect and makes room on the bricks." },
      } },
    { name = "the back step",
      description = "A stone step at a small door in the back wall, worn in the middle. It is wet. Something was set down on it this morning, washed, and taken in.",
    },
    barrel { name = "a flour barrel", description = "One of a dozen against the back wall. The floor in front of them is swept. The floor behind them is worn, in a line, by one pair of boots." },

    { name = "a row of jellies",
      description = "On a marble slab by the window, setting: six of them, turned out of copper moulds in the shape of the castle, each with all three towers.",
      things = {
        { name = "the sixth jelly", description = "This one came out with only two towers. It has been set aside, labelled {i}STAFF{/}, and has a spoon in it already." },
      },
      actions = {
        { "Poke one", say "It shudders for a long time, towers and all. Across the kitchen Mistress Dobbin, with her back to you, says \"I felt that.\"" },
      } },
    { name = "the sink drain",
      description = "In the scullery floor, a lead pipe as wide as your arm, going down. More royal silver has left the castle by this pipe than by any thief.",
      things = {
        { name = "a chalk tally on the wall above it",
          description = "{i}SPOONS LOST THIS REIGN: 214. FORKS: 61. RINGS (SCULLERY MAID'S, GOT ENGAGED, TOOK IT OFF TO WASH): 1.{/} The last is underlined, and somebody has drawn a small sad face." },
        { name = "a string going down the pipe",
          description = "Tied to the tap, taut, with a bent pin on the end, somewhere below. The scullery maid fishes for her ring on her afternoon off. She has caught, so far, a fork and a very small polite note.",
          actions = {
            { "Ask about the note", say "She has it in her apron. Grey card, the size of a stamp. {i}Pardon. Your ring is safe and is looking at the door. Kindly come when convenient. Bring the ticket.{/} \"What ticket?\" she says. \"Nobody gave me a ticket.\" You tell her to ask at an inn. She gives you a look." },
          } },
      } },
    { name = "the egg boy",
      description = "A child of about eight on a stool, whose whole office is to hold eggs up to a candle and say whether they are good. He has held up forty thousand. He is beginning to have views on them as individuals.",
      actions = {
        { "Ask how he tells", say "\"The good ones look sure of themselves,\" he says, and holds one up. You look. It does, rather. He puts it in the good basket and it settles in among the others like a man taking his seat at a club." },
      } },
  },

  exits = {
    { to = "castle_bailey" },
    { to = "kings_garden", label = "The door behind the flour",
      description = "Past the barrels, through a door the kitchen has agreed not to see.",
      requires = flag "knows_garden", hidden = true },
    { to = "spoon_tunnel", label = "The loose flagstone",
      description = "Down under the pantry shelf, the way the pies go.",
      requires = visited "spoon_tunnel", hidden = true },
  },
}

space {
  id = "kings_garden",
  region = "castle",
  secret = true,
  name = "The Walled Garden",
  description = "A kitchen garden between the keep and the curtain wall, where no window looks. Bean rows, a cold frame, a wheelbarrow, and at the far end a man in an old hat, kneeling in the marrow bed. He does not look up. He is in a meeting.",
  palette = { bg = "#0c120c", text = "#ccd6c0", dim = "#66785e", accent = "#9cc860", border = "#34502c" },
  ambience = {
    dust { glyphs = "·˙", color = "#b8b060", rate = 0.3, speed = 0.2 },
  },

  things = {
    { name = "the King",
      key = "king",
      icon = "♚",
      description = "King Humbert the Fourth, by the grace of several gods, in a gardening apron. He has soil to the elbows and the face of a man who has found what he is for, sixty yards from where everybody is looking for him.",
      things = {
        { name = "his hat", description = "Straw, with a hole in the crown. It is the only crown he has on." },
        { name = "his hands", description = "Broad, cracked, and good at this. They have signed nine thousand documents and remember none of them. They remember every marrow." },
        { name = "his apron pocket", description = "Twine, a pruning knife, a stack of warrants signed in advance, and a watch on a chain with a small red key on it. The key has not been near a despatch box since the spring before last." },
        { name = "his knees", description = "He is wearing, strapped over his breeches, two pieces of blued and gilded plate armour. They are excellent for kneeling. The gilding has gone." },
      },
      actions = {
        { "Bow", say "\"Don't,\" he says, without turning round. \"You'll tread on the lettuces. Everyone who bows treads on the lettuces.\"" },
        { "Ask about the meeting", say "\"It's going very well,\" says the King. He pats the soil round a seedling. \"We are agreed on nearly everything. This one wants more water.\"" },
        { "Ask him to sign something", when = no(flag "warrant_given"), give "warrant", set "warrant_given",
          say "He sighs, wipes one hand on his apron, and takes a folded paper from his pocket. He has a stack of them, signed in advance. \"They always want something signed. I don't read them. I find it keeps me cheerful.\" He has left a thumbprint of good black earth beside the seal. \"Now. You never saw me. I am in a meeting.\"" },
        { "Promise not to tell", when = flag "warrant_given",
          say "\"Good,\" says the King. \"Cook knows, of course. Cook has always known. She has never once asked me for anything.\" He looks down the row. \"I send her marrows.\"" },
        { "Ask about the Queen", say "He is quiet for a row and a half. \"It was her garden,\" he says. \"I only carried things. She said I had a heavy hand with seedlings.\" He firms one in with a thumb, very lightly. \"I've got better.\"" },
      } },
    { name = "the marrow bed",
      description = "Twelve plants in a row, each with a stake and a slate with its name on.",
      things = {
        { name = "a slate", description = "{i}Her Grace the Duchess of Pell.{/} All the marrows are named after courtiers. This one is small, and going soft at one end." },
        { name = "another slate", description = "{i}The Lord Chamberlain.{/} Long, pale, and perfectly straight. It has been tied to a cane and is not enjoying the sun." },
        { name = "a third slate", description = "{i}Cook.{/} The best plant in the row, by some way. It has a cloche of its own and a saucer of beer set out against slugs." },
        { name = "the big one",
          key = "great marrow",
          wonder = true,
          description = "At the end of the row, under an awning of its own: a marrow the size of a rowing boat, striped dark green and pale, lying on straw so that it shall not mark. He has grown it for three summers and it has not stopped. {magic}Put a hand on it and you can feel it at work, slow and certain.{/} It is the only thing in the castle that is getting on with its job.",
          things = {
            { name = "the awning", description = "The cloth of gold from a spare canopy of state, on four bean poles. It keeps the midday sun off. It has never been put to better use and seems to know it." },
            { name = "the straw", description = "Changed weekly. He turns the marrow a quarter each time, with a plank and a great deal of apology." },
          },
          actions = {
            { "Guess its weight", say "\"More than the Chancellor,\" says the King at once. \"And more use. I've had it weighed. I haven't had him weighed. I can tell.\"" },
          } },
      } },
    { name = "the bean rows",
      description = "Runner beans on hazel poles, eight feet high, in scarlet flower and humming with bees. He has tied each pole at the top with a neat flat knot.",
      things = {
        { name = "a bean pod", description = "Long, cool, with a bloom on it. You snap it. It is full of pink speckled beans, each one in its own white silk bed." },
        { name = "the bees", description = "From the hive by the south wall. They work the beans, then the sweet peas, then the King's hat, which has a flower in the band." },
      },
      actions = {
        { "Eat a bean", say "Raw, green, and squeaking against your teeth. The King glances round. \"Leave some,\" he says, \"for the Privy Council,\" by which he seems to mean the blackbirds." },
      } },
    { name = "the sweet peas",
      description = "A wigwam of canes by the door, covered in flower: pink, white, a purple nearly black. They are the only thing in the garden that is not for eating. They are picked every few days, a small bunch, and tied with twine.",
      things = {
        { name = "the cut stems", description = "Fresh, this morning's. He takes them somewhere before the castle is up." },
      } },
    { name = "the cold frame",
      description = "A glazed box against the warm wall. The glass is old window lights from a bedroom, still with their lead.",
      things = {
        { name = "the seedlings", description = "Lettuce, in rows as straight as print, each row with a label: {i}Monday. Tuesday. Wednesday. Friday.{/} He has left a row out, and looked at it, and left it out." },
        { name = "a label in a different hand", description = "At the back, faded, in a quick slanting script that is not his: {i}H. Do NOT overwater these. M.{/} He has kept it in the same place for eleven years, and waters round it." },
      } },
    { name = "the wheelbarrow",
      description = "In it: a trowel, a ball of twine, a flask of cold tea, and the Great Seal of the kingdom, which he uses for firming in seedlings.",
      things = {
        { name = "the Great Seal", description = "A disc of gold as broad as a saucer, with a handle. On the face, the King enthroned. On the back, the King on horseback. In the lettering, compost. Every lettuce in the frame has the royal arms pressed into the soil beside it." },
        { name = "the flask of tea", description = "Cold, stewed and half drunk. It is the twin of a cup you may have seen elsewhere." },
        { name = "the trowel", description = "The handle is silver gilt and has an orb on the end. You decide not to ask what it was before." },
      },
      actions = {
        { "Pick up the Great Seal", say "It is heavy, and gold, and has compost in the lettering. You put it back exactly where it was." },
      } },
    { name = "the compost heap",
      description = "In the corner, steaming gently, as high as your chest. Peelings, straw, and paper. A great deal of paper.",
      things = {
        { name = "the paper", description = "Despatches. Petitions. Something with eleven seals on it, face down under a cabbage stalk. \"It rots very well,\" says the King. \"Better than leaves. All that ink.\" This, then, is where the business of the kingdom is going, and it is doing more good here than it ever did upstairs." },
        { name = "a worm", description = "Fat and pink, at work on a treaty. It has got as far as the second clause." },
      },
      actions = {
        { "Turn the heap", say "You put the fork in. Warmth comes up, and a sweet dark smell. \"That's last year's budget,\" says the King fondly. \"Look at it. You could grow anything in that.\"" },
      } },
    { name = "the beehive",
      description = "A straw skep on a stand by the south wall, with a slate roof.",
      things = {
        { name = "the bee line", description = "They go out over the curtain wall in a steady thread and come back heavy. They are the only subjects who have audience with him daily." },
      } },
    { name = "the water butt",
      description = "A barrel under a downpipe from the keep roof, with a dipper on a nail. The rain that falls on the throne room ends up here. It is the one thing the Great Hall sends him that he wants." },
    { name = "the scarecrow",
      description = "On a pole among the beans, in a crimson robe trimmed with rabbit, and on its turnip head a crown. The crown is gold. It has arches, a velvet cap, and more stones than you can count from here.",
      things = {
        { name = "the crown on the turnip", description = "So it was not at the cleaner's. You think of a yeoman in a tower, guarding a card. \"It keeps the pigeons off wonderfully,\" says the King. \"It never did that for me.\"" },
      },
      actions = {
        { "Bow to the scarecrow", say "\"Much better,\" says the King. \"It likes that. And it's nowhere near the lettuces.\"" },
      } },
    { name = "a robin",
      description = "On the handle of the spade. It follows the King up and down the rows for worms. It is the only courtier he has not tried to get away from." },
    { name = "the garden door",
      description = "Low, green, set deep in the kitchen wall. On this side it has a bolt, a boot scraper, and a hook with a second old hat on it, a woman's, straw, that nobody has moved." },

    { name = "the potting shed",
      description = "Tarred boards, a cobwebbed window, a door that sticks. It is the real seat of government. The despatch boxes come here to be used as seed trays.",
      things = {
        { name = "the seed drawers", description = "Forty small drawers, labelled in the royal hand. {i}Peas, early. Peas, late. Peas, in disgrace.{/}" },
        { name = "a ball of twine", description = "On a nail, with the Great Seal hanging beside it on the same nail. He uses the Seal for firming in seedlings. It leaves a small lion on the soil." },
        { name = "the royal notebook",
          description = "Oilcloth, muddy. One page is headed {i}Things to raise at the meeting{/}, and is blank. The page opposite is headed {i}Slugs{/}, and is full on both sides, with diagrams." },
      },
      actions = {
        { "Look in at the window", say "A deckchair. A kettle on a brazier. A pair of spectacles on an upturned flowerpot, and a crown hung on the handle of a spade to keep it out of the wet. You have seen throne rooms. This is the first room in the castle that looked ruled from." },
      } },
    { name = "a molehill",
      description = "In the middle of the lawn, fresh. The King has put a little flag in it and left it alone.",
      things = {
        { name = "something on top of it",
          description = "A cobble of river pearl, no bigger than a pea, set on the very crown of the heap, as you might leave a card. The King says they turn up every spring. He leaves a radish in return, and the radish is always gone." },
      } },
    { name = "a hedgehog",
      description = "Under the bean rows, going about its business with a snuffle. It has a name, and a pension, and is the only member of the household the King consults about slugs." },
  },

  exits = {
    { to = "castle_kitchens", label = "The door behind the flour", description = "Back through the kitchen, with mud on your boots and nothing to say." },
  },
}
