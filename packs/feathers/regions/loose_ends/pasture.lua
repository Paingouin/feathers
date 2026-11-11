-- The cloud pasture, and the island that is the wrong way up.

space {
  id = "le_pasture",
  region = "loose_ends",
  name = "The Cloud Pasture",
  description = "A spur of rock with a hut and a dry stone fold, and beyond the fold no ground at all, only a slope of sky where the flock is. They are clouds. Small ones, hefted to this patch of air for more generations than the village has, grazing slowly on whatever it is that the morning leaves.",
  palette = { bg = "#0c1218", text = "#dce4ec", dim = "#6e7e90", accent = "#f4f0e0", border = "#40566e" },
  ambience = { fog { color = "#1e2c3c", speed = 0.2, strength = 0.5 }, dust { glyphs = "˙·", color = "#b8c4d4", rate = 0.2, speed = 0.2 } },

  things = {
    { name = "the flock",
      wonder = true,
      key = "le_flock",
      description = "Forty or so, each the size of a haystack, white on top and grey beneath, drifting nose to the wind across a blue hillside that is not there. They keep together. When one strays the others lean after it. {magic}Toward evening they come in by themselves, in a line, down a path in the air that nobody can see and all of them know, and stand at the fold with the sun going through them, lit from inside like lamps, waiting to be counted.{/} She counts them, touching each. Her hand goes in to the wrist.",
      things = {
        { name = "the bellwether", description = "An old grey cloud with a flat base and a real bell, hung in it somehow, that tonks when it turns. The rest follow the bell. It has led them home through thunder." },
        { name = "a black faced one", description = "Dark at the front, with a look of weather about it. It has a small pure white one tucked in under its lee, new this week, no bigger than a pillow, which keeps coming apart and being nosed back together." },
        { name = "a thin one", description = "Ragged, with daylight in it. She has it on the good air by the fold and is feeding it up with kettle steam. \"Got into a dry wind,\" she says. \"They will go where it's warm.\"" },
        { name = "one with a mark", description = "A daub of blue raddle on the flank, the Wether mark. You ask how you mark a cloud. She says you do it quick." },
      },
      actions = {
        { "Count them", say "You count forty-one. She counts forty. She walks out along the fold wall, puts an arm into your forty-first, and it is a bit of ordinary mist that had fallen in with them for company. She shoos it. It goes off looking ashamed." },
        { "Pat one", say "Your hand goes in. It is cold, and wet, and inside it is very faintly moving, like a pulse felt through a sleeve. The cloud turns its whole front toward you. You have its attention. You are not sure what a person does with that." },
      } },
    { name = "Nan Wether",
      key = "le_nan",
      icon = "☺",
      description = "The cloud shepherd: sixty, weathered the colour of a saddle, in a coat that is never quite dry. She carries a crook twelve feet long with a fan of split cane lashed to the end, like a winnowing fan, for moving air.",
      things = {
        { name = "her crook", description = "Ash, twelve feet, with a cane fan lashed to the end. She does not touch the flock with it. She moves the air beside them and they go where the air is not." },
        { name = "her coat", description = "Oiled wool, beaded all over. Small rain follows her about. She has stopped noticing, and so has her dog, and so, after a while with her, do you." },
        { name = "her whistle", description = "Two fingers and a long falling note. Every cloud on the hillside turns. One on the far horizon, somebody else's, turns too, and has to be ignored." },
      },
      actions = {
        { "Ask what they are for", say "\"Wool,\" she says, as to a child. \"You shear a cloud in June and you've a fleece of fog that'll spin. Dumplings, the fine stuff. And rain, when they're let down to the low pasture over Greenhollow. Somebody has to. You think it just happens?\"" },
        { "Ask about the lost one", say "\"A good ewe cloud, three summers old. Went over the mill last week and never came out the other side.\" She leans on the crook. \"The miller says he's seen nothing, and his flour's never been so light. I've said what I think. I'll say it again at the Spill.\"" },
        { "Ask about Wrong Way Up", say "She points with the crook, down the back of the spur, to where a rope ladder goes over. \"Under and round. My sister has the farm there. You'll want to hold on at the middle. It's where the ladder changes its mind.\"" },
      } },
    { name = "the dog",
      icon = "d",
      description = "A grey collie with one white eye, lying at the edge with its nose over. It works the flock by running along the fold wall and staring. It has never set foot on the pasture, and the clouds have never found that out.",
      actions = {
        { "Pat the dog", say "It allows it, briefly, without taking its eye off the black faced one. You are a thing happening to the dog while it is at work." },
      } },
    { name = "the fold",
      description = "A ring of dry stone wall on the last of the rock, open to the sky on the far side. It holds nothing in. The flock comes into it at night because the flock always has.",
      things = {
        { name = "the wall", description = "Slate on edge, without mortar, with through stones sticking out for steps. There are tufts of white caught on it, shoulder high, where they rub." },
        { name = "a tuft", description = "You pick one off. It is cool, and damp, and weighs nothing. It lies on your palm for a moment and then is gone, and your palm is wet. That was a pennyworth, she tells you, at Spindle's prices." },
        { name = "the counting stone", description = "By the gap, worn into a seat. There is a tally cut in it: every night's count, in fives, going round and round the stone and back over itself. The number does not change much. It is the cutting that matters." },
      } },
    { name = "the shearing shed",
      description = "A lean-to against the hut, open sided.",
      things = {
        { name = "the shears", description = "Two blades of thin horn on a spring of yew, a yard long. Iron is no good, she says. Iron makes them thunder." },
        { name = "a fleece", description = "Rolled and tied, on a slatted shelf, dripping slightly. It is last June's. It looks like fog in a parcel. Left alone it will be a puddle by spring, so it is not left alone; it is spun, on wet days, by lamplight.",
          actions = {
            { "Put a hand in it", say "Cold and soft and almost not there, like putting your hand into a morning. It closes over your wrist. When you take your hand out, your sleeve has a cuff of dew." },
          } },
        { name = "the spinning wheel", description = "With a bobbin of grey thread on it so fine that you see it only when it moves. The Lightlys sell it as {i}spider, 2nd quality{/}. She does not mind. Spiders, she says, have the name for it." },
        { name = "a row of jars", description = "Stone, corked, labelled in chalk: {i}Mizzle. Scotch mist. Sea fret (gift).{/} Trimmings, kept back for the Weather Office, which pays by the gross." },
      } },
    { name = "the hut",
      description = "One room, turf roofed, with a stove and a box bed. The door faces the flock.",
      things = {
        { name = "the stove", description = "Iron, small, with a kettle that never comes off. The steam goes out through a pipe in the wall, on the pasture side. The weak ones gather round it." },
        { name = "the box bed", description = "With doors. Inside the doors, pasted over every inch, a hundred years of the Office's printed forecasts, each with her family's corrections in pencil. The corrections are mostly one word." },
        { name = "a crook, hung up", description = "Her mother's. Shorter. The fan is plaited rush, gone yellow. \"She said the clouds liked it better,\" says Nan. \"I say they like what works.\"" },
        { name = "a lamb's bottle", description = "On the windowsill: a glass bottle with a teat, full of something white that moves. For orphans. You do not ask what an orphan cloud is fed on. She tells you anyway. It is breath, mostly, and patience." },
      } },
    { name = "the low pasture",
      description = "A long way down and to the south, a second slope of air, greyer, over the farmland. That is where they are taken to rain. You can see a few there now, heavy and dark, with a boy on a rope keeping them off the hay." },
    { name = "the mill, across",
      description = "On its own rock, half a mile off: a windmill with eight sails, turning very fast. The air round it has a combed look. There is something white caught on one sail, going round and round." },
    { name = "the sunset path",
      description = "She shows you where it runs, though there is nothing to see: a hand's sweep from the far air to the fold. \"There. They come down there.\" A cloud crossing that line slows, and turns, as a sheep does at a trod.",
      actions = {
        { "Walk a little way out", say "You put one foot over the wall, onto the path the flock takes. It goes through. Naturally it goes through. The dog looks at you, for the first time, with its whole face, and you bring the foot back." },
      } },
    { name = "a trough",
      description = "Stone, at the fold gap, kept full. They do not drink it. It is the other way about: on a hot day they are led over it, and the trough is found lower afterwards." },
    { name = "the rope ladder",
      description = "Made fast to two iron rings at the back of the spur. It goes down over the lip and out of sight, in toward the underside of something.",
      things = {
        { name = "the rungs", description = "Ash, round, every one worn on the top side. Halfway down, as far as you can lean to see, they are worn on the other side instead." },
        { name = "a sign", description = "{i}WRONG WAY UP. Hold on at the turn. Do not carry soup.{/}" },
      } },
    { name = "the track to the Top Rock",
      description = "The other way, uphill: steps cut in the spur, leading to a higher island with a dome on it. The dome is copper. Somebody has painted {i}GO AWAY{/} on it, large, on the side facing the village, and somebody else has added underneath, smaller, {i}he doesn't mean it{/}." },
  },

  exits = {
    { to = "le_tether", label = "The plank walk to Tether", description = "Boards on chains. They ring like a xylophone under your boots, badly." },
    { to = "le_upside", label = "The rope ladder", description = "Down, over the lip, and hold on at the middle, where the ladder changes its mind." },
    { to = "le_observatory", label = "The steps to the Top Rock", description = "Up, toward a copper dome with a discouraging notice on it." },
  },
}

space {
  id = "le_upside",
  region = "loose_ends",
  wonder = true,
  name = "Wrong Way Up",
  description = "Halfway down the ladder your stomach turned over, and then you were climbing up. You have come out onto a farm. It is a good farm, with a house, a barn, an orchard, a pond. It hangs from the underside of the pasture rock with its chimney pointing at the ground. The sky is under your boots. The kingdom is overhead, where a ceiling would be, with its rivers on.",
  palette = { bg = "#0c1018", text = "#dadfe8", dim = "#6a7690", accent = "#a0d080", border = "#3c4a6a" },
  ambience = { dust { glyphs = "˙·", color = "#90a8c0", rate = 0.3, speed = 0.3 }, stars { color = "#a0b0d0", rate = 0.1 } },

  things = {
    { name = "the ground above",
      wonder = true,
      key = "le_ground_above",
      description = "You tip your head back. There, where the sky ought to be, is everything you have walked across. {magic}The Grumbles hang point down like the teeth of a comb. The lake is a coin stuck to the ceiling. There is the Mumblewood, a green stain, and a thread that is the Barley Road, and at the end of the thread a smudge of smoke that must be Greenhollow, with all its opinions.{/} It took you a season to cross that. You could cover it with your hat. You feel no smaller for it. You feel, if anything, that the hat has gone up in the world.",
      actions = {
        { "Find the Tipsy Griffon", say "You find the smudge, and the road, and you decide which speck is the inn. You raise a hand to it. Up there, or down there, a barman who thinks you are in a ditch somewhere is wiping the same glass." },
        { "Reach up", say "You stretch. The kingdom is three miles past your fingertips. For all that, you have never been as near to having the whole of it in reach, and you stand on your toes a moment longer than makes sense." },
      } },
    { name = "the sky underfoot",
      description = "The farmyard ends at a fence. Past the fence is blue, deepening, with a star or two at the bottom of it. The hens scratch right up to the rail. One has gone through, and is standing on nothing, looking confused, a yard out and a foot down. It walks back.",
      actions = {
        { "Drop a pebble over the fence", say "You drop it. It falls away from the farm, downward as you stand, into the deep blue, toward the stars. You watch it go. Then you think about which way that was, and where a thing is going that falls in that direction, and you hold the fence with both hands." },
      } },
    { name = "Ada Wether",
      key = "le_ada",
      icon = "☺",
      description = "The farmer, Nan's sister: brisk, floury, entirely at ease. She was born on this farm and thinks nothing of it. It is the rest of you, she says, who are hanging by your feet, and she is too polite to bring it up at table.",
      things = {
        { name = "her apron", description = "The strings are tied in front and the pocket opens at the bottom. On her it looks sensible." },
        { name = "her hair", description = "In a bun. A few wisps have come loose, and they hang up." },
      },
      actions = {
        { "Ask how it works", say "\"How what works?\" You gesture at everything. She follows your hand, to the kingdom on the ceiling. \"Oh, that. It's just where they keep it.\" She goes back to her churn. \"You get used to them. Mind, I'd not live under all that. It'd prey on me.\"" },
        { "Ask about her sister", say "\"Nan's got the easy end. Clouds come when they're whistled. You try getting a cow to the top field when the top field's on the far side of the gravity.\" She thumps the churn. \"We swap at Christmas. She comes down. Up. She comes here.\"" },
        { "Ask for a glass of milk", say "She pours it. The milk goes from the jug to the glass in the usual way, and you drink it in the usual way, and it is the best you have had. It is only afterwards, handing back the glass, that you see the drip on the rim running toward the sky." },
      } },
    { name = "the farmhouse",
      description = "Stone, two storeys, with roses round the door. The chimney smokes, and the smoke goes down. Or up. Away from the roof and toward the stars below, anyhow, in a neat grey line.",
      things = {
        { name = "the doorstep", description = "Scrubbed white. A boot scraper, a cat, and a row of lanterns with a float under each and a sinker over, bought at Lightly's." },
        { name = "the weathervane", description = "A running fox, on the ridge. It points steadily at the Grumbles. It is the only weathervane in the Loose Ends that has never been wrong, since from here it is plain where the weather is kept." },
        { name = "the kitchen window", description = "With geraniums. Through it: a table laid for four, a dresser of blue plates, a clock. Everything is where it would be in any kitchen. You have never been so glad of a dresser." },
        { name = "the smoke", description = "You follow the line of it down into the blue until it thins. It is going to the same place as the pebble. There is a great deal of sky under this farm and a number of things have been sent into it, over the years, without a word of complaint coming back." },
      } },
    { name = "the pond",
      description = "Round, with ducks. The water lies in it, quite flat, in the hollow it has been given, and the ducks float on that. Above the pond, three miles off, is the lake, also flat, facing it. On a still day, Ada says, each has the other's reflection.",
      things = {
        { name = "the ducks", description = "Six, white, placid. They upend to feed and are then, for a moment, the right way up by your old reckoning. It does not seem to do them any good." },
        { name = "the reflection", description = "You look into the pond. There is the lake, small and silver, in the middle of the water. There is the dot of an island in the lake. It is a very long way to send a reflection, and it has arrived without a crease." },
      },
      actions = {
        { "Skim a stone", say "Four skips. The stone sinks, into the pond, toward the rock. That is two downs in one afternoon and you resolve to stop throwing things." },
      } },
    { name = "the orchard",
      description = "Apple trees, a dozen, their trunks going up into the rock and their branches hanging toward your sky. It is autumn in them. The apples are ripe.",
      things = {
        { name = "an apple", description = "Red, ripe, on a low branch. As you look the stalk gives. The apple drops, upward by the kingdom's lights, and lands in the grass at your feet with a thud.",
          actions = {
            { "Eat it", say "Sharp and sweet. It is an ordinary apple, which fell off an ordinary tree and hit the ground. You hold on to that. It is the one thing that has behaved since the ladder." },
          } },
        { name = "a swing", description = "Two ropes and a board, on the biggest tree. A child is on it, going high. At the top of each swing her plaits reach toward the stars below, and then she comes back. Nobody is watching her. Nobody needs to." },
        { name = "the beehives", description = "Three straw skeps. The bees go out over the fence, into the blue, and come back heavy. There is not a flower in that direction for as far as there is a direction. The honey is very pale and Ada will not say what it is of." },
      } },
    { name = "the barn",
      description = "Timber, tarred, with a hay loft. The hay is forked up into it, toward the rock, and stays.",
      things = {
        { name = "the cow", description = "Brown and white, chewing. She was let down the ladder as a calf in a sling, bawling, and went quiet at the turn, and has not given it a thought since." },
        { name = "the cart", description = "Two wheeled, shafts down. It is used for the hay and for the yearly trip to market, which involves the ladder, four men, and language." },
        { name = "a horseshoe over the door", description = "Points up, to keep the luck in. You work out which way that is. Then you work it out again. It is either very lucky or the reverse, and the family has done all right." },
        { name = "the hayloft", description = "Sweet and dim. Somebody has a nest of blankets up there, a candle stub and a book: {i}Countries of the Lower World, with Plates.{/} The plates of mountains have been turned so that the points go down, and pencilled {i}fixed{/}." },
      } },
    { name = "the rain barrel",
      description = "Under the eaves, full. You ask where rain comes from, here. Ada looks at you with some concern. It comes from the clouds, she says. Her sister brings them round. You look for the clouds and find them level with your knees, beyond the fence, passing." },
    { name = "the ladder's turn",
      description = "Where you came in: the rope ladder rising out of the yard toward the rock, or descending into the yard from it. At a point twenty rungs along, the wear on the rungs swaps sides.",
      things = {
        { name = "the turn itself", description = "You go back and stand at it with a hand on the rope. There is one rung where you weigh nothing. Above it you hang one way. Below it, the other. On it you are let off, for the length of a held breath, by both.",
          actions = {
            { "Stand on the rung", say "You find it with your feet and let go with one hand. Nothing pulls. Your hair does as it likes. Your stomach, which has had a hard day, gives up and waits for instructions. You could stay here. A voice from the farmhouse says there is tea, and that turns out to be a direction." },
          } },
        { name = "a basket on a line", description = "For soup, and anything else that minds being upside down. It goes round the turn on a pulley and is tipped upright, with a neat flick, by a wire. Somebody put thought into that." },
      } },
    { name = "the washing line",
      description = "Across the yard. The shirts hang toward the rock, like anybody's shirts. It is the most reassuring line of washing you have seen and you look at it for a while." },
    { name = "a child's drawing, on the barn door",
      description = "In chalk. A house, a cow, four people, a sun. Above them she has drawn a long brown lump with trees on, and written {i}THE LID{/}." },
    { name = "the far fence corner",
      description = "Where the yard runs out to a point over the most sky. There is a bench, and a telescope on a post, pointing down.",
      things = {
        { name = "the telescope", description = "Brass, a ship's glass. A label on a string: {i}Lent by I. Cope. He says the seeing is better from underneath and he is welcome to it.{/}",
          actions = {
            { "Look through it", say "Stars. More than you see at night, though it is day up there, or down there, on the ground. They do not twinkle. And among them, low in the glass, a dark place with none, quite small from here. From under here it is not round. It has a corner." },
          } },
        { name = "the bench", description = "Ada's husband sits here in the evenings with his pipe, looking down between his boots at the first stars coming out. He says it rests him. He says a man ought to see where the smoke goes." },
      } },
  },

  exits = {
    { to = "le_pasture", label = "The rope ladder", description = "Up, then a rung where you weigh nothing, then up the other way." },
  },
}
