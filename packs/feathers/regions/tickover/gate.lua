-- The way in: the Punctual Gate, Escapement Street, and one house on Ratchet Terrace.

space {
  id = "tk_gate",
  region = "tickover",
  name = "The Punctual Gate",
  description = "A branch road leaves the cliff top, grows a pair of iron rails, and runs inland to an arch of riveted brass with a clock in the keystone. Beyond it there are chimneys, a great many, all smoking at the same angle. The air tastes of pennies and hot oil. Somewhere a whistle goes, and every pigeon on the arch checks itself against it.",
  backdrop = {
    "     ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄     ",
    "   ▄█▀▀▀▀▀▀▀▀(◷)▀▀▀▀▀▀▀▀█▄   ",
    "   ██    ╔═════════╗    ██   ",
    "   ██    ║         ║    ██   ",
    "═══██════╝         ╚════██═══",
  },

  things = {
    { name = "the arch",
      description = "Brass plate on an iron frame, forty feet high, every rivet polished on the first of the month. Across the top, in letters a yard tall: {place}TICKOVER{/}. Under that, smaller: {i}Exactly On Time Since The Founding (Less Four Minutes){/}.",
      things = {
        { name = "the keystone clock", description = "A white face the size of a cartwheel. You check it against the sun, which is the only timepiece you own. The clock is four minutes behind. It looks very sure of itself." },
        { name = "the rivets",
          description = "Ten thousand of them, in rows, round headed and bright.",
          things = {
            { name = "one dull rivet", description = "Low down on the left pier, at the height of a child's hand. It has never been polished. Every child in Tickover touches it on the way to school, for luck, and the polisher goes round it." },
          } },
        { name = "a pigeon on the arch", description = "Grey, with a brass ring on its leg and a number. It takes off at the whistle, goes once round the chimneys and lands on the same rivet. It is on the roster." },
      },
      actions = {
        { "Walk through with dignity", say "You square your shoulders and stride under the arch. A bell rings. A small brass arm comes out of the pier and counts you. You have been entered in a total." },
      } },
    { name = "the ticket clerk",
      icon = "☺",
      description = "A thin woman in a peaked cap behind a window in the left pier, with a punch on a chain and a rack of buff tickets. Her badge says {i}MISS DOLLOP, ADMISSIONS{/}. She has the calm of somebody who has never once been surprised by a train.",
      things = {
        { name = "her punch", description = "Nickel, on a chain. There are three hundred and sixty five more in a drawer, and one for leap years that she keeps in her pocket." },
        { name = "her cap", description = "Municipal blue, with a brass badge of a clock face. The hands on the badge go round. They are four minutes behind." },
        { name = "the rack of tickets", description = "Buff for platforms, green for trams, pink for Sundays, and a single black one at the back in a slot of its own. \"We don't issue that,\" she says, not looking at it." },
      },
      actions = {
        { "Ask for a ticket", once = true, give "tk_ticket",
          say "\"Destination?\" You say you do not know yet. \"Platform, then.\" She takes a buff card, punches a star through it, and slides it under the glass. \"That admits you to anywhere you can leave from. No charge. The city makes its money on people coming back.\" You have {gold}a platform ticket{/}." },
        { "Ask why the clock is late", say "\"It is not late,\" says Miss Dollop. \"It is four minutes behind. Late is when you did not mean it.\"" },
        { "Ask what an adventurer should see", say "She thinks. \"The Great Clock. The Boiler. The Patent Office, if you have a strong character.\" She looks at your boots. \"And a cobbler.\"" },
      } },
    { name = "the turnstile",
      description = "Four brass arms on a post. It turns one way with a click and the other way not at all.",
      things = {
        { name = "the counter", description = "A row of little wheels behind glass. It reads 4,188,211. It clicks to 4,188,212 as a man goes through with a ladder, and then to 4,188,213, for the ladder." },
      },
      actions = {
        { "Go round twice", say "You go through, come back by the cart gate, and go through again. The counter counts you twice. Somewhere in a ledger the population of Tickover is now wrong, and it is your doing. You feel powerful." },
      } },
    { name = "the rails",
      description = "Two lines of bright iron let into the road, running in from the cliff and on under the arch. They start in the middle of a field, at a buffer, for no reason anybody has written down.",
      things = {
        { name = "the buffer", description = "Two sprung plates on a timber frame, facing the sea, a mile from anything. A brass plaque says {i}PHASE ONE{/}." },
        { name = "a tram, arriving", description = "A brass box on four wheels with a funnel no taller than a hat, hissing. It stops with its door exactly at a white line on the road. The driver looks at the line, and at the door, and allows himself to breathe out." },
      },
      actions = {
        { "Put your ear to the rail", say "A hum, and under the hum a beat, slow and even, coming up the iron from the middle of the city. It is like listening to the chest of something asleep." },
      } },
    { name = "the timetable board",
      description = "A wall of enamel plates in a brass frame: trams, whistles, lamp lighting, the opening of shops, the feeding of the municipal cat.",
      things = {
        { name = "the tram times", description = "Every eleven minutes, at four minutes past the time shown. The time shown is printed. The four minutes are understood." },
        { name = "the whistle times", description = "Six in the morning, noon, six at night, and one at a quarter past three called {i}the Reminder{/}. Nobody knows what it is to remind them of. Everybody stops for a moment anyway and tries to think." },
        { name = "the municipal cat", description = "Fed at seven and at five. The plate has been amended in paint: {i}and whenever it asks{/}." },
        { name = "a blank plate", description = "At the bottom right. White enamel, nothing on it, with four screws. It has a time: the column says 3.19. It does not say what happens." },
      } },
    { name = "a lamp post",
      description = "Cast iron, fluted, with a glass globe and a little brass door in the base.",
      things = {
        { name = "the little brass door", description = "Inside there is a spring the size of a cheese, wound tight. Every lamp in Tickover lights itself at dusk, off its own spring, and the lamplighters go round in the morning with keys." },
        { name = "the globe", description = "Not lit, in daylight. A moth is waiting on it, early, the way some people arrive for a train." },
      } },
    { name = "a lamplighter",
      icon = "☺",
      description = "A boy of twelve with a key as long as his arm over his shoulder, going from post to post. He winds each one eleven turns and counts aloud.",
      actions = {
        { "Ask to wind one", say "He lets you. It is stiffer than it looks. At nine turns your arm gives out, and he does the last two with one hand, looking at the sky, to spare your feelings." },
      } },
    { name = "the gate constable",
      icon = "♜",
      description = "A figure in a blue tin coat standing in a sentry niche in the right pier, quite still, with a truncheon at the slope. He is made of brass. There is a keyhole between his shoulders. His eyes follow you by means of a small visible gear.",
      things = {
        { name = "the keyhole", description = "Square. Somebody has hung a card from it on a string: {i}WOUND 6 A.M. GOOD FOR TWELVE HOURS. DO NOT ASK HIM RIDDLES.{/}" },
        { name = "his number", description = "A brass 7 on the collar. He is the seventh of twelve. The other eleven are at the Constabulary, or on their beats, or being oiled." },
      },
      actions = {
        { "Ask him a riddle", say "You ask him what has hands but cannot clap. There is a long ticking pause. A thin line of steam comes out of his ear. \"Move along,\" says Constable 7, in a voice like a drawer being closed. You move along. Behind you he is still working on it." },
        { "Salute", say "His arm comes up in three movements and goes down in three. It is the best salute you have ever been given, and he did not mean a thing by it." },
      } },
    { name = "a flower seller",
      description = "A woman with a tray of flowers under the arch, out of the wind. The flowers are tin, cut and painted, on wire stems.",
      things = {
        { name = "a tin rose", description = "Red, with a drop of solder for dew. It will last for ever. She says the real ones kept wilting at four minutes past and it upset people." },
        { name = "one real daisy", description = "In a thimble of water at the corner of the tray, not for sale. She brings one in from the cliff every day. It is, she says, for the bees, who have to live here too." },
      },
      actions = {
        { "Smell a tin rose", say "Oil, and a little paint. She watches you do it and does not laugh, and you buy nothing, having only the one copper, and she gives you a nod as if you had." },
      } },
    { name = "the chimneys beyond",
      wonder = true,
      icon = "║",
      description = "Past the arch the city goes up in brick and brass, and out of it stand the chimneys, more than you can count, every one a different height. The smoke comes out of all of them at once, in puffs, on the beat. {magic}And between the puffs the whole city breathes in.{/} You stand in the road and find you are doing it too.",
      things = {
        { name = "the tallest chimney", description = "Square, banded with iron, taller than Aldmoor's wall is long. That is the Boiler's. It does not puff. It gives off one steady white thread, straight up, that the wind does not seem to be allowed to touch." },
      },
      actions = {
        { "Breathe with it", say "In on the gap, out on the puff. Six breaths and you are in step with forty thousand people and a boiler. It is hard to stop. You have to hold your nose to get your own time back." },
      } },
    { name = "the bay platform",
      description = "Round the side of the right pier, where a single siding leaves the tram rails and points east: twenty feet of planks, a lamp, a bench, and a board reading {i}DESERT EXPRESS. DEPARTS AT FOUR MINUTES PAST EVERY HOUR WITH A SEVEN IN IT.{/} It is the least used platform in Tickover and the best swept.",
      things = {
        { name = "the Express, standing", description = "A small green tank engine named {i}Sufficient{/}, one third class carriage, and a guard's van with a stove pipe. A conductor in white gloves is standing by the door with a watch in each hand, looking from one to the other like a man between two bad witnesses." },
        { name = "the destination board", description = "Slats on a frame, to be changed by hand. There is one slat. It says {i}THE END OF THE LINE{/}. Hooks have been provided for three more." },
        { name = "a crate on the bench", description = "Clock springs, from Coil's, addressed to {i}Wick, Lamps, Great Shade, The Parch{/}. It has been waiting for the seven o'clock, and ticks to itself." },
      },
      actions = {
        { "Ask a porter where it goes", say "\"East,\" says the porter. You ask how far. \"Till it stops.\" He scratches his head with the punch. \"There was to be more. Phase Two. My dad laid the first mile of Phase One and he always said the money would give out before the sand did. He was not a clever man but he was right about that.\"" },
      } },
    { name = "a notice to visitors",
      description = "Enamel, screwed to the pier. {i}VISITORS ARE REMINDED THAT TICKOVER IS FOUR MINUTES BEHIND THE REST OF THE WORLD. PLEASE DO NOT BRING YOUR OWN TIME IN WITH YOU. A BIN IS PROVIDED.{/}",
      things = {
        { name = "the bin", description = "Brass, with a slot. You look in. It is full of sundials, hourglasses, one cockerel (stuffed), and a note reading {i}about noonish{/} that somebody from Greenhollow handed in, in good faith." },
      } },
  },

  exits = {
    { to = "cliff_road", description = "Back along the rails to the buffer, the field, and the wind." },
    { to = "pa_train", label = "The Desert Express",
      description = "One green engine and one carriage at the bay platform, facing east, with steam up.",
      requires = item "tk_ticket",
      locked = "Mr Punch, the conductor, bars the carriage door with one white glove. No ticket, no departing. Miss Dollop punches them at the window." },
    { to = "tk_escapement_street", description = "Under the arch and up the main street, between the trams." },
  },
}

space {
  id = "tk_escapement_street",
  region = "tickover",
  name = "Escapement Street",
  description = "The main street of Tickover: a mile of brick fronts and brass shutters, with a tram line up the middle and a gutter each side running with warm water. Everybody walks at the same pace. Nobody decided this. If you walk at your own, you are bumped, politely, front and back, until you stop.",

  things = {
    { name = "the crowd",
      description = "Clerks, fitters, apprentices with oil cans, a governess with six children on a single brass rod. All of them at two paces to the second.",
      things = {
        { name = "a clerk checking his watch", description = "He takes it out, looks, puts it back, and nine steps later takes it out again. He is not anxious. It is how he counts his steps." },
        { name = "the governess", description = "Six children hold a rod with six handles, and she holds the end. When she stops they concertina. They have been drilled not to laugh at this, and it is costing them." },
        { name = "an apprentice with an oil can",
          description = "A girl in a leather apron with a long spouted can, oiling things as she goes: a hinge, a tram bell, a gentleman's knee.",
          actions = {
            { "Ask to be oiled", say "She looks you over with a professional eye, and puts one drop on the buckle of your belt. It has squeaked since Greenhollow. It never squeaks again. \"Elbows are extra,\" she says, and is gone." },
          } },
        { name = "a man walking slowly", description = "An old man with a stick going at half the pace of the street, on purpose, with the crowd parting round him like water round a pile. He was Chief Winder for forty years. He has earned it." },
      },
      actions = {
        { "Walk in step", say "Left on the tick. It is restful, once you give in. Your thoughts start to arrive in twos." },
        { "Walk out of step", say "You manage eleven paces. A hand on your elbow, a murmur of \"mind yourself, friend,\" and you are in step again without having agreed to it." },
      } },
    { name = "the tram line",
      description = "Two rails and a slot between them, with a cable hissing in the slot.",
      things = {
        { name = "a tram stop", description = "A brass post with a clock face that shows how long until the next tram. The hand is on {i}2{/}. It is two minutes, and then the four." },
        { name = "the cable in the slot", description = "A wire rope as thick as your wrist, moving always the same way at the same speed, under the whole city. The trams only hold on to it. If you put your ear down you hear it going past like a long breath out." },
        { name = "a penny on the rail", description = "Put there by a child, to be flattened. It has been flattened so many times it is the size of a saucer and as thin as a leaf, and there is a queue of children waiting for their turn with it." },
      },
      actions = {
        { "Wait for a tram", say "It comes at the time on the post, plus four. It stops with the door at your toes. The conductor looks at your platform ticket, says \"Not valid for travel, sir, but you may admire it,\" and you admire it until it goes." },
      } },
    { name = "the gutters",
      description = "Stone channels with warm water running in them, steaming faintly. It is what the Boiler has finished with.",
      things = {
        { name = "a cat with its feet in", description = "The municipal cat: black, vast, wearing a brass collar with a number. It sits on the kerb with all four feet in the warm gutter and its eyes shut. The number on the collar is 1." },
        { name = "a paper boat", description = "Going down the gutter at a walking pace, with a folded sail. On the sail is written, in a child's hand, a time and a street. It is a letter. This is the cheap post." },
      },
      actions = {
        { "Warm your hands", say "You crouch and hold them in. It is the first time they have been properly warm since the Griffon's fire. The cat opens one eye, to see that you are doing it right." },
      } },
    { name = "a row of shop fronts",
      description = "Brass shutters, rolled up, and gold lettering on black glass.",
      things = {
        { name = "a pie shop", description = "{i}GUDGEON'S HOT PIES, ISSUED ON THE HOUR{/}. A hatch opens at the hour (plus four), a tray of pies comes out on a chain, and a queue that formed without being told to takes one each.",
          actions = { { "Join the queue", say "You get to the hatch as the tray empties. A hand comes out, feels along the tray, finds it bare, and then passes you a crust that had fallen behind. It is hot, and has gravy on one corner. You have fared worse at banquets, or you would have, if you had been to any." } } },
        { name = "a hatter's", description = "Top hats, each with a small chimney. The steam keeps the head at an even temperature, says the card, {i}for clear thinking{/}. A gentleman passes in one, puffing gently at the crown, thinking clearly about lunch." },
        { name = "a shop that sells gauges", description = "Dials for everything: pressure, heat, damp, mood. You stand in front of the mood one. The needle goes to {i}HOPEFUL{/} and trembles there." },
        { name = "a barber's",
          description = "A pole that turns by itself, striped in brass and copper. Inside, a chair with eleven levers.",
          things = {
            { name = "the shaving engine", description = "Six razors on six arms round a padded head rest. A card says {i}NOT IN USE{/}. A second card, older, says {i}SINCE THE INCIDENT{/}. The barber shaves by hand, with the engine looking on." },
          } },
      } },
    { name = "the street clock",
      description = "A four faced clock on a pillar in the middle of the road. All four faces agree. They are four minutes behind, to the second, in four directions.",
      things = {
        { name = "the north face", description = "There is a pigeon dropping on the VII. It has been reported. The form is on its way up." },
        { name = "a little door in the pillar", description = "For the winder. It is locked, and has a card in a slot: {i}BACK IN 4 MINS{/}. The card is printed." },
      } },
    { name = "a steam organ on a barrow",
      description = "A rank of brass pipes on wheels, with a boiler the size of a kettle, playing a waltz. A monkey in a red coat turns the handle. On a closer look the monkey is tin, and it is the organ grinder who is going round, slowly, on a pivot.",
      actions = {
        { "Throw him a coin", say "You have one copper and it is spoken for. You throw him a button. The grinder catches it in his hat as he comes round, looks, and lifts the hat to you all the same. The monkey does not look at you at all." },
      } },
    { name = "a pneumatic post box",
      description = "A red iron pillar with a brass mouth. You post a letter and there is a {i}thup{/}, and it has gone, along a pipe under the street.",
      things = {
        { name = "the brass mouth", description = "It breathes in, gently, all the time. A woman holds her letter near and it is taken out of her fingers. She looks, for a moment, as if she had wanted to keep it." },
        { name = "a notice", description = "{i}LETTERS ONLY. No cats. No sandwiches. No small brothers. (By Order, following events.){/}" },
      },
      actions = {
        { "Post your hand", say "You put your fingers to the mouth. The pipe pulls. It is a soft steady pull, like a calf sucking. You take them away and count them." },
      } },
    { name = "the overhead pipes",
      description = "Above the street, from house to house, a web of copper pipes, each with a brass tag. Steam goes one way, water the other, and letters along the thin ones, rattling.",
      things = {
        { name = "a leaking joint", description = "A plume of steam at a flange, directly over the pavement. The crowd bends round it without looking up. A fitter has chalked a ring on the flagstones below and the date he will come." },
        { name = "sparrows on a warm pipe", description = "A row of thirty, fluffed out, with their feet tucked in. No sparrow in Tickover has been cold in a hundred years. They have forgotten how, and they are fat." },
      } },
    { name = "a bench with a meter",
      description = "A cast iron bench. On the arm there is a slot, and a dial, and the words {i}REST: ONE FARTHING THE QUARTER HOUR{/}.",
      actions = {
        { "Sit without paying", say "You sit. The dial ticks. At the end of a minute the seat tips forward, slowly and without malice, and puts you back on your feet. An old lady on the next bench, who has paid, tells you that it is very good for the posture." },
      } },
    { name = "a chimney sweep",
      icon = "☺",
      description = "A man black from cap to boot, carrying brushes, sitting on a step eating bread. He is the only person in the street sitting still, and nobody bumps him.",
      things = {
        { name = "his brushes", description = "Round ones on jointed rods, for the house flues, and one great square one for the factory stacks that needs four men." },
        { name = "his bread", description = "White when he started. He eats it from the middle outwards." },
      },
      actions = {
        { "Ask about the tall chimney", say "\"The Boiler's? Never been swept. Don't need it. Nothing comes up it but white.\" He chews. \"I went up the inside once, as a lad, for a dare. Warm all the way. Like going up a throat.\" He does not seem to want to say more, and takes up his bread again." },
      } },
    { name = "a public drinking fountain",
      description = "A brass lion's head on a wall, with a cup on a chain. The water comes out hot.",
      things = {
        { name = "the cup on a chain", description = "Tin. Stamped on the bottom: {i}STOLEN FROM THE CITY OF TICKOVER{/}. It is stamped on all of them, in advance." },
      },
      actions = {
        { "Drink", say "Hot water with a taste of kettle. A passing clerk tells you that it is best with a pinch of tea, and hands you a pinch of tea from a tin in his waistcoat, and walks on in step." },
      } },
    { name = "the house fronts above the shops",
      description = "Three storeys of yellow brick with brass window frames. Every window has a box, and every box has the same four tin geraniums.",
      things = {
        { name = "a window with real ones", description = "One box, on the second floor, with real geraniums, leggy and red and leaning out for the light. Somebody has pinned a note to the box from the Street Committee. Somebody has pinned a ruder note under it." },
      } },
    { name = "a newsboy",
      description = "A boy with a satchel shouting the paper, which is called {i}The Tickover Regulator{/} and comes out every hour.",
      things = {
        { name = "the headline", description = "{b}CLOCK STILL FOUR MINUTES BEHIND{/}. Below it: {i}Winders Confident{/}. It is the same headline every hour, he says. People like to know." },
        { name = "the stop press", description = "A smudged box at the foot of the page. {i}An adventurer was admitted at the Punctual Gate this morning. The public is asked not to wind him up.{/}" },
      },
      actions = {
        { "Ask if anything ever happens", say "\"Happened once,\" he says. \"Before my time. The Clock skipped.\" He looks up the street to make sure nobody heard him say it. \"Paper, mister?\"" },
      } },
  },

  exits = {
    { to = "tk_gate", description = "Down the street to the brass arch and the turnstile." },
    { to = "tk_regulator_square", description = "Up the tram line to the middle of the city, where the big clock is." },
    { to = "tk_winders_row", description = "A side street full of small windows with small moving things in them." },
    { to = "tk_house", label = "No. 4, Ratchet Terrace",
      description = "A door between two shops, with a brass 4 and a card: {i}Room to let. Quiet tenant. No inventors.{/}" },
    { to = "tk_inn", description = "A corner house with steam coming from under the door, and singing, in time." },
  },
}

space {
  id = "tk_house",
  region = "tickover",
  name = "No. 4, Ratchet Terrace",
  description = "A narrow house, one room wide and four rooms tall, belonging to Mrs Pawl, a widow, and run by her on the same principle as the city. Everything in it does something by itself. The door let you in. The mat wiped your boots. A hand on a rod has just taken your hat, and you have no hat, so it has taken some of your hair.",
  palette = { bg = "#14100c", text = "#dcd0b8", dim = "#806e58", accent = "#e0a858", border = "#5c4428" },
  ambience = { flicker { color = "#ffb870", strength = 0.12 }, steam { glyphs = "˙·", color = "#5a5248", rate = 0.15 } },

  things = {
    { name = "Mrs Pawl",
      icon = "☺",
      description = "A small round woman in black bombazine with a bunch of keys at her waist, none of them for doors. Her late husband was an engineer of the second class and built the house round her. She has been finding out what the levers do for thirty years.",
      things = {
        { name = "her keys", description = "Winding keys: one for the kettle, one for the cradle, one for the stairs. One is tied with black ribbon. That was for Mr Pawl's chair, and she does not wind it." },
        { name = "her knitting", description = "Done on a little brass frame with a handle. She turns the handle and a sock comes out of the bottom. \"He made it for me so I should have time for other things,\" she says. \"I have never found out what the other things were.\"" },
      },
      actions = {
        { "Ask about the room", say "\"Top floor. Sixpence a week, with breakfast issued at seven.\" You explain about the copper. \"Then you may look at it,\" she says, kindly. \"Looking's free. Mind the fourth stair, it's a Tuesday.\"" },
        { "Ask about Mr Pawl", say "\"Clever. Never sat still. He's in the municipal cemetery, under a stone he designed himself.\" A pause. \"It tells the time.\"" },
        { "Offer to help", say "She gives you the kettle key and you wind the kettle. It walks to the tap, fills itself, walks to the hob and sits down. Mrs Pawl says you have a feel for it. Nobody has said that to you about anything before." },
      } },
    { name = "the hall",
      description = "Brown paper, a gas bracket, and a row of brass hands on rods for hats, coats and sticks.",
      things = {
        { name = "the hat hand", description = "It opens and shuts hopefully. It has four hairs of yours. You let it keep them." },
        { name = "the boot mat", description = "Bristles on rollers. It has cleaned your boots to a state they have not known since they belonged to somebody else." },
        { name = "the barometer", description = "A banjo case of walnut with a dial. The needle is on {i}CHANGE{/}. Mrs Pawl says it has been on Change since the funeral and she has not the heart to tap it." },
        { name = "the speaking tube", description = "A brass mouthpiece with a whistle in it, going up through the ceiling. You blow. Four floors up, something whistles back, and it is not a tenant, because there is no tenant.",
          actions = { { "Listen at it", say "A draught, and the house ticking, and far up a small sound like a spoon being put down very carefully." } } },
      } },
    { name = "the parlour",
      description = "The front room: a round table, a horsehair sofa, and a mantelpiece with nine clocks.",
      things = {
        { name = "the nine clocks",
          description = "All going, all four minutes behind, all different. One is a ship that rocks. One is a blacksmith who strikes the hours on an anvil the size of a pea.",
          things = {
            { name = "the tenth clock", description = "At the end of the row, under a glass dome, stopped. It is the only clock you have seen in Tickover that is stopped. It shows the right time: you check it with the sun through the window. It will be right for one minute, and then wrong until tomorrow." },
          } },
        { name = "the sofa", description = "Horsehair, black, and sprung by a man who understood springs too well. You sit and are returned." },
        { name = "a photograph", description = "A man with enormous whiskers standing beside an engine, one hand on it, as people stand beside a horse they are proud of. The engine has a ribbon on. So has he." },
        { name = "the automatic tea table",
          description = "A table with a brass track round the edge. A cup on wheels goes round it and stops at each chair.",
          actions = { { "Take the cup", say "You lift it as it passes. The little carriage goes on without it, all the way round, stops at your chair again, and waits. It waits until you put the cup back. You have never been so firmly managed by furniture." } } },
      } },
    { name = "the kitchen",
      description = "At the back, down two steps: a range, a dresser, and a wall of levers with ivory labels.",
      things = {
        { name = "the wall of levers",
          description = "Thirty, in two rows. {i}EGGS. TOAST. FLUE. CAT OUT. CAT IN.{/} Six at the end have no labels.",
          things = {
            { name = "the lever marked CAT IN", description = "You pull it. A flap opens in the back door. Nothing comes in. Mrs Pawl has not had a cat for eleven years. The flap stays open a hopeful moment and closes." },
            { name = "an unlabelled lever", description = "Mrs Pawl says she pulled one of the six once, in the first year. Something happened next door. They were very nice about it." },
          } },
        { name = "the walking kettle", description = "Copper, on three bent legs. It sits on the hob with its feet tucked under, ticking as it cools." },
        { name = "the egg engine", description = "A brass arm, a pan, a spring. It cracks one egg at seven precisely into the pan. If you are not there, it cracks it anyway. There is a place on the floor." },
        { name = "the dresser", description = "Blue and white plates, held to the shelves by small clips. The house shakes when the Boiler takes a breath. Nobody notices. The plates notice." },
      } },
    { name = "the stairs",
      description = "Steep, carpeted, with a brass rail. Each step is on a spring and sighs under you.",
      things = {
        { name = "the fourth stair", description = "On Tuesdays it is the fifth. Mr Pawl thought it would keep the mind supple. Mrs Pawl has a small scar on her chin and a supple mind." },
        { name = "a stair lift", description = "A chair on a rail, for Mrs Pawl's knees. It goes up at the pace of a rising loaf. She takes her knitting. By the top, there is a heel." },
      } },
    { name = "the workshop",
      description = "The first floor back, shut up since the funeral and dusted every Friday. A bench, a lathe, a vice, and a great many things that are nearly something.",
      things = {
        { name = "the bench", description = "Oak, scarred, with every tool hung on its own outline on the wall behind. One outline has nothing on it. It is the shape of a very small spanner." },
        { name = "a half built bird",
          description = "A thrush of brass and tin, life size, with one wing on and the breast open. Inside is a comb and a cylinder, like a musical box.",
          things = {
            { name = "the cylinder", description = "Pinned for a song. Mrs Pawl says he sat in the yard for a month with a real thrush, writing it down, and the thrush got to know him and came for crumbs. He never finished. The thrush still comes." },
          },
          actions = { { "Turn the cylinder with a finger", say "Four notes, clear and round, and a fifth that is only a click, where the pin was never set. Out in the yard, a moment later, something finishes the phrase for him." } } },
        { name = "a drawer of springs", description = "Sorted by temper: {i}willing, stubborn, treacherous{/}. The last tray has a lid, and the lid has a weight on it." },
        { name = "his chair", description = "A leather armchair with a keyhole in the side. It rocked itself. It is still now, with his spectacles on the arm, folded." },
      } },
    { name = "the room to let",
      description = "The top floor front: an iron bedstead, a wash stand, a window over the street.",
      things = {
        { name = "the bed", description = "It folds into the wall at six in the morning, whether or not it is empty. The card on the door says {i}QUIET TENANT{/}. The last one was quiet for two days, inside the wall, out of embarrassment." },
        { name = "the window", description = "From here you can see the whole of Escapement Street going past in step, and over the roofs the white face of the Great Clock, and beyond that a long grey shape on a mast, moving slightly, like a fish holding still in a stream." },
        { name = "the wash stand",
          description = "A basin that fills itself, hot, at half past six.",
          things = {
            { name = "something behind the wash stand", description = "A very small spanner, on a shelf of dust. On the wall beside it, low down, in pencil: {i}Wilf woz ere. Bed bit me.{/}" },
          } },
        { name = "the speaking tube, top end", description = "A brass mouthpiece by the bed. Under it, on the floor, there is a teaspoon. Nobody is here. The dust on the floor has no footprints in it, and the teaspoon has none on it either." },
      },
      actions = {
        { "Try the bed", say "You lie down. It is a good bed. Inside the wall, something winds itself one notch, in anticipation. You get up." },
      } },
    { name = "the back yard",
      description = "Ten feet square, flagged, with a wash line that reels itself in when it rains and a single real tree.",
      things = {
        { name = "the pear tree", description = "Old, bent, and never once on time. It flowers when it likes. The Street Committee has written. Mrs Pawl reads the letters to it, and says it takes them very well." },
        { name = "a thrush", description = "Speckled, on the wall, with its head on one side. It sings four notes and then a fifth, and looks at the workshop window, and waits." },
        { name = "the wash line", description = "It has Mrs Pawl's stockings on it and one of Mr Pawl's shirts, which she still washes on Mondays, so the line should not feel the difference." },
      } },
    { name = "the gas meter",
      description = "Under the stairs: a brass drum with a slot. It takes pennies, and gives light.",
      things = {
        { name = "a tin of washers", description = "On the shelf beside it. They are exactly the size of pennies. Mrs Pawl says they were for the engines, and looks you straight in the eye." },
      } },
    { name = "the door bell",
      description = "You pull a knob outside and a brass arm inside lifts a hammer and hits a gong, and then a second arm puts a card in the window reading {i}COMING{/}.",
      actions = {
        { "Ring it from inside", say "The gong goes. The card comes up. Mrs Pawl, out of thirty years' habit, goes to the door, opens it, finds nobody, and says \"Good afternoon\" to the street in case." },
      } },
  },

  exits = {
    { to = "tk_escapement_street", description = "Out of the front door, which opens for you, and shuts on your heel." },
  },
}
