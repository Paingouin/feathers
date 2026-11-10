space {
  id = "hermit_clearing",
  region = "mumblewood",
  name = "The Hermit's Clearing",
  description = "A clearing, a hut made of whatever fell nearest, and a sign reading {b}GO AWAY{/} with a bench beside it for people who need to sit down while reading it.",
  ambience = {
    steam { glyphs = "˙·∙", color = "#6f7f6a", rate = 0.3 },
    fireflies { glyphs = "✧·", color = "#bfe88a", rate = 0.25 },
  },

  things = {
    { name = "the hermit",
      icon = "☺",
      description = "He came to the woods forty years ago to be alone, and has been telling visitors about it ever since.",
      variants = {
        { when = flag "hermit_fed",
          description = "He is eating soup that glows faintly, and is, for once, too busy to tell you about the quiet." },
      },
      things = {
        { name = "his beard", description = "It has moss on the north side." },
        { name = "his vow of silence", description = "Framed, on the hut wall. Broken in nine places and mended with string." },
      },
      actions = {
        { "Talk", when = flag "hermit_fed", say "\"Mm,\" he says, round the spoon. It is the shortest thing he has said in forty years, and he looks surprised by it." },
        { "Talk", say "\"I came here for the quiet,\" he says, and goes on to describe the quiet for some time." },
        { "Offer the moon-cap", when = item "moon_cap", take "moon_cap", give "oar", set "hermit_fed",
          say "His eyes go wide. \"For the soup!\" It is in the pot before you can say it was only a thought. Then he pulls the {gold}oar{/} out from under the washing line, which falls down. \"Take it. Boat's long gone. Well. Long gone from {i}me{/}.\"" },
        { "Ask for the oar", when = no(flag "hermit_fed"),
          say "\"That's holding up my smalls. You'd have to bring me something better than smalls.\" He looks, wistfully, at the soup." },
        { "Ask about the lake", say "\"Lake Perhaps? Looks back at you wrong. Fellow down there's fished it thirty years and never caught a thing. Says that's the point.\"" },
      } },
    { name = "the washing line",
      key = "washing line",
      description = "Strung from the hut to an oar stuck upright in the ground. On it: one robe, one other robe, and smalls of great antiquity.",
      variants = {
        { when = flag "hermit_fed",
          name = "the fallen washing line",
          description = "On the ground, robes and all. The hermit has stepped over it twice. This is where it lives now." },
      },
      things = {
        { name = "the oar", visible_if = no(flag "hermit_fed"),
          description = "Pale ash wood, worn smooth at the grip. Wasted on laundry, and knows it." },
      } },
    { name = "the soup pot",
      description = "It has been simmering since before the hut. Things go in. Opinions differ on whether soup comes out.",
      variants = {
        { when = flag "hermit_fed",
          description = "Faintly {magic}blue{/} now, and humming. It is the best it has been in decades, which the hermit puts down to patience." },
      },
      actions = {
        { "Taste it", say "Nettles, mostly, and something that tastes of a Tuesday." },
      } },
    { name = "the sign",
      description = "{b}GO AWAY{/}, painted with great care. On the back: {whisper}unless you've brought something{/}." },
    { name = "the bench",
      description = "For sitting on while being told to leave. Worn smooth.",
      actions = {
        { "Sit", say "You sit. The hermit is at your elbow at once, delighted, asking which part of the sign you didn't understand." },
      } },
    { name = "the hut",
      key = "hut outside",
      description = "Built of whatever fell nearest: branches, bark, half a cart, and a door that was once a table. Smoke comes out of the roof in general rather than out of a chimney in particular.",
      variants = {
        { when = flag "hermit_fed",
          description = "Built of whatever fell nearest: branches, bark, half a cart, and a door that was once a table. The door stands open. The hermit is at his soup and has, for once, his back to it." },
      },
      things = {
        { name = "the door that was a table", description = "It still has its legs. They stick out into the clearing, and he hangs his hat on one." },
        { name = "the roof", description = "Turf, with a fair crop of dandelions and one small rowan tree that has decided to make a go of it." },
      } },
    { name = "the vegetable patch",
      description = "Six rows, fenced with string against rabbits who can evidently not read string.",
      things = {
        { name = "a cabbage", description = "One, enormous, in the middle of the patch. Forty years of solitude have gone into this cabbage. He talks to it. It is the only thing here that has heard the whole of the quiet speech." },
        { name = "a row of leeks", description = "Planted in a line as straight as a sermon, and nibbled down at the far end to a row of stumps." },
        { name = "a scarecrow in a robe",
          description = "A cross of sticks in the hermit's third-best robe, with a turnip for a head and moss for a beard. Visitors who arrive while he is out have been known to sit and listen to it for an hour.",
          actions = {
            { "Tell it your troubles", say "You tell it. It listens without once interrupting to describe the quiet. You see why people prefer it." },
          } },
        { name = "a rabbit", description = "Sitting in the leeks, inside the string, chewing. It looks at you without guilt. The string is, after all, only a suggestion." },
      } },
    { name = "the woodpile",
      description = "Stacked against the hut, enough for three winters, and every log fallen wood. He has never cut a living branch. He says the trees would mention it.",
      things = {
        { name = "a wren", description = "It goes in and out of a gap in the stack, tail up, with something in its beak each time. There is a nest in there. The hermit has been burning the other end of the pile for two years to leave it alone." },
        { name = "a hatchet", description = "Stuck in the chopping block, rusted in. It was last pulled out to cut a cheese." },
      } },
    { name = "the beehive",
      description = "A straw skep on a stump, well away from the bench. The bees in the Mumblewood do not buzz, exactly. They {whisper}mutter{/}.",
      things = {
        { name = "the landing board", description = "Bees coming in heavy and going out light. Two of them have met at the door and are having what looks very like a disagreement about directions." },
        { name = "a comb of honey",
          description = "Set on a slate beside the hive, dark as tea, the hermit's rent from the bees. It tastes of bramble, ivy and bluebell, and a little of being talked about.",
          actions = {
            { "Taste the honey", say "A fingertip's worth. It is the best thing you have eaten since you left home, and for a breath afterwards you can nearly understand what the trees are saying. It was about your boots." },
          } },
      } },
    { name = "a goat",
      icon = "g",
      description = "White, bearded, tethered by a rope it has long since eaten through and continues to honour. It resembles the hermit about the chin, and each believes the other copied it.",
      actions = {
        { "Offer it a handful of grass", say "It takes the grass, and then, thoughtfully, the cuff." },
      } },
    { name = "the rain barrel",
      description = "Under the corner of the roof, full, with a wooden dipper hung on the rim.",
      things = {
        { name = "a frog in the barrel", description = "Sitting on a floating chip of bark, sailing in small circles. It came for the quiet too, and unlike the hermit has kept it." },
        { name = "your face in the water", description = "It is only your face. After the stories about the lake, you check twice." },
      } },
    { name = "the visitors' book",
      description = "A bundle of birch bark tied to the bench with a bootlace, with a stub of charcoal. Forty years of people who came to see the man who wanted to be alone.",
      things = {
        { name = "the first page", description = "{i}Came for directions. Was given a history of silence. Still lost.{/}" },
        { name = "a recent page", description = "{i}Nice man. Do not mention the soup unless you have a free afternoon.{/} And under it, in a different hand: {i}Lent him my sword. See how that goes.{/}" },
        { name = "the last page", description = "Blank, and soft at the corner from being turned to." },
      },
      actions = {
        { "Sign it", say "You write your name, and under {i}remarks{/} you put {i}adventurer{/}. You look at it. You add {i}(so far){/}." },
      } },
    { name = "a hen",
      description = "Brown, speckled, and walking about the clearing with the air of the only one here who gets anything done. There is an egg under the bench. There is an egg in the hermit's other hat.",
      things = {
        { name = "the egg under the bench", description = "Warm, brown, and guarded, from a distance, by one sideways eye." },
      } },
  },

  exits = {
    { to = "forest_path" },
    { to = "hermit_hut", label = "The door that was a table",
      description = "Into the hut, while its owner is busy with a spoon.",
      requires = flag "hermit_fed",
      locked = "the hermit is standing in the doorway, telling you how he likes to be alone" },
  },
}

space {
  id = "hermit_hut",
  region = "mumblewood",
  name = "Inside the Hermit's Hut",
  description = "One room, low, dim and warm, smelling of smoke, nettles and old wool. Everything a man needs to live alone for forty years is in here, and so is everything that forty years of visitors left behind.",
  palette = { bg = "#110f0a", text = "#d0c8b0", dim = "#746a54", accent = "#d8a858", border = "#463a26" },
  ambience = {
    flicker { color = "#e0a050", strength = 0.18 },
    dust { glyphs = "·˙", color = "#6a5a3c", rate = 0.3, speed = 0.2 },
  },

  things = {
    { name = "the bed",
      description = "A box of bracken with a sheepskin over it, and a dent down the middle the exact shape of one thin man.",
      things = {
        { name = "the pillow", description = "A sack of dried hops. He says it helps him sleep. He says it at length, to anyone, at any hour, which is how he knows it helps." },
        { name = "under the bed",
          description = "A trunk, bound in brass, with a town crest on the lid.",
          things = {
            { name = "the trunk",
              description = "Inside, folded with care: a red coat with gold braid, a three-cornered hat, and a hand bell with a leather tongue-guard strapped over the clapper. Before he was a hermit he was the town crier of Aldmoor. He shouted the news for twenty years. Then one morning he walked out of the gate to find some quiet, and has been explaining it ever since.",
              things = {
                { name = "the hand bell", description = "Brass, heavy, and gagged. The strap is buckled on the last hole. He does not trust it." },
                { name = "a last proclamation", description = "A scroll, never read out: {i}Oyez. The crier has had enough. That is all.{/}" },
              },
              actions = {
                { "Try on the hat", say "It is too big and smells of camphor. For a moment you feel a strong urge to announce something. You take it off quickly. You can see how it got hold of him." },
              } },
          } },
      } },
    { name = "the hearth",
      description = "A ring of stones in the middle of the floor, with a fire that is mostly ember, and above it a hole in the roof that the smoke finds about one time in three.",
      things = {
        { name = "the soup pot's hook", description = "An iron hook on a chain, empty. The pot lives outside now. It outgrew the hut some years ago." },
        { name = "a toasting fork", description = "Bent from a sword. Not his. He says the owner will be back for it, and that it makes very even toast." },
        { name = "the ashes", description = "Raked into a neat grey heap, with a baked potato in it that he has forgotten twice a day since Tuesday." },
      },
      actions = {
        { "Warm your hands", say "You hold them out. The warmth goes into your fingers and up your arms, and you understand how a man might sit down here one evening and get up forty years later." },
      } },
    { name = "the shelf of jars",
      description = "A plank along the wall with thirty jars on it, each sealed with wax and labelled in charcoal. Most hold what you would expect: dried mushrooms, hips, a great deal of nettle.",
      things = {
        { name = "a jar of dried moon-caps", description = "Blue once, grey now, like a jar of small dusks. The label says {i}SOUP (BEST){/}. It is nearly empty, which explains the look he gave yours." },
        { name = "a jar of buttons", description = "Every visitor loses one. He has enough here to dress a regiment and no intention of sewing." },
        { name = "a jar of quiet",
          wonder = true,
          description = "A plain glass jar, stoppered, with nothing in it. The label says {i}the first evening{/}. He caught it the night he arrived: the hush of a wood with nobody in it yet to talk. {magic}Hold it to your ear and you can hear that there is nothing to hear.{/} It is the only quiet he has left, and he has never opened it.",
          actions = {
            { "Loosen the stopper a little", fx "wash",
              say "The fire stops crackling. The trees outside stop mumbling. Out in the clearing, in the middle of a word, the hermit stops. For three breaths the Mumblewood is as still as it was before anyone came, and it is very large, and very old, and not unfriendly. You push the stopper home. Outside, a spoon resumes." },
          } },
      } },
    { name = "the kitchen corner",
      description = "A flat stone, a knife, a bowl and a spoon. One of each. He has never had to wonder whose turn it is to wash up.",
      things = {
        { name = "the spoon", description = "Carved from a single piece of cherry, by him, in the first winter. The bowl of it is worn half through. He has a great deal of soup to answer for." },
        { name = "a string of onions", description = "Marta's, from Greenhollow, by the plait. Somebody brings them up. He complains about the interruption and counts the days." },
        { name = "a crock of pickled walnuts", description = "Black, sharp and forgotten at the back. They have been there so long they have begun to pickle the crock." },
      } },
    { name = "a mouse family",
      icon = "m",
      description = "They live in the wall, behind the woodpile's warm side, and come out at dusk to sit on the hearthstones. He has named all nine. They are the only company he admits to, since they do not ask questions.",
      things = {
        { name = "the smallest mouse", description = "It sits on the toe of your boot, washing its ears, on the reasonable assumption that anything this still must be furniture." },
      },
      actions = {
        { "Keep very still", say "A second mouse joins the first on your boot. You are now, for the purposes of the household, a hill." },
      } },
    { name = "his diary",
      description = "A stack of bark sheets under a stone. He writes one line a day, every day.",
      things = {
        { name = "an early entry", description = "{i}Day 3. Alone at last. Nobody to tell.{/}" },
        { name = "a middle entry", description = "{i}Day 4,015. A pedlar came. Told him about the quiet. He left at dusk. I do not think he understood. Will try again with the next one.{/}" },
        { name = "the newest entry", description = "{i}One in boots. Brought a mushroom. Good listener. Did not get to the end of the quiet. Nobody has. I am not sure there is one.{/}" },
      } },
    { name = "an owl on the rafter",
      icon = "o",
      description = "A tawny owl, round and brown, exactly where a stuffed owl would be put. You take it for stuffed. Its head turns, a good deal further than you were ready for, and it looks at you with eyes the size of your coat buttons.",
      actions = {
        { "Look away first", say "You look away first. It was never going to go any other way, and you both knew it." },
      } },
    { name = "the window",
      description = "A square hole with a sheet of oiled bark over it. Through a split you can see the clearing, the sign, the bench, and a thin man hunched over a glowing pot, not talking.",
      things = {
        { name = "the windowsill", description = "A row of things he has found and could not throw away: a blue eggshell, a pine cone with every scale perfect, a flint the shape of a foot, and a boot buckle." },
      } },
    { name = "a pile of left-behind things",
      description = "By the door, where forty years of visitors put something down while they were being talked to, and then left in a hurry.",
      things = {
        { name = "a sword", description = "A good one, by the look of it, leaning in the corner with a crust of bread on the point. There is butter on the blade." },
        { name = "eleven walking sticks", description = "And one crutch. That visitor, he says, left faster than any of them." },
        { name = "a pedlar's pack", description = "Ribbons, pins and a mousetrap. The mice have taken the cheese and filed the trap under {i}curiosities{/}." },
      } },
  },

  exits = {
    { to = "hermit_clearing", description = "Out, past the table legs, into the clearing and whatever he says next." },
  },
}
