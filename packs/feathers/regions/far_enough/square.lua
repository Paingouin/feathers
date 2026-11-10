space {
  id = "plumb_square",
  region = "far_enough",
  name = "Plumb Square",
  description = "The middle of Far Enough: a cavern you could lose the castle in, with streets cut into every wall, lamps by the thousand, and not one line out of true. The square is square. The dwarves checked it again this morning.",
  backdrop = {
    "  ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄  ",
    "  █ ▪ ▪ ▪ █ ▪ ▪ ▪ █ ▪ ▪ ▪ █ ▪ ▪ ▪ █ ▪ █  ",
    "  █▄▄▄▄▄▄▄█▄▄▄▄▄▄▄█▄▄▄▄▄▄▄█▄▄▄▄▄▄▄█▄▄▄█  ",
    "  █ ▪ ▪ ▪ █ ▪ ▪ ▪ █ ▪ ▪ ▪ █ ▪ ▪ ▪ █ ▪ █  ",
  },

  on_enter = function(ctx)
    if not ctx:visited("plumb_square") then
      ctx:say("You straighten up on the far side of the little door, and keep straightening, and there is room. A city of lamps goes up the walls on every side. Several hundred dwarves stop, look at you as far as the belt, and go on with their day.")
    end
  end,

  things = {
    { name = "the shift clock",
      key = "shift clock",
      wonder = true,
      icon = "◎",
      description = "A column of brass wheels as tall as a tower, with one hand. It does not tell hours. It counts shifts, and has counted every one since the first pick went in. {magic}There is a gap in the wheels where one day's count was stopped by hand and started again.{/} Every dwarf who crosses the square looks at the gap, and then at their feet.",
      things = {
        { name = "the hand", description = "Iron, as long as a barge pole, pointing at a rune. When the shift changes it moves one place with a sound like a door closing in the next valley, and the whole city breathes out." },
        { name = "the wheels", description = "Nine hundred of them, from the size of a millstone down to the size of a button, every tooth cut by hand. They were made to run for ever. The makers wrote that on the base and then crossed out {i}for ever{/} and put a number, to be exact.",
          things = {
            { name = "the gap", description = "One tooth on one wheel is brighter than the rest: newer. On the day of the breakthrough somebody put a hand into the works and held the count, for as long as it took the city to decide what to do. Then they let go. The tooth had bent. Nobody has ever said whose hand it was, and it is carved nowhere." },
            { name = "the smallest wheel", description = "It turns once a breath. A dwarf child is lifted up to see it on their naming day, and told that it is theirs to keep going." },
          } },
        { name = "the clock-keeper's door", description = "In the base of the column, two feet high. The keeper lives inside. She comes out at shift change, looks up, nods, and goes back in." },
        { name = "the number on the base", description = "The count of shifts the makers allowed for. You work it out, roughly, on your fingers. The clock is not yet a tenth of the way through." },
      },
      actions = {
        { "Wait for it to strike", say "You wait. A dwarf beside you waits too, to be companionable. After a while he says, \"Six hours yet,\" and you both go on standing there, because it would be rude to leave first." },
      } },
    { name = "the statue of the First Foreman",
      icon = "♙",
      description = "Granite, three times life size, which makes him about your height. He holds a plumb line, and the line is real, with a bronze weight on it. It hangs dead straight in a city with no wind. Children are brought to look at it when they have told a lie.",
      things = {
        { name = "the plumb line", description = "Waxed cord, replaced every fifty years with a ceremony. The weight is the original. It points at the middle of the world, the dwarves say, and they would know: they went most of the way." },
        { name = "the inscription", description = "Runes, and under them a translation that somebody has cut very recently, the dust still in the letters: {i}HE SAID STOP.{/} You suspect it was cut this morning, and for you." },
        { name = "his boots", description = "Granite toecaps, rubbed shiny. You touch them for luck going on shift and for thanks coming off. There is a queue for it at both ends of the day and it moves at exactly walking pace." },
        { name = "his other hand", description = "Held out flat, palm down: the foreman's sign for {i}enough{/}. Somebody has left a mushroom pasty on it. A pigeon would have had that by now, in any other square." },
      },
      actions = {
        { "Touch his boots", say "Cold, smooth, and worn into two hollows that fit a dwarf hand. Yours laps over the edges. An old dwarf behind you says something approving, which you take to be about the gesture and not the hand." },
      } },
    { name = "the crowd",
      description = "Dwarves going to work, from work, or between works. They walk on the right. Each one looks up at you exactly once, to about the belt, and then makes room without breaking step.",
      things = {
        { name = "a child", description = "A dwarf child of forty or so, with the start of a beard, staring at you with her mouth open. Her mother says something short. The child keeps staring but shuts the mouth.",
          actions = {
            { "Wave", say "She waves back, and then measures you with her eyes, floor to helmet. You can see her doing the sum. She is going to tell people, and she is going to have the figures." },
          } },
        { name = "a shift going on", description = "Forty miners, in step, picks on the right shoulder. It is the Longshift crew. The mine has been shut for a thousand years. They march to the end of the square, are counted, and march back. The pay has never been stopped, and so neither have they." },
        { name = "a dwarf carrying a door", description = "On his back, alone, a full-sized iron door, at a walk. Nobody remarks on it. He nods to you as he passes, and the door nods too." },
        { name = "two dwarves arguing", description = "Quietly, with a ruler between them. It is about a sixteenth of an inch. It has gone on for two years, and they meet here at this time to continue it, and bring each other lunch." },
      } },
    { name = "the notice wall",
      description = "A slab of slate forty feet long. Dwarf notices are carved if they matter and chalked if they do not. Most are carved.",
      things = {
        { name = "a notice: THE LONGSHIFT", description = "{i}Works suspended pending review. Review in progress.{/} The stone it is carved in has worn smooth at the edges." },
        { name = "a notice: lost", description = "{i}One pick, small. Owner known. Not to be mentioned to him.{/}",
          variants = {
            { when = flag "fe_pick_returned",
              description = "{i}One pick, small. Owner known. Not to be mentioned to him.{/} Somebody has taken a chisel to it since you were last here. Under the old lines, fresh and deep: {b}FOUND.{/}" },
          } },
        { name = "a notice in tall-folk letters", description = "Freshly chalked, for you, by somebody who took trouble: {i}WELCOME VISITER. BEER IS LEFT. FORGE IS RIGHT. DO NOT LEAN ON THINGS.{/}" },
        { name = "a notice about singing", description = "{i}The four-hundredth verse is not to be sung within the city, at the gate, or on the road. It may be hummed.{/}" },
        { name = "a notice of marriage", description = "Two names, a date some eighty years off, and the words {i}subject to survey{/}. Dwarves do not rush into things. The betrothal was carved by the bride." },
      },
      actions = {
        { "Look for your name", say "It isn't there. Then a dwarf with chalk in his beard comes along the wall, looks at you, and adds a line at the bottom. You ask what it says. \"One tall. Staying to tea,\" he says. Somebody has decided." },
      } },
    { name = "the streets",
      description = "They go up the walls in tiers, and the houses are cut into the rock, each with a door, a lamp, and a number. The numbers run to four figures and none is missing.",
      things = {
        { name = "the stair streets", description = "Every flight has the same number of steps, and every step the same rise. A dwarf can walk home blind. Several are doing so now, reading." },
        { name = "the lamps of the upper tiers", description = "So many and so high that they stand in for stars. The dwarves have named a few of the groups: the Pick, the Kettle, the Foreman's Hat." },
        { name = "a house with no lamp", description = "One door in the fifth tier is dark. The household is away, the neighbours say, up at the mine, minding the gate sign. They are expected back soon." },
      } },
    { name = "the paving",
      description = "Square flags, each a pace across, each level with its neighbours to within the thickness of a thought. Your boots sound wrong on it. Everybody else's sound like one boot.",
      things = {
        { name = "the centre stone", description = "A brass stud marks the exact middle of the square, and so of the city. A plumb bob hangs over it from the roof on four hundred feet of wire. The point of the bob is a finger's width above the stud. It has never touched and never swung." },
        { name = "a flag being replaced", description = "Roped off, with a lamp. Four masons are lowering a new flag on canvas straps while a fifth lies on his stomach with a level. This one had worn down by the depth of a fingernail. It took three hundred years, and there was a hearing." },
      } },
    { name = "a pasty seller",
      description = "A dwarf with a tray on a strap and a warming stone under it. Mushroom, mushroom and onion, or mushroom and a thing he calls beef.",
      things = {
        { name = "a mushroom pasty", description = "Square. Crimped on three sides with a miner's thumb. It is built to survive being sat on in a tunnel." },
        { name = "the warming stone", description = "A flat black stone with a rune on it. It has kept pasties hot since his grandmother's time on one heating. It came from the rune-smith on Chisel Street, he says, and cost a year's pasties." },
      },
      actions = {
        { "Ask what the beef is", say "\"Cow,\" he says. You ask what kind of cow. He holds his hands apart to show the size and shape of a loaf of bread. You have the mushroom." },
        { "Take the pasty he holds out", say "You explain that you have no money. \"It's carved up,\" he says, and nods at the notice wall. \"Tea's included.\" It is the best thing you have eaten since the onion, and it stays hot all the way down." },
      } },
    { name = "the roof",
      description = "Four hundred feet up, dressed smooth, and ribbed with iron bands the dwarves put there to make the mountain feel supervised. Your helmet seems a small argument against it.",
      things = {
        { name = "a net", description = "Slung under the highest part, of steel mesh. It has caught, since the founding, eleven stones, a bat and a roof inspector." },
        { name = "the roof inspector", description = "A dot on a rope, tapping. He taps, listens, and moves a yard. He will finish the roof in sixty years, by which time the place he started will be due." },
      } },
    { name = "a drinking fountain",
      description = "A stone basin with a bronze spout in the shape of a fish with no eyes. The water runs all the time, into a drain cut to take exactly that much.",
      actions = {
        { "Drink", say "It is so cold that it has no taste, only a temperature. You understand the beer better now. They needed something with content." },
      } },
    { name = "a signpost",
      description = "Iron, eight arms, runes on each. Under every rune, in new chalk, a picture for you: a mug, a hammer, a scroll with a frown on it, a mushroom, a bath, a coin, a helmet, a chisel." },
  },

  exits = {
    { to = "dwarf_gate", description = "Out by the small door, bending." },
    { to = "beer_hall", description = "Left, where the singing is." },
    { to = "forge_hall", description = "Right, where the light is red and the floor shakes in time." },
    { to = "grudge_hall", description = "Up nine broad steps, between pillars carved as stacked ledgers." },
    { to = "under_fields", description = "Down a ramp into a dim blue-green glow, and a smell of earth." },
    { to = "chisel_street", description = "A street of shop fronts cut into the north wall, each with its sign hung dead level." },
    { to = "hot_level", description = "Down a stair where warm wet air comes up to meet you." },
    { to = "watch_post", description = "A square doorway with a lamp of blue glass over it." },
  },
}

space {
  id = "watch_post",
  region = "far_enough",
  name = "The Watch-Post",
  description = "The headquarters of the City Watch of Far Enough: a guardroom, a rack of axes, a duty slate, and three cells with their doors standing open. There has not been a crime in the city in ninety years. The Watch regards this as a backlog.",

  things = {
    { name = "Captain Hod Carrow",
      key = "watch captain",
      icon = "♜",
      description = "A square dwarf with an iron-grey beard and a slate under his arm. He has commanded the Watch for sixty years, and in that time he has made one arrest, which he describes to recruits annually.",
      things = {
        { name = "his slate", description = "The day's incidents. {i}First shift: nil. Second shift: nil. Third shift: a tall person, at the gate. Hat issued.{/} He has underlined the last one twice. It is the busiest the slate has been since the arrest." },
        { name = "his whistle", description = "Brass, on a chain. One blast for a disturbance, two for a fire, three for the roof. It has been blown once, in training, and nine hundred dwarves stood still for an hour awaiting further whistles." },
      },
      actions = {
        { "Ask about the arrest", say "\"Ninety years back. Fellow moved a boundary stone. Half an inch, in the night.\" He lets that sink in. \"We had him by breakfast. He'd not allowed for the dew.\" You ask what happened to him. \"Moved it back. Said sorry. He's the Chief Surveyor now. Nobody keener.\"" },
        { "Report a crime", say "He has the chalk out before you finish the word. You admit that you do not actually have one. The chalk goes away again, slowly. You have never seen a beard look let down before." },
        { "Ask what the Watch does all day", say "\"Watches,\" he says. \"Somebody's got to. You don't get ninety quiet years by looking the other way.\"" },
      } },
    { name = "the duty slate",
      description = "A wall of slate ruled into squares: every watchman, every shift, a year ahead. It is carved, not chalked. Nobody in the Watch has ever been ill on a day they were down for.",
      things = {
        { name = "today's square", description = "Eleven names on the wall, two on the gate, one in the arrow slit. And one name against {i}cells{/}, for there must be somebody to guard them, even empty." },
        { name = "a square ninety years back", description = "Kept, behind glass. One extra word in it, cut deep and a little unevenly, by a dwarf whose hand was shaking: {i}ARREST{/}." },
      } },
    { name = "the axe rack",
      description = "Thirty axes, edges covered, each on a peg with a number. They are drawn at the start of the shift and returned at the end, and the edge covers are inspected for signs of having been off.",
      things = {
        { name = "the edge covers", description = "Stitched leather with a wax seal. To draw an axe in anger you would have to break the seal, and to break the seal you would have to fill in why." },
        { name = "a training axe", description = "Wood, for recruits. It has been used on a straw dummy so often that the dummy is in the records as a serving member, with seniority." },
      } },
    { name = "the cells",
      key = "lock-up",
      description = "Three, cut in the rock, each with an iron door standing wide. Bed, blanket, lamp, stool. They are aired daily and the blankets are turned. A cell that was not ready, says the Captain, would be an invitation.",
      things = {
        { name = "the first cell", description = "This is the one that was used. There is a plate on the door with the date. Schoolchildren are brought through it, one at a time, and come out very thoughtful.",
          things = {
            { name = "a mark on the wall", description = "One scratch. He was in for one night, and he kept count." },
          } },
        { name = "the second cell", description = "Never occupied. The bed is made so tight that the blanket rings if you flick it." },
        { name = "the third cell", description = "Taller than the others, by a good three feet, with a longer bed. It was cut six hundred years ago, the week a tall king signed the book at the gate. It was not needed. The Captain looks from it to you and back, as a man looks who likes to see provision justified.",
          actions = {
            { "Try the bed", say "It fits. It is the first thing under this mountain that has. You lie there a moment longer than the joke requires, and the watchman on cell duty brings you a blanket and stands guard, radiant." },
          } },
        { name = "the cell guard", description = "A young watchman, at attention, guarding nobody with his whole heart." },
      } },
    { name = "the lost property shelf",
      description = "Labelled, dated, and nearly bare. Dwarves do not lose things. What is here is here because the owner will not come for it.",
      things = {
        { name = "a left boot", description = "{i}Found, Plumb Square. Owner known. Says it is not his.{/} It is his. Everyone knows it. It has to do with a wager." },
        { name = "a ruler, snapped", description = "The two halves tied together with thread. The label says only {i}the sixteenth{/}, and the Captain will not be drawn." },
        { name = "a kettle with a hole in it", description = "The only failed kettle in the history of the Forge. It was handed in anonymously, wrapped in a cloth, at night." },
      } },
    { name = "the charge book",
      description = "Stone-bound. Nine hundred pages. One entry.",
      actions = {
        { "Read the entry", say "{i}That he did wilfully and by night move a stone of the commons one half inch to the north. Pleaded: guilty. Said: sorry. Sentence: to think about it.{/} A later hand has added: {i}He has.{/}" },
      } },
    { name = "a watchman's stove",
      description = "Iron, squat, with a kettle on it, and round it four of the off shift with their boots off and their mail on.",
      things = {
        { name = "the off shift", description = "They are playing a game with stone counters on a ruled board. A move takes a quarter of an hour. They say it sharpens the reflexes." },
        { name = "the kettle", description = "Forge-made, and so it boils in a minute and pours without a drip. They hardly notice. You have not stopped noticing." },
      },
      actions = {
        { "Accept a mug of tea", say "Black, with a mushroom floating in it, for strength. The watchmen watch you drink it. You get it down. They nod, and the game resumes: you have passed something." },
      } },
    { name = "the wanted board",
      description = "Slate, framed, with the heading carved deep. It has never had a face on it. In the middle, in chalk, someone has written {i}nobody at present{/}, and signed it.",
      variants = {
        { when = flag "rope_taken",
          description = "Slate, framed, with the heading carved deep. Under {i}nobody at present{/} there is a new line in very fresh chalk: {i}enquiries are being made regarding a rope{/}. The Captain is looking at the ceiling. You shift the coil on your shoulder, and he goes on looking at the ceiling, harder." },
      } },
    { name = "a watch newt",
      icon = "s",
      description = "A grey cave newt in a glass tank by the door, on a wet stone. It goes pale before a rock fall, they say, a full hour ahead. It has been the same grey for ninety years, and draws a ration.",
      actions = {
        { "Tap the glass", say "Four watchmen say \"Don't\" in one voice. The newt has not moved. It takes a moment for everybody to finish checking its colour." },
      } },
    { name = "the stair to the wall",
      description = "Cut in the back of the guardroom, spiralling up. Every watchman climbs it once a shift, to look out at nothing from a height." },
  },

  exits = {
    { to = "plumb_square", description = "Out under the blue lamp." },
    { to = "inner_wall", description = "Up the spiral, a hundred and eight steps, each the same as the last." },
  },
}

space {
  id = "inner_wall",
  region = "far_enough",
  name = "The Wall Under the Mountain",
  description = "A curtain wall with battlements, a walkway and four towers, built across the mouth of the great cavern with a mile of solid rock in front of it. It faces the inside of a mountain. The dwarves say that a city has a wall, and that you do not skip a thing because it is unlikely.",

  things = {
    { name = "the battlements",
      description = "Merlons and gaps, cut square. Through each gap, at a distance of about a yard, there is rock.",
      things = {
        { name = "the view", description = "A rock face, lit by the wall lamps: grey, with a seam of rust in it and a damp patch that the watch call the Lake. They can tell you the weather on it." },
        { name = "an arrow loop", description = "It commands eleven inches of open ground. An archer is posted. He has never loosed. He says the angle is very demanding." },
      },
      actions = {
        { "Look out", say "You lean between two merlons and look the mountain in the face. It is a foot from your nose. Neither of you has anything to say." },
      } },
    { name = "a sentry",
      icon = "♜",
      description = "A dwarf in mail, pacing the walk: twenty paces, turn, twenty paces. He watches the rock the whole way. It has not moved in his time, or his mother's, and he means to be there when it does.",
      things = {
        { name = "his horn", description = "Ram's horn, bound in iron. One note for an enemy, two for a friend. There being no way for either to arrive, it is sounded once a year to keep the reed supple, and the whole city stands to." },
        { name = "his lantern", description = "Held out toward the rock at arm's length, all shift. His right arm is noticeably the larger." },
      },
      actions = {
        { "Ask what he is watching for", say "He thinks. \"It's not that anything comes,\" he says. \"It's that if it did, and we hadn't a wall, we'd look fools.\" He paces to the end, turns. \"And the mountain knows we're looking. That counts for something.\"" },
        { "Ask if anything ever happened", say "\"Drip started, year I joined,\" he says, nodding at the damp patch. \"Reported it. They sent a surveyor. It's on the map now.\" He is very quietly proud." },
      } },
    { name = "the four towers",
      description = "Square, the same height to the inch, each with a lamp on top of a different colour so that the watch can call a position: blue, green, white, and one which is also white, because the red glass was not up to standard and was sent back.",
      things = {
        { name = "the second white tower", description = "The red glass has been on order for two hundred years. The glassmaker says it is nearly it." },
        { name = "a tower room", description = "A stool, a brazier, a crossbow on a stand, and a slot looking at rock. The crossbow is wound. It has been wound, and let down, and wound, at every change of shift since the founding." },
      } },
    { name = "the gate in the wall",
      description = "An arch, a portcullis, and a road that runs out under it for six feet and stops at the mountain. The portcullis is lowered every night.",
      things = {
        { name = "the six feet of road", description = "Paved, cambered, drained, with a milestone. The milestone reads {i}0{/}." },
        { name = "the portcullis", description = "It comes down at lamp-dimming with a crash that the city sets its clocks by, and it shuts out, each night, the same six feet." },
      },
      actions = {
        { "Walk out through it", say "You walk out of the city of Far Enough, to its furthest extent, and put your hand on the mountain. You walk back. The sentry enters it in the log as a sortie." },
      } },
    { name = "the damp patch",
      key = "the Lake",
      description = "On the rock face opposite the third merlon: a dark stain the size of a table, with one drip. The watch have named its bays. They know its seasons.",
      things = {
        { name = "the drip", description = "One drop every nine seconds. You have heard that count before, a mile away, falling into a tin cup. It is the same water. The mountain has one clock and uses it everywhere." },
        { name = "a fern", description = "One frond, white, growing out of the wet rock toward the wall lamps. It is the only thing between the wall and the mountain that has ever advanced, and the watch have a soft spot for it." },
      } },
    { name = "the wall walk",
      description = "Wide enough for two dwarves to pass, which makes it wide enough for you sideways. It is swept every shift. There is nothing to sweep, and so the sweeper sweeps that.",
      things = {
        { name = "the sweeper's mark", description = "A small rune at each end of the walk, chiselled daily, to say that it was done. There are a great many. They have had to start a second wall to keep the marks on." },
      } },
    { name = "a stack of wall stones",
      description = "Spares, squared and numbered, each for one particular place in the wall, in case that particular stone should fail. None has. The spares are inspected for wear." },
    { name = "the city, from the wall",
      description = "Turn round, and there is Far Enough: the square, the clock, the tiers of lamps going up into the dark, the red glow of the Forge off to one side and the green of the fields below. It is the only view from the wall, and the sentries are forbidden it while on duty.",
      things = {
        { name = "the Great Forge, from above", description = "A line of red a street long, with two hundred small sparks going up from it together, and down, and together." },
        { name = "the Second Shift, from above", description = "You can hear it from here. They are on a verse in the two hundreds, by the sound, and somebody is ahead." },
      } },
    { name = "a moth",
      icon = "w",
      description = "Pale, as large as your hand, circling the blue tower lamp. The watch log it as a patrol and note its hours.",
      actions = {
        { "Watch it", say "Round, and round. On the ninth circuit it lands on the sentry's helmet, and he stands a little straighter, and neither of them mentions it." },
      } },
    { name = "the wall stair down",
      description = "A broad stair on the city side, down to the back of the gates. The guard goes down it at shift change in step. The stair has a dip worn in each tread, left side and right, the width of one boot." },
  },

  exits = {
    { to = "watch_post", description = "Down the spiral to the guardroom and the stove." },
    { to = "dwarf_gate", description = "Down the broad stair, to the back of the great doors and the Sergeant's desk." },
  },
}
