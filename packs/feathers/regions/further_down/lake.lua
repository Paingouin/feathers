-- The lake with no far side, and the island in the middle of it.

space {
  id = "fd_lake",
  region = "further_down",
  wonder = true,
  name = "The Lake With No Far Side",
  description = "The river comes out between two last rocks and stops being a river. Ahead there is water, flat and black, and no roof you can find, and no other shore. {magic}This is not a matter of distance. The Murmurs have rowed out for a month and found only more of it.{/} There is a beach of grey shingle, and you are standing on the one edge the lake has.",
  palette = { bg = "#05070c", text = "#b4bccc", dim = "#465068", accent = "#90a8e0", border = "#1e2a48" },
  ambience = {
    fog { color = "#0c1424", speed = 0.15, strength = 0.7 },
    stars { glyphs = "·˙", colors = { "#5a70a0", "#3a4870" }, rate = 0.15 },
  },

  things = {
    { name = "the water",
      description = "It does not lap. It comes up the shingle and stops in a line as clean as the edge of a table. Your lantern lies on it in one piece, like a coin on a cloth.",
      things = {
        { name = "your reflection",
          description = "Clear to the bootlaces. Behind your reflection there are stars. You look up. There are none above you: only dark. They are in the water and nowhere else.",
          actions = {
            { "Look at the stars in the water", say "They are a long way down, and they are not the glow-worms, which you left behind at the river. They do not twinkle. You count the ones you know. You do not know any. Then you find a gap among them, a patch with nothing in it, and you have seen a patch like that before, through a telescope, and you stand up rather quickly." },
          } },
        { name = "the taste of it",
          description = "Neither salt nor fresh. It tastes of nothing at all, entirely, in a way water from a well does not quite manage.",
          actions = {
            { "Drink a handful", say "Cold, and gone at once, as if you had drunk a handful of quiet. You are not less thirsty. You are, for a minute or two, less worried." },
          } },
      },
      actions = {
        { "Skim a stone", say "A flat grey one, off the shingle. One, two, three, four, five, six. You stop counting at thirty. It goes on out of the lantern light, still skipping, each touch a little fainter. You listen until you cannot be sure you are hearing it. You never do hear it sink." },
      } },
    { name = "the shingle",
      description = "Grey stones, all the same size, each as smooth as an egg. No waves made them. They seem simply to have been thought of that way.",
      things = {
        { name = "a stone with a hole in it", description = "You look through. The lake is the same, with a round edge. You keep it, briefly, and put it back. The beach is complete and you would know." },
        { name = "a line of cairns",
          description = "Seven little towers of pebbles, a hand high, along the water. The Murmurs build one for each boat that went out to find the far side. Six have a white stone on top, for the boats that came back." },
        { name = "the seventh cairn",
          description = "No white stone. The boat went out in the Mayor's grandmother's time, with one rower and provisions for a year. They do not say she was lost. They leave a lamp. They say she has not arrived yet." },
      } },
    { name = "Mr Tench, at the shore",
      icon = "☺",
      description = "He has grounded the punt on the shingle and is eating his sandwich with his back to the lake. He does not care for the lake. It is, he says, outside the terms of reference.",
      things = {
        { name = "the deed box, again",
          description = "The slot in the lid is open. As you watch, the top complaint slides down out of sight, though the box was full. Then the next. Mr Tench chews. \"Filed,\" he says." },
      },
      actions = {
        { "Ask where the complaints go", say "\"In.\" He does not turn round. \"The box is emptied here. Every trip. I have never seen it done and I have never found one on the beach.\" A pause. \"Thirty years of grievances, good ones, and that out there has taken every one and not got any deeper. I call that a proper authority.\"" },
        { "Complain that it has no far side", when = no(flag "fd_island_known"), set "fd_island_known",
          say "He takes out the pencil. \"Sincerely?\" You consider it. Yes: a lake ought to have another side. It is not fair on a person to stand at the edge of something and be told there is no across. He writes, stamps, and for the first time turns to look at the water.\n\n\"No far side,\" he agrees. \"There is a middle, though. I do not advertise it. One does not get the right class of passenger.\" He looks at your boots, and your pack, and the string. \"Get in.\"" },
        { "Ask who went out and has not arrived", say "\"Before my time.\" He folds the waxed paper into quarters. \"But I will tell you this for nothing. Every dusk, the lamp on that seventh cairn is found trimmed. The Murmurs say it is not them. I have not asked the lake.\"" },
      } },
    { name = "the two last rocks",
      description = "The river mouth: a pair of standing stones, square and dot, with a groove worn in each at the height of a mooring rope. The current runs out between them and does not disturb the lake by so much as a crease.",
      things = {
        { name = "an inscription",
          description = "Cut on the inner face of the left stone, large, in the old letters. A scholar's chalk translation beside it: {i}HERE THE WORK STOPS.{/} And a second chalk, smaller: {i}or possibly STARTS. The verb is difficult.{/}" },
      } },
    { name = "the dark overhead",
      description = "You hold the lantern up. It lights nothing. At the river there was a roof with worms on it. Here the light just goes up, and keeps going, and gets tired.",
      actions = {
        { "Throw a pebble straight up", say "You throw it as hard as you can. You wait for the click of stone on stone. You wait for it to come down. In the end you put your hat on, in case." },
      } },
    { name = "a boathouse",
      description = "Built by the Murmurs, the size of a dog kennel, with a slip. Inside, six boats like slippers on a rack, and a seventh cradle, kept oiled.",
      things = {
        { name = "the logbooks",
          description = "One for each voyage. {i}Day 1: water. Day 2: water. Day 30: water. Turned back. Day 60: shore, ours.{/} Six of them, alike to the word." },
        { name = "an oar rack",
          description = "Oars like teaspoons, in pairs. And one bracket, bolted high on the back wall, of a size to take an oar taller than you. It is empty. The Murmurs did not put it up. They built the boathouse round it." },
      } },
    { name = "the silence",
      description = "It is not the silence of the wood, which was a kind of manners. Out over the water nothing is making any sound because nothing is there to. You find it restful. You had expected to find it terrible.",
      actions = {
        { "Shout across it", say "\"HELLO!\" Your voice goes out over the water, and you wait, as you would anywhere, for it to come back. It does not. Not the faintest return. There is nothing out there for a shout to turn round on. It has simply gone on, and you have the odd feeling that it will be received." },
      } },
    { name = "a fisherman",
      description = "One Murmur, on a rock the size of a loaf, with a rod like a bristle and a float like a seed. He has fished the lake every dusk for fifty years.",
      actions = {
        { "Ask what he catches", say "\"Pardon. Nothing.\" He is entirely content. \"There is nothing in it. That is what makes it so peaceful. In a river one is always being interrupted.\" The float lies on the water without a ring round it. \"Once,\" he says, \"something looked at the bait. I felt it look. I have not needed anything else since.\"" },
      } },
    { name = "a tidemark",
      description = "A foot above the water, a line on the shingle: weed, dry, in a perfectly straight band. So it does rise. The Murmurs say twice in their history, and each time the temple bells Above all rang by themselves." },
    { name = "a path along the shore",
      description = "Shingle gives way to a paved causeway, heading off along the one edge towards a darkness that is more solid than the rest. Old blocks. You know the mark by now." },
    { name = "a bench, full size",
      description = "Stone, facing the water. Like the chair in the inn, it is made for someone your height, and like the chair it is worn. There is room for two.",
      actions = {
        { "Sit a while", fx("wash", "#90a8e0"),
          say "You sit. The lake does nothing, perfectly. After a time you become aware that the stone beside you is not as cold as the stone under you, and you do not look round, because it would be rude, and because there would be nobody there. You say good evening anyway. It seems the least one can do." },
      } },
  },

  exits = {
    { to = "fd_slow_river", label = "The ferry, upstream", description = "Back between the two rocks, against what there is of the current, to the jetty." },
    { to = "fd_old_wall", label = "The causeway", description = "Along the one shore, on the old paving, to where the dark is built of something." },
    { to = "fd_island", label = "Out, to the middle",
      description = "In the punt, away from the only shore there is.",
      requires = flag "fd_island_known", hidden = true },
  },
}

space {
  id = "fd_island",
  region = "further_down",
  secret = true,
  name = "The Island in the Middle",
  description = "Mr Tench poled until the lantern on the beach went out behind you, and then for as long again, and then the punt touched sand. It is an island no bigger than a threshing floor: white sand, one tree, and an oar stuck upright in the beach. How a lake with no far side can have a middle is, he says, a complaint he would accept.",
  palette = { bg = "#06080e", text = "#c0c8d8", dim = "#4c5870", accent = "#e8e8f8", border = "#263050" },
  ambience = {
    stars { glyphs = "·˙∙", colors = { "#8090c0", "#c0c8e8", "#506090" }, rate = 0.3 },
    fog { color = "#0a1020", speed = 0.1, strength = 0.4 },
  },

  things = {
    { name = "the white tree",
      key = "fd_white_tree",
      wonder = true,
      description = "A tree, where no tree could be. No sun has ever reached it. It has grown anyway, slowly, to the height of a house: white bark, white boughs, and leaves like thin paper that give back any light you bring. {magic}When you lift the lantern, every leaf on that side turns to face it.{/} The others stay as they were, turned up and outward, toward the dark over the lake, as if expecting something from there.",
      things = {
        { name = "a leaf",
          description = "It has turned to your lantern and it trembles slightly, as a cat's ear does. It is warm on the side toward you. That is your warmth. It has never had any other." },
        { name = "the roots",
          description = "They go down through the sand and into the water, and where they enter it they are not white but faintly gold." },
        { name = "a single fruit",
          description = "High up, round, pale, the size of an apple. Mr Tench says it was there when he first came, thirty years ago, exactly so. \"It is not ripe,\" he says. \"I do not know what it is waiting for. I know not to pick it.\"" },
      },
      actions = {
        { "Hold the lantern up", fx("sparkle", "#e8e8f8"),
          say "You raise it as high as your arm goes. Leaf by leaf, the whole near side of the tree turns to you, with a sound like a page turning in a quiet room, until you are standing in a pale blaze of your own light handed back. You hold it there until your arm shakes. It is one lantern. The tree is making the most of it." },
        { "Lower the lantern", say "You bring it down. The leaves stay turned to you a moment longer, and then, one by one, go back to facing the dark, and wait." },
      } },
    { name = "the oar in the sand",
      key = "fd_oar_standing",
      icon = "♆",
      description = "Black wood, taller than you, planted blade down at the water's edge the way you would plant one to say: this far. The sand has not drifted against it. The blade is wet.",
      variants = {
        { when = item "fd_first_oar", name = "a hole in the sand",
          description = "Narrow, deep, with water at the bottom. The lake has not filled it in. The lake is leaving it, in case you need to put the oar back." },
      },
      things = {
        { name = "marks in the sand around it",
          description = "Footprints, bare, long, leading up from the water to the oar. None lead away. There is no wind here and no tide to speak of. They could be a day old or older than Aldmoor." },
      },
      actions = {
        { "Ask Mr Tench about it", when = no(item "fd_first_oar"),
          say "\"Not mine. I use a pole.\" He regards it. \"It was rowed here. I take it that whoever rowed it had been everywhere else, and this was the last place, and there being no far side to go on to, they stopped.\" He shrugs inside the oilskin. \"A person should know when they have arrived. I respect that.\"" },
        { "Take the oar", once = true, give "fd_first_oar", fx("flash", "#e8e8f8"),
          say "You put both hands on it. They do not fit the worn places: those are a good deal further apart. You pull. It comes up out of the sand with a long wet sigh, and for a moment the whole island moves an inch, as a boat does when somebody takes up the oars. Every leaf on the tree turns to look.\n\n{gold}The Oar of the First Crossing.{/} \"Do not,\" says Mr Tench, with real feeling, \"row with it. I have a timetable.\"" },
      } },
    { name = "the sand",
      description = "White, fine as flour, cold. It is not sand from any rock down here. The Murmurs have no word for the colour, because nothing else they own is quite that clean.",
      things = {
        { name = "a shell",
          description = "A spiral, the size of your thumb, pearl inside. There is no sea within a hundred feet upward or three days sideways. You hold it to your ear.",
          actions = {
            { "Listen", say "The sea. Quite distinctly, and gulls, and somebody a long way off shouting about herring. It is Saltwick, on a market day. The shell has kept the address." },
          } },
        { name = "a fire ring",
          description = "Five blackened stones and ash gone to felt. Somebody camped here. They burned driftwood. You look round the lake for where driftwood would drift from." },
      } },
    { name = "the punt, drawn up",
      description = "Mr Tench has stayed in it. He says the island is not Corporation property and he would rather not be found on it.",
      things = {
        { name = "Mr Tench, not looking",
          description = "He has his eyeshade down and is doing his accounts. But he chose the seat that faces the tree.",
          actions = {
            { "Ask if he comes here often", say "\"Never.\" He turns a page. \"Fridays. After the bailing. Only to see that it has not gone.\" A long pause. \"One likes there to be a middle.\"" },
          } },
      } },
    { name = "the stars under the water",
      description = "All round the island, in the lake, below you: the stars again, thicker here, so that you seem to be standing on a white floor laid over a night sky.",
      things = {
        { name = "the gap",
          description = "There is a place among them where there are none. From the beach you thought you had imagined it. From here it is directly under the island. The tree's gold roots go down toward it, and you cannot see where they stop." },
      },
      actions = {
        { "Lean over the edge of the sand", say "You kneel and look straight down. Stars, and the roots going down among them, and your own face on the surface. Your reflection looks rather better rested than you are." },
      } },
    { name = "the view back",
      description = "Nothing. No beach, no lamp on a cairn, no river mouth. You came from that way, or that way. Mr Tench knows. It is what he is for." },
    { name = "a cairn",
      description = "Pebbles, a hand high, at the foot of the tree, in the Murmur fashion. On top, a white stone. Beside it, drawn up on the sand and turned over to keep the wet out, a boat the size of a slipper.",
      things = {
        { name = "the little boat",
          description = "The seventh. The paint is fresh. A name on the bow in the tiny perfect hand: {i}NOT YET.{/}" },
        { name = "a lamp, lit",
          description = "A blue lamp mushroom in a seed-pod holder, fresh picked. And leading from the boat to the tree and round behind it, in the white sand, a line of very small footprints, which stop when you look for where they go.",
          actions = {
            { "Call out, quietly", say "\"Pardon?\" you try. Nothing. Then, from somewhere up in the white boughs, in a murmur: \"Pardon. I am quite all right. Would you tell them I am still looking? It is just that it is so pleasant here.\" A leaf turns. \"There is no hurry about the far side. I have come to think it is being saved.\"" },
          } },
      } },
    { name = "the air",
      description = "Still, and not cold. It is the temperature of a room. There is a smell, very faint, that you cannot place for a long time, and then you do: it smells of clean laundry, brought in off a line." },
    { name = "a second set of rings in the tree",
      description = "Low on the trunk, the bark has grown round two iron rings, a yard apart, like the mooring rings on the river jetty. Whatever was tied up here was tied to the tree when the tree was a sapling. The rope is long gone, but the bark has kept the shape of the knot." },
    { name = "the edge of the island",
      description = "You walk round it. Forty paces. On the far shore of it, the side away from where you landed, the sand goes down into the water in a slope as smooth as a slipway, and the starless gap below is very near. Nothing is launched from there. It looks like a place that is kept ready.",
      actions = {
        { "Put a toe in", say "The water is warm on this side. You take your toe out. Some slipways are not yours, and you have learned, in the course of this trip, to tell." },
      } },
  },

  exits = {
    { to = "fd_lake", label = "The punt, back to the shore", description = "Mr Tench knows the way. You sit on THE MANAGEMENT REGRETS and try not to look behind you." },
  },
}
