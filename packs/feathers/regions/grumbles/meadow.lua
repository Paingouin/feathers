space {
  id = "marmot_meadow",
  region = "grumbles",
  name = "The High Meadow",
  description = "A shelf of grass between the last pine and the first snow, tilted towards the sun. For six weeks of the year it is the best place in the kingdom, and everything that lives up here knows it and is in a hurry. The flowers are all out at once. The bees are doing overtime.",
  palette = { bg = "#0c110e", text = "#d2d8c8", dim = "#6a7868", accent = "#b8d880", border = "#34503a" },
  ambience = {
    fireflies { glyphs = "·∙", color = "#e0d870", rate = 0.2 },
    dust { glyphs = "·˙", color = "#6f8460", rate = 0.4, speed = 0.6 },
  },

  things = {
    { name = "the flowers",
      description = "Blue, yellow, white and a pink that has no business at this height, all in grass no taller than your ankle. Nothing here grows high. The wind has explained why.",
      things = {
        { name = "a gentian",
          description = "A trumpet of a blue so strong that it looks wet. It opens when the sun is on it and shuts the moment a cloud crosses. It is shut now. You move your shadow. It opens.",
          actions = {
            { "Pick it", say "You kneel. You look at it. It took the whole summer to make one flower, and it is looking at the sun as if they had an arrangement. You get up again with nothing in your hand, and feel that you have passed something." },
          } },
        { name = "edelweiss",
          description = "Small, white and woolly, growing on the one ledge that would kill you. Young men used to climb for it to prove their love. The ledge has a plaque with eleven names on it and the line {i}flowers are also sold in Aldmoor{/}." },
        { name = "an alpine rose",
          description = "A low bush, dark leaves, flowers the colour of a cold nose. The bees work it in shifts.",
          things = {
            { name = "a bumblebee", description = "Round, furred to the ankles, and flying though the Royal Survey has shown that at this altitude it cannot. Nobody has told the bee. The Survey has written to it twice." },
          } },
        { name = "a snowbell",
          key = "snowbell",
          wonder = true,
          description = "At the top edge of the meadow, where the drift has not yet gone, a small fringed flower the colour of dusk is standing in a hole in the snow exactly its own size. It did not wait for the thaw. {magic}It made its own warmth and melted its way up through a foot of ice{/}, to be first. You put a finger near it. The air round it is a little milder than the day.",
          actions = {
            { "Warm your hands at it", say "It is not much. It is a flower's worth. You hold your hands round it anyway, a few inches off, and the two of you get on with the business of not being cold." },
          } },
      } },
    { name = "the marmots",
      icon = "m",
      description = "A colony of them, fat as cushions, in burrows all across the slope. Half are eating. The other half are lying on warm rocks with their arms out. They have six weeks to get round enough for the winter and are treating it as a profession.",
      things = {
        { name = "the sentinel",
          description = "One marmot upright on the highest boulder, paws folded on its chest, watching the sky and you in strict rotation. It has a whistle that can be heard in the next valley and a low opinion of anything taller than itself.",
          actions = {
            { "Whistle at it", say "You whistle. It whistles. Forty marmots vanish underground in the time it takes to blink, and the meadow is empty. Then, one by one, the heads come back up, and you understand from the sentinel's face that you have raised a false alarm and it will be remembered." },
          } },
        { name = "a burrow",
          description = "A hole under a rock with a porch of trodden earth. Polished at the rim by a great many stomachs going in.",
          things = {
            { name = "the hay store", description = "Just inside, as far as your arm will go: dry grass, cut, turned and stacked. They make hay. They make it properly. There is a marmot in there now giving it a look you have seen on farmers." },
            { name = "a marmot's backside", description = "Leaving. It takes some time to go round the corner." },
          } },
        { name = "two young ones",
          description = "Wrestling. They stand up, lean on each other's shoulders like tired boxers, and fall over together. Neither is winning. It does not seem to be that sort of sport.",
          actions = {
            { "Referee", say "You call a foul. Both stop and look at you. Then they go for your bootlace, as a team." },
          } },
        { name = "the oldest marmot",
          description = "Grey about the muzzle, flat on a slab in the full sun, entirely asleep. The others go round. It has the best rock, and has had it since before the sentinel was born, and nobody has put it to a vote." },
      } },
    { name = "a herd of ibex",
      icon = "Y",
      description = "A dozen of them on the crag above the meadow, standing on a rock face that offers nothing to stand on. They are not climbing. They are simply up there, at ease, the way you would stand in a kitchen.",
      things = {
        { name = "the old buck", description = "His horns go back over his shoulders in two long ridged curves, a ring for every winter. He has thirty rings. He is looking down at you, and at your boots, and at the path you needed." },
        { name = "a kid on the cliff", description = "A week old and already halfway up a wall. It slips, corrects with one foot, and looks round to see who noticed. Its mother has not looked up from the grass." },
        { name = "the salt lick", description = "A pale streak in the rock that they have licked into a hollow over the centuries. Ma Scree's goats come up for it too. The two parties do not mix. They take turns, and each plainly thinks the other is common." },
      },
      actions = {
        { "Climb up to them", say "You get about eight feet. The old buck watches, chewing. At the point where you stop being able to go up or down, a nanny walks past you, along the face, without hurrying, and you are left to arrange your own descent." },
      } },
    { name = "the summer pasture",
      description = "A patch of meadow cropped short, with a ring of trodden earth, a three-legged stool and a pail turned upside down on a post. Ma Scree brings the goats up here in the long days.",
      things = {
        { name = "the milking stool", description = "One leg is a different wood. It replaced a leg that a goat called Bishop ate, slowly, over a summer, while being milked." },
        { name = "the pail", description = "Tin, scoured, upside down so that it does not fill with rain or marmot." },
        { name = "a tuft of goat hair on a thistle", description = "White, with a kink in it. You know from the hut how little further this would have to go to be a sock." },
      } },
    { name = "the big boulder",
      description = "A rock the size of a barn, sitting by itself in the grass. It came off Old Grumble some winter long ago and rolled this far. The meadow has grown up round it and given it a skirt of nettles.",
      things = {
        { name = "the hollow underneath", description = "Dry and out of the wind, with a ring of blackened stones. Herders have lit fires here for as long as there have been goats. Someone has scratched a tally of summers on the roof. It goes on past where the light reaches." },
        { name = "the lichen on top", description = "Orange, in rings, where the birds sit. It grows where it is fed. You decline to think further about this while leaning on it." },
        { name = "a wall lizard", description = "Flat on the warm south face, the colour of the rock. It does a few quick press-ups at you and holds its ground." },
      },
      actions = {
        { "Push it", say "You set your shoulder to it. It weighs as much as a village. You feel, all the same, that it was worth establishing." },
      } },
    { name = "a hay hut",
      description = "A little shed of dry stone with a slate roof, no window and a door held shut by a peg. The hay cut up here is stored in it until the snow makes a road and it can be sledged down.",
      things = {
        { name = "last year's hay", description = "Still sweet. Dried flowers all through it: you can pick out the blue ones." },
        { name = "the hay sledge", description = "Two ash runners and a rope, hung on the wall. In winter a loaded one goes down to the snow line faster than anything else in the kingdom, with a herder on top steering by prayer." },
        { name = "a scythe", description = "Hung by the door with a whetstone in a horn of water. The blade is thin as a leaf from a hundred summers of sharpening." },
      } },
    { name = "the stream",
      description = "Snowmelt, a hand wide, running in a groove it has cut through the turf. It is so cold that it seems to have an edge.",
      things = {
        { name = "the cushions of moss", description = "Green enough to hurt, with water beaded all over them. You press one. It gives back, slowly." },
        { name = "a butterfly, drinking", description = "Small and blue, on the wet gravel, opening and shutting. It lives for two weeks, the herders say, and spends one of them here." },
      },
      actions = {
        { "Drink", say "Your teeth ring like a struck glass. It tastes of nothing whatever, in the way that only very good water can afford to." },
      } },
    { name = "the snow's edge",
      description = "The top of the meadow, where the grass stops under a grey crust of old drift. It is going back by an inch a day. At the very rim the turf is yellow and flat, and already has buds on it." },
    { name = "a golden eagle",
      description = "A long way up, turning. The marmots know exactly where it is. So, you notice, do you: you have been keeping near the boulder without deciding to." },
  },

  exits = {
    { to = "goat_track", description = "Down across the grass to the ledges and the cairn." },
    { to = "mirror_tarn", description = "Follow the stream up, over the lip of rock it falls from." },
  },
}

space {
  id = "mirror_tarn",
  region = "grumbles",
  name = "The Tarn",
  description = "A round bowl scooped out of the mountain, with cliffs on three sides and a small black lake in the bottom of it. The water is perfectly clear and you cannot see the floor. It is very quiet. The cliffs keep the wind out, and the tarn has never been given anything to do but lie there.",
  palette = { bg = "#0a0e12", text = "#cad4dc", dim = "#5e6c7c", accent = "#88c0d8", border = "#2c4458" },
  ambience = {
    shimmer { color = "#88c0d8", strength = 0.12 },
    snow { glyphs = "·˙", color = "#7a8898", rate = 0.15, speed = 0.3 },
  },

  things = {
    { name = "the water",
      description = "Black from above, clear from the edge. You can see stones on the bottom for the first few yards, each one sharp as a drawing, and then the floor goes down a step and there is only blue, and then not that.",
      things = {
        { name = "a drowned boot",
          description = "On the stones, six feet down, laces floating. It has been there so long that a small weed has taken the lease. Somewhere there was an adventurer who walked home with one wet sock and a story that got better each winter." },
        { name = "the old trout",
          key = "old trout",
          description = "A fish the length of your arm, hanging in the clear water with its nose to the inflow, not moving a fin. The monks call it the Abbot. It was here before the monastery. The present Abbot comes up once a year and the two of them regard each other.",
          actions = {
            { "Offer it a crumb", say "The crumb lands. The trout lets it sink past, all the way down, out of sight. Then it rises one inch and settles again. You have been acknowledged." },
          } },
        { name = "the deep part", description = "The Survey let down a line here once. It ran out at two hundred fathoms and they sent for more. That ran out too. The report says {i}adequate{/}." },
      },
      actions = {
        { "Put a hand in", say "For two seconds it is water. Then it is pain, and then your hand belongs to somebody else. You get it back by degrees, over a quarter of an hour, starting with the thumb." },
        { "Skim a stone", say "Five. Six. Seven, and it runs out of tarn and clicks off the far cliff. It is the best you have ever done. The trout has seen better." },
      } },
    { name = "the frozen fall",
      key = "frozen fall",
      wonder = true,
      icon = "≈",
      description = "On the far cliff a thread of water comes over the edge and drops two hundred feet into the tarn. Every evening, when the sun leaves the bowl, it stops. Not at the top: all the way down, at once, each drop where it was. {magic}All night the fall hangs in the air, finished and silent, and at first light it goes on from where it left off.{/} There are drops in it that have taken a week to reach the bottom.",
      things = {
        { name = "the top of the fall", description = "A notch in the rim, with a fringe of ice that never quite goes." },
        { name = "the pool under it", description = "Ringed with ice shaped like the splash: a crown of it, a foot high, built up a night at a time." },
      },
      actions = {
        { "Wait for evening", fx("wash", "#88c0d8"),
          say "You sit on a rock until the shadow comes down the cliff. When it reaches the water there is no sound of freezing. There is only the sound of the fall, and then not. Two hundred feet of white stand in the air with the last light in them. A drop hangs a hand's breadth above the pool. You watch it for some time, to see if it will. It has all night." },
      } },
    { name = "a fishing monk",
      description = "A brother from the monastery, on a flat stone, with a rod and a line in the water. He nods to you. He has been here since dawn. The line, you see when it drifts close, has no hook on it, only a small lead weight.",
      things = {
        { name = "his rod", description = "Hazel, cut from the valley. The cork handle is worn to the shape of one hand." },
        { name = "his basket", description = "Empty, lined with fresh fern, as it has been every evening for years. He lines it again each morning. It is the correct way to carry no fish." },
      },
      actions = {
        { "Ask why no hook", say "He considers the question. He takes a slate from his sleeve and writes: {i}It would only lead to conversation.{/} He looks at the trout. The trout looks at the weight. Neither wants anything from the other, and they have been at it happily for eleven years." },
      } },
    { name = "the cliffs",
      description = "Grey, streaked black where the water comes down, going up further than you can tip your head. The rock is cut in long curved steps, as though something had taken it out with a spoon.",
      things = {
        { name = "a wallcreeper", description = "A small grey bird going up the bare rock in short hops, flicking its wings open as it goes. Each time, a flash of crimson. It looks like someone opening and shutting a very small expensive coat." },
        { name = "a patch of saxifrage", description = "A rosette of grey leaves the size of a coin, rooted in a crack with no soil in it, holding up one white spray. It breaks rocks for a living. It is in no hurry." },
        { name = "the echo here", description = "There is none. You try a cough. The bowl takes it and keeps it. The gorge, you gather, has the monopoly." },
      } },
    { name = "the scree",
      description = "A fan of broken rock coming down to the water on the north side. Everything the cliffs let go of ends up here, sorted by the slope into sizes, the big ones at the bottom.",
      things = {
        { name = "a stoat in half a coat", description = "Brown above, white below, and a white patch on one shoulder where winter has not finished leaving. It flows through the stones like a poured thing, stops, stands up, and looks at you with great intensity for about one second." },
        { name = "a stone that has just arrived", description = "Pale on one side where it broke off. It is still rocking very slightly. You look up. The cliff looks back, innocent." },
      } },
    { name = "the ice at the edge",
      description = "A rim of it along the shaded shore, clear as a window, in the middle of summer. Under it you can see pebbles, a beetle, and a single bubble that has been trying to get out since March.",
      actions = {
        { "Tap it", say "A note goes out across the whole tarn, thin and high, and comes back off the far side a moment later, lower. You have played the lake. It only has the one tune." },
      } },
    { name = "the outflow",
      description = "A gap in the lip of the bowl where the water leaves, a hand deep over a sill of polished rock, and falls away towards the meadow. Everything below here, the stream, the falls in the forest, the lake, starts as this.",
      things = {
        { name = "a dipper", description = "A round brown bird with a white bib, bobbing on a stone in the middle of the current. It walks into the water, right under, and strolls along the bottom. It comes out dry. It bobs at you, as though that were nothing." },
      } },
    { name = "a ring of flat stones",
      description = "Laid in the shallows by the monks, with a bench cut in the bank. Once a year, on the feast of their Founder, the whole house comes up and bathes. It is the one day they are allowed to make a noise that is not on a Thursday. The noise is the same forty men make anywhere, entering that water.",
      things = {
        { name = "a forgotten towel", description = "Grey wool, frozen to the bench in the shape it was dropped in. It has been here since the last feast and may be collected at the next." },
      } },
    { name = "the reflection",
      description = "The cliffs, upside down, to the last crack. It is so exact that the wallcreeper has a twin going down as it goes up. You wave. Your reflection waves. After the lake in the forest, you are more relieved by this than you would care to explain." },
    { name = "a cairn with a tin",
      description = "On the shore, three stones and a biscuit tin. People who walk up here leave a line in the notebook inside.",
      things = {
        { name = "the notebook", description = "{i}Came up to fish. Met a monk. Learned something. Not sure what.{/} And under it, in the hand of someone who presses hard: {i}Cold.{/} And under that, a chalk drawing of a trout, by a brother, signed with a small cross." },
      },
      actions = {
        { "Add a line", once = true, say "You write: {i}Skimmed seven.{/} You look at it. You add: {i}Witnessed by a trout.{/} That should hold up." },
      } },
  },

  exits = {
    { to = "marmot_meadow", description = "Over the lip and down beside the stream to the grass." },
  },
}
