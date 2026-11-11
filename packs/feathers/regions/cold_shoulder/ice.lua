-- Out on the open ice: the fishing camp, the bears' Moot, and the ship that is wintering.

space {
  id = "cs_fishing_camp",
  region = "cold_shoulder",
  name = "The Lines",
  description = "A mile north of Drift, on ice as flat as a table, stand thirty little huts no bigger than sentry boxes, each on its own sledge, each with a stove pipe and a thread of smoke. Inside every one a man or a woman is sitting on a box over a hole, holding a string, and thinking. This is the fishing camp. It is the quietest place of work in the kingdom. Somewhere out past the last hut, something large and white is sitting over a hole of its own.",
  palette = { bg = "#060b13", text = "#d0dcea", dim = "#5c6e86", accent = "#90c8e8", border = "#26405a" },
  ambience = {
    snow { glyphs = "·˙", color = "#8ab0d0", rate = 0.15, speed = 0.2 },
    stars { glyphs = "·˙", color = "#6f86a8", rate = 0.2 },
  },

  things = {
    { name = "the huts",
      description = "Painted, each a different colour, so as to be found in a blow. They are dragged out in November and dragged home in April, and in between a good many of the owners sleep in them, by choice.",
      things = {
        { name = "a red hut", description = "Erik Flett's. The door is open a crack. He is sitting on an upturned pail in his stockinged feet with a line round one finger, reading last year's newspaper by a candle. He has caught nothing since Tuesday and is entirely happy." },
        { name = "a green hut", description = "A wife and husband, the Hendrys, back to back on one box with a hole each. They have not spoken all day. At dusk one of them will say {i}well{/} and the other will say {i}aye{/}, and they will go home having had a good talk." },
        { name = "a hut with a flag", description = "A rag on a stick means a fish too big to get up the hole. Three neighbours are standing round it with an ice saw, discussing whether to widen the hole or reason with the fish." },
        { name = "the smallest hut", description = "A child's, made from a tea chest, with a hole the size of a saucer. A girl of seven is in it with a bent pin on a thread. She has a pile of nine fish. The grown men on each side have two between them and are being gracious about it." },
      },
      actions = {
        { "Knock on a door", say "A voice says, \"It's open, don't let the warm out.\" You squeeze in. There is room for one and a half. You are the half. You are handed the line, without a word, while the owner fills his pipe, and you hold it, and for the first time since you set out to be an adventurer you sit still and want nothing." },
      } },
    { name = "a fishing hole",
      description = "A round well through three feet of ice, a foot across, with slush in it that has to be skimmed every few minutes with a ladle like a tea strainer.",
      things = {
        { name = "the water", description = "Black, and it comes up to within a hand of the top and breathes there, slowly, up and down. That is the sea, a mile deep, looking at you through a keyhole." },
        { name = "the line", description = "Horsehair, on a wooden frame, going straight down. Forty fathoms are out. You hold it across one finger. Every so often something a long way below takes an interest, and the interest comes up the line into your hand like a tap on the shoulder." },
        { name = "the skimmer", description = "Whalebone, pierced. The ice never stops trying to mend the hole. It is the patience of the fisher against the patience of the cold, and the cold has more practice." },
      },
      actions = {
        { "Jig the line", say "You lift and drop, lift and drop, as you have been shown. Nothing. Nothing. Then a pull, so slow and heavy that you think you have caught the bottom of the sea. You haul. It comes up hand over hand for a very long time, and at the end of it is a cod as long as your arm, which looks at the sky for the first time in its life and is not impressed. You have caught a fish. You hold it up. Nobody is looking. You hold it up anyway." },
      } },
    { name = "the catch",
      description = "Outside every hut, a stack of fish frozen stiff in the shapes they landed in, like firewood made by somebody with a sense of humour.",
      things = {
        { name = "a cod", description = "Green and gold when it comes up, and grey in a minute. The cheeks are the best part. The children are given the eyes, as sweets, and compete." },
        { name = "a wolf fish", description = "Blue-grey, with a face like a very old boxer and teeth that can crack a crab. It is still snapping at nothing, frozen, with great determination. It will thaw in the pot and be perfectly delicious, and it knows." },
        { name = "a fish nobody knows", description = "Long, clear as glass, with its backbone showing and a single row of blue lights down each side that are {glow}still, faintly, lit{/}. It came up on Erik's line from the full forty fathoms. He has set it apart from the others and stood a candle by it. Nobody will eat a thing they cannot name." },
      } },
    { name = "the fish master",
      icon = "☺",
      description = "Old Solveig Kell, who has the hut nearest the town and settles where each sledge may stand. She is ninety pounds of woman in sixty pounds of fur, and can tell the depth of the water by licking the line.",
      actions = {
        { "Ask what is out past the last hut", say "\"A neighbour,\" she says. \"He was here first. We fish to the mark and he fishes past it. If you go out, you go slow, you keep your hands where they can be seen, and you take something.\" You ask what one takes. She looks at your cod. \"That would do.\"" },
        { "Ask how the fishing is", say "\"Never ask that,\" she says, not unkindly. \"The fish are listening.\"" },
      } },
    { name = "the mark",
      description = "A line of whale ribs, set upright in the ice at twenty paces, running east and west past the last hut. It is the bound of the camp, fixed by the Writ. South of it the holes are people's. North of it they are not.",
      things = {
        { name = "the middle rib", description = "Carved with a hand, palm out, on the south side. On the north side, at the same height, it is scored with four deep parallel lines. Each party has signed its own face of it." },
      } },
    { name = "the bear at the far hole",
      key = "cs_camp_bear",
      icon = "Ω",
      description = "Two hundred yards beyond the mark, a white bear is lying on the ice with its chin on its paws and its nose a foot from a hole, exactly as the men in the huts are sitting, and for the same reason. It is the size of a hay cart. It has not moved in an hour. {danger}It has known you were here since you left the town.{/}",
      variants = {
        { when = flag "cs_bear_introduced",
          description = "The bear is sitting up beside its hole with your cod between its paws, eating it from the head down, slowly, with its eyes half shut. Now and then it looks at you, and then north along a line of its own old footprints, and then at you again. You have had clearer invitations, but not from anyone larger." },
      },
      things = {
        { name = "its paw", description = "Flat on the ice by the hole, as broad as a shovel, black underneath, with fur between the pads. Now and then one claw taps, once. It is the only sign that it is thinking." },
        { name = "its breath", description = "Two long plumes, in and out, slow as a bellows. The snow in front of its nose has melted into a little dish." },
      },
      actions = {
        { "Share your fish with the bear", when = no(flag "cs_bear_introduced"), set "cs_bear_introduced",
          say "You walk out past the mark, slowly, with your hands out and the cod held in front of you like a hat at a funeral. At twenty yards the bear lifts its head. At ten it stands up. It keeps on standing up for some time. {danger}You are looking at its chest.{/} You put the fish down on the ice, and step back, and, not knowing what else to do, say your name. The bear looks at the fish. It looks at you. Then it lowers its great head until its nose is level with your face, and breathes in, once, long, the whole of you, as a man reads a card. It breathes out. You have been {i}introduced{/}. It sits down and takes the fish in both paws. Behind you, a mile away, thirty people in thirty huts start breathing again.", fx "shake" },
        { "Share your fish with the bear", when = flag "cs_bear_introduced",
          say "You have no second fish. The bear looks at your empty hands, and then, with great tact, at something else." },
      } },
    { name = "the sledge dogs",
      icon = "d",
      description = "Staked out in a line upwind of the huts, curled like buns. When the wind comes round from the north every head comes up together and every nose points past the mark. Then they lie down again. They were introduced as pups.",
      actions = {
        { "Scratch one behind the ear", say "It allows it, with the look of a professional being asked to pose with a child." },
      } },
    { name = "the ice saw",
      description = "Six feet of blade with a handle at one end and a weight at the other, standing in a drift. The holes are sawn square in November and kept round all winter by the skimmers.",
      things = {
        { name = "the sawn blocks", description = "Stacked by the camp like a pile of glass bricks. They are sold to the kitchen at the inn for windows. Each has a few bubbles in it, caught going up, that will never arrive." },
      } },
    { name = "the kettle sledge",
      description = "A sledge with a brazier on it and a kettle on the brazier, which a boy pulls from hut to hut all day. He knocks, a mug comes out through a flap, he fills it, the mug goes in. He is the only thing in the camp that moves and is paid in fish heads.",
      actions = {
        { "Hold out a mug", say "He fills it with something brown from the kettle. It is tea, with butter in it, and salt. You were not expecting that. By the third mouthful you understand that it is not a drink, it is a meal, and by the bottom of the mug you would fight a man for another." },
      } },
    { name = "the sky over the ice",
      description = "There is a great deal of it. No hill, no tree, no roof. At noon a red light comes up in the south for an hour, without a sun in it, and goes down again. The rest is stars, so many and so low that the huts seem to be standing among them." },
    { name = "a far shape to the north-west",
      description = "Three thin lines standing up out of the ice, a long way off, too straight for anything the cold makes. Masts. The camp says {i}the ship{/} and does not say more, in the way one does not discuss a neighbour who has been a long time in mourning." },
    { name = "the sound",
      description = "None. Then, from under your feet, a long low note like a bow drawn across the lowest string there is, which runs away to the horizon and comes back. Solveig says it is the ice, taking up. The men in the huts do not look up. If it meant anything they would already be running." },
  },

  exits = {
    { to = "cs_town", label = "Back to Drift", description = "South along the stakes to the lamps." },
    { to = "cs_frozen_ship", label = "Out to the ship", description = "North-west over the flat, towards the three masts." },
    { to = "cs_bear_moot", label = "North, by the bear's footprints",
      description = "Past the mark, along a line of prints the size of dinner plates, each a long stride from the last, to wherever it is they go.",
      requires = flag "cs_bear_introduced", hidden = true },
  },
}

space {
  id = "cs_bear_moot",
  region = "cold_shoulder",
  secret = true,
  name = "The Moot",
  description = "The prints lead into a ring of ice blocks, each as big as a cottage, thrown up by the pressure of the floes and frozen where they stood, like a circle of standing stones made of glass. Inside the ring the snow is trodden flat as a floor. Eleven white bears are sitting round it on their haunches, at even distances, upright, with their forepaws on their knees. They were in the middle of something. They have stopped. {danger}All eleven heads have turned.{/} Your own bear walks past you into the ring, sits down in a twelfth place that was waiting for it, and looks at the others in a way that seems to say: he is with me, and brought fish.",
  palette = { bg = "#050a14", text = "#d4e0f0", dim = "#5a6c8a", accent = "#b0d8ff", border = "#284066" },
  ambience = {
    stars { glyphs = "·˙✦", color = "#7f96c0", rate = 0.3 },
    snow { glyphs = "·", color = "#8ab0d0", rate = 0.08, speed = 0.1 },
  },

  things = {
    { name = "the ring of bears",
      wonder = true,
      icon = "Ω",
      description = "You had thought a bear was an animal. These are sitting as judges sit. The moonlight comes through the ice blocks behind them, blue, and lies on eleven white heads and twenty-two small black eyes, and not one of them is looking at you as a thing to eat. They are looking at you as a thing to {magic}hear{/}. It is the Moot of the Bears, which the Writ says shall try all causes arising on the ice. It has sat at every dark of the moon since before there was a Writ, or a king to sign one. Nothing is spoken. A case is put by walking into the middle and standing there. It is answered by looking. You have never been in a room, anywhere, where so much attention was being paid.",
      things = {
        { name = "the oldest bear", description = "A sow, yellow with age, blind in one eye, with half an ear gone. She sits at the north of the ring and the others sit a little turned towards her. When she shifts her weight, all of them shift theirs." },
        { name = "a young bear", description = "A male of three or four, at the south, the last place. He is trying very hard to sit as still as the rest and cannot keep his nose from following a smell. The bear beside him leans, slightly, until their shoulders touch. He stops." },
        { name = "your bear", description = "He has the place nearest the gap. He is licking cod off one paw with an air of unconcern that would not deceive a child. He has brought a guest to the Moot and he is waiting to see how it is taken." },
      },
      actions = {
        { "Stand in the middle", when = no(flag "cs_moot_heard"), set "cs_moot_heard",
          say "There seems to be nothing else to do. You walk out on to the trodden snow and stand in the middle of the ring, and turn once round, so that all of them have seen your face. Then you wait. Nobody has taught you how to be looked at by twelve bears. You find you do it by not pretending anything. You are a would-be adventurer with a thin coat and no fish. You stand there and are that. After what may be a minute or an hour, the old sow lowers her head to the snow and raises it again. One by one, round the ring, the others do the same. Your bear lets out a breath like a sack being put down. You have {i}standing{/}.", fx "wash" },
        { "Stand in the middle", when = flag "cs_moot_heard",
          say "You have been heard once. To stand there again would be to bring a second case, and you have none. You keep to the edge, as a person with standing may." },
      } },
    { name = "the floor of the Moot",
      description = "Snow, packed by paws into something like marble. It has been trodden on this spot, or as near this spot as the drifting ice allows, for longer than the kingdom has had a name.",
      things = {
        { name = "the middle", description = "A hollow, worn a hand deep, where the parties stand. There are prints in it: bear, fox, seal flipper, the runner of a sledge, and one pair of a man's boots with square toes and a neat small heel, which stood there a good long while and then walked out of the ring on the north side." },
        { name = "a heap of fish", description = "By the old sow, a pile of cod, laid nose to tail. Costs. The losing party pays them and the winning party, by custom, eats none." },
      } },
    { name = "the case in hand",
      description = "You came in during a hearing. On one side of the ring sits a large dog fox, white, very upright. On the other is a hole in the ice with a seal's head in it, also very upright. Between them lies half a fish.",
      things = {
        { name = "the fox", description = "It has the look of a party who is entirely in the right and intends to be gracious in victory." },
        { name = "the seal", description = "Only the head, whiskers and two enormous dark eyes, which it is using on the bench with every sign of knowing their value." },
        { name = "the half fish", description = "The front half. The matter turns, you gather, on who was holding which end when it parted." },
      },
      actions = {
        { "Watch the judgement", say "The old sow looks at the fox. She looks at the seal. She gets up, walks to the half fish, and eats it. She sits down again. The fox and the seal look at one another across the empty snow, and you see them reach, at the same moment, the conclusion that next time it would be cheaper to share. The seal goes under. The fox goes home. It is the best piece of law you have ever seen and it took as long as a sneeze." },
      } },
    { name = "the ice blocks",
      description = "The walls of the court. Eleven of them, green-blue, clear, thrown up on end by the sea in some great squeeze of the floes. Each bear sits before its own.",
      things = {
        { name = "the scored block", description = "The one behind the old sow is cut, from the ground to as high as a bear can reach, with claw marks in fours. A stroke for each sitting. They go up out of sight into the frost. The lowest are worn nearly smooth by weather. You try to count one hand's breadth of them and give up at three hundred." },
        { name = "a shape in the ice", description = "Deep in one block, a darkness the length of a boat, with the curve of a rib to it. You look for a long time. It might be a boat. The bears do not sit in front of that one. They leave its place in the ring open, with the snow there untrodden, as for a member who is expected back." },
      } },
    { name = "the Writ",
      key = "cs_moot_writ",
      description = "Against the foot of the scored block leans a roll of something pale, as long as a man, tied with sinew. The bears pay it no attention at all, as people pay none to the family Bible.",
      variants = {
        { when = flag "cs_writ_given", name = "the place where the Writ leaned",
          description = "A long dent in the snow at the foot of the scored block. Already a little new snow has blown into it. The bears have not looked at it once." },
      },
      actions = {
        { "Ask to see the Writ", when = all { flag "cs_moot_heard", no(flag "cs_writ_given") }, set "cs_writ_given", give "cs_bear_writ",
          say "You do not know how one asks. You look at the roll, and then at the old sow, and then at the roll. She gets up. She walks to it, takes it in her jaws as gently as a dog takes an egg, carries it across the ring, and puts it down at your feet. Then she pushes it towards you with her nose, twice, until it is against your boots. You unroll a yard of it: sealskin vellum, a king's shaky signature, a pawprint the size of a plate. You look up to say that you could not possibly. She has gone back to her place and is looking at the next case. Your bear catches your eye. It is the look of a host whose aunt has just given the visitor the good silver, and who would like him to take it and say nothing, since there is no arguing with her.", fx "sparkle" },
        { "Ask to see the Writ", when = no(flag "cs_moot_heard"),
          say "You take one step towards it. Twelve heads turn, not fast. You take one step back. A thing like that is not looked at by somebody who has not yet been looked at himself." },
      } },
    { name = "the gap",
      description = "The way you came in, between two blocks. The snow in it is churned with tracks of every kind, all going in walking and coming out walking. Nothing has ever run from the Moot. It would be noticed." },
    { name = "the small leather pouch",
      description = "Hung on a spur of ice by its thong: the pouch from the mail boat, with the crown on the seal, unopened. Under it, on the snow, lie a great many others like it, frozen in layers, going down. Not one has been opened. The Crown writes every month to say it has nothing to report. The Moot has taken note, every month, without needing to read it.",
      actions = {
        { "Count the pouches", say "You scrape with your boot. Twelve to the hand's depth, a year, and the layers go down further than you care to dig. Six reigns of {i}nothing to report, with respect{/}. As treaties go, you think, it is the kind to have." },
      } },
    { name = "the cubs",
      description = "Outside the ring, behind their mothers' blocks, three cubs the size of sheep are sliding down a snow bank on their stomachs. They have been told to be quiet and are being quiet at the top of their capacity, which is not very.",
      actions = {
        { "Watch them", say "One goes down head first, one backwards, and the third, who has thought about it, sideways, rolling. They pile up at the bottom, look round the block at the Moot with enormous guilt, and creep back up to do it again. A mother's paw comes round the ice without her head turning, finds the nearest cub by feel, and sits it down. It stays sat for a count of four." },
      } },
    { name = "the moon",
      description = "There is not one. The Moot sits at the dark of the moon, by starlight and the glow of the snow, since bears hold that a thing should be judged when nothing is flattering it. The light in the ice blocks is the stars' own, come through twelve feet of frozen sea, and turned blue on the way." },
    { name = "the quiet",
      description = "Twelve bears breathing. You had not known that a silence could have a size. This one has about the weight of the roof of a cathedral, and it is resting, with every courtesy, on you." },
    { name = "tracks going north",
      description = "From the far side of the ring, one set of bear prints goes out, very old, glazed over, each as wide as a barrel head. They are far larger than any bear here could make. They go north, straight, towards nothing, and none come back. The young bear's nose keeps turning that way too." },
  },

  exits = {
    { to = "cs_fishing_camp", label = "Back along the footprints", description = "South through the gap, walking, to the mark and the huts." },
  },
}

space {
  id = "cs_frozen_ship",
  region = "cold_shoulder",
  name = "H.M.S. Perseverance",
  description = "A three-masted ship of the King's navy, black hulled, lying in the ice as in a dry dock, heeled a little to starboard, with her yards squared and her deck roofed over in canvas like a tent. She sailed north forty-one years ago to find a way round the top of the map. The ice took her in the first October and has not yet let go. There is smoke from her galley chimney. A sentry in a greatcoat is pacing the gangway, and as you come up he presents arms and asks, very civilly, whether you are the relief.",
  palette = { bg = "#080b10", text = "#d0d8e0", dim = "#606c7c", accent = "#d8b870", border = "#343c4c" },
  ambience = {
    snow { glyphs = "·˙", color = "#8a96b0", rate = 0.2, speed = 0.3 },
    flicker { color = "#e0a860", strength = 0.08 },
  },
  backdrop = {
    "       |      |      |         ",
    "      ─┼─    ─┼─    ─┼─        ",
    "       |      |      |         ",
    "   ▄▄▄▄█▄▄▄▄▄▄█▄▄▄▄▄▄█▄▄▄▄     ",
    "▔▔▔▀█████████████████████▀▔▔▔▔▔",
  },

  things = {
    { name = "the sentry",
      icon = "♜",
      description = "Marine Private Dobbs, seventy if he is a day, in a scarlet coat patched with sealskin, with a musket whose lock has been frozen solid since the second winter. He walks his beat: nine paces, about turn, nine paces. There is a trench in the ice a foot deep where he does it.",
      actions = {
        { "Say you are not the relief", say "\"No, sir,\" he says. \"I didn't think it. You've no hat.\" He looks south, over your shoulder, as he has every day for forty-one years. \"They'll be along. The Admiralty don't forget a ship.\" He comes to attention. \"Pass, friend. Mind the ice on the brow. Wipe your feet. Captain's particular.\"" },
        { "Ask how long his watch is", say "\"Four hours, sir, and then Private Mullins.\" You ask when Mullins last relieved him. He thinks. \"Mullins is poorly,\" he says. \"Since the eighth winter. I've been obliging him.\"" },
      } },
    { name = "the ship's company",
      description = "Thirty-one men of the sixty who sailed. The others are not dead. They walked south over the ice in the fifth year, with the captain's blessing, to fetch help, and are understood to be on their way.",
      things = {
        { name = "the watch on deck", description = "Six ancient seamen in tarred hats, holystoning a deck that has not been walked on by weather in four decades. It is whiter than the snow. One of them looks up and knuckles his forehead to you. You are the first new face he has seen since he was thirty." },
        { name = "the boatswain", description = "Mr Pike, bent like a hook, with a silver call on a lanyard. He pipes the hands to dinner, pipes them to hammocks, pipes the side when the cat comes aboard. Without him, he says, it would only be a lot of old men in a box." },
        { name = "the ship's boy", description = "He is fifty-four. He was thirteen. He is still rated Boy, third class, since there has been no examining board, and is still sent up to the masthead as a punishment, and still enjoys it." },
      },
      actions = {
        { "Ask why they do not walk to Drift", say "Mr Pike looks at you as at a man who has suggested selling the church. \"Leave the ship, sir? She's in commission.\" He lowers his voice. \"The lads go over on a Saturday for a bath and a wet. But we're back aboard by eight bells. She'd fret.\"" },
      } },
    { name = "the upper deck",
      description = "Housed in under a ridge of spars and old sails, banked with snow outside for warmth, lit by lanterns. It is like the nave of a small dark church that smells of tar.",
      things = {
        { name = "the guns", description = "Eight nine-pounders, run in and lashed, each with a knitted cosy over the muzzle. They are fired once a year, on the King's birthday, with a blank charge. It was the old King's birthday for the first twenty years. Then the mail boat mentioned it." },
        { name = "the binnacle", description = "The compass under its brass hood. The card swings slowly all the way round, stops, and swings back. Up here north is so close that the needle cannot make up its mind which way to face it. The master takes it as a personal slight." },
        { name = "the ship's bell", description = "Struck every half hour, without fail, by a man who has to go and look at a sand glass to do it. Eight bells at noon. They have never missed one. If you asked the crew what day it was, they could tell you, and they would be right." },
        { name = "the garden", description = "In the waist, under the one glazed skylight: six half barrels of earth scraped from the anchors and the ballast, and in them mustard and cress, sown in rows, an inch high. The surgeon's orders. Every man has his own row and they are jealous of them." },
      } },
    { name = "the ice round the hull",
      description = "It has climbed her sides in ridges and holds her as a hand holds an egg. Every spring it lets her down a little and every autumn it takes her up again.",
      things = {
        { name = "the waterline", description = "Forty-one rings on the black paint, each a finger higher than the last. She has been lifted, winter by winter, until her keel is clear of the water altogether. She is the only ship in the navy that is aground on the sea." },
        { name = "a path sawn round her", description = "A trench, kept clear, the whole way round the hull, so that she is not nipped. The hands cut it every morning before breakfast. It is forty-one years of sawing the same ditch. They speak of it as country people speak of the hedge." },
        { name = "the rudder", description = "Unshipped, and laid on the ice on trestles under a tarpaulin, ready to hang the hour she floats. It is painted every summer. There are forty coats on it. It is noticeably thicker than it was." },
      } },
    { name = "the galley",
      description = "Forward, with a brick hearth and a copper. The cook has one leg and one recipe.",
      things = {
        { name = "the copper", icon = "♨", description = "Pea soup. The peas ran out in the third year. It is made now from seal, stockfish, and the memory of peas, and is still served out as pea soup, by the regulation, and nobody has ever complained that it is not.",
          actions = { { "Take a basin", say "It is grey and has things in it. You drink it standing, as the hands do. It is hot and salt and exactly the same as it was yesterday, and you see the virtue in that, for men who have had forty-one years of not knowing." } } },
        { name = "the last ship's biscuit", description = "In a glass case, on the bulkhead: one biscuit, round, pricked, stamped with the broad arrow. It is the last of the stores they sailed with. It is to be shared out, in sixty pieces, on the day she is freed. Weevils have been at it. They, too, are being spared for the occasion." },
        { name = "the rum tub", description = "A brass-bound cask with {i}THE KING, GOD BLESS HIM{/} on it in copper letters. Empty these thirty years. At noon each man files past with his pannikin and the purser pours him a tot of nothing, with great exactness, and it is drunk, and they say it does them good." },
      } },
    { name = "the mess deck",
      description = "Below, where the hands live: hammocks slung fourteen inches apart, mess tables triced up between the guns, a stove.",
      things = {
        { name = "the hammocks", description = "Thirty-one in use. The other twenty-nine are lashed up and stowed in the nettings, each with its number, aired on the first of the month, against the day their owners come back from fetching help." },
        { name = "the school", description = "At one table the chaplain is taking a class in navigation. His pupils are sixty and seventy. They have been working the same day's reckoning for four decades and get it right every time, the ship being where she was." },
        { name = "the theatre", description = "A curtain across the after end. There is a play every winter, got up by the hands. They have six plays. Each man has by now taken every part, including the heroine. The Drift people come over for it on sledges and know all the words." },
        { name = "the mail", description = "Today's bag, just come aboard. Pay warrants. Each man signs for forty-one years of pay he cannot draw, less stoppages, and the purser locks it in the chest. They are, on paper, the richest crew afloat. They are not afloat." },
      } },
    { name = "the mainmast",
      description = "It goes up through the canvas roof into the dark and the snow, with the shrouds iced as thick as a leg. Somewhere up there is a barrel.",
      actions = {
        { "Climb to the crow's nest", say "The ship's boy shows you where to put your feet, with some scorn. From the barrel you can see the lamps of Drift to the south-east, small and gold, and the fishing camp. To the north you can see what she came to find a way through. It is flat, and white, and goes on, and there is no way through it, because there is nothing in it to go between. \"Captain comes up every morning,\" says the boy. \"To see if there's a lead. He says a channel could open any day.\" He spits, carefully, to leeward. \"He's not wrong. It could.\"" },
      } },
    { name = "the figurehead",
      description = "A woman in a helmet, with a hand shading her eyes, looking ahead. She is cased in clear ice, an inch thick all over, like a thing kept under glass. The carpenter chips her free each midsummer, and paints her, and by September she has taken the veil again." },
    { name = "the notice at the gangway",
      description = "A board, freshly lettered every year: {b}H.M.S. PERSEVERANCE. 22 GUNS. CAPT. SIR EDMUND FALLOW.{/} And under it: {i}Detained by ice. Visitors welcome between the forenoon and first dog watches. The ship's company regrets that it cannot at present return calls.{/}" },
    { name = "the officer of the watch",
      icon = "☺",
      description = "Lieutenant Tobias Wren, the only lieutenant left, white whiskered, in a boat cloak, with a telescope under his arm. He was the junior of four. He has been first lieutenant for thirty-six years and has never once sat in the first lieutenant's chair.",
      actions = {
        { "Accept the invitation to dinner", when = no(flag "cs_dined_aboard"), set "cs_dined_aboard",
          say "\"The Captain's compliments,\" says Mr Wren, \"and he would be glad of your company at dinner. We dine at three. It is now three.\" He has not been below to ask. You understand that the Captain's compliments have been standing ready, like the rudder, for whoever should come. \"You will find him aft, in the great cabin. He will ask you for the news. I should be obliged,\" and here the old man coughs, \"if it were, on the whole, good.\"" },
        { "Accept the invitation to dinner", when = flag "cs_dined_aboard",
          say "\"You have dined, sir,\" says Mr Wren. \"He spoke of it at breakfast. He will speak of it for a year.\"" },
        { "Ask about the passage", say "\"The way round the top?\" He looks north. \"The Captain holds that it is there. I hold that the Captain is the Captain.\" He is silent for a time. \"I went out on the ice in the ninth year, sir, with a sledge, as far as a man can go and come back. I found no land and no water. I found it very even.\" He shuts his telescope. \"I logged it as haze.\"" },
      } },
    { name = "the after hatch",
      key = "cs_after_hatch",
      description = "A companionway under a brass rail, going down aft to the officers' quarters. A marine with no musket stands at the head of it. He is there to stop the hands going aft, which none of them has attempted since the ship was built." },
    { name = "the ensign",
      description = "At the peak, frozen out straight, the colours faded to rose and grey. It is hoisted at eight every morning and lowered at sunset. In the winter, when there is neither, they go by the glass. It has never been left up at night. Forty-one years, and nobody has been tempted to say, who would know." },
  },

  exits = {
    { to = "cs_fishing_camp", label = "Back over the ice", description = "Down the brow and south-east towards the huts and their smokes." },
    { to = "cs_great_cabin", label = "Aft, to the great cabin",
      description = "Down the after hatch, past the marine, who has been told to expect you.",
      requires = flag "cs_dined_aboard", hidden = true },
  },
}

space {
  id = "cs_great_cabin",
  region = "cold_shoulder",
  secret = true,
  name = "The Great Cabin",
  description = "The whole width of the stern, with a row of windows that look out on to a wall of blue ice a foot from the glass. A table is laid for two, with silver. A very old man in a blue coat with tarnished gold on it rises from the far end, with difficulty, and bows. He is Captain Sir Edmund Fallow. His hair is as white as his ship's deck and his back is as straight as her masts. \"You are welcome aboard, sir,\" he says. \"You will forgive the view.\"",
  palette = { bg = "#0c0a10", text = "#dcd4c8", dim = "#786c68", accent = "#e0c070", border = "#443c44" },
  ambience = { flicker { color = "#f0c070", strength = 0.2 }, shimmer { color = "#1c4850", strength = 0.3 } },

  things = {
    { name = "the Captain",
      icon = "☺",
      description = "Ninety, or near it. He was the youngest post captain on the list when he sailed and is now, though he does not know it, the oldest. He has not been off his ship in forty-one years. He says a captain who goes ashore while his ship is in difficulties is a passenger.",
      things = {
        { name = "his coat", description = "The same one. It has been turned twice, and re-cuffed with sailcloth dyed in tea, and the epaulettes are held on with fishing line. He puts it on for dinner every day, alone, and dines." },
        { name = "his hands", description = "They shake a little as he pours your wine. It is water. He pours it as wine, and you drink it as wine, and he watches to see that you are doing so, and is satisfied." },
      },
      actions = {
        { "Give him the news", say "He asks after the King. You tell him the King is well, and do not say which. He asks whether the Admiralty has sent word. You say that the mail was heavy this month. He asks whether, in your view, a relief is fitting out. You look at the old man, and the two places laid, and the blue wall at the window. \"I saw a great many ships at Saltwick,\" you say, which is true. He nods, slowly. \"They will want the spring,\" he says. \"One does not send ships into this in winter. I should not, myself.\" He raises his glass. \"The spring, sir.\" You drink to it." },
        { "Ask why he stays", say "\"I was given a ship, sixty men and an order,\" he says. \"I have the ship. I have thirty-one of the men, and the others I let go with my own hand, so they are mine still, wherever they have got to. And the order stands.\" He smiles, and for a moment you see the youngest captain on the list. \"It has been put to me that the order is impossible. That is not the same as its being withdrawn.\"" },
      } },
    { name = "the stern windows",
      wonder = true,
      description = "Seven tall lights across the stern, leaded, made to look out over a wake. The ice has come up to within a foot of them and stopped, and stands there, a cliff of pure blue, from the sill to above the top of the frame. By day the sun, when there is one, comes through forty feet of it and fills the cabin with a light like the inside of a wave. Things are frozen in it at every height. {magic}A whole shoal of small silver fish, turned all one way, caught in the moment of turning.{/} A frond of kelp, spread like a hand. A length of the ship's own cable, in a curve, as it fell from the hawse forty-one years ago. And high up, at the level of the Captain's eyes when he stands, a single air bubble as big as a fist, perfectly round, which he says good morning to. He has looked at this wall every day for half his life. He says he would not now exchange it for the sea.",
      actions = {
        { "Put your hand on the glass", say "Cold comes through it like a slow word. On the other side, a foot away, the silver fish hang in their turn, every scale clear. You find you are waiting for them to finish it. \"Yes,\" says the Captain, behind you. \"One does. I have been waiting forty years to see which way they go.\"" },
      } },
    { name = "the dinner",
      description = "Soup, a dish of seal cutlets under a silver cover, and a pudding made of ship's biscuit dust and the Captain's last pot of marmalade, which has been made to do for eleven years by being shown to the pudding.",
      things = {
        { name = "the silver", description = "Engraved with a crest: a ship under sail, and the motto {i}PERGO{/}, which is {i}I go on{/}. The steward polishes it with ash. It is worn thin as paper at the edges." },
        { name = "the second place", description = "It is laid every day. You are the fourth person to have sat at it. The others were a bishop of the isles, who had lost his way, a surveyor, and last winter a clerk from Saltwick, who ate very little and asked whether the tide came this far." },
        { name = "the steward", description = "Jeffcoat, eighty, in white gloves with the fingertips darned. He stands behind the Captain's chair and has done so through fifteen thousand dinners. He removes the cover from the cutlets as if unveiling a statue." },
      },
      actions = {
        { "Eat the pudding", say "It tastes of flour, and very faintly of oranges, like a letter that has been kept in a drawer with a pomander. The Captain watches you finish it. \"I am glad,\" he says. \"I had been saving the marmalade for an occasion, and then it came to me that I am ninety.\"" },
      } },
    { name = "the chart table",
      description = "Under the skylight, with the ship's track pricked on a great sheet, weighted with lead.",
      things = {
        { name = "the track", description = "A line of pencil crosses, a day apart, coming up from Saltwick, past the Afterthoughts, past the Stack, north. Then a cross with a ring round it and a date. Then fifteen thousand more crosses in the same place, one on top of another, until they have worn a hole right through the chart and into the table." },
        { name = "the Captain's orders", description = "Under glass, with the Admiralty seal. {i}You are to proceed north by such way as offers, and determine whether there be a passage about the head of the kingdom, and what lies thereafter; and you are not to return without you have the answer.{/} A later hand, the Captain's, has written in the margin, very small: {i}or are the answer{/}." },
        { name = "the clerk's question", description = "A half sheet of office paper, left on the chart, in a neat small hand. {i}Sir: does the tide rise and fall under your ship? If so, by how much, and at whose instance?{/} Beneath it the Captain has written, with care: {i}It rose eleven inches on the fourth of March in the seventh year. We did not learn why. I should be glad to be told.{/} There is no reply. The paper has been kept flat under a ruler, as one keeps a letter one hopes to hear more of." },
      },
      actions = {
        { "Look at the hole in the chart", say "You put a finger through it. It is exactly where the ship is. Forty-one years of a careful man writing down, every noon, that he is still here. You think of every time you have given something up by teatime." },
      } },
    { name = "the log books",
      description = "Forty-one of them, in a rack, in calf. He writes it up himself.",
      things = {
        { name = "the first volume", description = "Full of bearings, soundings, sail changes, a man flogged for drunkenness, a whale. A ship doing things." },
        { name = "the latest volume", description = "{i}Ship's head N by W. Ice as before. People employed as requisite. Divine service. Pea soup.{/} Every day. And, in the margin of each, a small drawing, different each time: a hand's shadow on a bulkhead, the cat, the pattern of frost on the third stern light. He has had to learn to see what there is." },
      } },
    { name = "the sleeping cabin",
      description = "Through a door to starboard: a cot, a wash stand, a sea chest, and a miniature on the bulkhead.",
      things = {
        { name = "the miniature", description = "A girl of nineteen in a white dress, painted on ivory, with violets in her hair. The mail brings one letter a month in violet ink. He answers each one. She is eighty, in a house on the cliff at Saltwick, and has been engaged to be married for sixty-two years. Neither of them has ever suggested that this is unreasonable." },
        { name = "the sea chest", description = "Open. In it, folded, a new full-dress coat, never worn, with bright gold. He had it made before he sailed, to come home in. He has kept the moth out of it for forty-one years." },
        { name = "the cot", description = "Narrow, slung, with a lee board. On the pillow there is a dent, and beside the dent, asleep, the ship's cat, the eleventh of her line, who was born on board and believes the world to be a hundred and twenty feet long and made of oak." },
      } },
    { name = "the quarter gallery",
      description = "A little glazed closet hung out over the ship's quarter. The ice has pushed in one pane and come into the room, a blue tongue of it as long as your arm, and he has let it stay. There is a chair facing it.",
      things = {
        { name = "the tongue of ice", description = "It grows a hair's breadth each winter. He has marked its progress in pencil on the deck. At the present rate, he says, it will reach the chair in the year he is a hundred and forty, and he will then move the chair." },
      } },
    { name = "the sword",
      description = "On two brass hooks over the door: a plain naval sword in a black scabbard. He has drawn it once, in the fifth year, to salute the men who were walking south. He stood on the taffrail with it at the present until he could no longer see them. Mr Wren says it was two hours, in a wind." },
    { name = "the violin",
      description = "In an open case on the locker. He plays in the evening, alone. The hands gather at the foot of the after hatch, where it is forbidden, and listen, and the marine at the hatch listens too, and nobody has ever been reported.",
      actions = {
        { "Ask him to play", say "He tunes it, a long time, his head on one side. Then he plays an air you do not know, slow, in a minor key, which turns at the end, when you were sure it would not, and comes home. The blue wall at the window gives the notes back a little late. When he has done he says, \"A thing I heard a girl sing at Saltwick,\" and puts the fiddle away, and for some time neither of you speaks." },
      } },
    { name = "the stove",
      icon = "♨",
      description = "A small brass hanging stove, with a guard, burning driftwood and the ship's less necessary bulkheads. He is using up his ship, a plank a week, to keep her company warm. He has worked out that she will last him, and has not worked out further." },
    { name = "the barometer",
      description = "In gimbals, by the door. It has stood at the same height for so long that the mercury has stained the glass at that mark. He taps it every morning, since a captain does." },
  },

  exits = {
    { to = "cs_frozen_ship", label = "On deck", description = "The Captain sees you to the door of the cabin, and no further, the ship being in difficulties." },
  },
}
