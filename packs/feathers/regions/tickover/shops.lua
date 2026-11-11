-- Winders' Row and its shops, the Patent Office, and the vault of refused things.

space {
  id = "tk_winders_row",
  region = "tickover",
  name = "Winders' Row",
  description = "A narrow street off the main one, too narrow for trams, where the small trades are: springs, hands, jewels, glass. Every window is the size of a tea tray and has something in it going round. The whole Row ticks, each shop at its own rate, like a hedge full of crickets.",
  ambience = { dust { glyphs = "·˙∙", color = "#8a7440", rate = 0.3, speed = 0.2 }, shimmer { color = "#d9a441", strength = 0.06 } },

  things = {
    { name = "Coil and Daughter, Spring Merchants",
      description = "A shop front painted green, with springs hung in the window by size, from one you could lose in an eye to one that was meant for a drawbridge. The door is on a spring. So is the step. So, when he comes out, is Mr Coil.",
      things = {
        { name = "Mr Coil",
          icon = "☺",
          description = "A tall bent man who cannot stand still. He rises on his toes when he talks and comes down at the full stops. He has sold springs for fifty years and says there are only three kinds of customer: those who want push, those who want pull, and those who want it to come back.",
          actions = {
            { "Ask for a spring", say "\"For what?\" You do not know. \"Then you want a general spring.\" He goes up on his toes. \"There is no such thing. That is the tragedy of the trade.\" He comes down. He gives you a tiny one anyway, to hold, and takes it back when you have held it." },
            { "Ask about the Daughter", say "\"Makes the hairsprings. Finer than hair. I can't see them any more, I have to be told they're there.\" He goes up on his toes with pride and forgets to come down." },
          } },
        { name = "Miss Coil",
          description = "At a bench in the back with a glass in her eye, winding a wire you cannot see round a mandrel you can barely see. She does not look up. She has not looked up, her father says, since a Tuesday in spring.",
          things = {
            { name = "a hairspring", description = "She holds it up on a pin: a flat coil of blue steel no wider than a lentil, breathing in and out. \"That one's for a lady's watch,\" she says. \"It will go to two hundred balls and one funeral.\"" },
          } },
        { name = "the window of springs",
          description = "Sixty, on hooks, each with a price and a temper.",
          things = {
            { name = "a very large spring", description = "Coiled steel as thick as your arm, taller than you, chained to the wall at both ends. The label says {i}NOT TO BE RELEASED INDOORS{/}. There is a dent in the ceiling above it, and a matching one in the ceiling of the room above that." },
            { name = "a very small spring", description = "Under a magnifying glass on a velvet pad. Without the glass there is only the pad. It costs more than the large one." },
            { name = "a spring marked TIRED", description = "In a basket by the door, at a penny each: springs that have lost heart. A boy is buying six. Tired springs are what you want for a mouse trap, he says, if you like the mouse." },
          } },
        { name = "the sprung step", description = "You put your foot on it and it returns your foot. Regular customers take it at a slight run." },
      },
      actions = {
        { "Go in by the sprung door", say "You push. The door pushes back. You push harder and it lets you through all at once, and the bell above it, which is also on a spring, rings for some time after you have left." },
      } },
    { name = "a shop that sells hands",
      description = "{i}DIAL & SON. HANDS.{/} The window is full of them: hour, minute, second, in blued steel and gilt, spade and moon and plain.",
      things = {
        { name = "a tray of second hands", description = "Thin as whiskers. A notice: {i}Please do not breathe on the stock.{/}" },
        { name = "a pair for the Great Clock", description = "Hung on the back wall, floor to ceiling, in case they are ever needed. They are made of the same iron and gilt. They were made the same year. They have been in stock for three hundred years, and Mr Dial dusts them and says trade is slow in the larger sizes." },
        { name = "a single hand, pointing", description = "On the counter, on a pivot, for directing customers. It points at the door. It always points at the door. Mr Dial says it is a matter of how the pivot is weighted, and not personal." },
      } },
    { name = "a jeweller of bearings",
      description = "A window of rubies, hundreds, each the size of a pinhead with a hole through it. They are for clocks to turn on. Nobody in Tickover has ever thought of wearing one.",
      things = {
        { name = "the jeweller", description = "A woman with a drill no thicker than a thread, boring a ruby under a lens. A countess came from Aldmoor once and asked to see a necklace. She was shown a bearing, at length, with diagrams." },
        { name = "a dish of rejects", description = "Rubies with the hole off centre, swept into a saucer for the cat to bat about. There is a small fortune in the saucer. The cat has lost a larger one under the skirting." },
      },
      actions = {
        { "Look through a ruby", say "She lets you hold one to your eye on the end of a pin. The whole Row goes red, and through the tiny hole in the middle there is one clear white speck of the true colour of things. You hand it back before you get ideas." },
      } },
    { name = "a glass grinder",
      description = "Watch glasses, gauge glasses, spectacles, the big white panes for clock faces. A wheel turns in the window with a man leaning on it.",
      things = {
        { name = "a rack of spectacles", description = "Brass frames with little levers at the hinge, for changing the lenses: near, far, and one marked {i}COMMITTEE{/} that is plain ground glass, for looking attentive behind." },
        { name = "a spare pane for the south face", description = "White glass, a yard square, in a crate marked with a 4. He cut it a hundred and ten years ago to replace one that broke, or his great grandfather did. It was a rush job. The crate says {i}SECOND ATTEMPT. FIRST ONE BLEW IN TOO.{/}" },
      } },
    { name = "a key cutter",
      description = "A booth no wider than a door, hung all over with winding keys like a tinker with pans.",
      things = {
        { name = "the key cutter", description = "A very old man with a file. People bring him the thing, and he looks in the hole, and files a key by eye. He has never been wrong. He says every hole wants one key and you have only to ask it." },
        { name = "a drawer of keys nobody collected", description = "Each with a paper tag. {i}For Mr Verge's cuckoo. For a child's duck. For the heart of Constable 3 (spare).{/}" },
      },
      actions = {
        { "Show him the big iron key", when = item "tk_winding_key",
          say "He takes it in both hands. He turns it over. He looks into the worn socket for a long time, with his head on one side, the way he looks into holes. \"I didn't cut this,\" he says. \"Nobody cut this for the Clock. Wrong size. It's for something a deal bigger, that turns a deal slower.\" He hands it back with care. \"Don't ask me where the hole is. I've a feeling we're standing in it.\"" },
        { "Ask for a key to the city", say "\"There isn't one,\" he says. \"It's on a latch.\"" },
      } },
    { name = "an automaton maker's window",
      description = "A tin acrobat turns over a bar. A tin lady writes a letter. A tin dog lifts its leg, and a card says {i}BY REQUEST, EVERY QUARTER HOUR{/}.",
      things = {
        { name = "the tin lady", description = "She dips her pen, writes a line and looks up, as if for a word. The letter says {i}My dear, I am quite well and writing this{/}, and then she takes a new sheet. She has been quite well since before you were born." },
        { name = "a tin adventurer",
          description = "At the back, on a shelf, marked down. A little figure with a tin sword and a brave expression. You wind him. He walks four steps, falls on his face, and waves his legs.",
          actions = { { "Stand him up again", say "You set him on his feet. He walks four steps and falls on his face. You stand him up again. A woman passing with a basket says, \"You'll be there all day, love,\" and you say that you know, and that it is the principle of the thing." } } },
      } },
    { name = "the ticking",
      description = "Stand still in the middle of the Row and it comes at you from every door: fast ones, slow ones, one like a woodpecker. They do not keep together. Once in every eleven minutes, by chance, all of them fall on the same beat, and the whole street goes {i}tick{/} like a single hammer.",
      actions = {
        { "Wait for it", say "You stand eleven minutes with your eyes shut. It comes: one great tick from forty shops, and the glass in every window rings. A shopkeeper across the way catches your eye and smiles. He waits for it too. He has waited for it every eleven minutes for thirty years." },
      } },
    { name = "a tea stall on wheels",
      description = "A copper urn on a barrow, driven by a small engine, going up and down the Row at a walk. You have to keep pace to be served.",
      actions = {
        { "Keep pace", say "You trot beside it for the length of six shops with a mug held out. The woman fills it without stopping. \"Bring it back when I come round,\" she says. She comes round in eight minutes, and takes it out of your hand in passing, like a relay." },
      } },
    { name = "a row of apprentices",
      description = "On a bench outside the hand shop, eating bread and dripping: six boys and girls in aprons with files in their top pockets.",
      things = {
        { name = "what they are arguing about", description = "Whether the Great Clock has a spring or a weight. The Winders' apprentice among them is saying nothing, very loudly." },
        { name = "the smallest apprentice", description = "A girl with a squint from the eyeglass, bending a pin into a spring between two fingers while she eats. She lets it go. It hops off the bench like a flea. She has made a small living thing and does not look up." },
      } },
    { name = "the sign of the Clockmaker",
      description = "At the top of the Row, where it narrows to a passage: a gilt hand, pointing down some steps, and under it one word in black: {i}FUSEE{/}.",
      things = {
        { name = "the gilt hand", description = "It was a clock hand once. Somebody has noticed that it is the right length for an hour hand from the Great Clock's faces, and has chosen not to pursue the matter." },
      } },
    { name = "a drain in the cobbles",
      description = "A brass grid with warm water going under it. Something glints on the grid.",
      things = {
        { name = "the glint", description = "A spring, small as a caraway seed, caught on a bar. There are more, when you look: the cobbles of the Row are seeded with a hundred years of springs that got away. In hot weather, they say, the street creaks." },
      } },
  },

  exits = {
    { to = "tk_escapement_street", description = "Back out to the trams." },
    { to = "tk_clockmaker", label = "Fusee, Clockmaker", description = "Down four steps under the gilt hand, into a shop below the street." },
    { to = "tk_boiler_hall", description = "The fitters' lane, along a wall that is warm to lean on." },
  },
}

space {
  id = "tk_clockmaker",
  region = "tickover",
  name = "Fusee, Clockmaker",
  description = "A shop four steps below the street, with one window at pavement height, so that the light comes in between people's boots. Clocks on every wall, floor to ceiling, and on the counter, and under it. They are all going and all four minutes behind. The noise is like rain on a tin roof. In the middle of it, at a bench under a lamp, sits the Clockmaker, perfectly quiet.",
  palette = { bg = "#100e0c", text = "#d8d0bc", dim = "#787060", accent = "#c8b464", border = "#4c442c" },
  ambience = { flicker { color = "#ffd890", strength = 0.08 }, dust { glyphs = "·˙", color = "#807850", rate = 0.25, speed = 0.1 } },

  things = {
    { name = "Miss Fusee",
      icon = "☺",
      description = "Miss Lettice Fusee, Clockmaker to the Guild, ninth of the name to keep this shop. A spare grey woman with a glass pushed up on her forehead and hands that do not hurry. She looks at you the way she looks at a movement on the bench: to see what is wrong with it, and whether it is worth the trouble.",
      things = {
        { name = "her eyeglass", description = "Horn rimmed, on a wire. When it is down over her eye she can see a hair split. When it is up, she says, she can see what the hair was for." },
        { name = "her hands", description = "Ink on the right, oil on the left, steady as stone. She has not dropped a screw since she was eleven. She remembers the screw." },
        { name = "her waistcoat pocket", description = "It ticks. It is not a watch. She does not carry a watch: \"I should only look at it.\"",
          variants = {
            { when = item "tk_fourth_minute", description = "It does not tick now. She puts two fingers in it from time to time, out of habit, and finds it empty, and seems to stand a little straighter." },
          } },
      },
      actions = {
        { "Ask about the Fourth Minute", when = flag "tk_knows_minutes", once = true, give "tk_fourth_minute",
          say "The glass comes down over her eye, and she looks at you through it. \"You've read the ledger. Pinion let you up.\" She takes from her waistcoat a green bottle sealed with lead. \"Four were put by. One for the Fire, one for the Flood, one my grandmother spent on a Tuesday for no reason that she would ever give. This is the last.\" She turns it in the lamp. \"The Guild has kept it in Tickover for a hundred and ten years, in case the Clock skips again. I have always thought that was the wrong place. If the city stops, the minute stops with it. It ought to be somewhere else. Carried about. By someone who is never anywhere for long.\" She puts it in your hand and closes your fingers on it. \"Don't open it. You will know when. I hope you never know.\" You have {gold}the Fourth Minute{/}." },
        { "Ask her to mend something", say "You have nothing that goes. She looks at you a moment longer. \"No,\" she agrees. \"You're a weight driven sort. You go because you were let go of.\" It does not seem to be an insult. She turns back to the bench." },
        { "Ask why all her clocks are behind", say "\"I could set them right,\" she says. \"Any child could. I had a traveller's watch in once that kept the sun's time, and I mended it and gave it back as it was. I did not sleep well while it was in the shop.\" She picks up a screw with the tweezers. \"It is not that we are behind. It is that there is a first and we are not it.\"" },
      } },
    { name = "the bench",
      description = "A slab of pear wood under a lamp with a green shade, laid out like an operating table.",
      things = {
        { name = "a watch in pieces", description = "Sixty parts on a white cloth, each in its place, in the order they came out. She says a watch taken apart is not broken. It is only waiting, and with rather more patience than it had assembled." },
        { name = "the tweezers", description = "Brass, fine as a heron's bill. You are not to touch them. You were not going to. You had already been told with a look." },
        { name = "a bell jar",
          description = "Over a movement that is running without its case, so that you can see every wheel.",
          things = {
            { name = "the balance wheel", description = "It swings one way, and back, and each time you would swear it is going to stop, and it does not. \"That is all a clock is,\" she says. \"A thing that keeps nearly stopping.\"" },
          } },
        { name = "a loupe on a stand", description = "For apprentices. Under it there is a mainspring barrel with a hair across it, and a card: {i}Find what is wrong.{/} It is the hair. It takes them a week." },
      } },
    { name = "the wall of clocks",
      description = "Longcase, bracket, carriage, cuckoo, a skeleton clock under glass, a clock in the stomach of a brass bear. Two hundred at least.",
      things = {
        { name = "a cuckoo clock", description = "From over the mountains. On the hour (plus four) the door opens and a small wooden dwarf comes out and says nothing at all, with great force. It is the Far Enough pattern. A cuckoo is thought frivolous there." },
        { name = "a clock with one hand", description = "Very old, iron, from before minutes were thought of. It is the only one in the shop that is not four minutes behind, since it cannot say. Miss Fusee calls it the Diplomat." },
        { name = "a longcase with a moon", description = "A painted moon goes over the dial, with a face. The face has its eyes shut. You have seen moons on clocks in Aldmoor, and they all look out at you. This one was made here." },
        { name = "the brass bear", description = "Standing on its hind legs with a dial in its belly. At the hour it opens its mouth and strikes on its own teeth. A child of the eighth Fusee asked for it, and was then afraid of it for life." },
        { name = "a tide clock from Saltwick", description = "In for repair, with a label from the Tide Office: {i}Runs fast before storms. Do not correct this. Find out how.{/} She has had it open for two years. She says it is perfectly ordinary inside and that she has begun to take the remark about storms personally." },
      },
      actions = {
        { "Listen to them all at once", say "Rain on tin. Then your ear starts to sort it: the slow knock of the longcases, the patter of the carriage clocks, the bear grinding between strikes. They are not together. But they all lean the same way, the way a field of barley leans, toward one beat that is none of theirs." },
      } },
    { name = "the counter",
      description = "Mahogany, with a brass rail, a bell, and a slate of work in hand.",
      things = {
        { name = "the slate", description = "{i}Lord Regulator: repeater, sticking. Mrs Pawl: the tenth clock, NOT to be mended, only dusted. Constabulary: No. 5, lazy on the left.{/}" },
        { name = "the bell", description = "You ring it. It makes no sound. Then, four minutes later, when you have forgotten about it, it does." },
        { name = "a tray of watch papers", description = "The little round labels a maker puts inside a case. Hers say {i}FUSEE, WINDERS' ROW{/}, and round the edge, so small that it wants the glass: {i}it will be later than you think by exactly as much as it was{/}." },
      } },
    { name = "the window at boot height",
      description = "A slot of daylight with ankles going past in step. Miss Fusee can tell most of Tickover by its boots.",
      things = {
        { name = "boots going by", description = "A clerk's, polished. A stoker's clogs, on the way home. A pair of very small buttoned ones that stop, and bend, and then there is a child's face upside down in the window, looking at the bear." },
      } },
    { name = "the regulator",
      description = "The shop's master clock: a plain case of black wood on the end wall, taller than you, with a pendulum like a dinner plate. Every other clock here is set by it, and it is set, every morning at nine, by a boy sent running from the Square.",
      things = {
        { name = "the pendulum", description = "It swings behind glass, slow and broad. There is a penny stuck to the back of the bob with wax. \"My mother's,\" says Miss Fusee. \"She tried to gain a minute. It made no difference, and she left the penny there to remind us.\"" },
        { name = "the door of the case",
          description = "Locked, with a small brass key standing in it.",
          things = {
            { name = "inside the case", description = "Behind the pendulum, four round marks in the dust on the floor of the case, in a row, where four bottles stood. Three of the marks are old and furred over. One is clean." },
          } },
      } },
    { name = "the nine portraits",
      description = "In a row above the door: nine Fusees, in oils and then in photographs, each at this bench, each with a glass on the forehead.",
      things = {
        { name = "the seventh", description = "A stout laughing woman, the grandmother. She is the only one of the nine who is smiling, and the only one painted with the window open. It is she who spent a minute on a Tuesday. The family has an agreement not to wonder what on." },
        { name = "the tenth nail", description = "Already in the wall, at the end of the row. Miss Fusee has no children and no apprentice. She dusts the nail." },
      } },
    { name = "the apprentice's stool",
      description = "Empty, by the stove, with a leather apron folded on it. It has been folded there for six years.",
      actions = {
        { "Sit on it", say "You sit. Miss Fusee does not look round. After a while she slides the loupe along the bench to you with one finger, and the barrel with the hair across it. You look for a quarter of an hour. \"Is it the hair?\" you say. She takes the loupe back. \"It took me a fortnight,\" she says, and for a moment, before she turns away, she looks at you as if you might be worth the trouble." },
      } },
    { name = "the stove",
      description = "A small iron one with a kettle, kept low. Heat is bad for oil, she says, and cold is bad for fingers, and a clockmaker lives in the gap.",
      things = {
        candle { description = "On the shelf by the stove, for when the gas fails. It never has. She trims the wick every Sunday regardless. \"It is not enough to keep time,\" she says. \"You have to be ready not to.\"" },
      } },
    { name = "a cabinet of oddities",
      description = "A glass fronted case by the stairs with the things people have brought in that were not clocks.",
      things = {
        { name = "a sundial", description = "Pocket size, brass, confiscated at the Gate and sent on for an opinion. Her opinion is on a card: {i}Accurate. Tactless.{/}" },
        { name = "an hourglass that runs up", description = "The sand goes from the bottom bulb to the top. From the Collegium, with a note asking her to make it stop. She wrote back that it was not broken, only stubborn, and that she knew several professors in the same case." },
        { name = "a dwarf water clock", description = "A stone cup with a hole, dripping into another stone cup. It loses a day in a year. The dwarves, she says, consider that this serves the year right." },
      } },
  },

  exits = {
    { to = "tk_winders_row", description = "Up four steps into the Row and the ticking." },
  },
}

space {
  id = "tk_patent_office",
  region = "tickover",
  name = "The Patent Office",
  description = "A hall of grey marble with a counter the length of a cricket pitch and, behind it, pigeon holes to the ceiling, reached by ladders on rails. A queue winds between brass posts. Everybody in it is holding something under a cloth, and every cloth is moving slightly. Above the counter, in iron letters: {i}IT HAS BEEN DONE.{/}",
  palette = { bg = "#0e0f10", text = "#d0d0c8", dim = "#6c6e6a", accent = "#b8a05a", border = "#42443c" },
  ambience = { dust { glyphs = "·˙", color = "#6a6a5e", rate = 0.3, speed = 0.15 } },

  things = {
    { name = "the Examiner",
      icon = "☺",
      description = "Mr Thrupp, Examiner of Patents, at the middle of the counter under a green lamp: a small dry man with two rubber stamps on a stand and the stillness of a heron. He has refused eleven thousand devices. He has granted four. He remembers the four with regret.",
      things = {
        { name = "the two stamps", description = "{danger}REJECTED{/}, with the handle worn to the shape of his hand. {gold}GRANTED{/}, with the price ticket still on it." },
        { name = "his ink pad", description = "Red. There is a second pad, violet, for Appeals. There is a third, in a locked drawer, green, and he will not tell you what the green is for, and looks unwell if you ask twice." },
        { name = "his sleeve guards", description = "Black cotton, elbow to wrist, darned by himself. In nineteen years they have saved his cuffs from the ink and from at least one device that sprang." },
      },
      actions = {
        { "File a patent", when = no(item "tk_rejection_slip"), give "tk_rejection_slip",
          say "You have nothing under a cloth. You have a stick you sharpened at Greenhollow for hitting things. You put it on the counter. Mr Thrupp regards it. He consults a volume. He consults a larger volume. \"A stick,\" he says, \"pointed.\" The red stamp comes down. He fills in a slip, blots it, and hands it across with your stick. \"You may appeal. Appeals are heard in the Vault, by the Keeper, on presentation of the slip. Next.\" You have {gold}a rejection slip{/}, and, somehow, your pride." },
        { "Ask what the four were", say "\"The wheel. The lever. The screw.\" A pause. \"And a hat that puffs. I was young.\"" },
        { "Ask about Ignatius Brass", say "The stamp stops in the air. \"Forty one applications. One device. It was refused each time upon the ground that it is impossible, and that ground is sound.\" He sets the stamp down very exactly. \"That it works is not a matter for this Office.\"" },
      } },
    { name = "the queue",
      description = "Forty inventors between brass posts, shuffling forward once every eleven minutes.",
      things = {
        { name = "a man with a cage under a cloth", description = "He lifts a corner for you. A mechanical mouse, and chasing it a mechanical cat, and chasing that a mechanical dog, round a track. \"It needs a mechanical old woman,\" he says, \"to shout at the dog. I am held up on the shouting.\"" },
        { name = "a woman with an umbrella", description = "It opens by steam. It also, she admits, closes by steam, at times of its own choosing. She has a plaster on her nose." },
        { name = "a boy with a kite", description = "Twelve years old, with a kite of oiled silk and a brass key on the string, and a look in his eye. The Examiner will refuse it, on the ground that it is only a kite. The boy knows. He has come to get the slip, for his wall." },
        { name = "a very old man with nothing", description = "No cloth, no device. He has been in the queue, on and off, for sixty years. \"I have an idea,\" he says. \"I am waiting until it is ready. I should not like to waste his time.\"" },
        { name = "something under a cloth, unattended", description = "On the floor, by a post, humming. The queue goes round it. Nobody knows whose it is. It has moved up two places since morning." },
      },
      actions = {
        { "Join the queue", say "You stand at the back. In eleven minutes you move one pace. The woman with the umbrella tells you her life. The umbrella opens. You are all, for a moment, closer than you wished." },
      } },
    { name = "the pigeon holes",
      description = "Ten thousand of them, oak, in a wall sixty feet high, each with a roll of drawings tied in red tape.",
      things = {
        { name = "the ladders on rails", description = "Three clerks ride them, pushing off from the shelves with a foot, gliding thirty feet and stopping at a hole by number. They never collide. It is the nearest thing in Tickover to ballet, and the Office sells no tickets." },
        { name = "the top row", description = "The four that were granted, each in a hole lined with red velvet. The wheel is a drawing of a circle. Under it the applicant has written {i}it goes round{/}." },
        { name = "a hole with a brass door", description = "Halfway up, alone, locked. It bears the number 41 and a card: {i}SEE VAULT{/}." },
        { name = "a nest", description = "In hole 7,702, among the drawings for a self rocking cradle: a real mouse and six young, in shredded tape. The clerks know. The cradle was refused. They feel it has found its use." },
      } },
    { name = "the iron motto",
      description = "{i}IT HAS BEEN DONE.{/} Each letter a foot high, bolted to the marble over the Examiner's head.",
      things = {
        { name = "the full motto", description = "A second line, smaller, in the frieze above, that takes some finding: {i}AND IF IT HAS NOT, THERE IS A REASON.{/}" },
        { name = "the missing letter", description = "The final {b}E{/} of DONE was unbolted one night ninety years ago and has never been found. It was replaced within the hour. Everybody knows who took it. He had forty one reasons." },
      } },
    { name = "the model shelves",
      description = "Along the side wall, behind glass: the small brass models that must come with every application, eleven thousand of them, each with a red ticket.",
      things = {
        { name = "a self buttering knife", description = "A knife with a reservoir. The ticket says {i}Anticipated by: butter.{/}" },
        { name = "a trap for inventors", description = "A handsome box with a sign reading {i}PRESS HERE{/}. The applicant demonstrated it on the Examiner's predecessor. It is the only model with two red tickets." },
        { name = "a machine for refusing patents", description = "A little arm with a stamp, on a spring. Submitted anonymously. Mr Thrupp refused it by hand, slowly, while it watched." },
        { name = "an empty stand", description = "A square of clean velvet in the dust and a ticket with a number: 41. The model is not here. It could not be made to stay on the shelf. It kept working its way to the edge." },
      },
      actions = {
        { "Press the box marked PRESS HERE", say "You reach for it. A clerk on a ladder, forty feet off, says \"I shouldn't,\" without turning round. You do not. You will wonder about it for years." },
      } },
    { name = "the waiting bench",
      description = "A marble slab along the wall for applicants who have been refused and need a moment.",
      things = {
        { name = "a weeping inventor", description = "A large man with a small device in his lap, a thing of wires. He winds it. It pats him on the shoulder with a padded arm, three times. \"That is what it does,\" he says. \"He said there was no call for it.\" It pats him again." },
        { name = "names scratched in the marble", description = "Dates, initials, a few oaths. And one, deep, with a file: {i}I.B. 41. See you tomorrow.{/}" },
      },
      actions = {
        { "Sit with the weeping inventor", say "You sit. He winds the device and holds it toward you, and the padded arm pats your shoulder, three times, lightly. It is absurd. It also works. You tell him so. He blows his nose and says that the Office does not consider that relevant." },
      } },
    { name = "a stair going down",
      description = "At the end of the hall, behind a brass chain, a marble stair turns down out of sight. A sign on the chain: {i}VAULT OF REFUSED DEVICES. APPEALS ONLY. PRESENT SLIP.{/}",
      variants = {
        { when = item "tk_rejection_slip", description = "At the end of the hall a marble stair turns down out of sight. A clerk has seen the slip in your hand and unhooked the brass chain, with the look of a man opening a gate to a field with a bull in it." },
      } },
    { name = "the clock over the counter",
      description = "Four minutes behind. It has a second dial below the first that counts applications. The second dial has five figures. There is a third dial below that, with one hand, pointing at 4.",
      things = {
        { name = "the third dial", description = "Grants. It has room to go to twelve. The maker was an optimist, and was not asked back." },
      } },
    { name = "the clerks' tea",
      description = "A trolley with a steam urn, wheeled along behind the counter at half past three. Each clerk gets a cup and one biscuit, issued against signature.",
      things = {
        { name = "the biscuit book", description = "A ledger, ruled. Every biscuit since the founding of the Office. There is a page with a line through a name and the word {i}TWO{/} beside it in red." },
      } },
    { name = "a notice of fees",
      description = "{i}Application: 1s. Examination: 1s. Rejection: free. Appeal: free. Grant: by arrangement, the Office having had insufficient occasion to fix a scale.{/}" },
    { name = "the letter box for ideas",
      description = "A brass slot in the wall marked {i}SUGGESTIONS FOR THINGS THAT OUGHT TO EXIST{/}. It is for the public. It is emptied once a year into the Boiler.",
      actions = {
        { "Post a suggestion", say "You borrow a pencil and write, after some thought: {i}a boot that does not let in water{/}. You post it. Somewhere behind the wall a small bell rings and a voice says, quite distinctly, \"Oh, not again.\"" },
      } },
  },

  exits = {
    { to = "tk_regulator_square", description = "Out past the queue, which closes behind you." },
    { to = "tk_rejected_vault", label = "The stair to the Vault",
      description = "Down the marble stair, past the chain, to where the refused things are kept.",
      requires = item "tk_rejection_slip", hidden = true },
  },
}

space {
  id = "tk_rejected_vault",
  region = "tickover",
  secret = true,
  name = "The Vault of Refused Devices",
  description = "Under the Patent Office there is a cellar as large as the hall above, with iron racks in rows, and on the racks everything that Tickover ever said no to. It is not quiet. Things tick, whir, hop, unfold. A tin hand waves at you from a shelf. Three hundred years of rejected machines, and nobody remembered to tell them to stop.",
  palette = { bg = "#0c0e0e", text = "#ccd0c8", dim = "#666c66", accent = "#8ed0a8", border = "#34483c" },
  ambience = { flicker { color = "#8ed0a8", strength = 0.08 }, dust { glyphs = "·˙∙", color = "#5a6a5e", rate = 0.4, speed = 0.3 } },

  things = {
    { name = "the Keeper of Appeals",
      icon = "☺",
      description = "A woman in an oil stained smock, sitting on an upturned crate among the racks with a screwdriver behind her ear, mending something on her knee. Miss Agnes Thrupp, the Examiner's sister. He refuses them upstairs. She keeps them going down here. They take tea together on Sundays and do not discuss work.",
      things = {
        { name = "the thing on her knee", description = "A clockwork tortoise with a cracked shell. She is fitting a new plate. \"Refused in my grandfather's day,\" she says. \"For being slow. As if that weren't the point of him.\"" },
        { name = "her oil can", description = "Long spouted, dented, never out of her reach. Every device in the Vault gets a drop on its birthday, which is the date on its red ticket." },
      },
      actions = {
        { "Present your slip", say "She reads it. She looks at your stick. \"Appeal dismissed,\" she says, \"it's a stick. But it's a good stick. You've a right to look round, having come down.\" She gives you back the slip. \"Don't wind anything with a red ribbon. Don't feed the big one. And if you find Mr Brass's engine, tell it I said good morning.\"" },
        { "Ask if any appeal ever succeeded", say "\"Not one. My brother's never wrong, more's the pity.\" She tightens a screw. \"That's why I keep them. Somebody ought to be on their side, and it can't be the law.\"" },
        { "Ask about the engine", say "\"It's not on a rack. It won't stay on a rack. Try the far end, under the arch, where it's warm. It likes it there.\" She does not seem to find the word {i}likes{/} odd." },
      } },
    { name = "the racks",
      description = "Iron shelving, row on row, each bay with a brass number and each device with its red ticket.",
      things = {
        { name = "a self playing violin", description = "The bow goes up and down on a crank. It knows one tune and plays it slightly flat, without pause, in a felt lined box that the Keeper made for it, with air holes." },
        { name = "a mechanical hen", description = "Tin, speckled. Every hour she lays a tin egg, and looks at it, and sits on it. There are four thousand eggs in a crate beside her. None has hatched. She sits on each one for the full hour, in case." },
        { name = "a pair of walking boots",
          description = "Boots with a small engine in each heel. They walk by themselves, round and round the bay, and have worn a track in the flags.",
          actions = { { "Step into their path", say "They stop, one in the air. They go round you. A few paces on they stop again and turn the toes back toward you, for a moment, the way a dog looks back at a gate." } } },
        { name = "a hat that bows for you", description = "On a wooden head. It lifts on a little brass arm when anybody passes. It has lifted to the Keeper eleven times today. She nods to it. It would be rude not to." },
        { name = "an apparatus for seeing round corners", description = "A tube with two mirrors. Refused as anticipated by walking a little further. You look in. You see the back of your own head, and somebody behind you. There is nobody behind you." },
      } },
    { name = "the bay of weapons",
      description = "A row of things the inventors were sure the Crown would want.",
      things = {
        { name = "a steam cannon", description = "It fires a ball forty feet with a noise like a cow sitting down. The ticket: {i}Anticipated by: throwing.{/}" },
        { name = "an armoured suit", description = "Brass, riveted, with a boiler on the back. The inventor walked it up the Office steps for the demonstration and it is still, in a sense, the reason there are eleven steps and not twelve." },
        { name = "a sword that sharpens itself", description = "In a rack with a little wheel that grinds the edge as it hangs. It has ground itself, in ninety years, down to a sort of needle. It is very, very sharp, and there is nearly none of it." },
      } },
    { name = "the big one",
      icon = "Ω",
      description = "At the back of the widest aisle, under a tarpaulin, something the size of a hay cart, with a card: {danger}DO NOT FEED{/}. The tarpaulin rises and falls. A brass claw the size of a coal scuttle rests on the flags outside the edge of it, quite relaxed.",
      things = {
        { name = "the brass claw", description = "Three fingers, jointed, with rubber pads. It taps once on the stone when you come near, like a cat's tail." },
        { name = "the card", description = "On the back: {i}An Engine for the Disposal of Rubbish. Application refused. Applicant not found. Nor his umbrella.{/}" },
      },
      actions = {
        { "Offer it your rejection slip", say "The claw lifts, takes the slip between two pads with terrible delicacy, draws it under the tarpaulin, and there is a sound of reading. The slip comes out again, uneaten, and is laid on your boot. Even this will not have your stick." },
      } },
    { name = "the red ribbon shelf",
      description = "A locked cage of iron mesh. Inside, six devices, each tied with red ribbon and sealed with lead.",
      things = {
        { name = "a music box", description = "Small, pretty, inlaid. The ticket says only {i}Refused. Plays the tune you were trying to forget.{/}" },
        { name = "a mirror on a stand", description = "Turned to the wall. {i}Shows you as you were four minutes ago. Refused on grounds of public morale.{/}" },
        { name = "a plain brass button", description = "On a plinth, under a glass. The ticket is blank on the front. On the back, in the Examiner's own hand, shaking: {i}We do not know. We did not press it.{/}" },
      } },
    { name = "the warm arch",
      description = "At the far end, the cellar runs under the street toward the Boiler Hall, and the last bay is a brick arch that is warm to the hand. The flags here are dry. And here, in the middle of the floor, with no rack and no ticket, sits a small brass engine, going round.",
      things = {
        { name = "the engine of Ignatius Brass",
          key = "tk_brass_engine",
          icon = "¤",
          description = "No bigger than a loaf. One flywheel, one piston, no boiler, no belt. It has been running for ninety years, on nothing. The track of its travels is scratched all over the Vault floor: it creeps, a hair a day, with the shake of its own going, and it has crept here, to the warm arch, and stopped creeping.",
          variants = {
            { when = item "tk_perpetual_engine", name = "a clean patch on the flags",
              description = "A square the size of a loaf where the dust never settled. The scratches of ninety years of creeping all lead to it. The warm arch seems, if a bay of brick can, to be looking at the place." },
          },
          actions = {
            { "Say good morning from Miss Thrupp", say "You feel a fool. You say it. The flywheel does not change its pace. But the engine creeps, the width of a hair, toward your boot." },
            { "Pick it up", once = true, give "tk_perpetual_engine",
              say "It is warm, and heavier than brass, and it goes on turning in your hands, quite unbothered. From down the aisle Miss Thrupp calls, without looking up: \"It's chosen, then. It tried the Clock end and it tried the Boiler end, and now it's trying you. Mind it. It was refused forty one times and it has never once taken no.\" You have {gold}the Perpetual Engine of Ignatius Brass{/}." },
          } },
        { name = "the scratches on the floor", description = "A fine wandering line, like a snail's, all through the Vault: under racks, round the big one at a respectful distance, twice to the foot of the stair. Then straight here, the last forty feet, without a bend." },
        { name = "the warm bricks", description = "On the other side of this wall, and down, is whatever the stokers keep. The bricks do not get hot. They are the warmth of a wall with a bakery behind it, and they are that warmth at midnight and in the snow." },
      } },
    { name = "the forty one drawings",
      description = "Pinned along the wall beside the arch, in order: every application of Ignatius Brass, each stamped in red.",
      things = {
        { name = "the first", description = "Careful, shaded, with every part lettered. He was twenty. In the margin he has written an explanation of how it works, running to two pages." },
        { name = "the twentieth", description = "The same engine. The explanation is one line: {i}You push it once.{/}" },
        { name = "the forty first", description = "The same engine, drawn in six strokes by an old hand. No explanation. Where the explanation used to go he has written: {i}It is not making anything. It is only not stopping. Everything here does that. I merely built one small enough to watch.{/}" },
      } },
    { name = "a tin hand on a shelf",
      description = "A hand and forearm of jointed tin on a stand, made to wave at a shop door. It is waving at you. It has been waving since you came down the stair.",
      actions = {
        { "Wave back", say "You wave. It stops. For the first time, perhaps, in a century, it stops, with the fingers spread, as if listening. Then it waves again, a good deal faster." },
      } },
    { name = "the Keeper's corner",
      description = "A crate for a table, a spirit stove, a cot with a blanket. She sleeps down here more often than not.",
      things = {
        { name = "the cot", description = "Army pattern, with a patchwork quilt. Round the feet of it a dozen small devices have gathered, as hens gather round a door: the tortoise, a tin frog, a thing with one wheel." },
        { name = "a shelf of birthday cards", description = "She makes one for each device, each year, and stands it by the ticket. Most of them say only {i}Still going{/}." },
        { name = "a Sunday teacup", description = "Good china, with a gold rim, washed and upside down on a cloth. It is her brother's. He has never seen the Vault. He takes his tea at the top of the stair, and she at the bottom, and they call the news up and down." },
      } },
    { name = "the noise",
      description = "A thousand small workings, none in time with another: the freest sound in Tickover. Upstairs there is the city's beat. Down here nothing was ever accepted, and so nothing was ever regulated.",
      actions = {
        { "Stand and listen", say "It ought to be a din. After a minute it is more like a wood: this one creaking, that one ticking, something far off going {i}whirr{/} like a pheasant getting up. You find you are smiling. It is the only place in the city where it is all right to be out of step." },
      } },
    { name = "a rat",
      description = "A real one, grey, sitting on the armoured suit and washing. It has a mechanical friend: a tin mouse that follows it everywhere on three wheels. The Keeper says the tin mouse was refused as {i}without purpose{/}, and that the rat has taken that up with the Office in its own way, mostly by night, mostly on the biscuits." },
  },

  exits = {
    { to = "tk_patent_office", description = "Up the marble stair to the queue and the iron letters." },
  },
}
