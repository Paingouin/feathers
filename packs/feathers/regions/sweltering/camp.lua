-- The Collegium's expedition, the walk they slung in the tree tops, and a hostess.

space {
  id = "jg_camp",
  region = "sweltering",
  name = "Camp Brandish",
  description = "Six white tents in a row on a bluff over the river, guyed and trenched as if for a parade, with a flagpole and a flag. The Collegium's Faculty of Natural Philosophy has been here three years. In that time they have discovered four thousand kinds of plant and animal, all of which the people up the river could have shown them, and have given every one a name.",
  palette = { bg = "#0b130c", text = "#dce0c8", dim = "#687a5e", accent = "#e0c060", border = "#385a36" },
  ambience = {
    fireflies { color = "#d0e070", rate = 0.2 },
    dust { glyphs = "·˙", color = "#52684c", rate = 0.3 },
  },

  things = {
    { name = "Professor Vole-Brandish",
      icon = "☺",
      description = "Hartley Vole-Brandish, Reader in Natural Philosophy: a tall pink man in a sun helmet, a tweed jacket and puttees, at a folding desk, writing labels. He has not been further than forty yards from the tents in three years. Things are brought to him. He names them.",
      things = {
        { name = "his sun helmet", description = "Cork, white, with a small flag of the Collegium stuck in the vent. A beetle is living in the lining. He has named it, and it has not been told." },
        { name = "his label box", description = "Thousands, printed in advance: {i}Brandish's ________{/}. He need only fill in the blank. He ordered ten thousand, and has sent for more." },
        { name = "his great work", description = "A manuscript a foot thick, tied with tape: {i}The Natural History of the Sweltering, by its Discoverer{/}. The index runs to forty pages. Thirty-nine of them are under B." },
      },
      actions = {
        { "Introduce yourself", say "He looks up, delighted. \"A visitor! From the Collegium? No? No matter.\" He peers at you through a lens. He writes on a label. He ties it, quite gently, to your top button. It says {i}Brandish's Wanderer (juv.){/}." },
        { "Ask what he has discovered", say "\"Everything!\" He waves at the jungle. \"Brandish's Toucan. Brandish's Tree Frog. Brandish's Greater and Lesser Disappointment, those are beetles. That river is the Brandish. That hill is Mount Hartley.\" You say that you believe the hill is called Maybe. \"By whom?\" he says, with real interest. \"The natives? How charming. Podge, make a note.\"" },
        { "Ask about the temple", say "\"The ruin? Dull. No animals to speak of. Phyllida goes on about it.\" He lowers his voice. \"She says the stone is the wrong age. I said, my dear, a stone is the age it is. She hasn't spoken to me since the rains.\" He points along a cut path with his pen. \"Half a mile. Mind Brandish's Viper.\"" },
      } },
    { name = "Dr Mimms",
      icon = "☺",
      description = "Phyllida Mimms, Reader in Natural Philosophy, in the tent at the far end of the row with the flap tied shut on his side. Small, brown as a nut, in breeches. She has been further than forty yards. She has been everywhere, and has named what she found there after herself, on principle, to keep the numbers even.",
      things = {
        { name = "her boots", description = "Worn through and resoled with tyre of some jungle rubber by a cobbler in Stilts. They have been to the falls, the mountain and the temple. His are as new." },
        { name = "her specimen case", description = "Open on the camp bed: beetles on pins, in rows. Each label reads {i}Mimms's{/} and has a small note beneath, in pencil: {i}(called by the river people \"little shield\"){/}. She writes that part down. He does not." },
        { name = "her temple notes", description = "A whole book of them, with drawings. {i}Roots of the great fig grow THROUGH wall. Fig is 900 yrs by ring count. So wall is older. But wall is built ROUND a root. So root is older. Both cannot be so. Checked 3 times. Have not told H.{/}" },
      },
      actions = {
        { "Ask about the Professor", say "\"He named a tapir after himself last week,\" she says. \"It had a name. It's had one for a thousand years. It means 'the one who comes at night for the yams'.\" She pins a beetle with some force. \"I've named a leech after him. It's in the journal. He's very pleased. He hasn't seen the drawing.\"" },
        { "Ask about the temple", say "She looks at you for a moment, and then shuts the specimen case, which she has not done for him in a year. \"Go and look at the east wall,\" she says. \"Count the steps down from the terrace. There are meant to be nine. Tell me how many you get.\" She will not say more. She has the look of somebody who has done a sum four times and wants a stranger to do it a fifth." },
      } },
    { name = "Podge",
      icon = "☻",
      description = "The expedition's student, and its porter, cook, collector, artist and laundry. A stout anxious young man with a butterfly net and a great many bites. Everything in the label box was caught by him. Nothing has been named for him apart from a rash.",
      things = {
        { name = "his net", description = "Mended with his own boot laces. It has taken four thousand species and one professor, by mistake, in the dark." },
        { name = "his rash", description = "On the left forearm, in rings. {i}Podge's Rash{/}: it is in the journal, with a plate. He is quietly proud of it. It is his, anyway." },
        { name = "his private notebook", description = "Hidden in the flour bin. It has drawings in it that are very good indeed, and the river people's name for every creature, spelled with care, and what they say it is good for. If anybody ever writes the true book of the Sweltering it will be this one, and he does not know it." },
      },
      actions = {
        { "Ask how he is", say "\"Oh, very well, thank you, sir,\" he says, scratching. \"I had the fever in the spring, and the worm, and the Professor says I may have a mould named for me if I get it again.\" He beams. He means it. You have seldom wanted so much to hit a professor." },
        { "Tell him his drawings are good", say "He goes scarlet under the bites. He takes the notebook out of the flour and shows you a frog the size of a thumbnail, gold, singing, so true that you look for the leaf. \"The Aunts call it 'the glass voice',\" he says. \"I think that's better than Brandish's. Don't you? Don't say I said.\"" },
      } },
    { name = "the row of tents",
      description = "Six, white, of the same pattern, pitched to a string. The jungle has got at them. They are white on the side that faces the Professor.",
      things = {
        { name = "the mess tent", description = "A table laid for dinner with a cloth, three napkin rings and a cruet. They dress. In this heat, in a tent, with ants, they dress, and take soup, and Podge serves it in a boiled shirt with a butterfly net under his arm.",
          things = {
            { name = "the menu", description = "In Podge's hand, on a card. {i}Potage Brandish. Fish Brandish. Brandish's Fowl, roast. A Savoury.{/} It is tinned mutton. It has been tinned mutton for three years." },
            { name = "the port", description = "One bottle, nearly done, marked in pencil at the level after each dinner. It has to last until the relief boat. The pencil marks are getting closer together." },
          } },
        { name = "the specimen tent", description = "Jars, cases, skins on boards, and the smell of spirits. Everything in the Sweltering is here once, dead, with a ticket on.",
          things = {
            { name = "a jar with nothing in it", description = "Labelled {i}Brandish's Invisible Lizard{/}. Podge says that it was in there when he put the lid on. He says it apologetically. You look closer, and something in the jar blinks." },
            { name = "a very large egg", description = "As long as your forearm, leathery, on a bed of moss, under a lamp to keep it warm. Podge found it by the temple. The Professor has the label ready. Twice now it has moved, and Podge has not told him, since he would name whatever comes out and it may have views.",
              actions = {
                { "Put your ear to it", say "Warm. Inside, something turns over, slowly, and settles, like a sleeper. Then a tap, quite clear, on the shell beside your ear. You tap back before you have thought. There is a pause, and then two taps. Podge is staring at you. \"It's never done that for me,\" he says, rather hurt." },
              } },
          } },
        { name = "a tent that has been eaten", description = "The fifth in the row. The poles stand and the guy ropes are taut, and of the canvas there is nothing left but the eyelets. Ants. It took one night. The Professor has named the ant." },
      } },
    { name = "the flagpole",
      description = "A trimmed sapling with the Collegium's flag at the top: a book, open, on a field of purple. The pole has come into leaf, and is two feet taller than when it was cut. They have had to splice the halyard.",
      actions = {
        { "Salute the flag", say "You salute. The Professor leaps up and salutes too, knocking over his ink. Somewhere in the trees a red monkey does a fair copy of the pair of you." },
      } },
    { name = "the map table",
      description = "A trestle under an awning, with the expedition's map of the Sweltering pinned out and weighted with skulls.",
      things = {
        { name = "the map", description = "The camp is drawn in full, tent by tent. Round it there is a ring forty yards across, minutely surveyed. Outside the ring are the Brandish River, Mount Hartley, and the words {i}trees (Brandish's){/}." },
        { name = "a second map, underneath", description = "Hers. Bark paper, folded small. Stilts, the falls, the mountain with its real name, the temple, and by the temple a careful mark: a small square with a question in it. In the middle of the tall forest is a ring, drawn round nothing, and beside it: {i}birds perch here. On what?{/}" },
      } },
    { name = "the camp bath",
      description = "Canvas, on a folding frame, behind a screen. It takes Podge forty buckets to fill. A frog is in it. A frog is always in it. It is not always the same frog." },
    { name = "the rope ladder",
      description = "Up the trunk of a giant at the edge of the camp, a hundred feet, to a platform. Dr Mimms had the river people sling a walk through the tree tops. The Professor opened it with a speech, from the bottom." },
    { name = "the cut path",
      description = "A slot hacked into the green, leading inland to the temple. It has to be cut again every Monday. There is a Monday's growth on it now, at the height of your shins, reaching across." },
    { name = "the cook fire",
      description = "Podge's. A kettle, a tin of mutton with the lid bent back, and a pan of something that the river people showed him how to make, which is the only thing the camp eats willingly.",
      things = {
        { name = "the kettle", description = "They have tea. It comes from the Landing at a ruinous price, in a chest stamped with a small tree. They suppose it must be shipped out from home." },
      } },
    { name = "a tapir",
      description = "At the edge of the clearing, by the yam store: a round dark animal the size of a pony with a short trunk, standing very still in full view and hoping to be taken for a rock. It comes at night for the yams. It has mistaken the time.",
      actions = {
        { "Pretend not to see it", say "You look at the sky. You whistle. Out of the corner of your eye a rock takes a yam, with great delicacy, and backs into the leaves. You have done one creature in this camp a kindness that will not be written on a label." },
      } },
    { name = "the relief boat schedule",
      description = "Nailed to the flagpole: {i}Supplies by the Perhaps, monthly, perhaps.{/} Under it, a list of things requested from the Collegium: ink, pins, port, a new tent, and {i}10,000 labels (printed){/}. The last has been ticked." },
    { name = "the bluff",
      description = "The camp stands on the one high piece of bank for a day in either direction. From the edge you can see the river both ways, brown and slow, and across it a forest that nobody from the tents has set foot in. Dr Mimms comes and looks at it in the evenings, with her arms folded." },
  },

  exits = {
    { to = "jg_river", label = "The Perhaps",
      description = "Down the bluff by the rope ladder with the flag on, to the boat." },
    { to = "jg_canopy", label = "Up the rope ladder",
      description = "A hundred feet of rungs, into the leaves and then above them." },
    { to = "jg_temple", label = "The cut path",
      description = "Half a mile inland, through a slot that is trying to heal." },
  },
}

space {
  id = "jg_canopy",
  region = "sweltering",
  name = "The High Walk",
  description = "A hundred feet up, the forest has a second floor. Rope bridges with bark slats go from giant to giant, and between them there are platforms round the trunks. Down below it was dark, and close, and quiet. Up here there is wind, and light, and a racket: this is where the jungle actually lives. The ground is a rumour.",
  palette = { bg = "#0a140a", text = "#dce8c4", dim = "#688458", accent = "#f0c850", border = "#346030" },
  ambience = {
    dust { glyphs = "·˙∙", color = "#7a9a50", rate = 0.5, speed = 0.8 },
    shimmer { color = "#e0f0a0", strength = 0.2 },
  },

  things = {
    { name = "the rope bridges",
      description = "Vine cable as thick as your wrist, with a slat every pace and a hand line on each side. They sway. The river people who built them cross at a trot, carrying things. You cross as a man crosses a room in which a baby has just gone to sleep.",
      things = {
        { name = "the longest span", description = "Eighty paces, between two trees that lean apart. In the middle it dips, and you are standing in the open air over the forest with a rope in each hand, and nothing has ever been further away than the other end.",
          actions = {
            { "Look down", say "Leaves, and below them leaves, and below those a green dark with no bottom. A blue butterfly goes by underneath you. A long way under the butterfly, a bird. You look up again, and fix your eyes on a knot, and it is a very good knot and you are fond of it." },
          } },
        { name = "the knots", description = "Every lashing is tied in the same way, and has a small extra twist at the end which holds nothing. It is the maker's mark. A whole family built this, and you can tell which cousin did which bridge." },
        { name = "a slat with a hole in it", description = "Boot shaped. There is a label tied beside it: {i}Brandish's Aperture{/}. He has never been up. He named it from Podge's account, the evening Podge came down with one leg green to the hip." },
      } },
    { name = "the top of the world",
      wonder = true,
      icon = "^",
      description = "The highest platform is a few planks in the crown of the tallest tree on the walk, and when you put your head out through the last leaves the forest stops being a place you are in and becomes a thing you can see. It goes to the edge of the sky in every direction, {wave}rolling, like a sea that has been stopped{/}. Mist stands in the hollows. Here and there a tree in flower makes a patch of yellow or of purple a mile off. There is the line of the river, guessed at by a crease. There is the mountain with its thread of steam. And nowhere, in all of it, a roof, a road, or a straight line.",
      things = {
        { name = "the dawn mist", description = "It rises out of the leaves in separate breaths, tree by tree, as though each were letting go of the night on its own. By ten o'clock they have joined into cloud, and by four the cloud comes back down as rain. The forest waters itself. It needs nobody." },
        { name = "a tree in flower", description = "Yellow from top to bottom, with not a leaf showing, alone in the green, about two miles off. Dr Mimms has tried four times to walk to it. From the ground you cannot tell which it is." },
        { name = "the edge of the sky", description = "South, there is no end to it. The green goes pale and then blue and then is the sky, with no join. The sign at the Landing was right. More." },
      },
      actions = {
        { "Stay up here a while", say "The wind moves the crown, and the platform with it, a slow yard each way. You stop holding on. A hawk goes over at your own height and turns its head to look at you, and for once you are at home in a view instead of in front of it. When you go down, you go down slowly, and you do not say much for an hour." },
      } },
    { name = "the gardens in the air",
      description = "Every branch up here is a bed. Ferns, moss, orchids, and plants like green urns that hold a pint of rain each, growing on the bark with their roots in nothing.",
      things = {
        { name = "an urn plant", description = "A rosette of stiff leaves with a pool in the middle. In the pool: mosquito larvae, a snail, and a tiny red frog, which was a tadpole in there and has never been anywhere else. It has a whole life in a cup, a hundred feet up, and is by the look of it content.",
          actions = {
            { "Peer in", say "The frog looks up. A face the size of the sky has appeared over its world. It considers this. It decides that you are weather, and goes back to its snail." },
          } },
        { name = "a rope of roots", description = "Hanging down from a branch, straight as a plumb line, into the dark. It is a hundred feet long and is still a foot short of the ground. It has been growing towards it for years. Everybody on the walk gives it a pat for luck, going by." },
        { name = "a cactus", description = "Up a tree, in a rain forest. Flat green pads, hanging down. It appears to be embarrassed, and has dressed itself in pink flowers to carry it off." },
      } },
    { name = "the monkeys",
      description = "Three kinds, on three levels, and they do not mix. The walk goes through all three.",
      things = {
        { name = "the howlers", description = "Red, heavy, and at the top. They howl at dawn, at dusk, at rain, at each other and at the walk, which was put through their tree without asking." },
        { name = "the spider monkeys", description = "All arm, with a tail that is a fifth hand. They do not climb. They pour. One comes down a vine, takes the label off your top button, reads it upside down, and eats it.",
          actions = {
            { "Ask for the label back", say "It looks at you. It looks at your pack. It holds out its hand, palm up, for the next one. You have nothing with writing on that you can spare. It leaves, by the fifth hand, with the air of a reader let down by a library." },
          } },
        { name = "the small ones with moustaches", description = "White moustaches, long and drooping, on faces the size of a walnut. A dozen of them sit in a row on the hand line like a bench of magistrates. They are no heavier than a kitten apiece, and are the only things on the walk that you would not dare to cross." },
      } },
    { name = "the birds",
      description = "They are the noise. Green ones in flocks that turn all together, big ones with beaks like painted boats, and something no larger than your thumb that stands in the air in front of a flower with its wings a blur.",
      things = {
        { name = "a toucan", icon = "v", description = "Black, with a yellow bib and a beak as long as the rest of it. It picks a berry with the very tip, tosses it up, and catches it at the back. It does this every time. It has not yet lost one, and it has an audience of two smaller birds who are waiting for the day." },
        { name = "the thumb-sized one", description = "Green and violet, and gone. Back. Gone. It visits forty flowers while you are looking for where it went. Its nest is on a twig by the platform: half a walnut shell of cobweb, with two eggs like peas." },
        { name = "the parrots going over", description = "Pairs, always pairs, high up, flying straight, shouting. They go over at dawn one way and at dusk the other, like people who have a job in town." },
      } },
    { name = "the platforms",
      description = "A ring of planks round each great trunk, with a rail, a water gourd and somewhere to sit.",
      things = {
        { name = "the observation hide", description = "Dr Mimms's: a screen of leaves with a slit in it and a stool behind. She has sat here from dark to dark. Her pencil marks are on the rail, in fives, and beside each bundle the name of what came. There is one bundle with a question mark instead of a name, and all its strokes were made at the same time of day." },
        { name = "a water gourd", description = "Filled by the rain, and shared. A row of bees is drinking at the rim on one side, and you are welcome to the other." },
        { name = "the hammock at the top", description = "One of the builders slung it for himself and comes up to sleep in it when his wife's mother visits. From it you can see the smoke of Stilts. He likes to look at it from here." },
      } },
    { name = "the bees",
      description = "A nest as long as a man, hanging from the underside of a branch like a brown sail. The bees have no stings. The honey is thin, dark and sharp. The river people take it by walking out along the branch with no rope and a smoking stick, singing so that the bees will know who it is.",
      actions = {
        { "Taste the honey", say "A comb has been left in a leaf on the rail, for whoever comes. You break off a corner. It is like honey that has been told a secret: sour first, then flowers, forty kinds, one after another, a good many of which you have walked past today and not looked at." },
      } },
    { name = "the flies",
      key = "jg_flies",
      description = "A thin line of them, going past the third platform, all in the same direction: big blue ones, with the look of having had an invitation. They go down through a gap in the leaves towards a hollow you cannot see into. None come back.",
      variants = {
        { when = flag "jg_dell_found",
          description = "A thin line of big blue flies, going down past the third platform to the dell. You know now where they are going. They are being received. You find that you think the better of them for dressing." },
      },
      actions = {
        { "Follow the flies", when = no(flag "jg_dell_found"), set "jg_dell_found",
          say "You lean out from the rail and trace the line down. There is a side bridge, a short one, half hidden, in poor repair, going the same way as the flies. A label hangs on the first slat: {i}Brandish's Folly. CLOSED. Podge went down and was returned.{/} Returned is underlined." },
      } },
    { name = "a snake on the hand line",
      description = "Bright green, as thick as the rope it lies along, and as long as the span. It is exactly where your hand has to go. It knows this.",
      actions = {
        { "Wait for it to move", say "You wait. It waits. A river woman comes up behind you with a basket on her head, says a short word to it in the tone used for a goat in a doorway, and it flows off on to a branch. She goes by. You follow her, close, as if you had been going to say the word yourself." },
      } },
    { name = "the leaf cutters",
      description = "Ants, crossing the bridge on the hand line, each with a piece of green leaf held up like a sail. There are a hundred yards of them. From the next platform, it looks as if the line has come into leaf and is walking.",
      things = {
        { name = "a rider", description = "On top of one cut leaf, a much smaller ant, carried along. It does no work. It is there to keep the flies off the one who is working. Somewhere in this is a lesson that the Collegium has not drawn." },
      } },
    { name = "the way down to the clearing",
      description = "At the far end of the walk the last bridge slopes, tree by tree, lower and lower, and comes to ground in a place where the giants stand back in a ring around one that is taller than all of them." },
    { name = "the four o'clock rain, from above",
      description = "You see it before you feel it: a grey wall coming over the forest, with the trees going dark beneath it one by one. Then the sound, like a crowd running. Then it is on you, and for twenty minutes there is no forest, only water and the plank you are on. It passes. Everything drips and shines, and from every hollow the mist starts back up." },
  },

  exits = {
    { to = "jg_camp", label = "Down the rope ladder",
      description = "A hundred feet of rungs, to the tents and the tinned mutton." },
    { to = "jg_clearing", label = "The sloping bridge",
      description = "Down the last span, by stages, to the ring of giants." },
    { to = "jg_dell", label = "Brandish's Folly",
      description = "A short bad bridge, going where the flies go.",
      requires = flag "jg_dell_found", hidden = true },
  },
}

space {
  id = "jg_dell",
  region = "sweltering",
  secret = true,
  name = "The Hostess's Dell",
  description = "A hollow among the roots where the light comes down green and thick as water. In the middle of it grows a plant. It has a stem as thick as a mast and a single flower, or mouth, the size of a four-poster bed, crimson within, fringed with teeth as long as your arm. {danger}It has turned to face you.{/} And then it does a thing that no account of the jungle prepared you for. It inclines the whole great head, slowly, a foot or so, and holds out a leaf.",
  palette = { bg = "#0c0f0a", text = "#d8dcc4", dim = "#6a7458", accent = "#e05868", border = "#3c4c2c" },
  ambience = {
    fireflies { colors = { "#e06878", "#c8e070" }, rate = 0.2 },
    fog { color = "#1a2618", speed = 0.15, strength = 0.3 },
  },

  things = {
    { name = "the Hostess",
      key = "jg_hostess",
      wonder = true,
      icon = "♠",
      description = "The river people call her that. She is older than Stilts. She eats flies, by the thousand, and now and then a monkey that was not brought up properly, and she has never yet eaten anything that she was introduced to. {wave}The great head sways{/}, waiting. The leaf she is holding out is broad, clean and cupped, at just the height of a chair. You understand that you are being asked to sit down.",
      variants = {
        { when = flag "jg_introduced",
          description = "The river people call her the Hostess. She is older than Stilts, she eats flies by the thousand, and she has never eaten anything that she was introduced to. You have been. {wave}The great head is tilted towards you{/} with what you would call, in a person, attention. From time to time a tendril brings something across and sets it by your knee: a fruit, a flower, a clean leaf of rain water." },
      },
      things = {
        { name = "her teeth", description = "A double row, ivory white, curved, each as long as your forearm, meeting like the fingers of two folded hands. They are spotless. You have the impression that they are seen to after every meal." },
        { name = "the inside of the flower", description = "Crimson velvet going down to dark, with a sweet heavy smell, like a pudding in a hot kitchen. A blue fly walks in over the lip without hurry. The teeth close behind it as softly as a door in a good house. There is no sound from within. It is all handled with great discretion." },
        { name = "her leaves", description = "A dozen, each the size of a door, on stalks that bend like arms. One is your seat. One holds a pool of rain for washing in. One is kept curled, and uncurls now and then to shade you from a shaft of sun that had got on to your face." },
        { name = "her tendrils", description = "Fine as string, and strong as it. They tidy. A dead leaf that falls in the dell is taken up before it lands and put with the rest, in a heap, at the edge." },
      },
      actions = {
        { "Introduce yourself", when = no(flag "jg_introduced"), set "jg_introduced",
          say "You take off your hat, since it seems to be that sort of occasion, and give your name, your village, and your trade, which is adventurer. You sit on the leaf. It takes your weight with a small courteous dip. The great head comes down level with you, closer than you would like, and breathes pudding in your face, and then a tendril puts a ripe fig in your hand. You have been received. You eat the fig, since it would be rude not to, and since on reflection you would very much like to be on the list of things that are given figs." },
        { "Make conversation", when = flag "jg_introduced",
          say "You tell her about Greenhollow. The mill, the well, the goose. She cannot follow a word, presumably. But the head stays turned to you the whole time, and at the part about the goose a ripple goes down all the teeth, one after another, like fingers drummed on a table. You choose to think it was a laugh." },
        { "Ask about the machete", when = all(flag "jg_introduced", no(flag "jg_pathmaker_given")), set "jg_pathmaker_given", give "jg_pathmaker", fx "sparkle",
          say "You have noticed the heap. You point, and ask, as politely as you can, whether the gentleman with the long knife called here. The head goes still. Then one tendril reaches into the pile of things at the edge of the dell and draws out a blade with a horn grip, wiped clean, with a luggage label tied to it. She lays it across your knees and takes the tendril away quickly, as one does who has been keeping a thing for a caller who is not coming back, and is glad to see it go to a good home." },
      } },
    { name = "the lost property",
      description = "Stacked at the edge of the dell, as neatly as a quartermaster's store: everything that has come this way inside somebody, and could not be digested, and has been kept in case it was wanted.",
      things = {
        { name = "a row of buttons", description = "Laid out on a leaf by size. Brass, horn, bone. There are several hundred. A good many monkeys, evidently, have been wearing waistcoats, or else it is not all monkeys." },
        { name = "a sun helmet", description = "Cork, white, with toothmarks, set on a root to keep its shape. The name inked in the band is {i}Sir L. Thrubwell{/}. Beside it: his spectacles, folded. His watch, wound, and going. His boots, side by side, with the laces tucked in.",
          things = {
            { name = "his watch", description = "It is right. Something winds it. On the inside of the lid is engraved: {i}To Lionel, who will not be told. From his Mother.{/}" },
            { name = "his journal", description = "The last entry. {i}Day 3,287. Cut 4 miles. Camp still visible. Am told there is a large flower nearby of unusual habit. Shall go and name it. Shall be firm.{/}" },
          } },
        { name = "a label on a string", description = "{i}Brandish's Folly{/}. Chewed, and put back, with the string wound round it." },
        { name = "a butterfly net", description = "Podge's first. He came down here, was picked up, was held for the space of about a minute, and was then set back on the bridge with his hat straightened. He had said \"I'm so sorry, I do beg your pardon\" as he fell in. It was enough." },
      } },
    { name = "the flies",
      description = "They come down the green light in a line and wait their turn on a particular twig. You would swear that it is a queue. One goes in. The next moves up." },
    { name = "the seedlings",
      description = "Round the foot of the great stem: nine or ten small ones, knee high, each with a flower no bigger than a tea cup and teeth like a kitten's. They snap at gnats and mostly miss. When you come near, all of them turn to look, and then the nearest, after a glance up at its mother, gives a little wobbling bow.",
      actions = {
        { "Bow back", say "You bow. Nine small heads bow, in a ripple, not all at the same time. One overbalances and has to be put upright by a tendril from above. They are being brought up nicely, and it is going about as well as it does anywhere." },
        { "Offer a finger", say "The smallest takes it, very gently, in teeth like rice grains, and holds on. It does not bite down. It only wants to see what it would be like. A tendril comes and taps it once on the back of the head, and it lets go and looks at the ground." },
      } },
    { name = "the roots",
      description = "The walls of the dell are roots, of the giants round about, grey and smooth, twisting down from far above. Hers go in among them. They have grown round each other for so long that you cannot tell where the trees leave off and she begins.",
      things = {
        { name = "a hollow under a root", description = "Dry, floored with soft leaves, about the size of a person lying down. There is a dent in the leaves. Somebody has sheltered here from the four o'clock rain, more than once, by invitation." },
        { name = "the heap of dead leaves", description = "What the tendrils tidy. It is a compost, squared at the corners. Mushrooms grow on it in rows, and you do not think that the rows are an accident." },
      } },
    { name = "a pool",
      description = "Held in a leaf at the height of a wash stand, clear rain, with a petal floating in it. It is plainly meant for guests.",
      actions = {
        { "Wash your face", say "Cool, sweet, a little scented. You come up dripping, and there is a second leaf held ready, dry, soft, at the level of your chin. You dry your face on it. You have stayed in inns at home that did less." },
      } },
    { name = "a monkey on the rim",
      description = "A young spider monkey, on a branch at the lip of the dell, looking down. It wants the figs. It knows that it has not been introduced. It is working out what the northerner did, and practising it, with a twig for a hat." },
    { name = "the green light",
      description = "It comes down through a hundred feet of leaves and by the time it gets here there is no other colour left in it. Your hands are green. Your boots are green. Only the inside of the flower is red, and it glows in the dell like the door of a stove." },
    { name = "the orchid on her stem",
      description = "Halfway up the great stalk there is a small white orchid, growing on her as it would on any tree, and in flower. She has let it. Each of her leaves, as it moves, goes carefully round." },
    { name = "the bridge back",
      description = "Up the slope of roots, at the lip: the last slats of Brandish's Folly. It hangs a little straighter than when you came down. Three of the lashings are new, and are tied with something green that is still alive." },
    { name = "the quiet",
      description = "No howlers, no parrots. The noise of the jungle goes round this hollow as the crabs on the beach went round your boots. Things here mind their manners or they do not come.",
      actions = {
        { "Sit a while longer", say "You sit. The leaf holds you. A fig arrives at intervals. Nothing is asked. It occurs to you that of all the fierce things you were promised in the world, the dragons, the guards, the devils, this is the only one with teeth as long as your arm, and it is the only one that has asked you to stay." },
      } },
  },

  exits = {
    { to = "jg_canopy", label = "Back up Brandish's Folly",
      description = "Up the mended bridge to the High Walk, with a last fig for the journey." },
  },
}
