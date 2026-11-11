-- Law and masonry: the Watch House, the gaol under it, the town wall, and what is inside the wall.

space {
  id = "watch_house",
  region = "aldmoor",
  name = "The Watch House",
  description = "The headquarters of the Aldmoor Watch: one room, one stove, one desk, and a rack of forty halberds for a watch of eleven. Crime in Aldmoor is low. The Watch puts it down to vigilance. The town puts it down to the regulations, which have made most things too much trouble.",

  things = {
    { name = "Captain Brisket",
      icon = "♜",
      description = "A broad woman with her boots on the desk and a report in her lap, which she is marking, as you would homework. She has run the Watch for twenty years, and in that time has arrested nine people, all of whom asked.",
      things = {
        { name = "her boots", description = "Size eleven, resoled by the cobbler in the lane. She waited for them herself. It took a fortnight, and she says it was the best holiday she ever had." },
        { name = "the report", description = "Constable Dunt's account of the night. It reads, in full: {i}Dark. Then less so.{/} She has given it six out of ten and written {i}good use of full stops{/}." },
      },
      actions = {
        { "Report a crime", say "\"Which regulation?\" You do not know. She slides the list across the desk. It is the one from the Gate, the long one. \"Find it, bring me the number, and we'll see.\" Nobody has ever come back." },
        { "Confess to something", when = no(flag "al_confessed"), set "al_confessed",
          say "\"To what?\" You had not thought that far. \"Adventuring,\" you say. \"Without a licence.\" She looks at you for some time. \"There isn't a licence.\" Then you cannot have had one. She sighs, writes it down, and takes a key off a nail. \"Cell four's free. Supper's at six. Mind the step.\"" },
        { "Ask about your sentence", when = flag "al_confessed",
          say "\"Served,\" she says. \"Or lost. One of the two. Dunt had the paper.\" Constable Dunt snores." },
      } },
    { name = "the halberd rack",
      description = "Forty, issued when the Watch was forty strong. They are counted every night and there are always forty, which is suspicious, since the lads use them to prop the door, hang the washing and get cats off roofs.",
      things = {
        { name = "halberd no. 1", description = "The Captain's. It has never been used in anger. It has been used in mild irritation, to change a lamp wick." },
        { name = "halberd no. 40", description = "Brand new. It replaces whichever one went missing, every time, and nobody has ever placed the order." },
      },
      actions = {
        { "Count them", say "Forty. You count again, to be sure, moving your finger. Forty. One of them, you could swear, was not there the first time." },
      } },
    { name = "the wanted board",
      description = "Cork, by the door, layered like a cliff.",
      things = {
        { name = "a poster: THE AUBREY IMPOSTOR",
          visible_if = visited "noble_house",
          description = "{b}WANTED{/}, for attending a party under another man's name. The drawing was made from the footman's description, which was mostly of boots. They are a fair likeness. You stand so that the Captain cannot see yours." },
        { name = "a poster: THE TIDE",
          description = "{b}WANTED: THE TIDE{/}, for leaving Saltwick without notice. Somebody on the coast has a sense of humour, or a grievance.",
          variants = {
            { when = flag "tide_out",
              description = "{b}WANTED: THE TIDE{/}, for leaving Saltwick without notice. Somebody has added underneath, in pencil: {i}signed out, with a stamp. All in order.{/} You look at your palm." },
          } },
        { name = "a poster with no face",
          description = "{b}WANTED{/}: whoever keeps moving the wall. Description: none. Reward: the thanks of the Council, and an end to the fines." },
        { name = "a poster of a goose",
          description = "{b}DO NOT APPROACH.{/} Last seen in Greenhollow. The artist has caught the eyes." },
        { name = "the oldest poster", description = "At the bottom of the cork, brown with age. A dragon, drawn by somebody who had only had it described. {b}WANTED: for being within the walls.{/} Regulation one has been enforced exactly once." },
      } },
    { name = "the lost property shelf",
      description = "A shelf of things handed in and never claimed. Each has a ticket.",
      things = {
        { name = "a wooden leg", description = "Ticket no. 3. It is claimed about once a week, always by somebody different, and always brought back." },
        { name = "a single sock", description = "Ticket no. 212. The Captain says a priest of Our Lady of Lost Socks comes round for these on the first of the month, and that she has stopped asking what for." },
        { name = "a cage with a cloth over it", description = "Ticket no. 88: {i}parrot, deceased, talking{/}. You do not lift the cloth." },
        { name = "a heavy glove",
          key = "glove",
          description = "Ticket no. 7, the oldest on the shelf. A left-hand gauntlet of blue-black steel, jointed to the last knuckle, very fine. It has bent the shelf. {i}Found in a hedge.{/}",
          variants = {
            { when = item "iron_gauntlet",
              name = "a dent in the shelf",
              description = "Where ticket no. 7 sat for forty years. The shelf is slowly coming back up." },
          },
          actions = {
            { "Claim the glove", once = true, give "iron_gauntlet",
              say "\"Yours, is it?\" says the Captain, not looking up. You say that it might be. \"Forty years I've dusted round that. Sign here.\" You sign. It is far too heavy, and inside the cuff there is a name tape that makes your mouth go dry. You are holding {gold}the Left Hand of Maud Ironhand{/}, and the Watch has just given it to you for a signature." },
          } },
      } },
    { name = "the stove",
      description = "Iron, round, red in the middle, with a pan of something on top.",
      things = {
        { name = "Constable Dunt", description = "Asleep in a chair with his feet in the fender. He is on nights, which is why he is asleep by day. He is also asleep by night. He says it is how he listens.",
          actions = { { "Wake him", say "\"All quiet,\" he says, before his eyes are open, and then they do not open." } } },
        { name = "the pan", description = "Watch stew. It is the same stew that is served in the cells. The prisoners get it first, while it is hot." },
      } },
    { name = "the duty roster",
      description = "A slate with eleven names and the week in squares. Every square of every night says {i}WALL{/}. In the corner somebody has drawn a very small mug." },
    { name = "the charge book",
      description = "A ledger chained to the desk. Nine entries in twenty years.",
      things = {
        { name = "the latest entry", visible_if = flag "al_confessed",
          description = "{i}One adventurer. Adventuring, no licence. Insisted.{/} Under {i}remarks{/} she has written {i}polite{/}." },
        { name = "the first entry", description = "{i}One baker. Currants, excess of.{/} The baker in the lane is her granddaughter. The buns have had one currant each ever since." },
      } },
    { name = "the blue lamp",
      description = "Over the door, so that citizens can find the Watch at night. At night the Watch is not here. The lamp does its best." },
    { name = "the step",
      description = "The top step of the stair down to the cells. It is an inch higher than the others. Everyone is warned about it. It has still tripped every prisoner the Watch has ever had, and two captains." },
    { name = "a parcel on the Captain's desk",
      description = "Brown paper, string, and a label: {i}For Master Edwin, on his birthday, from his Uncle Brisket.{/} One corner is torn. A long black face with shell eyes is looking out of it at the charge book.",
      things = {
        { name = "the card that came with it", description = "{i}Mask, cursed. Grade: mild (suitable for children).{/} The Captain has read it several times. He would have preferred it to say what a mild curse does." },
      },
      actions = {
        { "Ask about the mask", say "\"It's for the nephew,\" says Captain Brisket. \"He wanted something fierce.\" He pulls the paper up over the eyes. It slips down again. \"I've had two confessions since it came. I never asked for either. I may keep it.\"" },
      } },
    { name = "the tea corner",
      description = "A shelf, a kettle, six mugs and a caddy with a small tree stamped on the lid. The Watch runs on it. The caddy is marked {i}EVIDENCE{/}, which is how it came in, and nobody has had the heart to put it in the store.",
      things = {
        { name = "the mugs", description = "Each with a number. Number four has no handle and is for prisoners. It is said to make the best cup, and two constables have been caught using it." },
        { name = "the caddy", description = "Seized off a handcart with sacking on the wheels. The man with the cart was let go with a caution, a sandwich, and an order to come back when the caddy was empty." },
      } },
  },

  exits = {
    { to = "elbow_lane", description = "Out under the blue lamp." },
    { to = "town_wall", description = "Up the stair behind the stove, to the top of the wall." },
    { to = "town_gaol", description = "Down the stair, minding the step.",
      requires = flag "al_confessed",
      locked = "the cells are for people who have done something, and the Captain is strict about it" },
  },
}

space {
  id = "town_gaol",
  region = "aldmoor",
  name = "The Aldmoor Gaol",
  description = "Six cells under the Watch House, with a corridor, a bucket and a gaoler's chair. Not one of the doors is locked. The lock on the first broke the year it was fitted, the rest were never fitted to save money, and the prisoners have been very good about it.",
  palette = { bg = "#0d0e10", text = "#c8c8c0", dim = "#686860", accent = "#c0a060", border = "#3a3a34" },
  ambience = { drip { glyphs = "⠁⠂⠄", color = "#5a6468", rate = 0.2 }, flicker { color = "#d8a860", strength = 0.1 } },

  things = {
    { name = "the gaoler",
      icon = "☺",
      description = "Old Tam Wickett, in the chair, with a ring of keys that fit nothing here. He rattles them at intervals, for the look of the thing.",
      things = {
        { name = "the ring of keys", description = "Forty keys. One is for his own front door. The rest came with the ring." },
        { name = "his chair", description = "Tipped back against the wall at an angle he found in his first year and has kept. There are two grooves in the flagstones." },
      },
      actions = {
        { "Ask about escapes", say "\"One. Nine years back. He was in again by supper. Said it was raining.\" He rattles the keys. \"We took a dim view. He got no pudding.\"" },
        { "Ask what is for supper", say "\"Stew. Thursdays, stew with a dumpling.\" It is not Thursday. He looks sorry for you." },
      } },
    { name = "cell one",
      description = "A desk has been got in here somehow, and a good lamp.",
      things = {
        { name = "the forger",
          description = "Lettice Quill, doing eight years for forging the Council's seal. She is spending them forging the Council's seal, for practice. \"They've changed it twice to stop me,\" she says. \"It got easier each time.\"",
          actions = {
            { "Ask for a sample", say "She draws you a pardon in about a minute. It is perfect. \"Worthless,\" she says, and takes it back. \"The signature's real. I do the Captain's paperwork on Fridays.\"" },
          } },
        { name = "her inks", description = "Eleven bottles. Council black, royal violet, and a brown she mixes herself from the stew, for documents that need to look old." },
        { name = "a royal signature, practised", description = "{i}Humbert R.{/}, forty times down a sheet. The last ten are better than his." },
      } },
    { name = "cell two",
      description = "Swept, with a made bed.",
      things = {
        { name = "the innocent man", description = "He says he is innocent. So does the gaoler, and so does the Captain, who arrested him. To release him the paperwork needs a regulation number, and nobody can find the number for not having done anything.",
          actions = { { "Ask what he is accused of", say "\"Nothing,\" he says. \"That's the trouble. They can't drop a charge they haven't got.\" He is quite calm. He has taken up whittling." } } },
        { name = "a whittled goose", description = "Wood, the size of a fist, on the sill. Even in wood the eyes follow you." },
      } },
    { name = "cell three",
      description = "A gown hangs on the door, torn, with gold braid.",
      things = {
        { name = "a student, sent down",
          description = "A young man from the Collegium, in for turning a magistrate's wig into a wig. \"It already was one,\" he says. \"That is the injustice. I did nothing. I can't do anything. Four years of magic and I could not light a pipe. My valet did the practicals.\"",
          actions = {
            { "Ask how one gets into the Collegium", say "\"A name. Not a good name, an old one. The porter looks you up in the Register, and if your people were anybody before the wall went up, in you go.\" He looks at you. \"You have a name?\" You say you have somebody's." },
          } },
        { name = "his wand", description = "Ebony, silver-tipped, eleven guineas. He uses it to stir his tea." },
      } },
    { name = "cell four",
      key = "your cell",
      description = "Yours, by confession. A plank, a blanket, and a window at ankle height on Elbow Lane. Somebody before you scratched a calendar on the wall and then, under every day, the word {i}supper{/}, with a tick.",
      things = {
        { name = "the window", description = "Boots go past. You recognise the cobbler's work on most of them. A ginger cat looks in, sees it is you, and moves on." },
        { name = "the plank", description = "Worn into the shape of a person lying down, and it is not your shape. It is surprisingly comfortable once you stop arguing." },
      },
      actions = {
        { "Serve your sentence", say "You sit on the plank. You reflect. After about a minute and a half the gaoler puts his head in to say that the Captain has lost your paperwork and you are free to go, and would you like to stay for supper regardless." },
      } },
    { name = "cell five",
      description = "The door is open and there is a note pinned to it: {i}Gone to market. Back for supper. If the Captain asks, I am here.{/}" },
    { name = "the cell at the end",
      wonder = true,
      description = "Bricked up, long ago, with a slot left at the bottom. Nobody is in it. Nobody is on the books for it. The gaoler puts a bowl of stew through the slot every evening all the same, and {magic}every morning the bowl is back outside, clean{/}. \"Don't know,\" he says. \"Never have. It's in the duties. My father did it, and his.\"",
      actions = {
        { "Listen at the slot", say "Nothing. Then, when you have given up, a spoon being put down, with great care, on stone." },
      } },
    { name = "the bucket",
      description = "For the drip. The drip comes from the Watch House stove pan, through the floor, so it is stew. There is a mouse in the corner who has built a life round it." },
    { name = "the rules of the gaol",
      description = "Painted on the wall: {b}1. No escaping during meals. 2. No singing after ten. 3. Mind the step.{/}" },
    { name = "the exercise yard",
      description = "Through a barred door: ten paces by six, between high walls, with a square of sky. Prisoners walk round it for an hour a day. There is a path worn in the flags, and in the middle, where nobody treads, a dandelion.",
      things = {
        { name = "the dandelion", description = "It has a stick, a string, and a ring of pebbles. The prisoners water it by turns. A man was given an extra week last year, at his own request, to see it flower." },
        { name = "marks on the wall", description = "Scratched tallies, and one long careful drawing of a ship, in full sail, done over many sentences by many hands. Each man adds a rope. It is nearly rigged." },
      },
      actions = {
        { "Add a rope to the ship", say "The gaoler lends you his nail. You find a yard that wants a brace and put it in, as straight as you can. \"That's a fortnight, by rights,\" he says. \"But I'll let it go. It needed doing.\"" },
      } },
    { name = "the gaol cat",
      description = "Grey, thin, and able to pass between the bars of any cell in the building. It sleeps with whoever has the longest sentence. It is a sound judge, the gaoler says, and has never yet been wrong about who is staying." },
  },

  exits = {
    { to = "watch_house", description = "Up the stair. You mind the step. It gets you anyway." },
  },
}

space {
  id = "town_wall",
  region = "aldmoor",
  name = "The Town Wall",
  description = "The wall of Aldmoor, thirty feet high and wide enough on top for two guards to pass, if one of them breathes in. It goes all the way round. It keeps out armies, of which there have been none, and draughts, of which there are plenty.",

  things = {
    { name = "the watchman",
      key = "watchman",
      icon = "♜",
      description = "Corporal Slee, long and thin, with a horn to blow if he sees an army. He has a mug of hot tea in his hand. There is no stove up here, no stair close by, and no trail of steam leading anywhere.",
      things = {
        { name = "the mug", description = "Brown earthenware, steaming, with a chalk mark on the bottom. It is nearly full. It was nearly full when you arrived." },
      },
      actions = {
        { "Ask about armies", say "\"None in my time. None in my dad's. Granddad saw one, but it was ours, and it lost.\"" },
        { "Ask where he gets his tea", when = no(flag "al_knows_snug"), set "al_knows_snug",
          say "He looks both ways along the wall. \"You're not Council?\" You are visibly not Council. He knocks on the parapet with his heel, three times, and a piece of wall that you would have sworn was wall swings in by an inch. Warm air comes out, and talk, and the smell of toast. \"Mind your head. And you never saw me. Nobody does. It's rather the point of the job.\"" },
      } },
    { name = "the shrine of the wall god",
      description = "A niche in the parapet holding a small stone figure of a wall. The god of the Aldmoor wall is a wall. Worship consists of leaning.",
      things = {
        { name = "the offerings", description = "A trowel, a dab of mortar on a leaf, and one brick, very small, baked by a child." },
      },
      actions = {
        { "Lean", say "You lean. It is restful. You feel that this is a god with realistic expectations." },
      } },
    { name = "the horn",
      description = "Ox horn bound in brass, hanging at the watchman's post. For armies.",
      actions = {
        { "Blow it", say "Corporal Slee has your wrist before it reaches your mouth. \"Last time that sounded,\" he says, \"four thousand people got under four thousand beds, and it took a week and a brass band to get them out.\"" },
      } },
    { name = "the survey studs",
      description = "Every ten paces there is a brass stud in the walkway, put there by the Royal Survey. The wall is measured each spring. Each spring it comes out a few inches longer than the last, and each spring the Survey fines the Council for unlicensed building.",
      things = {
        { name = "the newest stud", description = "Bright brass, a hand's breadth beyond last year's. Nobody built anything. The Council has paid the fine and posted a reward." },
      } },
    { name = "the battlements",
      description = "Tooth and gap, tooth and gap, all the way round. Each gap has been rented.",
      things = {
        { name = "a pigeon loft", description = "In the third gap along. A man keeps racing pigeons there. They race to Greenhollow, sit on the mill, and come back when they feel like it." },
        { name = "a row of leeks", description = "In a trough, in the fourth. The wall gets the best sun in town, and somebody's leeks get the best of the wall." },
        { name = "a courting couple", description = "In the fifth, looking at the view. They have been looking at it for two years. He is going to say something any day now." },
      } },
    { name = "the view outward",
      description = "Barley, the road, the windmill at Greenhollow. To the north, the moor, wide and brown, with a thread of smoke still going up where the star came down." },
    { name = "the roofs",
      description = "On the town side the nearest roof is four feet off. There is a plank path along its ridge, and a cat on the plank, regarding you as an equal.",
      variants = {
        { when = visited "rooftops",
          description = "On the town side the nearest roof is four feet off. You know, since you jumped it. From this side it looks a great deal further, and the cat on the ridge plainly agrees." },
      } },
    { name = "a stretch of old wall",
      description = "For twenty paces the stones are bigger and darker and fit without mortar. The town wall was built on to the end of something. The masons never said what, and the guide book calls it {i}the early work{/}." },
    { name = "a sentry box",
      description = "A wooden box with a pointed roof, for the rain. Inside: a stool, a nail, and nineteen years of the same initials carved under one another, with the date, and each year the word {i}still{/}." },
    { name = "a mason on a cradle",
      description = "Slung over the outer face on two ropes, with a trowel and a bucket, repointing. The Council pays him by the yard. The wall is three miles round. By the time he gets back to where he started, it wants doing again.",
      things = {
        { name = "his plumb line", description = "Hanging down the wall beside him. It does not hang quite straight. He has stopped mentioning it. He holds that a plumb line that leans is the wall's business." },
        { name = "his bucket", description = "Lime, sand and hair. And, on top, a paper of bread and cheese, since it is a long way up to come for lunch." },
      },
      actions = {
        { "Call down to him", say "\"How's the wall?\" you shout. He looks up, a small foreshortened man on a plank. \"Bigger,\" he calls back. \"Don't ask me. I only fill the cracks. Something keeps making room for more.\"" },
      } },
    { name = "a cannon",
      description = "One, iron, on a wooden carriage, pointing out over the Barley Road. It was last fired at a coronation. There is a nest in the muzzle and a notice: {i}NOT TO BE DISCHARGED WHILE OCCUPIED{/}.",
      things = {
        { name = "the nest", description = "Sparrows. This is the ninth brood raised in ordnance. The watchman says they come out deaf to thunder and afraid of nothing." },
      } },
  },

  exits = {
    { to = "watch_house", description = "Down the stair to the stove." },
    { to = "wall_snug", label = "The door in the parapet",
      description = "Through a piece of wall that opens, down three steps, into warmth.",
      requires = flag "al_knows_snug", hidden = true },
  },
}

space {
  id = "wall_snug",
  region = "aldmoor",
  secret = true,
  name = "The Snug in the Wall",
  description = "The wall of Aldmoor is nine feet thick, and for the length of one room it is hollow. A fire, four benches, a barrel and a hatch. This is where the Watch has gone every night for two hundred years, when the Council thought it was on the wall.",
  palette = { bg = "#130e0a", text = "#d8ccb8", dim = "#7a6a58", accent = "#e8a050", border = "#4c3a28" },
  ambience = { flicker { color = "#ffb060", strength = 0.3 }, embers { glyphs = "∙·˙", color = "#e08040", rate = 0.15 } },

  things = {
    { name = "Widow Hask",
      icon = "☺",
      description = "She keeps the snug, as her mother did. There is no licence, because there is no building, because officially there is only wall. She pays no tax and is at peace about it.",
      things = {
        { name = "her apron", description = "A pocket for chalk, a pocket for the toasting fork, and a pocket nobody asks about." },
      },
      actions = {
        { "Order something", say "Tea, toast, or the brown ale. You have no money. She puts a tea in front of you anyway and chalks it up on the wall under {i}ADVENTURER{/}. There are other names under that heading, going back. None of them is crossed off." },
        { "Ask how long it has been here", say "\"Since the wall. The masons left a room for their dinner and forgot to fill it in. Or didn't forget.\" She turns the toast. \"A wall wants something in it. Stands to reason. Else what's it keeping?\"" },
      } },
    { name = "the chalk wall",
      description = "Two hundred years of tabs, in columns. Captains, corporals, a bishop.",
      things = {
        { name = "the oldest tab", description = "A mason's mark and a row of strokes. He owed for nine dinners when the wall was finished, and went home. His descendants have been written to." },
        { name = "a recent line", description = "{i}The King (cider){/}. Last month. Twice." },
        { name = "your line", description = "{i}ADVENTURER: tea, one.{/} In chalk, on a town wall. It is the nearest thing you have to an address." },
      } },
    { name = "the night shift",
      description = "Six of the Watch with their boots off. Officially they are at this moment patrolling the east wall. A helmet on a stick is doing it for them.",
      things = {
        { name = "a game of dominoes", description = "It has been going since the old captain's day. Nobody remembers who is winning. The set has a double seven." },
        { name = "six pairs of boots", description = "In a row by the fire, steaming. The cobbler's work, every one." },
        { name = "the helmet on a stick", description = "Seen from the market it passes for a sentry. It has been commended twice for steadiness." },
      },
      actions = {
        { "Ask who is guarding the town", say "They look at each other. \"It's a wall,\" one of them says kindly. \"It's very good at it. We mostly see it doesn't get lonely.\"" },
      } },
    barrel { name = "the barrel",
             description = "Brown ale, brewed in the wall, with water that comes down through the stones. It tastes of masonry, in a good way.",
             things = {
               { name = "the tap", description = "Brass, worn to a shine, and it drips. The drip has made a hollow in the flagstone below, and there is a cat's saucer in the hollow." },
             } },
    { name = "the fire",
      description = "It has not gone out since the first watchman lit it to warm his hands and discovered that he need never go outside again.",
      things = {
        { name = "the toasting forks", description = "Eleven, on hooks, each with a name burned into the handle. A twelfth has no name. It is for guests." },
        { name = "a pan of chestnuts", description = "Splitting, one at a time, each with a small report. The night shift does not flinch. It is the only gunfire they have known." },
      } },
    { name = "the hatch",
      description = "A square shutter in the outer face of the wall, twenty feet above the ditch, for deliveries by ladder. The brewer's boy has never asked why a wall takes hops.",
      actions = {
        { "Look out", say "Barley, moonlight or daylight according to the hour, and straight below you a ladder lying in the nettles, and beside the ladder a cask." },
      } },
    { name = "the benches",
      description = "Oak, black with age, carved all over with initials and the outlines of hands. Every watchman traces his hand on his first night. They are all the same size. The job attracts a type." },
    { name = "the mantel shelf",
      description = "A row of things left behind and kept.",
      things = {
        { name = "a mason's level", wonder = true,
          description = "A wooden level with a bubble in a glass tube, left by the men who built the room. {magic}The bubble is not in the middle.{/} It sits a little to one side, towards the Grumbles, and stays there whichever way the level is turned. Widow Hask says it is the only honest tool in Aldmoor, and that it is the town that is out." },
        { name = "a captain's whistle", description = "Silver. Blown once, in the snug, as a joke. The whole night shift fell in on the wall for the first time in a century, and found it draughty." },
      } },
    { name = "the dartboard",
      description = "Elm, on the end wall, lit by its own candle. The night shift has played the same game for eleven years. Nobody can remember the score, so it cannot be finished, and that suits everybody.",
      things = {
        { name = "the darts", description = "Three, flighted with paper cut from old regulations. The best one is regulation 212." },
        { name = "holes in the wall", description = "All round the board, a wide scatter, going back generations. And one, alone, a yard and a half to the left, very deep. That was a king. Nobody says which." },
      },
      actions = {
        { "Throw a dart", say "You are handed one. The snug goes politely quiet. You throw. It goes into the wall a yard and a half to the left, beside the deep hole. There is a pause, and then Widow Hask says, \"Well. That's the royal mark,\" and somebody buys you a half." },
      } },
    { name = "a jar on the bar",
      description = "Pickled onions, Marta's, from Greenhollow. They are the size of a fist and they make grown watchmen weep. There is a slate beside the jar with the record: {i}three, without water{/}.",
      actions = {
        { "Try one", say "You bite. For a moment, nothing. Then the whole of Greenhollow comes up the back of your nose. Through the tears you see the night shift nodding. \"One,\" says Widow Hask, and chalks it. \"With water. Sit down, love.\"" },
      } },
  },

  exits = {
    { to = "town_wall", description = "Up three steps and out, shutting the wall behind you." },
  },
}
