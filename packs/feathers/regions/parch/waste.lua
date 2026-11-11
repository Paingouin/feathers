-- North of the caravan road: the salt, the oasis that is exactly where the mirage said,
-- and the mirage, from inside.

space {
  id = "pa_salt_flat",
  region = "parch",
  name = "The White Nothing",
  description = "The sand stops, and there is a floor. It is white, and flat, and it goes to the edge of the world in every direction without a stone or a stick or a rise as high as your ankle. It is salt: the bed of a sea that was here and is not. It is cracked all over into six sided plates, each the size of a table, neat as tiling. The sky comes down to it all round and there is no line where they meet. You are standing on a white plate under a blue bowl and you are the tallest thing for forty miles.",
  palette = { bg = "#101318", text = "#e6eaf0", dim = "#8088a0", accent = "#a8d0f0", border = "#4a5670" },
  ambience = {
    shimmer { color = "#3a4460", strength = 0.25 },
    dust { glyphs = "·", color = "#6a7088", rate = 0.08, speed = 0.1 },
  },
  backdrop = {
    "                                ",
    "            ·                   ",
    "────────────────────────────────",
    " ◇   ◇   ◇   ◇   ◇   ◇   ◇   ◇ ",
  },

  things = {
    { name = "the sky, twice",
      wonder = true,
      icon = "═",
      description = "A little rain fell here in the night, the first in nine years, and it lies on the salt a finger deep, without a ripple, from here to the horizon. And so there is no ground. {magic}There is the sky above you, and the sky below you, perfect, and you are standing in the middle of the air on your own reflection, sole to sole.{/} A cloud comes over. Another comes to meet it underneath. You take a step and rings go out across the whole of heaven, and it is a long time before you care to take another.",
      things = {
        { name = "your reflection", description = "Hanging by its feet from yours, looking up at you, with the same hat. It seems entirely at home down there. You wonder which of you is thinking this." },
        { name = "the seam", description = "You search all round for the place where the upper sky joins the lower. There is not one. A drover told you that men have walked out here to find it, and that some of them are probably still looking, on one side or the other." },
      },
      actions = {
        { "Jump", say "You jump, to see. For an instant neither of you is touching anything. Then you meet again, at the feet, with a splash, and both of you look rather relieved." },
      } },
    { name = "the plates",
      description = "Six sides each, raised a little at the edges where the salt has pushed up in a ridge. They fit. There is not a five sided one or a seven sided one among them, and you look for some time, since it seems against nature for anything to be so tidy without a clerk.",
      things = {
        { name = "a ridge", description = "A finger high, of crystals like coarse sugar, pure white. You break off a piece and taste it. It is salt. You are not sure what you had expected. You are thirsty at once and for the rest of the day." },
        { name = "a plate with a print in it", description = "A bare foot, long and narrow, pressed into the salt when it was wet, and now as hard as stone. Then another, a stride on. They go north. They were made before the plates cracked: the cracks go round them. Nobody comes out here barefoot, and the stride is longer than a tall man's." },
      } },
    { name = "the mooring post",
      description = "You had not expected a post. It is a block of salt, sawn square, the height of a man, with an iron ring bolted through it and a brass tag on the ring. It stands in the exact middle of nothing, and can be seen for ten miles, being the only thing.",
      things = {
        { name = "the brass tag", description = "{i}T.A.Q. MOORING No. 9. THE WHITE NOTHING. LEVEL GROUND, NO OBSTRUCTIONS, NO AMENITIES. LAND ANYWHERE.{/} Tickover made, by the stamp. Somebody has scratched under it, with a nail: {i}tried it, bounced{/}." },
        { name = "the rope burn", description = "A groove worn round the block at the height of the ring. Something large has swung on this at anchor in a wind, and more than once." },
        { name = "a tin box at the foot", description = "Bolted down. In it: a book of moorings, in pencil. {i}W.P., Capt. Ballast. Took on salt, 2 tons, as ballast, which the crew found very funny and the Captain did not.{/}" },
      },
      actions = {
        { "Wave at the sky", say "You stand by the post and wave both arms at the empty blue, as a person does who is waiting for a ship. Nothing comes. Your reflection waves at the other sky, and is not answered either. You keep each other company." },
      } },
    { name = "the salt cutters",
      description = "A long way off, a row of dots, which become a row of people bent over with saws. They cut the plates into slabs and stand them on edge to dry, like a field of gravestones, and a sledge takes them south.",
      things = {
        { name = "the foreman", description = "An old woman called Sabbet, in smoked spectacles against the glare, with lips cracked white. She has cut salt for fifty years. She says that there is enough here to season the world's dinner until the world is done eating, and that at the present rate it will take about that long." },
        { name = "the saws", description = "Long, two handled, of iron gone orange. A saw lasts a season before the salt has it. The handles are the only wood on the flat and are handed down." },
        { name = "the standing slabs", description = "Hundreds, in ranks, each stamped while it is damp with the cutter's seal. In the low sun they throw long blue shadows and look, from a distance, like a city. People have walked towards it, glad." },
        { name = "the smoked spectacles", description = "Two discs of horn with a slit in each. Without them a cutter is blind in a month. Sabbet lends you a pair. The world goes brown and bearable, and you see that she has been smiling at you the whole time." },
      },
      actions = {
        { "Ask what is north", say "\"More,\" says Sabbet. You ask after that. \"I went six days once, as a girl, to see. Salt. Then on the sixth evening I saw water, a whole lake of it, with trees.\" She draws the saw. \"I knew what it was. I marked where it stood against the sun. And my father said, child, you never mark it, it is rude. But I had.\"" },
      } },
    { name = "the mirage",
      key = "pa_mirage_thing",
      description = "To the north east, low down, the white floor turns to silver and stands up a little off the ground. There is a lake in it. There are palms round the lake, and their trunks do not quite reach the earth. It trembles, like something seen through the air over a fire, and it is as plain as your own hand.",
      variants = {
        { when = flag "pa_mirage_noted",
          description = "The lake, the palms that do not reach the ground, the shiver. You have lined it up: over the mooring post, a hand to the left of the sun at noon, and straight on. Every drover in the Parch has told you that it is not there. You have noticed that not one of them has ever gone to look." },
      },
      things = {
        { name = "the palms", description = "Eleven. You count them twice. A mirage, you have always heard, is only the sky lying on the ground. The sky has not got eleven palm trees in it, one of them leaning." },
        { name = "a white bird, flying to it", description = "An egret, alone, very high, going steadily north east with its legs out behind. It does not waver. It goes down into the silver and does not come up again. A bird would know." },
      },
      actions = {
        { "Mark where it is", when = no(flag "pa_mirage_noted"), set "pa_mirage_noted",
          say "It is rude, you were told. You do it all the same. You put your back to the mooring post, hold your arm out at the sun, and count a hand to the left. There. You scratch an arrow in the salt with your heel. Then you look up, and the lake is still where it was, and the palms. For the first time it does not seem to be backing away. It seems to be waiting to see what you will do." },
      } },
    { name = "a boat",
      description = "Clinker built, twenty feet, lying on her side on the salt with her mast still stepped. Her planks are as white and hard as bone. There is no water within nine years of her.",
      things = {
        { name = "her name", description = "On the stern, in a script that nobody in Great Shade can read, though they can tell you what it says, it having been handed down: {i}Back Before Dark{/}." },
        { name = "her anchor", description = "Stone, with a hole in it, lying out on forty feet of rope that has turned to a line of salt. Whoever she belonged to anchored her properly and went ashore. The shore is three days south, now." },
        { name = "a net", description = "In the bottom, crusted solid in its folds. And in the net, a fish. It is salt all through and perfect to the scale. It has its mouth a little open." },
      },
      actions = {
        { "Sit in her", say "You climb in and sit on the thwart and take hold of the tiller. It moves. The whole flat is round you, white, level as a calm. For a moment, with your eyes half shut, you are a long way out on a still sea, and you feel her lift, a very little, as if to a swell that came by nine thousand years ago and has only now got here." },
      } },
    { name = "the horizon",
      description = "There is not one. The white goes pale and the blue goes pale and somewhere they are the same. Things at a distance do not get smaller here. They get vaguer, and then they are a matter of opinion.",
      things = {
        { name = "the curve", description = "You turn all the way round, slowly. It is a circle, and you are in the middle of it, and wherever you walk you will be in the middle of it. It is the only place that you have ever been where that was simply true." },
      } },
    { name = "the heat",
      description = "It comes up off the salt as well as down from the sun. You are being cooked on both sides, like bread on the oven wall.",
      actions = {
        { "Spit", say "It does not land. You watch for it. You are fairly sure that it never arrived." },
      } },
    { name = "the silence",
      description = "At the railhead you could hear the sand settle. Here there is no sand. There is a faint high ringing which you take at first for the salt, and then for the sun, and which is, you work out at last, your own ears, with nothing to do.",
      things = {
        { name = "a tick", description = "Now and then, from the ground: the salt cracking as it dries, somewhere, miles off or under your boot. It is the only clock here. The cutters say that every tick is a new plate and that the flat is still being laid." },
      } },
    { name = "a line of cairns",
      description = "Slabs of salt, piled three high, one every mile, leading back south to the rib marked SALT. Without them a person would walk in a curve until he met his own track, and then, they say, he would follow it, gladly, for the company.",
      things = {
        { name = "a cairn with a cup on it", description = "An eggshell cup, like those at the Long Wait. It is the right way up, and full of rain. The drover who went north eleven years ago left it here on the way out. Nobody has moved it. Nobody has turned it over, either." },
      } },
    { name = "the night, here",
      description = "They say that if you are caught on the flat after dark you should lie down and shut your eyes until morning. The stars come out above. The stars come out below. A man stood up once in the middle of that, the cutters say, and it was three days before he could be got to believe in the ground.",
    },
  },

  exits = {
    { to = "pa_caravan", label = "South, by the cairns", description = "Back along the piles of salt to the signpost of bones and the bells." },
    { to = "pa_oasis", label = "Where the mirage said",
      description = "Over the post, a hand left of the noon sun, and straight on, as you marked it. It does not back away.",
      requires = flag "pa_mirage_noted", hidden = true },
  },
}

space {
  id = "pa_oasis",
  region = "parch",
  name = "The Oasis As Advertised",
  description = "It is there. It is exactly there. You walked on your mark for half a day with the lake standing a little off the ground ahead of you, and at a certain step it came down, and stopped shaking, and you were on grass. There are eleven palms, one of them leaning. There is a pool as round as a coin and as blue as paint. A breeze is coming off it that is cool. Every drover in the Parch has seen this place hanging in the sky and has known better than to go to it, and so in all the ages it has had hardly a visitor, and it seems pleased to see you.",
  palette = { bg = "#0c130f", text = "#dce8d8", dim = "#70887a", accent = "#5fd0b0", border = "#2f5a48" },
  ambience = {
    fireflies { glyphs = "·˙", color = "#8fe0c0", rate = 0.12 },
    shimmer { color = "#20403a", strength = 0.15 },
  },

  things = {
    { name = "the pool",
      wonder = true,
      icon = "○",
      description = "Round, clear to the bottom, fed from below by a spring that lifts the white sand in a little dancing dome. You kneel and put your face in it. It is cold, and sweet, and wet, and it is so thoroughly water that you laugh out loud with your mouth full. {magic}And when the surface is still again you see that it reflects a ring of palms, and the sky, and a kneeling figure, and that all round the reflected pool, where there ought to be grass, there is white salt, to the edge of the world.{/} It is showing you what you looked like from out there. It has been watching you come.",
      variants = {
        { when = flag "pa_mirage_open",
          description = "Round, clear, cold, with the spring lifting its little dome of sand at the bottom. You have looked at it the long way now, and it has looked back. Along one side, where the leaning palm puts its shadow on the water, the reflection does not quite stop at the surface. There is a place where a person might step down into it as into a cellar." },
      },
      things = {
        { name = "the spring", description = "At the bottom, a place where the sand is always moving. The water comes up from very far down and has been a long time on the way. It does not taste of salt in the least. That is the most unlikely thing here and nobody has ever been by to remark on it." },
        { name = "the fish", description = "Small, silver, a dozen. They come to your fingers. In the whole of their lives nothing has ever tried to catch them and it has left them with a very good opinion of hands." },
        { name = "the rim", description = "Turf, clipped short, by gazelle. And in the turf, pressed deep, a ring of hollows where people have knelt to drink. There are not many. You could count them. You add yours." },
      },
      actions = {
        { "Drink", say "You drink until you can hear it inside you. Then you lie on your back on the turf with your hat over your face. You came through the Parch behind a cooking pot to get here, and were told at every step that it was not real. You have decided that this will be your position in future on a number of other things." },
        { "Look at it the long way", when = no(flag "pa_mirage_open"), set "pa_mirage_open",
          say "You walk back out on to the salt, a hundred paces, and turn round. From here the oasis has gone up into the air again and is shaking. You crouch, to get the angle that you had this morning. There is the lake. There are the palms. And there, on the bank, small and upside down and quite distinct, is somebody crouching, looking at you. You lift a hand. It lifts a hand. But it is the other hand. Then it gets up, in the shiver, and points, plainly, at the foot of the leaning palm.",
          fx "flash" },
      } },
    { name = "the palms",
      description = "Eleven date palms in a ring, with their heads together, making a roof. The fruit hangs in bunches the colour of amber, and under each tree the ground is thick with what fell last year and the year before. Nobody picks here.",
      things = {
        { name = "the leaning one", description = "It has grown out sideways over the water and then up, like an elbow. From the salt it is the one that you can always tell. A swing has been hung from it at some time. The ropes are gone. The two grooves are there in the bark." },
        { name = "the dates", description = "You eat one off the tree. You had thought the Long Wait's were good. You stand quite still. The Duchess would walk here on her knees." },
        { name = "a weaver bird's nests", description = "Hanging from the fronds like a hundred small straw bottles, each with its door at the bottom. The birds go in and out. They take no notice of you whatever. You have never before been so thoroughly not the first thing anyone thought of." },
      },
      actions = {
        { "Climb the leaning one", say "It is as easy as a stair. You sit in the elbow with your legs over the water. From here you can see the whole white floor, and a black dot on it, miles off, that is the mooring post. From the post you could not see this. You could see it only where it was not." },
      } },
    { name = "the grass",
      description = "Green. You had forgotten the colour. It is short and thick and cool, and it stops at the edge of the oasis in a line as sharp as a carpet's, with white salt on the other side and not one blade astray.",
      things = {
        { name = "the edge", description = "You put one foot on the grass and one on the salt. The one is in spring. The other is in an oven. There is no in between, not the width of a finger. Whatever keeps this place has drawn a line and meant it." },
        { name = "a tortoise", description = "The size of a soup plate, eating a fallen date with its eyes shut. You know it. You are almost sure. It has a scratch on its shell like a rail gauge. This is where it was going, the time that it rode the cow-catcher." },
      } },
    { name = "the gazelle",
      description = "Five, drinking, at the far side. They lift their heads when you come and look at you with water running from their chins. Then they go on drinking. One of them, you would swear, is the one that ran beside the train.",
      actions = {
        { "Sit quite still", say "You sit. After a long time the smallest comes round the pool, a step and a stop, a step and a stop, and puts its nose against your boot, and breathes out. That is all. It goes back. But you have been checked, by something that has never seen a person, and passed." },
      } },
    { name = "a sign on a post",
      description = "Driven into the turf by the water. A board, old, the paint gone to a shadow. You can make it out, slanting the light: {i}YES.{/}",
      things = {
        { name = "the back of the board", description = "Smaller, and in a different paint: {i}We put this up for the ones who would doubt it even standing here. You know who you are.{/}" },
      } },
    { name = "a traveller's bundle",
      description = "Under the third palm, set down neatly: a rolled blanket, a staff, a pair of sandals side by side, and a silver flask on a strap, hung from a frond stump. They are dusted with years of fallen dates. Whoever put them down meant to be gone a moment.",
      things = {
        { name = "the sandals", description = "Toes to the water. Long and narrow. You think of the bare prints going north across the salt, with the cracks grown round them." },
        { name = "the staff", description = "Notched from top to bottom, like the caravan master's, and then round the other side, and then, for want of room, in a spiral. It is a great many crossings. The last notch is half cut." },
        { name = "the flask on the frond", description = "Silver, dented, on a strap that has gone to thread. It swings a little. You tip it. It is empty, and dry inside as a bone, and yet it is cold." },
      },
      actions = {
        { "Call out", say "You call hello, twice, and feel foolish. The weaver birds stop. In the stillness you hear, from the direction of the pool, though not from the pool, somebody clear their throat, a long way off or a long way down, in the manner of a person who does not want to startle you." },
      } },
    { name = "the breeze",
      description = "It blows outward. It comes up from the pool and goes out in a ring across the salt in every direction, cool for the first few yards, and then you can see it go into the heat and begin to shake. That is what the caravans see, you realise. It is this place, breathing out.",
    },
    { name = "a ring of stones",
      description = "A fireplace, between two palms, with a blackened pot upside down on it. Cold. But the ashes are in a neat heap, and there is a stack of palm ribs cut to length beside them for the next person, which is the law of the desert, and somebody kept it who can hardly have expected a next person.",
      actions = {
        { "Cut a rib for the stack", say "You find a fallen frond and break a length off over your knee, and lay it on the pile. It is the only useful thing that you have done in the Parch. The stack is now eleven and one. It looks right." },
      } },
    { name = "the dragonflies",
      description = "Blue, and red, a dozen, hanging over the water and going off sideways. There is not another pool for a hundred miles. You cannot think how the first of them got here.",
    },
    { name = "the shade",
      description = "Real shade, deep and green, with coins of sun in it that move. In Great Shade they make it of cloth, and are proud. Here it only happens.",
      actions = {
        { "Sleep in it", say "You shut your eyes for a moment. When you open them the coins of sun are on the other side of you, and a gazelle is lying an arm's length off, and there are four dates on your chest, in a row, which the palm did not drop like that." },
      } },
    { name = "the way you came",
      description = "Your own tracks in the wet salt, a long straight line of them, running back to a dot. They do not waver once. You have never in your life walked so straight toward anything, and you were told the whole way that it was not there.",
    },
  },

  exits = {
    { to = "pa_salt_flat", label = "Back across the salt", description = "Along your own straight tracks to the post. Behind you it goes up into the air again and begins to shake." },
    { to = "pa_mirage", label = "Into the reflection",
      description = "At the foot of the leaning palm, where its shadow lies on the water, a step down.",
      requires = flag "pa_mirage_open", hidden = true },
  },
}

space {
  id = "pa_mirage",
  region = "parch",
  secret = true,
  wonder = true,
  name = "The Mirage, From Inside",
  description = "You step down, and your foot does not get wet. You are standing on a bank of grass beside a round pool, under eleven palms, one of them leaning, and everything is the same and none of it is quite on the ground. The light comes from under you. The trunks of the palms stop a hand above the turf and begin again. The whole place trembles, very finely, without a pause, like a note held on a string. And out beyond the grass, where the salt should be, there is a green country going to the horizon, with rain on it. This is the oasis that the thirsty see. It is the one that is as good as it looked.",
  palette = { bg = "#0d1118", text = "#dfe6f2", dim = "#7888a4", accent = "#9fd8ff", border = "#3c5278" },
  ambience = {
    shimmer { color = "#33507a", strength = 0.4 },
    rain { glyphs = "˙·", color = "#3c5470", rate = 0.15, speed = 0.4 },
  },

  things = {
    { name = "the keeper of the mirage",
      icon = "☺",
      description = "A tall, narrow old man sitting on the bank with his feet in the water, barefoot. You can see the palms through him, a little, when he moves. He has a staff across his knees with a half cut notch in it. \"There,\" he says. \"I thought that somebody would mark it in the end. Did they tell you that it was rude?\"",
      things = {
        { name = "his feet", description = "Long and narrow, in the pool to the ankle. They do not disturb the water. You think of the prints going north, in the salt, from before the plates cracked." },
        { name = "his voice", description = "It arrives a moment after his mouth moves, as the Duchess's bell does after her stride." },
        { name = "his eyes", description = "The colour of the salt flat at noon. They are fixed on something behind you and a long way off: the thing, you suppose, that he walked out here to find." },
      },
      actions = {
        { "Ask who he is", say "\"A drover. I had a caravan. One day I saw this, as you do, and thought: every day of my life I have been shown the best water in the world and told to look at my feet.\" He moves a toe. \"So I marked it. And I walked. I left my things by the tree, meaning to go back for them.\" You ask how long ago. He thinks. \"The salt was still wet,\" he says." },
        { "Ask what this place is", say "\"It is what the desert would do if it were asked nicely.\" He nods out at the green country. \"That is the Parch. Rained on. It is not far off. It is only never here.\" He sees your face. \"No, I do not understand it either. I only keep it. Somebody should be here when a thirsty person looks up. One does not like them to see it empty.\"" },
        { "Ask if he is real", say "He considers the question with real fairness. \"I am as described,\" he says at last. \"I find that it comes to much the same. You may put your hand through me, if it would help. People generally would sooner not, once they are told that they may.\"" },
        { "Ask about the flask", when = no(flag "pa_flask_asked"), set "pa_flask_asked",
          say "\"On the frond. Mine. I filled it here, the first day, from this pool and not the other. And then I found that I could not carry it out. It is full, on this side. On your side it is empty. It needs a person who can stand in both.\" He looks at you, and for the first time his eyes come back from the distance and arrive. \"You came in by the tree. You are standing in both now. Reach up.\"" },
      } },
    { name = "the flask on the frond",
      key = "pa_flask_here",
      description = "Silver, on a strap, hung from the stump of a frond on the third palm. Here it is new, and bright, and heavy, and sweating with cold. You can hear that it is full.",
      variants = {
        { when = flag "pa_flask_taken",
          description = "The stump of a frond on the third palm, with a paler ring on it where a strap hung for longer than the palm has been alive. The keeper looks at the ring now and then. He has the air of a man who has at last got a letter into the post." },
      },
      actions = {
        { "Reach up and take it", when = all { flag "pa_flask_asked", no(flag "pa_flask_taken") }, set "pa_flask_taken", give "pa_mirage_flask",
          say "You take hold of the strap. For a moment there are two flasks in your hand, the bright one and a dented dry one, lying inside each other like a thing and its shadow. Then there is one. It is dented, and it is full. \"You will not be able to drink it,\" says the keeper. \"Nobody can drink a mirage. But you can carry it, and that is more than I could. Show it to somebody who is thirsty. Not to give them. Only so that they know that it was true.\" You have {gold}the Flask of As Advertised{/}.",
          fx "sparkle" },
      } },
    { name = "the green country",
      description = "Beyond the turf, where on the other side there is a white floor to the horizon: hills, low and rounded, as green as a cabbage, with the shadow of clouds going over them. There is a river with a bend. There are trees that are not palms.",
      things = {
        { name = "the rain", description = "A grey curtain, a few miles off, trailing over the hills and letting the sun through behind it. You can smell it. Wet earth. You had told the drovers about that, by the fire, and they had not believed you. They have been looking at it all their lives." },
        { name = "the river with a bend", description = "It comes down between two hills and goes away to the left. It has the same bend in it that the railway has, at Mile Forty. You do not know what to do with that and so you leave it where it is." },
        { name = "a boat on the river", description = "Very small, at this distance, with a sail. Clinker built. She is going well. It is getting on for evening, over there, and she is heading in." },
      },
      actions = {
        { "Walk toward it", say "You walk off the grass on to the green. You walk for a quarter of an hour, with the rain smelling stronger. Then you look round. You are a yard from the pool. The keeper has not turned his head. \"It keeps its distance,\" he says. \"It is still a mirage. Even from in here there has to be something that you cannot get to. I think that is what holds the roof up.\"" },
      } },
    { name = "the pool, from this side",
      description = "The same round water. But here, when you look down into it, you do not see the sky. You see the other oasis, the solid one, from underneath: the white bellies of the little fish, the dancing sand, and far up, wobbling, the face of whoever leans over to drink.",
      things = {
        { name = "a face, looking down", description = "A gazelle, drinking. Its nose makes rings. You can see right up its nostrils. It has no idea in the world." },
        { name = "the spring, from this side", description = "Here it goes the other way. The water does not come up. It goes down, in a slow turning thread, into the white sand and through it, to there. So that is where the sweet water in the salt comes from. It is being lent." },
      },
      actions = {
        { "Wave up at the gazelle", say "It stops drinking. It stares down into the water with both eyes for a long moment. Then it goes on. But after that, the keeper tells you, it will always look before it drinks, and will teach its young to, and in a hundred years nobody will know why." },
      } },
    { name = "the palms that do not reach",
      description = "Each trunk ends in the air, a hand above the grass, cut off as clean as with a knife, and begins again below with the roots. Between the two halves you can see straight through to the hills. They are not at all troubled by it. The dates are riper here.",
      actions = {
        { "Pass your hand through the gap", say "Nothing. Air, a little cooler. You put your whole arm through, under a tree that weighs as much as a house and is standing on nothing. The keeper says that he did that for most of his first year and that it stops being remarkable in the end, though he is sorry to say so." },
      } },
    { name = "the shiver",
      description = "Everything here is trembling, all the time, very fast and very slightly: the grass, the water, the old man, your own hands when you hold them up. It makes no sound. After a while you feel it more than see it, in your teeth.",
      things = {
        { name = "your hands", description = "The edges of your fingers are not quite sure where they stop. You can still count them. You do so, twice." },
      } },
    { name = "the ones who look up",
      description = "At the edge of the grass, in the air, like pictures hung on nothing, faint: the faces of people on the other side, far off across the salt and the sand, who have at this moment lifted their eyes and seen water.",
      things = {
        { name = "a drover", description = "Young, with a rope in his hand, looking straight at you with his mouth a little open. Then somebody speaks to him, and he drops his eyes to his feet, and he is gone like a candle." },
        { name = "an old woman in smoked spectacles", description = "Sabbet. She is not surprised. She has her saw in one hand. She looks for a long time, and then, you would swear, she nods to the keeper, as one does to a neighbour across a street, and he nods back." },
        { name = "a face that you know", description = "Small, pink, under a ridiculous hat, peering, with a hand held out at the sun to take a bearing. It is you. This morning. You look as though you had made up your mind about something. You had not known that it showed." },
      },
      actions = {
        { "Wave to the young drover", say "You wave with both arms. He sees something. His whole face lifts. Then you see his lips move, and you know the words, having heard them from every drover in the Parch: {i}it is not there.{/} He looks down. The keeper sighs. \"I wave to all of them,\" he says. \"One in a thousand marks it. You must not mind. It is how they stay alive.\"" },
      } },
    { name = "a swing",
      description = "Hung from the leaning palm, on two good ropes: a board, worn smooth. On your side there were only the grooves in the bark.",
      actions = {
        { "Sit on it", say "You sit and push off. You go out over the water and back. At the top of each swing, for an instant, the shiver stops, and the whole place stands as clear and still as a morning, and then you come down and it begins again. \"I put it up for that,\" says the keeper. \"It is the only way to see it properly. You have to be going somewhere and not have got there.\"" },
      } },
    { name = "the light from underneath",
      description = "There is no sun here. The brightness comes up out of the ground, white, as it comes off the salt at noon, and everything is lit from below: the undersides of the fronds, the keeper's chin, the brim of your own hat from the inside. Nothing casts a shadow down. Things cast them upward, faint, on to the air.",
    },
    { name = "a row of sandals",
      description = "Along the bank, toes to the water, neatly: nine pairs. One long and narrow. The rest of all sizes and several ages, and one pair very small.",
      things = {
        { name = "the very small pair", description = "Red leather, with a bead on each. \"A child,\" says the keeper. \"She marked it without being told that she must not. She stayed an afternoon, and swung, and went home for her supper. She would be a grandmother now, in Great Shade. She waves, sometimes, from her roof.\"" },
        { name = "a pair of boots", description = "Northern, hobnailed, enormous. \"A surveyor,\" says the keeper. \"With a peg and a hammer. He was laying out a line and it ran straight through here. He was very put out. He went on east. I believe that he has allowed for us in his figures.\"" },
      } },
    { name = "the quiet",
      description = "Water, and the weaver birds, and far away the rain. No heat. No thirst. You find that you have been standing, for some time, with your shoulders down, as you have not had them since you left home.",
    },
  },

  exits = {
    { to = "pa_oasis", label = "Up, by the leaning palm", description = "A step up into weight, and warmth, and things that stay where they are put." },
  },
}
