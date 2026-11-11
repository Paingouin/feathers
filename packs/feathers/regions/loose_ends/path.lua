-- The way up from the top of Old Grumble, and the first island with its mooring mast.

space {
  id = "le_further_path",
  region = "loose_ends",
  wonder = true,
  name = "The Path That Kept Going",
  description = "The mountain stopped. The path did not. It goes on up from the summit as a row of flat stones with nothing under them, each a long stride from the last, climbing into the blue. Whoever laid it was not told where the top was, and had stones left over.",
  palette = { bg = "#0a0f1a", text = "#d8e0ee", dim = "#687894", accent = "#e8ecf8", border = "#3c4c70" },
  ambience = {
    stars { color = "#c8d4ee", rate = 0.2 },
    dust { glyphs = "˙·", color = "#90a0c0", rate = 0.2, speed = 0.3 },
  },

  things = {
    { name = "the stones",
      icon = "▬",
      description = "Grey slabs, the same split rock as the summit, each the size of a hearthstone. They hang in the air at the height they were put. They do not sway. A stone that sways is paying attention to the wind, and these have never noticed it.",
      things = {
        { name = "the first stone", description = "One stride out from the edge of the summit. It has a boot print worn into it, a left one, deep. Everybody who has ever come this way stood here on one leg for a long while and thought." },
        { name = "the seventh stone", description = "Cracked across. Somebody has mended it with an iron staple and a great deal of confidence." },
        { name = "the underside of a stone", description = "You lie down and look under the one you are on. Moss. A snail. Below the snail, about a mile of nothing, and then a monastery roof. The snail is not troubled, and you take what comfort you can from that." },
        { name = "a missing stone", description = "Between the twelfth and the fourteenth there is a gap where the thirteenth should hang. A plank has been laid across. On the plank, in tar: {i}BORROWED. WILL RETURN. J. SPAR.{/} The tar is very old." },
      },
      actions = {
        { "Jump on one", say "You jump. It is like jumping on a cathedral floor. The stone has no more give in it than the mountain did, and rather less to say." },
        { "Count them", say "Sixty-one to the first island. You count again going back a little and get sixty. You decide not to find out which." },
      } },
    { name = "the drop",
      description = "It is on both sides and underneath. It is the main feature. The path is one stone wide and the country is everywhere else.",
      actions = {
        { "Do not look down", say "You do not look down. You look at the next stone, and the next. This works for eleven stones. On the twelfth you look down, and you sit, and you get to know the twelfth stone extremely well." },
      } },
    { name = "a handrail",
      description = "A single rope at hip height, on the left side only, running from iron stakes driven into the edges of the stones. It stops after twenty stones. Nobody ran out of rope. There is a notice.",
      things = {
        { name = "the notice", description = "A board wired to the last stake. {i}You will have noticed you do not need it. Parish of Tether.{/}" },
        { name = "a glove on a stake", description = "A child's, red wool, put where its owner would see it on the way back. It has been here long enough to fade on the south side." },
      } },
    { name = "the summit, below",
      description = "A grey tablecloth with a cairn on it, already smaller than your hand. From here you can see the top of the cairn. There is a button on it.",
      things = {
        { name = "the rope down the chimney", description = "A thread. You can just make out your knot. From above it looks even less like a knot than it did." },
        { name = "the other four mountains", description = "From this height they are plainly leaning in toward Old Grumble, heads together. You are above the conversation. It does not stop on your account." },
      } },
    { name = "a milestone",
      icon = "▪",
      description = "A proper one, squared and lettered, standing on the thirtieth slab where there is barely room for it. {i}TETHER ½. GROUND 3, by the short way.{/}",
      things = {
        { name = "a second line, scratched", description = "Under the carving, with a nail: {i}the short way is not recommended.{/}" },
      } },
    { name = "a goat",
      icon = "g",
      description = "Standing on the forty-fourth stone, chewing. It is white, with one black ear and a tin bell missing from its collar. It came up the path because the path was there, and it looks at you as it would at anybody slow.",
      actions = {
        { "Squeeze past", say "There is no past. You wait. The goat finishes what it is chewing, considers the view, and then walks down the path toward the summit, straight through the place you were standing. You are now on its stone. Neither of you knows how." },
      } },
    { name = "the wind",
      description = "It comes back a hundred feet above the summit, all at once, as if it had been waiting outside a door. It is warm. It smells of washing." },
    { name = "a cloud, crossing",
      description = "A small one, at the height of your knees, going from left to right across the path at a walking pace. It parts round the stones and joins up again behind them.",
      actions = {
        { "Stand in it", say "Grey, wet, and quiet. For the space of ten breaths there is no drop, no path, and no mountain, only you and a stone. You find you prefer the view. This surprises you both." },
      } },
    { name = "a brass plate",
      description = "Screwed to the fiftieth stone. {i}HERE THE ROYAL SURVEY TURNED BACK, having established that the kingdom continues. Height: see correspondence.{/}" },
    { name = "the last stone",
      description = "It is wider than the others and has a boot scraper set in it, and a bell on a post. The bell has a cord. Beyond it, the edge of a field, with a hedge.",
      actions = {
        { "Ring the bell", say "One flat clank. Somewhere ahead a woman's voice calls, without interest, \"It's open.\"" },
        { "Scrape your boots", say "You scrape off a quantity of the Grumbles. It falls. In an hour or so it will be the Grumbles again." },
      } },
    { name = "the sky above",
      description = "A darker blue than at the summit, with three stars in it by daylight. There are shapes up there that you took for clouds. They have hedges." },
    { name = "the quiet between stones",
      description = "On a stone you can hear your boots. In the stride between, with nothing under you, you can hear nothing at all. It is a very short quiet and you get sixty of them." },
  },

  exits = {
    { to = "summit", label = "Back down the stones", description = "Sixty, or sixty-one, to the top of a mountain, which from here counts as the ground." },
    { to = "le_mooring", label = "The field with the hedge", description = "The last stride, over a boot scraper, onto grass that has no business being up here." },
  },
}

space {
  id = "le_mooring",
  region = "loose_ends",
  name = "Landfall",
  description = "The first island: three acres of meadow with a hedge round the edge to stop people walking off. At the windward end a mast of pine trunks stands taller than a church, with a ladder up it and a ring at the top. There is a customs shed. There would be.",
  ambience = {
    fog { color = "#182434", speed = 0.3, strength = 0.3 },
    dust { glyphs = "˙·∙", color = "#a8b8d0", rate = 0.3, speed = 0.5 },
  },

  things = {
    { name = "the mooring mast",
      icon = "┼",
      description = "Three pines scarfed end to end and stayed with cables, with an iron ring at the head as wide as a cartwheel. It was put up for things that come by air and need holding. The grass at its foot is worn in a circle by something heavy that swings.",
      things = {
        { name = "the ring", description = "Bright on the inside. Something is made fast here often enough to keep the rust off." },
        { name = "the ladder", description = "Two hundred rungs. Every twentieth is painted white, so that you can tell how much of a mistake you have made so far.",
          actions = {
            { "Climb to the first white rung", say "Twenty rungs. The island is a green plate under you and the hedge looks like a line somebody drew. The mast leans to the wind, and you lean with it, and you discover a strong wish to be a person who is at the bottom of a ladder." },
          } },
        { name = "a coil of hawser", description = "Thick as your arm, tarred, with an eye spliced in one end. There is a tag: {i}Property of the Weather Permitting. Do not tidy.{/}" },
        { name = "a timetable", description = "Painted on a board at the foot. {i}ARRIVES: when seen. DEPARTS: weather permitting.{/} Under it, in chalk, the last three arrivals. The dates are a long way apart and one has a question mark." },
        { name = "a wind sock", description = "Striped, on a pole beside the mast. It points firmly east. A second one, next to it, points west with equal firmness. The mast master says they are both right and it is the wind that needs to decide." },
      } },
    { name = "the mast master",
      icon = "☺",
      description = "Mrs Halyard, a broad woman in a tarred coat, sitting on a bollard and splicing rope without looking at it. She has made fast everything that ever came to this island by air, and one thing that came by mistake.",
      things = {
        { name = "her hands", description = "Like the roots of something. She can tie a bowline in a wet hawser, one-handed, behind her back, while telling you that you are standing in the wrong place." },
        { name = "her whistle", description = "Bone, on a cord. One blast means {i}stand clear{/}. Two means {i}I said stand clear{/}. There is no three." },
      },
      actions = {
        { "Ask what moors here", say "\"Airship. The Weather Permitting. Comes when it comes.\" She pulls a strand through. \"And balloons, in the season. And a bed once, with a gentleman in it, very put out. We made him fast till he woke.\"" },
        { "Ask how the islands stay up", say "She stops splicing. She looks at the island, and at the sky, and at you. \"Nobody's told them otherwise,\" she says, \"and I'll thank you not to start.\"" },
        { "Offer to help", say "She hands you an end. You hold it. A minute later she takes it back, and whatever you were doing to it she undoes. \"Kind of you,\" she says, and you see that she means it." },
      } },
    { name = "the customs shed",
      description = "Tarred boards, one window, one desk. The Crown's writ runs wherever the Crown's officers can be made to climb.",
      things = {
        { name = "Officer Pennon",
          icon = "♜",
          description = "A thin young man in a uniform that was issued at sea level and has not been warm since. He was posted here eight years ago, for a fortnight. The relief has not come. He believes it set out.",
          actions = {
            { "Declare yourself", say "\"Anything to declare?\" You think. \"I climbed a mountain.\" He writes it down. \"Value?\" You tell him it was considerable. He writes {i}nil{/}, and stamps it, and for some reason you feel better for having it official." },
            { "Ask about the duty", say "\"On goods landed: a tenth. On goods dropped: the Crown takes no view, being unable to find them.\" He lowers his voice. \"There's a lot gets dropped. Just short of the hedge. I hear it go.\"" },
          } },
        { name = "the scales", description = "A beam balance for weighing cargo. One pan is weighted with a stone marked {i}1 MAN{/}. Passengers are compared to it. Nobody has ever balanced, and the stone has a smug look." },
        { name = "the ledger of arrivals", description = "Ruled columns: {i}Vessel. Master. From. Purpose.{/} Under {i}Purpose{/} the same hand has written {i}weather permitting{/} for eight years. Your own line reads {i}On foot. Self. Below. Adventure (stated).{/}" },
        { name = "a stove", description = "The size of a hatbox, burning hedge clippings. He sits with both feet on it. His boots are scorched and his knees are cold and he has stopped expecting the two to meet." },
        { name = "a letter, unsent", description = "On the desk under a pebble. {i}Dear Mother. It is not so bad. There is a view.{/} It stops there. There are eight years of dust on it and the pebble has been dusted round." },
      } },
    { name = "the hedge",
      description = "Hawthorn, shoulder high, right round the island with one gate. It was planted after an incident with a ram. On the far side of it there is about one foot of turf and then the rest of the world.",
      things = {
        { name = "a gap in the hedge", description = "Mended with a hurdle. Tied to the hurdle is a ribbon and a bunch of dried flowers, and a card: {i}Hector. A good ram. He would not be told.{/}" },
        { name = "a nest of something", description = "Low in the thorn, a ball of dry grass with a hole in the side. A sky mouse looks out. It has very large ears and it glides, they say, from island to island on them. It does not look like something that plans ahead." },
        { name = "the outside of the hedge", description = "You lean through. Roots, hanging in air, and a ledge of turf with daisies on it, and the last daisy leaning out over three miles of weather as if it meant to go further." },
      },
      actions = {
        { "Look over", say "Cloud, mostly, from on top, like a ploughed field after snow. Through a hole in it, a patch of the real ground, brown and green, with a road on it thin as a hair. Someone is walking on that road. They have no idea." },
      } },
    { name = "the meadow",
      description = "Good grass, cropped short, full of small yellow flowers that grow nowhere lower. The whole field tilts a little toward the mast when something heavy is tied up, they say, and tilts back with a sigh.",
      things = {
        { name = "the flowers", description = "Skywort. Five petals, the yellow of a new coin. They turn to follow the sun, and at noon, the sun being a little below some of them, they look down." },
        { name = "a molehill", description = "Fresh. You think about that. Somewhere in three acres of floating meadow there is a mole, working, with firm views about which way is down, and one day it is going to be very surprised." },
        { name = "a worn circle", description = "Under the mast, a ring of bare earth where the mooring swings. In the middle of it lies one brass rivet. You leave it. Somebody up there may be counting." },
      } },
    { name = "the edge stone",
      description = "A boundary stone at the island's lip, lettered on the landward side {i}PARISH OF TETHER{/}. On the side facing out, where only a person leaning over could read it, it says {i}MIND{/}." },
    { name = "the rope bridge",
      description = "Planks on two cables, with a rope either side for your hands, running out from the gate and down, and then up, to a bigger island with roofs on it. It is hung with washing for the first third.",
      things = {
        { name = "the washing", description = "Shirts, a sheet, four stockings. The bridge is a line like any other and space is short. You are expected to duck." },
        { name = "a missing plank", description = "Halfway. You can see a cloud through it. Chalked on the plank before: {i}STEP LONG{/}. Chalked on the plank after: {i}WELL DONE{/}." },
        { name = "the cables", description = "Tarred hemp as thick as your leg, made fast round a boulder at each end. They creak in two notes. The islands are not quite still relative to one another, and the bridge is where they discuss it." },
      },
      actions = {
        { "Bounce on it", say "You bounce, once. The bridge takes it up and passes it along, and a long way off, on the other island, a line of washing nods. A voice comes back down the cables, faint and distinct. \"Whoever that is, don't.\"" },
      } },
    { name = "a signal cannon",
      description = "A brass gun the length of your arm, on a swivel, pointing up. It is fired when a ship is sighted, to tell the village to take the washing off the mast side.",
      things = {
        { name = "the shot", description = "There is none. It fires a wad of wet wool, which is found later, in someone's garden, and brought back." },
      },
      actions = {
        { "Look down the barrel", say "Dark, and a smell of singed sheep. Something has built a nest in there, on the understanding that ships are rare." },
      } },
    { name = "a row of bollards",
      description = "Six oak stumps along the leeward side, each with a rope worn groove. Five have a number. The sixth has a cushion on it, and is hers." },
    { name = "the weather, from on top",
      wonder = true,
      key = "le_cloud_top",
      description = "You have looked up at clouds all your life. Here you are above one, and it is not what it gave out. {magic}The top of a cloud is a country: white hills, blue valleys between, a gorge with the sun going down it, all of it moving at the pace of a hand on a clock.{/} A flat grey day in Aldmoor is the cellar of this. Nobody down there has ever been told what they are under, and you can think of no way to tell them that they would believe.",
      actions = {
        { "Watch one hill", say "You pick a hill of cloud and watch it. Over the space of a hundred breaths it leans, and grows a tower, and the tower topples slowly into the valley and fills it. No one has seen that hill but you. It was there for a quarter of an hour and you are the whole of its history." },
      } },
    { name = "a notice board",
      description = "By the gate, under a little roof.",
      things = {
        { name = "a parish notice", description = "{i}The Annual Tug of War, Tether v. Upper Tether, is cancelled again, the islands having moved further apart. The rope is to be returned to Mrs Pegg.{/}" },
        { name = "a bill of lost goods", description = "{i}LOST over the south hedge: one hat, good; one kite; one husband's temper. Finder apply the Slow Spill.{/}" },
        { name = "an official warning", description = "{i}Persons arriving from Below are reminded that things fall up here just as they do there. It only takes longer to matter.{/}" },
      } },
    { name = "the gate",
      description = "A five-barred field gate, opening onto the bridge. It has a spring to shut it and a second spring in case. On the top bar, generations of hands have worn a place.",
      actions = {
        { "Swing on it", say "It bears you out over the edge in a slow arc, creaking, and for a moment you are hanging on a gate above the clouds with your feet on the bottom bar. Then the springs fetch you home. From the bollard, Mrs Halyard holds up one finger. That was your go." },
      } },
  },

  exits = {
    { to = "le_further_path", label = "The stones down", description = "Past the bell and the boot scraper, and out onto the path with nothing under it." },
    { to = "le_tether", label = "The rope bridge", description = "Planks, cables, and somebody's shirts. You are expected to duck." },
  },
}
