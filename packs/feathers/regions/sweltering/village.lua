-- Stilts: the village on legs, and the Hammock House where strangers are put.

space {
  id = "jg_village",
  region = "sweltering",
  name = "Stilts",
  description = "Forty houses standing in a lake on legs, joined by plank walks with a hand rope on one side. Canoes are tied underneath, where at home there would be a cellar. Smoke goes up, washing hangs out, children fall in and are fished out by whoever is nearest. Behind it all, over the tree tops, a mountain with a flat top is giving off one thin line of steam.",
  palette = { bg = "#0a120c", text = "#d8e0c4", dim = "#64785c", accent = "#e8a848", border = "#365834" },
  ambience = {
    fireflies { color = "#d8e878", rate = 0.3 },
    steam { glyphs = "˙°", color = "#40584a", rate = 0.2 },
  },

  things = {
    { name = "the plank walks",
      description = "Two boards wide, grey, springy, with gaps you can see fish through. Everybody on them walks at the same pace without thinking about it. You do not, and the whole village knows by the bounce that there is a stranger on the boards.",
      things = {
        { name = "the hand rope", description = "On the left going out and on the right coming back. It is polished black by hands, apart from one new yard where somebody large went through it, recently, in a sun helmet." },
        { name = "a missing plank", description = "Left out on purpose, at the turn by the cookhouse. Children step over it without looking. It is for crocodiles, and visitors, and has caught only one of the two.",
          actions = {
            { "Step over it", say "You see it in time. You step over with great style. Your other foot goes through the plank after, which is rotten, and which is not there on purpose at all. You are hauled out by a girl of seven with one hand. She does not laugh until you have thanked her." },
          } },
        { name = "the fish underneath", description = "They hang in the shadow of the walk and follow whoever is carrying food. A fat grey one has been following you since the landing, in case." },
      } },
    { name = "the houses",
      description = "Split cane walls, palm roofs down to the eaves like hats pulled low, each with a ladder that is drawn up at night. No two stand at quite the same height. It depends how tall the builder was, and how he felt about the floods.",
      things = {
        { name = "a house with a blue door", description = "The only door in the village, off a ship, with a brass knocker. It hangs in a wall that otherwise has no need of one, as the rest is open. Visitors are asked to knock. The family comes round the side to see who it is.",
          actions = {
            { "Knock", say "You knock. A whole family looks at you over the wall beside the door, with pleasure. \"It works,\" says the father. He bought it at Pomfret's for a canoe. He asks if it is true that in the kingdom people have them on every house, and {i}shut{/} them. You say yes. They are still laughing when you reach the next walk." },
          } },
        { name = "a very tall house", description = "On legs twice the length of the rest, at the edge of the village. An old man built it after the big flood and has been proved wise once in forty years. He goes up and down a ladder of sixty rungs four times a day and says that it keeps relations off." },
        { name = "a house being built", description = "The frame only, yellow new cane, with six men on it and eleven giving advice from canoes. It was begun this morning. They will sleep in it tonight. In the Sweltering you build fast, or the timber comes into leaf." },
        { name = "the washing", description = "Strung between the houses on lines that are let out and hauled in by pulleys. Among the bright cloths, drying with the rest, there are nine flannel nightcaps." },
      } },
    { name = "the cookhouse",
      description = "One roof for the whole village, on its own legs, well away from the houses, with a clay hearth as long as a boat. Nobody cooks at home. A fire in a cane house is a short story.",
      things = {
        { name = "Old Do",
          icon = "☻",
          description = "The cook: a small broad man with forearms like a ferryman's and a paddle for stirring. He feeds two hundred people twice a day. He has opinions about salt, and one about the north, which is that nothing good can come from a place where the food must be kept warm.",
          actions = {
            { "Ask what is cooking", say "\"Fish in leaf. Fish in clay. Fish with the green banana. And for you,\" he looks you over, \"fish that has been told nothing is the matter.\" He puts a plain one on a leaf with no pepper at all. It is the kindest thing anyone has done for you in a week, and the whole cookhouse is watching you eat it." },
            { "Tell him about stew", say "You describe Old Bess's stew, in Aldmoor: brown, fifty years, never tasted. He listens with his paddle still. \"Never tasted,\" he says at last, in a low voice, and puts his hand on your shoulder, as one does at a funeral." },
          } },
        { name = "the long hearth", description = "Clay, with thirty fires in it end to end, each under its own pot, each tended by somebody's aunt. The smoke goes up through the thatch, which keeps out the insects and gives the whole village the smell of a good kipper." },
        { name = "the pepper string", description = "Hung along the eave: red ones, green ones, and at the end three small yellow ones on a string of their own, with a knot of warning. Old Do handles those with a leaf.",
          actions = {
            { "Sniff the yellow ones", say "You only sniff. The cookhouse goes quiet. When you can see again, a child is holding a gourd of coconut milk to your mouth and an aunt is fanning you, and Old Do is telling a circle of people that you are not dead and that northerners go that colour anyway." },
          } },
        { name = "the fish rack", description = "Split and smoking, row on row, gold on the skin side. A cat sits under it with her eyes shut, in the attitude of one who is only resting and has no interest in fish whatever." },
        { name = "the stirring paddle", description = "It was a canoe paddle. It has been in the pot for thirty years and is two hands shorter than it was. The village holds that the missing part is why the food is good." },
      } },
    { name = "the Aunts",
      description = "Seven old women on a platform in the middle of the village, under a roof of their own, shelling, plaiting and looking. Stilts has no chief. It has the Aunts, who know what everybody has done and will presently think of doing, and who govern by mentioning it.",
      things = {
        { name = "the eldest Aunt", description = "Very small, quite blind, with a pipe. The others report to her what they see. She tells them what it means. She turned her face to you before your foot was on the first plank.",
          actions = {
            { "Pay your respects", say "You bow. She cannot see it, and nods. \"Northerner,\" she says. \"One of the ones who look for things.\" The Aunts murmur. \"The last one wanted a road. The one before wanted a city of gold. What do you want?\" You say, truthfully, that you are not sure. She laughs, with no teeth and great pleasure. \"Then you may find it. Give him a mat.\"" },
            { "Ask about the mountain", say "\"Maybe,\" she says. \"That is its name. We ask it each week if it will, and it says not this week. There is a woman who goes up to ask. It has always said not this week.\" She puffs. \"One week it will say something else. That is why we ask.\"" },
          } },
        { name = "the plaiting", description = "Mats, hats, fish traps, walls. Their hands do it without their eyes. Their eyes are on the village." },
        { name = "the Aunt who does not speak", description = "The youngest of them, sixty or so. She has said nothing since she was appointed. It is her office. The other six talk, and now and then all look at her, and she raises one eyebrow or does not, and that is the vote." },
      } },
    { name = "the canoes",
      description = "Under every house, dug out of single trunks, each with an eye painted on the bow.",
      things = {
        { name = "a child's canoe", description = "Four feet long, with a child of four in it, alone, going somewhere with complete authority. Children here paddle before they walk. The walking is thought to be the harder of the two, as there is so little to practise on." },
        { name = "the big canoe", description = "Thirty paddles. It goes down to the Landing once a month with the dried fish and comes back with buttons, a mitten, and whatever Mr Pomfret has persuaded them is a marvel." },
        { name = "a canoe with a tin roof", description = "Somebody has seen the Perhaps and wants one. It has a stovepipe, with no stove under it. He sits in it of an evening and smokes his pipe up the pipe." },
      } },
    { name = "the firefly tree",
      wonder = true,
      icon = "*",
      description = "On a mud bank at the edge of the village stands one tree, not large, with nothing to mark it by day. At dusk the fireflies come to it from the whole lake. They settle on every twig until the tree is made of them, and then, with nobody giving the word, {glow}they all light at once, and all go dark, and all light.{/} The whole tree beats like a slow heart, green, in the black water and above it. The village comes out on the walks to watch, every night, and talks in whispers though there is no need.",
      things = {
        { name = "the beat", description = "About as fast as your own pulse when you are sitting quietly. A child beside you is tapping it out on the hand rope and so, you find, are you." },
        { name = "one firefly, out of step", description = "Low on the left. It lights just after the others, every time, a small late spark in the dark. Nobody minds. The Aunts say there is one each year, and that they watch for it, and that it is always a young one, and that it always gets there by the end." },
      },
      actions = {
        { "Watch until it is over", say "It goes on for an hour. Then, in the middle of a beat, one goes off and does not come on, and another, and the tree unravels into ordinary sparks going home across the water. People stretch. Somebody yawns. A canoe bumps a post. You have that feeling that comes at the end of music, of having been somewhere and been brought back carefully." },
      } },
    { name = "the lake",
      description = "Shallow, brown, a mile across, with reeds round the rim and the village in the middle like a fleet at anchor.",
      things = {
        { name = "the reed cutters", description = "Out at the edge, waist deep, cutting cane for the new house. They sing as they cut. It is a rude song about a man from the north who tried to build a road." },
        { name = "a crocodile", description = "On the mud bank, with its mouth open, twelve feet of it. A small grey bird is walking about inside the mouth, picking its teeth for it. The crocodile is holding very still. Neither party appears to think this remarkable.",
          actions = {
            { "Keep your distance", say "You keep it. The crocodile rolls one eye at you over its own open jaw. It has the look of a man in a barber's chair who cannot talk just now but has noted that you came in." },
          } },
        { name = "the floating gardens", description = "Rafts of reed with soil on them, moored in rows, growing peppers, gourds and yams. When the lake rises, the gardens rise. A farmer here can lose his field only by forgetting to tie it up." },
      } },
    { name = "the drum",
      description = "A hollow log on a stand at the end of the main walk, with a slit down it. It talks to the villages up river. A boy is on it now, with two sticks.",
      actions = {
        { "Ask what he is saying", say "He does not stop. \"That there is a northerner. That he fell through a plank. That he went red at the yellow peppers.\" He listens to something far off, a patter like rain. He grins. \"They say: again? Another one?\"" },
      } },
    { name = "the children",
      description = "In the water, mostly. They swim under the houses, hang off the walks and follow you at a distance of exactly three planks.",
      things = {
        { name = "a girl with a pet", description = "She has something on a string. It has a long nose, a striped tail and a great many teeth, and it is wearing a doll's bonnet from Pomfret's. It appears resigned." },
        { name = "the game", description = "You work it out by watching. One child is the Northerner. He walks stiffly, mops his face, says {i}\"Extraordinary!\"{/} and falls into the lake. The others applaud. They take it in turns." },
      } },
    { name = "the spirit post",
      description = "At the landing stage: a carved trunk as tall as two men, very old, grey, cracked, with faces down the whole length of it one above another. Not Old Tamba's faces. These do not scowl. They look out over the lake with their eyes half shut, calm and broad and very slightly amused.",
      things = {
        { name = "the lowest face", description = "Half in the water at flood, and worn nearly smooth. You would not know it for a face but for the others. The Aunts say it was the first to be carved, and by nobody from here, and that the post was standing in the lake when their people came." },
        { name = "a nightcap on the top one", description = "Flannel, with a tassel. Somebody climbed up to put it there. The Aunts have discussed it, and it has been allowed to stay, as it does no harm to be civil." },
      } },
    { name = "the mountain",
      description = "Over the trees to the west: a cone with the top cut off, blue with distance, and one line of white steam going straight up from it in the still air. There is a path to it from the back of the village, with a flower on each post." },
    { name = "the guest house",
      description = "The biggest roof in Stilts, at the far end of the main walk, with thirty hammocks under it and a lamp on a pole. Strangers are put there. So are husbands, on certain evenings." },
  },

  exits = {
    { to = "jg_river", label = "The Perhaps",
      description = "Down the ladder to the landing stage, where the boat is ticking over and the pilot is not looking." },
    { to = "jg_longhouse", description = "Along the main walk to the big roof and the lamp." },
    { to = "jg_volcano", label = "The path with the flowers",
      description = "Off the last plank on to dry land, and up through the trees towards the line of steam." },
  },
}

space {
  id = "jg_longhouse",
  region = "sweltering",
  name = "The Hammock House",
  description = "One long room with no walls, a roof like an upturned boat, and thirty hammocks slung from the posts in two rows. It is where Stilts puts whoever has nowhere else to be. There is a hearth of clay, a row of gourds, a woman in charge and a rule: no boots in the hammocks, no talk of roads.",
  palette = { bg = "#100f09", text = "#dcd8bc", dim = "#787258", accent = "#e8a040", border = "#4a4226" },
  ambience = {
    flicker { color = "#f0a850", strength = 0.2 },
    fireflies { color = "#c8e070", rate = 0.2 },
  },

  things = {
    { name = "Auntie Mo",
      icon = "☺",
      description = "The keeper of the house: broad, slow, in a red cloth, with a fan in one hand and a ladle in the other. She is not one of the Aunts. She says that she has not the time, as somebody has to do the work. She can tell at one look how far a guest has come and how badly it went.",
      things = {
        { name = "her fan", description = "Plaited palm, the size of a shield. She fans the fire with it, and the guests, and a husband or two towards the door." },
        { name = "her ladle", description = "Half a gourd on a stick. What comes out of it is palm wine, and it comes out for everybody who looks as though the day has been long." },
      },
      actions = {
        { "Ask for a hammock", say "\"That one. Not that one, that is Gad's, he is in disgrace till Friday. That one.\" She takes your boots before you can argue and hangs them from a rafter. \"For the scorpions,\" she says. You ask whether that is to keep them out of the boots. \"No,\" she says. \"They like boots. It keeps them out of the hammocks.\"" },
        { "Ask for a drink", say "The ladle goes into a gourd and comes out full. It is white, sour, fizzing, and was sap this morning. \"It is weak now,\" says Auntie Mo. \"By tonight it will be strong. By tomorrow it is vinegar. We do not keep things here. We have them.\"" },
        { "Ask for a light", when = no(flag "jg_lamp_given"), set "jg_lamp_given", give "jg_glow_lamp",
          say "\"For where?\" You say that you thought you might look at the old temple. The house goes quiet. She puts down the ladle. \"There is nothing in the temple,\" she says, in the voice people use for that sentence everywhere. Then she takes a gourd full of holes off its hook and puts it in your hands. It glows green. \"Fire goes out down there. These do not mind. Do not shout. They are sensitive.\"" },
      } },
    { name = "the hammocks",
      description = "Thirty, of plaited bark, in every state from new to heirloom. By day they hang empty and all sway a little, in time, though the air is still.",
      things = {
        { name = "your hammock", description = "Third from the hearth. It is the shape of somebody else. Several somebodies, one after another.",
          actions = {
            { "Get in", say "The first try puts you on the floor on the far side. The second leaves you face down in it like a caught fish. An old man in the next one, without opening his eyes, says \"Sideways, then lie along,\" and you do, and it takes you up like a hand. You see at once why nobody here has invented the bed." },
          } },
        { name = "Gad's hammock", description = "Occupied by a large sad man with a carved paddle on his chest. He is in disgrace. Nobody will tell you what he did. He will, at length, if asked.",
          actions = {
            { "Ask Gad what he did", say "\"I said the fish was dry.\" He stares at the roof. \"I did not say it to her. I said it in a canoe, on the far side of the lake, to my brother.\" He sighs. \"The Aunts knew before I had finished the sentence.\"" },
          } },
        { name = "a very old hammock", description = "Black with age, mended in forty places, slung nearest the hearth. Nobody uses it. It belonged to the first keeper of the house. On cold nights, of which there are none, it is said to be warm." },
        { name = "a hammock with a mosquito net", description = "A proper northern net, from a tin trunk, hung over it like a tent. Inside is a naturalist from the camp, asleep with his spectacles on and a notebook open on his face. The mosquitoes are all on the inside with him.", },
      } },
    { name = "the hearth",
      description = "A square of clay on the cane floor with three stones and a small fire that is never let out. It is not for warmth. It is for smoke, and for somewhere to look.",
      things = {
        { name = "the pot", description = "Black, on the three stones. Sweet potato and something green. Guests help themselves with a shell. There is no charge. Auntie Mo says that you cannot sell a person their supper, any more than their sleep." },
        { name = "the fire keeper", description = "A boy of about eight whose whole task is to put on one stick whenever the last has burned through. He does it with fearful gravity. The fire has not gone out in his time, nor in his grandfather's." },
        { name = "the three stones", description = "River stones, round, black with soot. They are the oldest things in the village after the post. When Stilts moves, as it has moved, for floods, the stones go first, in the best canoe, and the people follow." },
      } },
    { name = "the row of gourds",
      description = "Hung from the eave by their necks, each stoppered with a leaf: the cellar of the house.",
      things = {
        { name = "this morning's", description = "Sweet and cloudy and hardly a drink at all. It is given to children and to northerners." },
        { name = "last night's", description = "Sharp. It fizzes on the tongue and talks back." },
        { name = "the one with the red string", description = "Three days old, and kept at the far end, by itself. It is used for cleaning pots, for starting arguments, and for Gad.",
          actions = {
            { "Try the red string", say "Auntie Mo watches you pour it. She says nothing. You drink. For some time afterwards you are able to hear the lake. Not the sounds on it. The lake. She takes the gourd out of your hand and hangs it up again, and tells the house that you are very brave, in the tone used of puppies." },
          } },
      } },
    { name = "the regulars",
      description = "Those who are here every evening, whatever they have at home.",
      things = {
        { name = "two old fishermen", description = "Side by side in two hammocks, arguing about a fish that one of them lost in the year of the big flood. It grows each night. By now it could not have got into the lake." },
        { name = "a drummer off duty", description = "He does the day drum. In the evening he sits with his hands under his thighs so as not to tap. Now and then a finger gets out, and somebody three villages off is told that supper was sweet potato." },
        { name = "a trader from up river", description = "On his way down to Pomfret's with a basket, and very full of it. He has heard that the north has a new marvel in: a round thing of glass with a small house inside, and when it is shaken it rains white. He means to have it if it costs him the canoe.",
          actions = {
            { "Tell him it is called a snow globe", say "He repeats it twice, carefully, to get it right for the Aunts. \"And the white. That is the cold?\" Near enough, you say. He looks at the fire for a while. \"You come from a place,\" he says, \"where the sky throws things at the houses. And you came {i}here{/} to see wonders.\"" },
          } },
      } },
    { name = "the rafters",
      description = "Up in the smoke: boots, bundles, fish traps, and everything else that has to be kept from damp, ants and children.",
      things = {
        { name = "your boots", description = "Hanging by their laces between a drying eel and somebody's wedding drum. Already they have a look of belonging." },
        { name = "a row of sun helmets", description = "Seven, white, cork, each on its own peg, each with a name inked in the band. Explorers. They stayed here on their way up. Auntie Mo keeps the helmets dusted. She has stopped expecting anybody to come back for one, but it does not do to give away a guest's hat." },
        { name = "a gecko", description = "Pale, upside down on a beam, with feet like small hands. It says its own name twice, sharply, and eats a moth. The house counts the calls. Seven in a row is luck. It has never been known to do more than six, and it has been a lucky house anyway." },
      } },
    { name = "the cooking corner",
      description = "The cookhouse sends over the fish. What is done here is only the keeping warm and the sauce: a grindstone, a heap of peppers, a child grinding.",
      things = {
        { name = "the grindstone", description = "A slab with a dip worn into it deep enough to bath a baby in, and a roller the same age. Every sauce made on it has a little of the stone in it. That is said to be why the people of Stilts have such good teeth, or such bad, depending on who is telling you." },
        { name = "the sauce", description = "Green. There is a spoon standing in it, and the spoon is of horn, because the last one was of tin." },
      } },
    { name = "the lamp on the pole",
      description = "Outside, at the end of the walk: a big gourd of glow-worms, hung high, so that canoes can find the house after dark. Moths go round it in a ball. Bats go through the ball. It is the busiest crossroads in Stilts." },
    { name = "the store under the floor",
      description = "A hatch in the cane, and under it a platform slung just above the water, where it is cool: yams, a net of coconuts, jars sealed with clay.",
      things = {
        { name = "the sealed jars", description = "Fish, put down in salt and pepper and left for a season. Auntie Mo opens one for weddings. The smell clears the house, and is spoken of afterwards with love." },
        { name = "an otter", description = "Under the platform, on a cross beam, eating a fish with both hands. It lives there. It is counted among the regulars and has a gourd, which it uses as a pillow." },
        rat { description = "On the net of coconuts, small and brown, with large ears. It is a rice rat and swims like a fish. The otter knows about it. They have an understanding, the rat's half of which is to be elsewhere." },
      } },
    { name = "the rule board",
      description = "A plank on the centre post with pictures burned into it, for those who cannot be told. A boot in a hammock, crossed out. A man shouting, crossed out. A man with a long knife cutting a straight line through trees: crossed out twice." },
    { name = "the night noises",
      description = "The house has no walls, so you get all of it: frogs like a thousand creaking doors, something that laughs, something that drops fruit on the thatch on purpose, and under everything the lake, lapping the legs of the house like a cat at a dish.",
      actions = {
        { "Listen", say "After a while it sorts itself out. The frogs are a floor. The insects are a ceiling. In between, now and then, a single voice goes across like a person crossing a room. You fall asleep trying to count how many kinds of thing are awake, and get to thirty." },
      } },
    { name = "the far end",
      description = "Where the roof comes down low, and there is one hammock set apart with a mat hung round it. A woman is asleep in it with ash on her feet. Auntie Mo says to let her be: that is the Asker, who goes up the mountain. She came down this morning. It said not this week." },
  },

  exits = {
    { to = "jg_village", description = "Back along the main walk, three planks ahead of the children." },
  },
}
