-- The Long Wait, the caravanserai at the edge of the sand, and the caravan that leaves from it.

space {
  id = "pa_caravanserai",
  region = "parch",
  name = "The Long Wait",
  description = "Four mud walls the height of three men, one gate, and inside them a square yard with a well in the middle and rooms all round. It has stood a mile from the end of the railway since long before there was a railway, and is called what it is called since a caravan leaves when the camels are ready, and not before. In the yard there are bales, bells, a smell of coffee and dung, and a number of people who are not in any hurry and would like you to notice it.",
  palette = { bg = "#16110a", text = "#e0d2b2", dim = "#877450", accent = "#e0963c", border = "#66481f" },
  ambience = {
    flicker { color = "#ffb060", strength = 0.12 },
    dust { glyphs = "·˙", color = "#6a5a34", rate = 0.2, speed = 0.2 },
  },

  things = {
    { name = "the keeper",
      icon = "☺",
      description = "Ama Shool, a broad woman with a ring of keys at her belt, one for each room and one very small one that she does not explain. She runs the Long Wait as her mother did and her mother's mother, by standing in the middle of it and knowing everything.",
      things = {
        { name = "her keys", description = "Forty rooms, forty keys, on a hoop of iron. She can find any one of them without looking. The very small one is silver and has a tooth mark in it." },
        { name = "her slate", description = "Hung at her hip. On it she keeps who has come and who has gone. The column for {i}gone{/} is shorter. She says it evens out, given time." },
      },
      actions = {
        { "Ask for a room", say "\"How long?\" You say one night. She laughs, kindly, for some time. \"Nobody stays one night. The caravan goes when it goes. I'll put you down for {i}a while{/}.\" She writes it. \"You pay when you leave. If you're poor by then, you sweep.\" You are poor now. You say nothing." },
        { "Ask when the caravan leaves", say "\"When the Duchess gets up.\" You ask who the Duchess is. Ama Shool points with her chin at the largest camel in the yard, which is kneeling, with its eyes half shut, like a sofa that has decided against it. \"Last time she took nine days. There was a wind she didn't care for.\"" },
        { "Ask about the desert", say "\"South and east, the city, three days. North, the salt, where nobody goes twice. East, the dunes that sing, and you'll wish they wouldn't.\" She looks at your boots. \"Drink before you're thirsty. Rest before you're tired. And when you see water where there isn't any, don't argue with it. It was here first.\"" },
      } },
    { name = "the well",
      description = "A round stone curb in the middle of the yard, with a wheel, a rope, and a leather bucket. It is two hundred feet deep and was dug, they say, by one family, a foot a year. Everything here stands round it, as a village does round a fire.",
      things = {
        { name = "the rope", description = "Camel hair, as thick as your wrist, polished by hands. It has been replaced a yard at a time for so long that there is none of the first rope left in it, and it is still called by the first rope's name, which is Patience." },
        { name = "the bucket", description = "It comes up slowly, turning, and the water in it is so cold that the leather sweats. The first cup always goes back down the well. Nobody could tell you who it is for. They would be shocked if you kept it." },
        { name = "the grooves in the curb", description = "Where the rope has run, the stone is cut into channels a hand deep. There are eleven. When a groove gets too deep they move the wheel round. Ama Shool says that the stone will last another thousand years, and then they will turn it over." },
      },
      actions = {
        { "Draw water", say "You wind. It takes longer than you thought anything could take. The bucket comes up at last, and you tip the first cup back, since everybody is watching to see if you will. You hear it fall. You count to six before it lands. Then you drink, and for a moment you are in no hurry yourself." },
      } },
    { name = "the camels",
      description = "Thirty or so, kneeling in rows along the north wall, groaning now and then like doors in a large old house. Each one has an opinion and they are not all the same opinion. The noise in the yard at any hour is mostly the camels disagreeing.",
      things = {
        { name = "the Duchess",
          key = "pa_duchess",
          icon = "Ω",
          description = "The lead camel: enormous, pale as pastry, with eyelashes a hand long and a bell at her neck the size of a bucket. Where she goes the rest go. Where she kneels the rest wait. She has crossed the Parch two hundred times and thinks poorly of it. She is looking at you now, down the whole length of her nose, and finding the same.",
          variants = {
            { when = flag "pa_camel_agreed",
              description = "The lead camel: enormous, pale as pastry, with a bell at her neck the size of a bucket. She has had the best date. She regards you now with something that is not approval but has stopped being the other thing. When you move toward the gate, one of her ears follows you." },
          },
          things = {
            { name = "her bell", description = "Bronze, green with age, with a note like a slow yes. The other camels wear small bells tuned above it. A caravan at a distance sounds like one large patient thought and thirty small anxious ones." },
            { name = "her eyelashes", description = "Two rows. They keep out sand, flies, and a good deal of what is said to her." },
            { name = "her knees", description = "Horned pads like old saddles. When she gets up it is done in three parts, back, front, back, with a remark at each. It has never been hurried. A sultan tried." },
          },
          actions = {
            { "Order her to stand", say "You say it firmly, as a man who has read about camels. She looks at you. She turns her head a very little and spits, with great accuracy, on the place where your shadow's head is. The drovers along the wall do not laugh aloud. They are well brought up." },
            { "Offer her the best date", when = all { item "pa_dates", no(flag "pa_camel_agreed") }, set "pa_camel_agreed", take "pa_dates",
              say "You untwist the leaf and hold out the fat one on your flat hand, as you were told. A lip like a carpet slipper comes down and takes it. She chews, with her eyes shut. She swallows. She opens one eye, and looks at the bag. You hold out the bag. When it is empty she breathes on your hair, once, hot, and looks away at the gate. Along the wall the drovers begin, without a word, to fold their blankets." },
            { "Stroke her nose", when = flag "pa_camel_agreed", say "She allows it for as long as it takes to count three. At four she moves the nose. It is more than Mirren Longstep gets, and he has known her for twenty years." },
          } },
        { name = "a young camel", description = "Its first crossing. It keeps getting up to see what is happening and being told to kneel by every camel near it. It has a bell the size of an egg cup and rings it at everything." },
        { name = "a camel that hums", description = "A low steady note, with its eyes shut. The drovers say that it picked the habit up out east, at the dunes, and has never been right since, or else has been right ever since. They are divided." },
        { name = "the saddles", description = "Stacked against the wall: wooden frames, felt, and a rail to hold. One is very fine, with silver nails. It is the Duchess's, and nobody has sat on it, the Duchess having views." },
      } },
    { name = "the coffee corner",
      description = "Under the arch by the gate: a brazier, a row of long beaked pots, a mat, and a ring of men and women sitting on their heels with cups no bigger than eggshells. This is the tap room of the Long Wait. The coffee is black, the cups are filled only a third, and there is no end to them.",
      things = {
        { name = "the coffee man", description = "Old Dumo Tal, who roasts, pounds, boils and pours and has said nothing since anyone can recall. He speaks with the pestle: a rhythm on the mortar for {i}come{/}, another for {i}it is ready{/}, and a third, rarely, for {i}that was a lie and we all know it{/}." },
        { name = "the row of cups", description = "Thin as shell, no handles, each in its own niche in the wall, one for every regular, and each niche with a mark scratched under it.",
          things = {
            { name = "a cup with a camel scratched under it", description = "The caravan master's. It is the only one with a chip, and the chip is kept turned to the wall." },
            { name = "a cup with three lines under it", description = "The water seller's, from the city. She is here one week in four and it is washed every day in between." },
            { name = "a cup with nothing under it", description = "For strangers. It is the same as the others in every way. You had expected a cracked one. It is a civil country." },
            { name = "a cup turned upside down", description = "A drover who went north on to the salt, eleven years ago, to see. It is turned up on the first of every month, filled, left an hour, and poured on the ground." },
          } },
        { name = "the mortar", description = "Brass, worn as thin as a bell, and it rings like one. You can hear it from the railhead on a still morning. Mr Halt sets his desert watch by it." },
        { name = "the regulars",
          description = "Drovers, a pedlar of needles, a letter writer with no customers, and two old men at a board.",
          things = {
            { name = "two old men at a board", description = "Playing a game with pebbles in two rows of holes. It has gone on since before the railway. Now and then one of them moves a pebble and the other breathes in sharply. Neither has ever been seen to win." },
            { name = "the letter writer", description = "A thin man with a box of pens. He writes letters for those who cannot, at a copper a page, and reads the answers for nothing. There has been no post for a month. He is writing one to himself, to keep his hand in, and is being rather cool in it." },
            { name = "a pedlar of needles", description = "One tray, three sizes. She walked here from the coast. She will tell you that in all the Parch there is not one haystack, and that this is why she came." },
          } },
      },
      actions = {
        { "Take coffee", say "You sit on your heels. It hurts at once. A cup arrives, a third full, and you drink it: bitter, scented, hot as a slap. Before you can put it down it is a third full again. This happens eleven times. Nobody has told you that you are meant to waggle the cup to stop. A child tells you, in the end, out of pity." },
        { "Tell them you are an adventurer", say "The pestle stops. Old Dumo Tal looks at you. Then the pestle goes again, in a rhythm you have not heard before, and round the mat the cups come up to hide the mouths. You find out later which rhythm it was." },
      } },
    { name = "the kitchen",
      description = "A low room off the yard with a clay oven like a beehive, a hearth, and strings of dried things hanging from every beam.",
      things = {
        { name = "the cook",
          icon = "☺",
          description = "Tassa, Ama Shool's sister, floured to the elbow, who slaps rounds of bread on to the inside wall of the oven with her bare hand and takes them off again before they can fall. She has fed every caravan for thirty years and holds that the desert is crossed on the stomach, chiefly the camel's.",
          actions = {
            { "Ask for dates", when = all { no(item "pa_dates"), no(flag "pa_camel_agreed") }, give "pa_dates",
              say "\"For you?\" You say that you thought you might make a friend of the big camel. Tassa stops with a round of bread on her hand. She looks at you for a while. Then she wipes the hand, goes to a jar at the back, and counts nine dates into a palm leaf, twice. \"The fat one first. Flat hand. Don't speak. She can't stand to be spoken to by people who want something.\" You have {gold}a bag of dates{/}." },
            { "Ask what is for supper", say "\"Bread. Lentils. A goat that had a good life and a short argument.\" She slaps another round on the oven wall. \"And you'll eat with your right hand, and you'll take what's in front of you, and if you find the eye it's lucky.\"" },
          } },
        { name = "the oven", description = "Clay, taller than you, with a fire in the floor of it and a hole in the top. The bread sticks to the hot wall and bakes there in the time it takes to say so. Now and then one falls in the fire. That one is the oven's." },
        { name = "the strings of dried things", description = "Peppers, limes gone black and hard as nuts, apricots, and something flat and grey that you are told is a fish. You are a long way from a fish. It has had a journey of its own." },
        { name = "the lentil pot", description = "A copper as big as a bath, never emptied, only added to. Tassa says that the bottom of it is her grandmother's cooking and that this is why it tastes of being told to sit up straight." },
        { name = "the date jar", description = "Glazed blue, waist high, with a wooden lid and a stone on the lid. The stone is for the young camel, who has learned about lids." },
        { name = "a cat in the flour", description = "Sand coloured, long eared, asleep in the flour trough with one eye on the fish. All bread in the Parch has a hair in it. It is how you know that it was made in a house." },
      } },
    { name = "the cellar",
      description = "Down eleven steps under the kitchen, where the day does not come: jars as tall as children, sunk to their shoulders in the earth floor, and a cold that you had forgotten existed.",
      things = {
        { name = "the oil jars", description = "Forty, like the story. You lift one lid. Oil. You lift another. Oil. You lift a third, and Tassa says from the top of the stair, \"There are no thieves in them. People will check.\"" },
        barrel { name = "a barrel from the north", description = "Oak, hooped, and badly out of place. Stencilled {i}REGULATION{/}. It came by train for a drover who had been to Aldmoor once and never stopped talking of it. He is dead. The barrel is kept, unbroached, out of respect for a man with a dream of beer." },
        { name = "the snow pit", description = "A hole lined with straw and stone, and in it, wrapped in felt, a block of ice. It came down from the Grumbles by cart and rail last winter and is brought out for fevers, and for the Sultana's messenger, and once a year for the children, a shaving each." },
        rat { name = "a jerboa", description = "A mouse on stilts, with a tail like a paintbrush, sitting up between two jars. It lives on spilt lentils and goes everywhere by leaping, even quite short distances, even when it is not in a hurry." },
      } },
    { name = "the rooms",
      description = "Forty, round three sides of the yard on two floors, each one a bare cell with a door on the gallery and a window slit on the desert. The same forty have been let for a thousand years. Some have been let to the same families.",
      things = {
        { name = "the best room",
          description = "Over the gate: a rug, a brass tray, a lamp of pierced copper, and a bed that is a platform heaped with cushions.",
          things = {
            { name = "the pierced lamp", description = "Lit, it throws stars over the whole ceiling. They are in no order that the sky has. Whoever pierced it liked them better this way." },
            { name = "the cushions", description = "Eleven. A sultana slept here on her way to be crowned and complained of a date stone under the seventh. It is still shown. It has been worn smooth by guests checking." },
            { name = "the window on the gate", description = "You can see who comes along the white stones a mile before they arrive. Ama Shool can see them two miles before, without the window." },
          } },
        { name = "the drovers' room", description = "Long, on the ground floor, with thirty hooks and thirty rolled blankets and a smell of camel that would hold a coat up. Nobody sleeps in it when the nights are fine. They sleep in the yard, each with a hand on a halter." },
        { name = "a room with a chalk cross on the door", description = "Let, for the last six years, to a scholar from the Collegium who is writing the history of the Parch. She is on the first chapter. It is called {i}Why I Came{/} and has gone to four hundred pages." },
        { name = "your room",
          description = "Top floor, north side, the cheapest: a mat, a jar of water, a blanket, a hook.",
          things = {
            candle { description = "A stub in a saucer of sand. At night in the Parch it is the cold that gets in, and you light this less to see by than for the company." },
            { name = "the window slit", description = "A hand wide. Through it, by day, a blade of white. By night, more stars than you had thought was reasonable, down to the ground on every side." },
            { name = "names on the wall", description = "Scratched in the mud plaster by everyone who waited here, with tallies of days beside them. The longest tally goes round the corner. At the end of it is written, in a relieved hand, {i}She got up.{/}" },
          },
          actions = {
            { "Scratch a tally", say "You make one stroke under your name with a nail. You look at it. You are a person who is waiting for a camel. You make the stroke as upright as you can." },
          } },
      } },
    { name = "the roof at night",
      wonder = true,
      icon = "✦",
      description = "Everybody goes up to the roof when the sun is down, with a blanket. You go up too. The walls give back the heat they were lent, and over you is the sky of the Parch, which has no trees or hills or damp to get in its way. {magic}It comes down to the ground like a bowl put over a candle, and the candle is the brazier in the yard.{/} The stars do not twinkle here. They only stand, each one, steady and separate, as they do nowhere else, and a drover's child beside you is naming them under her breath to get to sleep.",
      things = {
        { name = "the child's names for them", description = "The Kneeling Camel. The Well Rope. The Two Old Men. The Bread That Fell. They are none of them the names you were taught, and they fit better." },
        { name = "the cold", description = "It arrives all at once, about an hour after dark, as though a door had been opened. You pull the blanket up. This morning you would have given your copper for a breath of it." },
        { name = "the brazier, from above", description = "A red eye in the black yard, and round it the hunched shapes of the camels, each with a small pale cloud of breath." },
      },
      actions = {
        { "Lie back and look", say "You lie on the warm mud with your hands under your head. After a while it is not that you are looking up. You are looking out, off the side of something, and there is a great deal of it. You hold on to the roof a little. The child says, without opening her eyes, \"Everybody does that.\"" },
      } },
    { name = "the gate",
      description = "Two leaves of palm trunk bound with iron, with a small door in the left one for people and the whole thing for camels. It is shut at dark and opened at light and has never been locked. Ama Shool says a lock would be an insult to the desert, which is not a thief, only untidy.",
      things = {
        { name = "the hand prints", description = "On the mud of the arch, in white: a print for every caravan that has come home, hundreds deep, one on another. Low down, the hands are small. The children put theirs where they can reach." },
        { name = "the gate lamp", description = "Lit all night and hung outside. It is for anybody who is still out there. There is always thought to be somebody still out there." },
      } },
    { name = "the bales",
      description = "Stacked in the yard under hides, waiting for the Duchess: salt in blocks, carpets rolled, sacks of spice, crates from the railway.",
      things = {
        { name = "a crate of springs", description = "From Coil's, of Tickover, for the lamp shop in Great Shade. What a lamp wants with a spring you cannot think. The crate ticks slightly." },
        { name = "the salt blocks", description = "Grey white slabs the size of gravestones, sawn on the flat to the north and brought in on sledges. Each is stamped with a seal. Salt is money here. A man can be worth his weight in it and frequently says so." },
        { name = "a roll of carpet", description = "Bound with cord, as long as a boat. One corner has worked loose and lifts a little, and settles, and lifts. There is not a breath of wind in the yard." },
      },
      actions = {
        { "Sit on a bale", say "You pick the carpet. It is very comfortable. After a moment it is very comfortable about a hand's breadth higher up than it was. You get off. It settles. You and the carpet agree, privately, to leave it there." },
      } },
    { name = "the caravan master",
      icon = "☺",
      description = "Mirren Longstep, a lean man the colour of a saddle, sitting against the wall with his eyes on the Duchess. He owns the caravan in law. He will tell you who owns it in practice. He has not raised his voice in twenty years, having learned that it only makes her slower.",
      things = {
        { name = "his staff", description = "A straight stick, taller than he is, and notched from top to bottom: a notch for every crossing. He has had to start round the other side." },
        { name = "his headcloth", description = "Indigo, wound in a way that takes a quarter of an hour. The dye has come off on his forehead over the years, and it is said of his family that they are born blue and fade." },
      },
      actions = {
        { "Ask to join the caravan", say "\"It is not mine to say.\" He nods at the great pale camel. \"If she'll have you, you walk at the back and you carry your own water. If she won't, you can go by yourself, and we'll look out for your hat.\"" },
        { "Ask how he finds the way", say "\"I don't. She does. I find the way to her.\" He thinks. \"I asked her once, how. On a bad night, lost, I asked her out loud. She looked at me as if I'd asked how to find my feet.\"" },
      } },
    { name = "the notice wall",
      description = "A stretch of plaster by the kitchen door where things are written in charcoal and rubbed out with a sleeve.",
      things = {
        { name = "the prices", description = "Water: nothing. Bread: nothing. A room: what you can. A lie in the coffee corner: one round for everybody." },
        { name = "a message", description = "{i}To my brother, when he comes through. I waited four months. I have gone on. The key is with Ama.{/} It has not been rubbed out. Round it the plaster is worn hollow by sleeves going carefully past." },
        { name = "a drawing of the Duchess", description = "By a child, in charcoal: a large oval, four lines, and an expression. It is a very good likeness of the expression." },
      } },
    { name = "the stair to the wall top",
      description = "Mud steps up the inside of the south wall, to a walk where a boy sits by day with a horn and looks for dust.",
      things = {
        { name = "the lookout boy", description = "Eleven, with a ram's horn and eyes like a hawk's. One note for a caravan, two for strangers, three for a storm. He has been practising a fourth, for when the railway goes on. He has it ready." },
        { name = "the view from the wall", description = "South and east, a line of white stones, going over ground like a rucked blanket to where the air shakes. That is the road to the city, three days. It does not look like three days. It looks like for ever, with stones." },
      } },
  },

  exits = {
    { to = "pa_railhead", label = "Back along the white stones", description = "A mile, to the little station and the end of the rails." },
    { to = "pa_caravan", label = "Out with the caravan",
      description = "Behind thirty camels, at the pace of the slowest, with the bells going.",
      requires = flag "pa_camel_agreed",
      locked = "The caravan goes when the Duchess gets up, and she is not getting up for the likes of you. Not empty handed." },
  },
}

space {
  id = "pa_caravan",
  region = "parch",
  name = "The Caravan",
  description = "You walk at the back. In front of you thirty camels go in a line, nose to tail, each roped to the one ahead, and at the head of them the great pale one, alone, with nobody leading her. The bells do not stop. The sand is the colour of a lion and then of a peach and, toward evening, of a rose. Nothing in the desert stays where you last saw it but the white stones and the horizon, and you are not sure about the horizon.",
  ambience = {
    dust { glyphs = "·˙∙", color = "#7a6638", rate = 0.5, speed = 0.7 },
    shimmer { color = "#40321a", strength = 0.2 },
  },

  things = {
    { name = "the long walk",
      wonder = true,
      icon = "∿",
      description = "On the second day you stop being a person who is walking somewhere. You are a part of the line. The bells are in your feet. From the top of a dune you look forward and see the caravan drawn across the whole country like one stroke of a pen, {magic}and each camel is putting its foot in the print of the one before, so that thirty of them leave the track of a single animal,{/} going on, alone, into the east. The drovers say that from high enough up every caravan there ever was would look like the same camel.",
      things = {
        { name = "the single track", description = "Round prints, each as big as a plate, each trodden thirty times and as sharp at the edge as if it were cast. By night the wind will have had them. In the morning the Duchess puts them back." },
        { name = "your own track", description = "Beside it, to the left, wandering. You can see from it everything that you looked at." },
      },
      actions = {
        { "Walk in the prints", say "You step across into the line and put your boots where the camels have. It is a longer stride than yours. You manage it for a quarter of a mile, and in that quarter of a mile you do not think of anything at all. The camel in front turns its head and looks at you, and for once it seems to find you correct." },
      } },
    { name = "the Duchess, walking",
      icon = "Ω",
      description = "At the head, a quarter of a mile off, small and pale and rocking like a ship. She has not looked back since the gate. She does not need to. If you fell behind she would know by the sound of the bells, in which you are now one of the notes.",
      things = {
        { name = "her bell, from the back", description = "It reaches you a moment after her stride, so that she always seems to be walking a little ahead of her own sound." },
        { name = "where she turns", description = "Now and then, for no cause you can see, she bears off to the left or the right for a mile and then comes back to the stones. Mirren says that there is soft sand there, or was in her mother's day, or will be." },
      },
      actions = {
        { "Run up and thank her", say "You plod the quarter mile along the line, past every camel, each of which has a look at you. You come level with the great head. You say thank you. An eye the size of a plum turns down, takes you in, and turns back to the east. Her pace does not change. You drop back to your place. It takes a long time and all of them watch." },
      } },
    { name = "the drovers",
      description = "Nine, in indigo, walking beside their strings with a hand on a rope. They talk the whole day, across the line and down it, without turning their heads. There is no such thing as a private remark in a caravan.",
      things = {
        { name = "the singer", description = "A young man, third from the front, who sings the camels along: a verse to each animal, by name, mostly rude. The camels like it. The Duchess has a verse. It is very respectful and he looks over his shoulder first." },
        { name = "the oldest drover", description = "Walks with her eyes shut, holding a tail. She has been over this ground so many times, she says, that there is nothing on it she has not looked at, and she would as soon look at something else." },
        { name = "a drover walking backwards", description = "He lost a bet in the coffee corner. He is to walk backwards to the city. He is on the second day and says that you see more this way, though it is all of it things you have finished with." },
      },
      actions = {
        { "Ask how far it is", say "\"Not far,\" says the nearest. You ask again at noon. \"Not far.\" You ask at sunset. \"Not far.\" You understand, on the third day, that in the Parch this is not a distance. It is a way of keeping your spirits up, and it is kindly meant." },
      } },
    { name = "the load in front of you",
      description = "The last camel carries the cooking pots, the tent poles, and whatever nobody else would have. It clanks. You have been looking at the same pot since the Long Wait.",
      things = {
        { name = "the pot", description = "Black iron, hung from the saddle by its handle, swinging. There is a dent in it shaped like a foot. You know that dent now as you know your own hand." },
        { name = "the rolled carpet", description = "Tied on top, the one from the yard. On the steep dunes, when the camel labours, the load on this side seems to get a little lighter. Nobody mentions it. The camel has not complained." },
        { name = "a hen in a basket", description = "She lays one egg a day, at noon, and announces it. The caravan takes its halt from her. It is as good a clock as any east of Tickover and it does not run four minutes late." },
      } },
    { name = "the white stones",
      description = "Still there, one stride apart, running on ahead over the rises. Where a dune has walked over the road, the stones have been dug out and laid again on top of it.",
      things = {
        { name = "the stone layers", description = "You pass them on the second day: a man, a woman and a donkey, with a basket of lime, going the other way at a few yards an hour, whitening each stone and putting it straight. They have a tent. They were born in it. The road is two hundred miles long and by the time they reach one end the other wants doing." },
        { name = "a black stone", description = "One, among the white, every thousand. It marks a well, off to the side, that you could not find if you did not know. Some black stones have no well any longer. They are left. A caravan stops at them all the same, for a moment, with its hats off." },
      } },
    { name = "the noon halt",
      description = "When the hen speaks, everything kneels. A cloth goes up on four sticks. Under it is the whole of the shade for a day's march in any direction, and nine drovers, a master, and you.",
      things = {
        { name = "the shade cloth", description = "Blue and patched, an acre of it to judge by the patches, though it covers ground no bigger than a cart. Everybody gets a share, measured out by years of service. Yours is a foot. You put your head in it." },
        { name = "the water skin", description = "It goes round, and everyone takes three swallows and no more, and nobody is seen to count, and everybody is counting." },
        { name = "the noon bread", description = "Baked this morning in the sand itself, under the ashes of the fire, and knocked clean with a stick. It is gritty and wonderful. You are told that the grit is good for the teeth, by a drover with four." },
      },
      actions = {
        { "Take four swallows", say "Nobody says anything. The skin goes on round. But when it comes back to you in the afternoon, it is passed over your head, by a hand that does not appear to have noticed you, and that is the whole of the matter. You are in step with them by evening." },
      } },
    { name = "the dunes",
      description = "Great soft hills, every one with a knife edge along the top and a smoke of sand blowing off it. They move. Not so that you can see it, but the drovers speak of them as you might of cattle: that one has come on a good way since spring.",
      things = {
        { name = "the ripples", description = "The whole flank of each dune is combed into small waves, a hand apart, exact as weaving. Your boots spoil a line of them at every step. You look back from the top and they are already closing over where you were." },
        { name = "a beetle on the crest", description = "Black, standing on its head on the ridge at dawn with its back to the mist. A drop of water forms on it and runs down into its mouth. It is the cleverest thing that you have seen anybody do in the Parch and it was done by a beetle." },
        { name = "the slip face", description = "The steep side. You go down it in long sinking strides, and under your feet the sand lets out a groan, deep, like a note on the largest string there is. The drovers say that this is nothing. They say to wait until you hear a dune that means it." },
      } },
    { name = "the mirage",
      description = "Ahead and to the left, all afternoon: a sheet of bright water, with dark shapes standing in it that could be palms. It keeps exactly its distance. The camels do not look at it once.",
      things = {
        { name = "the dark shapes", description = "Trees. You could count the fronds. You say so to Mirren, who does not turn his head. \"It's an honest one, that,\" he says. \"It shows you what's there. It only won't say where.\"" },
      },
      actions = {
        { "Point it out", say "\"Yes,\" say the drovers, not looking. \"Water,\" you say. \"Yes.\" \"Just there.\" \"Yes.\" They are very patient with you. Later the singer makes it a verse and they have you sing it." },
      } },
    { name = "the night camp",
      description = "A fire of dung and thorn in a hollow, the camels couched in a ring outside it with their backs to the wind, and the cold coming down like a lid.",
      things = {
        { name = "the fire", description = "Small and without smoke. Nine faces, and yours. A pot of tea so sweet that it stands up. For the first hour nobody says anything, and it is the most comfortable hour that you have spent in company." },
        { name = "the stories", description = "Afterwards they tell them, turn about. The King who counted everything. The city that the sand took in one night for being unkind to a guest. The man on the pillar. The genie who said no. You are asked for one from your country. You tell them about Greenhollow. They do not believe in the rain." },
        { name = "the sand at night", description = "It gives up its heat in an hour, and then you lie on a cold as deep as the well. You dig a trench the shape of yourself, as they show you, down to where yesterday's sun is still stored, and you sleep in that." },
      },
      actions = {
        { "Tell them about rain", say "You explain that it falls out of the sky, for days, on to everybody, for nothing. There is a silence. \"And they complain of it,\" you add. The oldest drover opens her eyes for the first time since the Long Wait. \"Go on,\" she says. You go on until the fire is out." },
      } },
    { name = "a signpost of bones",
      description = "At a place where four lines of stones meet: a camel's skull on a pole, bleached, with a rib nailed below it for each road and a word burned in each rib.",
      things = {
        { name = "the four ribs", description = "{i}GREAT SHADE{/}, pointing on. {i}THE LONG WAIT{/}, pointing back. {i}SALT{/}, north, with nothing after it. {i}THE SINGERS{/}, east, with a small ear burned beside the word, and a line through the ear." },
        { name = "the skull", description = "The Duchess's grandmother. She died here, at the crossing, and her bell is the bell that the Duchess wears. The whole caravan goes round the post on the left, always, with each camel in turn giving it a look." },
      } },
    { name = "the wind",
      description = "It gets up at about four, from nowhere, and lays a skin of moving sand over the ground to the height of your knee. Above the knee the air is clear. You wade.",
      things = {
        { name = "the sound of it", description = "A hiss, like something pouring. Under the hiss, if you stop, there is a very low hum, coming from the east, hardly a sound. The camel that hums has its ears toward it." },
      } },
  },

  exits = {
    { to = "pa_caravanserai", label = "Back to the Long Wait", description = "With a string going home empty, at twice the pace, the camels knowing where the dates are." },
    { to = "pa_bazaar", label = "On to Great Shade", description = "On along the stones to a line of green, a line of wall, and a noise like a hive." },
    { to = "pa_salt_flat", label = "North, to the salt", description = "By the rib marked SALT, alone, the caravan having better sense." },
    { to = "pa_dunes", label = "East, to the Singers", description = "By the rib with the ear on it. The camel that hums watches you go." },
  },
}
