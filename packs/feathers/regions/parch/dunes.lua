-- East of the caravan road: the dunes that sing, the hermit on his pillar, the city
-- half out of the sand, and the library that has to be read before the wind.

space {
  id = "pa_dunes",
  region = "parch",
  name = "The Singers",
  description = "The dunes here are the largest in the Parch: a range of them, six hundred feet from foot to crest, the colour of apricots, with edges like the backs of knives. And they sing. You hear it a mile off as a hum in the feet. Among them it is a note, one single note, very deep, held, coming out of the whole body of the sand, so that your ribs take it up and your teeth, and the water shakes in your flask. It stops when the wind drops. Then the next dune over begins, a little higher.",
  palette = { bg = "#18110b", text = "#ecd8b8", dim = "#927654", accent = "#f0a050", border = "#70481f" },
  ambience = {
    dust { glyphs = "·˙∙", color = "#8a6a38", rate = 0.6, speed = 0.9 },
    shimmer { color = "#4a3418", strength = 0.2 },
  },
  backdrop = {
    "          ▁▂▃▄▅▆▇▆▅▃▂▁          ",
    "   ▁▂▃▄▅▆▇███████████▇▆▅▃▂▁     ",
    "▃▄▅▇████████████████████████▆▄▂▁",
  },

  things = {
    { name = "the song",
      wonder = true,
      icon = "∿",
      description = "You climb the nearest, on all fours, sliding back one step in three. At the crest the wind is blowing a plume of sand off the edge, and where it lands on the steep side the whole face begins to creep, a skin of it, a hand deep, pouring without a break from the top to the bottom. That is the voice. {magic}The dune is singing with its whole side, as a glass sings when you run a wet finger round it, and the note is so low and so wide that it does not seem to come from anywhere. It seems to be what the silence here is made of, turned up.{/} Each dune has its own. On a good day of wind, with all of them going, the caravans stop a day off and take their hats off.",
      things = {
        { name = "the low one", description = "The biggest dune, to the north, called Grandmother. Her note is so deep that you do not hear it. Your knees do. Camels lie down when she begins and will not be got up." },
        { name = "the high one", description = "A young dune, sharp, on the east side, with a voice like a finger on the rim of a cup. The drovers call it the Boy. It has grown up, they say, in their own lifetimes, and its voice has not yet broken." },
        { name = "the chord", description = "When three sing together it is not a tune. It is one sound with a great deal of room in it, such as a very large hall might make if a hall could hum. A musician from Great Shade came out with a lute to find the key of it. He is still here. He has cut the strings off the lute, one a year, and is down to the last." },
      },
      actions = {
        { "Slide down the singing face", say "You sit on the crest and push off. The sand goes with you, a whole river of it, and the note comes up through the seat of your trousers and out at the top of your head. It is like riding down the string of the largest fiddle in the world while somebody bows it. You arrive at the bottom buried to the waist, deaf, and wanting very much to go again." },
        { "Sing back", say "You pick the note, as near as you can, and hum it. Your voice wanders about beside the dune's like a puppy beside a horse. Then, for the length of one breath, you are on it, exactly, and you cannot hear yourself at all. You have vanished into it. You stop, quickly. It is some time before you are sure that you got all of yourself back." },
      } },
    { name = "the pillar",
      key = "pa_pillar",
      description = "In a hollow among the dunes, where no sand settles, stands a single column of stone, sixty feet high and as thick as a tree, left over from some building that is otherwise gone. It has a flat top, no wider than a table. On the top there is a man. He has been there for forty one years.",
      variants = {
        { when = flag "pa_basket_down",
          description = "The column, sixty feet of fluted stone alone in its hollow, and the man on top. A basket hangs beside it now on a long rope of plaited palm, at the height of your chest, turning. It is big enough for bread and a water jar. It is, if you tuck your knees up, big enough." },
      },
      things = {
        { name = "the hermit, from below", description = "A shape against the sky, sitting, with a beard that hangs over the edge and stirs in the wind. He does not look down. People come from the city to ask him things, and stand here, and shout up. He answers perhaps one in ten. They say that the answer is always the truth and seldom to the question." },
        { name = "the basket",
          description = "On a rope, let down once a day at sunset for a loaf and a jar. A woman from the city brings them. Her mother brought them before her.",
          things = {
            { name = "today's loaf", description = "Flat, round, with a thumbprint in the middle. He sends the basket back up with the loaf in it, and lets it down again with the crusts. For the birds, the woman says. He will not waste a crumb and will not own to liking birds." },
          } },
        { name = "the flutes of the column", description = "Twenty four grooves from top to bottom, sharp at the edges still. Somebody has cut footholds in one of them, a long time ago, to the height of a man. Then they stop. Whoever it was thought again." },
        { name = "the offerings at the foot", description = "Dates, a bowl of milk, a comb, a child's letter under a stone. And a new pair of sandals, every year, from the cobblers' guild, who have never given up hope." },
      },
      actions = {
        { "Shout a question up", say "You cup your hands and shout: what should an adventurer do? The dunes take it and hum it about. A long time passes. Then a voice comes down, dry, not loud, quite clear: \"Stand somewhere else. You are on the ants.\" You look down. You are. You move. It was, when you think it over, the best advice that you have had from anyone in authority." },
        { "Sing the dune's note up to him", when = no(flag "pa_basket_down"), set "pa_basket_down",
          say "You remember how it felt on the crest, and you find the note again, and hold it, facing the pillar. Your voice goes out. The whole hollow takes it up. On the top of the column the shape moves for the first time. A head comes over the edge. \"Forty one years,\" says the dry voice, \"they have shouted. Not one of them thought to ask in a way that I could hear over the singing.\" The basket comes down on its rope, empty, and stops at your chest. \"I cannot pull you. You will have to mind the rope yourself. There is a wheel.\"" },
      } },
    { name = "the musician",
      icon = "☺",
      description = "A thin man with a lute that has one string, sitting at the foot of the Boy with his ear against the sand. His name is Qill. He came out from Great Shade nineteen years ago to write down the song of the dunes, for the court, in an afternoon.",
      things = {
        { name = "the lute", description = "Pear bodied, inlaid, with eleven pegs and one string. He cut the others off, as he found that each of them was a note the dunes did not have. He plucks the last one now and then and listens, and shakes his head, and you can see that its days are numbered." },
        { name = "his notebook", description = "The first page is ruled with staves, and has a clef. The staves get further apart as you turn the pages. By the middle there is one line to a page. The latest pages have nothing on them at all, and he has dated each one, and he says that they are his best work." },
      },
      actions = {
        { "Ask what key it is in", say "\"That is what I asked,\" says Qill. \"It is not in a key. A key is a thing that you choose so as to leave the other notes out.\" He puts his ear back to the sand. \"This has not left anything out. I am learning it by taking away what I brought.\"" },
        { "Ask him to play", say "He plucks the one string. It is a good note, round and sad. On the instant, Grandmother begins, to the north, a long way underneath it. Qill winces. He takes a small knife from his sleeve and looks at the string, and then at you, and puts the knife back. \"Not in front of a guest,\" he says." },
      } },
    { name = "the sand",
      description = "It is not like other sand. Every grain is the same size and as round as a seed, polished, and when you pour a handful from one palm to the other it squeaks, like a boot on snow.",
      things = {
        { name = "a handful", description = "Apricot, with here and there one grain that is clear as glass and one that is black. You try to count a pinch. You get to four hundred and the wind takes it. King Tot is said to have sent a clerk out here to number the lot, and the clerk is said to have sent back a single word, which was not carved." },
        { name = "the booming hollow", description = "A dip in the flank where, if you stamp, the ground answers like a drum with a carpet on it. The sand here is dry to a great depth and has never been rained on. It has been falling down this same slope and being blown back up it for longer than the pyramid has stood." },
      },
      actions = {
        { "Put some in your pocket", say "You take a pinch for a keepsake. A mile later your pocket is humming. Faintly: you have to stand still. But it is the note, the Boy's, coming out of a spoonful of sand against your leg. By evening it has stopped. You look, and the grains are only grains. They do not sing away from home." },
      } },
    { name = "the crests",
      description = "Each dune comes up to an edge that you could cut bread on, curving away for a mile, with the wind smoking off it. One side is hard and ribbed. The other is soft, steep, and alive.",
      things = {
        { name = "the plume", description = "A flag of blown sand standing off the crest, gold against the blue, like a scarf. It is how the dune walks, grain by grain, over its own head." },
        { name = "a snake's track", description = "A row of slanting bars up the hard side, each a foot long and none of them joined, as though something had been thrown across the dune in pieces. It is one snake, going sideways. You do not see the snake. You see where the track ends, in the middle of bare sand, in nothing." },
      } },
    { name = "the camel that hums",
      description = "It has followed you from the crossing, at a distance, with its rope trailing. It is kneeling now at the foot of Grandmother with its neck stretched along the sand and its eyes shut, and it is humming, and for once it is exactly in tune.",
      actions = {
        { "Sit by it", say "You sit down against its side. It is warm, and shakes very slightly, as the dune does. It opens one eye, sees that it is you, and shuts it. Neither of you has to be anywhere. This is the first time since Greenhollow that you have been in company with anyone and not tried to make an impression." },
      } },
    { name = "the listeners",
      description = "A row of people on a low ridge, wrapped up, with their backs to you: come out from the city for the day, to sit. It is what one does. They bring bread. They do not talk. At sunset they get up, shake out their blankets, and go home, and are easier to live with for a week.",
      things = {
        { name = "a judge", description = "In plain clothes. He sits a little apart. He has a case to decide tomorrow and has brought it out here, he would tell you, to see whether it is as large as he thought. They never are." },
        { name = "two children", description = "Lying on their fronts with their ears on the sand, kicking their heels, giggling. They can feel it in their stomachs. They have a word for it that is not in the language." },
      } },
    { name = "the lee",
      description = "In the shelter of a great dune the air is dead still and the sand runs down in little threads, by itself, all day, like the top half of an hourglass.",
      things = {
        { name = "a thread of sand", description = "It starts for no reason, a trickle no wider than a finger, runs a yard, and stops. And when it stops there is, for a breath, a small sound from it, a creak, like a note that did not quite get out." },
      } },
    { name = "the ribs of something",
      description = "Curving up out of a slack between two dunes: grey timbers, a row of them, like the frame of a boat with the planks gone. It is a boat. This far from any water it is a hundred feet long.",
      things = {
        { name = "the keel", description = "Running under the sand, by the feel of it, for a good way in both directions. The dune comes and goes over her. In some years she is buried to the rail, and in some she stands out whole, and the listeners come to look at her." },
        { name = "a block and a rope end", description = "Hanging from a rib, wind polished. The rope is a kind that the Parch does not make. The knot in it is one that you have seen on Saltwick quay." },
      } },
    { name = "the east",
      description = "From a crest you can see beyond the Singers: lower dunes, paler, and among them, a day off, something square. Then another. Corners. Sand does not make corners.",
    },
    { name = "the evening",
      description = "When the sun gets low the dunes go the colour of the inside of a peach and then of a rose and their shadows fill up blue from the bottom like baths. The wind drops. One by one the voices leave off, the Boy last. In the quiet after, you can hear a single grain roll.",
      actions = {
        { "Wait for the last note", say "The Boy holds on, thin and high, by himself, as a child will keep singing after the grown people have stopped. Then the wind lets him go. Up on the pillar, small against the red, the hermit lifts one hand, as you might to somebody across a street who has just done a thing well." },
      } },
  },

  exits = {
    { to = "pa_caravan", label = "West, to the crossing", description = "Down off the dunes to the signpost of bones, with the hum going out of your feet." },
    { to = "pa_pillar_top", label = "Up, in the basket",
      description = "Knees to your chin, hand over hand on the wheel, sixty feet, not looking.",
      requires = flag "pa_basket_down", hidden = true },
    { to = "pa_buried_city", label = "East, to the corners", description = "A day over the pale dunes to where something square stands out of the sand." },
  },
}

space {
  id = "pa_pillar_top",
  region = "parch",
  secret = true,
  name = "The Top of the Pillar",
  description = "You come over the edge on your stomach. It is a circle of stone four feet across, sixty feet up, with nothing round it. On it are: a man, a water jar, a folded blanket, and now you. There is not room for both of you to sit unless one hangs his legs over. He hangs his legs over. He has had the practice. \"Do not look down for a little,\" he says. \"Look out. Down is the same from anywhere. Out is what one comes up for.\"",
  palette = { bg = "#13121a", text = "#e8dcc8", dim = "#8a7c80", accent = "#f0b070", border = "#5a4660" },
  ambience = {
    dust { glyphs = "·˙", color = "#6a5a4a", rate = 0.2, speed = 0.8 },
    stars { glyphs = "·˙", color = "#5a5870", rate = 0.05 },
  },

  things = {
    { name = "the hermit",
      icon = "☺",
      description = "Old Steadfast Ibb. He is the colour and texture of the pillar and is not, when you see him close, particularly old: fifty, perhaps, under the beard. He was a clerk at the Gate of Accounts. One morning he counted the nine thousandth person through, and laid down his tally, and walked out by the gate himself, and kept on until he came to something that he could get to the top of.",
      things = {
        { name = "his beard", description = "It goes over the edge and hangs down a good four feet. Swallows from the city wall have tried to nest in it. He has spoken to them." },
        { name = "his feet", description = "Bare, hanging over sixty feet of air, as easy as off a bed. The soles are like the pads of the Duchess's knees. He has not had them on the ground since the day that he came up, and says that he no longer recalls what was so good about it." },
        { name = "his eyes", description = "Very pale, very clear, with lines at the corners that come from looking a long way. When he turns them on you, you feel that you are being seen from a distance, even at two feet, and that it is a kinder view." },
      },
      actions = {
        { "Ask why he came up", say "\"I counted people,\" he says. \"Nine thousand. And I found that I could tell you how many and not one thing more about any of them. I thought: I shall go where I can see all of them at once, and learn what they are.\" He looks out. \"From here they are very small and they are all going somewhere. That is as far as I have got. But I no longer count.\"" },
        { "Ask why he does not come down", say "\"I mean to.\" He says it quite simply. \"When I have seen it. Every day I think: there, that is all of it now, I have it. And then a caravan comes over the rise that I did not expect, or a cloud. It keeps not being finished.\" He smiles. \"The cobblers send sandals. I have forty one pairs up here. I use them to sit on.\"" },
        { "Ask what the dunes are singing", say "He is quiet for so long that you think he has not heard. \"I thought for ten years that it was a word,\" he says. \"Then for ten that it was a name. Now I think that it is what a thing does when it is very large and has nobody to tell.\" He tilts his head at Grandmother. \"I hum it back to her at night. I do not know that it helps. I should want someone to.\"" },
        { "Ask for advice", say "\"You are the one who was standing on the ants.\" You admit it. \"Then you can be told. Most cannot.\" He thinks. \"Wherever you get to, you will want to say that you got there. Do not. Sit down first and see what it is. I came up here to be a holy man, and it took me nine years to notice the view.\"" },
      } },
    { name = "the view",
      wonder = true,
      icon = "◌",
      description = "You do as he says. You look out. And the Parch, which from the ground was a wall of heat with you at the bottom of it, lies down flat and lets itself be seen. {magic}West, a thread of white stones and on it a line of dots that is a caravan, and beyond that a spark, which is the lamp on the gable at Budget's End. South, a stain of colours, which is the awnings. A sharp grey tooth: the pyramid. North, a floor of light with no far edge. And all round, the dunes, in ranks, each one carrying its little smoke, going east together like a sea that has agreed to take its time.{/} Nothing in it is in a hurry, and nothing in it is lost. You can see where everybody is.",
      things = {
        { name = "the caravan, from above", description = "Thirty dots and a pale one in front. From here they are in one line, and they do not seem to move. He tells you that they are the hands of his clock. When the pale dot reaches the rise it is the third day, and somebody will bring bread." },
        { name = "the two dark lines", description = "You find them, very faint, running east from the spark at the railhead: straight, side by side, over dune and flat alike, going on past the Singers and on, toward the edge. \"Oh, yes,\" says the hermit. \"They have always been there. I assumed that someone would be along.\"" },
        { name = "a flash, in the north", description = "On the white. It comes, and goes, and comes: sun on water, where there is no water. From here, and only from here, you can see what is under it. A ring of green, as small as a seed. He has known for forty one years. \"I did not like to tell them,\" he says. \"They are so sure.\"" },
        { name = "the shadow of the pillar", description = "A black line lying across the hollow, with a small knob on the end of it that is two heads. It moves round through the day. There are stones set at the hours, by the people from the city, who could not bear to see a thing so regular and not make a use of it." },
      },
      actions = {
        { "Find Greenhollow", say "You look west, as far as there is, past the railhead and the sixty one miles and the brass city under its smoke. You cannot see it. It is over the edge. But you find that you know the direction to the inch, and that you are leaning that way a little, like a plant. The hermit does not remark on it. He hands you the water." },
      } },
    { name = "the top",
      description = "A disc of stone, worn hollow in one place, the shape of a seated man. Round the rim, cut very small, there is a tally of days, by sevens. It goes all the way round and has started on a second ring inside the first.",
      things = {
        { name = "the hollow", description = "Polished, and warm. He moves out of it to show you. Forty one years of one person, sitting, in one spot, has done to the stone what the rope has done to the well curb." },
        { name = "the socket in the middle", description = "A square hole, a hand deep, cut by the first builders. Something stood on this pillar before he did. A statue, he thinks. He found two bronze toes in the socket, and keeps them, and has speculated a good deal about the rest of the person." },
        { name = "the forty one pairs of sandals", description = "Stacked, new, in a neat block, with the blanket on top. It makes a seat. \"The cobblers believe that one day I shall need them,\" he says. \"I do not like to send them back. A man should not be the death of another man's hope, merely to be tidy.\"" },
      } },
    { name = "the wheel and the rope",
      description = "A wooden drum on an iron pin, set in the edge, with a rope of plaited palm going down to the basket. He let it down for bread for forty one years and never for a person.",
      things = {
        { name = "the rope", description = "He plaits it himself, a yard a week, from fronds that the woman sends up, and feeds the new end on at the top as the old end frays at the bottom. It is the same arrangement as at the well of the Long Wait. He was pleased to hear that. He thought that he had invented it." },
      } },
    { name = "the water jar",
      description = "Clay, unglazed, sweating, with a cup upside down over the neck. One jar a day. He drinks half, washes in a quarter, and with the rest waters something.",
      things = {
        { name = "a plant in a crack", description = "On the north side of the rim, where a seed lodged: a caper bush, no bigger than a hand, with one white flower. Sixty feet up a pillar in the middle of the Singers. He gives it a quarter of his water. He says that he came up here to be alone and that it is extraordinary what follows one." },
      },
      actions = {
        { "Take a drink", say "He pours for you, into the cup, exactly as much as he pours for the caper bush. It is the measure of a friend, up here. You drink it in three sips. You would have liked a fourth and are careful not to look as though you would." },
      } },
    { name = "the wind up here",
      description = "Steady, from the west, clean of sand at this height. It smells of nothing at all. Below you, where it meets the dunes, you can see it pick up its load and start them singing, one by one, as a hand goes along a row of glasses.",
    },
    { name = "the note, from above",
      description = "Down in the hollow it shook your teeth. Up here it is under you, like a floor. You can hear all of the dunes at once, each in its place, and a thing that you could not hear among them: that they take it in turn. They are not singing together. They are answering.",
      actions = {
        { "Listen for the pattern", say "Grandmother. A wait. The two to the south, together. A wait. The Boy, high, a little late, as always. Then round again. \"Every evening,\" says the hermit. \"The same order. I used to think that the first of them was asking a thing. Now I think that she is only counting them, to see that they are all in.\"" },
      } },
    { name = "the edge",
      description = "There is no rail. There is the stone, and then there is not the stone. He sits on it as you would on a doorstep.",
      actions = {
        { "Look down", say "You look down. The pillar goes away beneath you to a point, and at the point is a basket the size of a thimble. Your stomach leaves. The hermit takes a handful of your coat, without haste, and holds it until your stomach has come back. \"Out,\" he reminds you. \"I did say.\"" },
      } },
    { name = "the letters",
      description = "A bundle, under the blanket, tied with rope yarn: everything that has been left for him at the foot in forty one years. He reads them at dusk. He cannot answer. He has no pen, and had not thought to bring one, being at that time done with writing.",
      things = {
        { name = "the child's letter", description = "This morning's. {i}Dear man on the pillar. My brother says you are stuck. If you are stuck, hold up one arm, and I will tell my father, who has a ladder.{/} The hermit looks at it for some time. Then he holds up one arm, for a moment, quite seriously, toward the city. \"In case,\" he says. \"I should not like her to think that I had not been asked.\"" },
      } },
    { name = "the night, from up here",
      description = "He tells you to stay for it, and you do. The cold comes. He gives you half the blanket. And then there are the stars, in all of the sky and not only the top of it, down past the level of your feet on every side, and you are sitting on a small round stone in the middle of them with a man who has not counted anything in forty one years.",
    },
  },

  exits = {
    { to = "pa_dunes", label = "Down, in the basket", description = "Knees up, eyes shut, the wheel creaking, and the note coming up to meet you." },
  },
}

space {
  id = "pa_buried_city",
  region = "parch",
  name = "The City Half Out",
  description = "A dune has been lying on this place for a very long time, and is now, at its own pace, getting off. What it leaves behind is a city. A street comes out of the sand slope as a road comes out of a tunnel, paved, kerbed, with houses on both sides whole to the roof, and runs a quarter of a mile in the sun, and goes in again under the next dune. The doors are open. There are jars standing on the steps. You have the sense, very strongly, of having arrived a moment after everybody stepped out.",
  palette = { bg = "#14110e", text = "#e0d6c2", dim = "#867a66", accent = "#c8a878", border = "#5e5038" },
  ambience = {
    dust { glyphs = "·˙", color = "#6e6044", rate = 0.35, speed = 0.3 },
  },
  backdrop = {
    "▁▂▃▄▅▆▇██▇▆▅▄▃▂▁             ▁▂▃▄",
    "████████████████▙ ▗▄▖ ▗▄▄▖ ▟████",
    "█████████████████▙▐█▌▁▐██▌▟█████",
  },

  things = {
    { name = "the street coming out of the dune",
      wonder = true,
      icon = "▚",
      description = "You stand where the sand ends. Behind you the dune goes up, steep and smooth, and the street runs straight into the foot of it, and you can see the paving go on under the slope for a yard, two yards, before it is covered. At that line a doorstep is half out. A window is half out. {magic}And as you watch, a little sand lets go and runs down, and there is a hand's breadth more of wall than there was: a painted wall, blue, as bright as wet, that has not been looked at since before your country had a name.{/} The dune moves a pace in a year. Every year the city has one house more at this end, and one less at the other.",
      things = {
        { name = "the line of the sand", description = "You can put your hand on it: here, plaster, cool; here, the dune, hot. There is a mark scratched on the wall at the line, with a date. And another a pace back. And another. Somebody comes every year to see how far it has got." },
        { name = "the blue wall", description = "A band of painted lotus along the bottom. And above, where the newest sand has just fallen away, the first inch of something else: a row of toes. Next year there will be feet. The whole of a person is coming out of there, at a pace a year, from the ground up." },
        { name = "the far end", description = "A quarter of a mile east, the other dune is coming on. The last house at that end is in to the windowsills. Its door has been shut, and a stone put against it, by whoever keeps count, as you would close the eyes of someone." },
      },
      actions = {
        { "Clear a little sand", say "You brush at the slope by the blue wall with the flat of your hand. Sand runs. A hand's breadth of plaster comes clear, and on it, in red, an ankle, with a bangle. You stop. It is not that you are afraid of spoiling it. You find that you would sooner be made to wait, like everybody else." },
      } },
    { name = "the houses",
      description = "Mud brick, plastered, two floors, flat roofed, built round courts like the houses of Great Shade. They are not ruins. The roofs are on. The dune kept everything as it was.",
      things = {
        { name = "a house with the door open",
          description = "You go in. It does not feel like trespass. It feels like being early.",
          things = {
            { name = "the table", description = "Low, laid for six. Bowls, cups, a bread basket with the cloth still folded over. There is no food in anything and no dust on anything. A seventh cup has been set at the corner, a small one." },
            { name = "the hearth", description = "Swept, with a fire laid ready: palm rib, thorn, and a twist of dry grass to start it. You put your hand over it. Cold, of course. But laid. The law of the desert was kept here too, for the next person, by people who can hardly have expected one." },
            { name = "a loom", description = "Upright, in the court, with a carpet a quarter made on it. Plum coloured. A border of running gazelle has been begun along the bottom, nose to tail, and the knots stop in the middle of an animal." },
            { name = "a child's toy on the stair", description = "A camel of baked clay on four wheels, with a string. It has been left on the third step, where it would be fallen over. Somebody was going to be told about that." },
          } },
        { name = "the doorsteps", description = "On every one stands a jar, with a dish over its mouth. Water, for whoever passes. They are dry now. But somebody has gone down the street quite lately and turned each dish the right way up again where the wind had shifted it." },
        { name = "the lintels", description = "Over each door, where in Great Shade there would be a blue hand, there is a single line cut in the plaster: a curve, like the edge of something round. Every house has it and it is the only mark that any of them has." },
      },
      actions = {
        { "Call up a stair", say "\"Hello?\" It goes up through the house and comes back unanswered. But it does not come back hollow, as from an empty place. It comes back soft, as a voice does in rooms with rugs in them and people's coats." },
      } },
    { name = "the keeper of the count",
      icon = "☺",
      description = "A square, slow woman called Mother Yarrow, with a broom and a book, who lives in a tent at the mouth of the street. Her family have watched the dune go over this city, and come off it, and go over it again, for longer than they can reckon. They sweep what is out. They write down what goes in.",
      things = {
        { name = "her book", description = "Every house, as it comes out: what was on the table, what was on the stair. And every house as it goes under at the far end, the same, with a date. Some houses are in the book six times. She says that the city has been all the way across and back, under the dunes, the way a pebble goes about in a stream." },
        { name = "her broom", description = "Palm frond. She sweeps each floor once, when it comes out, and does not touch another thing. \"We are not the owners,\" she says. \"We are only the neighbours. You sweep a neighbour's step when they are away. You do not go through their cupboards.\"" },
      },
      actions = {
        { "Ask who lived here", say "\"Nobody knows the name of it. It is not in the King's accounts and it was old when he was carving.\" She leans on the broom. \"The story is that they turned a guest away, and the sand came in a night. I never believed it. Look at the doorsteps. Look at the hearths. These were not people who turned anybody away. I think that they are only out, and that it is taking longer than they meant.\"" },
        { "Ask where the people are", say "\"There are no bones,\" says Mother Yarrow. \"In all the times round. Not one. Not a dog.\" She looks down the bright street. \"The tables are laid. The fires are laid. You do that when you are coming back for supper.\" She shrugs. \"So we keep the place. It would be a poor thing if they walked in and found the step not swept.\"" },
        { "Ask about the dry channel", when = no(flag "pa_library_open"), set "pa_library_open",
          say "\"You saw that.\" She is pleased. \"Most go straight to the painted wall. Down the middle of the street, the gutter. It never has sand in it. Not a grain. The wind goes along it like water in a ditch, always the one way, east to west, and at the end of it there is a door that I do not sweep.\" She points with the broom. \"The house of the books. You may go in. You may read. But you must read quickly, and you must not mind. Whatever you look at in there, you are the last who will.\"" },
      } },
    { name = "the dry channel",
      description = "A gutter of dressed stone down the middle of the street, a hand deep. Everywhere else the sand has drifted in corners and against sills. In the channel there is none. It is as clean as a licked spoon, from one dune to the other.",
      things = {
        { name = "the wind in it", description = "You put your hand down. A cold thread of air is running along the bottom, steadily, as if poured. It lifts the hairs on your wrist. It is going the same way as the dune." },
        { name = "a leaf, travelling", description = "A dry palm leaflet, sliding along the channel at a walking pace, turning the corners. You follow it. It goes down the street, and in at a doorway on the left, under the door." },
      } },
    { name = "the square",
      description = "Half way along, the street opens into a court with a well and a tree. The tree is dead, and as hard as iron, and has every twig. The well has a rope.",
      things = {
        { name = "the well", description = "You let the bucket down. A long way. It comes up with a cupful of sand in it, dry, and under the sand a spoonful of water, cold. So it is still there, underneath, where it was. You tip the first cup back, as you were taught at the Long Wait, and hear it land." },
        { name = "the iron tree", description = "A fig. On one twig, where the bark has split, there is a bud. Mother Yarrow has been watching it for eleven years. She says that it has not got bigger. She says that it has not got smaller, either, and that for a tree three times buried she calls that keen." },
        { name = "a game cut in the paving", description = "Two rows of holes, with pebbles in them. You know it. The two old men at the Long Wait are playing it now. Here, one side has been left a single move from winning." },
      },
      actions = {
        { "Make the winning move", say "You pick up the pebble. You hold it over the last hole. Then you put it back where it was. It is not your game. Whoever it is will want to do that for themselves, and see the other's face." },
      } },
    { name = "a shop",
      description = "Open fronted, with a counter and shelves. On the shelves, in rows: lamps. Clay ones, the shape of slippers, hundreds, all new, none ever lit.",
      things = {
        { name = "a lamp with a thumbprint", description = "You pick one up. There is the print, in the clay, and it fits your thumb. Old Tassa Wick has the brother of this on her shelf of old lamps, dug up, black at the nose, sold by the basket. This one has never been bought." },
        { name = "a tally on the counter", description = "Scratched with a nail: strokes, in fives, for the day's sales. Three fives and two. Then the nail, lying where it was put down." },
      } },
    { name = "the roofs",
      description = "You go up an outside stair. The roofs are flat, joined, with low walls, so that a person could walk the length of the city up here. On each there is a frame of poles, bare.",
      things = {
        { name = "the awning frames", description = "For cloth. The cloth is gone, and the knots of the cords are still on the poles, tied in a way that the menders of Great Shade tie them to this day and suppose that their grandmothers invented." },
        { name = "a row of small pots", description = "On a parapet, with dry earth in them. Somebody's herbs. Mother Yarrow waters them. Nothing has come up. She waters them all the same, on the principle of the cobblers and the sandals." },
      } },
    { name = "the sand in the corners",
      description = "Fine, pale, in drifts against every wall. You notice after a while that it has been swept into those drifts, neatly, and that each one has the mark of a broom.",
    },
    { name = "the light",
      description = "The sun comes straight down the street between two walls of sand. It is very quiet and very bright. The shadows of the doorways are black, and cool, and each one seems to have just had somebody go into it.",
    },
    { name = "a cat",
      description = "Sand coloured, long eared, walking down the middle of the street toward you with its tail up. It comes out of the houses at this end. It is not Mother Yarrow's. It has always been here, she says, or one like it, each time the street comes out: sitting on a doorstep, washing, as if it had only been shut in.",
      actions = {
        { "Hold out your hand", say "It comes and puts its head under your palm, hard, and goes round your legs twice. It is the most solid thing in the city. Then it walks off, without looking back, into the house with the laid table, and jumps on to the seventh stool, the small one, and sits, facing the door." },
      } },
  },

  exits = {
    { to = "pa_dunes", label = "West, to the Singers", description = "Back over the pale dunes, a day, with the hum coming up to meet you." },
    { to = "pa_sand_library", label = "The house of the books",
      description = "Along the dry channel and in at the door that she does not sweep.",
      requires = flag "pa_library_open", hidden = true },
  },
}

space {
  id = "pa_sand_library",
  region = "parch",
  secret = true,
  wonder = true,
  name = "The Library of Sand",
  description = "It is one long room, with a floor of smooth pale sand raked as level as a table, and no shelves. The books are the floor. From wall to wall and end to end the sand is written on, in line after line of small clear script, drawn with a fingertip: thousands of pages laid side by side, with a path of flat stones between them to walk on. At the east end a slot in the wall lets in the wind from the channel. It comes across the floor at the pace of a slow walk, about an inch high. Where it has been, the sand is blank.",
  palette = { bg = "#12110f", text = "#e6dcc6", dim = "#8c8068", accent = "#e0c890", border = "#5c5238" },
  ambience = {
    dust { glyphs = "·˙", color = "#7a6c4c", rate = 0.5, speed = 0.5 },
  },

  things = {
    { name = "the written floor",
      icon = "≡",
      description = "You kneel on a stone and read the nearest page. It is a recipe for lamb with dried limes. The next is a letter of apology. The next a proof, with a diagram, that there is no largest number. The next a list of the names of somebody's goats. {magic}Every one is finished, and signed with a small mark, and laid beside its neighbour without any order at all, as people stand in a crowd. And the edge of the wind is coming over them like the shadow of a cloud over a field, and behind it there is nothing.{/} You will read this page. The one beyond it, you will not be in time for.",
      things = {
        { name = "a page of the proof", description = "{i}Suppose that there were a largest. Add one.{/} That is all the proof. Below it the writer has drawn a small face, smiling. It is the oldest joke in mathematics and it was made here first, and nobody will know." },
        { name = "a page of the goats", description = "{i}Bold. Sorry. Little Bold. The One That Looks At You. Dinner (not to be told).{/} There are forty. Whoever it was knew every one. The wind is at the top of the page." },
        { name = "a love letter", description = "You read two lines and look away. It is a good one. It was not for you. In a minute it will not be for anybody, and you find, kneeling there, that you are saying the two lines over, so that they will have been somewhere." },
        { name = "the edge of the wind", description = "A line across the whole floor, straight as a rule. On this side, writing. On that side, sand as smooth as a sheet. At the line itself the letters are going, a stroke at a time, from the top down, and you can hear it: a very small hiss, like a page being turned that does not stop." },
      },
      actions = {
        { "Read as fast as you can", say "You go from stone to stone on your knees. A remedy for hiccups. A complaint about a neighbour's awning. A poem that does not scan, about a well. What a mother told her daughter on the night before her wedding. The wind is at your ankles. You read standing, bent double, backing away before it, a line here, half a line there, the middle of a sum, the end of a story without its beginning. Then you are against the west wall, and the floor is blank from end to end, and you are the only place where any of it is." },
      } },
    { name = "the librarians",
      icon = "☺",
      description = "Three people in grey, barefoot, at the west end, where the wind has finished. They are writing. Each has a rake, and each, when the sand is smooth, kneels and begins a new page with one finger.",
      things = {
        { name = "the eldest", description = "A woman so old that she writes lying on her side. She is setting down everything that she can remember of her grandmother's kitchen. She has been at it for a year, a page a day, and each day's page is gone by the next evening. She says that she finds it a great relief." },
        { name = "the middle one", description = "A man, writing figures. He is working out something very long. He does a day's worth, and reads the last line over until he has it by heart, and that line is all that he carries to the next morning. It has been, he says, eleven years, and the line keeps getting shorter. He thinks that he is nearly there." },
        { name = "the youngest", description = "A girl of ten or so, the tunnel keeper's cousin. She is writing down what she had for breakfast. She does it every day. She says that somebody ought to, and that the others only do the big things." },
        { name = "the rakes", description = "Wooden, with fine teeth. They smooth the sand after the wind, so that the next page has a fair start. Nobody rakes ahead of the wind. That would be to choose." },
      },
      actions = {
        { "Ask why they write it in sand", say "\"So as to be able to,\" says the man. He sees that this has not helped. \"In a book that keeps, you may put only what is worth keeping. So nobody writes down their goats. Here it is all going by evening. You may put anything.\" He smooths a place with his palm. \"There is more truth in this room on a Tuesday than in the whole of the King's pyramid, and it does not owe anybody an onion.\"" },
        { "Ask who reads it", say "\"Whoever comes,\" says the eldest, from the floor. \"Mostly no one. The wind reads it. It reads every word, I have watched, it does not skip.\" She draws a line. \"I used to mind. Then I thought: I never knew who read the other kind, either.\"" },
        { "Ask if anything has ever stayed", when = no(flag "pa_page_asked"), set "pa_page_asked",
          say "They look at one another. The girl gets up and takes your hand, and leads you along the stones to the south wall, to a place where the raked floor has a square of a different colour in it, a hand across. \"The wind goes round that one,\" she says. \"It always has. It was here when the first of us came. We do not know why that one. We have tried to write as well as that. It is only a line.\" She looks up at you. \"Mother says that it is waiting for someone who would not think it was much.\"" },
      } },
    { name = "a square that the wind goes round",
      key = "pa_square",
      visible_if = flag "pa_page_asked",
      description = "By the south wall: a tile of sand, a hand across and a finger thick, a little darker than the floor, with one line written in it. The edge of the wind comes to it, and divides, and closes again on the other side, as water does at a stone.",
      variants = {
        { when = flag "pa_page_taken",
          description = "By the south wall, a square hollow in the raked floor, a finger deep. The wind comes to it now, and goes straight over, and fills it a little more each time. The girl has written in it, the first day, with her finger: {i}egg, bread, a fig{/}. It was gone by evening. She was delighted." },
      },
      actions = {
        { "Read the line", say "{i}I was here and it was a good day.{/} That is the whole of it. No name. You look at it for some time. You had expected a secret. You say, without thinking, that it is not much. Behind you the three librarians have stopped writing." },
        { "Pick it up", when = no(flag "pa_page_taken"), set "pa_page_taken", give "pa_windproof_page",
          say "You slide your fingers under the edge, as under a slice of bread, and lift. It comes up whole. It holds together like a slate. Not a grain falls. \"There,\" says the eldest, from the floor, with great satisfaction, as if a tooth had come out. \"We could not shift it. It would not come for anyone who thought that it was holy. Take it out into the world. It has been indoors long enough.\" You have {gold}the Windproof Page{/}.",
          fx "sparkle" },
      } },
    { name = "the wind slot",
      description = "At the east end, a slit in the wall at floor level, the width of the room and two fingers high, cut in a single stone. The air from the dry channel comes through it flattened, like dough through rollers.",
      things = {
        { name = "the lip of the slot", description = "Carved along it, in the old script of the city, that nobody reads. The librarians have a tradition of what it says: {i}Make room.{/}" },
      },
      actions = {
        { "Stop it with your hand", say "You lay your arm along the slot. The wind goes round your elbow. You lie down and block it with the whole of yourself. It comes over your back. The girl watches. \"Everyone tries,\" she says. \"You would need to be the wall.\" You get up, with sand in your ear. Behind you a recipe for lamb has gone, in the time that you wasted." },
      } },
    { name = "the path of stones",
      description = "Flat slabs, a stride apart, laid in lines between the pages, so that a reader need not tread on the words. They are worn in the middle. The wear is on the east side of each, where people have stood facing the wind, reading against it.",
    },
    { name = "a page being written",
      description = "At the west end, on fresh raked sand, the eldest's finger moving. {i}The big pot hung on the left. There was a crack in the wall behind it shaped like a goose. In the mornings the light came through the door as far as the third tile.{/}",
      actions = {
        { "Write something yourself", say "They make room for you. The sand is cool, and takes a line as butter does. You cannot think of anything. Then you write: {i}Greenhollow. A square, a well, a notice board. Marta sells onions. I left on a Tuesday.{/} It looks very small. The man reads it over your shoulder, all of it, twice, with close attention, and says, \"I should like to have seen the notice board.\" By evening it will be gone. You find that you do not mind. It was true while it was there." },
      } },
    { name = "the blank end",
      description = "The western third of the floor, where the wind has been and the rakes have followed: smooth, pale, without a mark, like snow that nobody has walked on. It is the most restful thing that you have seen in the Parch. Every word that was ever on it was meant.",
    },
    { name = "the ceiling",
      description = "Vaulted, plastered white, quite bare. They thought of painting it. It was decided that a person lying on the floor to write should have somewhere to look where there was nothing to read.",
    },
    { name = "the door that is not swept",
      description = "Behind you. Sand has blown in under it in a fan, and on the fan, each morning, the first librarian in writes the date. That is the only record that the library keeps of itself, and it is on the doormat.",
    },
    { name = "a reader, asleep",
      description = "Against the north wall, on a stone, with her chin on her knees: a scholar from the Collegium, by the gown. She came to copy the library. She brought forty notebooks. They are in a stack beside her, and all forty are blank, and there is a pencil behind her ear with the point still on it.",
      things = {
        { name = "her notebooks", description = "You open the top one. On the first page, one line, crossed out: {i}It would not be the same thing.{/}" },
      },
    },
    { name = "the sound",
      description = "The small steady hiss at the edge of the wind. The scratch of a finger. Breath. It is the quietest room that you have been in where everybody was busy.",
    },
  },

  exits = {
    { to = "pa_buried_city", label = "Out to the bright street", description = "Over the fan of sand on the doormat, mind the date, into the sun." },
  },
}
