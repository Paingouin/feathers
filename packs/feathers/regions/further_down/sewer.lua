-- Past the last grating: the sewers nobody inspects, and the river they give up into.

space {
  id = "fd_last_grating",
  region = "further_down",
  name = "Past the Last Grating",
  description = "Beyond the bars the Corporation's brick gives out and the old blocks carry on alone, down a long slope, with the grey water going faster for being unobserved. The Inspector's chalk marks stop at the grating. From here on nothing has been ticked.",
  palette = { bg = "#090d0f", text = "#b5c0c2", dim = "#536468", accent = "#6fb0b8", border = "#27444a" },
  ambience = {
    drip { glyphs = "⠁⠂⠄⡀", color = "#4f8f9a", rate = 0.6 },
    fog { color = "#14282c", speed = 0.5, strength = 0.5 },
  },

  things = {
    { name = "the grating, from behind",
      description = "Iron bars as thick as your wrist, and a latch on this side only. Whoever fitted it was not keeping the town out of the dark. They were giving the dark a door it could shut.",
      things = {
        { name = "the latch",
          description = "Oiled. There is a little tin of grease on the ledge beside it, with a paw print in the grease." },
        { name = "a card on a string",
          description = "{i}PLEASE CLOSE AFTER YOU. THE DRAUGHT GETS INTO THE MUSHROOMS.{/} The letters are a quarter of an inch high and perfectly formed." },
      } },
    { name = "the last chalk mark",
      description = "A tick, a date, and the Inspector's initials, on the final Corporation brick. Next to it, in the same chalk but smaller: {i}further inspection not thought advisable.{/} And under that: {i}by me.{/}" },
    { name = "the old blocks",
      description = "Dark stone, laid dry, every one with the square and the dot. Down here they have never been pointed, patched or apologised for, and they do not leak.",
      things = {
        { name = "a block laid upside down",
          description = "One mark in ten thousand has its dot above the square instead of inside it. You look at it for some time. Either the mason made one mistake in his life, or it is the only one he meant." },
        { name = "a seam of white",
          description = "Lime, weeping out of nothing. It has made a small frozen waterfall down the wall, with a pool at the foot the size of a saucer and a newt in it, like a brooch." },
      } },
    { name = "the channel",
      description = "The grey water has been joined by other waters and is no longer grey. It is clear, quick and cold, and has stopped smelling of Aldmoor.",
      things = {
        { name = "a paper boat",
          description = "Folded from a page of council minutes, going past at a good speed, with a beetle aboard. The beetle has the look of a passenger who has paid.",
          actions = {
            { "Read the sail", say "{i}...resolved, that the matter of what lies under the sewers be deferred until...{/} It rounds the bend. The beetle does not look back." },
          } },
        { name = "a row of stepping stones",
          description = "Roof slates again, like the ones upstream, but these are trimmed square and each has a number scratched on it, so that they can be put back in order after a flood." },
      },
      actions = {
        { "Wash your hands", say "The water is cold enough to ache. Your hands come out cleaner than they have been since Greenhollow, and you notice, with interest, that there is a scar on one knuckle you had quite forgotten." },
      } },
    { name = "a side sewer, bricked",
      description = "An arch closed with Corporation brick, badly, in a hurry. A brass plate: {i}NOT A SEWER. SEE MINUTES.{/}",
      things = {
        { name = "a missing brick",
          description = "At knee height one brick has been pushed out from the inside and set tidily on the floor. Through the gap: a slope of dry stone going down, and a breath of cool air that smells of nothing at all.",
          actions = {
            { "Put your eye to it", say "Dark. Then, far off, a row of lights the size of pinheads, moving in a line, each a little behind the last. A procession, or a street. One of them stops. You have the clear impression of having been nodded to." },
          } },
      } },
    rat { name = "a rat with a bundle",
          description = "It has a spotted handkerchief on a stick and is walking downhill on its hind legs with the air of someone who has left a note. It gives you a wide berth and a civil nod.",
          actions = {
            { "Ask where it is going", say "It points down the tunnel with its stick. Then it rubs its stomach, mimes a mushroom the size of a table, and goes on. You have had worse directions from guards." },
          } },
    { name = "a lamp bracket",
      description = "Iron, set at the height of your shin. There is another a few yards on, and another, all the way down the slope, all at shin height. Somebody lit this tunnel once, for somebody short.",
      things = {
        { name = "a stub of candle",
          description = "No thicker than a straw, in a holder made from an acorn cup. The wick is still soft." },
      } },
    { name = "a notice from below",
      description = "A slate propped against the wall at ankle height, in the small perfect hand: {b}PARDON.{/} And under it: {i}Visitors from Above are asked to tread on the left. We are mostly on the right. Thank you for being large carefully.{/}",
      actions = {
        { "Move to the left", say "You move to the left. Something that had been holding its breath on the right lets it out and patters away. \"Much obliged,\" says a voice, a long way down, at about the level of your boot." },
      } },
    { name = "the roof",
      description = "The vault climbs as the floor falls, until the lantern cannot find the top. Roots come down out of the dark as thick as ropes. You are under something large. By your reckoning, the Temple Quarter.",
      things = {
        { name = "the roots",
          description = "Not tree roots. They are pale stone, grown the way roots grow, feeling for water. Where one touches the channel, it has drunk a groove." },
        { name = "a bell, very faint",
          description = "Coming down through a hundred feet of ground: the temple bells of Aldmoor, arguing about the hour. From below, they agree." },
      } },
    { name = "the draught",
      description = "It comes up the tunnel steadily from below, cool and clean, and smells of wet stone and something like bread. Air does not do that out of a drain. There is a great deal of room down there.",
      actions = {
        { "Wet a finger", say "Up from below, without a doubt. You hold the finger up a moment longer than necessary. It is what adventurers do." },
      } },
    { name = "a lost boot",
      description = "A third boot. The Drain had two and they were a pair. This one is a child's, with a brass buckle, standing upright in the middle of the path as if someone has just stepped out of it.",
      things = {
        { name = "inside the boot",
          description = "A label, sewn in: {i}If found, this boot is on its way to the Market. Do not help. It knows the road.{/}" },
      } },
    { name = "the sound ahead",
      description = "Water, but slow, and wide. The channel beside you is running to meet something much bigger than itself and has begun, a little, to mind its manners." },
  },

  exits = {
    { to = "great_drain", label = "The grating", description = "Back through the bars, up to the brick and the rats and the faint smell of market." },
    { to = "fd_slow_river", description = "Down the slope, on the left, to where the water goes quiet." },
  },
}

space {
  id = "fd_slow_river",
  region = "further_down",
  name = "The Slow River",
  description = "The tunnel opens on to a river: black, level, forty yards across, going from the dark on the left to the dark on the right in no hurry whatever. There is a jetty of old stone, a lamp on a pole, and a flat boat with a man in it who watches you arrive and is already disappointed.",
  palette = { bg = "#06090e", text = "#b6c2d0", dim = "#4c5a70", accent = "#7fd0c0", border = "#22384a" },
  ambience = {
    fireflies { glyphs = "·∙", colors = { "#7fe0c0", "#5fb0a0" }, rate = 0.25, speed = 0.1 },
    fog { color = "#101c2a", speed = 0.3, strength = 0.5 },
  },

  things = {
    { name = "the ferryman",
      icon = "☺",
      description = "Mr Tench, in an oilskin and a clerk's eyeshade. He was Complaints at the Corporation for thirty years, until a complaint came in about the river under the town and he went down to look into it. That was some time ago. He takes no coin: there is nothing down here to spend it on. The fare is one complaint, sincerely meant.",
      variants = {
        { when = flag "fd_fare_paid",
          description = "Mr Tench, in an oilskin and a clerk's eyeshade. Your complaint is in the box, numbered and cross-referenced. He has the look of a man who has been given a decent meal. The boat is yours for as long as the grievance holds, and he has assessed it at several years." },
      },
      things = {
        { name = "his eyeshade", description = "Green celluloid. In the lamp it puts a green bar across his face, exactly where a sympathetic expression would be." },
        { name = "his pole", description = "Twelve feet of ash, shod with brass. Marks down its length show the river's depth on every day for thirty years. They are all at the same notch. He records it anyway." },
        { name = "his pencil", description = "Behind his ear, sharpened at both ends. One end for the complaint, he says, and one for the reply. The reply end has never been used." },
      },
      actions = {
        { "Offer your copper", say "He looks at the coin as a cook looks at a stone in the lentils. \"Copper. Up there I took in four hundred a year of those, in fines for frivolous complaints. They never once made anybody less frivolous.\" He gives it back. \"I want something you {i}mean{/}.\"" },
        { "Complain about the weather", when = no(flag "fd_fare_paid"),
          say "\"There isn't any,\" he says. \"Frivolous.\" He does not write it down. The river goes by. You feel that you have let the side down." },
        { "Make a sincere complaint", when = no(flag "fd_fare_paid"), set "fd_fare_paid", fx("wash", "#7fd0c0"),
          say "You think. Then you say it: that you set out to be an adventurer, and everywhere you have been, the dragon has left, the dungeon is shut, the treasure is one coin, and everyone has been perfectly nice about it. That nobody has yet tried to stop you doing anything. That it is very hard to be brave at people who keep offering you soup.\n\nMr Tench has written all of it down. He reads it back, without expression, and stamps it. \"Now that,\" he says, \"is a complaint.\" He unties the boat." },
        { "Ask what happens to the complaints", when = flag "fd_fare_paid",
          say "\"They are filed.\" Where? He nods downstream. \"With the proper authority.\" And who is that? He considers the river for a time. \"I have never had one sent back,\" he says, \"so I take it they are satisfied.\"" },
      } },
    { name = "the boat",
      description = "A flat punt, tarred black, with a seat for one passenger and a deed box bolted amidships. On the bow, in white: {i}CORPORATION OF ALDMOOR, COMPLAINTS (RIVER).{/}",
      things = {
        { name = "the deed box",
          description = "Iron, with a slot in the lid. It is the fare box. It is very nearly full.",
          things = {
            { name = "the top complaint",
              description = "You can read it through the slot. {i}That my husband snores. That he has been dead nine years and I can still hear it. That I do not want it to stop.{/} Stamped: {i}SINCERE. CARRIED.{/}" },
            { name = "one from a very small hand",
              description = "A grey card the size of a stamp. {i}That the Large Folk above have put a fountain where our skylight was. That we do not like to mention it.{/} Stamped, and under the stamp, in pencil: {i}referred upward{/}." },
          } },
        { name = "the passenger seat",
          description = "A plank with a cushion. The cushion is embroidered: {i}THE MANAGEMENT REGRETS.{/} It does not say what." },
        { name = "a bailing tin",
          description = "It once held peaches. The boat has never leaked. He bails anyway, on Fridays, for the look of the thing." },
      } },
    { name = "the jetty",
      description = "Six great blocks, square and dot, running out into the water, with iron rings let into them. The rings are far too big for this boat. Something came alongside here once that needed mooring in earnest.",
      things = {
        { name = "an iron ring",
          description = "As wide as a cartwheel, rusted to the colour of plums. A piece of rope is still knotted through it: three turns, as thick as your leg, cut off clean with one blow." },
        { name = "a tide gauge",
          description = "A painted board with numbers. The water stands at {i}4{/}. A river under a town has no business with a tide gauge, and this one has a chalk note on it: {i}Signed out. Signed in. Who by?{/} The question mark has been gone over many times." },
      } },
    { name = "the lamp on the pole",
      description = "A ship's lantern, green glass. It lights the jetty, the boat and about three yards of river. The river goes on a great deal further than that and does not seem to feel the lack.",
      actions = {
        { "Trim the wick", say "The light steadies. Mr Tench nods, once. It is the warmest thing he has done." },
      } },
    { name = "the river",
      description = "It does not ripple, even at the jetty piles. It slides. A leaf goes by on it, taking its time, and you watch it out of the lamplight with a kind of envy.",
      things = {
        { name = "the far bank",
          description = "A paleness, forty yards off, with tall shapes on it that are not trees and not columns. They have round heads. One of them, quite slowly, drops something that glows." },
        { name = "downstream",
          description = "The roof lifts and the banks draw apart and the sound of the river stops altogether. Rivers do that when they arrive." },
        { name = "upstream",
          description = "Dark, and a cold that comes down with the water. Mr Tench has never been. \"It comes from the right direction,\" he says, \"and that is all I ask of it.\"" },
        { name = "a white fish",
          description = "It hangs in the lamplight under the jetty, the length of your arm, with no eyes and a long patient face. It is waiting for him to drop his sandwich. It has been waiting for thirty years. He never has." },
      },
      actions = {
        { "Drop a pebble in", say "It goes in without a splash. The rings spread out a yard and stop, as if they had thought better of it." },
      } },
    { name = "the ceiling",
      key = "fd_glow_ceiling",
      wonder = true,
      description = "You look up because the water has stars in it. The roof of the cavern is alive: glow-worms, tens of thousands, each a point of green-blue light, hung in threads and drifts and long bright roads from one side of the river to the other. {magic}They have made a night sky down here, for a country that never had one.{/} It has its own constellations. None of them is yours.",
      things = {
        { name = "the constellations",
          description = "Mr Tench has names for them. The Inkwell. The Late Reply. The Three Clerks. And one worm, off by itself in a great deal of dark, that he calls the Applicant. \"It is getting nearer the others,\" he says. \"About an inch a year. I have every confidence.\"" },
        { name = "the threads",
          description = "Each worm lets down a line of beads, and each bead holds a point of the light. When the draught comes up from the lake the whole sky sways together, very slightly, like a curtain when a door opens in another room." },
      },
      actions = {
        { "Lie back and look", fx("sparkle", "#7fe0c0"),
          say "You lie down on the jetty with your pack under your head. The sky is twenty feet away and you could not count it in a year. Somewhere above it there is a town, and a market, and people who have never looked down. Mr Tench waits. He does not charge for this. It is, he says, not a complaint." },
      } },
    { name = "the timetable",
      description = "A board on the lamp pole. {b}FERRY.{/} {i}Departs: on receipt of complaint. Arrives: in due course. Returns: yes.{/}",
      things = {
        { name = "the small print",
          description = "{i}The Corporation accepts no liability for what lies under it.{/} This is the Corporation's whole position on the Further Down, and it has been enough for three hundred years." },
      } },
    { name = "a queue rail",
      description = "Brass posts and a rope, laid out on the jetty to hold a queue of fifty. It is polished. You are the queue.",
      things = {
        { name = "a second rail, lower",
          description = "Beside the first, at shin height, with a red thread instead of a rope. That one is worn, and there is a mounting step up to the boat no taller than a book." },
      } },
    { name = "a crate of sandwiches",
      description = "Thirty years of them, by the look, delivered weekly down the drain in waxed paper by an arrangement with a pie shop that has since changed hands twice. Nobody has told the pie shop. Nobody is going to.",
      actions = {
        { "Ask for one", say "\"Cheese,\" he says, and gives you half. It is very good cheese. He watches you eat it, in the manner of one taking a deposition, and when you say so, he writes that down too." },
      } },
    { name = "a lifebelt",
      description = "Cork, painted red and white, on a hook. {i}ALDMOOR.{/} It has never been thrown. He practises on Fridays, after the bailing, at a post. He has never hit the post." },
  },

  exits = {
    { to = "fd_last_grating", description = "Back up the slope to the bars." },
    { to = "fd_pale_wood", label = "Across, to the far bank",
      description = "Forty yards of black water, to the pale shapes with the round heads.",
      requires = flag "fd_fare_paid", locked = "Mr Tench has not been paid, and copper is no good to him" },
    { to = "fd_lake", label = "Downstream, to where the river stops",
      description = "With the current, such as it is, to where the banks give up.",
      requires = flag "fd_fare_paid", locked = "Mr Tench has not been paid, and copper is no good to him" },
  },
}
