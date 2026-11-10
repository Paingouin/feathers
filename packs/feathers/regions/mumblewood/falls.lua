space {
  id = "upward_falls",
  region = "mumblewood",
  wonder = true,
  name = "The Climbing Falls",
  description = "Here the millstream meets a cliff and, having come this far uphill, simply keeps going. The water climbs the rock in a long white rope, {shimmer}unhurried, roaring softly upwards{/}, and pours over the top out of sight.",
  palette = { bg = "#0a1113", text = "#c6d2cf", dim = "#62757a", accent = "#8fd6d0", border = "#2c4a4d" },
  ambience = {
    steam { glyphs = "·∙˙", color = "#7fa8a8", rate = 0.7, speed = 1.2 },
    shimmer { color = "#9fe0dc", strength = 0.2 },
  },

  things = {
    { name = "the plunge pool",
      description = "At the foot, where the water gathers itself before the climb. It is perfectly still. It is taking a breath.",
      actions = {
        { "Drop a pebble in", say "It sinks. A little later, some way up the falls, you see it go by." },
      } },
    { name = "the spray",
      description = "The only part that falls. It drifts down on you, slow as an afterthought." },
    { name = "a salmon",
      icon = "α",
      description = "Going {i}down{/} the falls, with enormous effort, against the current. It looks furious. Everything it was ever told has turned out to be backwards.",
      actions = {
        { "Cheer it on", say "It makes another yard downwards. You have never seen a fish look grateful, and you do not now." },
      } },
    { name = "the wet steps",
      description = "Cut into the cliff beside the water by somebody who wanted to walk up next to it. Each has a hollow worn in the middle. Many have.",
      things = {
        { name = "a handprint", description = "Pressed into the rock at the steepest step, at the height where anyone would steady themselves. The rock was not soft. The hand was patient." },
      } },
    { name = "a surveyor's stake",
      description = "Hammered in by the Royal Survey. The tag reads: {i}Waterfall. Direction: disputed. See appendix.{/}",
      things = {
        { name = "the appendix", description = "Nailed underneath. It reads, in full: {i}No.{/}" },
      } },
    { name = "the climbing water",
      key = "water curtain",
      description = "The fall itself, close to: a white sheet two paces wide going up the rock with a steady roar. Behind it the cliff is darker than cliff should be.",
      variants = {
        { when = flag "mw_behind_falls",
          description = "The fall itself, close to: a white sheet two paces wide going up the rock. Behind it there is a cave. You know that now, as do your boots, your hose and the inside of your collar." },
      },
      things = {
        { name = "a dipper", icon = "v",
          description = "A small round bird with a white bib, bobbing on a wet stone. It walks into the foot of the falls, goes up inside the water on foot, and comes out at the top, dry, with a grub.",
          actions = {
            { "Watch where it goes", say "Halfway up it steps sideways, out of the back of the water, and is gone for a moment. Then it is back in the fall and climbing. There is somewhere behind there to step to." },
          } },
        { name = "the dark behind", description = "A shadow the size of a door, and steady, where the rest of the rock flickers with moving water." },
      },
      actions = {
        { "Step through the water", when = no(flag "mw_behind_falls"), set "mw_behind_falls", fx "wash",
          say "You hold your breath and walk into it. It is not like being rained on. It starts at your boots and works up, and the last of it leaves by your hat. Then you are through, standing in a dry cave with the falls for a front door, soaked from the ground upward." },
      } },
    { name = "a rainbow",
      wonder = true,
      icon = "∩",
      description = "The spray makes one, as spray does. Here it stands the other way up: {shimmer}a bowl of colour, both ends in the air, with its curve resting on the pool{/}. Nobody has found gold where it touches down. There is a small bright pebble there, and people have been content with that.",
      things = {
        { name = "the pebble at the bottom of the bow", description = "White quartz, wet, with all seven colours lying across it in order. You pick it up and it is a white pebble. You put it back and it is everything again." },
      },
      actions = {
        { "Put your hand in the colours", fx "sparkle",
          say "Your hand goes red, then gold, then green, and blue to the wrist. It does not feel of anything. You take it out and it is your hand, though for the rest of the day you think rather better of it." },
      } },
    { name = "a painter",
      icon = "☺",
      description = "A woman at an easel, in a hat tied on with a scarf, painting the falls. She has been here a week. Every morning she turns the canvas the other way up, swears, and starts again.",
      things = {
        { name = "the canvas",
          description = "A waterfall, beautifully done. It is a perfectly ordinary waterfall, falling. \"My hand will not do it,\" she says. \"I look up and see it climb, I look down and I have painted it coming down. Forty years of training. It is like a dog that will only sit.\"" },
        { name = "a heap of ruined canvases", description = "Seven, face down in the ferns. A snail has crossed one of them from bottom to top, leaving a silver line, and that, she says bitterly, is the nearest any of them comes." },
        { name = "her paintbox", description = "Every colour worn to a hollow except the one labelled {i}Fall White{/}. That one she has scraped out and refilled by hand, and written {i}Rise{/} on the lid." },
      },
      actions = {
        { "Suggest painting it upside down", say "\"I tried. Then I turn it round and it is still wrong, only now the trees are wrong as well.\" She looks at the falls with real hatred, and then, after a moment, without it. \"It is very lovely,\" she admits. \"That is what is so irritating.\"" },
      } },
    { name = "the old fish ladder",
      description = "A flight of stone troughs built up the cliff by the Council, long ago, to help the fish get up the falls. The fish were already up. The fish cannot get down. The ladder faces the wrong way and the Council has never been told.",
      things = {
        { name = "the top trough", description = "Dry, and full of leaves, with a brass plate: {i}Erected for the Benefit of the Salmon.{/} A salmon has not been near it in two hundred years." },
        { name = "a newt in the bottom trough", description = "Orange-bellied, hanging in three inches of rainwater with its legs out, entirely satisfied. It is the only creature the ladder has ever benefited." },
      } },
    { name = "the ferns",
      description = "Hart's tongue and maidenhair, thick on the wet cliff, beaded and shining. On the side nearest the water, the drops on them run upward to the tips and let go.",
      things = {
        { name = "a drop on a frond", description = "It gathers at the stem, travels up the rib, swells at the point, and leaves, rising past your face like the smallest balloon at the fair." },
      } },
    { name = "a pilgrim's cairn",
      description = "A heap of flat stones at the foot of the wet steps, each one left by somebody who came to see the falls and wanted it known. The top stone is always wet on its upper side and dry beneath.",
      things = {
        { name = "the oldest stone", description = "At the bottom, half sunk, with a cup scratched on it. Just a cup. Whoever carved it thought that was enough to go on." },
      },
      actions = {
        { "Add a stone", say "You find a flat one and set it on top. It is a little crooked. So are all the others. It is not the kind of heap that minds." },
      } },
    { name = "a kingfisher",
      icon = "v",
      description = "On an alder twig over the plunge pool: a small bird the blue of the inside of a flame. It dives. Here that means it drops, hits the water, and is carried a yard up the fall before it can get out again, with a minnow and a look of deep annoyance.",
      actions = {
        { "Admire it", say "It lets you, for about four seconds, and then it is a blue line and then nothing. You are left looking at the twig, which is still bouncing." },
      } },
    { name = "the mossy boulders",
      description = "Great green lumps tumbled about the foot of the cliff. They fell from the top, long ago, in the ordinary direction. The falls have never quite forgiven them for it.",
      things = {
        { name = "a cushion of moss", description = "Deep as your hand and full of water. Press it and the water does not run out. It runs in." },
        { name = "a grass snake", description = "Olive green with a yellow collar, coiled on the warmest boulder. {danger}It hisses.{/} Then it rolls on its back with its mouth open and plays dead, badly, with one eye on how you are taking it." },
      } },
  },

  exits = {
    { to = "forest_path" },
    { to = "lake_shore", description = "Up the wet steps beside the water, to wherever it thinks it is going." },
    { to = "behind_falls", label = "Behind the water",
      description = "Through the climbing sheet of the fall, to the dark place the dipper steps into.",
      requires = flag "mw_behind_falls", hidden = true },
  },
}

space {
  id = "behind_falls",
  region = "mumblewood",
  secret = true,
  name = "The Cave Behind the Climb",
  description = "A dry cave the size of a chapel, with the falls for one wall: a window of white water going up, lighting everything the green of a bottle. The roar is softer in here. Pilgrims found this place eight hundred years ago, and kept it, and then one by one stopped coming.",
  palette = { bg = "#08120f", text = "#c2d4cc", dim = "#58766c", accent = "#8fe0c8", border = "#24463e" },
  ambience = {
    shimmer { color = "#7fd0c0", strength = 0.3 },
    steam { glyphs = "·∙˙", color = "#6fa89c", rate = 0.3, speed = 0.6 },
  },

  things = {
    { name = "the window of water",
      description = "The back of the falls. From in here you can see through it: the pool, the alder, a painter's hat, all of it rippling and all of it sliding slowly downward as the water goes up.",
      things = {
        { name = "the dipper's ledge", description = "A flat stone just inside the water, white with droppings. So this is where it goes. It has a nest here, a ball of moss tucked in a crack, with a doorway on the dry side." },
      } },
    { name = "the undecided drop",
      wonder = true,
      icon = "°",
      description = "In the middle of the cave, at the height of your chest, a single drop of water hangs in the air. It fell from the roof, as drops do. Halfway down it came level with the falls and heard the argument for going the other way. {magic}It has been thinking it over ever since.{/} The pilgrims built their shrine around it.",
      actions = {
        { "Hold your hand under it", say "Nothing lands. You wait a long time. You have the clear sense of being kept waiting by something that is taking a decision seriously, and that it would be wrong to hurry it." },
        { "Blow on it", say "It trembles, and its one small light swings round the cave. Then it steadies, exactly where it was. You have not helped. You have been one more thing to take into account." },
      } },
    { name = "the pilgrims' shrine",
      description = "A ring of low stone benches round the hanging drop, and a niche cut in the back wall. No god's name on any of it. They came to sit beside something that had not made its mind up, and found it a comfort.",
      things = {
        { name = "the benches", description = "Worn into seats, eleven of them. The twelfth was never cut; there is a rough block where it would go, and a chisel mark, and that is all." },
        { name = "the niche",
          key = "cup niche",
          description = "A hollow in the rock at eye height, with a trickle running up the wall into it, and standing in the trickle a plain stone cup, brimming.",
          variants = {
            { when = item "upstream_cup",
              description = "A hollow in the rock at eye height. A trickle runs up the wall into it, finds no cup, and goes on up to the roof. There is a ring on the stone where the cup stood for eight hundred years. You left a button in the middle of it." },
          },
          actions = {
            { "Take the cup", once = true, give "upstream_cup",
              say "It comes away from the rock with a small crack, like a stalk. It was growing there. The water in it does not spill; it goes on climbing out over the rim and off into the air. You hold it very level all the same. {gold}The Upstream Cup.{/} Kings sent for this, and the pilgrims said that it was not theirs to give. There are no pilgrims now, and you leave a button." },
          } },
        { name = "the offerings", description = "Cups. Dozens, along a ledge: clay, horn, pewter, one of gold. Each pilgrim brought the cup they drank from at home and left it here, empty, the right way up. All of them are dry." },
      } },
    { name = "the roof",
      description = "Stone icicles, as in any cave. Here they grow up from the floor only, thin and tall as candles, reaching for a roof that has none to send down.",
      things = {
        { name = "the tallest one", description = "It has an inch to go. It has had an inch to go for a century. Somebody has scratched a line on the roof where it will touch, and a date, and then a later date, and then {i}soon{/}." },
      } },
    { name = "a pilgrim's bedroll",
      description = "In a dry corner: a blanket gone to threads, a staff, a wooden bowl. The last of them stayed.",
      things = {
        { name = "the staff", description = "Hazel, with a cup carved on the knob, and a brass ferrule worn through to the wood. A great many miles, and the last of them uphill beside water." },
        { name = "the wooden bowl",
          description = "Turned from beech, split by the dry. Inside it, written in charcoal that has lasted better than the bowl: {i}It is all right not to know yet.{/}" },
      } },
    { name = "the cave moss",
      description = "It grows on the floor in a thick green fleece, and gives off a little light of its own, enough to see your hand by. It likes the spray. It is the only thing in here that is not waiting for anything.",
      things = {
        { name = "a cave cricket", description = "Pale, long-legged, with feelers twice its length. It sings, very quietly, one note. In here the note goes up at the end, like a question." },
      } },
    { name = "the wall carvings",
      description = "All round the cave at shoulder height: a band of small figures walking in a line, each carrying a cup. They walk up the wall, across the roof, and down the other side.",
      things = {
        { name = "the last figure", description = "It has put its cup down and turned round to look back the way it came. The carver gave it a face, alone of all of them. It is smiling." },
      } },
  },

  exits = {
    { to = "upward_falls", label = "Back through the water", description = "Out through the fall. You will be wet again, from the boots up, and you find you do not mind." },
  },
}
