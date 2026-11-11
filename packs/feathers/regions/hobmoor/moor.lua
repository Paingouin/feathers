space {
  id = "moor_road",
  region = "hobmoor",
  name = "The Drovers' Way",
  description = "A green track over the moor, wide enough for a flock. Heather to the sky on both sides, a wind that leans on you, and a line of old stones that the track follows as if it had been told to.",

  things = {
    { name = "the standing stones",
      description = "Tall grey stones, one every furlong, older than the track. They all lean, and they all lean the same way: towards the mountains. The drovers say the wind did it. The wind here blows from the mountains.",
      things = {
        { name = "the nearest stone",
          description = "Twice your height, lichen on one face. On the other, at the height of a hand, a hollow worn by every drover who ever passed touching it for luck.",
          things = {
            { name = "the hollow in the stone", description = "Smooth as the inside of a spoon, and a little greasy with wool fat. Thousands of years of hands. It is slightly warm, or it is only out of the wind." },
            { name = "the lichen", description = "Grey, orange, and a green you have no word for, in rings. The oldest ring is as wide as a cartwheel. Lichen grows a hair's breadth a year. You do the sum, and then you leave the sum alone." },
          },
          actions = {
            { "Touch it for luck", say "You put your hand where the others went. You are not sure what you were expecting. A ewe, watching, goes back to the grass, satisfied that you have done it properly." },
          } },
        { name = "the lean",
          description = "You stand behind one and sight along the row. Every stone is tilted by the same amount, to the inch, as far as you can see. It does not look like falling. It looks like listening.",
          actions = {
            { "Lean the same way", say "You tip yourself to their angle and hold it. It is not comfortable. For a moment, though, the moor looks level and it is everything else that is askew. Then you fall over." },
          } },
        { name = "a stone lying down", description = "One of the row has gone over altogether, long ago, and lies in the heather pointing the way it leaned. The drovers call it the Lazy Man and sit on it to eat." },
      } },

    { name = "a shepherd",
      key = "nan tegg",
      icon = "☺",
      description = "Old Nan Tegg, on a rock, with a crook and a dog. She has two hundred sheep on this moor and knows each by its face, its mother and its failings.",
      things = {
        { name = "her crook", description = "Hazel, with a ram's horn handle carved into a ram's head. The carved ram looks cross. It was done from life." },
        { name = "her coat", description = "Three coats, one over another, the outermost tied with twine. She has not been cold since the hard winter, which was before you were born, and she intends to keep it that way." },
        { name = "her dinner", description = "Bread, an onion, and a lump of cheese that she makes herself from the ewes. It is wrapped in a dock leaf. She eats it with a knife, facing the flock, and counts between bites." },
        { name = "her knitting", description = "A stocking, on four needles, in wool from her own sheep. She knits without looking. She says she can tell which ewe each yard came off by the feel, and that the heel is always Biddy because Biddy is tough." },
      },
      actions = {
        { "Ask about the star", say "\"Came over low. Lit the whole moor up green. The sheep all lay down facing it.\" She spits. \"Landed on Jem Holloway's turnips. He's charging a penny to look. I've known him fifty year and it's the first luck he's had and he's unbearable.\"" },
        { "Ask about the bones", say "\"The Ribs? Always been there. My gran's gran hung washing on them. Scholars come up now and then to argue what it was.\" She looks at the dog. \"Big, is what it was.\"" },
        { "Ask about the stones", say "\"They lean.\" You say you had noticed. \"Then you know as much as anyone.\" She knits a row. \"My dad said they were stood up straight and something drew them. Like corn after a cart's gone by. I said what cart. He said that's enough out of you.\"" },
        { "Ask how many sheep", say "\"Two hundred and four.\" She has not looked up. \"Two hundred and three. Dog.\" The dog is already gone." },
      } },

    { name = "the dog",
      icon = "d",
      description = "A grey collie, lying flat, watching the flock with one eye and you with the other. It has you counted in.",
      things = {
        { name = "its eye", description = "One brown, one pale blue. The brown one is for sheep. You are getting the blue." },
      },
      actions = {
        { "Call it", say "It does not come. It moves six inches to the left, without getting up, and you find that you have moved six inches to the right, and are now standing nearer the other sheep." },
        { "Stroke it", say "It allows this as a sentry allows a child to look at his buttons. Its eyes never leave the flock. Its tail moves once." },
      } },

    { name = "the sheep",
      description = "Black-faced, thick-fleeced, and scattered over a mile of moor with every appearance of having planned it.",
      things = {
        { name = "a ram",
          description = "He is standing on the only high rock, in profile. He has been there all morning. He knows what he looks like.",
          things = {
            { name = "his horns", description = "A full curl and a half, ridged, the colour of old candles. There is a tuft of somebody's coat on the left one." },
          },
          actions = {
            { "Stare him down", say "You hold it for nearly a minute. He does not blink. He has slotted eyes and nothing else on today." },
          } },
        { name = "Biddy", description = "A ewe with a torn ear and the build of a footstool. She is eating a thistle, from the top, on purpose." },
        { name = "a lamb", description = "Late born, all legs. It runs at you, stops, forgets why it came, and springs straight up in the air on four stiff legs, for no reason it could give." },
        { name = "a tuft of wool on the heather", description = "Grey, greasy, snagged on a twig. You roll it between your fingers. Your hand smells of sheep for the rest of the day and is the softer for it." },
      } },

    { name = "the heather",
      description = "Purple to the horizon and humming with bees.",
      things = {
        { name = "a moor bee", icon = "ʚ",
          description = "Large, furred, slow, and going about it with a full pack on each leg. It walks over your hand rather than fly round.",
          actions = {
            { "Follow it", say "It goes from bell to bell down the bank for a hundred paces and then straight into a hole in the peat. You have found where the honey is. You look at the hole. The hole hums. You decide that it is enough to know." },
          } },
        { name = "a lark's nest",
          description = "A cup in the heather with four eggs, brown-speckled. The lark is a dot overhead, singing as hard as it can to convince you that she lives up there.",
          things = {
            { name = "the lark", icon = "v", description = "So high that you find her by the sound. She has been singing without a breath since you stopped walking. You step back from the nest. The song drops a hundred feet and eases." },
          } },
        { name = "a sprig of white heather", description = "One, among the purple. Lucky, they say. It has lasted this long on a moor with two hundred sheep, so it may be." },
        { name = "bilberries", description = "Low bushes under the heather, with fruit the colour of a bruise.",
          actions = {
            { "Eat some", say "Sharp, then sweet. Your fingers go purple. So, you learn later from a puddle, do your teeth." },
          } },
      } },

    { name = "a scorched line",
      key = "scorch",
      description = "Across the track and away north-east the heather is singed in a stripe ten paces wide, perfectly straight. The star came in low.",
      things = {
        { name = "the singed heather", description = "Black on top, still purple underneath. It was over too fast to burn down to the root. Already there is green coming at the edges." },
        { name = "a melted stone", description = "A lump of moor grit beside the track with one face run smooth and shiny, like a candle left near a fire. It was not in the way. It was merely near." },
        { name = "the direction", description = "You stand in the stripe and look back along it, the way the star came. It points up over the shoulder of the moor at an empty piece of sky. You look the other way. A thread of smoke." },
      } },

    { name = "the wind",
      description = "It comes off the mountains and has the whole moor to get up speed in. It is not cold so much as thorough.",
      actions = {
        { "Shout into it", say "Your shout is taken off you and carried away south at a great pace. Somebody in Greenhollow will get it, in pieces." },
      } },

    { name = "a peat cutting",
      description = "A trench in the moor, black and square, with the cut turves stacked beside it to dry.",
      things = {
        { name = "the peat face", description = "Layer on layer, each a hand thick and a few hundred years deep. Near the bottom of the cut, a branch, black as the peat, from a tree. There are no trees on Hobmoor. There were." },
        { name = "a turf spade", description = "Long, narrow, with a wing on one side. It has been left standing in the cut. Its owner has gone to look at the star, like everybody else, and will be sorry in the winter." },
      } },

    { name = "a boundary cross",
      description = "A stump of carved stone beside the track, much younger than the standing stones and much more worn. It marks the edge of the parish. It has an arm missing.",
      things = {
        { name = "the missing arm", description = "In the wall of a sheepfold, a mile on. The drovers will show you. They are not proud of it, but it was a good flat stone." },
      } },

    { name = "a curlew", icon = "v",
      description = "Brown, long-legged, with a bill curved like a sickle, walking the wet ground by the cutting. Now and then it calls: two notes going up, the loneliest sound on the moor. It does not seem lonely. It is only what its voice does.",
    },

    { name = "a mountain hare", icon = "ʌ",
      description = "Sitting bolt upright in the heather thirty paces off, ears like two fingers held up. It is brown now and will be white by the first snow. It is watching the dog. The dog knows, and is not being paid for hares." },

    { name = "the sky",
      description = "There is more of it here than anywhere you have been. It starts at your boots. Clouds cross it in a long file from the mountains, and their shadows come over the heather towards you, one at a time, at a walk." },

    { name = "a drovers' cairn",
      description = "A heap of stones where the track tops the rise, added to by everyone who drives a flock over. There are a few thousand years of flocks in it.",
      things = {
        { name = "the top stone", description = "A white pebble, placed this morning. Under it a penny, green. Under that, the drovers say, another penny, and so on down, each from a different reign." },
      },
      actions = {
        { "Add a stone", say "You find one and set it on top. It stays. You have driven no flock, but you did get yourself up here, and you were no easier to herd." },
      } },

    { name = "a fingerpost at the fork",
      description = "Where a paved road leaves the drovers' track and goes east through a notch in the hills. Three arms. Two of them say where they go. The third has been painted out, painted in, and painted out again, and at present says {i}NO{/}.",
      things = {
        { name = "the third arm", description = "Under the paint you can make out older letters: {i}THE GLOWERS{/}, and a small skull. Somebody has given the skull a hat. It points east, at a row of hills with their brows down." },
        { name = "a strand of garlic", description = "Tied round the post at head height, dry and papery. Nan Tegg says the carter from over there hangs one every trip. \"He says it's to keep it in. I never liked to ask what.\"" },
        { name = "the paved road", description = "Cobbled, cambered and swept, which no other road on Hobmoor is. It begins exactly at the parish boundary, as if whoever mends it has been told how far he may come." },
      },
      actions = {
        { "Ask the shepherd about it", say "\"The Glowers. There's a village, and a castle, and a Count in the castle that drinks blood.\" She counts a row of stitches. \"So they say. He bought forty fleeces off me through a carter in the hard winter, when nobody else was buying, and paid over the odds. I've known worse that drank water.\"" },
      } },

    { name = "a dew pond",
      description = "A round pool on the very top of the moor, clay-lined, with no stream in or out. It has never gone dry. The drovers made it, or their grandfathers' grandfathers did, and nobody remembers how.",
      things = {
        { name = "the water", description = "Brown as tea and perfectly still. It holds the whole sky and one upside-down sheep, drinking." },
        { name = "hoof prints in the clay", description = "Thousands, sheep on sheep, baked hard round the rim. Among them, pressed deep, one print as long as your forearm with three toes. Nan says it was there when she was a girl and that it is best not looked at on an empty stomach." },
        { name = "a water beetle", description = "Black, glossy, rowing itself across the sky with two oars. It has the pond to itself and behaves like it." },
      },
      actions = {
        { "Drink from it", say "Peat, wool and cold. You have had worse at inns. The sheep beside you lifts its head, water running off its chin, and gives you the look of a regular at a stranger in the snug." },
      } },

    { name = "a sheepfold",
      description = "A ring of dry stone, shoulder high, with a hurdle for a gate. One of its stones is better dressed than the rest and has half a carved arm on it.",
      things = {
        { name = "the carved stone", description = "The arm of the boundary cross, built in sideways. The carving is a hand, raised. The lambs rub against it. It is the most blessed sheepfold in the kingdom, and it shows in the lambing figures." },
        { name = "a lambing lantern", description = "Tin, hung on a peg inside, with a stub of tallow. In April it burns all night and the whole fold breathes." },
        { name = "a crook left against the wall", description = "Not Nan's. Shorter, older, grey with weather. It was her mother's. She leaves it where her mother leant it and walks round." },
      } },
  },

  exits = {
    { to = "barley_road", description = "South and down, to where the ground is ploughed and the wind has less to say." },
    { to = "the_dint", description = "North-east along the scorch, towards the smoke." },
    { to = "the_ribs", description = "North, where something white stands up out of the moor in a row." },
    { to = "gl_low_road", description = "East by the paved road, through a notch in a row of hills that are all looking at you. The fingerpost advises against it." },
  },
}
