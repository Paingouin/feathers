-- The way in: the road with its warnings, the village with its shutters, the graveyard with its views.

space {
  id = "gl_low_road",
  region = "glowers",
  name = "The Unadvised Road",
  description = "The road leaves the moor by a notch between two hills and at once the light goes the colour of a bruise. It is a perfectly good road, well drained and recently mended. Every twenty paces, something begs you not to use it.",
  ambience = {
    fog { color = "#1e1620", speed = 0.3, strength = 0.45 },
    rain { glyphs = "·˙", color = "#3a3040", rate = 0.2, speed = 0.5 },
  },

  things = {
    { name = "the Glowers",
      wonder = true,
      description = "Seven hills in a row, each with a ridge of dark rock across its brow and two hollows beneath, so that the whole range looks down on the road with one expression. It is not anger. It is the look of a great-aunt who has been told your plans. Travellers have turned back at this spot for a thousand years and been unable to say what from.",
      things = {
        { name = "the brow of the nearest", description = "A slab of black stone a mile long, tilted forward. Gorse grows along it like an eyebrow that has been let go." },
        { name = "the seventh hill", description = "The tallest, at the far end, and the only one with something on its head: towers, thin ones, and a single lit window. Of the seven it glowers least. It looks, if anything, hopeful." },
        { name = "the minute at sunset",
          description = "The carter told you and you did not believe him. For one minute each evening the sun gets under the cloud and lies level along the range, and the shadows under the seven brows fill up with gold, and the Glowers stop glowering. They look surprised. Then mild. Then the sun is gone and they remember themselves.",
          actions = {
            { "Wait for it", say "You wait. It comes. Seven great faces lift, one after another down the row, and for the length of a held breath the whole dreadful country looks as if it has just been told some good news. You find you are smiling back. Then it is dusk and you are grinning at a hill." },
          } },
      } },

    { name = "the warning signs",
      description = "Boards on posts, both sides of the road, put up over several centuries by several authorities who did not consult.",
      things = {
        { name = "the first sign", description = "{i}TURN BACK.{/} Black on white, by order of the Aldmoor Council. Under it, smaller: {i}Travellers proceeding do so at their own risk and may not claim.{/}" },
        { name = "the second sign", description = "{i}TURN BACK NOW.{/} Larger, redder. Under it a skull, painted by somebody who had only had one described to them. It has ears." },
        { name = "the third sign", description = "{i}WE DID SAY.{/}" },
        { name = "the fourth sign", description = "Much older, carved, and worn nearly flat: {i}Beyond here the night has a landlord.{/} Somebody has since nailed a smaller board beneath: {i}He is very good about repairs.{/}" },
        { name = "a sign facing the other way",
          description = "For those leaving. {i}THANK YOU FOR VISITING THE GLOWERS. TELL NO ONE.{/} Then, added in chalk in a villager's hand: {i}no really, tell people, trade is terrible{/}.",
          actions = {
            { "Read all five again", say "Turn back, turn back now, we did say, the night has a landlord, tell no one. You have read notices like these outside every interesting place you have ever been thrown out of. You walk on with a lighter step." },
          } },
      } },

    { name = "a gibbet",
      description = "A post with an arm and an iron cage hanging from it, creaking. It stands at the crossroads as gibbets are meant to. The cage holds a geranium.",
      things = {
        { name = "the cage", description = "Man-sized, rust red, swinging a little. It was last occupied in the reign of somebody's grandfather by a sheep thief who was let out at teatime. Since then the parish has kept it up for the look of the thing." },
        { name = "the geranium", description = "Scarlet, in a pot, doing very well. It gets the sun there when there is any. The widow Lumm waters it on Tuesdays with a can on a pole." },
        { name = "the creak", description = "Two notes, down and up, with every gust. The village oiled it once and nobody could sleep. They sent to Aldmoor for a smith to put the creak back." },
      },
      actions = {
        { "Give it a push", say "The cage swings out over the road and back. The creak rises to a shriek. A crow that was not there a moment ago looks at you with real approval." },
      } },

    { name = "a crow", icon = "v",
      description = "On the gibbet arm, hunched, black against a grey sky, exactly where a crow should be. It is employed. There is a second crow on the next post who takes over at noon.",
      actions = {
        { "Ask it the way", say "It looks at you. It looks up the road at the castle. It looks back at you, for longer. Then it says \"Caw,\" flatly, as one reads out a notice." },
      } },

    { name = "the road itself",
      description = "Cobbled, cambered, with a ditch each side and not a weed in it.",
      things = {
        { name = "a mended patch", description = "New setts, laid this year, grouted and swept. The Count pays for the road out of his own pocket and inspects it by night. The carters say it is the best surface between here and Saltwick and that they would use it more if it went anywhere else." },
        { name = "a milestone", description = "{i}CASTLE REGRET 2. LOWER WINCE 1. ELSEWHERE: BEHIND YOU.{/}" },
        { name = "wheel ruts", description = "One set, narrow, both ways. A single carriage has used this road for a very long time and has kept to its own side." },
      } },

    { name = "a dead tree",
      description = "Black, leafless, with two branches raised. It was struck by lightning and has been struck again most years since, out of habit.",
      things = {
        { name = "a knot hole", description = "At head height. An owl lives in it, a small one, with enormous yellow eyes. By day it shuts them and the tree stops looking at you." },
        { name = "the scorch", description = "A spiral burn from crown to root. If you follow it round with your finger you end up facing the castle." },
      },
      actions = {
        { "Knock on the trunk", say "Hollow. From inside, a small and furious rearranging. Two yellow eyes open in the knot hole, find you, and close again very slowly, to make sure you saw." },
      } },

    { name = "a wayside shrine",
      description = "A stone niche with a little roof, such as stand on any road. This one has a saint in it with both hands held up, palms out, and a painted expression of extreme reasonableness.",
      things = {
        { name = "the saint", description = "Saint Orrin the Unblinking, who met the Night Host on this road and outstared it. He is shown at the moment of the staring. His eyes have been repainted so often they are a little too large." },
        { name = "the offerings", description = "Candle ends, a button, and garlic. A great deal of garlic, in strings and plaits and single bulbs, some of it sprouting." },
        candle { description = "Lit, in the niche, behind a horn pane. Somebody walks out from the village every evening to light it and walks back rather faster." },
      },
      actions = {
        { "Try to outstare the saint", say "You do very well for a while. Then the candle gutters, his eyes seem to move, and you find you have something in yours." },
      } },

    { name = "a carter going the other way",
      icon = "☺",
      description = "On a cart of empty crates, driving a mule out of the Glowers at a brisk walk and whistling.",
      things = {
        { name = "the crates", description = "Stencilled {i}BEETROOT, BEST{/}. He takes forty crates up to the castle on the first of the month and brings forty empty ones down. He has never asked." },
        { name = "the mule", description = "Brown, steady, incurious. It has been to the castle two hundred times and sees no difference between a vampire's stable yard and anybody else's, except that the hay is better." },
      },
      actions = {
        { "Ask if it is safe", say "\"Safe?\" He thinks. \"Pays on the nail. Gold, old stuff, heads on it I never heard of. Always asks after my mother.\" He clicks to the mule. \"Wouldn't go up after dark, mind.\" Why not? \"He keeps you talking.\"" },
        { "Ask about the signs", say "\"Council puts them up. He wrote to say could they be bigger, in case folk missed them. Very considerate of the public, he is. It's the public won't have it.\"" },
      } },

    { name = "bats", icon = "ᵛ",
      description = "Three or four, flickering over the road in the half light, after gnats. They are ordinary bats on ordinary business. Here they get looked at." },

    { name = "the mist",
      description = "It lies in the ditch and comes over the road in slow tongues. It is thicker here than on the moor and it seems to you to be better made.",
      actions = {
        { "Walk into it", say "It closes round you to the waist, cold and silent. You wade on, hand on your hilt, for nearly a minute before you remember that you have not got a hilt." },
      } },

    { name = "a boot in the ditch",
      description = "One, a traveller's, left where it came off. It points back toward the moor.",
      things = {
        { name = "inside the boot", description = "A nest of dry grass, and a field mouse, who has heard everything said about this road and has lived on it without incident for four generations of mice." },
      } },
  },

  exits = {
    { to = "moor_road", description = "Back through the notch to the heather, where the worst thing that can happen to you is a sheep." },
    { to = "gl_village", description = "On, to a huddle of roofs under the hill. Every chimney is smoking and every shutter is closed." },
  },
}

space {
  id = "gl_village",
  region = "glowers",
  name = "Lower Wince",
  description = "A village of a dozen houses round a green, in the shadow of the seventh hill. Every door is barred, every shutter bolted, every lintel hung with garlic. It is half past two in the afternoon. Through the shutters comes the sound of people getting on with things.",

  things = {
    { name = "the shutters",
      description = "Oak, iron-bound, on every window in the place, and shut. Each has a small heart cut in it to see through, and in each heart there is an eye.",
      things = {
        { name = "the nearest eye", description = "Blue, and frankly interested. When you look at it, it withdraws. A different eye, brown, takes its place lower down. That one is a child's and does not withdraw at all." },
        { name = "the bolts", description = "Three to a shutter, drawn every night at dusk by ancient custom and not undrawn in the morning by a custom slightly less ancient. People go in and out by the back. It saves time." },
      },
      actions = {
        { "Knock on a shutter", say "A pause. \"Who is it?\" A traveller. \"Are you him?\" No. \"Are you from him?\" No. A longer pause, then, disappointed: \"Oh.\" The bolts stay where they are, but a hand comes out through the heart and gives you a bun." },
      } },

    { name = "the garlic",
      description = "Strings of it over every door, wreaths of it on every gate, a braid of it round the neck of the pump. The whole village smells like the start of a good stew.",
      things = {
        { name = "a wreath on a door", description = "Sixty heads, plaited, with a ribbon. They are renewed every Lammas. The old ones are not wasted." },
        { name = "the garlic field", description = "Behind the houses, an acre of it in rows, the only crop in the parish. Lower Wince garlic is the finest in the kingdom and is sold to every kitchen in Aldmoor. The village has never told the buyers what it was first grown for. It would lower the price." },
      },
      actions = {
        { "Ask a shutter why", say "\"Why what?\" The garlic. \"What garlic?\" You point. All of it. A silence. \"It's traditional,\" says the shutter. For what? \"For hanging up.\" Another shutter, across the green: \"Don't tell him, Morwen.\" \"I'm not telling him.\"" },
      } },

    { name = "the green",
      description = "A triangle of cropped grass with a pump, a bench and a goat.",
      things = {
        { name = "the pump", description = "Iron, with a handle worn bright. The water is good and tastes faintly of garlic, as does the milk, the bread, and by now the villagers." },
        { name = "the bench", description = "Facing the castle. It has been sat on so much that there are two dips in it. In the evenings the old men come out the back way, walk round, and sit here with their shutters bolted behind them to watch the lit window and say what they would do if he came down." },
        { name = "a goat",
          icon = "g",
          description = "White, tethered, chewing. Goats are staked out in stories like this as an offering. This one was staked out forty years ago and is the third to hold the post. It has a shelter, a salt lick, and a pension.",
          actions = {
            { "Untie it", say "You untie the rope. The goat looks at the loose end, then at you. It walks in a circle the exact length the rope used to allow, and lies down in the middle." },
          } },
      } },

    { name = "the notice board",
      description = "Under a little roof by the pump. It is the only thing in Lower Wince that is open.",
      things = {
        { name = "a parish notice", description = "{i}CURFEW: DUSK. All persons to be within doors, shutters fast. By order.{/} Then in pencil: {i}Except Thursdays (whist).{/}" },
        { name = "an invitation", description = "Cream card, black edge, a hand like engraving. {i}The Count of Regret presents his compliments to the Parish and would be honoured by its company at dinner, on any evening convenient.{/} It is dated this month. Pinned beneath it, corner over corner, are the cards for the month before, and the month before that, in a wad as thick as a loaf." },
        { name = "the reply", description = "A single sheet, yellow, in the hand of a parish clerk long dead: {i}The Parish thanks his Lordship and regrets it is washing its hair.{/} They have sent the same one for three hundred years. He frames them." },
        { name = "a lost notice", description = "{i}LOST: one soul, in or about the year of the wet summer. Sentimental value. Apply the Castle.{/} Very old, very neat, and never taken down." },
      },
      actions = {
        { "Count the invitations", say "You give up past three thousand. Not one is creased. Not one has been answered except in the same nine words. The top card smells very faintly of lavender and beetroot." },
      } },

    { name = "the widow Lumm",
      key = "gl_lumm",
      icon = "☺",
      description = "The one villager out of doors: a small old woman in black, sweeping her step with the shutters bolted behind her. She has decided she is too old to be worth biting and has been proved right daily for thirty years, which annoys her.",
      things = {
        { name = "her broom", description = "Birch, with a rowan handle, a horseshoe nailed to it and a sprig of something tied on. It is proof against witches, the evil eye and the undead. It is not much good for sweeping." },
        { name = "her necklace", description = "Garlic, a full string, worn like pearls. She has worn it so long she no longer smells it. Nobody else is so lucky." },
      },
      actions = {
        { "Ask about the Count", say "\"Him.\" She leans on the broom. \"Six hundred years old and never done a day's haunting. My mother left her washing out all night once, on purpose. He took it in. Folded.\" She shakes her head. \"You can't respect it.\"" },
        { "Ask why the shutters, then", say "\"Because he's a vampire.\" But he never comes. \"Because of the shutters.\" She gives you the look of somebody who has won this many times. \"And don't say take them down and see. My grandfather said that. They made him stand in the corner at the harvest supper.\"" },
        { "Ask about the inn", say "\"The Last Chance. Ham Dobble keeps it. You'll want the back door.\" She lowers her voice. \"There's a room there they don't show. My late husband was in it every other Friday for fifty years. Came home smelling of sherry and saying they'd very nearly decided.\"" },
      } },

    { name = "the houses",
      description = "Stone, low, slate-roofed, each with a horseshoe over the door, points up.",
      things = {
        { name = "a horseshoe", description = "Nailed with seven nails. Under it a second, older. Under that the rust shadow of a third. The door has been lucky for so long it has scarcely been opened." },
        { name = "a chimney", description = "Smoking. There is an iron grating across the pot, to stop anything coming down in the shape of a bat. The sweep charges double and has to bring his own key." },
        { name = "a cat on a sill", description = "Black, naturally. It sits outside the bolted shutter in plain view of the castle, washing. The cats of Lower Wince have never observed the curfew and have never been asked their reasons." },
        { name = "a child's chalk drawing", description = "On a doorstep: a tall thin man with a cloak and big teeth, holding hands with a row of smaller people. They are all smiling. An adult has scrubbed at it and given up." },
      } },

    { name = "the smithy",
      description = "Shut, like everything, but the forge is going: you can hear the bellows. The sign shows a hammer and, for some reason, a fork.",
      things = {
        { name = "the half door", description = "The top is bolted. The bottom is open, and business is done through it at knee height. You see a leather apron and a pair of hands." },
        { name = "what he makes", description = "Shutter bolts, chimney grates, and silver-plated toasting forks, which sell at Aldmoor market as vampire-proof. He has never tested one. He points out that there have been no complaints." },
      },
      actions = {
        { "Crouch and say hello", say "\"Afternoon,\" say the hands. You ask if he ever opens the top half. \"Did once. '82. Saw the castle, plain as you like, just sitting there. Give me a turn.\" The hands go back to work." },
      } },

    { name = "a scarecrow",
      description = "In the garlic field, arms out. It wears a black cloak and has two parsnips for fangs. It was put up to frighten the Count. The crows sit on it. So, one moonlit night, the story goes, did the Count, for a rest, on his way back from mending the road.",
      things = {
        { name = "its cloak", description = "A good one, wool, lined. Nobody in the village will say whose it was. It is far too long for anybody who lives here." },
      } },

    { name = "the church",
      description = "Small, squat, and built like a fort, with a slate spire and a weathercock.",
      things = {
        { name = "the weathercock", description = "Iron, and it is not a cock. It is a bat. The founders ordered a cock, and the smith said he did what he was good at. It points wherever the wind is going and has an air of knowing what for." },
        { name = "the church door", description = "Studded oak, a foot thick, with a sanctuary ring. It is the one door in the village that is never bolted. The parson says that if the Count ever does come down he is as welcome as anyone, and that he would like a word with him about the organ fund." },
        { name = "the bell", description = "Rung at dusk for curfew: nine strokes, slow. Up at the castle, a moment later and very faintly, something that might be a dinner gong answers." },
      } },

    { name = "the lit window, from here",
      description = "High on the crag, one yellow square in all that black stone. It has not gone out in living memory. The children of Lower Wince are told that if they are bad he will see them. They wave to it on the way to school." },

    { name = "a cart of garlic",
      description = "Loaded for Aldmoor market, tilt lashed down, waiting for morning. It is parked across the lane to the castle. It is always parked across the lane to the castle. You can squeeze past.",
      actions = {
        { "Squeeze past", say "You turn sideways and edge between the wheel and the wall. A shutter opens a finger's width behind you. \"He's going up,\" somebody says. \"He's never.\" \"He is. Fetch your father.\" By the time you are through, every heart in every shutter has an eye in it." },
      } },
    { name = "the well",
      description = "In the middle of the green, under a little slate roof, with a windlass and a bucket on a chain. A bunch of garlic has been tied to the windlass, and another to the bucket, and one, to be sure, has been dropped down the well.",
      things = {
        { name = "the bucket", description = "Oak, bound in iron. On the inside of the rim somebody has carved a row of small crosses, one for each time it has come up with nothing in it but water. There are a great many, and that is the point of them." },
        { name = "the water", description = "Cold, clean, and tasting very slightly of garlic. The village is proud of this and has not noticed it for generations." },
        { name = "a bun on the well coping", description = "On a clean cloth, under an upturned basin. A card in spidery pencil: {i}For the young man with the case, if he comes by before Thursday. He is too thin.{/}" },
      },
      actions = {
        { "Draw a bucket", say "The windlass shrieks. Three shutters open a crack and close again. You get your water. Behind one of the shutters you hear, clearly: \"It's only him. The one with the sword. Put the kettle back on.\"" },
      } },
    { name = "a cottage with its shutters open",
      description = "One, at the end of the row, has every shutter fastened back and geraniums on the sill. It is as shocking, in Lower Wince, as a man walking about without his trousers.",
      things = {
        { name = "the old lady in the window", description = "Mrs Amity Voss, ninety, knitting. She has never bolted a shutter in her life. She says that anything wanting to come in will find her at home, and that it had better have wiped its feet." },
        { name = "her knitting", description = "A small tube in red wool, with a hole at the end, and a second one started. They are too narrow for fingers. \"Horn cosies,\" she says. \"He feels the wind in them, poor lamb. Nobody ever thought to ask.\"" },
        { name = "a black case under her table", description = "A traveller's sample case, with brass corners, left behind. It is open. A purse, a hand mirror, a small bottle. She has put the purse to use as a pincushion." },
      },
      actions = {
        { "Ask about her visitor", say "\"Such a polite boy.\" She counts stitches. \"Came to the door with a case. Wanted to know had I ever wished. I said I'd wished he'd come in out of the wet.\" She bites off the wool. \"He's from some firm, down below somewhere. They don't feed him. He's coming Thursday and I'm doing a seed cake.\"" },
      } },
  },

  exits = {
    { to = "gl_low_road", description = "Back past the signs, which have the grace not to say they told you." },
    { to = "gl_inn", description = "The inn on the green, shuttered and smoking. The back door stands open." },
    { to = "gl_graveyard", description = "Behind the church, a slope of headstones, all leaning together as if conferring." },
    { to = "gl_castle_gate", description = "The lane past the garlic cart, up the seventh hill in eleven turns. The village watches you take the first." },
  },
}

space {
  id = "gl_graveyard",
  region = "glowers",
  name = "The Wince Acre",
  description = "The graveyard of Lower Wince, on a slope facing the castle. In most graveyards the dead keep their own counsel. Here they were buried under their opinions, cut deep, and the opinions have gone on disagreeing ever since.",
  palette = { bg = "#0c0d10", text = "#ccd0d2", dim = "#666c72", accent = "#9ab8c0", border = "#343c44" },
  ambience = {
    fog { color = "#181c20", speed = 0.2, strength = 0.5 },
    fireflies { glyphs = "·˙", colors = { "#9ad0c0", "#c0c8e0", "#e0d8a0" }, rate = 0.12 },
  },

  things = {
    { name = "the headstones",
      description = "Slate, close set, and every one of them has something to say about the others.",
      things = {
        { name = "the stone of Jorum Pell", description = "{i}Here lies Jorum Pell, who said the Count would come down in his lifetime. He did not.{/} The mason has left it unclear which of them is meant." },
        { name = "the stone beside it", description = "{i}Here lies Annet Pell, wife of the above, who told him.{/}" },
        { name = "a tall stone", description = "{i}Sacred to the memory of Alderman Cray, a just man.{/} Then, on the stone behind it, facing: {i}He moved my fence.{/} And on the one behind that, in smaller letters: {i}He did. I saw.{/}" },
        { name = "a very small stone", description = "{i}Nip. A good dog. Bit nobody.{/} There are fresh flowers on it, and one old bone, laid crosswise, which in the dark might be taken for something sinister and is in fact a present." },
        { name = "a stone with a correction", description = "{i}Here lies Old Marrable, aged 91.{/} The 91 has been struck through by a later chisel and {i}93, and he knew it{/} cut beneath." },
        { name = "a blank stone", description = "Dressed, set, and never lettered. The family could not agree. It has stood blank for two centuries and is the only quiet one in the row." },
      },
      actions = {
        { "Read along the row", say "It takes an hour. By the end you know who owed whom, who married beneath her, whose pig it was and who said it was not. Nobody in this ground was sorry to go, as far as you can tell. They only minded leaving the argument." },
      } },

    { name = "the lych lights",
      wonder = true,
      description = "As the light goes, they come up: one small flame to a grave, no bigger than a candle's, standing a hand above the turf without wick or wax. Every one is a different colour. Pale green over the Pells, amber over the Alderman, a blue almost white over the blank stone. They give no heat and they do not flicker in the wind. The village calls them by the names on the stones and says goodnight to them.",
      things = {
        { name = "the smallest light", description = "Over the dog. It is yellow and low to the ground and it is the only one that moves: when you walk along the row it comes a little way after you, stops at the edge of its plot, and waits." },
        { name = "the colours", description = "No two alike. The sexton says his grandfather could tell the dead of every house in the parish by their shade and knew a stranger's grave at once, because it burned white, having not yet made up its mind." },
        { name = "a light with no grave", description = "By the wall, over plain grass, a single flame the red of a banked coal. No stone, no mound. The sexton mows round it. The parish register has no entry and one line ruled ready." },
      },
      actions = {
        { "Hold your hand over one", say "No warmth. No cold either. Your palm is lit green from below and for a moment you feel what you feel when someone you know comes into a room behind you. Then only the wind." },
        { "Say goodnight", say "You say it, feeling foolish. Down the whole slope, row on row, the little flames dip together and rise again." },
      } },

    { name = "the sexton",
      key = "gl_sexton",
      icon = "☺",
      description = "Enoch Gall, with a spade, in a grave to his waist. He is the only man in Lower Wince who works after dusk and he says there is nothing to it once you are below the level of the wind.",
      things = {
        { name = "his spade", description = "Worn to a crescent. His father's, and his father's. The handle is new, and so, to be fair, is the blade." },
        { name = "his lantern", description = "Unlit. He hangs it up from habit. \"Don't need it,\" he says. \"Plenty of light,\" and nods at the graves." },
        { name = "the grave he is digging", description = "For nobody yet. He digs one ahead. The parish finds it a comfort, and it gives the old men on the bench something to look at other than the window." },
      },
      actions = {
        { "Ask about the lights", say "\"Always been.\" He leans on the spade. \"Parson says marsh gas. Bishop said souls. Count sent down a letter once, very polite, asking might he come and sit among them of an evening, as he'd none of his own.\" And? \"Parish said no. He sends a wreath at midwinter instead. Holly. Wires it himself.\"" },
        { "Ask about the hunter's tomb", say "\"Sir Bors Halloran. Come here to kill the Count, three hundred year back. Had a society and a special stake and all.\" He spits on his palms. \"Stayed for the planning. Died of old age in the inn. Read his stone, it's the only one up here that's not got a grudge on it.\"" },
        { "Offer to help dig", say "He hands up the spade without a word. You dig for some time. When you stop he measures your progress with his thumb, takes the spade back, and undoes it." },
      } },

    { name = "the hunter's tomb",
      description = "A table tomb in the best corner, with a knight on top in full armour, carved lying down. He has a stake in one stone hand and a mallet in the other, and the look of a man who has just thought of one more thing to check.",
      things = {
        { name = "the effigy", description = "Sir Bors Halloran, founder and first chairman of the Vigilant Society. The sculptor has given him a notebook, tucked in the crook of the arm. The stone pages are full of very small writing." },
        { name = "the inscription", description = "Round the rim, in letters of lead: {i}He came to end the Night. He was not hasty.{/}" },
        { name = "the stone notebook", description = "You can make out a heading, {i}Agenda{/}, and item one, {i}Apologies for absence{/}." },
      },
      actions = {
        { "Read the foot of the tomb", when = no(flag "gl_knows_motto"), set "gl_knows_motto",
          say "Low down, under moss, where a member kneeling would see it: {i}The Society asks: Is it tonight? The Brother answers: Not tonight, but soon.{/} And beneath, a carved tankard, and an arrow pointing down the hill at the inn." },
        { "Read the foot of the tomb", when = flag "gl_knows_motto",
          say "{i}Is it tonight? Not tonight, but soon.{/} Three hundred years of soon. The stone knight looks as though he would stand by every one of them." },
      } },

    { name = "the yew",
      description = "Black, vast, older than the church. Its lowest branches rest on the ground and have rooted there, so that it stands in the corner of the acre like a tent of itself.",
      things = {
        { name = "inside the yew", description = "A room of red bark and brown needles, dry in any weather. The village children hold their own parliament in here, on the subject of whether the Count has a tail." },
        { name = "a rope swing", description = "From a branch a thousand years old. The parson cut it down once. It was back by evensong and he has learned." },
        { name = "an owl", icon = "v", description = "A big tawny one, asleep against the trunk, the exact colour of it. It will wake when the lights come up and hunt along the rows by them." },
      } },

    { name = "the paupers' corner",
      description = "No stones here, only numbered iron pegs. Somebody has tied a ribbon to each one. The ribbons are new every spring and nobody in the village will own to it.",
      things = {
        { name = "peg forty", description = "The ribbon on this one is black silk with a red lining. Whoever ties them wears gloves, the sexton says, and comes very late." },
      } },

    { name = "the view of the castle",
      description = "The whole graveyard faces it. The dead of Lower Wince were laid with their feet to the hill, by old custom, so that on the last day they should rise looking at him and not be taken unawares.",
      actions = {
        { "Look where they are looking", say "Crag, towers, one window. As you watch, a small shape crosses the light, pauses, and seems to stoop: a man bending to a table to move a fork a quarter of an inch." },
      } },

    { name = "the lych gate",
      description = "Roofed, with a coffin rest and a bench each side.",
      things = {
        { name = "the coffin rest", description = "A slab on two posts, worn by eight hundred years of last halts. There is a draughts board scratched into the top. The bearers have to wait for the parson somewhere." },
        { name = "a carved beam", description = "{i}As you are now, so once was I.{/} And under it, in a different chisel: {i}Speak for yourself.{/}" },
      } },

    { name = "a fresh molehill",
      description = "On the Alderman, squarely. There is another on his fence-moving neighbour, the same size. The moles of the Wince Acre are scrupulously fair." },

    { name = "the sexton's hut",
      description = "A lean-to against the church wall.",
      things = {
        { name = "the register of graves", description = "A ledger, kept in pencil. Every plot is numbered and named. In the margin against each is a small coloured dab, done in paint: the shade of its light." },
        { name = "a kettle", description = "On a brazier. He drinks his tea in the grave, where it is out of the wind, and puts the cup on the edge." },
        { name = "a spare wreath", description = "Holly, wired on a hoop with extraordinary neatness, every leaf facing the same way. A black-edged card: {i}With respect, from the Hill.{/}" },
      } },

    { name = "a low iron door in the church wall",
      key = "gl_returns_door",
      description = "Waist high, painted black, without a handle on this side. A brass plate, kept polished by nobody you can find, reads {i}RETURNS{/}.",
      variants = {
        { when = visited "gl_lost_property", description = "The door you came out of. It has shut behind you and has no handle on this side. The plate reads {i}RETURNS{/}. You are, you suppose, one." },
      },
      actions = {
        { "Knock", say "Iron, cold, thick. From a long way down and a long way in, faint as a thing remembered, a bell goes {i}ting{/}, once, like the bell on a counter." },
      } },
    { name = "a row of small stones",
      description = "Along the south wall, in the sun, such as it is: seven little headstones, no higher than your knee, each with one word.",
      things = {
        { name = "the words", description = "{i}Rex. Bess. Rex. Old Rex. Tibby. Rex. The Other Rex.{/} The Dobbles of the inn have kept a dog for seven generations and have had, between them, one idea for a name." },
        { name = "a bone on the last grave", description = "A fresh marrow bone, laid square. It is renewed every Sunday. The sexton says it is always gone by Monday and that he has stopped wondering which of several explanations he would like least." },
      },
      actions = {
        { "Read the smallest stone", say "{i}Tibby.{/} And underneath, in letters a child cut with a nail: {i}she was a cat but she came when you said Rex{/}." },
      } },
    { name = "the choir, practising",
      description = "Through the church wall comes the sound of six voices and a harmonium, going over the same four bars. Five of the voices are what you would expect of Lower Wince. The sixth is a bass of such depth and blackness that the yew shivers.",
      things = {
        { name = "the harmonium", description = "Wheezing. It was got second-hand from Aldmoor and has a stop marked {i}Vox Humana{/} which nobody has dared to pull." },
        { name = "the sixth voice", description = "It comes up through the others like a cellar door opening. It is perfectly in tune. Nobody in the village will tell you whose it is. \"Mr Ashby,\" says the sexton, at last. \"From away. Took the end cottage. Very regular. Keeps his hat on.\"" },
      },
      actions = {
        { "Listen at the wall", say "They get to the end of the four bars. A pause. \"Lovely, Mr Ashby,\" says the vicar's voice, faintly. \"Perhaps a touch less on 'everlasting'.\" The bass says something low and apologetic. They go again. On 'everlasting' the church windows hum." },
      } },
  },

  exits = {
    { to = "gl_village", description = "Round the church to the green and the smell of garlic." },
  },
}
