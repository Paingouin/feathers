-- The heaven of doors that stick, and the three small heavens that open off it:
-- a doorstep, a porch, a hill and a Thursday.

space {
  id = "sh_door_corridor",
  region = "small_heavens",
  name = "The Passage of Jamb",
  description = "The chapel door gives all at once and you are through it, into a passage. It is panelled, carpeted down the middle, and it has more doors than a passage can hold: both sides, the far end, two in the ceiling and one, flat, in the floor. Every one of them sticks. This is the heaven of Jamb, God of Doors That Stick, and he would have asked you in years ago if he could have got out to do it.",
  palette = { bg = "#110e0b", text = "#d8cfc0", dim = "#786c5c", accent = "#c89858", border = "#4a3a28" },
  ambience = { dust { glyphs = "·˙", color = "#5e5040", rate = 0.15 }, flicker { color = "#d8a860", strength = 0.08 } },

  things = {
    { name = "Jamb",
      icon = "☻",
      description = "A broad god, built like a wardrobe, with a carpenter's pencil behind one ear and a shoulder that is higher than the other from nine hundred years of leaning on things. He is beaming. Nobody has come in for forty years. He has been on the other side of the chapel door all that time, pushing, while the faithful were on the outside, pulling.",
      things = {
        { name = "his shoulder", description = "The left. It has a dent in it the shape of a panel. He is proud of it, in the way of a man with a bad knee who can tell you the weather." },
        { name = "his pencil", description = "Flat, red, chewed. He marks where a door binds. Then he does not plane it. \"If I planed them,\" he says, \"what would I be the god of? Doors. There's dozens of those.\"" },
        { name = "his pockets", description = "Wedges. Candle ends for rubbing on runners. A handle, which has come off something." },
      },
      actions = {
        { "Ask why doors stick", say "\"Damp,\" he says at once. \"That's what they'll tell you. It isn't damp.\" He lowers his voice. \"A door sticks when it isn't sure. It's a serious thing, letting somebody through. Most doors do it without a thought. Mine think.\" He pats a panel. \"Give it a moment and a lift. It only wants to be asked properly.\"" },
        { "Ask to be let out", say "He laughs until the doors rattle. \"Out! You got {i}in{/}, friend. That's the hard way. Out's the chapel door, behind you, and now you've the knack it'll know you.\" He wipes his eyes. \"Forty years. I'd started talking to the hinges.\"" },
        { "Ask who made the world", say "\"Now that,\" says Jamb, \"is a door I've leaned on.\" He looks down the passage, at the far end, and back. \"I was called up when the first lintel went on two posts. There was an inside and an outside before that, mind, or what would the lintel be for?\" He takes out the pencil. \"This one here binds at the top. See? Lovely.\"" },
      } },
    { name = "the doors",
      wonder = true,
      description = "{shimmer}Every door that ever stuck is here, or its likeness is: there are more of them each time you turn your head.{/} Cottage doors swollen with rain. A vault door a king could not open on the morning he needed to. The lid of a jar. They hang in the panelling like pictures in a gallery, and behind each one something is still waiting, quite patiently, for somebody to lift a little and then push.",
      things = {
        { name = "a cottage door", description = "Green, with a cat flap. It stuck one wet night and a man who was leaving for good stood in the porch, swore, and went back to bed. He is eighty now. Jamb shows this one first." },
        { name = "a vault door", description = "Iron, a foot thick, the lock picked and the bolts drawn. It stuck anyway. The thief is said to have sat down and wept. The treasure was a king's, and you have seen it, and it was one coin even then." },
        { name = "a jar lid", description = "Pickled onions. \"Counts,\" says Jamb. \"Anything that opens. I get more prayers off that lid than off the whole of Nobles' Row.\"" },
        { name = "a door with no wall", description = "Standing free on a small island, in a frame, with the sea round it. Somebody built it and it has never been opened, since you can walk round. It sticks none the less. Jamb admires it more than any." },
        { name = "a very small door", description = "In the skirting, four inches high, brass knob. It does not stick. It swings both ways on a leather hinge. \"The mouse's,\" says Jamb, with distaste. \"From the cupboard. Comes and goes as it likes. I've spoken to Socks about it.\"" },
      },
      actions = {
        { "Try one", say "You choose a blue one. You lift and push. It thinks about you. Then it opens, on to a kitchen in the morning, a long time ago, with a kettle going and nobody in yet. You shut it again, gently. \"You see?\" says Jamb. \"It's not that they won't. It's that they want it to mean something.\"" },
      } },
    { name = "the door in the floor",
      description = "A trap, with a ring, set flat in the carpet. It is every cellar flap that ever swelled.",
      actions = {
        { "Stamp on it", say "It booms. From under it, faintly, a barman's voice says that he is not moving and you can tell them so. You have heard that voice before, and it was standing on a trapdoor then too." },
      } },
    { name = "the doors in the ceiling",
      description = "Loft hatches, two. One has a string. Nobody has ever got anything down from a loft at the first pull, and this is why.",
      things = {
        { name = "the string", description = "With a wooden acorn on the end. You pull it. The hatch drops an inch and stops. Dust comes down, and one moth, with an air of having been disturbed at prayer." },
      } },
    { name = "the carpet",
      description = "A runner, red, with a pattern of keys. It has rucked up at this end, behind the chapel door, into a ridge the height of a brick. That is the forty years.",
      actions = {
        { "Flatten the ruck", say "You tread it down. The chapel door behind you swings an inch freer than it has in a generation. Jamb watches you do it with the face of a man watching somebody tidy his desk." },
      } },
    { name = "a row of hooks",
      description = "By the chapel door, for the coats of worshippers. One coat.",
      things = {
        { name = "the coat", description = "A verger's, black, forty years out of fashion. He hung it up, went out for a moment to see about the door, and it shut behind him. He has been praying to get back in ever since. Jamb has heard every word and could do nothing but push." },
        { name = "its pocket", description = "A sandwich. Cheese. You do not investigate the sandwich." },
      } },
    { name = "the far end",
      description = "The passage ends in three doors, side by side, lent by neighbours who had nowhere to hang them. Each has a card.",
      things = {
        { name = "the doorstep door", description = "A plain house door with a scraper. The card says {i}Mind.{/}" },
        { name = "the afternoon door", description = "Half glass. Through the glass it is about four o'clock, whatever time it is here. The card says {i}Thurs.{/}" },
        { name = "a door somebody is leaning on", description = "It does not belong to a neighbour. It is one of Jamb's, and it is held shut from the other side by somebody's back. You can hear him whistling through his teeth." },
      } },
    { name = "a workbench",
      description = "Against the panelling. A plane, never used. A pot of glue. A door on trestles which he is making himself.",
      things = {
        { name = "the door on trestles", description = "Oak, six panels. He has been at it a century. It is perfect. He is now, with great care, making it a sixteenth too wide for its frame." },
        { name = "the plane", description = "Still in its grease paper. A present from Saint Ledger, with a card: {i}In the interests of efficiency.{/} Jamb keeps it where he can see it and feel insulted." },
      } },
    { name = "a draught",
      description = "From under every door at once, each a different temperature. One smells of rain. One smells of four o'clock, which you would not have said had a smell.",
      actions = {
        { "Feel under the doors", say "Rain, cold, from the right. Something warm and slow from the left, like a room with the sun in it. And from the very small door in the skirting, a smell of clean wool, and whiskers. You take your hand away from that one." },
      } },
    { name = "the keyhole collection",
      description = "A board of keyholes, mounted like butterflies. A keyhole is not a thing you would think could be taken off a door.",
      things = {
        { name = "a keyhole with an eye at it", description = "The eye is not attached to anybody. It is merely what a keyhole remembers. It blinks. You apologise to it." },
      } },
    { name = "a brass plate",
      description = "On the inside of the chapel door: {i}PUSH.{/} On the outside, as you know, it says {i}PULL{/}. Jamb did not put either of them up. He would like a word with whoever did." },
  },

  exits = {
    { to = "temple_quarter", label = "The chapel door", description = "Back out to the Street. It knows you now." },
    { to = "sh_staff_corridor", label = "The door somebody is leaning on", description = "It is the staff door, and the somebody is a seraph having a rest.",
      requires = flag "sh_corridor_found", hidden = true },
    { to = "sh_threshold", label = "The door marked Mind",
      requires = flag "sh_step_minded", locked = "it will not have you: you stepped straight over her doorstep on the Street and never minded it" },
    { to = "sh_thursday", label = "The door marked Thurs.",
      requires = flag "sh_thursday_kept", locked = "it is not Thursday for you: he keeps a stall on the Street, and likes to be promised" },
  },
}

space {
  id = "sh_threshold",
  region = "small_heavens",
  name = "The Doorstep",
  description = "One stone step, hollowed in the middle, with a door behind it and the whole of outdoors in front. That is all there is of this heaven: it is exactly as deep as a pause. Mother Mind-the-Step, goddess of thresholds, sits on it shelling peas. You find that you cannot stand in her heaven. You can only be on your way through it, in one direction or the other, for as long as you like.",
  palette = { bg = "#0e1114", text = "#d8d8cc", dim = "#70746c", accent = "#b8cc90", border = "#3a4638" },
  ambience = { dust { glyphs = "·˙", color = "#5a6450", rate = 0.2, speed = 0.4 } },

  things = {
    { name = "Mother Mind-the-Step",
      icon = "☺",
      description = "Thin, brown, with her skirts tucked round her ankles and a colander in her lap. She has her back to the indoors and her face to the outdoors and attends to both. Every bride carried over a sill, every son seen off from one, every cat that sat in a doorway deciding: hers.",
      things = {
        { name = "the colander", description = "Peas. She shells one for each person who crosses a threshold today without thinking, and eats it. The ones who stop on the step, she keeps the pod." },
        { name = "her ankles", description = "Crossed, on the step below, which does not exist. Her heels rest on the difference between in and out." },
      },
      actions = {
        { "Ask what she does", say "\"I mind.\" She splits a pod. \"You go from a room to a street. That's two places. In between there's a moment you're in neither, and anything could have you. I have you.\" She eats the pea. \"Then you put your foot down and you're the street's problem.\"" },
        { "Ask to stay a while", say "\"You can't. Nobody can. It's not for staying.\" She shifts along the step. \"But you can be about to go for as long as you want. Half the kingdom's doing it. Sit.\" You sit, about to go. It is the most restful thing you have done since Greenhollow." },
        { "Ask who made the world", say "She does not answer for three peas. \"I've a door behind me and a road in front,\" she says. \"I was put between. What's past the end of the road and what's at the back of the house, I'm not placed to see.\" She hands you a pod. \"Mind how you go. That's not a manner of speaking.\"" },
      } },
    { name = "the step",
      wonder = true,
      description = "A slab of grey stone, worn into a shallow dish by feet. {shimmer}It is every doorstep. You know it: it is the one at home.{/} There is the chip on the corner from the day the table went in. There is the place you sat when you were small and it was raining and you were not allowed out, and not made to come in. You had not thought of it in years. She has kept it swept.",
      things = {
        { name = "the hollow", description = "Deep enough to hold rain. A sparrow is drinking from it. The hollow is not from the going out or from the coming in. It is worn by the feet that stopped." },
        { name = "the boot scraper", description = "Iron, set in the stone. A lump of Greenhollow mud is on it. You recognise it. You left that." },
        { name = "a horseshoe", description = "Nailed to the riser, points up. \"For luck,\" she says. \"Doesn't work. But it shows willing, and I like that in a house.\"" },
      },
      actions = {
        { "Stand on it", say "You stand on the step. Behind you is everything you have left, and it is warm. Before you is everything you have not got to yet, and it is very large. For one breath you belong to neither, and are looked after." },
      } },
    { name = "the door behind",
      description = "Ajar. A kitchen, a clock, somebody's voice saying to wipe your feet. If you look straight at it, it is Jamb's passage. If you do not, it is not.",
      things = {
        { name = "the latch", description = "A thumb latch, the iron shiny. It is lifted. It is always lifted. Hers is the one door in the heavens that Jamb has never got to stick, and it grieves him." },
      } },
    { name = "the outdoors",
      description = "A lane, a hedge, weather coming. It is not anywhere. It is merely {i}out{/}, the thing itself, the way it looks from a doorway when you are six.",
      things = {
        { name = "the weather coming", description = "From the left, over the hedge: a grey shoulder of cloud. It belongs to next door. He is on his porch, and you can see the smoke of his pipe." },
        { name = "the lane", description = "It goes to the right, round a bend, and then it is all the roads there are." },
      } },
    { name = "a row of boots",
      description = "By the door, toes to the wall. One pair for every person who has taken them off here and gone in for good.",
      things = {
        { name = "a soldier's pair", description = "Split at the welt. He came home. That is all the story she will tell and all the story there is." },
        { name = "a pair of clogs", description = "Small. They have been by the door sixty years, and are still put out, by a woman in Greenhollow who has never said for whom." },
      } },
    { name = "a milk can",
      description = "On the step, lid on, sweating cold. Left each morning by a cherub with a float and a slow horse, who is owed for eleven hundred years and has never liked to knock." },
    { name = "a cat in the doorway",
      description = "Half in, half out, tail on the mat, deciding. It has been deciding since it was a kitten. It is the most devout creature in the heavens and it is, in its own view, merely thinking.",
      actions = {
        { "Hold the door for it", say "You hold the door. The cat looks at the indoors. It looks at the outdoors. It sits down. Mother Mind-the-Step nods at it with great respect. \"Seventeen years,\" she says. \"A saint, that cat.\"" },
      } },
    { name = "a pile of pods",
      description = "At her feet. Each one is a person who stopped on a threshold and thought about it: before a wedding, before a war, before telling somebody a thing. There are fewer pods than you would hope." },
    { name = "the lintel",
      description = "Low. Everybody who comes through ducks, whether they need to or not. That is a prayer too, she says, and the only one most men ever make." },
    { name = "a broom",
      description = "Besom, leaning on the jamb. She sweeps the step each morning, outward. You never sweep a step inward. Everybody knows that and nobody knows why. She knows why, and has told nobody." },
  },

  exits = {
    { to = "sh_door_corridor", label = "In", description = "Back over the sill into Jamb's passage." },
    { to = "sh_porch", label = "Next door's porch", description = "Over the low hedge to where the pipe smoke is.",
      requires = flag "sh_rain_remarked", locked = "he does not look round: you never passed the time of day with him on the Street" },
  },
}

space {
  id = "sh_porch",
  region = "small_heavens",
  name = "The Porch",
  description = "A wooden porch on the front of no house, with a rocking chair, a rail to put your feet on, and a barometer. From it you can see the whole kingdom's weather, laid out like washing. Old Looks-Like-Rain sits and watches it come. He is the god of weather, in the sense that he is the god of remarking on it. He has never made it rain. He has only ever been right.",
  palette = { bg = "#0c1016", text = "#d0d6dc", dim = "#687480", accent = "#90b0d0", border = "#34424e" },
  ambience = { rain { glyphs = "╵ˈ", color = "#405468", rate = 0.4, speed = 1.2 }, fog { color = "#182028", speed = 0.2, strength = 0.3 } },

  things = {
    { name = "Old Looks-Like-Rain",
      icon = "☻",
      description = "A long old god in a waistcoat, with a pipe and a knee. The knee is the holy part. It has told him every change in the weather since weather began being talked about, and he passes it on, to anyone, across any fence. Half the conversations in the kingdom are prayers to him. Nobody knows that, and he does not want it mentioned.",
      things = {
        { name = "his knee", description = "The right. He rubs it. Somewhere over the Mumblewood, at once, a cloud that was only passing changes its mind." },
        { name = "his pipe", description = "Clay. The smoke goes up and joins the overcast. A fair part of the overcast, he admits, is him." },
        { name = "his waistcoat", description = "Moleskin, with a watch chain and no watch. On the end of the chain is a fir cone. It is open. That means fine, he says, and looks at the sky, and says it will not last." },
      },
      actions = {
        { "Say it looks like rain", say "\"It does,\" he says, with deep contentment. You both look at it. It rains, a little, on the far side of the rail. \"There,\" he says. You have never been so thoroughly agreed with. It is the whole of his worship, and you have done it properly." },
        { "Ask him to make it stop", say "\"Make it? Lad, I don't {i}make{/} it.\" He is shocked. \"It comes. I say so. That's the arrangement.\" He points with the pipe. \"There's a fellow sells it in jars now. Up on those floating rocks. An {i}office{/}.\" He says the word as other gods say {i}heresy{/}." },
        { "Ask who made the world", say "He rocks for a while. \"Weather was here,\" he says. \"I'll say that. First thing I knew, there was a wind, and somebody leaning on a gate remarking on it, and that was me.\" He rubs the knee. \"What it was doing before it was remarked on, I couldn't say. Nothing worth mentioning, by definition.\" Then, briskly: \"Brightening up in the west. Won't last.\"" },
      } },
    { name = "the view from the porch",
      wonder = true,
      description = "{shimmer}All the kingdom's weather, at once, from the side.{/} A squall the size of your hand walking in over Saltwick. Sun on the Grumbles, with the shadow of one cloud crossing a monastery roof. Fog lying in the castle garden where a king has asked for it. Hobmoor under its own low lid. And over Greenhollow, a small plain shower on a cabbage field, which is doing more good than all the rest of it together.",
      things = {
        { name = "the squall", description = "Grey, slanted, in a hurry. You can see the fishing boats turn for home ahead of it, all together, like a comb through hair. Somebody on the quay has just said it looks like rain." },
        { name = "the shower on the cabbages", description = "He watches this one most. \"Marta's,\" he says. \"She never asks. She stands at the gate and tells it what she thinks of it. I've a lot of time for Marta.\"" },
        { name = "a patch of fine weather", description = "Small, round, over a moor to the east, where a row of hills is trying to look thunderous. It follows a castle about. \"Fellow there's ordered gloom for six hundred years,\" he says. \"I send what comes. He's too polite to complain.\"" },
        { name = "the floating rocks", description = "Small, far up, with washing between them. A grey smudge is going from one to another on a string. He glares at it." },
      },
      actions = {
        { "Watch the weather come", say "You put your feet on the rail. A front goes over the Everwood and every leaf turns its pale side up. A rainbow stands in the Dint with one foot in the star. It takes an hour, and it is the first hour in weeks in which nothing has been expected of you." },
      } },
    { name = "the rocking chair",
      description = "Ash, with a rush seat, and two grooves worn in the boards under the rockers. There is a second chair beside it, straight backed, for company.",
      actions = {
        { "Sit in the second chair", say "It creaks. He nods. For a long time neither of you says anything. A shower crosses. \"Cleared up nice,\" you say. \"It did,\" he says. It is theology of a high order and you have a gift for it." },
      } },
    { name = "the barometer",
      description = "Banjo pattern, mahogany. The needle points at {i}CHANGE{/}. It has no other word on the dial, all the way round.",
      actions = {
        { "Tap it", say "The needle shivers and settles on {i}CHANGE{/}. \"Never wrong,\" he says." },
      } },
    { name = "a row of seaweed",
      description = "Hung along the rail, a strand for each parish. Dry is fine and limp is wet. The Saltwick one is always limp. The Far Enough one, he says, he hung for form's sake." },
    { name = "the rail",
      description = "Worn in two places by two heels. Initials are cut in it, by visitors, of whom there have been few: a shepherd, a ship's master, and one {i}H.B.{/} with a small balloon scratched after it." },
    { name = "the gutter",
      description = "It leaks at one joint, and drips into a butt. He will not have it mended. \"What's a porch for,\" he says, \"if you can't hear it.\"",
      things = {
        barrel { name = "the water butt", description = "Full to the brim and never over. Rain from every parish, mixed. It tastes, he says, of the kingdom on an average day." },
      } },
    { name = "a weather house",
      description = "The little wooden kind, with a man who comes out for rain and a woman for fine. Both are out. They are standing in the two doors looking at each other. He says they have been like that since a certain Thursday and he does not like to disturb them." },
    { name = "the steps down",
      description = "Three, to a path, to a gate, to a hill with goats on it. The bottom step is wet and the top one is dry and the middle one is making up its mind." },
    { name = "a pile of almanacs",
      description = "By the chair, a year to each. He writes them himself, after. They have never been wrong either.",
      things = {
        { name = "this year's", description = "Blank from tomorrow on. He taps it. \"I don't look ahead,\" he says. \"That's the Office's game. I say what it looks like. There's a difference, and it's the difference between a god and a clerk.\"" },
      } },
  },

  exits = {
    { to = "sh_threshold", label = "Back over the hedge" },
    { to = "sh_goat_hill", label = "Down the steps to the hill", description = "Through the gate, which has been eaten to the hinges.",
      requires = flag "sh_goat_fed", locked = "the gate is shut and a horned head is on it: you gave the Goat Stone nothing on the Street" },
  },
}

space {
  id = "sh_goat_hill",
  region = "small_heavens",
  name = "Clamber's Hill",
  description = "A hill, steep as a roof, all rock and thistle and wind. It is the largest of the small heavens by a good way, since goats are numerous and believe very hard. There is not a blade of grass on it that has not been tried. There is not a ledge too narrow. At the top, on a point of rock the size of a dinner plate, with all four feet together, stands the god.",
  palette = { bg = "#0e120e", text = "#d4d8c8", dim = "#6e7662", accent = "#c0c878", border = "#3c4830" },
  ambience = { dust { glyphs = "ˎ·˴", color = "#56603e", rate = 0.3, speed = 1.0 } },

  things = {
    { name = "Old Clamber",
      icon = "♄",
      description = "A he-goat the size of a pony, yellow eyed, with a beard to his knees and one horn broken short. He is the god of goats and has no other duties. He regards you sideways, as goats do, with a pupil like a slot for a coin. He is chewing. He has been chewing the same mouthful since Thrum fell, and it was a piece of Thrum's sandal.",
      things = {
        { name = "the broken horn", description = "Snapped a hand above the skull. The other half is in the Grumbles, built into a cairn, where the goats go and stand. Nobody put it there on purpose." },
        { name = "his beard", description = "Full of burrs, a clothes peg, and a small bell without a clapper. Ma Scree is missing a bell. It would not be wise to raise it." },
        { name = "his eye", description = "Yellow, flat, and entirely without doubt. You have met priests who wanted that look and kings who paid for it. He was born with it." },
      },
      actions = {
        { "Ask what goats pray for", say "He does not speak. Goats do not. But he looks at the next ledge up, and then at you, and you understand that it is the whole creed: {i}higher, and then eat it.{/} There is no second article." },
        { "Offer him your sleeve", say "He takes it, gravely, as a bishop takes a ring. He chews the cuff. It is a blessing. Your sleeve will never again catch on a nail, a bramble or a door handle, having been warned." },
        { "Ask who made the world", say "He stops chewing. It is the first time in nine hundred years. He looks at you with the coin-slot eye until you have gone through the question again yourself and found it had no thistles in it. Then he butts you, not hard, in the direction of downhill, and takes up the sandal again." },
      } },
    { name = "the top of the hill",
      wonder = true,
      description = "{shimmer}A needle of bare rock, and on it, in a spiral, every goat that ever lived: each on a ledge exactly as wide as itself.{/} They go up out of sight, kid over nanny over buck, in a great still tower of horns and beards, all facing outward, all chewing, in perfect time. The sound is like surf. They are perfectly happy. Each of them is as high as it could get.",
      things = {
        { name = "the lowest ledge", description = "A brown nanny with one ear. She was Ma Scree's first, sixty years ago. She has the ledge by the path, so as to see who comes up. She sees you. She was told about adventurers." },
        { name = "a kid on a pinnacle", description = "A week old when it came. It has the best ledge of all, a spike the size of a thumb, and stands on it on one foot, showing off, for ever." },
        { name = "the troll's goat", description = "A grey billy, two thirds up, wearing a hat. You know of one troll, with one bridge. It seems that somebody once got across." },
      },
      actions = {
        { "Climb a little way", say "You get up three ledges. On the fourth a white nanny is already standing, and she does not move over. You come down three ledges. The whole tower watches you do it, chewing. Nothing is said, at great length." },
      } },
    { name = "the thistles",
      description = "Waist high, purple, with spines like tacks. They are the choicest thing on the hill and are eaten from the top down, slowly, by connoisseurs.",
      actions = {
        { "Try one", say "You bite a thistle. It bites back. A row of kids watches you with frank professional interest, and one of them shows you how it is done, which is from underneath, with the lips rolled." },
      } },
    { name = "the fence",
      description = "Posts and three rails, round the foot of the hill. It has been eaten, climbed, leaned on and gone under. It remains a fence in the way that the sea remains wet: nobody is asking it to prove anything.",
      things = {
        { name = "the gate", description = "One hinge and a bit of the latch. The rest went the usual way. A notice was nailed to it once. There are four nail holes." },
        { name = "a goat on a post", description = "All four feet on a round of wood three inches across, asleep." },
      } },
    { name = "a washing line",
      description = "Strung between two thorns. Nothing on it but pegs, and half pegs. Offerings, he takes them as. The laundresses of the kingdom have been devout for generations without the least intention.",
      things = {
        { name = "a shirt tail", description = "Linen, monogrammed {i}H.{/} with a small crown. Eaten to the fourth button. A king has been short of a shirt since spring and the palace laundry has blamed the moths." },
      } },
    { name = "a tin bath of rock buns",
      description = "Cooling on a flat stone. He bakes. Nobody has seen how, and the oven is not in evidence. They go down to the tea trolley on Fridays.",
      things = {
        { name = "one with a bite out", description = "Inside: oats, a bootlace, part of a hymn sheet, a thistle head and what was once certainly a notice." },
      } },
    { name = "the wind",
      description = "It comes round the hill and brings a smell of thyme, and of goat, which carries. It lifts every beard on the tower at once. It is the nearest thing they have to a hymn." },
    { name = "a salt lick",
      description = "A block of grey rock salt on a post, worn into a saddle by tongues. Pilgrims of every size have left their mark.",
      actions = {
        { "Taste it", say "Salt. And under the salt, stone, and under the stone a cold clean taste like the air before snow. A kid shoulders you aside. There is a queue, and you were not in it." },
      } },
    { name = "a shepherd's crook",
      description = "Stuck in the turf, the handle chewed to a nub. Whoever brought it came up to fetch the flock down, about four hundred years ago. He is on the ninth ledge now, in among them, with his hat on. He looks very well." },
    { name = "the path",
      description = "It goes straight up, since goats laid it out. Your heels are higher than your toes. There are droppings on it, like dark beads, in a pattern which if seen from above might well be a devout inscription." },
  },

  exits = {
    { to = "sh_porch", label = "Up the steps to the porch" },
  },
}

space {
  id = "sh_thursday",
  region = "small_heavens",
  name = "About Four on a Thursday",
  description = "You step through the half glass door into an afternoon. It is a parlour, with the sun slanting in low and gold through a west window, a clock about to strike four, and the week mostly over but not yet done with. Nothing is urgent. Nothing has ever been urgent here. This is the heaven of the God of Thursdays, and he has arranged it so that it is always the same moment of the same day, a little after the dinner and a little before the tea.",
  palette = { bg = "#14110a", text = "#e2d8bc", dim = "#847854", accent = "#f0c860", border = "#5a4a24" },
  ambience = { dust { glyphs = "·˙∙", color = "#a08840", rate = 0.35, speed = 0.15 }, shimmer { color = "#f0c860", strength = 0.12 } },

  things = {
    { name = "the God of Thursdays",
      icon = "☺",
      description = "A comfortable god in a cardigan, in an armchair, with his slippers on the fender and a newspaper that is the same newspaper. He is not a great god. Mondays have dread, and the rest days have glory. He has the day on which people look up and say, is it only Thursday, and he has made his peace with that.",
      things = {
        { name = "his cardigan", description = "Fawn, leather buttons, a darn at the elbow in a slightly different fawn. Our Lady of Lost Socks does his mending. He has never had to ask." },
        { name = "his newspaper", description = "The Aldmoor Intelligencer, a Thursday's. He has read it, by now, a number of times that you could write down but not say. He still does the puzzle. He still does not get four across." },
        { name = "his slippers", description = "Carpet, tartan. One has a hole. Through the hole you can see a sock, and the sock is odd." },
      },
      actions = {
        { "Ask what he is god of", say "\"Thursdays.\" He folds the paper. \"The getting through of them. Somebody has to have the days nobody wants. I had my pick of what was left and I thought, well, nobody will bother me.\" He looks at the gold light on the carpet. \"And nobody has. I recommend it.\"" },
        { "Ask about the repealed Thursday", say "The newspaper comes up between you like a drawbridge. \"I don't discuss that one,\" he says, from behind it. The clock ticks. \"It was {i}taken{/}. By act. I had it on the shelf with the others and they came with a paper.\" The newspaper shakes slightly. \"Ask the monks. They shouted loud enough.\"" },
        { "Ask who made the world", say "\"Not on a Thursday,\" he says, comfortably. \"I'd have noticed. Nothing's ever begun on a Thursday. That's the charm of them.\" He turns a page. \"Whoever it was did it on some other day and was good enough to leave me out of it. Is that the kettle?\" It is not the kettle. It is never quite the kettle." },
      } },
    { name = "the shelf of Thursdays",
      wonder = true,
      description = "Along one whole wall, floor to picture rail: glass jars, like a sweet shop, each with a Thursday in it. {shimmer}Every one is the same gold, and no two are the same.{/} A wet one with a funeral in it. One with a first day at school. A long hot one, in a harvest, with a wasp. Thousands on thousands of afternoons that nobody thought worth keeping, kept.",
      things = {
        { name = "a wet one", description = "Rain on the glass from the inside. A small town, umbrellas, a woman waiting under an arch for a man who is late. He comes. It is about four. That is all, and she remembered it the rest of her life without knowing which day it had been." },
        { name = "a recent one", description = "Still warm. A market, a fountain running up, a young person at a gate handing over a bent copper coin and looking very pleased with himself. You put that one back." },
        { name = "a gap", description = "Between two jars, a ring in the dust, and no jar. A label is still gummed to the shelf edge. It has been inked out, by a firm hand, with a ruler." },
        { name = "the oldest ones", description = "At the top left, out of reach, the glass gone purple. The light in those is the same light. \"They've not changed the recipe,\" he says." },
      },
      actions = {
        { "Take down a jar", say "You take one at a guess. Inside, a very small Greenhollow. A goose is crossing the square. A woman with onions is telling somebody what she thinks. It is nothing. It is an afternoon. You hold it up to the window and the two lights are the same, and for a moment you could not say which side of the glass you are on." },
      } },
    { name = "the clock",
      description = "On the mantel, in a walnut case. It says a minute to four. It ticks. The minute hand does not move. The tick is real: time is passing, he explains, it is merely not getting anywhere, and that is the difference between a Thursday and the grave.",
      actions = {
        { "Wait for it to strike", say "You wait. It gathers itself, the way clocks do, with a whirr in the works. It does not strike. It gathers itself again. You understand that this is the best part of a clock striking and that he has kept it and thrown the rest away." },
      } },
    { name = "the west window",
      description = "Sash, open a hand at the bottom, with a net curtain breathing in and out. The sun is exactly low enough to come under the blind.",
      things = {
        { name = "the light on the carpet", description = "A long gold oblong, with the shadow of the glazing bars in it and one slow fly. It does not creep. It has got as far as the leg of the table and there it has been let stay." },
        { name = "the view", description = "A back garden with a line of washing, a wall, and over the wall the tops of other afternoons. Somebody two gardens down is beating a carpet, without hurry." },
      } },
    { name = "the tea things",
      description = "On a tray on the table, set out: pot, cups, a seed cake with no slice gone. The kettle is on the hob and is about to sing.",
      things = {
        { name = "the seed cake", description = "Uncut. \"It's better before,\" he says. \"All cake is. I've had a great deal of time to look into it.\"" },
        { name = "a second cup", description = "Laid for a visitor. It has been laid for a visitor at every four o'clock he has. You are, as far as he can recall, the visitor." },
      },
      actions = {
        { "Wait for tea", say "\"Any minute,\" he says. The kettle ticks on the hob. You sit in the second chair with your empty cup. It is, you find, entirely pleasant to be about to have tea. You could do it for years. A good many people, he says, do." },
      } },
    { name = "the armchair opposite",
      description = "Leather, cracked, shaped to somebody. A cushion with a tapestry cover reads {i}Tomorrow Is Also A Day{/}, which in this room is a matter of opinion." },
    { name = "a calendar",
      description = "On the wall by the door, the tear-off kind. It says {b}THURSDAY{/}. He tears it off for you, to oblige. Under it, the next leaf says {b}THURSDAY{/}.",
      actions = {
        { "Tear off a few", say "Thursday. Thursday. Thursday. You stop when your hand is full. The block is no thinner. He takes the leaves from you and puts them on the fire, where they burn with a small steady flame, for about an afternoon each." },
      } },
    { name = "a cat on the hearth rug",
      description = "Tabby, in the gold oblong, on its back. It is the happiest animal you have ever seen. It has found the one place in creation where the sunbeam does not move off." },
    { name = "a pile of post",
      description = "On the mat, through the flap in the half glass door: prayers. They are all the same. {i}Let it be Friday.{/} He reads every one, with sympathy, and does nothing, since it will be.",
      things = {
        { name = "one in pencil", description = "From a child, on a page from a copybook. {i}Let it be Thursday again.{/} It is the only one of its kind he has ever had. It is framed, over the mantel, behind the clock." },
      } },
    { name = "the quiet",
      description = "There is a quiet in this room that you can lean on. A fly. The clock. The carpet being beaten, two gardens down. It is the sound of nothing being about to happen, and of that being perfectly all right." },
  },

  exits = {
    { to = "sh_door_corridor", label = "The half glass door", description = "Back into the passage, where it is whatever day it is." },
  },
}
