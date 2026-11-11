-- Tether: the village green, the shop, and what is under the village.

space {
  id = "le_tether",
  region = "loose_ends",
  name = "Tether",
  description = "A village on a rock: a green the size of a bowling lawn, a dozen stone houses with their backs to the edge, and ropes going off in every direction to smaller rocks with one house or one cow on them. Washing hangs on all the ropes. It is how you can tell which way the neighbours are.",
  ambience = {
    dust { glyphs = "˙·∙", color = "#a8b8d0", rate = 0.3, speed = 0.5 },
    fog { color = "#182434", speed = 0.2, strength = 0.25 },
  },

  things = {
    { name = "the green",
      description = "Mown, level, and roped off at the corners. Cricket is played here with a ball on a string. The string was the committee's idea, after the first season, when they lost forty balls and a wicket keeper who was fetched back by kite.",
      things = {
        { name = "the pitch", description = "Rolled flat by a stone roller that is chained to a ring when not in use. Everything heavy in Tether is chained to something. The light things are pegged." },
        { name = "the scoreboard", description = "{i}TETHER 112. VISITORS: none arrived.{/} It has said this since the bridge to Upper Tether was taken in." },
        { name = "the ball", description = "Cork and leather, on forty yards of fishing line wound on a reel at square leg. A six is anything that takes all forty." },
      },
      actions = {
        { "Bowl one", say "You run up and let go. The ball sails over the houses and out into the blue, and the reel screams, and stops. A boy winds it in without looking up from his book. \"Wide,\" he says." },
      } },
    { name = "Mrs Pegg",
      key = "le_pegg",
      icon = "☺",
      description = "A small brown woman with a mouthful of pegs, hanging a sheet on the line that goes to nowhere you can see. She takes in washing for nine islands. It goes out along the ropes wet and comes back dry, and she knows by the smell of a shirt what weather its owner is under.",
      things = {
        { name = "her peg bag", description = "Canvas, the size of a pillow, full of ash pegs each as long as your arm and each burnt with her name." },
        { name = "the sheet", description = "Double, linen, with a darn in the middle. It bellies out over the edge like a sail. The island, you notice, is leaning very slightly the other way to make up." },
        { name = "her forearms", description = "She has wrung out blankets by hand in a wind that takes slates. You would not arm wrestle her for money." },
      },
      actions = {
        { "Ask about the lines", say "She takes the pegs out to answer. \"That's the Coombes'. That's the mill. That one's the school, they come along it in a basket.\" She nods at a single grey line going out south, and down, into cloud. \"And that's the long one. Things go out on that. Don't come back, mostly.\"" },
        { "Ask to borrow a peg", once = true, give "le_line_peg",
          say "She looks you over, as she would a shirt of doubtful colour. Then she picks out a peg, the longest, and puts your wrist through the loop herself. \"You clip on. You lift your feet. You don't let go till you're over grass.\" She pats your hand. \"I want that back.\"" },
        { "Ask about the long line", when = item "le_line_peg",
          say "\"Jem Spar ties it off. It goes from his loft. Where it ends I couldn't tell you. I sent a pillowcase down it once, by accident, a good one.\" She puts the pegs back in her mouth. That is all." },
      } },
    { name = "the washing lines",
      description = "Thirty or forty, hemp and wire, running out from iron rings set round the edge of the rock. Some go to islands. Some go to islands you cannot see. All of them carry washing for as far as an arm can reach from either end.",
      things = {
        { name = "a row of nappies", description = "On the line to the Coombes'. Eleven. There were nine last week, the village will tell you, and everybody is very pleased." },
        { name = "a single black stocking", description = "On a line by itself, a long way out, too far to reach from either end. It has been there since before Mrs Pegg. Nobody knows whose it was or how they got it there, and it is given a wide berth by the gulls." },
        { name = "the school basket", description = "A wicker tub hanging from a pulley on the school line, with a bench in it for six. It has just come in. It is still swinging, and has a mitten in the bottom." },
        { name = "a message line", description = "Thin cord, with a tin on it. Notes go to and fro between here and the mill. The tin on its way out now has a pie in it, by the steam." },
      },
      actions = {
        { "Twang one", say "You pluck a line. The note runs away along it, into the distance, and after a long moment a different note comes back. Somebody on a rock you cannot see has answered. You do not know what you said." },
      } },
    { name = "the houses",
      description = "Stone, slate roofed, low, with the doors on the inward side. Every roof has a rope over the ridge and a boulder hung on each end of the rope.",
      things = {
        { name = "the Coombes' cottage", description = "The door is on the green. The back garden is on another rock, a hundred feet off, reached by a plank and a prayer. There is a child asleep in a hammock slung exactly between the two.",
          things = {
            { name = "the plank", description = "Elm, a foot wide, bowed in the middle. There is a groove worn down the centre of it by one wheelbarrow." },
            { name = "the hammock", description = "Netting, with a child in it and a cat on the child. Under them, a net. Under the net, a second net. Then weather." },
          } },
        { name = "the schoolmistress's house", description = "Neat, with a bell. In the window, a globe. Somebody has added a number of small corks to the globe, on pins, standing a little way off the surface over the mountains.",
          actions = {
            { "Look at the globe", say "Eleven corks. Each has a name inked on it in letters too small for anything but a child's eyes: {i}Landfall, Tether, Mill Rock, Wrong Way Up.{/} One cork is painted black and has no name. The pin is longer than the others." },
          } },
        { name = "a house with the shutters up", description = "Empty. A card in the window: {i}GONE BELOW. Back when the knees mend.{/} The rope over the roof has been kept taut by the neighbours all the same.",
          things = {
            { name = "the doorstep", description = "Swept. There is a jug on it, with a saucer on the jug, and the milk is today's. Somebody goes on leaving it. Somebody else, you conclude, goes on drinking it." },
          } },
        { name = "the roof ropes", description = "One over every ridge, with a boulder each end, to keep the slates on in a blow. The boulders have names. It is thought unlucky to step over Harold." },
      } },
    { name = "the well",
      icon = "o",
      description = "A stone ring in the middle of the green with a windlass over it. There is no water in it. There is a round hole going down through the island, twenty feet of rock, and at the bottom of the hole there is sky. They let the bucket down into the cloud that passes under and wind it up wet.",
      variants = {
        { when = flag "le_well_ridden",
          description = "A stone ring in the middle of the green with a windlass over it, and a round hole down through the island to the sky. You have been down it, in the bucket, with your knees round your ears. The windlass still has your grip marks." },
      },
      things = {
        { name = "the bucket", description = "Oak, iron hooped, big enough to stand in. It has a second rope tied to the handle, with knots in it at every yard, and a seat worn in the rim." },
        { name = "the windlass", description = "With a ratchet, and a brake, and a brass plate: {i}One at a time. Not in thunder. Tell someone.{/}" },
        { name = "the hole", description = "You lean over. Rock, wet and ferny, and then a disc of white going by underneath. Now and then the white tears and there is a long way down in it, with a river." },
      },
      actions = {
        { "Wind up a bucket", say "You let it down into the passing cloud and wind it up again. A bucket of cold fog. It settles, as you watch, into two inches of the cleanest water you have ever tasted. It tastes of the top of a hill before anyone is up." },
        { "Ask about the knotted rope", once = true, set "le_well_asked",
          say "A man mending a net on the well kerb answers without turning. \"That's for Dunnage. Him under. He does the roots.\" He bites off a thread. \"You can ride down if you tell someone. You've told me. Mind your knees on the lip.\"" },
        { "Ride the bucket down", when = all { flag "le_well_asked", no(flag "le_well_ridden") }, set "le_well_ridden", fx "wash",
          say "You stand in the bucket and take the brake off. Twenty feet of wet rock go up past your nose. Then the rock stops and you come out of the bottom of the village, turning slowly on a rope, into the wind. Somebody has built a walkway down here. A hand takes your collar and fetches you in." },
      } },
    { name = "the anchor",
      description = "By the well, half sunk in the turf: an iron anchor as long as a cart, red with rust, with a chain running from it over the edge and down. The chain hangs slack. It has never reached anything.",
      things = {
        { name = "the chain", description = "Links the size of loaves. It goes down a hundred fathoms and stops in air. On windy nights the end of it swings, and people on the Grumbles have reported a bell." },
        { name = "a plaque", description = "{i}Laid down by the first families, in case.{/}" },
      },
      actions = {
        { "Haul on the chain", say "You haul. Nothing whatever happens. An old man on a bench remarks that his grandfather hauled on it too, at your age, and that it is a thing the young seem to need to do." },
      } },
    { name = "the bench",
      description = "Oak, bolted down, facing the edge. Three old men sit on it with their sticks between their knees and watch the weather go past underneath, as other old men watch a road.",
      things = {
        { name = "the first old man", description = "He was born on Mill Rock and came to Tether to marry. He still calls it {i}coming up to town{/}." },
        { name = "the second old man", description = "He went Below once, for a week, as a young man. He did not care for it. Everything was so near the ground." },
        { name = "the third old man", description = "Asleep, upright. He has a string round his ankle, tied to the bench. It is not an insult. His wife insists." },
      },
      actions = {
        { "Sit with them", say "They make room. A thunderstorm goes by below, left to right, flickering inside itself. \"That'll be Aldmoor's,\" says the first. \"They'll have had it coming,\" says the second. It is the most comfortable half hour you have had in a month." },
        { "Ask how old the village is", say "\"Older than the mast.\" \"Older than the anchor.\" The third opens one eye. \"Older than you two, and you were old when I was a boy.\" The other two look at him, and he shuts the eye." },
      } },
    { name = "the edge",
      description = "The backs of the houses, a strip of cabbages, and then a low wall. The wall has gaps for the rope rings. Children grow up knowing where it is as they know where their own feet are.",
      things = {
        { name = "the cabbages", description = "Grown in a row along the wall, each with a stone on it. They are enormous. There is nothing up here to eat them and nothing between them and the sun." },
        { name = "the rope rings", description = "Iron, leaded into the rock, one for each line. Each has a family's mark cut beside it. One ring is empty, and its mark has been chiselled off, and nobody will say." },
        { name = "a child's chalk line", description = "On the paving, a yard in from the wall, drawn and redrawn. On the wall side of it, in a careful round hand: {i}NOT WITHOUT A BIG ONE{/}." },
      } },
    { name = "the parish pump of rumours",
      description = "A stone trough by the shop door where the women fill their kettles from the well bucket and exchange what they know.",
      actions = {
        { "Listen in", say "The Clerk of the Weather has not been right since Tuesday. The astronomer on the Top Rock has had another letter and is not speaking to anyone. Nan Wether has lost a cloud, a good one, and blames the mill. They see you listening and go on anyway. You are from Below; who would you tell?" },
      } },
    { name = "the market cross",
      description = "A stone pillar with four worn faces looking out at the four winds. Each face has a different expression. The one facing north has had its nose rubbed away by people touching it for luck before they cross a bridge.",
      things = {
        { name = "the south face", description = "It is smiling, with its eyes shut. The south wind is the washing wind." },
        { name = "the north face", description = "Noseless, grim. Somebody has knitted it a scarf." },
        { name = "the steps", description = "Three, hollowed by sitting. A fiddle case lies open on the bottom one with two coppers in it and a button." },
      },
      actions = {
        { "Rub the nose", say "There is no nose. You rub where it was. The stone is as smooth as a river pebble and faintly warm from other people's hope." },
      } },
    { name = "a kite, coming in",
      description = "Red, box shaped, descending onto the green on a line paid out from somewhere overhead. There is a loaf tied to it. A woman reaches up without breaking off her conversation and takes the loaf, and the kite goes up again." },
    { name = "the signpost",
      description = "Six arms, on a post braced with wire. They point at ropes.",
      things = {
        { name = "the arms", description = "{i}LANDFALL. SHOP. THE SLOW SPILL. SPAR, KITES. PASTURE. WEATHER OFFICE.{/} And, hanging by one nail and pointing at the ground: {i}THE FALL.{/}" },
      } },
  },

  exits = {
    { to = "le_mooring", label = "The rope bridge to Landfall", description = "Down, then up, with washing. Step long in the middle." },
    { to = "le_shop", description = "A bow window on the green, full of things with holes in them for string." },
    { to = "le_inn", description = "The sign is a tankard, tipped, with a painted drop that has a long way to go." },
    { to = "le_kite_loft", description = "Up an outside stair to a loft with its end wall missing. Things are leaving through the gap." },
    { to = "le_pasture", label = "The plank walk to the pasture", description = "Out along a boardwalk on chains, to a rock with a hut on it and a great deal of white behind." },
    { to = "le_weather_office", description = "A stone box on its own rock, with a weathercock and a brass plate. The plate is polished. The weathercock is tied." },
    { to = "le_falls", label = "The path to the Fall", description = "Along the stream that crosses the green and goes confidently toward the edge." },
    { to = "le_keel", label = "Down the well", description = "In the bucket, with the brake off, having told someone.",
      requires = flag "le_well_ridden", hidden = true },
  },
}

space {
  id = "le_shop",
  region = "loose_ends",
  name = "Lightly & Daughter, Notions and Ballast",
  description = "The village shop. Everything in it is either very light, and tied down, or very heavy, and for sale by the pound to people who have reason to want to stay where they are. It smells of tarred string and lead.",
  palette = { bg = "#10100c", text = "#d8d4c4", dim = "#787460", accent = "#e8c070", border = "#4a4630" },
  ambience = { flicker { color = "#e8c070", strength = 0.12 }, dust { glyphs = "˙·", color = "#6c6850", rate = 0.2 } },

  things = {
    { name = "Mr Lightly",
      icon = "☺",
      description = "A round, mild man in an apron with lead weights sewn in the hem. He has never been blown off anything. He puts this down to diet.",
      things = {
        { name = "his apron", description = "Brown holland, with a pound of shot stitched along the bottom. It hangs like a curtain in a church." },
        { name = "his boots", description = "Iron soled. He walks like a man crossing a ploughed field and he has not spilled a thing in thirty years." },
      },
      actions = {
        { "Ask what sells", say "\"String,\" he says at once. \"Then pegs. Then ballast, for visitors.\" He looks at your boots. \"You'll be wanting two pound in each pocket, sir, in a south wind, a person of your build. I only say it because we lost a curate.\"" },
        { "Buy some ballast", say "You show him your copper. He weighs it in his palm, professionally. \"That's very light money,\" he says, with pity, and lends you two pebbles from the door stop bin, free, on the understanding that you will leave them at Landfall." },
      } },
    { name = "the daughter",
      icon = "☺",
      description = "Miss Lightly, about fifteen, on a stool behind the string counter, reading. She is as thin as he is round. There is a cord from her belt to a staple in the counter, and she has had it there since she was two, and no longer notices it.",
      actions = {
        { "Ask what she is reading", say "She shows you the spine. {i}Countries of the Lower World, with Plates.{/} \"Is it true,\" she says, \"that you can drop a thing down there and just pick it up again? Straight away? Where you dropped it?\" You say it is. She looks at you as if you had said you were a duke." },
      } },
    { name = "the string counter",
      description = "A wall of reels, from sewing thread to tarred hawser, each running through an eye in the counter so that it can be pulled off and cut.",
      things = {
        { name = "kite twine", description = "By the hundred yards. The reel is the size of a barrel and nearly empty. It is Jem Spar's account, mostly." },
        { name = "child line", description = "Soft plaited cotton with a spring clip each end, in blue or pink. {i}To six years. After that they are thought to have sense.{/}" },
        { name = "hat cord", description = "Black elastic. Every hat in Tether has one, under the chin. A hat without is called a donation." },
        { name = "a reel of something very fine", description = "You cannot see it. You can feel it between finger and thumb. The label says {i}spider, 2nd quality{/}. He will not say who gathers it, only that she is small and is paid in jam." },
      },
      actions = {
        { "Pull a length", say "You pull a yard of twine. Mr Lightly's scissors are through it before it stops moving. He knots the end, hangs it round your neck, and says that is on the house, everybody needs a bit." },
      } },
    { name = "the ballast bins",
      description = "Along the floor: lead shot, river pebbles, horseshoes, and one bin of small brass weights shaped like pears.",
      things = {
        { name = "the shot", description = "By the scoop. It runs through your fingers, grey and cold and pleased to be going down." },
        { name = "the horseshoes", description = "Second hand. There are no horses up here. They come up as ballast in people's pockets and are sold back to the next person going down." },
        { name = "the brass pears", description = "Plumb bobs, mason's pattern. One of them has a cord on it and sits on the lid of the bin, not in it. When you look again it is on the underside of the shelf above.",
          actions = {
            { "Reach for the odd one", say "\"Not that one, sir.\" Mr Lightly does not hurry, but he is there. He takes it down off the underside of the shelf and puts it back on the lid, and puts a horseshoe on it. \"That's a copy. For show. The real one went under, with the masons' things. It's Dunnage has the care of it, if he hasn't lost it upward.\"" },
          } },
      } },
    { name = "the bow window",
      description = "Small panes, bulging toward the green. In it: a toy balloon on a stick, a pair of lead soled slippers for a lady, and a card of buttons.",
      things = {
        { name = "the lead soled slippers", description = "Embroidered with roses. For dancing. The dances in Tether are slow, and very grave, and nobody has gone through the roof since they came in." },
        { name = "the toy balloon", description = "Pig's bladder, painted blue, straining at its stick. A label: {i}Not for children. They let go.{/}" },
      } },
    { name = "the shelves",
      description = "Floor to ceiling, with a rail across the front of each one.",
      things = {
        { name = "jars of sweets", description = "Humbugs, toffee, and a jar of something white that lifts the lid a little whenever the door opens. {i}Cloud drops. A ha'penny. Hold on to something.{/}",
          actions = {
            { "Try a cloud drop", say "Miss Lightly gives you one for nothing, to see your face. It is sweet, then cold, then not there. For a second afterwards your heels are an inch off the boards. She has already turned the page." },
          } },
        { name = "tinned goods", description = "From Below, with the labels faded by altitude. Sardines. There is a sign: {i}Keys sold separately, since Sir Odric.{/}" },
        { name = "a row of lanterns", description = "Each with a float under it and a sinker over, so that it hangs level whichever way up the holder happens to be. They are popular on Wrong Way Up." },
        { name = "paper, pens, sealing wax", description = "And a stack of envelopes with a weight already gummed in one corner. Letters to Below are dropped. The weight is so they fall in the right parish." },
      } },
    { name = "the post box",
      description = "A slot in the floor, with a brass flap. Under the flap is a chute, and under the chute is the kingdom.",
      things = {
        { name = "the collection times", description = "{i}Letters are dropped at noon when the wind is in the west. Other winds, other countries. We regret we cannot be responsible.{/}" },
      },
      actions = {
        { "Post something", say "You have nobody to write to. You write {i}I got this high{/} on a scrap, and your name, and post it. The flap claps. Somewhere below, in a week or a year, somebody will find it in a hedge and wonder what you were measuring." },
      } },
    { name = "the scales",
      description = "Brass, on the counter, with two pans. One pan has a hook on top as well as underneath. A few of his goods weigh less than nothing and he is an honest man." },
    { name = "the cat",
      icon = "c",
      description = "Tabby, vast, asleep on the lead bin. It is the heaviest cat you have seen. It is ballast in its own right and is entered in the stock book." },
    { name = "a barometer",
      description = "In a mahogany case by the door. The needle points to {i}CHANGE{/}. It has a paper stuck over the rest of the dial, with one word on it, in the Clerk of the Weather's hand: {i}Ask.{/}" },
    { name = "the ceiling",
      description = "Hung with things for sale that want to be up: paper lanterns, a net of bladders, a wicker fish. Among them is a row of hooks with customers' hats on, waiting for their owners to grow back into the district." },
    { name = "the account book",
      description = "On a chain. Half of Tether is in it.",
      things = {
        { name = "an entry for the Weather Office", description = "{i}Sealing wax, 1 lb. Corks, large, 3 gross. Jars, stone.{/} Every month. Nobody has asked what an office wants with three gross of corks, and he considers it no business of a tradesman." },
        { name = "an entry for I. Cope, the Top Rock", description = "{i}Candles. Ink. Candles. Ink. Weighted envelopes, 1 doz. Headache powder.{/}" },
      } },
  },

  exits = {
    { to = "le_tether", label = "Out to the green", description = "The bell on the door is a lead one. It goes thud." },
  },
}

space {
  id = "le_keel",
  region = "loose_ends",
  secret = true,
  name = "The Keel",
  description = "The underside of Tether. The rock comes down to a blunt point like the bottom of a boat, and all over it hang roots, thick as cables, from every tree and hedge above. A walkway of planks is slung among them on chains. It is dim, it drips, and the wind comes up through the boards.",
  palette = { bg = "#0b0e10", text = "#c4ccc8", dim = "#5c6a66", accent = "#8fc0a0", border = "#2e4440" },
  ambience = { drip { glyphs = "⠁⠂⠄", color = "#5a8a7a", rate = 0.4 }, fog { color = "#141e20", speed = 0.3, strength = 0.4 } },

  things = {
    { name = "Dunnage",
      key = "le_dunnage",
      icon = "☺",
      description = "The Keelman. A long grey person in a harness, hanging at ease among the roots with a pruning hook, a tar pot and a pipe. He looks after the bottom of the village. Nobody upstairs has seen him in the daylight for twenty years, and he hears every word they say through the floor.",
      things = {
        { name = "his harness", description = "Leather, black with tar, clipped to a rail that runs the length of the walkway. He has not unclipped it since he took the post. He sleeps in it, like a ham." },
        { name = "his pipe", description = "Clay, short, lit. The smoke goes up through the rock by some crack and comes out, he believes, in the schoolmistress's parlour. He has never had a complaint, so she must like it." },
        { name = "his tar pot", description = "For the cut ends. A root that is cut and not tarred will weep, and a village that weeps from underneath loses confidence." },
      },
      actions = {
        { "Ask what he does", say "\"Roots.\" He taps one with the hook. \"They come through looking for ground. There isn't any. I tell them so, and trim them, and they try again next year.\" He draws on the pipe. \"And I see nothing's come loose. A village wants looking at from underneath now and then, same as a boat.\"" },
        { "Ask what holds it up", say "He is quiet for long enough that you think he has not heard. \"I've had forty years to look,\" he says, \"and I'm in the best place for it. There's no string. There's no pillar.\" He shrugs, and the harness creaks. \"It isn't held up. It was put here. That's a different thing, and I leave it alone.\"" },
        { "Ask about the masons' things", once = true, set "le_locker_open",
          say "\"In the locker. Their level, their line, their mallets. They built the first houses hanging in slings, you know, working upward.\" He unhooks a key from his harness and tosses it. You catch it, to your own surprise. \"There's one thing in there keeps trying to leave. Take it. It's had me up the rafters after it twice, and my knees aren't what they were.\"" },
      } },
    { name = "the masons' locker",
      key = "le_locker",
      description = "An iron bound chest bolted to the underside of the rock, so that its lid opens downward. It is padlocked. Something inside it knocks, now and then, against what you must call the floor.",
      variants = {
        { when = flag "le_plumb_taken",
          description = "An iron bound chest bolted to the underside of the rock, its lid hanging open. Mallets, a level, a set of chisels, all strapped in. One strap hangs empty. The knocking has stopped." },
        { when = flag "le_locker_open",
          description = "An iron bound chest bolted to the underside of the rock, lid hanging open. Mallets, a level, chisels, all strapped in against falling. One thing in there is strapped in against the opposite: a brass bob, standing on end at the top of the chest, tugging." },
      },
      things = {
        { name = "the mallets", description = "Beech, the heads worn to the shape of the blow. Each is burnt with a mason's mark and each mark is upside down, or was put on by a man who was." },
        { name = "the masons' level", description = "A glass tube in brass. The bubble sits dead centre. Up here, at least, level is not a matter of opinion." },
        { name = "a list inside the lid", description = "Seven names, the first families, each with a trade. At the bottom: {i}We found it here and have only tidied.{/}" },
      },
      actions = {
        { "Unstrap the plumb line", when = all { flag "le_locker_open", no(flag "le_plumb_taken") }, set "le_plumb_taken", give "le_upward_plumb", fx "sparkle",
          say "You undo the buckle. The bob goes straight past your ear and fetches up at the end of its cord, standing in the air above your fist, pointing at the rock overhead and through it. Dunnage watches it go. \"East of up,\" he says. \"Always was. You find out what's there, you might send word down. Or don't. I've slept all right so far.\"" },
      } },
    { name = "the roots",
      description = "Oak, thorn, apple, hanging in grey ropes fifty feet long, feeling about in the air. Each ends in a black tarred stump where he has cut it. They have grown down every year since the village was planted and found nothing every year.",
      things = {
        { name = "the oak root", description = "As thick as your body, from the tree on the green. It has been cut back forty times. You can count the rings of tar." },
        { name = "a root with a ribbon on", description = "Thin and pale, an apple's. He has let it grow. It has a blue ribbon tied in a bow. \"Coombes' tree,\" he says. \"Planted for the first baby. Seems hard.\"" },
        { name = "the root ends", description = "White hairs at every tip, fine as breath, all leaning the same way. It is not down they lean. It is a little east of down. You note it, and you do not know what to do with it." },
      },
      actions = {
        { "Swing on one", say "It takes your weight. You go out over nothing, and back, and Dunnage's hook has you by the belt before the third swing. \"They do bear,\" he says. \"That's not the question. The question is whether a person lets go at the far end. You'd be surprised.\"" },
      } },
    { name = "the bottom of the well",
      description = "A round hole in the rock overhead, with daylight and a rope in it. The bucket hangs beside you, turning.",
      things = {
        { name = "voices", description = "They come down the shaft as clear as across a table. Two women at the trough. One of them has opinions about the Clerk of the Weather that he would not care to see written." },
      } },
    { name = "the anchor chain",
      description = "It comes down past the walkway out of a hole in the rock, each link the size of a loaf, and goes on down into the cloud. Here you can see the end of it. There is no anchor on the end. There is a shackle, open.",
      things = {
        { name = "the open shackle", description = "The pin is gone. It did not rust through; it was drawn. Whatever this chain was once made fast to, somebody undid it, on purpose, from underneath." },
      },
      actions = {
        { "Ask Dunnage about the shackle", say "\"Before my time,\" he says. \"Before anyone's. The anchor's up top with a plaque on. The chain's down here with nothing on. You'd think one of the first families would have joined the two.\" He scratches his chin with the hook. \"Unless they looked at what it had been fast to, and thought better.\"" },
      } },
    { name = "the walkway",
      description = "Planks on chains, with a rail to clip to. It runs from the well to the point of the keel and has a bend in it where a root would not be argued with.",
      things = {
        { name = "the rail", description = "Iron pipe, polished by forty years of one harness clip going back and forth." },
        { name = "a gap between planks", description = "A hand wide. Through it, cloud, and then a hole in the cloud, and then a white square on a mountainside with a dot sweeping it." },
      } },
    { name = "his berth",
      description = "A recess in the rock at the walkway's end: a hook for the harness, a shelf, a kettle on a spirit lamp.",
      things = {
        { name = "the shelf", description = "A mug, a tin of tobacco, and nine carved wooden figures: every child born in Tether these ten years, done from the voices alone. The likenesses are good. He has never seen one of them." },
        { name = "a speaking tube", description = "A lead pipe going up into the rock, with a whistle plug. It comes out behind the bar of the Slow Spill. Twice a day a pint comes down the well in a basket and the tube says {i}ta{/}." },
        { name = "a calendar", description = "Scratched on the rock in fives. Forty years of days. Each Sunday has a small extra mark, where he listens to the hymns through the floor and does not sing, in case." },
      } },
    { name = "the point of the keel",
      wonder = true,
      key = "le_keel_point",
      description = "The lowest stone of the village, a blunt grey nose, with the walkway ending under it. You put your hand up and lay it flat on the rock. It is dry, and still, and warm. {magic}Above your palm there are forty houses, a cricket pitch, an inn, three old men and a child asleep in a hammock, and all of it rests on this, and this rests on nothing, and it is steadier than any floor you have stood on.{/} You had thought that a thing held up by nothing would feel as if it were about to fall. It feels as if falling had never been thought of.",
      actions = {
        { "Push up on it", say "You brace and shove, to see. You might as well shove the Grumbles. The village does not rise by the width of a hair, and neither, you understand after a while, would it sink." },
      } },
    { name = "bats",
      icon = "v",
      description = "A few hundred, hanging among the roots with their wings folded. They are the only creatures in Tether that are the right way up, by their own lights, and they look it." },
    { name = "glow moss",
      description = "On the wet rock near the point, a patch of green light, enough to read large print by. He has trained it along the rail with string.",
      actions = {
        { "Touch it", say "Cold, and your fingertip glows for a minute afterwards. You point at things with it until it fades." },
      } },
    { name = "things that came through",
      description = "On a ledge: what has fallen down cracks from the village over the years and been caught.",
      things = {
        { name = "a wedding ring", description = "On a nail. He knows whose. He sends it up in the bucket every spring and it is back by harvest. It is a marriage of that kind." },
        { name = "marbles", description = "A jar of them, sixty or so. The paving on the green has a crack, and Tether has had three generations of small boys." },
        { name = "a cricket ball without its string", description = "The one that got away. It reached him, not the ground, and he has kept it very quiet." },
      } },
    { name = "the weather underneath",
      description = "Cloud going by below your boots, close enough to drag a foot in. From here you see it as fish see ice. When it thins there is a brown and green country down there, tilted, sliding past, and a road.",
      actions = {
        { "Drag a foot in it", say "You sit on the walkway and let a boot down into the top of a cloud. It is cold, and it pulls, gently, like a stream. The boot comes up beaded. A little further along, the cloud has a furrow in it, which you made." },
      } },
  },

  exits = {
    { to = "le_tether", label = "Up the well", description = "In the bucket, turning, with Dunnage on the windlass rope and twenty feet of ferns going down past your nose." },
  },
}
