space {
  id = "observatory",
  region = "collegium",
  name = "The Observatory",
  description = "The top of the tower, under a copper dome with a slot in it. In the middle is the Long Glass, a telescope the length of a barge. In a chair at the small end of it sits the only member of the Collegium who is looking at anything.",
  palette = { bg = "#0a0b14", text = "#ccd0e0", dim = "#5e6484", accent = "#e07a6a", border = "#2e3458" },
  ambience = { stars { color = "#a8b4e8", rate = 0.4 }, flicker { color = "#e07a6a", strength = 0.08 } },

  things = {
    { name = "Dr Hesper Vane",
      key = "astronomer",
      icon = "☺",
      description = "The Astronomer. She is not noble; she was hired, since somebody had to do the sums. There is ink on her cuffs, and she has not been to bed, by the look of her, since the star fell.",
      variants = {
        { when = flag "co_glass_open",
          description = "The Astronomer, with a piece of a star in her lap and her ear against it. She has stopped doing sums. She is listening, and now and then she writes down a single figure and looks at it for a long time." },
      },
      things = {
        { name = "her cuffs", description = "Ink to the elbow. The sums have gone up her sleeves when she ran out of paper." },
        { name = "her chair", description = "On wheels, on a rail, so that it follows the eyepiece. It has a blanket, a hot brick and a strap. She has fallen asleep at the Glass before and woken up over the quadrangle." },
      },
      actions = {
        { "Ask about the fallen star", when = no(flag "co_glass_open"),
          say "\"Eleven nights ago. North, over the moor. I had it in the Glass for four seconds.\" She shows you a page with one line drawn across it and a great many sums. \"It came from the Gap. I would stake the tower on it. I'd give a good deal for a piece of it, and the Bursar will not pay for a cart.\"" },
        { "Show her the splinter", when = all { item "star_splinter", no(flag "co_glass_open") }, take "star_splinter", set "co_glass_open",
          say "She takes it in both hands. She weighs it, smells it, and holds it to her ear, and her face changes. \"It's still going,\" she says. Then she remembers you. She gets out of the chair and holds it for you, as a footman would. \"Look where it came from. Go on. Nobody else in this building ever asked.\"" },
        { "Ask about the Gap", when = flag "co_glass_open",
          say "\"I don't know. That is the answer, and it took me twenty years to be able to say it.\" She turns the splinter over. \"The Founder knew it was there. She did not know either. But she left a note to keep an eye on it, and that is my post.\"" },
      } },
    { name = "the Long Glass",
      key = "long glass",
      description = "Brass and oak, forty feet of it, on a cradle with a wheel. It is aimed at one particular piece of sky, and its feet have been chalked round so that nobody moves it. You may not touch it. This is conveyed by the Astronomer without looking up.",
      variants = {
        { when = flag "co_glass_open",
          description = "Brass and oak, forty feet of it, chalked round the feet. The chair at the eyepiece is empty, and is being held for you." },
      },
      things = {
        { name = "the Gap",
          visible_if = flag "co_glass_open",
          wonder = true,
          description = "Stars, thick as frost on glass, and in the middle of them a place with none. {magic}It is not empty sky. It is sky that has been left out.{/} Dr Vane has numbered the stars along its edge, from charts that go back to the Founder. Tonight number forty-one is not there. You have held a piece of forty-one." },
        { name = "the eyepiece", description = "Worn to the shape of one eye socket. Hers." },
        { name = "the chalk marks", description = "Round each foot of the cradle, renewed so many times that they stand up from the floor like the rim of a plate." },
      },
      actions = {
        { "Look through it", when = flag "co_glass_open", fx("wash", "#a8b4e8"),
          say "Cold brass on your eyebrow. Then more stars than you thought there was room for. Then the place where they stop. You look at it for as long as you can, and it is worse than dark, because it is the right size for something. When you sit back the Astronomer is watching your face. \"Yes,\" she says. \"That.\"" },
      } },
    { name = "the star charts",
      description = "Three hundred years of the same patch of sky, in a rack, a chart a night when it is clear.",
      things = {
        { name = "the oldest chart", description = "Drawn on the back of a flour sack. In the corner, in a round farmhand's script: {i}keep an eye on this.{/}" },
        { name = "last month's chart", description = "Forty-three stars round the edge, each with its number." },
        { name = "tonight's chart", description = "Forty-two. She has drawn a small circle where the other was and written the hour beside it, to the second." },
      } },
    { name = "the dome",
      description = "Copper, green on the outside, turned by a crank. The slot has not been moved in years. She knows where she wants to look.",
      things = {
        { name = "the crank", description = "Seized. There is a bird's nest in the gears, an old one, and she will not have it cleared." },
      } },
    { name = "the red lantern",
      description = "A lamp with a red glass, so as not to spoil her eyes. From Elbow Lane it is the wrong-coloured light in the tower, and the subject of three ghost stories." },
    { name = "a cold supper",
      description = "A covered plate, left on the top stair by somebody from the kitchens. Under the cover there is a note: {i}EAT IT THIS TIME. T.{/}" },
    { name = "the orrery",
      description = "A clockwork model of the heavens, in brass, under a dust sheet. The sun, the moon, the wandering stars, all going round on arms.",
      things = {
        { name = "the middle of it", description = "Where the world should be there is an empty socket. Dr Vane says that the ball was never fitted. The maker could not decide what shape to make it, and died asking for more time." },
      },
      actions = {
        { "Wind it", say "The planets go round an empty place, smoothly, ticking. It works perfectly well without. That, she says, is what bothers her." },
      } },
    { name = "a slate of sums",
      description = "The path of the star, worked backwards. The last line is underlined three times and has no number at the end of it, only a small drawing of an edge." },
    { name = "the window",
      description = "A slit, facing north. On a clear day you can see the moor from here, and on it a mark like a thumbprint." },
    { name = "a letter from the south",
      description = "On the desk under a star-weight: thin paper, salt stained, come by a smuggler and two porters. It is from a Dr Mimms, of Natural Philosophy, who has never before written to an astronomer.",
      things = {
        { name = "the letter", description = "{i}Dear Dr Vane. Forgive a stranger. I have found a room under a hill here with the northern sky set into its roof in crystal: every star, in place, as seen from our own county. I enclose a rubbing. There is one patch where no stones are set. It is north, and high. I thought of you.{/}" },
        { name = "the rubbing", description = "Charcoal on bark paper. Dots, large and small. Dr Vane has laid her own chart of the Gap over it. The blank on the rubbing and the blank on the chart are the same shape, to the width of a hair." },
      },
      actions = {
        { "Ask what she makes of it", say "Dr Vane does not answer at once. \"That room is older than the Collegium,\" she says. \"Older than the kingdom, the letter says. And whoever made it knew about the Gap.\" She squares the two papers, edge to edge. \"I had thought something was lost from the sky. They left it out as if nothing had ever been put there.\"" },
      } },
    { name = "the night porter's chair",
      description = "By the stair head: a wooden chair with a blanket, where old Joss sits up with her in case she falls off the ladder. He has learned forty constellations without meaning to, and has his own names for them. The Plough he calls the Barrow." },
    { name = "a shelf of rejected constellations",
      description = "Over the door, a row of cardboard tubes, each with a chart. Every noble house has petitioned at some time to have a constellation named after it. Dr Vane draws each one up, with care, and files it here.",
      things = {
        { name = "the Vaux-Pimbleton", description = "Eleven stars in the shape of nothing. The petition says {i}a lady, seated{/}. Dr Vane has annotated: {i}a chair, at most.{/}" },
        { name = "the Sock", description = "Not a petition. Her own. Five faint stars in the south that she noticed one winter and could not help seeing. She has never submitted it. She looks at it on bad nights." },
        { name = "the Ladle", description = "Seven stars, a bowl and a handle. Every kitchen in the kingdom already calls it that. The Collegium's official name for it is the Sceptre of Thrum, and nobody has ever once used it." },
      },
      actions = {
        { "Ask her which names are true", say "\"None of them. They are only where we happen to be standing.\" She does not take her eye from the glass. \"Move a little and the Ladle is a line. But people need to say good evening to something.\" She adjusts a screw. \"I say it to the Sock. One does not tell the Faculty.\"" },
      } },
    { name = "a bucket under a drip",
      description = "The dome leaks at the slot. A wooden bucket stands under it, with a float in it made of a cork and a pin. She uses it as a rain gauge and sends the readings, quarterly, to an address in the sky.",
      things = {
        { name = "the reply, pinned up", description = "A printed card. {i}The Weather Office thanks you for your communication, which has been placed before Mr Mild. The rain you describe was not one of ours.{/}" },
      } },
  },

  exits = {
    { to = "academy_quad", description = "Down two hundred steps, past a plate on every landing." },
  },
}

space {
  id = "practical_room",
  region = "collegium",
  name = "The Practical Room",
  description = "A long laboratory with benches, sinks and a blackboard, built by the Founder for the doing of actual magic. The lock rusted shut in the old king's day. Somebody has oiled it since. The dust lies thick on every bench but one.",

  things = {
    { name = "Tib",
      icon = "☺",
      description = "A scullery maid of about fifteen with her sleeves rolled, standing at the clean bench. She has frozen with one hand in the air. Above the hand a teaspoon is turning slowly, by itself, giving off a little light.",
      things = {
        { name = "her apron", description = "Scorched in one place, soaked in another, and with a patch that is, for the moment, see-through. She says it washes out." },
        { name = "her slate", description = "Lecture notes on one side. On the other, a list: {i}spoon (done). Kettle (done). Dr V's supper, keep warm (done, she never eats it). Self, off the ground (soon).{/}" },
      },
      actions = {
        { "Promise not to tell", say "She lets her breath go, and the spoon drops into her palm. \"They'd send me off,\" she says. \"It isn't allowed if you've no name. You need the blood for it.\" She looks at the spoon. \"I don't know what I've got, then. Something. It comes easier than the washing up.\"" },
        { "Ask who taught her", say "\"Nobody. Her.\" She nods at the blackboard. \"She wrote it out plain. She says it's mostly paying attention and not minding if you look daft.\"" },
        { "Ask about the Astronomer", say "\"She's the only one who says thank you.\" Tib goes pink. \"She showed me the Glass once. I do her suppers. She doesn't know it's me keeps the lamp from smoking.\"" },
        { "Show her the grimoire", when = item "helpful_grimoire",
          say "The book comes out from behind your shoulder like a shy child. Tib looks at it. It looks, in so far as a book can, at Tib. It opens at chapter one. \"I've read you,\" she says. \"Eleven times. On the floor, with a candle.\" The book goes back behind your shoulder, but slowly, and you can tell that it would rather not." },
      } },
    { name = "the teaspoon",
      wonder = true,
      description = "Kitchen silver, bent at the neck. {magic}It is the only thing in the Collegium to have been enchanted in this century.{/} It stirs by itself, clockwise. Tib says she is working on the other way.",
      actions = {
        { "Hold it", say "It is warm and it tingles, and for a second your hand wants to go round and round. You put it down. It goes on without you, pleased with itself." },
      } },
    { name = "the blackboard",
      description = "Covered from edge to edge in a round, patient hand, three hundred years old and never wiped: the Founder's first lesson. It begins: {i}Right. Sleeves up. Any of you can do this.{/}",
      things = {
        { name = "the middle of the lesson", description = "A drawing of a kettle, with arrows. {i}Do not push. Ask, and mean it.{/}" },
        { name = "the last line", description = "{i}If it works, you were right. Never mind who your father was.{/} A later hand has drawn a box round this in red and written {i}see me{/}." },
      } },
    { name = "the dusty benches",
      description = "Forty places, forty sets of glassware, each with a brass plate for a student's name. The plates are blank. Nobody was ever entered.",
      things = {
        { name = "a retort", description = "Glass, with something dried at the bottom of it that still gives off a faint smell of lilac and gunpowder. The Founder's own, by the label. It was a demonstration, and nobody came." },
        { name = "the clean bench", description = "No plate. She has scratched a small T on the underside, where it will not show." },
      } },
    { name = "a jar of failed spells",
      description = "On the windowsill, stoppered. Tib puts the ones that go wrong in here so that they do not get into the linen. Something inside is knocking, politely.",
      actions = {
        { "Listen", say "A tap. A pause. Two taps. It is not trying to get out. It is, you think, trying to find out if it is the only one." },
      } },
    { name = "the sinks",
      description = "Lead, deep, with a pump. One tap runs hot, with no boiler anywhere. That one is hers." },
    { name = "a cupboard of ingredients",
      description = "Jars by the hundred, labelled in the round hand.",
      things = {
        { name = "a jar marked EYE OF NEWT", description = "Mustard seed. Under the label, smaller: {i}It was always mustard seed. Don't let them tell you.{/}" },
        { name = "a jar marked PATIENCE", description = "Empty. A second label: {i}You'll have to make your own.{/}" },
        { name = "a jar of moon-cap, dried", description = "Blue, from the Mumblewood. {i}For soup only. I mean it.{/}" },
      } },
    { name = "the register",
      description = "A book on the lecturer's desk for the names of those attending. Three hundred years of blank pages. On the newest one somebody has written a T, in pencil, and rubbed it out, and written it again." },
    { name = "a scorch on the ceiling",
      description = "Round, black, and recent. Tib does not want to talk about it. It was a Tuesday. She had an idea." },
    { name = "the lost door",
      description = "At the end of the corridor outside, between the Practical Room and a broom cupboard, there is nine feet of blank wall with a doormat in front of it. The mat is swept. The wall has a letter box.",
      things = {
        { name = "the letter box", description = "Brass, in the plaster, at the usual height. The flap lifts. Beyond it is a dark room and a smell of old paper, and no door anywhere that leads to it. The plate reads {i}NULL{/}." },
        { name = "the doormat", description = "Tib shakes it on Fridays. Nobody told her to. She says a person could come back, and it would be a poor thing to come back to dust." },
      },
      actions = {
        { "Knock on the wall", say "You knock where a door would be. It sounds like a door. Tib, in the Practical Room, looks up from her teaspoon. \"He's not in,\" she says. \"He took the outside with him. I can feel where it was. It's like a tooth that's gone.\"" },
      } },
    { name = "a row of pot plants",
      description = "On the window sill, in jam jars: cuttings sent back by the Expedition, for the gentlemen to practise growth charms on. The gentlemen have not attended. The cuttings have grown anyway, a foot a week, and one has got out through the casement and is halfway to the roof.",
      actions = {
        { "Measure the creeper", say "You put your thumb at the tip, against the frame, and look away to count to twenty. When you look back the tip is at your knuckle. Tib says that she talks to it. She says that it does not need encouraging and she is trying the opposite." },
      } },
    { name = "a shelf by the stove",
      description = "A plank on two bricks, where Tib keeps her own things. Not college property. A mug, a needle case, a row of small objects that anybody else would call rubbish.",
      things = {
        { name = "a tin sock on a pin", description = "A penny charm from Spindle's. It is pinned to the plank, not to her. \"She doesn't want it worn,\" Tib says. \"She wants it somewhere she can find it.\"" },
        { name = "a bowl", description = "Tin, with her name scratched on. There is soup in it. It is hot. Tib says she did not put it there and she has stopped being surprised by that and started rinsing the bowl." },
        { name = "a row of teaspoons", description = "Eleven. Each one did something once, for her, when asked nicely. She has kept them all. She says you do not use a thing like that twice and you do not throw it out either." },
      },
      actions = {
        { "Ask if it is magic or gods", say "Tib thinks about it properly, which nobody in this building has done for a question in years. \"I don't know there's a join,\" she says. \"Magic's asking a thing to do what it nearly would anyway. Praying's asking somebody. Half the time I couldn't tell you which I've done.\" She rinses the bowl. \"It works better when you say thank you. Either sort.\"" },
      } },
    { name = "a door that sticks",
      description = "The store cupboard at the back. It has stuck since the room was built. The Founder left a note about it in the register, in her own hand, and Tib has read the note.",
      things = {
        { name = "the Founder's note", description = "{i}Do not plane this door. It is the only thing in the College that takes its work seriously. Lift, wait, and push. M.P.{/}" },
      },
      actions = {
        { "Lift, wait, and push", say "It opens, on brooms and a smell of chalk. Tib grins at you. \"Took the Professor of Applied Force a term,\" she says. \"He was pulling. It says pull. He's got a chair in it.\"" },
      } },
  },

  exits = {
    { to = "academy_quad", description = "Out, pulling the door to until the latch clicks, as you found it." },
  },
}

space {
  id = "founders_study",
  region = "collegium",
  secret = true,
  name = "The Founder's Study",
  description = "Under the statue there is a room about the size of a farm kitchen, which is what it is furnished as. A range, a settle, a rag rug, a dresser. The first Chancellor of the Royal Collegium of Hereditary Magic did her thinking down here, with her boots off, where the quality could not see.",
  palette = { bg = "#120f0c", text = "#d6cdbc", dim = "#786c5c", accent = "#d8a860", border = "#4a3c2c" },
  ambience = { dust { glyphs = "·˙", color = "#5c5446", rate = 0.2, speed = 0.15 }, steam { glyphs = "˙·", color = "#6c645a", rate = 0.15 } },

  things = {
    { name = "the kettle",
      wonder = true,
      description = "On the range, which is cold and has been cold for three centuries. {magic}The kettle is singing.{/} It is just short of the boil. She put it on and went up to give a lecture, and it has waited.",
      actions = {
        { "Make the tea", say "You could. Everything is laid ready, for one. You find that you would rather it was still waiting when the right person comes down those steps, and you leave it singing." },
      } },
    { name = "the patent of nobility",
      description = "Framed over the range: the royal patent that made Mag Pargeter, hedge-witch of Greenhollow, a Lady, so that she might lawfully teach the children of lords. It is signed by the King. Tucked into a corner of the frame is a practice sheet with the King's signature on it nine times, getting better." },
    { name = "her boots",
      description = "By the range, where she left them. String for laces. They are the ones on the statue." },
    { name = "the dresser",
      description = "Deal, scrubbed white, with mugs on hooks and a drawer.",
      things = {
        { name = "a row of mugs", description = "Forty, on hooks, one for each place in the Practical Room. One has been used." },
        { name = "a letter, never sent", description = "{i}To whoever turns the page. They would not let me teach the ones who could do it, so I taught the ones who could pay, and wrote the real lessons on a wall where a servant might see. I am sorry it was the long way round. It was the only way they would build me the room. M.P.{/}" },
        { name = "the drawer",
          description = "Knives, string, a nutmeg grater, and in the middle, by itself on a folded cloth, a wooden spoon.",
          variants = {
            { when = item "founders_spoon",
              description = "Knives, string, a nutmeg grater, and a folded cloth with the shape of a spoon pressed into it." },
          },
          things = {
            { name = "a wooden spoon",
              key = "spoon",
              visible_if = no(item "founders_spoon"),
              description = "Dark with use and scorched at the bowl. The air in the drawer is warm. Every wand in the Collegium is ebony and silver and has never done anything. This is beech, and is what all of them are a picture of.",
              actions = {
                { "Take the spoon", once = true, give "founders_spoon", fx "sparkle",
                  say "It fits your hand, and then for a moment your hand fits it. Upstairs, across the whole Collegium, every candle burns an inch taller, and in the Practical Room a girl looks up. You have {gold}Mag Pargeter's Spoon{/}. You feel that you have been lent it, by somebody with views on how it is to be looked after." },
              } },
          } },
      } },
    { name = "the window",
      description = "There is one, though you are under a lawn. {magic}It looks out at knee height across a field of barley with a windmill in it.{/} It is the view from a kitchen in Greenhollow. She brought it with her.",
      actions = {
        { "Open it", say "It opens. Warm air comes in, and the sound of a mill, and a long way off a goose. You shut it, gently. It is somebody else's home." },
      } },
    { name = "the settle",
      description = "High-backed, with a cushion gone flat in one place. A shawl is folded over the arm.",
      things = {
        { name = "the shawl", description = "Grey wool, darned. You have seen its sisters, seven of them, on a shopkeeper in Elbow Lane. Somebody taught somebody to knit." },
      } },
    { name = "the rag rug",
      description = "Made of old gowns. Black silk, ermine, gold braid, cut into strips and hooked into a mat for wiping her boots on." },
    { name = "a shelf of students' work",
      description = "Forty exercise books, kept. Thirty-nine are by the sons of dukes, and each is marked on the cover in her round hand: {i}tried{/}.",
      things = {
        { name = "the fortieth", description = "No name on it. A kitchen boy's, by the grease. On the cover: {i}YES.{/} And then, lower down, smaller: {i}They sent him away on the Tuesday. I never found where.{/}" },
      } },
    { name = "a calendar",
      description = "Pinned by the door, three hundred years out of date. One day is ringed: {i}Practical, first class. Bring cake.{/}" },
    { name = "a work basket",
      description = "By the settle: wool, needles, and a piece of knitting left on the pins in the middle of a row.",
      things = {
        { name = "the knitting", description = "A nightcap, in grey flannel wool, with the tassel done first. She knitted them for the scullery maids, who had cold attics. The pattern is on a slip in the basket in her hand: {i}cast on 80. Keep going. A person thinks better with warm ears.{/}" },
        { name = "a darning egg", description = "Turned from a hard green stone with no grain to it. It is cool, and never quite still in the hand. She had it from a sailor in exchange for curing a wart, and held that it was the best thing in the house for heels." },
      },
      actions = {
        { "Finish the row", say "You cannot knit. You take up the pins anyway and look at them. They are warm. Your hands do eleven stitches, neatly, to the end of the row, and stop, and you put the work down very carefully in the basket, exactly as it was, one row further on than it has been for three hundred years." },
      } },
    { name = "a row of jam jars",
      description = "On the sill, with cuttings in water: mint, a geranium, something from a hedge. They have roots. The water is clear. Nobody comes here, and nothing in this room has been let go dry." },
    { name = "a shelf of small gods",
      description = "On the mantel, where another Chancellor would have her honours: a row of the things a hedge-witch keeps. A spoon in a jar, a darning egg, a horseshoe, a door knob with no door.",
      things = {
        { name = "the door knob", description = "Brass, plain, on a square of oak. A label on a string: {i}Jamb's, with thanks. Got me in.{/} The Collegium's great gate stuck, the day she came with her forged patent. She lifted, and waited, and it thought about her, and opened." },
        { name = "the darning egg", description = "Boxwood. It is the fellow of one you have seen in a cupboard a long way above the Street. She has cut two initials in it, and they are not hers." },
        { name = "a horseshoe", description = "Nailed points up. A label: {i}Mind-the-Step's. Doesn't work. Shows willing.{/} She had it from the doorstep of the cottage in Greenhollow and it is the only thing she brought away." },
      },
      actions = {
        { "Dust the shelf", say "You run your sleeve along it. Spoon, egg, shoe, knob. You put each one back a little straighter than you found it. The room seems to approve. The kettle shifts on the range." },
      } },
    { name = "a letter under the jam jars",
      description = "Folded in four, weighted with a jar of damson. It is in her round hand and was never sent. It begins {i}Dear Stock{/}.",
      things = {
        { name = "the letter", description = "{i}They have made me a Chancellor and I have forty noblemen who cannot boil an egg. I am teaching the real lessons to the kitchen, after dark, on the wall. If that is a sin it is one of yours. Send up a ladle. Yrs, Mag.{/}" },
        { name = "the reply", description = "On the back, in a different hand, large, greasy at the thumb: {i}It isn't. Have sent two. Eat something.{/} There was no post between the two of them that anybody at the lodge ever handled." },
      } },
  },

  exits = {
    { to = "academy_quad", label = "The steps up", description = "Back up into the daylight, behind a statue's skirts." },
  },
}
