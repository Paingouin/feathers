-- The smaller isles: the Stack, Little Afterthought and its light, and the caves under Muckle.

space {
  id = "is_puffin_rock",
  region = "afterthoughts",
  name = "The Stack",
  description = "A pillar of black rock two hundred feet high, with a cap of green turf, standing off the north end of Muckle across a gap that the sea goes through in a hurry. You come to it over a plank and two ropes. The top is the size of a village green. There are, at a careful guess, eleven thousand puffins on it, and every one of them has stopped what it was doing to look at your feet.",
  palette = { bg = "#080f10", text = "#ccd6d0", dim = "#5c7068", accent = "#f09040", border = "#284440" },
  ambience = {
    dust { glyphs = "·˙vˇ", color = "#587068", rate = 0.6, speed = 1.2 },
    fog { color = "#101e1e", speed = 0.6, strength = 0.3 },
  },
  backdrop = {
    "      v       ˇ         v      ",
    "          ▄▄▄▄▄▄▄   ˇ          ",
    "   ˇ      ███████        v     ",
    "          ███████              ",
    "≈≈≈≈≈≈≈≈≈≈███████≈≈≈≈≈≈≈≈≈≈≈≈≈≈",
  },

  things = {
    { name = "the puffins",
      icon = "v",
      description = "Small, upright, black coated and white fronted, with enormous striped beaks and orange feet. They stand about outside their burrows in ones and twos like guests at a wedding who do not know the family. When one looks at you, it turns its whole head sideways to do it, and you feel that something is being decided.",
      things = {
        { name = "a puffin with fish", description = "Eleven sand eels, held crosswise in its beak, all the heads on one side. Nobody has ever worked out how it catches the eleventh without dropping the ten. It walks past you into a burrow with the air of a man carrying in the shopping." },
        { name = "a puffin inspecting you", description = "It has come up to within a foot of your boot and is looking at the lace. It takes the end in its beak. It pulls. The lace comes undone. It looks up at you, sideways, to see what you will do about that." },
        { name = "two puffins knocking beaks", description = "Side to side, fast, with a noise like castanets. It is how they greet a mate they have not seen since last year. They go on for some time. A small crowd has gathered to watch, as it always does." },
        { name = "a puffin landing", description = "It comes in off the sea far too fast, with its feet stuck out in front and its wings going like a clockwork toy, sees the ground too late, and arrives on its face. It gets up at once and looks round, hard, to see who noticed. Everybody did. This is how all of them land. It has not stopped any of them looking." },
      },
      actions = {
        { "Sit down among them", say "You sit on the turf. After a minute they forget you are a stranger. After five, one of them is standing on your boot. You are, you discover, about the height of a very large puffin when seated, and are being treated as one who has let himself go." },
      } },
    { name = "the burrows",
      description = "The whole top of the Stack is hollow. Every yard of turf has a hole in it the width of your fist, and from every hole comes a low, contented growling, like a great many small men agreeing with one another underground.",
      things = {
        { name = "the oldest doorstep",
          wonder = true,
          description = "At the seaward edge, where the turf is thinnest, a burrow goes in under a flat grey stone. The stone is its doorstep. In the middle of the stone there are two small hollows, side by side, each the size of a thumbprint and as smooth as the inside of a cup. {magic}They have been worn there by feet.{/} A puffin comes home to the burrow it was hatched in, and so did its mother, and hers. Each of them, coming in from the sea, has stood for a moment in that one place, to look round, before going in. Nobody can say how many it takes to wear two hollows in a stone with orange feet that weigh nothing.",
          actions = {
            { "Wait by the doorstep", say "A puffin drops out of the sky, lands on its face, gets up, and walks to the stone. It puts one foot in each hollow. It looks left, and right, and at you. Then it goes in. You do not know why your eyes should sting, at a bird going indoors." },
          } },
        { name = "a burrow with a puffling", description = "Two feet down, in the dark, a ball of grey fluff with a beak. It has never seen the sea. In a month it will walk out of this hole at night, on its own, go to the edge, and step off. Nobody will have told it anything." },
        { name = "an empty burrow", description = "Swept, and lined with fresh grass, and nobody home. One of a pair is standing outside it, looking at the sea. The other is late. The first has arranged the grass again." },
      },
      actions = {
        { "Put your ear to the turf", say "Growling, on all sides, and under it the sea coming up through two hundred feet of rock. It is like lying on the lid of a very large and comfortable kettle." },
      } },
    { name = "the plank",
      description = "A single board a foot wide, laid across the gap from Muckle, with a rope at hip height on each side. The sea is ninety feet below it and going through at a run. The plank is taken in each autumn and put back each spring by whichever young man is trying to impress somebody.",
      things = {
        { name = "the gap", description = "White water, green water, and a noise that comes up the rock into your knees. A seal is lying in the middle of it on its back, quite at ease, watching you cross." },
        { name = "initials on the plank", description = "Burned in with a hot nail, in pairs, with dates. To carve yours here you have to do it lying down, in the middle. They are all couples. They were all, you gather, weddings within the year." },
      },
      actions = {
        { "Look down", say "You do. Then you look at the far end of the plank, steadily, and nowhere else, and feel that you have learned something about looking." },
      } },
    { name = "the fowler",
      description = "Tam Groat, on a rope, over the edge. All you can see of him is the rope, pegged into the turf, going tight and slack. He is after guillemots' eggs on the ledges below. The islands take one egg in nine and have done since there were islands.",
      things = {
        { name = "the peg", description = "An oak stake as thick as your wrist, driven into the turf at a slant. It is all that is holding him. A puffin is standing on it." },
        { name = "the rope", description = "Plaited horsehair and hemp, made by his mother. Every fowler's rope is made by his mother. It is thought that she will be the most careful." },
        { name = "a basket of eggs", description = "Guillemots', blue and green and scribbled over in black, each one different, each pointed at one end so that it rolls in a circle and not off a cliff. You watch one do it. It is the cleverest thing on the Stack, and it is an egg." },
      },
      actions = {
        { "Call down to him", say "\"Aye?\" comes up, from nowhere, very calm. You find you have nothing to ask a man on a rope. \"Just looking,\" you say. \"Aye,\" says the cliff." },
      } },
    { name = "the ledges",
      description = "Below the rim the rock goes down in shelves, and every shelf is packed with seabirds shoulder to shoulder, facing the wall, like people in a very full pew.",
      things = {
        { name = "the guillemots", description = "Brown and white, upright, each on a hand's width of bare rock with one egg on its feet. They quarrel with both neighbours all day and have not an inch to do it in." },
        { name = "the kittiwakes", description = "Small neat gulls, in nests glued to the cliff with mud. They call their own name, over and over, ten thousand of them at once. It is like being in a crowd where everyone is introducing himself." },
        { name = "a fulmar", description = "Grey, stiff-winged, sitting on a ledge by itself with a mild look. {danger}It opens its beak at you.{/} Tam has warned visitors about this. It can spit a stinking oil six feet, and never misses, and the smell does not wash out. It looks at you a little longer. It decides that you are not worth the oil.",
          actions = {
            { "Back away slowly", say "It closes its beak. You have been spared, by a bird, on the ground of insignificance. You are getting used to it." },
          } },
      } },
    { name = "the gannets",
      description = "Out over the sea: big white birds with black wing tips, circling high. One after another they fold up and fall, straight down, like a dropped knife, and go into the water with a crack you can hear from here.",
      actions = {
        { "Watch one dive", say "It turns over, shuts itself and falls. A hundred feet. White plume. Three breaths. It comes up with a fish, shakes its head and takes off, heavily, as if nothing much had happened. You have been holding the rope without knowing." },
      } },
    { name = "the bonxie",
      icon = "V",
      description = "A great skua: a big brown bird, built like a boxer, standing by itself on a hummock with nobody near it. It robs the others for a living. {danger}It lifts off and comes straight at your head, low, fast, with its feet down.{/}",
      actions = {
        { "Duck", say "It goes over with a rip of air, an inch from your hair, and wheels round for another. Tam's voice floats up from the cliff: \"Hold your hand up. He goes for the highest thing.\" You hold your hand up. It comes for the hand, veers off at the last moment, and goes back to its hummock. Honour is satisfied. Yours is not in it." },
      } },
    { name = "the turf",
      description = "Short, green, springy, and so soaked in four thousand years of what puffins leave that it is the richest ground in the kingdom. Sea pinks grow on it the size of cabbages. The islanders have thought of a garden up here. The puffins have been against it." },
    { name = "the cairn",
      description = "A heap of stones on the highest point, as tall as a child. Each person crossing the plank for the first time puts one on.",
      things = {
        { name = "the top stone", description = "White quartz, the size of an egg. A puffin is sitting on it, for the view." },
      },
      actions = {
        { "Add a stone", say "You find one, flat and grey, and set it on. The puffin moves over to let you, and moves back. You are in the count now. You are rather far down." },
      } },
    { name = "the lady in the cleft",
      description = "Jammed into a crack in the west face, twenty feet below the rim, is the figurehead of a ship: a wooden woman, life size, in a blue gown, with one arm held out. The sea put her there in a storm and never came back for her. The paint is nearly gone. She has puffins nesting in the crook of the arm.",
      things = {
        { name = "her face", description = "Worn smooth as a pebble. No eyes left, no mouth. She still seems to be looking for something a little way ahead, as figureheads do." },
        { name = "the nest in her arm", description = "Grass and a puffling. She has brought up thirty years of them. Tam says she is the best mother on the Stack, and that it is her being wood. She does not fuss." },
      } },
    { name = "the smell",
      description = "Fish, and ammonia, and warm turf, and eleven thousand of anything. It is very strong. After a quarter of an hour you stop noticing it. After half an hour you would miss it." },
    { name = "the census board",
      description = "A slate on a post, put up by Miss Arbuthnot and the school. {b}PUFFINS:{/} and then a number, rubbed out, and another, rubbed out, and at the bottom, in a child's capitals, {i}THEY WILL NOT STAND STILL{/}." },
    { name = "the view north",
      description = "Nothing. Sea, and then the place where sea becomes sky, and no line between. There is no land on that side until you have gone farther than anyone has come back from. The puffins come from there each spring, and go back there each autumn, and have never been asked." },
  },

  exits = {
    { to = "is_landing", label = "Back over the plank", description = "One foot, then the other, eyes on the far end, to Muckle and the path down." },
  },
}

space {
  id = "is_rival_light",
  region = "afterthoughts",
  name = "The Other Light",
  description = "Little Afterthought is a slab of rock and turf you could throw a stone across, and on it stands a short thick lighthouse, limewashed, with a green lamp burning in broad day. It is not on the King's list of lights. One man keeps it. He has come down to the landing place to watch you arrive, with his arms folded, so that you will be in no doubt.",
  palette = { bg = "#07120c", text = "#c8d8cc", dim = "#56705e", accent = "#70e8a0", border = "#24482e" },
  ambience = {
    shimmer { color = "#2c7048", strength = 0.3 },
    fog { color = "#10221a", speed = 0.3, strength = 0.4 },
  },
  backdrop = {
    "            ▄█▄             ",
    "            ███             ",
    "            ███             ",
    "       ▄▄▄▄█████▄▄▄▄        ",
    "≈≈≈≈≈≈≈▀▀▀▀▀▀▀▀▀▀▀▀▀≈≈≈≈≈≈≈≈",
  },

  things = {
    { name = "the keeper",
      icon = "☻",
      description = "Ansel Crake, long, grey and weathered like a fence post, in an oilskin he has not taken off since the last visitor. He has kept the Other Light alone for thirty-one years. He does not want company. He will tell you so for as long as you care to stay.",
      things = {
        { name = "his oilskin", description = "Black, cracked at every fold, buttoned to the chin. It crackles when he breathes." },
        { name = "his beard", description = "Trimmed square with the lamp scissors. There is a wick in it." },
      },
      actions = {
        { "Say good day", say "\"It was.\" He looks at the boat you came in. \"That's Sandy Groat's. He'll want it back. You'll be going, then.\" You say you have only just come. \"Aye. That's when folk go.\"" },
        { "Ask why the light is green", say "\"Because his is white.\" He jerks his head east, at the horizon, where Saltwick is. \"White says {i}come in{/}. Any fool can say come in. Somebody has to light the way {i}out{/}.\" He turns and looks up at his lamp, and for a moment his face is not sour at all. \"They can't see it coming home, you know. Only going. It's for the going.\"" },
        { "Ask about Old Wim", say "\"Wim.\" He says it like a man biting a thread. \"We were boys under the same Master. There was one light going, and two of us, and he got it. On the {i}mainland{/}. With a mole to walk on.\" He spits to leeward, with care. \"So I built my own. Thirty-one year I've kept it and never a night dark. Ask him if he can say the same. Ask him about the night of the big blow.\" He stops. \"No. Don't ask him. It's not kind.\"" },
        { "Ask about the letter", when = flag "is_saw_letter",
          say "He goes very still. \"That's private.\" The oilskin creaks. \"I wrote it the night of the big blow, when his light went out for an hour and mine did not. I could have crowed. I wrote to say I'd seen, and that I'd shown white for him, that one hour, from here, so the boats would not know.\" He looks at his boots. \"I never sent it. Larkin would read it. And Wim would know I'd covered for him, and he'd not thank me.\" A long breath. \"He'll be waiting on something else. He'll not be waiting on that.\"" },
      } },
    { name = "the tower",
      description = "Thirty feet high and nearly as wide, built of beach boulders set in lime, by one man, over nine summers. It has a lean on it. He says the lean is into the wind, and deliberate.",
      things = {
        { name = "the door", description = "A ship's hatch on leather hinges, with a board nailed to it: {b}NO{/}. Under that, a smaller board: {b}STILL NO{/}." },
        { name = "the stair", description = "Thirty-one steps, wound inside the wall. He adds one each year by raising the lamp room a course. It is, he says, the only light in the kingdom that is getting better." },
        { name = "the date stone", description = "Over the door. A year, and {i}A.C. FECIT{/}, and then, added below in smaller letters: {i}WITHOUT HELP{/}." },
      } },
    { name = "the green lamp",
      wonder = true,
      icon = "☼",
      description = "At the top of the tower, in a cage of iron and bottle glass: a flame the height of your hand, burning fish oil, behind a lens he ground himself out of the bottoms of nine hundred green bottles. It is lit all day and all night. In daylight you can scarcely see it. {magic}It cannot be seen at all by anyone coming toward the islands. It shows only to those sailing away.{/} A boat putting out from Muckle has it over the stern like a hand on the shoulder until the land is gone, and for a good while after, when there is nothing else. No islander has ever mentioned this to him. Every one of them has looked back for it.",
      things = {
        { name = "the lens", description = "Rings of green glass set in lead, like the bottom of a well looked at from the bottom. Each bottle came over from the inn, empty, in a sack, with no note. He has never asked why the island drinks so much or where it gets it." },
        { name = "the flame", description = "Small, steady, and green at the heart. It does not flicker when the wind gets in. It leans, the way he does." },
      },
      actions = {
        { "Walk round the lamp", say "From the landward side you see a lit lamp. You go on round. As you pass to seaward, between it and the open water, it goes out. You step back. It is burning. Forward: dark. Crake watches you do this four times. \"Aye,\" he says. \"You have to be leaving.\"" },
      } },
    { name = "the shutter",
      description = "An iron flap on a lever, on the east side of the lamp room, facing Saltwick. It works with a clack. With it he can show a flash or hide one.",
      things = {
        { name = "the draughts board",
          description = "On the sill by the lever: a board, with pieces made of limpet shells and winkles. A game is half played. Each night at ten, the white light on the horizon flashes a move. Each night at a quarter past, he flashes his. They have never spoken of it by any other means. It is their forty-fourth game. He is winning it, as he won the others, and Wim must know by now and has never once failed to flash.",
          actions = {
            { "Study the game", say "White is in a bad way. He could finish it in three moves. You say so. \"I could have finished it in March,\" says Crake. \"Then there'd be no game.\" He moves a winkle back to where it was." },
          } },
        { name = "a tally on the wall", description = "Forty-three strokes on the green side. Under the white side, nothing, and then, scratched small and fiercely crossed out and scratched again: one." },
      } },
    { name = "the keeper's room",
      description = "The bottom of the tower: round, low, with a box bed, a stove made from a buoy, and a table bolted to the floor in case of weather.",
      things = {
        { name = "a letter on the mantel",
          description = "Propped against a tin, addressed in a square black hand: {i}W., The Light, Saltwick. By sea.{/} The envelope has gone brown. It has been sealed, and opened, and sealed again, a number of times. It has never been posted.",
          actions = {
            { "Look at the letter", set "is_saw_letter",
              say "You do not open it. You only look. The seal is a blob of green lamp wax with a thumbprint in it, and under that an older one, and under that another. Behind you the oilskin creaks. \"You'll have seen that, then,\" says Crake." },
          } },
        { name = "the log", description = "A ledger of every night for thirty-one years. {i}Lit. Lit. Lit. Lit.{/} On one night, long ago, the entry is longer: {i}Lit. Blowing a whole gale NW. His is out. Showing white from the east pane till he has it back. Nobody is to know.{/} And the next night: {i}Lit.{/}" },
        { name = "the stove", description = "Half an iron buoy, upside down, on three bricks. It still has its number on. The Crown has been looking for that buoy for twenty years." },
        { name = "one chair", description = "One. He made it. There has never been a second, and he sat down hard in this one, just now, so that you should see that." },
        { name = "a shelf of bottles", description = "Brown ones, empty, washed, a long row. Each has a paper in it, rolled. He writes down what he would have said if there had been anyone to say it to, corks it, and puts it on the shelf. He does not throw them in the sea. \"Litter,\" he says." },
      } },
    { name = "the goat",
      description = "Small, white and wall-eyed, standing on the roof of the oil store, where there is no way up. She is the only creature on Little Afterthought that he admits to liking. She has eaten two of his hats and the corner of the log.",
      actions = {
        { "Ask her name", say "\"Company,\" says Crake. He hears it. \"It was a joke,\" he says. \"At the time.\"" },
      } },
    { name = "the garden",
      description = "An old boat, sunk to the gunwale in the turf and filled with earth he carried over from Muckle in a creel, forty trips. Kale, leeks and one rose.",
      things = {
        { name = "the rose", description = "White, small, tight, in the lee of the stern post, with a sack round its feet. It has no business alive out here. He says it came up by itself. There is a label on a stick beside it, in his writing, with the wax rubbed over to keep the rain off." },
        { name = "a scarecrow", description = "An oilskin on a cross of driftwood, with a buoy for a head. It is to keep off the gulls. It looks exactly like him. The gulls sit on it, as they do on him." },
      } },
    { name = "the oil store",
      description = "A stone hutch with a turf roof, full of casks. He renders the oil himself from fish livers, in a pot behind the tower, on days when the wind is toward Saltwick.",
      things = {
        barrel { name = "a cask of liver oil", description = "Dark gold, thick, with a smell you could lean on. It burns green by itself, he says. He has never had to colour the glass. That was only to be sure." },
      } },
    { name = "the fog signal",
      description = "A blacksmith's bellows fixed to the trumpet of an old gramophone, worked with the foot. In fog he sits and pumps it, every half minute, all night.",
      actions = {
        { "Tread the bellows", say "It gives a long flat {i}blaaaart{/}, like a cow that has been wronged. From Muckle, across the sound, the Cow answers. Crake nods. \"She's never missed,\" he says, with something near to warmth." },
      } },
    { name = "the telescope",
      description = "On a tripod in the lamp room, wedged with slivers of wood so that it cannot be moved. It is trained on one spot on the eastern horizon.",
      actions = {
        { "Look through it", say "A white tower, very small and far, at the end of a mole. A lamp room. In the lamp room, a brass tube pointing straight back at you. You step away from the eyepiece rather quickly. \"Is he looking?\" says Crake, not turning round. \"He's always looking.\"" },
      } },
    { name = "the landing place",
      description = "A cleft in the rock with three steps cut in it and an iron ring. Painted on the rock face in tar: {b}PRIVATE LIGHT. NO LANDING. NO HAWKERS. NO INSPECTORS.{/} And lower down, where you only see it when you are tying up: {i}mind the weed, it's slippy{/}." },
    { name = "the rain tank",
      description = "A ship's water tank, riveted iron, catching the run off the tower roof. He drinks from it, and washes in it, and keeps in it one large eel, to eat the midges. The eel is called the Inspector." },
  },

  exits = {
    { to = "is_landing", label = "Back to Muckle",
      description = "Across the sound in Sandy Groat's boat. If you look back, there will be a green light. He will be watching to see that you do." },
  },
}

space {
  id = "is_sea_caves",
  region = "afterthoughts",
  name = "The Pipes",
  description = "Under the north cliff the sea has gone into the island by a dozen mouths, and the mouths join inside into one high dark hall, floored with green water. Every swell that comes in pushes the air ahead of it up through cracks and chimneys in the roof, and each crack has a note. The islanders call the place the Pipes. You reach it at the bottom of the tide along a ledge, wet to the knee, and you hear it long before.",
  palette = { bg = "#060e12", text = "#c0d0d4", dim = "#4e6870", accent = "#70c8d0", border = "#1e3e48" },
  ambience = {
    drip { glyphs = "⠁⠂⠄⡀", color = "#3c7880", rate = 0.4 },
    shimmer { color = "#1c4850", strength = 0.4 },
  },

  things = {
    { name = "the chord",
      wonder = true,
      icon = "♪",
      description = "It is never silent in here. Each wave plays the cave from the low pipes to the high, a slow rising breath of sound, eleven notes, and then lets them fall again. No two waves are alike, so no two chords are, and they overlap. {magic}It has been playing since the sea first found its way in, without a rest and without once repeating.{/} There are old people on Muckle who can tell the hour and the weather by it from their beds. They are married to it. Couples row in here on the evening before the wedding and stand on the ledge and say nothing, and afterwards they say that was when it was done, and the kirk was for the cake.",
      things = {
        { name = "the deep pipe", description = "A hole in the floor of the cave, under water, as wide as a well. It does not sound. You feel it instead, in your breastbone, a moment before the rest begin. The islanders call it the Old Man, and say he is counting them in." },
        { name = "the high pipe", description = "A crack no wider than a finger, far up in the dark. Its note is thin and sweet and comes last, when the others are already dying. On a still day it is not heard at all, and people say the Pipes are sulking." },
        { name = "the tuner's marks", description = "By some of the cracks, little cuts in the rock, and a date. When frost or a fall shifts a pipe off its note, somebody comes with a chisel and a wet finger and puts it right. It is done by ear, by one family, and they are all slightly deaf." },
      },
      actions = {
        { "Stand and listen", say "You stand on the ledge. A wave comes in. The cave draws breath from the floor to the roof, and holds it, and lets go. You do not know how long you stand there. When you come to yourself your feet are numb and the tide has turned, and you have the feeling of having been told something at great length, kindly, in a language with no words in it." },
        { "Sing back", set "is_sang",
          say "You wait for the chord, and when it rises you put your own note in, the best you have. It is not a good note. The cave takes it anyway, up into the roof, and passes it round, and when the wave falls back your voice is the last thing left hanging there, a little improved. On the far ledge, eleven seals turn their heads all together. The big one looks at you for a long moment. Then it heaves itself aside. Behind where it was lying there is a low arch, and green light." },
      } },
    { name = "the seals",
      icon = "∩",
      description = "Eleven, hauled out along the inner ledge in a row, grey and dappled, lying on their sides like gentlemen at a club. They watch you with round black eyes. Nothing has ever looked at you with so much attention and so little hurry.",
      variants = {
        { when = flag "is_sang",
          description = "Eleven, along the inner ledge. They have shifted along since you sang, to leave a gap in the middle, and they are all carefully looking somewhere else. It is the way people stand when they have decided to let you find the door for yourself." },
      },
      things = {
        { name = "the big one", description = "A bull, nine feet long, scarred about the neck, with a Roman nose and whiskers like a brigadier. He lies across the back of the ledge and does not look as if he has moved for a tide or two.",
          variants = {
            { when = flag "is_sang", description = "A bull, nine feet long, scarred about the neck. He has moved a yard to the left. For him that is a speech." },
          } },
        { name = "a white pup", description = "A month old, all fur and eyes, lying on its back. It looks at you upside down and sneezes. Its mother puts a flipper over it without turning her head." },
        { name = "a seal with a ring on its flipper", description = "A band of something bright, high up, where a wrist would be. It might be weed. It catches the light as weed does not." },
      },
      actions = {
        { "Wave to them", say "One of them lifts a flipper and lets it fall. It may have been scratching. You choose to believe otherwise, and so, you feel, does it." },
      } },
    { name = "the ledge",
      description = "A shelf of rock a yard wide running round the wall, a foot above the water at this state of tide and well under it at any other. It is the only way in. It is polished by seals on the inner side and by wedding parties on the outer.",
      things = {
        { name = "a pair of shoes", description = "Women's, with buckles, placed neatly together on a dry knob of rock above the tide line. They are quite new. Whoever she was, she went barefoot the rest of the way, and you see no bare feet coming back." },
        { name = "barnacles", description = "A grey crust of them, each shut tight. When the water comes over them they open, and put out a fringed hand, and wave it, all of them, all together. It is how they eat. It looks like applause." },
      } },
    { name = "the mouths",
      description = "Twelve arches of daylight on the seaward side, some as high as a kirk door and some you would have to swim. The swell comes in through all of them at slightly different times. That is where the music starts.",
      things = {
        { name = "the Wide Mouth", description = "The boat entrance. A skiff can come through at half tide with the oars shipped and the rower lying back. There are scrapes of green and blue paint along the rock on both sides, at gunwale height, from four hundred years of slightly misjudging it." },
        { name = "the Eye", description = "A round hole high in the outer wall. For nine days in the year the sun at evening comes straight through it and lays a disc of gold on the back of the cave. The seals lie in the disc. They know the days." },
      } },
    { name = "the rock pools",
      description = "Left in the hollows of the ledge: each a small clear sea, with its own weed, its own weather and its own tyrant.",
      things = {
        { name = "an anemone", description = "Dark red, like a blob of jelly, shut. As the pool stills it opens into a flower with a hundred arms. A shrimp walks past. The flower takes notice. It is a different pool afterwards." },
        { name = "a hermit crab", description = "In a winkle shell too small for it. It has found a bigger whelk shell, and has spent the whole tide measuring it with its claws, going in, coming out, going in. It cannot decide. You have known people buy a house with less thought.",
          actions = {
            { "Watch it choose", say "It comes out of the winkle, naked and pink and curled, and for one second belongs nowhere. Then it is in the whelk. It turns round twice. It reaches out and pulls the old shell a little nearer, in case." },
          } },
        { name = "a blenny", description = "A fish the length of your finger, propped on its front fins on a stone like a man on his elbows at a bar. It has thick lips and eyes on top of its head, and it is watching you with open dislike." },
      } },
    { name = "the kelp",
      description = "Brown straps as long as a boat, rooted to the floor of the cave and rising and falling with the swell. When the water goes down they lie along the rock, shining. When it comes up they stand and sway, like a congregation." },
    { name = "the roof",
      description = "Lost in the dark, forty feet up. Water falls from it in single drops, each of which has a long way to think.",
      things = {
        { name = "the rock doves", description = "Nesting on a shelf near the Eye. They fly in and out through the hole, and the clap of their wings comes back off the walls a moment late, so that each bird seems to be followed by one you cannot see." },
        { name = "a spar wedged in a crack", description = "A ship's yard, thirty feet up, jammed crosswise in the roof where no tide comes now. Whatever sea put it there, the islanders would rather not meet. The oldest tuner's mark is cut just under it." },
      } },
    { name = "the echo",
      description = "There is one, and it is slow. The cave is too busy to give your voice back at once.",
      actions = {
        { "Shout your name", say "Nothing. The chord goes on. You wait, and give up, and turn to go. Then, from somewhere far back and low, the cave says your name, once, an octave down, in its own time. It did not sound like you. It sounded like what your name is for." },
      } },
    { name = "the green water",
      description = "Clear to the bottom, three fathoms, and lit from beneath by daylight coming in under the arches. You can see every stone. You can see a seal go along the floor of the cave on its back, slow as a cloud, looking up at you through the roof of its world.",
      things = {
        { name = "something bright on the bottom", description = "Small, and round, and gold. It is a horn button with four holes, the twin of the ones on your coat. You count yours. You are one short, and cannot think since when." },
      } },
    { name = "a low arch behind the seals",
      visible_if = flag "is_sang",
      description = "At the back of the inner ledge, where the big one was lying: an opening no higher than your waist, with green light in it and a breath of air coming out that is warmer than the cave. The rock round it is rubbed as smooth as a door handle." },
    { name = "a wedding garland",
      description = "Thrift and sea campion, plaited into a ring and hung on a spike of rock by the Wide Mouth. It is this week's. There are the stalks of older ones under it, a brown rope of them as thick as your arm, going back farther than you can untwist." },
  },

  exits = {
    { to = "is_landing", label = "The Landing", description = "Back along the ledge before the tide has it, and up the cliff path into the wind." },
    { to = "is_seal_hall", label = "The low arch",
      description = "Past the seals, who are looking the other way on purpose, and in under the rock toward the green light.",
      requires = flag "is_sang", hidden = true },
  },
}

space {
  id = "is_seal_hall",
  region = "afterthoughts",
  secret = true,
  wonder = true,
  name = "The Sea's Own Customs House",
  description = "A round chamber far in under the island, lit green from below, where the sea comes up through the floor in a single still pool. There are shelves in the rock all round it, and the shelves are full. {magic}This is where everything goes that the sea has ever taken and decided to keep.{/} It is all here, and it is in order. Anchors with anchors. Rings with rings. The seals bring each thing in, and set it in its place, and remember where it lay. On the point above your head a small man in a blue coat has waited nineteen years for one declaration. Down here, nothing has ever gone unrecorded.",
  palette = { bg = "#04100e", text = "#c0d8d0", dim = "#48706a", accent = "#60e0c0", border = "#184840" },
  ambience = {
    shimmer { color = "#1a6050", strength = 0.5 },
    drip { glyphs = "⠁⠂⠄", color = "#2c8070", rate = 0.2 },
  },

  things = {
    { name = "the old cow seal",
      icon = "∩",
      description = "She lies on a slab at the head of the pool, very large, very grey, nearly white about the muzzle. Her eyes are clouded. She does not need them. The others bring each new thing to her first, and she touches it with her whiskers, and then they know where it goes. She has turned her face toward you. You are being touched, at a distance, with whiskers.",
      variants = {
        { when = flag "is_gave_button",
          description = "She lies on a slab at the head of the pool, very large, very grey. Your button is on the rock in front of her, set exactly square. She has her chin beside it. You have been entered." },
      },
      actions = {
        { "Declare something", when = no(flag "is_gave_button"), set "is_gave_button",
          say "It seems to be how things are done on these islands. You feel in your coat. You have a button left, the last of the top three, hanging by a thread. You pull it off and hold it out, and say, feeling foolish, that you have this to declare. A young seal comes up out of the pool, takes it from your palm in its lips as gently as a horse, and carries it to the old one. Whiskers. A long breath out through the nose. The young seal sets your button on a shelf, alone, with a space cleared round it. That is the shelf, you understand, for things that were {i}given{/}. There is nothing else on it. There never has been." },
        { "Declare something", say "You have no more buttons, and your coat is now held shut by good intentions. She has what she needs from you." },
        { "Bow to her", say "You bow. It seems the thing. Every seal in the chamber lowers its head, a little, and raises it. You have never been in better company and you have been to a castle." },
      } },
    { name = "the shelf of given things",
      description = "A ledge by itself, to the right of the old seal, scrubbed clean and quite bare.",
      variants = {
        { when = flag "is_gave_button",
          description = "A ledge by itself, to the right of the old seal. In the middle of it lies one horn button with four holes and a bit of thread. It looks very small, and very well thought of." },
      } },
    { name = "the chart on the wall",
      key = "is_chart_hung",
      visible_if = no(item "is_seal_chart"),
      icon = "≋",
      description = "A whole sealskin, stretched on the rock with pegs of whalebone, fur side in. The bare side is covered with brown marks, thousands, in a pattern that takes you a while to see. Then you see it, all at once: the coast, and the islands, and the whole floor of the sea. It is the record of this room. Every sign on it is something that lies on a shelf here, or lies still where it fell, waiting to be fetched.",
      actions = {
        { "Reach for the chart", when = flag "is_gave_button", give "is_seal_chart", fx "sparkle",
          say "You stop with your hand out, and look at the old seal. She makes a low sound. Two of the young ones go up the wall, awkward as sacks, and take the pegs out with their teeth, and the skin comes down into your arms, dry and soft and smelling of cold. You try to say that you cannot take it. It is the only copy. The old one puts her chin down on the rock. She has it by heart. They all have. The skin was only ever for showing to a stranger, if one should ever come, and declare something. You have the Selkie Chart." },
        { "Reach for the chart", say "A bull seal that you had taken for a boulder lifts his head, looks at your hand, and looks at you. Nothing else. You put the hand in your pocket. Things are not taken, here. Everything on these shelves was taken, and they did not think much of it." },
      } },
    { name = "the bare pegs",
      visible_if = item "is_seal_chart",
      description = "Four slivers of whalebone in the rock, and a seal-shaped patch of paler stone between them. One of the young ones is already lying under it, looking up, as you would look at a place on the wall where a picture used to hang, to see whether you remember it. It seems to." },
    { name = "the anchors",
      description = "Along the lowest shelf, by size, from a stone with a hole in it to an iron thing with flukes as long as a man that must have held a king's ship. There are several hundred. Each has been scraped clean of weed.",
      things = {
        { name = "the largest anchor", description = "Off the {i}Unsinkable{/}. It has her name cast in the shank. It was the last thing she let go of, and the first thing to get here." },
        { name = "a gap in the row", description = "Between two stone anchors, both with holes, there is a space kept for a third. You think of a boat called {i}Presently{/}, and a stone on a heather rope that was once part of a wall. They are patient down here. They can see that one coming." },
      } },
    { name = "the rings",
      description = "A shelf of them, in rows, on a bed of white sand: gold, mostly, and plain. Wedding rings. Cold water shrinks a finger. There are more of these than of anything else in the room.",
      things = {
        { name = "a ring tied to another with hair", description = "Two, a large and a small, knotted together with a strand of something fair. The seals did not tie that. It came in so." },
        { name = "an empty place in the sand", description = "A small round dent, with no ring in it. You remember a seal on the ledge outside with something bright on its flipper. They borrow, then. It is put back. You can tell by the dent." },
      },
      actions = {
        { "Read the inside of one", say "{i}M. to J., till the sea gives up{/}. You set it down exactly where it was. A seal comes over, afterwards, and moves it a hair to the left, where it had been before that." },
      } },
    { name = "the spectacles",
      description = "Forty or fifty pairs, laid out with the arms folded, looking up at the roof. Wire, horn, one of gold. The sea takes them off people who are leaning over the side to look at something.",
      actions = {
        { "Try a pair on", say "The chamber swims. Then it steadies, and for a moment you see it as somebody else did, last: very clear, very close, the green coming up. You take them off quickly. A seal folds the arms for you." },
      } },
    { name = "a ship's bell",
      description = "Brass, off a merchantman, hung by its crown from a spur of rock. The name on it is {i}PRUDENCE{/}. There is a pew made from the rest of her in the kirk overhead. The bell came here and the timber went there, and neither has been told about the other.",
      actions = {
        { "Touch the bell", say "It gives one small note, no more than a glass tapped with a nail. Every seal in the place looks round. You are not asked to leave. You are looked at until you would rather." },
      } },
    { name = "the bottles",
      description = "Green, brown, clear, corked, each with a paper in it, stood in ranks on a high shelf like a library. Every message ever thrown into the sea that the sea did not see fit to deliver.",
      things = {
        { name = "a bottle near the front", description = "The paper has been taken out, flattened, read, by something, and put back rolled the other way. It says {i}HELP{/}, and a position, and a date four hundred years old. Beside the bottle lies an anchor chain link. You think, perhaps, they went." },
        { name = "a very small bottle", description = "A scent bottle, with a twist of paper in it. A child's writing. {i}To the sea. Please give back my dads boat. It is the green one.{/} It is on a shelf by itself, low down, where a pup could reach. Next to it somebody has left, as carefully as a seal can, a chip of green paint." },
      } },
    { name = "the figureheads",
      description = "Eight wooden people, propped along the back wall: a king, a lion, three women, a saint, a drummer boy and something with a fish's tail that the carver had plainly never seen. They face the pool. They look like passengers waiting for a ferry.",
      things = {
        { name = "an empty place among them", description = "Between the saint and the lion, a gap, and a scuff on the rock. One of the women is missing. You have seen her. She is in a cleft on the Stack with a puffling in her arm. They let her go out for the summer, you suppose. The air is good for the paint." },
      } },
    { name = "the pool",
      description = "The way the seals come in: a well of sea water in the middle of the floor, ten feet across, going straight down into green and then into blue. The light in the chamber comes up out of it. You cannot see where the light is coming from. Lower down, it is brighter.",
      things = {
        { name = "a seal arriving", description = "A dark shape, rising, turning as it comes. It breaks the surface without a sound, with a spoon in its mouth. A plain tin spoon. It carries it past the gold and the anchors with great seriousness, to the old one, to be told." },
        { name = "the light below", description = "Green, then blue, then a colour you have not a word for, a long way down. It does not flicker like daylight through water. It is steady. It is like the light of a room with someone in it." },
      },
      actions = {
        { "Look down into it", say "Your face, and behind your face the green, and behind the green the deep steady light. A seal goes down past your reflection in a slow spiral, getting smaller. It does not seem to reach the bottom. It seems, at a certain point, to go indoors." },
      } },
    { name = "the shelf of spoons",
      description = "Tin, horn, silver, wood, several hundred, nested. More spoons go over the side of a ship than anything but oaths. The seals have a regard for them out of all proportion. A spoon, to a seal, must look like a small good seal." },
    { name = "a dry stool",
      description = "A plain office stool, with a round wooden seat and a rung for the feet, standing on the rock at the edge of the pool. It is not on a shelf. Nothing here is out of place but this, and the seals go round it. Its feet are white with salt. Its seat is dry, and polished, the way a seat is by use.",
      actions = {
        { "Sit on the stool", say "You do not. You get as far as putting your hand on it. The seat is warm. Across the chamber the old seal has lifted her head, and every other head with it, and you understand that the stool is not lost property and is not yours. It is somebody's place of work. You take your hand away. Wherever he has stepped out to, he is expected back." },
      } },
    { name = "the walls",
      description = "Rubbed smooth to the height of a seal's back, all the way round, by ten thousand years of going about their business. Above that the rock is rough, and wet, and glitters." },
  },

  exits = {
    { to = "is_sea_caves", label = "Out by the low arch", description = "Back under the rock, on hands and knees, into the Pipes and the long chord." },
  },
}
