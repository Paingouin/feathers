space {
  id = "lake_shore",
  region = "mumblewood",
  name = "The Shore of Lake Perhaps",
  description = "The falls arrive here and lie down. A wide still lake among the pines, silver-grey, holding the sky very carefully, as if it had been lent.",
  palette = { bg = "#0a0f15", text = "#c4ccd6", dim = "#5f6c7c", accent = "#8fb8e8", border = "#2c3f58" },
  ambience = {
    fog { color = "#1a2632", speed = 0.15 },
    shimmer { color = "#8fb8e8", strength = 0.15 },
  },

  things = {
    { name = "the lake",
      wonder = true,
      icon = "≈",
      description = "Lean over and it shows you the sky. Not this one. {magic}The clouds in the water are different clouds{/}, going the other way, and once, far down, something crosses them on very large wings that nothing above you is casting.",
      things = {
        { name = "your reflection", description = "It is you, more or less. It looks a little better equipped. It has, you notice, a sword." },
        { name = "the other sky", description = "It has a star out already. Yours does not, and will not for hours." },
      },
      actions = {
        { "Wave at your reflection", say "It waves back, very slightly late, out of politeness." },
        { "Skim a stone", say "Four skips. On the water's side of the surface, something small skips four times back.", fx "wash" },
      } },
    { name = "the angler",
      icon = "☻",
      description = "A man on a stool with a rod, a line, and no hook. He has not caught a fish in thirty years and regards this as an unbroken record.",
      things = {
        { name = "his line", description = "Bare thread, hanging just above the water. Not in it. \"Wouldn't want to disturb it,\" he says." },
        { name = "his keepnet", description = "Empty, dry, and mended every winter." },
      },
      actions = {
        { "Talk", say "\"Any luck?\" you ask. \"All of it,\" he says. \"Never had a bite. Catch something out of {i}that{/}, and you have to decide what to do with it.\"" },
        { "Ask about the island", say "\"One tree. Heron. Stone that doesn't sit right. I rowed out once.\" He looks at his rod. \"Took up fishing after.\"" },
      } },
    { name = "a rowing boat",
      key = "rowing boat",
      description = "Pulled up on the shingle: sound, dry, and named {i}Eventually{/} in flaking paint. No oars.",
      variants = {
        { when = item "oar",
          description = "Pulled up on the shingle and named {i}Eventually{/} in flaking paint. With one oar it will go in a circle. You tell yourself it is a wide circle, and the island is on it." },
      },
      things = {
        { name = "the rowlocks", description = "Two. You will be using one, at most." },
      },
      actions = {
        { "Sit in it", say "You sit in a boat on dry land. The angler does not look round, which is tactful of him." },
      } },
    { name = "the pines",
      description = "Dark, straight, and silent. The mumbling stops at the shore. Whatever the trees say about the lake, they do not say it here." },
    { name = "the shingle",
      description = "A crescent of grey and white pebbles, sorted by the lake into sizes, largest at the top. Somebody has gone along the waterline picking out the flat ones.",
      things = {
        { name = "a heap of skimming stones", description = "Flat, round, palm-sized, in a tidy pile by the angler's stool. He collects them. He has never thrown one. \"Saving them,\" he says, \"for a day I feel lucky.\"" },
        { name = "a freshwater mussel", description = "Open, empty, and lined with a blue-white shine that moves when you tilt it. A crow had the inside. You get the better half." },
        { name = "a line of bird tracks", description = "Three toes, going down to the water and stopping. They do not come back. In the wet sand at the very edge is one more print, upside down." },
      } },
    { name = "a short jetty",
      description = "Six planks out over the water on four posts, built by somebody who wanted to stand a little way out and then thought better of standing any further.",
      things = {
        { name = "the end of the jetty", description = "A rail, a worn place for two elbows, and a view straight down. People come here to think. Nobody stays long." },
        { name = "a mooring post",
          description = "Green to the waterline, with a painter's knot still tied round it and nothing on the end of the rope.",
          things = {
            { name = "the frayed rope", description = "It goes down into the water at a slant and keeps going. You pull a yard of it in. It comes up dry." },
          } },
      },
      actions = {
        { "Walk to the end", say "The planks give a little. You stand over the wrong sky with nothing under you but six boards, and a cloud goes by beneath your boots. You walk back at a pace that you would describe as unhurried." },
      } },
    { name = "the swan",
      icon = "S",
      description = "White, vast, and coming towards you across the water without appearing to move anything. {danger}It can break a man's arm.{/} Everybody says so. The swan has heard it said, and carries itself accordingly.",
      things = {
        { name = "its reflection", description = "Black. A black swan, down there, keeping perfect station under the white one. Neither of them looks at the other. It is clearly an old arrangement." },
      },
      actions = {
        { "Stand your ground", say "It stops a yard off, raises its wings, and hisses like a kettle. You stand your ground. It lowers its wings, turns, and sails away with the air of one who has decided to let you off. You find a pebble in your hand that you do not remember picking up." },
      } },
    { name = "the water lilies",
      description = "A raft of them in the shallows, flat green plates and white cups. In the reflection they are closed, and it is plainly night.",
      things = {
        { name = "a frog on a lily pad", icon = "f",
          description = "Green, gold-eyed, throat going. It is sitting on a leaf looking down between its own front feet at a frog looking up.",
          actions = {
            { "Say good day", say "It jumps. There is no splash. You look for the ripple and find only the lily pad, rocking, and under it a frog going down into a sky." },
          } },
        { name = "a dragonfly", description = "Blue, glassy, parked on a lily bud with its wings out flat. It patrols a square of water exactly as a guard patrols a wall, and sees off a second dragonfly that is doing the same from underneath." },
      } },
    { name = "the angler's things",
      description = "Beside the stool: a basket, a flask, a folded oilskin. Thirty years of sitting in one place have worn a hollow for each of them.",
      things = {
        { name = "the basket",
          description = "Wicker, with a leather strap. For the catch.",
          things = {
            { name = "a cheese sandwich", description = "It is what is in the basket, and what has been in the basket, in one form or another, every day for thirty years." },
            { name = "a tin of hooks", description = "A hundred, bright, in oiled paper, with the maker's seal unbroken. He bought them the first week. \"Never know,\" he says. He does know." },
          } },
        { name = "the flask", description = "Tea, stewed black. He pours a little on the ground before he drinks. \"For the lake,\" he says. He does not pour it in the lake. \"Wouldn't want to disturb it.\"" },
      } },
    { name = "a Survey board",
      description = "A painted board on two legs, put up by the Royal Survey: {b}LAKE{/}, and after that a name has been painted, scraped off, painted and scraped off so many times that the wood is thin there. The latest attempt reads {b}PERHAPS{/}.",
      things = {
        { name = "the depth gauge", description = "A pole in the shallows marked in feet. The lake reads four feet at the pole. The reflection of the pole goes down a good deal further than four feet, and the marks on it are in a different hand." },
      } },
    { name = "a ring of blackened stones",
      description = "An old campfire above the shingle. Adventurers, by the look of it: one burnt sausage, one bent tent peg, and an argument scratched in the dirt about whose turn it was.",
      things = {
        { name = "the scratched argument", description = "{i}YOUR watch.{/} {i}No, YOURS.{/} A long gap. Then, in a third hand, shakily: {i}Did either of you see what was in the lake.{/}" },
      } },
    { name = "the mist",
      description = "It lies on the far half of the lake like a lid. Now and then it thins, and you see the island: a hump, a tree, a grey bird. Then the lake thinks better of having shown you.",
      actions = {
        { "Wait for it to clear", say "It does not clear. It does, after a while, come a little closer, and you decide you have waited enough." },
      } },

    { name = "a bathing place",
      description = "A shelf of flat rock going into the water, with a rope ring let into it and a row of wooden pegs on a pine. Greenhollow comes up to swim on the hottest day of the year. Only the hottest. The lake is that cold.",
      things = {
        { name = "the pegs", description = "Each carved with a family mark. One peg is higher than the rest, out of a child's reach, and has a towel on it that has plainly been there since last August." },
        { name = "a mark on the rock", description = "A line cut at the water's edge and a date. Then another line, at the same level, another date. Forty lines. The lake has not risen or fallen by a hair in forty summers, in drought or flood. Somebody stopped measuring. There was nothing to put." },
      },
      actions = {
        { "Put a foot in", say "The cold goes up your leg and takes hold of your knee like a bailiff. You stand it for a count of four. In the water your foot looks a long way off and not altogether yours, and the sky round it is one you do not recognise." },
      } },

    { name = "a family of ducks",
      description = "A mallard and nine ducklings, in a line, crossing the reflected sky. The ducklings keep looking down. They are young enough not to have decided yet which is the real one.",
      actions = {
        { "Throw them a crust", say "You have a heel of bread. It lands with a plop. In the lake, a second crust falls upward to meet it out of the wrong sky, and the two touch, and nine ducklings arrive at the spot at once from both directions." },
      } },

    { name = "a fallen pine in the shallows",
      description = "It went in years ago and lies with its crown under water. Every branch has a perch stationed along it, finning, facing the shore, in order of size.",
      things = {
        { name = "the biggest perch", description = "At the trunk end, striped, as long as your forearm. The angler has a name for it. He will not tell you the name. He says it would be taking a liberty." },
      } },
    { name = "a sandpiper",
      description = "A small brown-and-white bird at the water's edge, bobbing. It runs, stops, bobs its whole back end, runs. It cannot stand still without doing it. It looks like somebody keeping time to music that only it has been given.",
      things = {
        { name = "its footprints", description = "A line of tiny arrows along the wet sand, all pointing backward to where it has been. A tracker would follow them the wrong way. This has probably saved a good many sandpipers." },
      } },
    { name = "a washed-up hurdle",
      description = "A panel of woven hazel, six feet by three, grey and waterlogged, lying half on the shingle. It did not come from the wood. It has come down the lake from the west, from the reed end, and it has a rope still tied to one corner.",
      things = {
        { name = "the rope", description = "Plaited rush, three strand, with an eye splice a sailor would be proud of. It was a mooring. Whatever was moored to a hurdle is somewhere back in the reeds, drifting, and has perhaps not noticed." },
        { name = "a tin bell on the hurdle", description = "No bigger than a thimble, wired to the top rail, green. You flick it. It still rings. It was meant to tell somebody that somebody was coming. It has told the lake, faithfully, every time a wave lifted it." },
      },
      actions = { { "Turn it over", say "Underneath, the hazel is tarred, in the fen way. And there is a line of small wet marks across the tar, in a row, drying as you look, as if something no bigger than a frog had been using it for a raft and stepped off when you came." } } },
  },

  exits = {
    { to = "forest_path" },
    { to = "reed_beds", description = "Along the shore to the left, where the shingle gives way to mud and the reeds stand higher than your head." },
    { to = "upward_falls", description = "Down the wet steps, with the water going the other way beside you." },
    { to = "goat_track", description = "Up behind the pines, where the ground stops being forest and starts being scenery." },
    { to = "lake_island", label = "The rowing boat",
      description = "Out across the wrong sky, to a hump of turf with one tree on it.",
      requires = item "oar", locked = "a boat without an oar is a very small jetty" },
  },
}

space {
  id = "lake_island",
  region = "mumblewood",
  name = "The Island of One Tree",
  description = "A hump of turf the size of a market stall, one willow, one heron, and water on every side showing the wrong sky. From here the shore looks a long way off, and not entirely convinced of itself.",
  palette = { bg = "#0a0f15", text = "#c4ccd6", dim = "#5f6c7c", accent = "#e0c46a", border = "#2c3f58" },
  ambience = {
    fog { color = "#1a2632", speed = 0.1 },
    dust { glyphs = "·˙", color = "#b89a3c", rate = 0.2, speed = 0.4 },
  },

  things = {
    { name = "the willow",
      wonder = true,
      icon = "ϒ",
      description = "It is high summer on the branch and {magic}autumn in the reflection{/}: every green leaf above hangs over a gold one below. Now and then a gold leaf lets go, down there, and falls upward to the surface, and is not there when it arrives.",
      things = {
        { name = "its roots",
          description = "They grip the island like a hand keeping something shut.",
          things = {
            { name = "a flat stone",
              key = "flat stone",
              description = "Set among the roots, too square to be an accident. It does not sit right. The angler said so.",
              variants = {
                { when = flag "stone_lifted",
                  name = "a square hole among the roots",
                  description = "Steps go down, dry, into green light. That should not be possible. Nobody has told the steps." },
              },
              actions = {
                { "Lift it", when = no(flag "stone_lifted"), set "stone_lifted", fx "shake",
                  say "It comes up like a lid. Under it: steps, going down into the lake, and not one drop on them." },
              } },
          } },
      },
      actions = {
        { "Shake a branch", say "A leaf falls. In the water, a leaf rises to meet it. They touch at the surface and there is, for a moment, one leaf too few in the world." },
      } },
    { name = "the heron",
      icon = "ʃ",
      description = "Grey, motionless, on one leg, staring at the water with the patience of a creditor. Its reflection is standing on the other leg.",
      actions = {
        { "Stand on one leg too", say "You last eleven seconds. The heron, without moving, conveys that it was counting." },
      } },
    { name = "the boat",
      description = "{i}Eventually{/}, nosed into the turf. It got you here in a spiral, which it seemed to consider the scenic route." },
    { name = "the willow's crown",
      description = "The branches hang to the turf all round, so that standing under the tree is like standing inside a green bell.",
      things = {
        { name = "a moorhen's nest", description = "Built on a branch that trails in the water: a raft of reed with five buff eggs. The moorhen sits on it and looks at you sideways. In the reflection the nest is empty and the eggs have hatched." },
        { name = "the catkins", description = "Yellow, soft, humming with bees that have flown half a mile over water for them. Each bee leaves by a different way than it came, to be on the safe side." },
        { name = "a carved name",
          description = "Cut into the trunk at the height of a seated man: {i}ALDER{/}. Not the tree. A person. Under it, one cut for each year, and the bark has grown round the oldest until they are only dimples.",
          things = {
            { name = "the newest cut", description = "Thirty years old, by the grey of it. About when the angler rowed out once, and took up fishing after." },
          } },
      } },
    { name = "the turf",
      description = "Short, springy, and starred with daisies. An island this size has no business having a lawn, and no one to keep it, and it is kept.",
      things = {
        { name = "a molehill", description = "Fresh earth, in the middle of the grass, on an island in a lake. You look at it for some time. The mole is not available for comment." },
        { name = "the daisies", description = "They are open, though the cloud is thick. They are facing a sun. You turn to see which one, and it is not the one overhead." },
        { name = "a ring of pale grass", description = "A circle a pace across where the grass is lighter. Something round stood here for a very long time. A tub, or a drum, or the foot of something tall." },
      } },
    { name = "the water round the island",
      description = "Clear to a depth you would rather not judge. The island does not shelve into it. It simply stops, like a table.",
      things = {
        { name = "the edge", description = "You kneel and look under. There is no under. The turf goes down a hand's breadth and then there is sky, with the roots of the willow hanging in it like a chandelier." },
        { name = "a drifted fishing float", description = "Red and white, bobbing against the turf. It has no line. The angler's line has never had a float. It belongs to somebody who fishes here from the other side." },
      },
      actions = {
        { "Trail your fingers in it", say "Cold, and then, an inch down, not cold. You take your hand out. The first inch of your fingers is wet. The rest is only cool, as if it had been held out of a window on a spring night." },
      } },
    { name = "a stone seat",
      description = "A slab on two stubs, facing the willow, furred with moss. Somebody liked to sit and look at a tree that was two seasons at once.",
      things = {
        { name = "under the seat", description = "A clay pipe, a tinderbox gone to rust, and eleven plum stones in a row. Whoever sat here was in no hurry, and brought fruit." },
      },
      actions = {
        { "Sit", say "You sit. A green leaf turns in the air above you and a gold one turns in the water, and for a moment you cannot have said which of them you were under." },
      } },
    { name = "the far shore",
      description = "The pines, the shingle, a small man on a stool. He has not looked up. He has seen what happens to people who row out here: they come back and take up something quiet.",
      actions = {
        { "Wave to the angler", say "He raises one hand, slowly, without turning his head. In the water, somebody on a stool raises the other." },
      } },

    { name = "a moorhen's nest",
      description = "A raft of reeds moored to a willow root, with seven buff eggs. The moorhen is on it, flat, pretending to be part of the island.",
      things = {
        { name = "the moorhen", icon = "v", description = "Black, with a red shield on her forehead and green legs that look borrowed. Her eye is on the heron. It has been on the heron for nineteen days." },
      } },

    { name = "a bottle on a string",
      description = "Tied to the lowest branch, hanging in the water to keep cool: a stone bottle, corked. The angler leaves it. There is a notch in the cork for each time he has rowed out, drunk a mouthful, and rowed back, having thought something over.",
      actions = {
        { "Count the notches", say "The cork is more notch than cork. Whatever he comes out here to think over, he has not finished. You lower it back into the lake, which takes it, in the reflection, upward." },
      } },

    { name = "the island's own sky",
      description = "Lie on the turf with your head over the edge and look down. The willow hangs into it. The heron stands on its own feet, twice. Between them is a sky with a different set of clouds, moving the other way, and for as long as you look you are on an island in the middle of the air.",
      actions = {
        { "Drop a leaf", say "A willow leaf, from your finger. It turns as it goes down and something small and green turns as it comes up, and when they meet on the surface there is only one leaf, and you cannot have said which." },
      } },
    { name = "a reed bunting",
      description = "On the tip of the willow's lowest branch: a sparrow in a black hood and a white collar, like a small clergyman. It sings three notes and stops, as though it had lost its place, and begins again. It has been losing its place at the same note since April.",
      actions = { { "Whistle the fourth note", say "You supply it. The bunting stops dead and looks at you. Then it sings the three notes again, and stops, more pointedly. It did not lose its place. That is the song. You have been correcting a hymn." } } },
    { name = "a snail on the stone seat",
      description = "Yellow, banded brown, the size of a hazelnut, half way across the seat with a silver line behind it. There is no way onto this island but by boat. The snail did not come by boat. It has the look of a creature that set out before the lake was here and has not been told.",
      things = {
        { name = "its trail", description = "It comes up over the edge of the seat from the turf, and before that from the water's edge, and before that it is under the water, on the stones, still shining." },
      } },
  },

  exits = {
    { to = "lake_shore", description = "Back across, in the other direction of circle." },
    { to = "under_lake", label = "The steps under the stone",
      description = "Down, among the roots, into green light and no water at all.",
      requires = flag "stone_lifted", hidden = true },
  },
}

space {
  id = "under_lake",
  region = "mumblewood",
  secret = true,
  name = "The Room Under the Lake",
  description = "A round stone room with the lake for a ceiling. The water lies overhead like glass, held up by nothing but the habit of it, and green light moves over everything. It is perfectly dry. Your boots have never been so loud.",
  palette = { bg = "#06120f", text = "#b8d2c6", dim = "#4f7266", accent = "#7fe0b8", border = "#1f4a3c" },
  ambience = {
    shimmer { color = "#5fc8a0", strength = 0.35 },
    dust { glyphs = "·˙", color = "#3f8a70", rate = 0.3, speed = 0.3 },
  },

  things = {
    { name = "the ceiling",
      wonder = true,
      icon = "≈",
      description = "The underside of Lake Perhaps. Fish pass over like slow birds. And beyond them, through the water, there is the sky: {magic}the other one{/}, the one from the reflection, with its early star. From down here it is not a reflection of anything. It is simply up.",
      things = {
        { name = "a pike", description = "Long, old, hanging overhead and looking down at you the way you look at things in ponds." },
        { name = "the keel of a boat", description = "A small dark leaf-shape on the ceiling. {i}Eventually{/}, from underneath." },
        { name = "the early star", description = "It does not twinkle. It is steady, and warm-coloured, and a good deal nearer than a star ought to be." },
      },
      actions = {
        { "Reach up and touch it", fx "wash",
          say "Cold, and wet, and it gives like the skin on milk. One drop runs down your wrist. The lake above you shivers from shore to shore, and the angler, you feel sure, has just said a word." },
      } },
    { name = "a stone chair",
      description = "One chair, tilted back to face straight up, carved for someone to lie in and watch. The arms are worn. Somebody came here often, for a long time, to look at the wrong sky.",
      things = {
        { name = "a fish hook", description = "On the floor beside the chair, bright as new. Somebody decided, here, not to use it." },
      },
      actions = {
        { "Sit in it", say "You lie back. Fish. Light. The star. You lose a while, and do not get it back, and do not mind." },
      } },
    { name = "the tally marks",
      description = "Scratched in the wall by the chair, in fives, thousands of them. Nights, perhaps. The last group stops at four." },
    { name = "the floor",
      description = "Round, of fitted stone, with a pattern set in it in pale and dark pebbles: fish, going round in a ring, nose to tail. There are forty. One is set in facing the other way.",
      things = {
        { name = "the contrary fish", description = "Darker than the rest, and worn smoother, as if every visitor had stopped to stand on it. You are standing on it. You did not decide to." },
        { name = "a single puddle", description = "The only wet in the room: a coin of water under the place where somebody once reached up. It has not dried. It ripples when the lake does." },
      } },
    { name = "a shelf of candle ends",
      description = "Cut into the wall: hundreds of stubs, burnt to the last finger, set in their own wax in rows. Whoever came here came at night, and often, and did not like to throw things away.",
      things = {
        { name = "the last candle", description = "Whole, never lit, standing at the end of the last row with its wick still white. He brought it down, and then did not need the light, or did not come back for it." },
        { name = "a tinderbox", description = "Brass, dry, and it still works. You know because you tried it, and the spark showed in the ceiling a moment before it showed in your hand." },
      } },
    { name = "a pair of slippers",
      description = "Felt, grey, side by side at the foot of the steps where somebody took off his boots so as not to be loud in here. They are worn through at the heel. Nobody takes that kind of care in a place unless he loves it.",
      actions = {
        { "Take your boots off too", say "You stand them on the bottom step and go about in your stockings. The room is better for it. You can hear the lake now: a very large, very slow sound, like something asleep and comfortable." },
      } },
    { name = "the wall of carved fish",
      description = "Round the whole room, at the height of the chair's arm, a frieze of every fish in the lake, life size, each with its name cut under it in a small square hand.",
      things = {
        { name = "the pike, carved", description = "{i}Old Gentleman. Here before me. Do not feed.{/} Overhead, something long turns to look." },
        { name = "a blank place", description = "A smoothed panel with a name and no fish: {i}the one I have not seen properly{/}. Under that, a row of attempts in charcoal, all rubbed out. He was a careful man, and would not carve a guess." },
      } },
    { name = "a brass tripod",
      description = "Three legs and a cradle, set beside the chair and aimed straight up. Whatever it held is gone. The Baroness in Aldmoor keeps a telescope pointed at her floor, and you wonder, now, who she had it from.",
      things = {
        { name = "the empty cradle", description = "Lined with green felt, with the shape of a tube pressed into it. The felt is clean where the tube lay and dusty elsewhere." },
      } },
    { name = "a green snail",
      description = "On the wall beside the steps, the size of a plum, with a shell that is clear as glass. You can see it thinking. It lives down here on the light alone, and leaves no trail at all.",
      actions = {
        { "Watch it", say "It goes half the width of your hand while you watch. In that time a fish crosses the ceiling from one side to the other. You could not say which of them had the better use of the afternoon." },
      } },

    { name = "a fish looking in",
      description = "A trout, overhead, nose to the underside of the water, quite still. It is looking down at you as you would look into a pond. After a while it is joined by another. You have become a thing that is shown to visitors.",
      actions = {
        { "Wave up at them", say "The trout scatter in a flash of silver, and the ceiling rings and wobbles like a struck tray. A single drop comes loose and falls on your nose. Then the lake remembers its manners and holds." },
      } },

    { name = "a row of pegs with nothing on",
      description = "Seven, of bronze, by the stair. Over each a name was cut and has been rubbed away with a thumb, patiently, until only the first letter of each is left. They are all the same letter.",
      things = {
        { name = "the seventh peg", description = "Lower than the others, at the height a child could reach. It is the only one that is not green. Something has hung on it lately, or has been hung on it always." },
      } },

    { name = "the sound",
      description = "The lake is heavy and it moves. Down here that comes through as a long slow creak, the sound of a great door thinking about opening, with a minute between one creak and the next." },
    { name = "a puddle on the floor",
      description = "In all this dry room, under all that water, one small puddle, the size of a plate, by the foot of the stone chair. It is not a leak. Nothing drips. It is shaped like a foot.",
      things = {
        { name = "the other one", description = "A stride away, fainter, drying. And a third, by the steps, hardly a mark. Somebody came down here not long before you with wet feet, sat in the chair, and left. They were barefoot. The angler wears boots. The slippers on the floor are dry." },
      },
      actions = { { "Put your foot beside it", say "The print is smaller than your boot, and broader, and the toes are spread. You keep your foot there for a moment, as you might stand beside a stranger at a wall to see which of you is taller. Then you step away and let it dry in peace." } } },
    { name = "a stone bowl of pebbles",
      description = "On the floor by the wall of carved fish: a shallow bowl, and in it a few dozen pebbles, every one white, round and the size of a pigeon's egg. They have been chosen. You could search the lake shore all day and find three.",
      things = {
        { name = "a pebble", description = "Smooth, cool, heavier than it looks. You have the impression that it was put here as a coin is put in a plate, for something received." },
        { name = "a gap in the ring", description = "They are laid in a spiral, from the middle out. The spiral ends at the rim with room for one more. You have no white pebble. You look at the gap for a while, as at a question you have not been asked yet." },
      } },
  },

  exits = {
    { to = "lake_island", label = "The steps up", description = "Up, into ordinary daylight and a heron's disapproval." },
  },
}
