-- The Pyramid of King Tot the Exact, with the costs carved on it, and what he hid behind
-- the one line he got wrong.

space {
  id = "pa_pyramid",
  region = "parch",
  name = "The Itemised Pyramid",
  description = "An hour east of the Gate of Accounts it stands up out of the flat: four sloping sides of pale stone coming to a point three hundred feet over your head, with not a statue or a god or a picture on it anywhere. What is on it is writing. Every face, from the sand to the tip, is cut in close square lines, and when you are near enough to read them you find that it is a bill. King Tot the Exact built his own tomb, and had the cost of it carved on the outside, item by item, so that the ages should know that he was not overcharged.",
  backdrop = {
    "              ▲              ",
    "             ▟█▙             ",
    "           ▟█████▙           ",
    "         ▟█████████▙         ",
    "▁▁▁▁▁▁▁▟█████████████▙▁▁▁▁▁▁▁",
  },

  things = {
    { name = "the carved costs",
      key = "pa_costs",
      wonder = true,
      icon = "▲",
      description = "Forty thousand lines. You begin at the bottom corner, as everybody does, and read. {i}Stone, limestone, dressed, per block: 3 measures barley.{/} And the number of blocks. And the total. {i}Rope. Sledges. Onions for the gangs. Beer for the gangs. Physician for the gangs (beer).{/} It goes up out of sight, in the same hand, never hurrying, never larger or smaller, and {magic}as the sun goes over, the shadow in each cut letter moves, so that the whole side of the mountain seems to be adding itself up before your eyes.{/} By evening it has come to the same answer. It has done that every day for three thousand years.",
      variants = {
        { when = flag "pa_sum_found",
          description = "Forty thousand lines of account, from the sand to the sky, in one patient hand. And low on the east face, at the height of a short man's eyes, the one line that does not come out. Now that you have seen it you cannot think how anybody missed it. Beside it a single block stands a hand proud of the rest, where you leaned on the wrong total and it gave." },
      },
      things = {
        { name = "the bottom line of the north face", description = "{i}The ground: received. Not invoiced. Query.{/} It is the first entry in the whole account and the only one with no figure against it. The scholars say that he could not find out whom to pay, and that it troubled him until he died." },
        { name = "the onions", description = "Four hundred lines of them, by the day, by the gang. King Tot fed his builders well and wanted it known. A scholar from the Collegium has worked out that each man got two a day and a third on feast days, and that there was a strike once, in the eleventh year, about radishes." },
        { name = "a line near the corner", description = "{i}To the carving of this account upon the pyramid: 900 measures. To the carving of the foregoing line: 1 measure. To the carving of the foregoing line: 1 measure.{/} It goes on like this for some distance. Then there is a chisel mark, deep, as if somebody had been stopped by hand." },
        { name = "the top lines", description = "Too high to read without a ladder. Travellers have gone up with ropes. It is the grand total, and under it, they say, in letters no bigger than the rest: {i}Worth it? Not yet known.{/}" },
        { name = "a wrong sum, low on the east face", visible_if = flag "pa_knows_error",
          description = "At the height of a short man's eyes. {i}Figs for the King's own table, 7 baskets at 2 measures: 15.{/} You count on your fingers. You count again. In forty thousand lines there is this one, and it is out by one, in a place where a child could find it. The stone round it is very faintly greasy, at about the height of a hand." },
      },
      actions = {
        { "Check the addition", when = no(flag "pa_knows_error"),
          say "You start at the bottom with your fingers. By the ninetieth line you are using a stick in the sand. By the two hundredth the sun has moved and you have lost the place. Everything that you could check was right. A lizard has been watching the stick. It seems to feel that you have left out a carry." },
        { "Lean on the wrong sum", when = all { flag "pa_knows_error", no(flag "pa_sum_found") }, set "pa_sum_found",
          say "Seven twos are fourteen. You put your hand flat on the {i}15{/}, as you would on a friend's shoulder, to tell it so. The block goes in under your palm by the depth of a finger. Somewhere inside the mountain a counterweight that has been waiting three thousand years for anybody at all to notice comes down with a sound like a satisfied cough. Beside the line, a slab the size of a door swings back on a pivot. Cool air comes out, smelling of figs.",
          fx "shake" },
      } },
    { name = "the auditor",
      icon = "☺",
      description = "A dry little woman under a parasol at the foot of the east face, with a ladder, a slate, and a tin of sandwiches. She is the Hereditary Auditor of the Tomb. Her family have checked the account, top to bottom, once in each generation, for ninety generations. She is on line thirty one thousand and has the feeling that this time may be the time.",
      things = {
        { name = "her slate", description = "A running total, in chalk. She has not rubbed it out in forty years. She carries it home at night under her arm, flat, like a tray of eggs." },
        { name = "her ladder", description = "Forty feet, in sections that peg together. Above that she uses a spyglass, and above that, faith." },
        { name = "the family book", description = "Ninety signatures, each under the same sentence: {i}Examined and found correct.{/} The first eighty nine are bold. The last is her mother's, and it has, after the word {i}correct{/}, a very small question mark, in pencil, that has been nearly rubbed out." },
      },
      actions = {
        { "Ask if it adds up", say "\"It has added up ninety times,\" she says. \"I begin to think that we are being managed.\" She looks up the long slope of figures. \"My mother said, on her last day: Hesta, it is too right. Nobody is that right. Look low. But she said a number of things that day.\"" },
        { "Tell her about the figs", when = flag "pa_sum_found", say "She goes to the line. She counts on her fingers. She sits down in the sand, with her parasol, quite slowly. \"Fifteen,\" she says. \"Ninety generations. We all carried the one. We {i}assumed{/} he would have.\" Then she begins to laugh, and it is some time before she can stop, and she says that her mother will be past living with, wherever she is." },
      } },
    { name = "the causeway",
      description = "A road of stone slabs running dead straight from the city gate to the pyramid's foot. He had it built wide enough for two sledges to pass, and then, to save, had every second slab left out. You go along it in strides.",
      things = {
        { name = "the missing slabs", description = "Sand, in neat oblongs. The saving is itemised on the south face: {i}Half a road. Sufficient.{/}" },
        { name = "the sledge ruts", description = "Two grooves worn into the slabs that are there, by blocks dragged from the river that used to be. They skip the gaps, and take up again on the far side, in step." },
      } },
    { name = "the workmen's village",
      description = "A grid of low walls, to the south, half full of sand: the houses of the gangs. Each had one room, a hearth, and a number over the door.",
      things = {
        { name = "house eleven", description = "On the inside wall, scratched in the plaster with a nail, there is a tally of days worked, and beside each tenth day a small round shape. An onion. The extra one. They kept their own accounts too." },
        { name = "the bakery", description = "Forty ovens in a row, and a heap of broken bread moulds the height of a man. They are all the one size, to the grain. A loaf was a wage." },
        { name = "a graffito", description = "On a doorpost, in the workmen's script: {i}The gang of the Left Side says that the gang of the Right Side cannot lay a straight course.{/} Under it, in other writing: {i}Come round and say so.{/} And under that, in the neat square hand of the pyramid itself: {i}Both gangs: one day's beer stopped.{/}" },
        { name = "Wilf's mark", description = "On the lintel of house nineteen, among the old scratches, in letters three thousand years too new: {i}Wilf woz ere{/}. He has added a small pyramid, with a face on it." },
      } },
    { name = "the capstone",
      description = "The very tip, three hundred feet up. It was to have been sheathed in gold. It is sheathed in a gold coloured paint, which has lasted better than could have been hoped, and the saving is itemised.",
      things = {
        { name = "the glint", description = "At sunrise it catches, for the space of a breath, before any other thing in the Parch, and a spark of light stands on the point. The caravans look for it. It is called the King's Penny." },
      } },
    { name = "the false door",
      description = "On the north face, where everybody looks for the way in: a grand doorway of polished granite, with a lintel and a threshold and no gap anywhere. It is carved from the one block as the wall.",
      things = {
        { name = "the robbers' tunnels", description = "Eleven, driven in round the false door over the centuries, each a little longer than the last. They all end in solid stone. In the last and longest there is a line of the square script, cut in the end wall, where only the robbers would ever see it: {i}Labour of thieves: not costed. With thanks.{/}" },
        { name = "the threshold", description = "Worn in a dip by people standing on it, pushing." },
      },
      actions = {
        { "Push the false door", say "You push. It is a wall. You put your shoulder to it, as every traveller in three thousand years has done on this spot, and for the same reason: it does look so like a door. The auditor, away round the corner, calls out without looking, \"It's a wall.\"" },
      } },
    { name = "the offering table",
      description = "A slab at the foot of the east face, where food was to be left for the King for ever. He left an endowment. It is itemised. It pays for one fig a day.",
      things = {
        { name = "today's fig", description = "Purple, split, on the bare stone. A boy brings it out from the city every morning on a donkey. It is the oldest standing order in the world." },
        { name = "an ant road", description = "From the fig, down the leg of the table, across the sand to a hole. The fig is gone by noon. The ants are not itemised, and you wonder whether he knew, and then you look again at the size of the table, which is exactly that of one fig, and at how near it is to the ant hole." },
      },
      actions = {
        { "Eat the fig", say "You look round. Nobody. You reach for it. Your hand is over it when you notice the line cut along the edge of the slab: {i}Figs taken by travellers: allowed for. 1 in 40.{/} You have been foreseen. You eat the fig. It is very good. You feel, for the first time in your life, like a line in somebody's budget." },
      } },
    { name = "the queens' pyramids",
      description = "Three small ones in a row to the east, the height of a house. He had three wives, and built for each the same, to the block, and had it carved that he did so, to prevent talk.",
      things = {
        { name = "the third", description = "It is one course of stone taller than the other two. There is no entry for it. The auditors have known for ninety generations and have agreed among themselves to leave it out." },
      } },
    { name = "the quarry road",
      description = "A scar going off south toward a line of cliffs, with blocks lying by it here and there where a sledge broke.",
      things = {
        { name = "an abandoned block", description = "Cracked through in the hauling. On its side, in red paint, the gang's mark and a remark. The remark has been translated by the Collegium as {i}alas{/}. The gangs' descendants in the city say that it is not that word." },
      } },
    { name = "a seller of small pyramids",
      description = "A man with a tray, at the end of the causeway. Clay pyramids, the height of a thumb, each with a line of scratches on it.",
      things = {
        { name = "the price", description = "Scratched on each one: what the clay cost him, what the firing cost him, and his profit, which is small, and stated. He says that nobody will buy at this place from a man who does not show his working." },
      },
      actions = {
        { "Haggle", say "You offer half. He turns the pyramid round and shows you the figures. You look at them. You cannot, in conscience, offer half. You have no money in any case, and you tell him that. He scratches a new line on the tray: {i}Time spent on a person with one copper{/}, and against it a nought, and beside the nought, {i}pleasure{/}." },
      } },
    { name = "the shadow",
      description = "At this hour it lies to the east, a sharp black triangle half a mile long, with its point on a white stone. The stone has a number cut in it. So have a great many others, in a wide curve all round. He had the pyramid made to tell the time as well, there being no additional cost.",
      actions = {
        { "Stand in the tip of the shadow", say "You stand on the white stone with the point of darkness on your boots. You watch. In about a minute it has slid off your toes and you are in the sun. That is how fast the world is going. You had always thought of it as stopped." },
      } },
    { name = "the wind on the stone",
      description = "It comes across the flat with a load of fine sand and goes up the west face with a long dry hiss. In three thousand years it has taken off about the depth of a fingernail. The lines on that side are a little soft. They are still right.",
    },
  },

  exits = {
    { to = "pa_bazaar", label = "The causeway to the city", description = "Back along half a road, in strides, to the Gate of Accounts." },
    { to = "pa_audit_chamber", label = "In by the wrong sum",
      description = "A door where the figs did not add up, and a passage going down, cool, a little too low.",
      requires = flag "pa_sum_found", hidden = true },
  },
}

space {
  id = "pa_audit_chamber",
  region = "parch",
  secret = true,
  name = "The King's Own Account",
  description = "The passage is low, for a short man, and you go down it bent. It ends in a room no bigger than a parlour, cut in the living rock in the very middle of the pyramid, and quite plain. You had expected gold. There is a stone box. There is a stool, and a desk, and on the walls, from floor to roof, in red ink that is as fresh as yesterday, a second account. This one was not for the ages. He kept it for himself.",
  palette = { bg = "#110d0b", text = "#dccdb4", dim = "#7c6a54", accent = "#d0603c", border = "#5a3424" },
  ambience = {
    dust { glyphs = "·", color = "#4a3c2c", rate = 0.06, speed = 0.03 },
  },

  things = {
    { name = "the red account",
      wonder = true,
      icon = "≡",
      description = "You hold up a light and read. It is in his hand, the square one, but quick. {i}Owed to my mother: everything, not costed. Owed to the mason Hapu, who told me the truth about the first design: more than I paid. Owed to my second wife, for the years I counted when I should have listened: see below.{/} And below, it does not give a figure. It gives a list of evenings. {magic}Every wall is like that: all that he could not put a price on, entered one by one, in a column, with the total left open at the foot.{/} He was a man who could cost a mountain, and he came down here to a small room to write down what he could not.",
      things = {
        { name = "the east wall", description = "{i}Kindnesses received and not returned.{/} Four hundred lines. A cup of water from a quarry boy. A physician who sat up. A dog." },
        { name = "the west wall", description = "{i}Kindnesses done.{/} It is much shorter. He has been strict. Against several he has written {i}no: it was for show{/}, and struck them out." },
        { name = "the last line", description = "Low, by the stool, shaky. {i}Carried forward.{/} That is all. It is the same two words that are cut on the frame of the abacus." },
        { name = "a child's drawing among the figures", description = "A camel, in red ink, with five legs, low on the north wall, where a small person could reach. He has not struck it out. He has ruled a neat box round it and written {i}Asset{/}." },
      },
      actions = {
        { "Read the list of evenings", say "{i}The evening of the first flood, when she wished to walk by the river and I had the grain tally. The evening that the boy was ill. The evening of no particular day, when she said, Tot, put it down, and I said, one moment.{/} There are a great many. You stop reading. It is not yours. But you think, for the first time in a long while, of your father, and what he said, and whether it need have been the last thing." },
      } },
    { name = "the stone box",
      description = "Granite, plain, with a lid that was never polished. It is rather small. On the side, one line: {i}Here is Tot. He came to 1.{/}",
      things = {
        { name = "the lid", description = "It does not fit quite true. There is a gap at one corner that you could get a finger in. You do not. You notice that it is at the corner nearest the desk, as if somebody had wanted to be able to hear." },
        { name = "a dish at the foot", description = "Clay. A fig stone in it, dry as a bead. And beside that, a second fig stone, not dry at all." },
      },
      actions = {
        { "Pay your respects", say "You take off your hat. You cannot think what one says to a king, and say what you would to a neighbour: that it is a fine tomb, and that the figs were good. The air in the room does not move. But you have the distinct impression that somewhere a line has been ruled, and a small figure entered on the right hand side." },
      } },
    { name = "the desk",
      description = "A slab on two blocks, at a height for sitting. A palette with a cake of red and a cake of black, both used. Reed pens in a jar. A lamp.",
      things = {
        { name = "the abacus",
          key = "pa_abacus",
          description = "A counting frame, lying where a hand put it down: ten rods of black wood, with gold beads on nine and one bead of red clay on the tenth. A slip of papyrus is tucked under it.",
          variants = {
            { when = flag "pa_abacus_taken",
              description = "A clean oblong in the dust of the desk, the shape of a counting frame, and a slip of papyrus beside it. You have left the slip. It was addressed to you, in a way, and it seemed right that it should stay for the next." },
          },
          things = {
            { name = "the slip of papyrus", description = "{i}To whoever found the figs. You are not clever, or you would have trusted me, as the clever have. You only looked, and counted, and did not mind being the one to say. I had need of such a person and could not find one living. Take the frame. I could never move the last bead. It may be that it is not a king's to move.{/}" },
          },
          actions = {
            { "Take the abacus", when = no(flag "pa_abacus_taken"), set "pa_abacus_taken", give "pa_last_sum",
              say "It is heavier than it looks, with the gold. The beads slide and settle with a small click, like a door shut carefully in a house late at night. You try the clay one with your thumb. It does not move. You had not thought that it would. You have {gold}the Abacus of the Last Sum{/}.",
              fx "sparkle" },
          } },
        { name = "the pens", description = "Reeds, cut slant. One has been chewed at the end, to a brush. Kings chew their pens. You had not known that." },
        { name = "the lamp", description = "Clay, the shape of a slipper, with a thumbprint in it. There is oil in it still. It is lit. You did not light it." },
      } },
    { name = "the stool",
      description = "Three legs, a seat of woven rush, low. The rush is new.",
      things = {
        { name = "the new rush", description = "Green at the edges. Somebody reweaves it. You think of the boy with the donkey who brings the fig, and of the second fig stone, and of how a family might hold a small duty for three thousand years and not put it in any book." },
      },
      actions = {
        { "Sit on it", say "Your knees come up by your ears. From here the red columns are at the height of the eye, and the last line, {i}Carried forward{/}, is exactly where a hand would rest. You sit for a little. It is a good place to add up in. You get up before you have got very far." },
      } },
    { name = "the ceiling",
      description = "Flat, and painted the dark blue of the last hour of evening. There are no stars on it. In one corner there is a ruled grid, in chalk, where they were to be set out, and a note of the cost, and a line through the whole.",
      things = {
        { name = "the note", description = "{i}Stars: declined. Could not arrive at the number.{/}" },
      } },
    { name = "the grave goods",
      description = "On a shelf cut in the rock. Other kings took chariots. He took what he would need.",
      things = {
        { name = "a measuring cord", description = "Knotted at every cubit, coiled, with a peg. It is the one with which he laid out the base. The four sides are within a finger of each other and it annoyed him until he died, about the finger." },
        { name = "a pair of sandals", description = "Palm leaf, mended on the left with a thong. Itemised, on the wall behind: {i}Sandals, 1 pair, good for a further season.{/}" },
        { name = "a jar of ink, sealed", description = "Red. Spare." },
        { name = "a small wooden camel on wheels", description = "Much chewed. No entry. Not his, you would think. He has taken it with him all the same." },
      } },
    { name = "the air",
      description = "Cool, still, and it smells of figs, and of lamp oil, and faintly of the particular dust that comes off old paper. A draught comes in at ankle height through a slot in the wall, from the outside. He had allowed for visitors.",
    },
    { name = "the passage back",
      description = "Sloping up to a small bright oblong of day. On its wall, at intervals, his hand again, small: a tally of his own steps down, on each of the days that he came here while it was building. Four hundred and six days. On the last, the tally of steps comes down and there is not another that goes up.",
    },
    { name = "a spider in the corner",
      description = "Pale, long legged, in a web across the angle of two walls. The web is the only thing in the room that is not straight. It has caught, over the centuries, nothing, there being nothing. It mends the web every evening regardless, with what you have to call a sense of the place.",
    },
    { name = "the silence",
      description = "Three hundred feet of stone on every side of you. You can hear your own blood, going round, being counted.",
    },
  },

  exits = {
    { to = "pa_pyramid", label = "Up to the daylight", description = "Bent double, up the low passage, past the tally of steps, out by the figs." },
  },
}
