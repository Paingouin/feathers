-- Mount Maybe, which is considering it, and the place where it considers.

space {
  id = "jg_volcano",
  region = "sweltering",
  name = "Mount Maybe",
  description = "The trees give out at a line of black sand, and above it there is only the cone: cinders, old lava in ropes, yellow stains, and at the top a rim with a thread of steam going straight up from it. The ground is warm through your boots. Now and then it shifts under you, slightly, as a sleeper shifts. Stilts has asked this mountain every week for longer than it has had a name whether it means to go off. It is called after its answer.",
  palette = { bg = "#120b08", text = "#e0d0c0", dim = "#80685a", accent = "#f08040", border = "#5a3020" },
  ambience = {
    steam { glyphs = "˙°∙", color = "#7a6a60", rate = 0.5 },
    embers { glyphs = "∙·", color = "#e86830", rate = 0.1 },
  },

  things = {
    { name = "the mountain",
      key = "jg_maybe",
      icon = "▲",
      description = "It does not look fierce. It looks thoughtful. The steam goes up evenly, like the smoke of a pipe, and every so often there is a pause in it, and a small round puff, and then it goes on. Low down inside, something turns over with a noise like a cart on a bridge. {flicker}It is weighing the matter.{/} It has been weighing it for a thousand years, and it has not ruled anything out.",
      variants = {
        { when = flag "jg_volcano_asked",
          description = "It looks thoughtful. The steam goes up evenly, like the smoke of a pipe, with now and then a pause and a small round puff. Low down inside, something turns over. {flicker}It is weighing the matter{/}, and it has, you are almost sure, weighed you. On the inside of the rim, where there was a wall of cinders an hour ago, a crack stands open with steps of cooled lava going down." },
      },
      things = {
        { name = "the thread of steam", description = "White, and straight as a plumb line on a still day. The whole village can see it. A child in Stilts looks at the mountain first thing each morning as a child at home looks out to see if it has snowed." },
        { name = "the rumble", description = "You feel it in your knees before you hear it. It is not angry. It is the sound of somebody large saying {i}hmm{/}." },
        { name = "the crack in the rim", visible_if = flag "jg_volcano_asked",
          description = "As wide as a door. The edges are glassy and still warm, and the steps inside are too even to be chance and too rough to be work. Red light comes up them, and a breath like an oven's. You asked it a question. It appears to have said: come in, then, and see for yourself." },
      },
      actions = {
        { "Ask it yourself", when = no(flag "jg_volcano_asked"), set "jg_volcano_asked", fx "shake",
          say "You stand on the asking stone. You do not know the words, so you say it plain. \"Are you going to?\" The steam stops. All of it. The mountain holds its breath, and so does every bird below the sand line, and so do you. Then one puff, small and round. {i}Not this week.{/} But it has not finished. There is a crack like a plate breaking, and on the inside of the rim a slab of cinder falls away from a stair. The Asker's girl has dropped her broom. \"It's never done that,\" she whispers. \"It's never asked anybody {i}back{/}.\"" },
      } },
    { name = "the asking stone",
      description = "A flat black boulder at the rim, polished on top by a thousand years of bare feet. The Asker stands on it once a week, at dawn, and asks. Then she watches the steam. Then she walks down and tells the Aunts, and Stilts goes on for seven days more.",
      things = {
        { name = "the footprints", description = "Two hollows, side by side, worn into the stone. Small feet. It has always been a woman, and never a large one. The mountain, they say, does not like to be loomed at." },
        { name = "the tally", description = "On the side of the stone: a scratch for every asking, in rows, a great many rows, going round and round the boulder to the ground. Every one is the same short stroke. {i}Not this week.{/} There is room left at the bottom for a few hundred more, and after that somebody will have to find another stone." },
      } },
    { name = "the Asker's girl",
      icon = "☺",
      description = "About eleven, with a broom of twigs, sweeping cinders off the asking stone. She is the Asker's sister's daughter and will be the Asker in her turn. She is learning the walk, and the words, and the hardest part, which is how to come down the mountain every week with the same face whatever it said.",
      things = {
        { name = "her broom", description = "The stone must be clean. Nobody ever told her why. She has decided that it is so the mountain can hear properly." },
        { name = "her practice stone", description = "A small flat rock, lower down, where she stands and asks an anthill whether it will go off. It has not yet. She reports this to nobody, gravely, each morning." },
      },
      actions = {
        { "Ask what the words are", say "\"I'm not to say them to people. Only to it.\" She sweeps. \"But they're not hard. It's just asking. My aunt says the words are the easy part, and the part that takes your whole life is meaning it every week, when it's always said no.\"" },
        { "Ask what happens if it says yes", say "She has thought about this. \"We go,\" she says. \"There's a canoe for everybody. There's a list. The three stones go first.\" She leans on the broom. \"My aunt says it'll tell us in time. She says that's what the asking is for. It's manners. If you ask it nicely every week, it won't do it without saying.\"" },
      } },
    { name = "the path with the flowers",
      description = "Up through the forest from Stilts, and then across the black sand, marked by posts. On every post there is a fresh flower, tied on with grass. They are changed weekly, on the way up. The mountain is thought to like them. Nothing is known against it.",
      things = {
        { name = "the last post", description = "At the edge of the sand. The flower here wilts in an hour from the heat. One is put on anyway, every time. It is the one that the mountain can see." },
        { name = "a post with a nightcap on it", description = "Flannel, from Pomfret's, singed. Somebody thought the mountain might feel the cold at night, up here. It was a kind thought and it has been left." },
      } },
    { name = "the black sand",
      description = "Fine, glittering, and hot enough by noon to cook on. It squeaks under your boots. Your tracks up it are the only ones with heels.",
      things = {
        { name = "a lizard", description = "Black, like the sand, and running across it on its hind legs with its arms tucked in, too fast for the heat to get through its feet. It reaches a stone and stands on it lifting one foot and then another, like a man who has been asked to wait in a cold hall." },
        { name = "something growing", description = "One fern, in a crack, bright green on the black. Then you see another. Then a small tree, a yard high, with red flowers. The Sweltering is coming up the mountain, an inch a year. It does not care what the answer is going to be." },
      } },
    { name = "the old lava",
      description = "A black river of it, stopped, coming down the south side: ropes and folds and coils, exactly as it was when it was moving. You can see where it parted round a boulder and where it fell over a ledge in a curtain.",
      things = {
        { name = "the ropes", description = "The skin wrinkled as it cooled, in ranks, like cloth pushed along a table. You walk over it with the feeling of treading on something that has only just stopped and has not been told that you are there." },
        { name = "a tree mould", description = "A round hole, straight down, a yard across and three deep, with the pattern of bark on the inside. The lava came round a tree and set, and the tree burned out. There are dozens. A forest stood here once and left its fingerprints." },
        { name = "a hollow tube", description = "Where the river of rock crusted over on top and drained out from underneath: a tunnel, big enough to stand in, going down the slope. The roof drips with stone that froze as it fell. It is cool inside, and a family of small owls lives there and looks at you with one face." },
      } },
    { name = "the steam vents",
      description = "Round the rim, a dozen holes, from the size of a rabbit's burrow to the size of a well, each breathing warm wet air, and each crusted with yellow.",
      things = {
        { name = "the cooking vent", description = "The Asker's. A basket on a string goes down it with eggs and yams, and comes up cooked. She has her breakfast here after the asking. It is thought to be allowed.",
          actions = {
            { "Cook an egg", say "The girl lends you one, and the basket. Down it goes. You count, as she tells you, to two hundred. It comes up hard, and hot, and tasting very faintly of matches. You eat it sitting on a volcano. It is among the better breakfasts of your career, and by some way the most dangerous." },
          } },
        { name = "the whistling vent", description = "Narrow, and the steam comes through it on one high note, without stopping. The village can hear it on a still night. When the note changes, the Asker goes up without waiting for the day." },
        { name = "the yellow crust", description = "Brimstone, in crystals like sugar, growing round every hole. It is very pretty and smells of the bad egg. The river people trade it down to Pomfret's, who ships it north as {i}Dragon Salt{/}, for the gout." },
      } },
    { name = "the rim",
      description = "A ridge of cinders a yard wide, the whole way round. On one side the mountain goes down to the forest. On the other it goes down into itself, and you cannot see the bottom for steam. You can hear it.",
      actions = {
        { "Look over", say "Hot air comes up into your face like a hand. Steam, turning. Through a hole in it, far down, for the time it takes to blink, something orange, and slow, and bright. Then the hole shuts. You step back from the edge and find that you have gone on stepping back for several yards." },
      } },
    { name = "the question board",
      description = "A slab of bark on a post, below the asking stone. Since the mountain is being asked a thing anyway, people leave their own questions, drawn in charcoal, for the Asker to slip in if it seems in a good mood.",
      things = {
        { name = "a drawing of a fish", description = "{i}Will there be fish?{/} Yes. There are always fish. He asks every week all the same." },
        { name = "a drawing of two people and a canoe", description = "{i}Will she have me?{/} Under it, in another hand, a butter dish, carefully drawn, with a lid." },
        { name = "a drawing of a man in a helmet, crossed out", description = "{i}Will the northerners go home?{/} The Asker has put this one to the mountain eleven weeks running. Each time, she says, it laughed." },
      } },
    { name = "the Asker's hut",
      description = "Just under the rim, on the side away from the wind: a ring of lava blocks with a roof of palm. She sleeps here the night before the asking, to be on the stone at dawn.",
      things = {
        { name = "her mat", description = "Laid on warm ground. She says that it is the best bed in the Sweltering for the back, and that she would recommend it to anybody who did not mind what was under it." },
        { name = "a string of knots", description = "Hanging from the roof pole: one for each Asker, back and back, with a shell on the string for each. Forty-one shells. The girl has chosen hers already, and keeps it in a leaf, and takes it out to look at." },
        { name = "a bell", description = "Red stone, the size of a pear, on a cord, with no clapper. It is the fellow of one in Stilts. They came, the Asker says, from the old place in the forest. It does not ring in the wind. If the mountain ever says yes, she says, it will not need her to walk down." },
      } },
    { name = "the hot spring",
      description = "On the forest side, where a stream runs out from under the lava, there is a pool that steams. Monkeys are sitting in it up to their necks, in a row, red in the face, with their eyes shut.",
      actions = {
        { "Join the monkeys", say "You get in at the end of the row. It is just short of too hot. The monkey beside you opens one eye, takes you in, and moves up an inch. Nobody speaks. After a time one of them picks something out of your hair and eats it, and you gather that you are in." },
      } },
    { name = "the view",
      description = "From the rim you can see the whole of it: the lake with Stilts on it like spilled matches, the river going away in loops, the bluff with six white specks, a red hill with a tree on top, and one crown standing up out of the forest above all the others. Beyond that, green, to the end of the world. And to the north, a long way off, a line of blue that is the sea you came by." },
    { name = "the warmth underfoot",
      description = "It comes up through the cinders like the warmth of a loaf through a cloth. You sit, and after a minute you have to get up. The girl sits on a folded mat, and laughs at you, and lends you half.",
      actions = {
        { "Put your ear to the ground", say "Hot, and gritty, and under it a slow thick sound, over and over, a long way down: rise, and settle. Rise, and settle. You know what it is like. It is like listening at the chest of somebody asleep." },
      } },
  },

  exits = {
    { to = "jg_village", label = "Down the path with the flowers",
      description = "Across the black sand and into the trees, to the lake and the plank walks." },
    { to = "jg_crater", label = "The crack in the rim",
      description = "Down the warm steps, into the red light, by invitation.",
      requires = flag "jg_volcano_asked", hidden = true },
  },
}

space {
  id = "jg_crater",
  region = "sweltering",
  secret = true,
  wonder = true,
  name = "Where It Considers",
  description = "The steps come out on a ledge inside the mountain. Below you is a round lake a furlong across, and it is not water. It is rock, molten, orange where it splits and black where it has skinned over, and it is moving: {glow}slowly, all together, up a hand's breadth and down a hand's breadth, as a chest moves{/}. The heat is a wall. The walls are a chimney, and the top of the chimney is a round blue coin of sky. You have been let in to watch a mountain think.",
  palette = { bg = "#140806", text = "#f0d4c0", dim = "#8a5c48", accent = "#ff8838", border = "#6a2c18" },
  ambience = {
    embers { glyphs = "∙·˙✦", colors = { "#ff7020", "#ffb040" }, rate = 0.5 },
    flicker { color = "#ff7020", strength = 0.3 },
    steam { glyphs = "˙°", color = "#6a5048", rate = 0.3 },
  },

  things = {
    { name = "the lake of fire",
      wonder = true,
      icon = "≈",
      description = "The black skin cracks in plates, like mud in a dry pond, and in every crack there is a line of light that you cannot look at for long. The plates drift. Where two meet, one goes under, quite gently, and a fountain of orange stands up for a moment and falls back. It does this without hurry. There is no anger in it at all. {wave}It rises. It settles. It rises.{/} You have seen porridge do as much, and you have never been so frightened of anything, or so unable to look away.",
      things = {
        { name = "the rise and fall", description = "You time it against your own breathing and find that you have fallen in with it. So, the girl says, does everybody. So does the Asker, when she sleeps up here. The whole village, perhaps, a little, without knowing." },
        { name = "a fountain", description = "At the far side, where the skin is thin: a spout the height of a man, the colour of the sun through shut eyelids. It throws up drops that cool as they fly and land as black glass beads, ticking on the ledge. You pick one up when it has cooled. It is a perfect tear." },
        { name = "the high mark", description = "A ring of glaze round the walls, far over your head, where the lake has stood at some time. Above the ring, the rock is bare. It has been that high. It came up, and looked over the rim, and went down again." },
      },
      actions = {
        { "Ask it again, from here", say "You say it quietly. \"Are you going to?\" The lake rises a hand's breadth. It settles. In the middle a plate tips under, and the fountain that comes up is small and round. Not this week. But you see now what the Askers have always known and never had to say. It is not that it cannot make up its mind. It likes to be asked. It has all that fire, and for a thousand years, once a week, a small person has walked up and spoken to it civilly, and it would not hurt her for the world." },
      } },
    { name = "the glass garden",
      wonder = true,
      description = "All along the back of the ledge, where the hot wind from the lake meets the cool air from the crack, the rock is covered with flowers. They are glass. The wind draws threads of it off the fountains, finer than hair, gold and brown, and where they catch on the wall they pile and curl and set, into stems, into leaves, into things like roses and things like ferns and things that are not like anything. {shimmer}They chime.{/} The whole bank of them is moving a little in the up draught, and the sound is of a thousand very small bells in another room.",
      things = {
        { name = "a single thread", description = "It drifts across in front of your face, a yard long, shining, and winds itself round your finger. It weighs nothing. It is a piece of the inside of the world, drawn out thin enough to float." },
        { name = "a glass rose", description = "As good as that. Brown gold, every petal separate, no bigger than a walnut. No hand made it. The mountain is not trying to make roses. It does this by accident, in its sleep, all day, and nobody has ever been down to see." },
        { name = "the oldest growth", description = "At the bottom of the bank the flowers have fused, layer on layer, into a solid amber crust a yard thick. You can see shapes in it, going back. It is a thousand years of gardens, one on another, like the leaves of a book." },
      },
      actions = {
        { "Pick one", say "You reach for the rose. You touch it with one finger, and it falls into dust with a sound like a sigh, and so do the six around it. You stand very still with your hand out. They do not travel. They are only here. That is all right. A great many of the best things are only somewhere." },
        { "Listen to them", say "You shut your eyes, in the heat. Under the long breath of the lake there is the chiming, without a tune, never the same twice. You think of the frogs at the falls. You think, for some reason, of the bell at Pomfret's. It is all one sort of sound, you find: the sort a place makes when it is getting on with being itself and has not noticed you." },
      } },
    { name = "the ledge",
      description = "Ten yards of level rock, a third of the way down the inside. The edge is rounded and glazed. It is as far as the steps go, and by the look of it as far as they were meant to.",
      things = {
        { name = "the seats", description = "Three low blocks of lava, set in a row facing the lake, with a back to each. They are not worn. Nobody has sat on them. They were put here, hot, and left to cool, for visitors that the mountain was evidently prepared to wait for.",
          actions = {
            { "Sit down", say "It is warm, as you would expect, and fits the back. You sit with your hands on your knees and watch the lake rise and settle. The girl creeps down the steps behind you and takes the second seat, without a word, with her broom across her lap. The third stays empty. You both leave it so." },
          } },
        { name = "the edge", description = "You go as near as the heat lets you, which is two yards. A drop of sweat falls off your chin, and is steam before it lands." },
      } },
    { name = "the walls",
      description = "They go up round you like the inside of a chimney, red and black in bands, and they glitter. Crystals have grown in every crack: yellow, white, a green like bottle glass.",
      things = {
        { name = "the yellow crystals", description = "Brimstone, in needles as long as your finger. Mr Pomfret would call it a hundred jars of Dragon Salt. You leave it where it is." },
        { name = "a seam of green", description = "A vein of hard green stone, as wide as your hand, running slantwise up the wall and out of sight. It has no grain and takes no scratch. You have seen that stone. It was sitting on a plinth with its eyes shut." },
        { name = "a nest", description = "On a shelf thirty feet up, in the full heat, a heap of black pebbles with a lizard on it the colour of a hot coal. It is sitting on eggs. It has picked the warmest nursery in the world and looks down at you with great complacency." },
      } },
    { name = "the coin of sky",
      description = "Straight up: a small round blue, very far, with the steam going up to it in a thread. A hawk crosses it, tiny. It is the mountain's one window. You can see how a thing might lie here for a thousand years, looking at that, and not be in any hurry to do more." },
    { name = "the heat",
      description = "Your eyebrows are curling. Your boots are soft. The buckle of your pack is too hot to touch. The girl says that the trick is to breathe when the lake goes down and not when it comes up, and that after a while you do it without thinking.",
      actions = {
        { "Breathe with it", say "Down: in. Up: out. Down: in. It works. The heat does not lessen, but it stops being something done to you. For about a minute you and a volcano are breathing together, and you could not say afterwards which of you was setting the time." },
      } },
    { name = "the black beads",
      description = "All over the ledge: drops of glass thrown up by the fountains, cooled in the air, each a smooth black tear with a tail. They crunch underfoot. The girl gathers a handful to take down. Nobody at Stilts has seen one before. Tomorrow every child there will want one, and she will be the only person who can go and get them.",
      actions = {
        { "Pocket one", say "You choose a good one, the size of a bean, with a long tail. It is the only thing you have ever been given by a mountain. It is not mighty, and nobody will write it in a ballad, and you put it in the pocket where you keep the things that you do not show people." },
      } },
    { name = "the steps",
      description = "Thirty, from the crack in the rim down to the ledge. They were a slope of running rock that slowed, and sagged, and set in ridges. That they are the height of a step and the depth of a foot is something that you have decided not to think about until you are well away from here." },
    { name = "an old basket",
      description = "At the lip of the ledge, hanging over the lake on a cord of twisted bark that goes up and up, out through the coin of sky. The Asker's cooking basket goes down one of the vents. This is where it comes to. There is an egg in it. It is done.",
      actions = {
        { "Tug the cord", say "You give it two pulls. A long way above, very faint, a shout of surprise, and then the basket goes up in jerks, hand over hand, with the egg in it. The girl has both hands over her mouth. Her aunt is in Stilts, asleep. It is somebody else's breakfast, and they are going to have a great deal to tell the Aunts." },
      } },
    { name = "the sound",
      description = "A long slow breath, and under it a crackle like a great fire a long way off, and over it the chiming of the glass. No rumble. The rumble is what it sounds like from outside. From in here it is quite peaceable. It is only the neighbours who hear the snoring." },
    { name = "the girl on the steps",
      description = "She would not come at first. Now she is halfway down, holding her broom like a spear, with the red light on her face and her mouth open. She will be the forty-second Asker. She is the first of them, in a thousand years, to have seen who she is talking to.",
      actions = {
        { "Ask what she will tell her aunt", say "She does not take her eyes off the lake. \"That it's not a no,\" she says slowly. \"All this time. We thought it kept saying no. It doesn't. It's just telling us how it is. Like when you ask someone are they well.\" She is quiet. \"I'm going to bring it better flowers.\"" },
      } },
  },

  exits = {
    { to = "jg_volcano", label = "Up the warm steps",
      description = "Thirty of them, to the rim, the wind, and air that you can breathe whenever you like." },
  },
}
