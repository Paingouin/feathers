-- The way in: the old road behind the castle hill, and the gate with a sentry still on it.

space {
  id = "er_old_road",
  region = "erstwhile",
  name = "The Old Road",
  description = "Behind the castle hill the queue ends and a road begins that nobody is waiting on. It was the King's Highway once, forty feet wide and paved. It is paved yet, under the turf: you can feel the setts through your boots. Thorn trees have come up through the middle of it in a line, as if they were walking to town.",
  ambience = {
    fog { color = "#181a22", speed = 0.15, strength = 0.3 },
    dust { glyphs = "·˙", color = "#505868", rate = 0.15, speed = 0.3 },
  },

  things = {
    { name = "the milestones",
      description = "Square posts of grey stone at every mile, each with a number and a pointing hand. You pass 3, and a mile on you pass 4, and you are walking towards the city. It is not a mistake. The stones do not say how far you are from Erstwhile. They say how far Erstwhile has got from everybody.",
      things = {
        { name = "milestone 3", description = "{i}ERSTWHILE, 3.{/} The hand points back the way you came. There is moss in the cuff." },
        { name = "milestone 4", description = "{i}ERSTWHILE, 4.{/} A mile nearer, by your legs. A different mason has cut the 4, later, over something smaller that was there before." },
        { name = "milestone 5", description = "Almost at the gate. The 5 is fresh. The dust of the cutting is still in the grass, and there is nobody about with a chisel.",
          actions = {
            { "Feel the cut", say "Sharp at the edges, and gritty. Cut this year, or this week. Somebody keeps the count up. You look both ways along the road, and the thorn trees look back, and none of them is holding a mallet." },
          } },
        { name = "the pointing hands", description = "On every stone, the same hand, with a frilled cuff and one finger out. They all point away from the city. It was the fashion, the year they were cut, to be leaving." },
      } },
    { name = "the thorn trees",
      description = "Hawthorns, a hundred or so, in single file down the crown of the road. Each one has split a paving sett to get up. They are evenly spaced, and it takes you a while to see why: they have grown where the centre posts of the royal procession used to stand.",
      things = {
        { name = "a rag on a branch", description = "Faded to the colour of the bark. It was a banner. You can read a lion's back leg on it, and the word {i}WE{/}." },
        { name = "the blossom", description = "White, thick, and a month early. Nobody gathers it. It comes down in the ruts like a wedding that has gone by." },
        { name = "a thrush's anvil", description = "A sett with a litter of broken snail shells round it. The thrush has used the same stone for years. It is the best-maintained piece of the King's Highway." },
      },
      actions = {
        { "Walk down the middle", say "You walk between the thorns where the King used to ride. Nobody cheers. A rabbit sits up in the left-hand rut, sees who it is, and goes on eating. You find that you are walking a little better than usual all the same." },
      } },
    { name = "the ruts",
      description = "Two grooves worn a hand deep in the stone by four hundred years of wheels, both on the left. Everything went in on the left and came out on the right. The right-hand ruts are a good deal shallower, and stop.",
      things = {
        { name = "the last ruts out", description = "Deep, close together, cut across one another. A great many heavy carts went out of here in a hurry on the same day, and some of them were not well driven." },
        { name = "a wheel", description = "Lying in the nettles where it came off. Gilded once, with a boss in the shape of a lion's face. It came off a state coach, and the state coach did not stop for it." },
        { name = "a dropped fork", description = "Silver, black with weather, trodden into the turf. The handle has the royal cipher. There is another a yard on, and a third. Somebody packed the plate chest badly and it marked the way they went." },
      } },
    { name = "a toll house",
      description = "A stone box by the road with a bar that used to come down across it. The bar is up. It has been up since the Friday, and a rose has grown along it, so that it could not come down now if a king asked.",
      things = {
        { name = "the board of charges", description = "{i}A coach, sixpence. A cart, twopence. A drove, a farthing a head. A person on foot with a grievance, free.{/} The last line is in different paint." },
        { name = "the keeper's chair", description = "Inside, by the window, facing up the road. The seat is worn. On the sill is a mug with a dry brown ring in it and a tally stick with one day cut very deep." },
        { name = "the tally stick", description = "Notches for carts, a row a day, for years. The last row but one has so many that they run round the stick and back. The last row has none. He sat a day to be sure, and then he went too." },
      },
      actions = {
        { "Knock at the hatch", say "It swings open by itself on a leather hinge. Nobody. You feel in your pocket for a toll from habit, and remember the board. You are on foot and you have several grievances. You go through free." },
      } },
    { name = "the view back",
      description = "Behind you the castle stands on its hill with its four towers, three matching. From this side you can see what the petitioners cannot: it has no back door. It was built to be gone to. Nobody thought about leaving it." },
    { name = "the view ahead",
      wonder = true,
      description = "The road tops a rise and there it is, all of it, in a bowl of low hills: {shimmer}Erstwhile{/}. A wall with half its towers, a river with three bridges and the piers of a fourth, a hundred spires and the stumps of a hundred more, and a palace on a mound in the middle with trees coming out of the roof. No smoke rises from it. And it is not empty. From here, with the light behind it, you can see the streets, and there are people in the streets, very small and pale, going about their day.",
      actions = {
        { "Shade your eyes", say "Carts. A woman shaking a cloth from a window. Two men carrying a ladder. You watch the ladder go clean through a fallen wall, and the men after it, without any of the three slowing down. You take your hand away from your eyes. Then you go on down the hill, since you have come all this way." },
      } },
    { name = "a signpost",
      description = "An oak post with one arm left on it. {i}TO THE COURT{/}, it says, and points at the city. Below it somebody from the castle has nailed a newer board, pointing the other way, which says {i}TO THE COURT{/}.",
      things = {
        { name = "the newer board", description = "Neatly painted, with the lion. It is ninety years old. It is the newer board." },
        { name = "a third board", description = "On the ground, face down. You turn it over. {i}MAKE UP YOUR MINDS.{/} It is in a countryman's lettering and has been nailed up and taken down more than once." },
      } },
    { name = "a shepherd",
      icon = "☺",
      description = "A living one, with a crook and a dog, grazing forty sheep along the verge. He is the only person you have seen on the road and he is not going any further than the fifth stone.",
      things = {
        { name = "his dog", description = "A black and white bitch lying flat with her nose on the edge of the road. She watches the city. Now and then her tail goes, twice, as a dog's does for somebody it knows." },
        { name = "the sheep", description = "They graze up to the gate and no further. The grass is as good inside. He says they will not be told." },
      },
      actions = {
        { "Ask about the city", say "\"They're no trouble,\" he says. \"Very polite. My grandfather sold them mutton. They paid, too, proper money, and it was there in the morning.\" He looks at the walls. \"You don't tell them,\" he says. \"That's all. Nobody ever has, and it's not for you or me to be the first.\"" },
        { "Ask why he stops at the stone", say "\"Because past it I start wanting to take my hat off to people,\" he says, \"and they will stop and talk. Lovely manners. I've forty sheep to see to.\"" },
      } },
    { name = "a ditch full of cresses",
      description = "The old conduit, broken open, running clear over the setts. Watercress grows in it as thick as a hedge. It fed the palace fountains. It still tries: you can hear it going on under the road towards the walls.",
      actions = {
        { "Taste the cress", say "Hot and green and clean. It is the first thing you have eaten today that nobody queued for." },
      } },
    { name = "a mounting block",
      description = "Three stone steps by the road for getting on a horse. Cut in the top one: {i}For the convenience of persons leaving.{/} Nobody thought to put up one on the other side." },
    { name = "a stone seat",
      description = "A bench in the bank with a lion's paw at each end, where travellers sat to put on their good shoes before the gate. The seat is hollowed in two places, side by side.",
      things = {
        { name = "a pair of good shoes", description = "Under the bench, in a row, with the buckles gone green. Whoever sat here to change put the old ones back on and left these, and walked the other way." },
      },
      actions = {
        { "Sit down", say "You sit in one of the hollows. The stone is cold, and then it is not as cold as it should be on the other side of you. You stay very still. After a while the warmth gets up, as a person does who has got their breath back, and goes on towards the city." },
      } },
  },

  exits = {
    { to = "castle_hill", label = "Back to the queue", description = "Round the hill to the front of the castle, where people are waiting for something." },
    { to = "er_gate", description = "Down to the wall, and the gate, which is open because half of it is on the ground." },
  },
}

space {
  id = "er_gate",
  region = "erstwhile",
  name = "The Kings' Gate",
  description = "Two round towers of pale stone and an arch between them that would take a haystack. One leaf of the gate hangs from its top hinge. The other lies flat in the road with grass in the bolt holes. In the middle of the opening, exactly where the leaves would meet, a sentry stands at attention. You can see the street through him. He has not noticed.",
  variants = {
    { when = flag "er_gate_open",
      description = "Two round towers of pale stone and an arch between them that would take a haystack. One leaf of the gate hangs from its top hinge. The other lies flat in the road. The sentry has stepped one pace to the left, which is the drill for letting a person through, and is presenting arms to you. You can see the gatehouse wall through his helmet." },
  },

  things = {
    { name = "the sentry",
      key = "er_sentry",
      icon = "♜",
      description = "A halberdier of the Gate Company in a tall helmet and a tabard with the lion, all of it the colour of breath on a window. He is young. He stands very well. As you come up he brings the halberd across and says, clearly, in a voice from the far end of a long room: \"Halt. The password.\"",
      variants = {
        { when = flag "er_gate_open",
          description = "A halberdier of the Gate Company in a tall helmet, the colour of breath on a window. He has passed you, and is now watching the road again over your shoulder, in case of the relief." },
      },
      things = {
        { name = "his halberd", description = "You can read the maker's stamp on the blade, and through the blade, the hinge behind it. It does not waver. He was the best in his company at standing." },
        { name = "his boots", description = "Polished. They do not quite touch the road. The road has sunk an inch in ninety years and he has stayed where he was posted." },
        { name = "his face", description = "Twenty, perhaps, with a cut on the chin from shaving in a hurry. He is trying not to look pleased at having somebody to challenge." },
      },
      actions = {
        { "Guess the password", when = no(flag "er_gate_open"),
          say "\"Lion,\" you say. \"No.\" \"Crown.\" \"No.\" \"Friend.\" \"That is the answer to a different question,\" he says, kindly. You try sixteen more, including, by the end, vegetables. He hears every one with attention and shakes his head at each, and is plainly sorry about it." },
        { "Say you do not know it", when = no(flag "er_gate_open"), set "er_gate_open",
          say "\"I do not know it,\" you say. He lets out a breath he has had in for some time. \"Nor do I,\" he says. \"They change it on Thursdays. The corporal brings it round. He did not come.\" He looks straight in front of him. \"Standing orders say, if the word is not known to the sentry, the sentry shall use his judgement. I have been waiting for somebody honest.\" He takes one pace to the left. \"Pass, friend.\"" },
        { "Ask when he is relieved", when = flag "er_gate_open",
          say "\"At six,\" he says. You ask what time it is now. \"Coming up to six.\" His eyes go to the road. \"He is a little behind. He is a good man. He will have a reason.\"" },
        { "Salute", say "He cannot return it with a halberd at the port. He brings his heels together instead, with a click you hear a moment late, the way you hear an axe across a valley." },
      } },
    { name = "the fallen leaf",
      description = "Oak, a foot thick, studded with iron, flat in the road. It did not fall. The pins were drawn from the hinges and it was let down, on ropes, and the ropes are still under it.",
      things = {
        { name = "the hinge pins", description = "Laid side by side on the sill of the guardroom window, three of them, each as long as your arm. Greased. Somebody meant to put it back up when they came home." },
        { name = "a wicket door", description = "A small door within the great one, for people on foot. It is lying on its back like the rest and is the only way in that was ever locked. The key is in it, on the inside, which is now underneath." },
        { name = "the studs", description = "Iron roses, a thousand of them, worn bright on top by boots. You have been walking on a door." },
      },
      actions = {
        { "Knock on it", say "You crouch and knock on the gate, which is the road. It sounds hollow. Under it, something small that lives there now knocks back, once, and you both leave it at that." },
      } },
    { name = "the hanging leaf",
      description = "Its twin, still up, by one hinge, leaning out over the road at an angle that has held for ninety years and that nobody walks under twice.",
      things = {
        { name = "the notices", description = "Nailed to the inside face, one over another: a fair, a hanging, a lost spaniel, a reward. The top one is plain and printed in haste. {i}The Court is removed to Stillstanding for a short time. Business as usual.{/}" },
        { name = "the lost spaniel", description = "{i}Answers to Chancellor. Liver and white. Is the property of a child. Any person finding him to apply at the Palace.{/} Somebody has written across it, with a flourish: {i}Found.{/}" },
        { name = "a swallow's nest", description = "In the angle of the top hinge. They come back to it every year. They are the only traffic through the Kings' Gate that the sentry lets by without a word." },
      } },
    { name = "the guardroom",
      description = "In the foot of the left tower: a table, two benches, a rack of halberds and a fireplace. Everything is in its place and under a finger of dust, apart from one stool, which is clean.",
      things = {
        { name = "the rack of halberds", description = "Eleven, rusted to the rack. The twelfth peg is empty. It is the only weapon in the building still being carried." },
        { name = "the duty roster", description = "Chalked on a board. {i}Wed.: Garrick. Thurs.: Garrick.{/} And for Friday, nothing, only a smear where a thumb began to write and was called away.",
          actions = {
            { "Read the old rosters", say "They are underneath, ghost over ghost in the chalk. Garrick does a great many Wednesdays. He was the youngest, and it is the dull watch. He has had it, by your count, about four thousand seven hundred times running." },
          } },
        { name = "the clean stool", description = "By the cold hearth. Nobody sits on it now. He comes in at six, you suppose, when the relief has not come, and sits down for one minute, and goes back out." },
        { name = "a pack of cards", description = "Dealt for four on the table, face down, under the dust. You turn one hand over. It is a very good hand. Whoever held it was called out to load carts and has been thinking about it ever since." },
        { name = "the password book", description = "A small ledger on a nail. A word for every week, down the page: {i}Marigold. Bastion. Herring. Ninepence.{/} The last entry is a date with nothing after it. The Thursday's word was never written in, because there was not a Thursday." },
      } },
    { name = "the right-hand tower",
      description = "The stair has fallen in. An ash tree has taken its place and goes up the inside of the tower like a second stair, and out at the top.",
      things = {
        { name = "the ash", description = "Sixty feet, straight as a pike. Its roots have lifted the tower floor into a dome. Its top is level with the battlements and keeps a better lookout than was ever kept from them." },
        { name = "the arrow slits", description = "Ivy has come in through every one and met in the middle. The tower is defended now by a great number of sparrows." },
      } },
    { name = "the arms over the arch",
      description = "The lion again, standing, cut in stone the size of a cart. The motto under it is not the castle's. It is the old one: {i}HERE WE STAY{/}.",
      things = {
        { name = "the motto", description = "Deep, square letters, gilded once. After the court had gone somebody climbed up with a pot of tar and painted out the last word, and then, thinking better of it, scraped most of the tar off again." },
      } },
    { name = "the bell",
      description = "A gate bell in a cage on the wall, with a rope, for carters arriving after dark. The rope has rotted off a yard above your reach.",
      actions = {
        { "Jump for the rope", say "You jump. You get it, on the third go, and it comes away in your hand to the top and falls on your head in a coil. The bell does not ring. The sentry does not turn round, but his shoulders are shaking." },
      } },
    { name = "a customs table",
      description = "A stone slab under the arch where carts were searched. On it, under a glaze of old rain, a pair of scales, a stamp and a sleeping cat. The cat is alive, and tabby, and solid all the way through.",
      things = {
        { name = "the cat", description = "It has chosen to live among people who cannot move it off things. Its saucer, by the wall, is full of milk that a ghost puts down every morning. It drinks from the conduit. It has the manners not to say so.",
          actions = {
            { "Stroke the cat", say "It is warm. You had not known how much you wanted something to be. It allows four strokes and then looks past you and gets up to rub its head against a pair of ankles that you cannot see at all." },
          } },
        { name = "the scales", description = "One pan has rusted through. The other holds an acorn, a snail and a copper weight stamped with a lion. They balance." },
      } },
    { name = "the street beyond",
      description = "Through the arch: a broad paved way running up to the palace mound, with houses on both sides, some standing, and people on it. They are the grey of the sentry. A woman with a basket comes down towards the gate, nods to him, turns, and goes back up. She does it again while you watch. She is on her way to market and it has been a long way." },
    { name = "the wall",
      description = "Thirty feet of dressed stone running off in both directions with a tower every bowshot. Half the towers have gone. They were not knocked down. Their stone is in every barn and pigsty for five miles, and they went in an orderly way, top course first." },
  },

  exits = {
    { to = "er_old_road", description = "Back up the rise, past the stones that count the wrong way." },
    { to = "er_high_street", label = "Through the gate",
      description = "Past the sentry and up the paved way into the city.",
      requires = flag "er_gate_open",
      locked = "the sentry has his halberd across the gap, and he wants the password" },
  },
}
