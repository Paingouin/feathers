space {
  id = "silver_glade",
  region = "everwood",
  name = "The Glade of the Long Afternoon",
  description = "A lawn among silver birches, in a slant of gold light that does not move. It is four o'clock here, on a fine day in early autumn. It has been four o'clock since the elves found the hour and decided to keep it.",
  palette = { bg = "#11100a", text = "#d8d2bc", dim = "#787058", accent = "#e8c878", border = "#4a4428" },
  ambience = {
    dust { glyphs = "·˙∙", color = "#8a7a48", rate = 0.4, speed = 0.15 },
    fireflies { glyphs = "✧·", color = "#f0dc98", rate = 0.2 },
  },

  things = {
    { name = "the light",
      key = "light",
      wonder = true,
      icon = "☼",
      description = "{glow}Low, gold, and from the west.{/} Outside the glade the sun gets on with its day. In here it has been held at the best part. The shadows are long and all fall the right way, and the elves have had four thousand years of late afternoon and are, you sense, beginning to wonder about evening.",
      things = {
        { name = "your shadow", description = "Thirty feet long and far more elegant than you are. It lies across the lawn among the others, and for once you are the same height as an elf." },
        { name = "a mote of dust", description = "Hanging in the beam, lit gold. It has been drifting towards the grass since the hour was stopped. It is nearly there." },
        { name = "the edge of the hour",
          description = "At the last birch the gold stops, and beyond it the light is whatever the day outside is doing. You can put one hand in four o'clock and keep the other in the present.",
          actions = {
            { "Put a hand through", say "One hand warm, one hand not. The warm one looks better. You hold them side by side for a while, to no purpose, which you gather is the custom here." },
          } },
      },
      actions = {
        { "Stand in it", fx("wash", "#e8c878"),
          say "It is the hour when the work is done and supper is not yet. You have never had so much of it at once. Somewhere in you a small clock, which has been ticking all your life, is asked to wait in the hall." },
      } },

    { name = "a poet",
      icon = "♪",
      description = "Caldir the Deliberate, reclining, with a wax tablet and a stylus. He has been at work on a poem for two hundred years. He has the first line.",
      things = {
        { name = "the tablet", description = "Wax, smoothed and smoothed again, until it is thin enough to see the wood through. In the middle of it, alone: {i}O,{/}" },
        { name = "the stylus", description = "Silver, bitten at the end. Two centuries of an elf's teeth have got about as far as you would in an afternoon." },
        { name = "a wine stain", description = "On his sleeve, old, the shape of a small island. He spills when he gets a word. There have been three stains." },
      },
      actions = {
        { "Ask to hear it", say "He looks at the tablet. He looks at the light. \"{i}O,{/}\" he says. You wait. \"That's the line. I'm not happy with it.\"" },
        { "Suggest a second line", say "You offer one. It has a rhyme in it. Round the glade, a dozen elves close their eyes at the same moment. \"Thank you,\" says Caldir, and makes a mark on the tablet, and you see that he has written a very small {i}no{/}." },
        { "Ask what it will be about", say "\"Everything,\" he says. \"That is the difficulty with the comma. It commits one.\"" },
      } },

    { name = "the harpist",
      description = "She is tuning. She has been tuning since she sat down, which was before your grandmother, and every elf who passes stops to say how well it is coming.",
      things = {
        { name = "the harp",
          description = "Pale wood, forty strings, shaped like the neck of something that would have been a swan if swans tried harder.",
          things = {
            { name = "the thirty-ninth string", description = "The one she is on. She turns the peg by the width of a thought, listens, and turns it back. The thirty-eight behind her have gone flat in the meantime. She knows. It is not discussed." },
            { name = "the fortieth string", description = "Never touched. It is wound on, bright and new, and has been waiting four hundred years to find out what note it is." },
          } },
        { name = "her tuning fork", description = "Silver. She strikes it on her knee and holds it up, and everyone in the glade tilts their head the same way for as long as it rings." },
      },
      actions = {
        { "Request a tune", say "She looks at you with real kindness. \"Soon,\" she says. An elf nearby, who has been waiting to hear her since the reign of the last Lady but one, nods to you as one would to a new member of a club." },
      } },

    { name = "elves at leisure",
      description = "A dozen of them on the grass, tall, pale, and arranged. Nobody is doing anything. They are doing it extremely well.",
      things = {
        { name = "a game of chess",
          description = "Two elves and a board of silver and jet. They allow themselves one move a season. The last was in the spring. One of them has almost reached for a bishop.",
          things = {
            { name = "the white king", description = "In check, and has been for nine years. He bears it well." },
            { name = "a captured pawn", description = "Beside the board, lying down. It was taken in your great-grandfather's time and is the only piece on either side to have seen any action." },
          },
          actions = {
            { "Point out a move", say "You can see it: knight takes, and mate in two. You say so. Neither of them looks up. \"We know,\" says the one who is winning. \"We are getting to it.\"" },
          } },
        { name = "a picnic",
          description = "On a white cloth: pears, pale bread, a jug of something clear. Nothing has been eaten. It is there for the composition.",
          things = {
            { name = "a pear", description = "Perfect, with one leaf left on. A wasp is walking round it, slowly, with its feet clean." },
            { name = "the jug", description = "Water, with a single flower floating in it, facing west." },
          },
          actions = {
            { "Take a pear", say "Your hand goes out. A dozen elves do not look at it. You have never been not looked at so hard. Your hand comes back." },
          } },
        { name = "an elf admiring a leaf",
          description = "He holds it by the stalk at arm's length. He turns it. He has, you learn, been admiring it since noon, and noon here was a very long time ago." },
        { name = "an elf asleep",
          description = "On her back, hands folded, not a hair out of place. She is not asleep. Elves do not sleep. She is resting her eyes in a manner that requires a slight snore.",
        },
      } },

    { name = "a white hart",
      icon = "Y",
      description = "A stag as white as milk, with a gold collar, standing in the best of the light. It is hunted every midsummer, with horns and banners, and is never caught, by arrangement. It looks tired of being symbolic.",
      things = {
        { name = "the gold collar", description = "Engraved in the Old Tongue: {i}I am the Lady's. Do not catch me.{/} On the inside, scratched with a hoof, a few marks that are not in any tongue but are clearly a complaint." },
        { name = "its antlers", description = "Fourteen points, polished weekly by an elf with a cloth. It stands still for this in the way that you stood still, as a child, to have your face wiped." },
      },
      actions = {
        { "Offer it grass", say "It eats from your hand, like a horse. An elf turns her head away. This is evidently not done, and the stag evidently wishes it were done more." },
        { "Scratch it behind the ear", say "It leans into your hand until you are holding up most of a stag. Its back leg begins to thump. It stops the leg, with an effort, and looks round to see who noticed." },
      } },

    { name = "the silver birches",
      description = "Forty, in a ring, each one white and straight and peeling in the approved manner.",
      things = {
        { name = "a curl of bark", description = "Paper-thin, lit through, about to fall. It has been about to fall for some centuries. The elves consider it the finest thing in the glade and visit it." },
        { name = "the odd birch", description = "One of the forty leans. Not much. It is talked to on Thursdays by a specialist." },
        { name = "a treecreeper", icon = "v", description = "A small brown bird going up a trunk in a spiral. At the top it flies down to the bottom of the next. It is the busiest thing here by a wide margin." },
      } },

    { name = "the lawn",
      description = "Short, even, and the green of a thing that is combed every night. There is no clover in it and not a single worm cast.",
      things = {
        { name = "a daisy", description = "One. In the wrong place. An elf has seen it and is choosing a time to mention it to someone." },
        { name = "your footprints", description = "A line of them from the path to where you stand, each blade bent. They are the only marks on the lawn. Behind you, slowly, with some dignity, the grass is getting up." },
      },
      actions = {
        { "Lie down on it", say "You lie down. You try to recline. It comes out as lying down. An elf adjusts your elbow with one finger, steps back, looks, and shakes her head." },
      } },

    { name = "a sundial",
      description = "White marble on a pedestal, with a bronze blade. The shadow is on the four. The four is worn into a groove. The other eleven numbers are as sharp as the day they were cut.",
      things = {
        { name = "the motto on the dial", description = "In the Old Tongue. A passing elf translates: {i}It is later than you think.{/} Somebody has added a line beneath it, more recently: {i}No it isn't.{/}" },
      } },

    { name = "a spring",
      description = "At the foot of a birch the water comes up clear into a stone cup and runs away through the grass without a sound. It has been asked.",
      actions = {
        { "Drink", say "Cold and sweet and tasting of nothing whatever. It is the best water you have ever had, and you find you miss the kind with a bit of pond in it." },
      } },

    { name = "the autumn",
      description = "Early: the first gold on the birch leaves and a smell of apples from nowhere. Not one leaf has finished turning. It is the same early autumn it was when the hour was stopped, and the swallows that should have gone south are still on a branch, discussing it.",
      things = {
        { name = "the swallows", description = "Seven, in a row. They have been about to leave for four thousand years. The eldest keeps saying {i}any minute now{/}." },
      } },

    { name = "a butterfly", icon = "ж",
      description = "Pale yellow, open on a birch root in the sun. It lives one afternoon. It has done very well out of the arrangement." },
    { name = "a cup being poured",
      description = "By the harpist, an elf is pouring from a silver ewer into a cup. The stream of it stands between the two, clear and twisted, like a rod of glass. It was begun at four o'clock. The cup is not full, and will not be.",
      things = {
        { name = "the stream", description = "You look closely. It is moving. One bright bead is travelling down it, at about the pace of a snail on a wall. The pourer's wrist has been at that angle for longer than Aldmoor has had a wall to put a snail on, and has not shaken." },
        { name = "the cup", description = "Half full. The surface has a dimple in it where the stream goes in, and one ring, spreading. It has got about a third of the way to the rim." },
        { name = "the one who is waiting for it", description = "A lady, with her hand a little out. She is thirsty. She has been thirsty with great composure for four thousand years, and intends to remark, when the cup comes, that there was no hurry." },
      },
      actions = {
        { "Offer her your water bottle", say "You hold it out. A dozen elves do not look at you so pointedly that you feel it on the back of your neck. But the lady's eyes move, to the bottle, and to your face. She does not take it. For one instant, though, she looks at it as you would look at a pie." },
      } },
    { name = "a gardener at the edge",
      description = "Just inside the birches, where the light begins to be ordinary, an elf in an apron is on his knees with a pair of scissors. He is from downstairs. He trims the lawn at night, a blade at a time, and by day he comes to look at it, from here, where he is not in the picture.",
      actions = {
        { "Ask if he ever steps into the light", say "\"Once,\" he says. \"To fetch a rake I'd left. I was in there an hour and came out with my supper cold from last week.\" He snips a blade that has got above itself. \"It's very fine. I'd not live in it. A person wants an evening to look forward to.\"" },
      } },
    { name = "the long shadow",
      description = "The birches throw their shadows across the lawn in bars, as they would at four on an autumn day. One shadow among them is not a birch's. It is longer, and it lies at a different slant, as if its sun were a little later than everyone else's. You look for what is casting it. Nothing is.",
      actions = {
        { "Stand in it", say "It is cooler by a coat. There is a smell of woodsmoke, and of evening, and somewhere a door being shut for the night. You step out, into four o'clock, and it is gone. The afternoon here has a leak in it, about one man wide, and through the leak it is getting on for supper." },
      } },
    { name = "a bee that is late",
      description = "One bee, on the clover at the edge of the lawn, working. Everything else in the glade is at leisure and has been since the hour was kept. The bee goes from head to head with a pollen load the size of its own legs. It is four o'clock for the elves. For the bee, it has been four o'clock, with the day's work not done, for longer than hives have had queens.",
      actions = { { "Watch it work", say "It visits forty flowers while the poet considers one word. It does not hurry and it does not stop. You think it must be weary. Then it lifts off, heavy, and goes over the birches toward wherever its hive is, and a moment later it is back on the first clover, empty, starting again. The gardener at the edge sees you watching. \"We did ask it,\" he says. \"It said it had things to do.\"" } } },
    { name = "a game of bowls, in progress",
      description = "On the smoothest part of the lawn: four elves, eight woods of pale box, and a small white jack. One elf is in the act of delivering. Her hand is open. The wood is a yard out, rolling. It has been rolling for some time.",
      things = {
        { name = "the rolling wood", description = "You watch it. It turns, slowly, showing a little inlaid leaf on its side, and again. It is nearer the jack than when you came. Perhaps by a hand. They began this end before the last King's grandfather was born and they expect a result." },
        { name = "the score", description = "Kept in acorns on the edge of the lawn. Three to one side, two to the other. Several of the acorns have sprouted. One is a sapling. They have agreed that it still counts." },
      },
      actions = { { "Ask who is winning", say "All four turn their heads, which takes a while. \"It is very close,\" says the one who has bowled. \"It would be a pity,\" says another, \"to find out.\" The wood turns over once more. They go back to watching it, with the faces of people listening to a piece of music they hope has no end." } } },
  },

  exits = {
    { to = "elf_border", description = "Back along the raked path, into whatever time it really is." },
    { to = "high_houses", description = "A stair winding up a beech wider than a mill, to where the roofs are." },
    { to = "remembering_tree", description = "A mossy path, walked singly, towards one tree standing by itself." },
    { to = "elf_court",
      description = "Between two rows of oaks, to where the forest goes quiet on purpose.",
      requires = flag "ev_named",
      locked = "nobody goes before the Lady without a name in the Old Tongue. Yours, they say, does not count" },
  },
}
