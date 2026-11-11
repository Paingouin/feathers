-- Sometimes: the island that is only there when the Saltwick tide is out, and what lies under it.

space {
  id = "is_sometimes",
  region = "afterthoughts",
  wonder = true,
  name = "Sometimes",
  description = "Half a mile out from the back strand of Muckle, across wet sand, there is a low green island the size of a hay field. Yesterday it was a pale patch of sea. {magic}It is only here when the water is away, and it has kept everything exactly as it was left.{/} There is a bench, a letter box on a post, the frame of a door, a garden. Weed lies over all of it. Small crabs are walking about with the look of people who have come home to find the roof off. Nobody on the Afterthoughts finds the place strange. They say an island has a right to its privacy like anyone else.",
  palette = { bg = "#06100c", text = "#c4d6c8", dim = "#50705c", accent = "#a0e0a0", border = "#22462e" },
  ambience = {
    drip { glyphs = "⠁⠂⠄⡀", color = "#3c8060", rate = 0.5 },
    shimmer { color = "#205038", strength = 0.3 },
  },
  backdrop = {
    "                 ┬             ",
    "         ┌─┐     │      ▄      ",
    "  ▄▄▄▄▄▄▄│ │▄▄▄▄▄│▄▄▄▄▄███▄▄▄  ",
    "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~",
  },

  things = {
    { name = "the letter box",
      description = "An iron box with a slot, on a post nine feet tall, so that it stands clear at high water. The post is furred with weed to within a yard of the top. On the box, in white paint: {b}SOMETIMES{/}. Dod Larkin delivers here from the ferry, in passing, with a long stick.",
      things = {
        { name = "the letters inside", description = "Eleven, dry. They are all addressed to {i}The Occupier, Sometimes, The Afterthoughts{/}. They are all from the Customs at Saltwick, and all ask the Occupier to state whether the island is, or is not, part of the kingdom at the present time, for purposes of duty. Nobody has answered. The Occupier is mostly cod." },
        { name = "a nest on top of the box", description = "A shag's: sticks, weed, a length of blue rope. It is the only dry building site for a mile. The bird sits tight and looks at you along its beak as at a creditor." },
      },
      actions = {
        { "Post something", say "You have nothing to post. You lift the flap and say \"hello\" into the slot, for form's sake. It goes in and does not come out. It will be delivered." },
      } },
    { name = "the bench",
      description = "Stone, with a back, facing west to the open sea. It is crusted with barnacles everywhere except the seat, and the seat has two worn places in it, a little apart.",
      things = {
        { name = "a brass plate", description = "Green, screwed to the back. {i}For Ina, who liked the view, and for Hugh, who liked Ina.{/} They were the last two to live out here, before it went under for the first time. They are in the kirkyard on Muckle now, facing this way." },
      },
      actions = {
        { "Sit on the bench", say "It is cold, and wet, and you slide a little. The view is of the sea, a mile off, drawn back like a breath that has been taken and is being held. You fit one of the worn places. You look at the other. It seems rude to sit in the middle." },
      } },
    { name = "Tam Sinclair's house",
      description = "A door frame of bog oak, standing by itself in a rectangle of low stones, with a door in it, shut. That is all there is of the house. Thirty years ago a man from Muckle said that land was land and he would build on it. He got as far as the door between one tide and the next. He hung it, and locked it, and the sea came in round both sides.",
      things = {
        { name = "the door", description = "Painted blue, once. There are mussels growing on the lower panels. The latch is polished. There is a mat.",
          actions = {
            { "Knock", say "You knock. You feel a fool. Then the door opens, and an old man in sea boots looks out at you from the other side of it, which is the same wet island. \"I'm in,\" he says. \"Whenever she's up, I'm in. I paid for the door.\" He shuts it again, and you hear him wiping his feet." },
          } },
        { name = "the doormat", description = "Plaited rope, soaked through, and laid square. It says {i}WELCOME{/}. A starfish is lying on the {i}O{/}." },
        { name = "the hearth stone", description = "The second thing he laid. There is a ring of black on it. He has had a fire here, now and then, on days when the island was in. For those hours it was a house, he says, and nobody on Muckle has ever argued." },
      } },
    { name = "the garden",
      description = "Four beds, edged with scallop shells. Ina's, to begin with. The sea has had the planting of it since, and has not done badly.",
      things = {
        { name = "the kelp bed", description = "Rows of it, brown and glossy, lying flat now and all pointing the way the water went. It was rhubarb once. It has come back as its own idea of rhubarb." },
        { name = "a sea anemone in a flowerpot", description = "The pot is cracked earthenware, sunk in the bed, with a red anemone living in it. Shut, out of water, it looks like a blob of jam. It is doing better than the geranium did." },
        { name = "the shell edging", description = "Scallops, all the same size, set on their sides. Each time the island shows, a few have been straightened. It is not Tam. He says it is not. He says he found it done." },
        { name = "a rose bush", description = "Dead these hundred years, black, hard as iron, every thorn still on it. A white whelk has laid its eggs along one branch in a string. From the bench, with the light behind, it could be in flower." },
      } },
    { name = "the tide pole",
      description = "A square post of oak driven into the highest point of the island, taller than you, cut with a scale of feet and inches like the ones on a harbour wall. Something has been using it to keep a record. Down one face, against the marks, there are ticks.",
      things = {
        { name = "the pencil ticks", description = "Low on the pole, close together, very neat. Each has a date beside it and two initials: {i}H.P.{/} They are in indelible pencil and have run a little purple in the wet. They go up the scale for about the height of your knee. That would be some weeks of tides." },
        { name = "the other ticks", description = "Above where the pencil stops, the record goes on. The dates are still there. The marks beside them are not pencil. They are pressed into the oak, each one, as if by the ball of a thumb, and the thumb was the width of your whole hand. They are as regular as the pencil ticks, or more so. They go on up the pole past your head, and the top one is still wet." },
        { name = "four dents in the turf", description = "At the foot of the pole, in a square, each the size of a penny. Something with four small feet stood here for a long time, facing the scale. A stool would do it. The dents have weed in them now. Whatever stood here has been moved." },
      },
      actions = {
        { "Lay your thumb in a mark", say "It is lost in there. The oak in the hollow is cold, and smooth, and a little slimy, and smells of deep water. The pencil ticks below look very small and brave. You wipe your thumb on your coat, and then, after a moment, wipe it again." },
      } },
    { name = "the Crown's stake",
      description = "A white post with a broad arrow on it, driven in at the edge of the grass. {b}H.M. CUSTOMS. THIS ISLAND TO BE DECLARED WHEN PRESENT.{/} Mr Lamb rowed out and put it in himself. It has been under the sea for most of every day since, and the paint is perfect. He comes and does it again.",
      actions = {
        { "Read the small print", say "{i}Absence of the island shall not be taken as evidence of evasion.{/} He thought of that himself, and was proud of it, and sent it to head office. Head office have not replied." },
      } },
    { name = "the weed",
      description = "Bladder wrack and thong weed and sea lettuce, lying over everything like a cloth pulled from a table in a hurry. It pops when you tread on it. Under it the island is all still here: the paths, the beds, the lip of a well.",
      things = {
        { name = "the well", description = "A ring of stones with a slab across. You shift the slab. The water inside is fresh. It is a yard below the sea for twenty hours in the day, and it is as sweet as the pump on Muckle. Tam drinks it. He says it was always the best water on the islands and that is the half of why he wanted the house." },
        { name = "a path of flagstones", description = "From the door frame to the bench, and from the bench to a place at the west end where the ground dips. The stones are worn in the middle. At the dip they stop being a path and become steps, going down, with water standing in them." },
      } },
    { name = "the stranded things",
      description = "What the water did not take with it, in the hollows.",
      things = {
        { name = "a lobster", icon = "c", description = "Blue-black, in a puddle that covers half of him, {danger}with both claws up.{/} He has been left behind, he knows whose fault it is, and he has decided that it is yours.",
          actions = {
            { "Carry him to deeper water", say "You get him by the back, as the small girl on the wall held her crab. He swears at you the whole way, in clicks. You set him down in a pool as deep as your arm. He goes in backwards, claws still up, and you would say he did not thank you, but something about the way he folds them says the matter is closed." },
          } },
        { name = "a pool of small fish", description = "A dozen, silver, going round and round a basin the size of a hat. They have six hours of this. Then the door opens and they will all pretend nothing happened." },
        { name = "a cart wheel", description = "Iron tyre, oak spokes, half sunk in the sand at the island's edge. There was a cart here once, then, and somewhere to drive it. There was more of all this." },
      } },
    { name = "the old kirk",
      description = "At the low west end: a rectangle of dressed stones, one course high, with a gap for the door. This was the first kirk of the Afterthoughts, on what was then the middle of the island. In the floor of it, where the ground has fallen in, there is a deep pool, roofed over with weed, with steps going down into it.",
      things = {
        { name = "the door sill", description = "A single slab, hollowed like a dish by feet. It is the same stone as the wave stone in the kirk on Muckle, the same green. They did not have far to look for a pattern." },
        { name = "the pool in the floor", description = "Black, and still, and deeper than it has a right to be. The steps go down into it and out of sight. Nothing moves on the surface. It has the stillness of a room where somebody has just stopped speaking." },
      },
      actions = {
        { "Listen at the pool", set "is_heard_bell",
          say "You kneel on the sill and put your ear near the water. The wind. A crab. Your own breath. And then, from under you, so low that the pool shivers before you hear anything: one note. Bronze. It is struck once, and it goes on for a long while, getting smaller, and you find you have turned your head toward the sea, as if someone there had called you by name. The weed over the pool has shifted. There is a way down the steps, if you do not mind your knees wet." },
      } },
    { name = "the cockle beds",
      description = "All round the island, where the sand is firm: a million cockles, a hand's depth down, each with its two small holes. When you walk, they squirt. You go about Sometimes attended by tiny fountains, like a visiting king." },
    { name = "the edge of the sea",
      description = "A long way off, to the west: a low grey wall of water, quite still, with a line of white along the foot of it. It ought to be coming in. It is not. It stands at the edge of the sand like a crowd behind a rope, and you feel that it can see the tide pole from there, and is watching it.",
      actions = {
        { "Walk toward it", say "You go a hundred yards. It does not come to meet you and it does not go back. It waits. At two hundred yards you can hear it, a sort of low attentive hush, like a hall before a speech. You discover that you would rather be nearer the bench." },
      } },
    { name = "the view of Muckle",
      description = "From out here the big island is a low dark line with one bump on it, the kirk, and a thread of smoke. Along the back strand there are figures. The whole island has come down to look at Sometimes. They do, each time, the way you would go and look in on someone who had been ill." },
    { name = "a child's shoe",
      description = "Leather, hard as wood, with a strap, lying on the hearth stone as if it had been put to dry. It is a hundred years old at the least. Somebody takes it off the stone each time the island shows, and turns it over, and puts it back the other side up. It is not Tam. He says it is not." },
  },

  exits = {
    { to = "is_landing", label = "Back to Muckle", description = "Over the wet sand to the back strand, among the small fountains, while there is sand." },
    { to = "is_drowned_bell", label = "Down the kirk steps",
      description = "Into the pool in the floor of the old kirk, where the steps go down and something bronze is waiting at the bottom.",
      requires = flag "is_heard_bell", hidden = true },
  },
}

space {
  id = "is_drowned_bell",
  region = "afterthoughts",
  secret = true,
  name = "The Drowned Kirk",
  description = "Nine steps down, and you are standing to the knee in clear cold water in what was the nave. The floor fell in long ago and took the kirk down with it into a cave. The weed has roofed it over. Green light comes through, moving. The pews are still in their rows, black as coal. And at the east end, where it came down out of the tower three hundred years ago, the bell lies on its side in the sand with its mouth toward you.",
  palette = { bg = "#040e10", text = "#b8d0d0", dim = "#446a6c", accent = "#58c8b0", border = "#16403e" },
  ambience = {
    shimmer { color = "#18584c", strength = 0.6 },
    drip { glyphs = "⠁⠂⠄⡀", color = "#2a7c70", rate = 0.3 },
    dust { glyphs = "·˙°", color = "#3a7068", rate = 0.2, speed = 0.2 },
  },

  things = {
    { name = "the bell",
      wonder = true,
      icon = "∩",
      description = "As high as your chest, lying on its side, green as a leaf and furred with small weed. A fish is living in it. It has no tongue: you can see into the dark of it, and the hook where a clapper would hang is bare. {magic}It rings all the same.{/} Each swell that comes in under the island lifts the bell a finger's width off the sand and sets it down, and it sounds, one soft note, into the water and the rock. Nobody on Muckle has heard it in the air. Every one of them who has been in trouble at sea says the same: that there was a bell, close, under the keel, and that it was on the side that home was.",
      things = {
        { name = "the lip", description = "Cast round the rim in letters you can read with your fingers through the weed. Most bells say what they are for: {i}I call the living, I mourn the dead.{/} This one says only {i}RING SOFTLY{/}, twice, once each side, so that it can be read whichever way it hangs." },
        { name = "the crown", description = "The loops it hung by, each as thick as your wrist. One is snapped clean. It did not come down gently. It came down in one night with the tower on top of it, and was ringing the whole way." },
        { name = "the fish in the bell", description = "A wrasse, green and orange, a foot long, hanging in the mouth of the bell like a clapper that has thought better of it. When the note sounds it does not move. It has heard nothing else all its life. It may believe that it is doing it." },
      },
      actions = {
        { "Put your hand on it", say "Cold, and rough, and then the swell comes and the bronze lifts under your palm and sounds. You feel it rather than hear it: up your arm, across your chest, and out the other hand. For as long as the note lasts you know exactly which way Greenhollow is. You could point. You do point. Then it fades, and you are a person in a flooded cellar with one arm out, and you put it down." },
        { "Put your ear to it", say "The sea, as in a shell, but slower and from farther. And under the sea, when the note has gone, a silence that has a shape to it, like the quiet in a house at night when you stop on the stair to listen whether you have woken anyone. You take your ear away. You go on tiptoe after that, in three feet of water, without being able to say why." },
      } },
    { name = "something in the sand",
      key = "is_tongue_lying",
      visible_if = no(item "is_bell_tongue"),
      description = "A yard in front of the bell's mouth, half buried: a bar of bronze as long as your forearm, with a ball at one end and a loop at the other. It is the tongue. It fell out when the bell came down, and has lain here since, looking up into the mouth it belongs in. There are words down the shaft. The bell has rung three hundred years without it.",
      actions = {
        { "Take the tongue", give "is_bell_tongue", fx "wash",
          say "You work your fingers under it and lift. It comes out of the sand with a suck, heavy as a child. You stand holding it, dripping, and look at the bell, and wait to feel like a thief. The swell comes. The bell lifts, and sets down, and sounds, exactly as before. It has not needed this for three hundred years. The sea is its tongue now. What you have is the one it was born with: the Tongue of the Drowned Bell." },
      } },
    { name = "a hollow in the sand",
      visible_if = item "is_bell_tongue",
      description = "The shape of a bar with a ball at the end, filling slowly with fine sand from the edges. The wrasse has come out to look at it, and gone back in." },
    { name = "the pews",
      description = "Six rows, of ship's timber gone black and hard as iron under the water. They did not float off. They were pegged to the floor and they went down with it, in order. Limpets sit along them, well spaced, facing the front.",
      things = {
        { name = "a pew with a name", description = "Cut in the end, deep: {i}GOOD INTENT{/}. So the pew in the kirk on Muckle is the second of that name. They built it again from the next wreck and gave it the same family, and the same splinter, by the look." },
        { name = "a hassock", description = "A cushion of plaited rush, sunk, on the floor of the second row. It has become a sponge. It has, strictly, become two sponges and a small crab." },
      } },
    { name = "the font",
      description = "A boulder with a hollow in the top, standing by the steps. It is full, of course. Everything is. There is a limpet in the very middle of the bowl, and round the limpet a ring worn in the stone where it has grazed and come home, grazed and come home, for longer than this has been a font." },
    { name = "the east wall",
      description = "It still stands, to twice your height, with the shape of a window in it. No glass. Through the window you look into solid rock, a foot away, wet and glittering. The kirk fell straight down, and brought its view with it for as far as it could.",
      things = {
        { name = "a niche", description = "Beside the window, where a lamp stood. There is a lamp in it: a pottery saucer with a spout, the kind the inn still uses. It is full of sea. A tiny blue-green light is burning in it. You look closer. It is a kind of weed that glows. It has grown exactly where the wick was." },
      } },
    { name = "the first minister",
      description = "A slab in the floor before the bell, with a figure cut on it: a man lying with his hands together and his feet on a seal. The face is worn off. The name is: {i}BRICE, who came to teach and stayed to learn.{/} Below that, later and rougher: {i}he would not leave the bell{/}.",
      actions = {
        { "Stand a moment", say "You stand. The water moves against your knees. The bell sounds. You think of Mr Gilfillan up on the hill with his cake and his thirty years, and it comes to you that the Afterthoughts have done this to ministers before." },
      } },
    { name = "the vestry cupboard",
      description = "A recess in the north wall with half a door hanging on it. Something long and grey is folded up inside.",
      things = {
        { name = "the conger", icon = "~", description = "{danger}An eel as thick as your thigh{/}, with a blunt head and small, cold, pale eyes, coiled in the cupboard where the surplices hung. Its mouth is a little open. It is seven feet long and could have your arm. It regards you without any feeling at all, for as long as you care to stand there. Then it yawns, hugely, showing you everything, and shuts its eyes. It has taken the cloth, as it were. It is past all that.",
          actions = {
            { "Close the cupboard door", say "You push the half door to, with one finger, very gently. It swings open again. The conger has not moved. \"Sorry,\" you say. You back away up the nave, as you would from an altar." },
          } },
      } },
    { name = "the roof of weed",
      description = "Overhead, where there were rafters: a ceiling of kelp, rooted on the rim of the hole, lying across. The daylight comes through it brown and gold and green, in bars, and the bars move. It is the only stained glass the islands have ever had." },
    { name = "the steps",
      description = "Nine, of the green stone, going up into the light. They are worn in the middle. People came down these to be married and buried for four hundred years, and the stone remembers which side they kept to.",
      things = {
        { name = "the water on the third step", description = "It is a little higher than when you came down. Not much. A thumb's width. Out past the cockle beds something has shifted its weight from one foot to the other." },
      } },
    { name = "a row of small things on the sill",
      description = "Along the ledge under the east window, set out with care: a clay pipe, a thimble, a child's whistle made from a bone, a horn spoon, a comb with three teeth. They are what was in people's pockets on the last Sunday. They are not in the sea's own customs house. The seals have left this place alone.",
      actions = {
        { "Leave them be", say "You do. It is the easiest thing you have been asked all day." },
      } },
    { name = "the sand",
      description = "White, fine, rippled, covering the flagstones a hand deep. Your footprints go from the steps to where you stand. There are others. They are bare, and narrow, and they go from the bell toward the north wall, and into it." },
  },

  exits = {
    { to = "is_sometimes", label = "Up the kirk steps", description = "Nine steps up through the weed into wind and daylight, with your boots full." },
  },
}
