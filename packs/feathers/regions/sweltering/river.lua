-- The Slow Brown, the boat that goes up it, and the falls at the top.

space {
  id = "jg_river",
  region = "sweltering",
  name = "Aboard the Perhaps",
  description = "A flat boat with a tin roof, a stove, a stovepipe and a hammock, on a river as wide as a market square and the colour of strong tea. The trees meet overhead. The boat goes up the river and comes down the river, and the pilot does both from the hammock.",
  variants = {
    { when = flag "jg_pilot_awake",
      description = "A flat boat with a tin roof, a stove, a stovepipe and a hammock, on a river as wide as a market square and the colour of strong tea. The trees meet overhead. The engine is going, in its way. The pilot has one toe on the tiller and one eye open, and that is the whole crew at action stations." },
  },
  palette = { bg = "#0a1008", text = "#d4dcc0", dim = "#62745a", accent = "#d8a848", border = "#34502c" },
  ambience = {
    steam { glyphs = "˙°∙", color = "#46604a", rate = 0.5 },
    fireflies { color = "#d0e078", rate = 0.2 },
    drip { glyphs = "⠁⠂⠄", color = "#4c8a58", rate = 0.2 },
  },

  things = {
    { name = "the pilot",
      key = "jg_pilot",
      icon = "☻",
      description = "A long woman of about sixty in a hammock in the bow, with a hat over her face and a pipe sticking up through a hole in the hat. Her name is Yessa. She knows every bend, bar and sunken tree in three hundred miles of river, and she knows them with her eyes shut, which is how she prefers it.",
      variants = {
        { when = flag "jg_pilot_awake",
          description = "A long woman of about sixty in a hammock in the bow, hat tipped back an inch, pipe going. One bare foot is hooked over the tiller rope. The boat goes round a sunken tree that you did not see, and neither, you would swear, did she." },
      },
      things = {
        { name = "her hat", description = "Palm leaf, with a hole burned in the crown for the pipe. She says a pilot who has to look is a pilot who does not know." },
        { name = "her toe", description = "The big one, left foot, through a loop of the tiller rope. It moves about the width of a coin every minute or two. Three hundred miles of river are steered with it." },
        { name = "her pipe", description = "Clay, short, and lit, though you have not seen her light it. The smoke keeps the flies off her and sends them over to you." },
      },
      actions = {
        { "Wake the pilot", when = no(flag "jg_pilot_awake"), set "jg_pilot_awake",
          say "You cough. You say \"Excuse me.\" You try \"Ahoy.\" In the end you ask the hat, quite quietly, whether the boat goes up river. \"Perhaps,\" says the hat. A foot comes out of the hammock and finds a rope. Under the tin roof something bangs twice and begins to chug. \"Where to? There's the village, the camp, and the falls. I don't stop at the temple. Nobody does. You walk to that, from the camp.\"" },
        { "Ask about the river", when = flag "jg_pilot_awake",
          say "\"She's slow and she's brown,\" says Yessa. \"Whoever named her was not a liar. She comes over the falls from somewhere and goes out at the Landing. In between she moves the bars about at night to see if I'm paying attention.\"" },
        { "Ask why the boat is called the Perhaps", when = flag "jg_pilot_awake",
          say "\"People kept asking would she get there.\"" },
      } },
    { name = "the engine",
      description = "Under the tin roof: a boiler like a milk churn, one piston, a flywheel, and a pipe that goes up through the roof. It burns wood, husks, and on one occasion a naturalist's notes. It came out from the north in pieces. No two pieces were from the same engine.",
      things = {
        { name = "the pressure gauge", description = "The needle rests on a peg at the top of the dial, marked {i}DANGER{/}. It has been there for eleven years. Yessa says that it is shy, and likes to lean on something." },
        { name = "a maker's plate", description = "Brass, half polished away: {i}...KOVER STEAM & PATENT...{/} and a number. Under it, a second plate from a different maker, and under that, a third, in a script you cannot read." },
        { name = "the stoker", description = "A boy called Pip, twelve, asleep on the wood pile with a log in his arms. He wakes when the chug changes, puts the log in, and is asleep again before the door shuts.",
          actions = {
            { "Offer to stoke", say "He opens one eye, looks at your hands, and hands you the smallest log. You put it in. He takes it out and puts it in the other way round. The chug settles. He goes back to sleep. There is, you gather, a way." },
          } },
      } },
    { name = "the river",
      description = "Brown, smooth, and stronger than it looks. Whole trees go by, slowly, with their roots in the air. You cannot see an inch into it. Things rise, look at the boat, and go down again without making a ring.",
      things = {
        { name = "the pink dolphins",
          wonder = true,
          description = "You take the first for a trick of the light: a long pale back, rolling, the pink of the inside of a shell. Then there are five, on both sides of the boat, keeping pace. They have long thin beaks and small eyes, and they are smiling, though they would be whether they meant it or not. One rolls on its side and looks straight up at you through the brown water as you might look at a face in a window. {shimmer}Then it breathes{/}, a soft puff, as warm as your own, and is gone.",
          things = {
            { name = "the one with the scar", description = "A notch out of the fin. Yessa says that one has followed the boat since she was a girl, and followed her mother's canoe before that. She does not put a name to it. She says that it has one." },
          },
          actions = {
            { "Trail a hand in the water", say "Something smooth and firm goes under your palm, the whole length of it, unhurried, as a cat goes under a hand. You sit very still for a while afterwards. Yessa says nothing, and says it kindly." },
          } },
        { name = "a log with eyes", description = "It is a log. It has two knots on it, close together, just clear of the water, and it is keeping level with the boat against the current, as logs do not.",
          actions = {
            { "Stare back", say "The knots sink without a ripple. Further off, on the bank, a long shape that you had taken for mud slides into the water after it. \"They don't eat people,\" says Yessa. \"They have never had one sit still long enough to find out if they'd like to.\"" },
          } },
        { name = "the lily pads", description = "In the slack water: green trays six feet across, with the rims turned up. A long-legged bird is walking from one to the next, and a child from the village is sitting on another, fishing, with a small dog." },
      } },
    { name = "the banks",
      description = "No banks to speak of. The trees stand in the water up to their knees, and behind them more trees, and behind those a green that goes back until it is black.",
      things = {
        { name = "a tree full of monkeys", description = "Red ones, forty or so, howling. The noise goes over the river like a gale in a chimney. It means, as far as anybody can tell, {i}this is our tree{/}. Nobody has ever said that it was not." },
        { name = "a sloth", description = "On a branch over the water, hanging by all fours, green in the fur. It is turning its head to look at the boat. It began when you came round the bend. By the time it has finished you will be at the next one.",
          actions = {
            { "Wave to it", say "You wave. A long time later, well astern, one arm comes slowly off the branch. It may be waving. It may have started to scratch last Tuesday." },
          } },
        { name = "blue butterflies", description = "The size of your two hands, and a blue that has no business being out of doors. They come down to the wet mud at the edge by the hundred and sit with their wings shut, brown as dead leaves. Then the boat's wash reaches them, and the bank goes up like a thrown sheet." },
        { name = "a strangler fig", description = "It grew down around another tree and killed it, long ago, and the dead one rotted away. What is left is a tower of roots a hundred feet high with nothing inside. Bats live in the nothing." },
      } },
    { name = "the Mirror Reach",
      wonder = true,
      description = "A long straight mile where the current goes slack and the wind cannot get in. The water lies flat as a floor and takes the whole of the forest on to itself, leaf for leaf, so that there are two skies and the boat is going along between them. {shimmer}Yessa cuts the engine here and lets her drift.{/} A fish rises, and the rings go out across the tree tops.",
      things = {
        { name = "the reflection", description = "You lean over. There is your face, and behind it the canopy, and through a gap in the canopy a single cloud, very deep down. A dolphin swims across the cloud." },
        { name = "the silence", description = "Even the monkeys keep it. It is the one stretch of the river where you can hear the drops falling off the pole, and each has a second drop coming up from below to meet it." },
      },
      actions = {
        { "Drop a pebble in", say "You have one in your pocket. You hold it out over the side, and Pip opens an eye, and Yessa's toe twitches, and you put it back. Some things you are allowed to break and this is not one." },
      } },
    { name = "the cabin",
      description = "The part under the tin roof that is not engine: a table, a bench, a shelf and a stove with a pot on it.",
      things = {
        { name = "the pot", description = "River fish, peppers and a green banana, simmering. It is the same pot her mother kept. It has not been empty in sixty years, only added to.",
          actions = {
            { "Taste it", say "You take a spoonful. It is very good. Then the pepper arrives, a little after the rest, as the pilot does. Your ears ring. Pip, in his sleep, pushes a gourd of water towards you with his foot." },
          } },
        { name = "the chart", description = "Pinned to the table: the river, drawn in charcoal on bark. It is one line with bends in it. The sand bars are not marked. \"They move,\" says Yessa. \"I'd only be drawing where they were.\"" },
        { name = "the passenger tally", description = "Knots in a cord by the door. A plain knot for a passenger carried up; a second beside it for one carried back. Near the top of the cord there is a long run of single knots, and a small carved fish against each, for remembrance.",
          things = {
            { name = "the single knots", description = "\"Explorers,\" says Yessa. \"They would get off where there was no landing. They said that they would find their own way back.\" She pulls on her pipe. \"They were very sure about it.\"" },
          } },
        { name = "a shelf of left luggage", description = "A sun helmet, a butterfly net, a folding bath, a brass telescope gone green, and a tin trunk stencilled {i}Sir L. THRUBWELL. EXPEDITION. No. 1 of 60{/}. She is keeping them, she says, in case." },
      } },
    { name = "the tin roof",
      description = "Corrugated, red with rust, and too hot to touch. When the rain comes, which it does at four each day for twenty minutes, nobody on board can hear anything else and nobody tries.",
      things = {
        { name = "the roof garden", description = "Six pots of peppers and a tomato, lashed to the ridge. Pip waters them with a tin on a pole. The tomato is from the north and is being watched by the whole river with deep suspicion." },
        { name = "a snake", description = "Thin, green, as long as the roof, lying along the gutter. It came aboard at the Landing in the rains three years ago and has paid its way in rats. It has a saucer." },
      } },
    { name = "the bow",
      description = "Blunt, tarred, with an eye painted on each side so that the boat can see where it is going. One is open. The other is shut, in tribute." },
    { name = "the landing stages",
      description = "Three, in three hundred miles: a village on legs, a rope ladder with a flag on it, and a rock at the foot of a noise. You are told that there used to be a fourth. The jungle wanted it." },
    { name = "the four o'clock rain",
      description = "You can hear it coming up the river before it gets here, like applause. It falls straight down, warm, as hard as a pump, for twenty minutes by anybody's watch, and stops. Afterwards everything steams, yourself included.",
      actions = {
        { "Stand out in it", say "You are wet to the skin before you have finished stepping out. It is like being washed by somebody large and brisk. When it stops you are cleaner than you have been since Greenhollow, and in ten minutes you are dry, and in fifteen you need it again." },
      } },
    { name = "the fuel pile",
      description = "Split logs, coconut husks, and a bundle of paper tied with string.",
      things = {
        { name = "the bundle of paper", description = "Pages in a small exact hand: {i}Brandish's Greater Heron. Brandish's Lesser Heron. Brandish's Heron (medium).{/} Yessa says the professor paid his fare in these. She has not told him what the engine thinks of them." },
      } },
    { name = "a hammock for passengers",
      description = "Slung aft, under the roof. You get into it at the third attempt. It is the first time since you left home that nothing at all is expected of you, and the river goes by at the pace of a thought you are in no hurry to finish.",
      actions = {
        { "Lie in it", say "The roof ticks. The engine chugs. A leaf comes down on your chest and you leave it there. Some time later you wake, and the trees are different trees, and Yessa has not moved. Nothing has been lost. That is the trouble with hammocks: they are right." },
      } },
  },

  exits = {
    { to = "jg_landing", label = "Down river, to Mango Landing",
      description = "With the current, to the jetty and the sea." },
    { to = "jg_village", label = "The village on legs",
      description = "A day up, where the river widens into a lake of reeds and the houses stand in it.",
      requires = flag "jg_pilot_awake", locked = "The boat is tied up, and the pilot is asleep with her hat on." },
    { to = "jg_camp", label = "The rope ladder with a flag",
      description = "Two days up, on the left bank, where a college has pitched its tents and renamed the wildlife.",
      requires = flag "jg_pilot_awake", locked = "The boat is tied up, and the pilot is asleep with her hat on." },
    { to = "jg_falls", label = "As far as she goes",
      description = "To the head of the river, where it comes down out of the sky.",
      requires = flag "jg_pilot_awake", locked = "The boat is tied up, and the pilot is asleep with her hat on." },
  },
}

space {
  id = "jg_falls",
  region = "sweltering",
  wonder = true,
  name = "The Falls of Standing Rain",
  description = "The river ends at a wall. The wall is a cliff of red rock half a mile high with forest along the top, and the Slow Brown comes over the lip of it in one white piece and never arrives. It is too far. Somewhere on the way down the water gives up being a river and turns to rain, and the rain hangs in the gorge and drifts, so that at the bottom there is no plunge and no pool, only a place where it is always raining, gently, out of a clear sky.",
  palette = { bg = "#091210", text = "#d0e4dc", dim = "#5c7c74", accent = "#88d8c8", border = "#2c5448" },
  ambience = {
    rain { color = "#7cc0b4", rate = 0.5, speed = 0.4 },
    fog { color = "#183028", speed = 0.2, strength = 0.4 },
    shimmer { color = "#b0e8d8", strength = 0.2 },
  },

  things = {
    { name = "the fall",
      wonder = true,
      icon = "≈",
      description = "You put your head back until your neck creaks. A white thread comes over the edge, very high, very slow. It widens. It frays. Halfway down it is a veil and you can see the red rock through it, and below that it is not there at all, only a brightness in the air. {wave}Half a mile of river is hanging over you, deciding where to land.{/} The sound is not a roar. It is a hush, the kind a great many people make when they are all listening.",
      things = {
        { name = "the lip", description = "A notch in the skyline, and a gleam. Yessa says nobody has been up there. She says that the river must come from somewhere, and that she has never felt it was her business where." },
        { name = "the place where it stops being water", description = "You try to find the exact height. There is none. Your eye follows the white down and at some point is looking at air, and cannot say when that happened. You try four times. It is like trying to catch yourself falling asleep." },
      },
      actions = {
        { "Shout up at it", say "Your voice goes up into the hush and is not sent back. You feel that it has been received and filed." },
      } },
    { name = "the rain",
      description = "Fine, warm, and falling from a blue sky. It does not come down in lines. It wanders, on the air of the gorge, and now and then some of it goes back up.",
      things = {
        { name = "a drop", description = "You watch one come towards your hand. It slows. It hangs an inch over your palm, turning, with the whole gorge upside down in it. Then it settles as lightly as a fly." },
        { name = "the rainbows",
          wonder = true,
          description = "Not bows. Rings, whole ones, lying in the air at every height, as many as there are places to stand. You move a step and they all move, and a new one opens around your own shadow on the mist with you at the centre of it. {shimmer}Each person in the gorge has a different one, and each is in the middle of their own.{/} Pip says that when he was small he thought it was only him.",
          actions = {
            { "Walk towards one", say "It keeps its distance, exactly, however you go. You walk at it for a hundred yards over wet rock. At the end you are soaked, and the ring is where it was, and you understand that it has been walking with you the whole time." },
          } },
      } },
    { name = "the gorge floor",
      description = "Black rock, polished, in shelves, with moss on everything that faces up and ferns on everything that does not.",
      things = {
        { name = "the moss", description = "A hand deep and soaking, greener than paint. You press it, and your hand print fills with clear water and holds it up to you." },
        { name = "the thousand streams", description = "The rain has to become a river again, and it does it here, drop by drop, off every leaf and ledge, in trickles the width of a finger that find each other and join. By the landing rock it is the Slow Brown once more, and not yet brown. You are looking at a river being put back together." },
        { name = "a frog the size of a thumbnail", description = "Gold, on a wet leaf, with black eyes. It sings one note, thin and high as a glass rubbed with a wet finger. Another answers from across the gorge, a little lower. They are a chord, and have been for longer than there have been ears that minded.",
          actions = {
            { "Whistle the note", say "You get it nearly right. The frog stops. Across the gorge, the other stops. There is a pause of some delicacy. Then both start again, a shade louder, exactly as before, as people do at a concert when someone has coughed." },
          } },
      } },
    { name = "the landing rock",
      description = "Flat, with an iron ring let into it, and the Perhaps nosed up against it with the engine ticking. This is as far as she goes. This is as far as anything goes.",
      things = {
        { name = "the iron ring", description = "Old, deep rusted, and set in lead. Yessa's mother tied up to it, and hers. Nobody in the family set it there. It was here before they came, and so was the groove a rope has worn in the rock beside it." },
        { name = "names on the rock", description = "Cut small, by people who got this far: river people, mostly, with a sign instead of a name. One {i}L. THRUBWELL, who shall go further{/}. Under it, a neat arrow pointing back down the river, in a different hand, and {i}no he won't{/}. Lower down, with a penknife: {i}Wilf woz ere. Got wet.{/}" },
      } },
    { name = "the orchids",
      description = "On every branch within reach of the rain, and they are not the kind in shops. One is white and the size of a soup plate. One is no bigger than a gnat and smells of cloves for ten yards.",
      things = {
        { name = "the ghost orchid", description = "It has no leaves. A few grey roots on the bark, and from them, on a thread, a white flower that seems to hang in the air an inch clear of anything. It opens for one night in the year. It is open now. You did nothing to deserve it." },
        { name = "an orchid shaped like a bee", description = "Brown, furred, striped, and perfect. A bee is courting it. The bee is going to be disappointed, and will carry the news to the next flower, which is the idea." },
      } },
    { name = "the swifts",
      description = "Small dark birds, thousands, that live on the cliff behind the fall. They go in and out through the veil at full speed without slowing, and come out the far side dry.",
      things = {
        { name = "the cliff behind", description = "You can see ledges through the thin places, white with droppings, crowded. There is no way to it except through half a mile of falling river, so nothing has ever troubled them, and they have never learned to be afraid of anything." },
      } },
    { name = "a hollow in the rock",
      description = "A basin, waist deep, filled by the rain and warmed by the stone. The river people call it the Bath. They say you come out of it the same as you went in, only less cross.",
      actions = {
        { "Get in", say "It is the temperature of a kind word. The rain falls on your face and the rings of colour stand in the air above you. You stay in until your fingers wrinkle. When you get out you are the same, and less cross, and they were right." },
      } },
    { name = "the red cliff",
      description = "Sandstone, in bands, each band a different red, half a mile of them one on another. A naturalist has been here with a ladder and a paint pot and numbered the bottom twelve.",
      things = {
        { name = "the painted numbers", description = "{i}1{/} to {i}12{/}, in white, and then a note at the top of the ladder's reach: {i}Counted to here. Each band a season of flood. Estimate for whole cliff: more than there have been years. Recount. H.V-B.{/}" },
        { name = "a shell in the stone", description = "Band seven: a sea shell, coiled, as big as a wheel, turned to rock. It is half a mile from the top of a cliff and three days from the sea. It does not explain itself." },
      } },
    { name = "a giant fern",
      description = "It stands on a trunk like a tree, twenty feet, and uncoils its new fronds from the top like a bishop's staff. One of them is opening now, slowly enough to seem still and fast enough to catch. In the Sweltering even the patience is in a hurry." },
    { name = "the offerings",
      description = "On a ledge by the landing: flowers, fruit, a carved fish, a new nightcap from Pomfret's with the ticket on. The river people leave them for the fall. Nobody is sure what it wants. They leave what they would like themselves.",
      actions = {
        { "Leave something", say "You go through your pockets. A boiled sweet from Aldmoor, with fluff on. You put it on the ledge between a mango and the nightcap. It looks very small. Pip, behind you, nods, as one who has seen worse given and better meant." },
      } },
    { name = "the cold spot",
      description = "At one place on the gorge floor, a yard across, the rain comes down cold. Not cool: cold, as it would at home, with a north smell in it. The river people step round it. Nothing grows there but a patch of plain grass, and one daisy." },
  },

  exits = {
    { to = "jg_river", label = "Back aboard the Perhaps",
      description = "Down the wet rock to the boat, and the long drift home." },
  },
}
