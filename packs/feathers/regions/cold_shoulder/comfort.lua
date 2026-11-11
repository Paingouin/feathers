-- Warm places in Drift: the inn, the bath house, and where the bath house gets its water.

space {
  id = "cs_inn",
  region = "cold_shoulder",
  name = "The Thin Ice",
  description = "The inn at Drift, and the largest building north of the Stack: two floors of yellow timber on eight runners, with a porch to stamp in and a room beyond it so warm that your eyebrows drip. Long tables, a stove like a locomotive, lamps, steam, forty people and nearly as many dogs. Everyone looks up when you come in, sees that you have shut the door behind you, and approves.",
  palette = { bg = "#140e09", text = "#e0d2bc", dim = "#806c54", accent = "#f0a848", border = "#503a24" },
  ambience = { flicker { color = "#ffb060", strength = 0.25 }, steam { glyphs = "˙·∙", color = "#6c6458", rate = 0.4 } },

  things = {
    { name = "the bar",
      description = "A whale's jawbone, sawn flat along the top and polished by elbows. It curves. The landlord serves from the inside of the curve, so nobody is ever more than an arm away from him.",
      things = {
        { name = "the landlord",
          icon = "☺",
          description = "Halvard Brack, broad, slow, with a beard he tucks into his belt. He has never raised his voice. In a town standing on forty feet of ice over a mile of sea, nobody stamps and nobody shouts. It is thought to be asking for it.",
          actions = {
            { "Order a drink", say "He looks at your mail tally, hanging out of your pocket, and puts a horn mug in front of you without asking. It is hot. It is ale with an egg in it and something that was a root. \"On the post,\" he says. You drink it and feel your feet come back to you one toe at a time." },
            { "Ask for the news", say "\"The Hendry twins have moved. So has everybody. The Moot sat, and found for the fish.\" He wipes the bone. \"And there's word the sun was seen from the Hanging Water on Tuesday, for the length of a hymn. I don't hold with getting excited.\"" },
          } },
        { name = "the harpoon over the bar",
          key = "cs_bar_harpoon",
          description = "On two iron hooks above the bottles: nine feet of ash with a black iron head. It is the first harpoon of Blowhard Station, the one that was not thrown. The Station gave it into the keeping of the inn a hundred years ago, on the grounds that a thing like that ought to be where people can look at it and where nobody is sober enough to use it.",
          variants = {
            { when = flag "cs_harpoon_given", name = "two iron hooks over the bar",
              description = "Empty, and already there is a pale shape on the wall where a harpoon hung for a hundred years. Halvard has put a sprig of dried heather on one hook so that it does not look bare." },
          },
          actions = {
            { "Ask about the harpoon", when = all { no(flag "cs_heard_whales"), no(flag "cs_harpoon_given") },
              say "\"That's the Unthrown,\" says Halvard. \"Josiah Flense's iron.\" You ask if you might hold it. He looks at you for some time. \"Have you heard them?\" he says. \"In the bay. With the oar.\" You say you have not. \"Then you'd only want to throw it,\" he says, and goes on wiping." },
            { "Ask about the harpoon", when = all { flag "cs_heard_whales", no(flag "cs_harpoon_given") }, set "cs_harpoon_given", give "cs_unthrown_harpoon",
              say "\"Have you heard them?\" says Halvard. You say you have, with the oar, and you find you cannot say more than that. He nods slowly. The room has gone quiet. He lifts the harpoon down off its hooks and lays it on the bar in front of you. \"There's a custom,\" he says. \"It goes south, once in a while, with somebody who's listened. So they'll know down there that it can be done. Not throwing it.\" An old woman by the stove says, \"He'll bring it back,\" and somebody else says, \"They never do,\" comfortably, and the talk starts again.", fx "sparkle" },
          } },
        { name = "the horn mugs", description = "Musk ox horn, a row of forty on pegs, each with its owner's mark burned in. They do not break if dropped and do not freeze to the lip. A pewter mug up here is a practical joke.",
          things = {
            { name = "a mug with a paw burned in", description = "Larger than the rest, and with no handle. It is kept for a customer who comes in at the dark of the moon, sits by the door where it is coolest, and pays in fish. He takes it with both hands." },
            { name = "the stranger's mug", description = "Yours. It has a hole bored near the rim and a thong through it, so that you can hang it round your neck and not put it down on a table that is colder than you think." },
            { name = "a mug turned to the wall", description = "For a man who went out to his lines in a blow nine winters back. It is turned to the wall and it is not taken down. They are not sentimental. They say he is late." },
          } },
        { name = "the taps", description = "Three: {i}Small{/}, {i}Winter{/}, and {i}Long Night{/}. Long Night is brewed at the last sunset and broached at the first sunrise and is drunk, by custom, standing up, out of doors, facing south." },
        { name = "the slate", description = "Chalked with owings: {i}Tally, 2 days net mending. Wick, a ladder's loan. The Bear, 11 cod (paid).{/}" },
      } },
    { name = "the great stove",
      icon = "♨",
      description = "A riveted iron cylinder the size of a boiler, lying on its side on a bed of slate, with a door at each end and a flue that goes up through both floors. It was salvaged out of a steamer. There is a brass plate on it that says {i}TICKOVER{/} and a chalk note under that says {i}AND GLAD OF IT{/}.",
      things = {
        { name = "the stove bench", description = "Runs right round it. By custom the place nearest the door of the stove goes to whoever came in last from farthest. Tonight that is a sealer from the east ice, who is asleep sitting up with a dog on each foot." },
        { name = "the drying rail", description = "Hung with mittens, hoods, a whole coat standing by itself, and one fish that somebody has forgotten was a fish." },
        { name = "the wood box", description = "Driftwood, every stick of it, from forests nobody up here has seen. The children are taught the names of trees from the wood box: this is oak, this is pine, this had a nail in it." },
      },
      actions = {
        { "Take a turn feeding it", say "You open the iron door and put in a baulk of something that was once part of a ship. The fire takes hold of it with a roar. The whole room says, without turning round, \"Shut it,\" in chorus, and you do, and are one of them for the evening." },
      } },
    { name = "the long tables",
      description = "Three, each a single pine trunk split down the middle, flat side up. You sit where there is a gap and are fed.",
      things = {
        { name = "the sealers", description = "Six men off the east ice, in for the month, eating as if against a clock. They talk about ice the way farmers talk about soil: young ice, rotten ice, ice with a bad heart." },
        { name = "a card game", description = "Played with a pack made of thin slips of bone, the pips scratched in. The stake is a pile of dried peas. Losing your peas is a serious matter. You have to go home and tell your wife there is no soup.",
          actions = { { "Ask to be dealt in", say "They deal you five bones. You do not know the game. Nobody tells you the rules, and you gather that finding them out is the game. You lose eleven peas you did not have. They are put on the slate, against the day you grow some." } } },
        { name = "the survey man off duty", description = "The surveyor from the Last Hut, down for his monthly bath, drinking Winter by himself with a rolled sheet across his knees. He does not unroll it. He holds it like a man with a sleeping child.",
          actions = { { "Ask to see his map", say "\"It's not finished,\" he says. You say you would like to see how far he has got. He looks into his mug. \"That's a fair question,\" he says. \"Come up to the hut, if you've the legs. It's easier shown.\"" } } },
        { name = "a woman telling a story", description = "To eight children, about a hunter who followed a fox north until he came to where the snow had not been walked on by anything, ever, and turned round because it seemed a shame. The children want to know what was further on. \"That's why it's a good story,\" she says." },
      } },
    { name = "the kitchen",
      description = "Behind a hatch. The cook is Mistress Brack, who does everything Halvard does but quicker.",
      things = {
        { name = "the pot of the day", description = "Seal and barley, and dumplings the size of fists. It sticks to the ribs and, the regulars say, to the ribs of the man next to you.",
          actions = { { "Ask for a bowl", say "A bowl comes through the hatch, and a second bowl turned over on top of it to keep the heat in, and a third thing which is a dumpling by itself, on account of you being thin. You eat it all. You were not thin for long." } } },
        { name = "the bread oven", description = "Built into the back of the great stove. The loaves are rye, black, round, with a hole in the middle, and are threaded on a pole in the rafters to keep. A loaf from October is eaten in March with an axe." },
        { name = "a crock of cloudberries", description = "Gold, in their own juice, from the one fortnight. She gives them out by the spoon, to children, the sick, and anybody who has walked in from the Station against the wind." },
        { name = "the ice window", description = "The kitchen has no glass. The pane is a slab of clear lake ice, renewed each month. Through it the lamps of Long Street are a row of soft gold blurs, and people going by are shapes that might be anybody." },
        { name = "the kitchen cat", description = "White, vast, and with fur between its toes. It sleeps in the proving drawer with the dough. It is the only cat north of the Stack and conducts itself as a monument." },
      } },
    { name = "the cold cellar",
      description = "A trapdoor behind the bar. They did not dig it, they melted it, with a hot shot on a chain. Eleven steps cut in the ice go down into a room with blue walls.",
      things = {
        barrel { name = "a barrel of Long Night", description = "Chalked with the date of the last sunset. It may not be touched until the sun is seen. A boy is posted on the roof every noon from January, and the whole inn listens for his feet." },
        { name = "sides of seal", description = "Hanging, frozen, rimed white. Nothing goes bad here. The trouble is persuading it to thaw." },
        { name = "things in the wall", description = "The cellar walls are clear for a foot in. Frozen into them, where the town's older streets passed over this ice: a child's wooden horse, a kettle, and a clay pipe with a chewed stem. Halvard has put a lamp behind the horse. Its owner is seventy and comes down to look at it at Christmas." },
        { name = "the floor", description = "Black. That is not dirt. That is the last yard of ice with the sea showing through it. You stand very still, and then you go back up the eleven steps without having decided to." },
      } },
    { name = "the stairs",
      description = "Up to four rooms, each directly over a part of the stove flue, which runs under the floor like a hot river.",
      things = {
        { name = "the best room",
          description = "Over the stove itself. A box bed, a bearskin given freely by a bear at the end of a long life (there is a certificate), and a window.",
          things = {
            { name = "the certificate", description = "Framed. {i}This skin was willed to the house by its late occupant, of the Moot, in consideration of thirty winters' fish. Witnessed: a paw. Witnessed: H. Brack.{/}" },
            { name = "the window", description = "Triple glass, facing north. In the season they knock on your door when the lights come out, whatever the hour, and you are expected to get up." },
          } },
        { name = "the second room", description = "Let to the Survey, by the decade. A table, a lamp, a theodolite in a case, and ninety rolled maps in a rack, every one of them finished. The ninety-first slot is empty. It has a little brass label already." },
        { name = "the third room", description = "The guest book says a clerk had it for a week last winter. {i}H. Pargeter, Saltwick. Occupation: Tides, Inward. Purpose of visit: following it up.{/} Under {i}Onward address{/} he has written something and then inked it over, carefully, into a neat black rectangle. He paid in full. He left the bed made and a pencil sharpened on the sill." },
        { name = "the cheap room",
          description = "Under the roof, where the flue comes out: warm as toast at one end and a bucket of ice at the other.",
          things = {
            candle(),
            { name = "the hammock", description = "Slung across the warm end. It is netted from old fishing line and smells of cod and sleeps like a hand." },
            { name = "names on the rafter", description = "Burned in with a hot wire. Sealers, whalers who caught nothing, a geologist, one {i}Wilf woz ere{/} with a small drawing of a bear, running, and under it in a different and larger scratch, four parallel lines." },
          },
          actions = {
            { "Burn your name in", say "Halvard lends you the wire. You heat it in the candle and write your name on the rafter, small, well away from the four lines. You add {i}Adventurer{/}. The wire has gone cold by then and it comes out as {i}Advent{/}, which the inn takes for a religious sentiment." },
          } },
      } },
    { name = "the porch",
      description = "The room before the room, where you leave the weather. A bench, a brush, and a rule.",
      things = {
        { name = "the brush", description = "For snow. You brush the person in front, and the person behind brushes you. A man who brushes himself is thought to be standing on his dignity." },
        { name = "the rule", description = "Burned into a board: {b}DOOR.{/} That is all it says. It is the only law in Drift that has never needed a second word." },
        { name = "the row of snowshoes", description = "Stuck upright in a drift by the step, like a fence. You can tell who is in by reading it." },
      } },
    { name = "the dogs under the tables",
      icon = "d",
      description = "A pale, breathing carpet. You are warned not to drop food, since the resulting movement shifts the furniture.",
      actions = {
        { "Put your feet on one", say "It is the custom, and the dog seems to think so too. It is like resting your boots on a warm hill. After a while the hill sighs and turns over, and the whole bench goes up an inch and comes down." },
      } },
    { name = "the fiddler",
      description = "On a stool by the stair, in mittens with the fingers cut off. He plays slow airs, since a reel would have the room stamping and the room is on ice. The slow airs are very beautiful. Necessity has made them a school of it." },
    { name = "the window on the street",
      description = "Frosted over, with one clear patch the size of a hand kept rubbed by whoever sits nearest.",
      actions = {
        { "Look out", say "Long Street, lamp after lamp, going away into falling snow. A house goes by. It takes some time. The old woman in its window raises her needles to you, and you raise your mug." },
      } },
  },

  exits = {
    { to = "cs_town", label = "Out to Long Street", description = "Through the porch, and mind the door." },
  },
}

space {
  id = "cs_bath_house",
  region = "cold_shoulder",
  name = "The Bath House",
  description = "A long hut of logs, caulked with moss, with no windows and a door like a ship's hatch. Inside it is another country: black dark, wet heat, the smell of birch and hot stone. You cannot see the far wall for steam. People sit about on tiered benches in nothing at all, in perfect silence, as red as lobsters, with the look of those who have been let off something.",
  palette = { bg = "#100c0a", text = "#dcd0c4", dim = "#7c6c60", accent = "#f09060", border = "#4c3830" },
  ambience = { steam { glyphs = "˙·∙°", color = "#8c8078", rate = 0.8 }, flicker { color = "#e07040", strength = 0.12 } },

  things = {
    { name = "the bath wife",
      icon = "☺",
      description = "Old Inga Loft, who keeps the stones hot and the peace. She is dressed, which nobody else is, in a linen shift and a felt hat like a bell. She has seen everybody in Drift as they were made and is the most discreet woman in the north.",
      actions = {
        { "Ask where the hot water comes from", when = no(flag "cs_spring_known"), set "cs_spring_known",
          say "You have been wondering. There is a great tub of it, steaming, and no fire under the tub, and no well. Inga looks you over. \"You've been in the heat and out in the snow and back?\" You say you have, twice. \"And not yelled?\" Not so that anyone heard. She unhooks a lantern. \"Then you've had a bath, and may see where one comes from. Behind the cold room. Mind the step. There isn't one.\"" },
        { "Ask where the hot water comes from", when = flag "cs_spring_known",
          say "\"You know the way,\" says Inga. \"Take a towel this time.\"" },
        { "Ask how long to stay in", say "\"Till you've forgotten what you came in worrying about,\" she says. \"Then a bit longer, to be sure.\"" },
      } },
    { name = "the stones",
      icon = "♨",
      description = "A heap of round grey beach stones in an iron cradle over a fire pit, glowing dull red underneath. Every stone was brought from the south shore and has been heated ten thousand times.",
      things = {
        { name = "the ladle", description = "Birch, long handled. A ladle of water on the stones is called a {i}word{/}. You are allowed to say three before somebody takes the ladle away from you." },
        { name = "a cracked stone", description = "Split clean in two by heat, years ago, and left where it lay. Inside it is a fossil: a little ribbed shell, perfect. A sea creature, in a beach stone, in a bath, on the sea. Inga says it has come home by the long way." },
      },
      actions = {
        { "Say a word", say "You tip the ladle. The stones shriek, and a wall of steam gets up off them and walks over you. Every hair on your body reports for duty. Along the benches there is a long, grateful, wordless groan, as from people being forgiven." },
      } },
    { name = "the benches",
      description = "Three tiers, of aspen, which does not hold the heat. The top bench is for the old and the proud.",
      things = {
        { name = "the top bench", description = "Under the roof, where the air is like the inside of a loaf. Four old men sit on it in a row with their eyes shut. They have been up there since noon and are holding a competition which none of them will admit to." },
        { name = "the middle bench", description = "Families. A mother is scrubbing a child, who bears it as children do everywhere. It is the one place in the north where you find out what people look like." },
        { name = "the low bench", description = "For visitors, by the door, where a thread of cold comes in along the floor. You sit there and are grateful for the thread." },
      },
      actions = {
        { "Try the top bench", say "You climb up. The four old men move along without opening their eyes. You last as long as it takes to count nine, slowly. As you climb down again the oldest says, \"Seven,\" to the others, and they all nod, and somehow it is not unkind." },
      } },
    { name = "the birch whisks",
      description = "Bundles of birch twigs, with the leaves on, soaking in a pail. The leaves come from the south by the mail boat, dried, and cost more than tobacco.",
      actions = {
        { "Be whisked", say "A very large sealer does it for you, as a courtesy, across the shoulders. It is like being beaten up by a small wood. It smells of summer. Afterwards your back sings for an hour, and you find yourself thanking him." },
      } },
    { name = "the cold room",
      description = "Through a second door: a room with no roof. Snow on the floor, stars or cloud overhead, and a hole cut through the ice to the sea, with a ladder.",
      things = {
        { name = "the plunge", description = "A square of black water, four feet by four, with steam going up off the people who have just come out of it. You go from the stones to this, at a run, and back again. It is said to be good for the heart. It is certainly a surprise to it.",
          actions = { { "Go in", say "You go down the ladder. There are no words for the first second, and you have none to spare. Then you are out, and standing in the snow under the sky with steam pouring off you like a kettle, and you are not cold. You are not anything. Every part of you has stopped complaining at once. It is the first real quiet you have known." } } },
        { name = "the snow bank", description = "For those who will not do the plunge. You lie down in it, and roll. It is not thought any less of. An alderman's dignity does not survive it either way." },
        { name = "a back door", key = "cs_cold_room_door", visible_if = flag "cs_spring_known",
          description = "Low, of planks, behind the snow bank, with warm air coming under it. You took it for a wood store." },
      } },
    { name = "the great tub",
      description = "A vat of pine staves ten feet across, bound in iron, sunk in the floor, full to the brim with water that is hot, slightly green, and smells very faintly of eggs. There is no fire under it and no pipe that you can see.",
      things = {
        { name = "the water", description = "Hot as a good bath, and it does not cool. It comes in at the bottom and goes out at a lip in the side, day and night. Soap will not lather in it. It leaves your skin feeling like a new glove." },
        { name = "people in it", description = "Up to their chins, in a ring, with their heads back on the rim. Nine of them. It is where the town council sits. It is held that nobody can be pompous in a tub, and that a motion you would not care to put while naked is a motion that ought not to be put." },
      },
      actions = {
        { "Get in", say "They move round to make a gap. You lower yourself in. It closes over your shoulders like being agreed with. Somebody on the far side is proposing that Further Street get a second lamp. You find you are in favour. You are asked, since you are in the tub. You say aye. It is carried." },
      } },
    { name = "the changing porch",
      description = "Pegs, and under every peg a pair of boots, and in every boot a hot stone wrapped in a rag, put there by Inga, so that you step back into warmth.",
      things = {
        { name = "the pegs", description = "No names. Everybody knows everybody's coat. Yours is the thin one, hanging a little apart, which the other coats seem to be sorry for." },
        { name = "a shelf of felt hats", description = "Bell shaped, to keep your head from cooking. You take one. It makes everybody look like a mushroom, and there is a great equality in it." },
      } },
    { name = "the rule of the house",
      description = "Carved over the inner door: {i}NO RANK. NO QUARREL. NO NEWS.{/} A feud walks in here and sits down on the same bench as its other half, and both of them sweat, and nothing may be said. Several have not survived it." },
    { name = "the bucket boy",
      description = "A child of nine in a felt hat, who goes round with a pail of cold water and a dipper, and is the only person in the room allowed to throw water at a councillor." },
    { name = "the dark",
      description = "One lamp, by the door, turned low. The rest is the glow under the stones. People are shapes, and voices when they speak, which is seldom. It is very easy, in here, to tell the truth, and it is the custom not to remember afterwards who did." },
  },

  exits = {
    { to = "cs_town", label = "Out, dressed, to Long Street", description = "Through the porch, into your boots, which are warm." },
    { to = "cs_hot_spring", label = "Behind the cold room",
      description = "Through the low back door and down a passage that somebody melted rather than dug.",
      requires = flag "cs_spring_known", hidden = true },
  },
}

space {
  id = "cs_hot_spring",
  region = "cold_shoulder",
  secret = true,
  name = "The Kettle",
  description = "The passage slopes down through blue ice and comes out in a cave as big as a church, melted from below. In the middle of the floor, in a basin of black rock that has no business to be here, a spring of hot water comes up out of the sea bed, through the sea, in a pipe of stone it has built for itself, and fills a pool that steams. Drift is not here by chance. The ice carries the town away west every year, and every year the town walks back, to stay over this.",
  palette = { bg = "#06100f", text = "#cce0dc", dim = "#58746e", accent = "#70e0c0", border = "#244c44" },
  ambience = {
    steam { glyphs = "˙·∙°", color = "#6c8c88", rate = 0.7 },
    shimmer { color = "#1a6050", strength = 0.5 },
    drip { glyphs = "⠁⠂⠄", color = "#60b0a0", rate = 0.4 },
  },

  things = {
    { name = "the pool",
      wonder = true,
      icon = "≈",
      description = "Twenty feet across, and so clear that it is some time before you understand how deep it is. The water is green at the edge and goes down through every blue there is to a throat of black rock, far below, from which a slow column of bubbles rises, turning. {magic}The walls of the cave are ice. The water is as hot as tea.{/} Where the steam meets the roof it freezes, and falls again as a fine dry snow, on to the pool, and melts, so that it is always snowing in here, on to hot water, in silence, by the light of whatever lamp you brought. You stand at the edge with your mouth open, and it snows gently into that as well.",
      things = {
        { name = "the chimney", description = "Under the water you can see the top of it: a pipe of pale stone, knobbed and fluted like a candle that has run, which the spring has laid down a grain at a time, all the way up from the sea floor. It is a mile of chimney. It was built by hot water, in the dark, with nobody asking it to." },
        { name = "the bubbles", description = "They come up in a string, each the size of a plum, wobbling, and burst at the top with a small sound like a lip. They smell of struck matches." },
        { name = "the snow on the water", description = "It comes down slowly through the steam and each flake sits on the surface for half a breath, whole, before it goes. You watch a hundred of them do it and are not tired of it." },
      },
      actions = {
        { "Get in", say "It is hotter than the tub, and it buoys you up, so that you lie in it like a cork with the snow coming down on your face. There is a current, slow, from underneath, lifting. You have the feeling of being held up on the palm of a hand that has come a very long way to do it.", fx "wash" },
        { "Put your hand in the bubbles", say "They run up between your fingers, warm, tickling, and go on to the top. They began an hour ago, a mile down. You have delayed them, in all that, by about the width of a hand." },
      } },
    { name = "the black rock",
      description = "The basin's rim is not ice. It is stone, black and glassy, the only rock for forty miles in any direction, including down. The spring made it. It is the newest land in the kingdom and it is about the size of a hearth rug.",
      things = {
        { name = "moss", description = "On the warm stone, at the water line, a cushion of bright green moss the width of two hands, with three white flowers in it no bigger than pinheads. It is the only growing thing on the ice. Inga waters it. Nobody knows how the seed came." },
        { name = "a row of marks", description = "Scratched in the rock with a nail: a stroke for each year the town has come back. A hundred and ninety. The oldest strokes have a skin of new stone over them, as thin as breath on a glass." },
      } },
    { name = "the roof",
      description = "A dome of ice, melted smooth, forty feet up, and hung all over with icicles that the steam feeds and the warmth trims. They are every length. When a bubble of warm air goes up among them they ring.",
      actions = {
        { "Listen to the icicles", say "A string of bubbles breaks. The warm goes up. Somewhere in the roof one icicle says {i}ting{/}, and another lower down says {i}tang{/}, and then a dozen at once, softly, like a cupboard of glasses when a cart goes by. It dies away. The next bubbles are already on their way up." },
      } },
    { name = "the outflow",
      description = "The pool spills at one side into a channel it has cut in the ice, and runs off downhill into the dark, steaming, towards the bath house tub. Further on it goes back to the sea by a way nobody has followed.",
      things = {
        { name = "the pipe", description = "A hollow log, set in the channel, which carries a share of the water up to the tub by nothing but its own push. It was laid by the first bath wife. The log is larch, like the house runners, and has gone as hard as iron." },
        { name = "pale shrimps", description = "In the channel, where the water is only warm: a crowd of little white shrimps with no eyes, each as long as a fingernail, going about on the bottom. They live nowhere else in the world. They have never been cold and do not know there is such a thing." },
      } },
    { name = "the survey peg",
      description = "A brass peg driven into the black rock, stamped with a crown and a number. The Survey fixes the position of the Kettle every summer, since it is the only place in the north that stays put.",
      things = {
        { name = "the stamped number", description = "{i}N 1{/}. The first fixed point of the northern series. Every sheet they have drawn up here, all ninety, is measured from this peg. So is the ninety-first." },
      } },
    { name = "a stool by the water",
      description = "A three-legged office stool, the kind with a round seat, set at the edge of the pool facing the outflow. It is not Inga's. It has left three ring marks in the frost on the rock, and beside it a short pencil stands in a crack, point up.",
      things = {
        { name = "the pencil", description = "Sharpened with a knife, very evenly. On the rock under it somebody has made a column of small ticks, twenty or so, and then a question mark, and then stopped." },
      },
      actions = {
        { "Ask Inga about it, afterwards", say "\"The clerk,\" she says. \"Sat there four days watching the water go out of the pool. Timing it. I said, it doesn't go in and out, it just goes. He said, 'Then somebody's letting it.' I said nobody's letting it, it's a spring. He was very polite.\" She folds a towel. \"He took the stool when he left. That one's a spare he had sent up. I don't know what he's doing with two.\"" },
      } },
    { name = "the ice walls",
      description = "Blue, and clear to a great depth, and banded: a dark line for each summer, a pale band for each winter, like the rings of a tree lying on its side.",
      things = {
        { name = "things in the bands", description = "A flake of ash from some old fire. A dog's tooth. A wooden spoon, twenty bands in. A child's mitten, sixty bands in, red. The town's whole life is in the wall, in order, with nothing left out." },
        { name = "the oldest band", description = "At the very bottom, by the floor, the ice goes dark and green. That is from before Drift, before the Station. There is one thing in it: a round grey stone, like the bath house stones, where no stone could have come unless it was carried. Somebody was here before the first bath wife, with a stone, and wanted it hot." },
      } },
    { name = "the warmth",
      description = "It is the only place in the Cold Shoulder where you take your coat off because you want to. The air is wet and soft and about as warm as a June evening at home. You had forgotten what your shoulders were like when they were not up round your ears." },
    { name = "a lantern on a hook",
      description = "Left burning by Inga, on an iron hook let into the ice. The flame is doubled in the pool, and doubled again in every icicle, so that the cave seems lit by a great many small fires that all move together." },
    { name = "a bench of driftwood",
      description = "One plank on two stones. The bath wives come down here at the end of the day, alone, and sit. It is the perquisite of the post. There is a dent in the plank the shape of a hundred and ninety years of that." ,
      actions = {
        { "Sit down", say "You sit in the dent. The pool steams. The snow comes down. The icicles ring a little. Above you, through forty feet of ice, are sixty stoves and the whole long dark, and you would not have guessed, up there, that the town had a heart, or that it was this warm." },
      } },
  },

  exits = {
    { to = "cs_bath_house", label = "Up the melted passage", description = "Back up the blue slope to the cold room, which will feel like a slap." },
  },
}
