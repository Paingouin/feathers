space {
  id = "the_ribs",
  region = "hobmoor",
  wonder = true,
  name = "The Ribs",
  description = "Out of the moor stand twenty white arches, in a double row, each one taller than Aldmoor's wall and curved in to meet its partner high overhead. The track runs down the middle of them. It takes you some paces to understand what you are walking through, and after that you walk more quietly.",
  palette = { bg = "#0e0e0d", text = "#d6d2c8", dim = "#727068", accent = "#e0dcc8", border = "#4a4840" },
  ambience = {
    dust { glyphs = "·˙", color = "#66645c", rate = 0.2, speed = 0.2 },
  },

  things = {
    { name = "the ribs",
      key = "ribs",
      wonder = true,
      icon = "∩",
      description = "Bone, weathered grey-white, as thick at the foot as a mill. Whatever it was lay down here on its side and was not disturbed. {magic}The moor has grown up round it and not over it.{/} No heather grows inside the arches. The sheep graze up to the line and go round.",
      things = {
        { name = "a rib, close to",
          description = "Smooth and cold, with lichen on the north face. As high as a hand can reach it is covered in carved initials. Above that, nothing, for a hundred feet.",
          things = {
            { name = "the initials", description = "Hundreds, cut shallow, since the bone is harder than it looks. Sweethearts, drovers, a regiment. The oldest are in letters nobody uses now. None of them has weathered at all." },
            { name = "a very small W", description = "Low down, done with a penknife. Whoever it was started a second letter and thought better of it. The bone is different from a tree. You feel it looking." },
            { name = "the grain of the bone", description = "Close to, it is not smooth. It has a fine weave, like old ivory, running the length of the arch. It is warm on the side the sun has been." },
          },
          actions = {
            { "Knock on it", say "A dull sound, deep, that goes up the arch and across and comes down the other side a moment later. The whole row answers, one pair after another, away up the moor. You put your hand in your pocket." },
          } },
        { name = "the tops of the arches", description = "They do not quite meet. Each pair leaves a gap of a yard or two at the top, and through the gaps runs a line of sky, straight as a ruled road, the whole length of the row." },
        { name = "the spine",
          description = "A ridge in the turf, running off north, each bump the size of a cottage. Somebody has built a cottage on one.",
          variants = {
            { when = flag "hm_skull_known",
              description = "A ridge in the turf, running off north, each bump the size of a cottage. Now that you have been told, you can see the path beside it: a thin line, trodden by one person at a time, going on past the last house to a round green hill." },
          } },
        { name = "the smallest pair", description = "At the south end, where the track comes in, the arches are lower: only the height of a church. The villagers call these the Gate and take their hats off under them without noticing that they do." },
      },
      actions = {
        { "Count them", say "Twenty pairs. You count again, walking, touching each. Twenty. It is the first large thing in the kingdom to come out the same twice, and it settles you." },
        { "Lie down between them", fx("wash", "#e0dcc8"),
          say "You lie on the short turf in the middle of the track and look up. White arches going over, one after another, with the line of sky between their tips. It is like lying in the bottom of a boat. No. It is like being something small that is kept, carefully, inside something large. You stay there longer than you meant to." },
      } },

    { name = "two scholars",
      key = "scholars",
      description = "A thin one and a round one, from the Collegium, on camp stools, back to back. The thin one says it was a dragon. The round one says it was a giant. They have shared this tent for nineteen years and each is on the fourth volume of a refutation of the other.",
      things = {
        { name = "the thin scholar",
          description = "Doctor Pyke: long, dry, with a measuring tape round his neck. He has measured every rib eleven times. The measurements support him. He has seen to that.",
          actions = {
            { "Ask the thin one", say "\"Dragon. Obviously. Observe the curvature.\" And the wings? \"Not preserved.\" And the tail? \"Not preserved.\" He looks at you narrowly. \"You've been talking to {i}him{/}.\"" },
          } },
        { name = "the round scholar",
          description = "Doctor Bland: short, pink, with a magnifying glass and a bag of humbugs. He has drawn every rib from every side. The drawings support him. His giants have a great deal of curvature.",
          actions = {
            { "Ask the round one", say "\"Giant. A titan of the first age. Observe the curvature.\" And the legs? \"Under the moor, clearly.\" Has anyone dug? He is shocked. \"That would settle it,\" he says. \"We have nineteen years in this.\"" },
          } },
        { name = "the tent",
          description = "One, canvas, with a line chalked down the middle of the floor.",
          things = {
            { name = "the thin side", description = "A camp bed, made. Four bound volumes, {i}Against Bland{/}, and a fifth in progress. A kettle." },
            { name = "the round side", description = "A camp bed, not made. Four bound volumes, {i}Against Pyke{/}, and a fifth in progress. The teapot." },
            { name = "the chalk line", description = "Renewed every morning by whoever is up first. Where it crosses the tent pole there is a small shelf, on the line exactly, with one cup on it. They take turns with the cup. It is the only thing they agree to share, and neither will say why they brought only one." },
          } },
        { name = "a shovel",
          description = "Leaning on the tent pole, bright, never used, with the Collegium's label still tied to the handle. It has been there for nineteen years. Each of them has, on a bad night, gone out and looked at it.",
          actions = {
            { "Pick it up", say "Both of them are on their feet. \"Put that down,\" says Pyke. \"If you please,\" says Bland. It is the first thing you have heard them say in the same direction. You put it down. They sit, back to back, breathing hard, and Bland passes Pyke a humbug over his shoulder without looking." },
          } },
      },
      actions = {
        { "Ask what they will do if one of them is right", say "A long silence. \"Go home, I suppose,\" says the round one. \"To what,\" says the thin one. The wind does not blow in here, so you hear the kettle start." },
      } },

    { name = "the line",
      key = "the line",
      description = "Along the outside of the arches the heather stops, all at once, as if it had been trimmed with shears. Inside is short green turf and nothing else. And the wind drops. All of it, at the line.",
      things = {
        { name = "a sheep at the line", description = "Grazing with her nose an inch from it. She works along it for the whole length of the row and never puts a hoof over. Nobody taught her. Nobody taught her mother." },
        { name = "a wisp of wool", description = "Blown across the moor and stopped dead in the air at the line, then dropped straight down. There is a little drift of such things along the outside: wool, seed, a leaf. The wind brings them this far and puts them down." },
      },
      actions = {
        { "Step across it", say "Out: wind, and your coat cracking, and the heather hissing. In: nothing. You do it four times. On the fourth a villager going by with a bucket says, kindly, \"We all did that. You stop after a while.\"" },
      } },

    { name = "the washing",
      description = "The hamlet strings its lines from rib to rib. Sheets, shirts, a row of socks, at a height that would be a third-floor window anywhere else. They go up by ladder.",
      things = {
        { name = "a sheet", description = "It hangs dead straight, without a ripple. Washing dries slowly at Underrib, having no wind. They say it comes in smelling of nothing, and that after a few years you prefer it." },
        { name = "the long ladder", description = "Forty rungs, kept at the ninth pair for the use of all. There is a rule that you bring in your neighbour's when you bring in your own, and a second rule that you do not look at it." },
      } },

    { name = "a cairn of small stones",
      description = "At the foot of the first rib. Everyone who passes adds one. Nobody knows what for; it seemed wrong to walk in without knocking.",
      actions = {
        { "Add a stone", say "You find one on the track and put it on the heap. It clicks down among the others. Nothing happens. You feel, all the same, that you have been let in." },
      } },

    { name = "the silence",
      description = "Not a stillness with something waiting in it. Only the wind left out. You can hear the washing not flapping, and a hen, and somebody in the hamlet sweeping a step.",
    },

    { name = "the turf inside",
      description = "Fine, close, bright green, and never mown. No daisy, no thistle, no molehill. It grows to the height of a finger and stops there.",
      things = {
        { name = "the track", description = "Two wheel ruts and a middle strip, running dead centre between the rows. Nobody ever laid it out. A cart going in simply finds that this is where it goes." },
        { name = "a fairy ring", description = "A dark circle in the turf with a few pale mushrooms on it, the only thing that grows in here besides grass. It is exactly halfway down the row and exactly in the middle. The children hop over it. The grown-ups walk round, and say they don't." },
      } },

    { name = "ravens", icon = "v",
      description = "A pair, on the tip of the tallest rib, a hundred feet up. They have nested there since before the hamlet and they talk to each other all day in a low croak, like two old men on a bench.",
      things = {
        { name = "the nest", description = "A heap of sticks as big as a cartwheel, wedged in the gap at the top of the arch. There are things woven into it: a ribbon, a spoon, somebody's spectacles. The villagers know where to look when a thing goes missing and have never once gone up." },
      },
      actions = {
        { "Croak at them", say "One of them leans out and looks down at you with one eye, for some time. Then it says, quite clearly, in the voice of an elderly woman, \"Mind the step.\" The villagers will tell you it learned that at the inn." },
      } },

    { name = "the far end",
      description = "At the north the last pair of arches stands a little apart from the rest, and wider. Beyond them the ridge of the spine goes on over the moor towards a round green hill with two dark hollows in the near side of it. From here you would take them for caves.",
    },

    { name = "the smoke of the hamlet",
      description = "Nine threads, from nine chimneys, halfway down the row. Each goes straight up between the ribs like a plumb line, without a bend, to the gap at the top, and only there does the wind find it and take it off sideways." },

    { name = "a painter",
      description = "A young woman at an easel, outside the line, in the wind, holding her hat on. She has come up from Aldmoor to paint the Ribs and has been at it a fortnight.",
      things = {
        { name = "her canvas", description = "The moor, the sky, the arches, all very good. And inside the arches, where the hamlet and the washing and the track should be, she has left the canvas bare. \"I keep putting it in,\" she says. \"It doesn't want to be looked at from out here. It isn't a view. It's an indoors.\"" },
      },
      actions = {
        { "Suggest she paint from inside", say "\"I tried. No wind, no weather, no distance. I sat there a whole day with the brush in my hand.\" She shrugs. \"I just felt looked after. You can't paint that. I've tried to paint my mother.\"" },
      } },
  },

  exits = {
    { to = "moor_road", description = "South, out under the Gate, into the wind and the heather." },
    { to = "underrib", description = "Down the middle, to the smoke." },
    { to = "titan_skull", label = "The path to the head",
      description = "Past the last house and on along the spine, by a path one person wide, to the round green hill.",
      requires = flag "hm_skull_known", hidden = true },
  },
}

space {
  id = "underrib",
  region = "hobmoor",
  name = "Underrib",
  description = "A hamlet of nine houses built inside the ribcage, where the wind does not come. A lane, a pump, an inn. The people here are born, married and buried under the arches and think the open moor a little bare.",
  palette = { bg = "#100e0b", text = "#d4ccbc", dim = "#746c5c", accent = "#d8b070", border = "#4a4030" },
  ambience = {
    steam { glyphs = "˙·∙", color = "#6a6458", rate = 0.3 },
    flicker { color = "#e8b870", strength = 0.06 },
  },

  things = {
    { name = "The Funny Bone",
      key = "inn",
      icon = "♨",
      description = "The inn: low, thatched, built against the breastbone. The sign is a painted elbow. There is a bench by the door, a mounting block, and a smell of peat smoke and frying.",
      things = {
        { name = "the landlady",
          key = "landlady",
          description = "Dulcie Marrow, sleeves rolled, forearms floury. She was born in the back room. She tells you so. She tells you which rib.",
          things = {
            { name = "her apron", description = "Sacking, washed soft, with a pocket in which she keeps the takings, a ball of string, and a wooden spoon for discipline." },
            { name = "her opinion of scholars", description = "\"Nineteen years they've been up at the Gate. They come down Fridays, separate, an hour apart, and each asks if the other's been in. I say no to both. It's kinder.\"" },
          },
          actions = {
            { "Ask what it was", say "\"The Old Fellow? Don't know. Don't need to. He keeps the wind off.\" She wipes a mug. \"The scholars say dragon or giant. Round here we say {i}landlord{/}, since we've all lived in him rent free.\"" },
            { "Ask about the head", when = no(flag "hm_skull_known"), set "hm_skull_known",
              say "The room goes a bit quiet. \"There's a path,\" she says. \"North end, past the last house, where the spine goes. We don't take visitors up.\" She looks at you and decides you are not a visitor so much as weather. \"Go if you're going. Take your hat off inside. And don't stop long. You'll see why.\"" },
            { "Ask about the head again", when = all { flag "hm_skull_known", no(visited "titan_skull") },
              say "\"I've said. Past the last house.\" She goes on wiping. \"I went up when my mother died. And when the twins came. You come down slow.\"" },
            { "Tell her you went up", when = visited "titan_skull",
              say "She looks at your face, and nods, and puts a mug in front of you without being asked. \"Rain?\" she says. You say yes. \"It's always rain,\" she says. \"My gran got snow, once. She never said another cross word to anybody.\"" },
          } },

        { name = "the taproom",
          description = "One room, a low ceiling, a floor of flagstones worn into saucers. Six tables, a settle, a fire. The back wall is not a wall. It is bone, smooth and white and slightly curved, and the shelves are pegged to it with wooden pegs wedged into cracks that were there already.",
          things = {
            { name = "the bone wall",
              description = "The breastbone. The whole inn leans on it. It is whitewashed up to the beam and above that left as it is, and where the settle stands it is polished yellow by two hundred years of shoulders.",
              actions = {
                { "Lean on it", say "Cool, and solid, and very faintly not still. Nothing you could call a movement. More the way a wall feels in a house where somebody is asleep upstairs." },
              } },
            { name = "the mugs",
              description = "On pegs along the beam, forty or so, brown glazed, each with a mark scratched in the bottom: a fish, a wheel, three dots. Every soul in Underrib has one. They are hung up at christening and taken down at the wake.",
              things = {
                { name = "a very small mug", description = "A thimble with a handle, on the lowest peg. Christened last month. The mark in the bottom is a turnip. Her father is a Holloway." },
                { name = "a mug turned to the wall", description = "The owner went to sea. It is turned, not taken down. Dulcie dusts it on Sundays. The mark is a W." },
                { name = "the stranger's mug", description = "Bigger than the rest, chipped, no mark. For whoever comes. It is the most used mug in the house and nobody has ever washed it with any ceremony." },
              },
              actions = {
                { "Have a drink", say "Brown ale, in the stranger's mug, drawn from a cask that stands in a hollow of the bone to keep cool. It tastes of peat and something older. You ask what the something is. \"Cellar,\" says Dulcie, in a tone that closes the subject." },
              } },
            { name = "the fireplace",
              key = "fireplace",
              description = "Wide enough to sit in, with a peat fire that has not been out in Dulcie's lifetime. A kettle on a crane, a row of brasses, a spit.",
              things = {
                { name = "the poker",
                  key = "poker",
                  visible_if = no(item "poker_sword"),
                  description = "Hanging by the chimney on a loop of string. It is four feet long. It has a crossguard. It has a sea-green stone in the pommel, and under the soot on the blade, in silver, there are letters.",
                  actions = {
                    { "Read the letters", say "You rub the soot with your thumb. {i}MOURNBRIGHT.{/} And under it: {i}Draw me in need.{/} You know that name. Everybody knows that name. There are four ballads. You look at Dulcie. \"Left against a bill,\" she says. \"Eleven nights and a horse. My great-great-gran's time. He said he'd be back when he'd slain something. Turns the back log lovely.\"" },
                    { "Ask to have it", once = true, give "poker_sword",
                      say "\"The poker?\" She thinks. \"Smith made me a new one at Michaelmas, with a hook on. Better for the kettle.\" She unhooks two hundred years of legend from the chimney and holds it out by the blade. \"Bill was never paid, mind. Four shillings and ninepence. If you see him.\" It comes into your hand as though it had been waiting. A clear note runs down the steel. Every mug on the beam hums. You are holding {gold}Mournbright{/}, which cut the chain of the Drowned Gate, and it is sooty to the hilt." },
                  } },
                { name = "the new poker", visible_if = item "poker_sword",
                  description = "Plain iron, with a hook on. It is, Dulcie says, a much better poker. It hangs on the old loop of string, a foot and a half too short for it, and looks self-conscious." },
                { name = "the back log", description = "Bog oak, dug out of the peat, black and hard as iron. It was put on at midsummer and will last till Christmas. It wants turning about once a week." },
                { name = "the kettle", description = "Black, with a lid that rattles a tune. It is the same three notes as the pump handle. Things in Underrib come to agree." },
              } },
            { name = "the settle",
              description = "High-backed, by the fire, with room for four. Three old men are on it. They have left the fourth place, by the bone, as they have left it every night for six years.",
              things = {
                { name = "the three old men", description = "Pipes, caps, a draughts board nobody is playing on. They have known each other for seventy years and have reached the stage of friendship where it would be showy to speak." },
                { name = "the fourth place", description = "A dip in the cushion. A peg above it with a cap on. You are a stranger, and you may sit at any of the six tables, and you would no more sit there than in the fire." },
              } },
            { name = "a slate of prices", description = "{i}Ale 1d. Dinner 3d. Bed 6d. Horse 2d. Argument about what it was: free, but take it outside.{/}" },
          } },

        { name = "the kitchen",
          description = "Through a half door behind the bar. A range, a scrubbed table, a dresser, and a girl of twelve standing on a box to stir.",
          things = {
            { name = "the range",
              description = "Iron, black-leaded, with a peat fire in its belly and four pots on top.",
              things = {
                { name = "the stockpot", description = "Mutton, barley, a turnip. It is always mutton, barley and a turnip. On feast days there are two turnips." },
                { name = "a frying pan", description = "Bacon, from a pig that lived under the seventh pair. Dulcie says pigs do well in here. They don't fret. Nothing frets much." },
              } },
            { name = "the girl on the box",
              description = "Nell, Dulcie's youngest. She stirs with her whole arm and reads at the same time, from a book propped on the salt box.",
              actions = {
                { "Ask what she is reading", say "She shows you the spine: {i}Against Pyke, volume two{/}. \"Doctor Bland lends me them. Doctor Pyke lends me his. They don't know.\" She turns a page. \"They're both wrong. It's got no shoulder blades. I've looked.\" She will not be drawn on what that means. She is saving it." },
              } },
            { name = "the dresser", description = "Blue and white plates, a ham under a cloth, and a row of spoons carved from sheep bone, one for each of the household, with the handles worn to fit." },
            { name = "the larder door",
              description = "It opens into a cupboard cut straight into the breastbone: a natural hollow, dry and white, with slate shelves. Butter keeps a month in there. Milk does not turn.",
              actions = {
                { "Put your head in", say "Cold, clean, and so quiet that your ears ring. There is a crock of cream, a cheese, a dish of eggs. You feel that you have put your head inside something's pocket, and withdraw it politely." },
              } },
          } },

        { name = "the rooms upstairs",
          description = "Three, under the thatch, up a stair like a ladder. The floors slope. The beds are boxes built into the wall, with doors.",
          things = {
            { name = "the best room",
              description = "It has a window, a washstand, and a box bed with a patchwork quilt. The window looks straight out at a rib, six feet away, filling the whole frame, white.",
              things = {
                { name = "the quilt", description = "Hexagons, hundreds, each from a different worn-out garment of the parish. Dulcie can name them. That one was a waistcoat. That one was a christening gown. That one, she says, was a hero's cloak, left against a bill, with a horse." },
                { name = "the washstand", description = "A jug, a basin, a sliver of soap. The water in the jug is from the pump, and so cold that it makes your teeth ache to look at it." },
              },
              actions = {
                { "Try the bed", say "You climb into the box and pull the door to. Dark, warm, smelling of wool and peat. No draught. No sound at all. You shut your eyes for a moment. When you open them the light in the window has moved a good way along the rib, and you have had the best sleep of your life, by accident, with your boots on." },
              } },
            { name = "the second room", description = "Let, for nineteen years, to a thin scholar, who uses it one night a week. His slippers are under the bed, exactly parallel." },
            { name = "the third room", description = "Let, for nineteen years, to a round scholar, who uses it one night a week. His slippers are somewhere. The two rooms share a wall. On Fridays, Dulcie says, you can hear each of them listening." },
            { name = "a visitors' book", description = "On the landing. Drovers, a tinker, a bishop who was lost. And one entry in a big square hand, two hundred years old: {i}Sir Garrick of the Drowned Gate. Excellent mutton. Will settle on return.{/}" },
          } },

        { name = "the cellar hatch",
          description = "A trap in the taproom floor with a ring in it. The cellar, Dulcie says, is not dug. It was there. They found it when they put the inn up, under the breastbone, round, the size of a hayrick, and dry.",
          actions = {
            { "Ask what was in it", say "\"Nothing. Empty. Clean as a bowl.\" She draws a pint. \"My gran said it was where his heart went. I said don't be soft, gran, a heart that size. She said that's what I'm telling you.\" She puts the pint down. \"Keeps the ale beautiful, anyway.\"" },
          } },
        { name = "the inn sign", description = "An elbow, bent, in oils, on a board. It was meant to be funny. Two hundred years of weather have taken the joke off it and left an arm, crooked, as if round somebody's shoulders." },
      } },

    { name = "the bone-carver's",
      description = "A workshop with a half door, a bench under the window, and a floor white with dust.",
      things = {
        { name = "the carver",
          description = "Amos Lathe, sixty, with a knife no longer than a finger. He carves buttons, combs and spoons. He works only in sheep bone.",
          actions = {
            { "Ask about the other kind", say "You say it, with all of it standing there, forty arches of the finest stuff a carver ever saw. He puts his knife down. \"You'd not carve up your own roof,\" he says." },
            { "Ask if anyone ever has", say "\"A man came, my granddad's time. From the town, with a saw. Wanted a piece for a duke.\" He blows dust off a button. \"Got the saw an inch in. Then he sat down on the grass and stopped there till evening, thinking, and went home. Left the saw. I've got it somewhere. He sent a letter after to say sorry.\" To whom? Amos nods upward." },
          } },
        { name = "a comb", description = "Sheep bone, fine-toothed, with twenty small arches cut along the back." },
        { name = "a tray of buttons", description = "Round, four-holed, each with a ring of tiny dots. Every coat in Underrib does up with these. A drover can tell an Underrib man across a fair by his buttons." },
        { name = "a spoon, half done", description = "The bowl is finished. The handle is going to be a row of arches with something very small walking down the middle. He will not say whether the small thing is a person. \"It's whoever's holding the spoon,\" he says." },
        { name = "the saw", description = "On a nail at the back, rusted. One inch of the teeth, near the tip, is bright and unworn, and has stayed bright." },
      } },

    { name = "the pump",
      description = "Iron, in the middle of the lane, with a stone trough. The handle plays three notes as it goes down.",
      things = {
        { name = "the trough", description = "Clear to the bottom. A cat is drinking at one end and a hen at the other, and neither is paying the other any mind." },
      },
      actions = {
        { "Pump a drink", say "The water comes up cold and very slightly sweet. Nobody asks what it has come through." },
      } },

    { name = "the houses",
      description = "Nine, each with a rib for a gable post. The rib is whitewashed once a year as high as a ladder goes, out of respect, and the lichen has it back by autumn.",
      things = {
        { name = "the first house", description = "The Holloways'. Shut up, with a note on the door: {i}Gone to mind the star.{/}" },
        { name = "the fifth house",
          description = "A widow's. The door is open, and on the step is a row of nine pies, cooling, one for each household. It is her day. Tomorrow it is somebody else's.",
          things = {
            { name = "the ninth pie", description = "Smaller, with a different crimp. For the inn, for whoever comes. That is you. You will be having it for dinner, at threepence, and it will be worth it." },
          } },
        { name = "the last house", description = "At the north end, the smallest, with no window on the far side. Whoever lives there keeps the path. Nobody says so. There is a lantern on a hook by the door, trimmed, for people who need to go up at night." },
        { name = "a window box", description = "Geraniums, red, bolt upright. No wind has ever touched them. They have grown stems like broom handles and have never needed a stake." },
      } },

    { name = "children playing",
      description = "A game with a ball, the rule being that it must go between the ninth pair and not touch. When it touches, they all say sorry. They say it upward.",
      actions = {
        { "Join in", say "You get the ball. You kick it. It hits the rib with a noise like a drum. Seven children look at you. \"Sorry,\" you say. \"Not to {i}us{/},\" says the smallest." },
      } },

    { name = "the smithy",
      description = "A forge under the sixth pair, cold today. The smith has gone to make Jem Holloway an offer.",
      things = {
        { name = "the anvil", description = "Set on a block of bog oak. Beside it, a new poker, a twin of the one he made for the inn, with a hook on. He is very proud of the hook." },
        { name = "the bellows", description = "They take some pumping. Fire does not draw well where there is no wind. He has a boy for it, and the boy has shoulders like a bullock." },
      } },

    { name = "the churchyard",
      description = "Outside the last arch, on the open moor. It is the only time anyone from Underrib sleeps without the Old Fellow over them, and the stones all face him.",
      things = {
        { name = "a headstone", description = "{i}Tabitha Marrow. Born under the fourth pair. Died under the fourth pair. Went out once, to Aldmoor, and did not care for it.{/}" },
        { name = "an old stone, no name", description = "The oldest. Worn blank. It is set a little apart and it faces the other way: north, along the spine, towards the hill." },
        { name = "the wall", description = "Dry stone, built by people who had never needed a wall against wind before and did not know how thick to make it. It is nine feet thick." },
      } },

    { name = "a cat",
      description = "Tortoiseshell, asleep on the pump trough's rim, one paw trailing. Cats do very well in Underrib. They were calm already." },

    { name = "the hens",
      description = "Loose in the lane. They roost at night on the lowest knob of the eighth rib, in a row, and the cock crows from there in the morning. It is not much of a crow. In here he has never had to shout over anything." },

    { name = "the lane",
      description = "Cobbled with small round stones off the moor, swept every morning by whoever's step is dirtiest. It runs dead straight down the middle of the row, and when a child here learns to walk, this is the line they learn on.",
    },

    { name = "a notice on the pump",
      description = "{i}PARISH MEETING. To settle: (1) the hens. (2) Mr Holloway's prices. (3) Whether to tell the scholars. Carried over from last year: (3).{/}" },
  },

  exits = {
    { to = "the_ribs", description = "Back up the lane, under the washing, to the arches and the tent." },
  },
}

space {
  id = "titan_skull",
  region = "hobmoor",
  secret = true,
  wonder = true,
  name = "Inside the Head",
  description = "The path follows the spine for half a mile and ends at a hill that is not a hill. You go in by the eye. Inside is a white dome the size of a chapel, dry and still, with the daylight coming through two round windows. Somebody has put a bench in here. You take your hat off.",
  palette = { bg = "#0f0f10", text = "#dcdad4", dim = "#787670", accent = "#b8c8d8", border = "#484a50" },
  ambience = {
    dust { glyphs = "·˙", color = "#5c5e64", rate = 0.15, speed = 0.1 },
    rain { glyphs = "·˙", color = "#3c4450", rate = 0.15, speed = 0.4 },
  },

  things = {
    { name = "the thought",
      key = "thought",
      wonder = true,
      icon = "~",
      description = "You have been in here a minute when you notice you are thinking about rain. Not whether it will. Rain in general: how it starts, the first drops on dry ground, the smell. {magic}It is not your thought.{/} It is far too big and far too slow, and it was here before you came in. You are only standing where it is.",
      things = {
        { name = "the first drops", description = "On dust. Each one makes a small dark crater and a puff. You have seen this a thousand times and never once attended to it. Something attended to it a great deal." },
        { name = "the smell of it", description = "Wet earth, after a dry month. It is so exact that you look at the eye windows. Outside the sun is on the heather. It has not rained for days." },
        { name = "the size of it", description = "You try to find the edge of the thought, where it stops and you begin again. It is like feeling for the walls of a room in the dark and finding that you are out of doors." },
        { name = "what it is not", description = "It is not sad. You had expected, in a skull, something sad. It is not about endings at all. It is about rain, with great attention, and a sort of approval." },
      },
      actions = {
        { "Think along with it", fx("wash", "#b8c8d8"),
          say "You let it go on. Rain on a hillside with nobody on it. Rain on standing stones. Rain coming over a moor in a grey wall, and the heather bending. It is patient, and it is oddly fond. You do not know how long you stand there. When you come back to yourself your face is wet, and it is not raining." },
        { "Think of something else", say "You try the alphabet. You try a pie. You get as far as the crust. Then the crust has rain on it, and so does the windowsill it is cooling on, and the whole street, and you give in. It was never a contest." },
      } },

    { name = "the eye windows",
      description = "Two, round, a yard across, facing west. Through each of them you see the moor, the sky, and a long way off the Grumbles. Whatever it was, it lay down where it could see the mountains.",
      things = {
        { name = "the left eye", description = "The one you came in by. The edge is worn smooth and dark where hands have gone, at every height from a child's to a tall man's." },
        { name = "the right eye", description = "Nobody uses it. A swallow goes in and out. The turf has grown a little way over the sill and has a harebell in it, blue, nodding at nothing, there being no wind." },
        { name = "the view", description = "Heather, then the white tops, exactly framed. You move a step to one side. The mountains leave the frame. You move back. Somebody chose this. They lay down, and turned their head a little, and then it was right." },
      },
      actions = {
        { "Look where it was looking", say "You stand in the middle, between the two windows, where the two views would cross. The Grumbles. The tallest of them, in the centre, to the inch. You look at it for a while, as you were evidently meant to. It does not tell you anything. But you have the feeling of having joined the back of a very old conversation." },
      } },

    { name = "the bench",
      description = "Plain oak, put here by the people of Underrib, with nothing carved on it. They come up one at a time, when somebody has died or been born, and sit, and think about rain.",
      things = {
        { name = "the seat", description = "Worn in one place only. Nobody has ever come up here two together. It is not a rule. It is that the thought is the same for everyone, and you would not want to catch each other's eye." },
        { name = "a folded shawl", description = "Left on the end of the bench, for whoever is cold. It has been left there, in turn, by eleven generations. It is not the same shawl. It is always a shawl." },
      },
      actions = {
        { "Sit", say "You sit. The oak is warm. The rain goes on in your head, steady, not yours. After a while you notice that your shoulders have come down from where you keep them. You had not known you kept them anywhere." },
      } },

    { name = "the dome",
      description = "Bone, close-grained, white as a plate, going up into a shadow at the crown. Sound does not echo in here. It is taken in.",
      things = {
        { name = "the seams", description = "Fine wandering lines where the plates of it knit, like rivers on a map. You follow one with your eye right across the vault. It has tributaries." },
        { name = "the crown", description = "High up, dim. There is a place where the bone is thinner and the day comes through it, a glow the colour of a hand held up to a lamp." },
      },
      actions = {
        { "Say something", say "You say your name. It goes out of your mouth and is not there. No ring, no return. It has not been lost. It has been heard, and kept, and that is the end of it." },
      } },

    { name = "a swallow's nest",
      icon = "v",
      description = "Mud, under the brow, with four wide yellow mouths in it. A pair of swallows go in and out through the right eye, all day, quite at home.",
      things = {
        { name = "the swallows", description = "Blue-black, quick, scissor-tailed. They come in low over the heather and turn up through the eye without slowing. They have nested here for longer than the bench. They do not seem to think about rain. Or they do, and it is why they fly like that." },
        { name = "old nests", description = "A row along the brow, each a little greyer than the last, going back and back. Every pair has built beside its parents'. You count forty and the row goes on into the shadow." },
      } },

    { name = "the floor",
      description = "Dry sand, fine and pale, blown in grain by grain over more years than you can think about. It is raked. Somebody from the last house comes up with a rake.",
      things = {
        { name = "the rake marks", description = "Long curves, following the wall. No footprints but yours, and the ones before yours have already been smoothed away. Each visitor gets a clean floor." },
        { name = "a sprig of white heather", description = "Laid on the sand under the left eye, fresh. Someone was born this week, or someone died. From the sprig you cannot tell which. Nor, you gather, from up here, does it greatly matter which." },
      } },

    { name = "the way further in",
      description = "At the back the dome narrows to a round opening, low, with a smooth lip. A passage goes on beyond it, down, the way the spine goes. The raked sand stops at the lip. Nobody has put a foot over.",
      actions = {
        { "Look down it", say "White, curving away, and then dark. A breath of air comes up it, cool and dry. Not a draught. One breath, and then none. You wait a long time for a second one, and are not sure whether you are relieved." },
      } },

    { name = "the light",
      description = "Two round beams from the eyes, crossing the dome and lying on the far wall as two bright discs. They move through the day, slowly, down the bone. The people of Underrib tell the time of year by where they touch at noon. There is a faint line of old marks. The oldest are very low." },

    { name = "the stillness",
      description = "Underrib is still. This is more. The air in here has not been hurried in living memory. A mote of dust in the beam is going about its business at the pace of a cloud." },

    { name = "your hat",
      description = "In your hand. You do not remember deciding to take it off. You are holding it by the brim, in front of you, in both hands, as you have seen people do at a graveside, and at a christening, and when the king goes by.",
    },

    { name = "a child's drawing",
      description = "In chalk, low on the wall by the door, where a grown-up would have to kneel to see it: a round head with two eyes, and a row of little arches behind it, and over all of it a great many short strokes coming down. It has been there long enough to fade, and nobody has rubbed it out. Rain. She got it too." },
  },

  exits = {
    { to = "the_ribs", description = "Out by the eye, and back along the spine, slowly." },
  },
}
