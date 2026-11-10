space {
  id = "mine_gallery",
  region = "grumbles",
  name = "Number Three Gallery",
  description = "A side tunnel off the main level, four hundred paces long and straight as a ruled line. This is where the work was done. Every ten paces there is a stall cut in the wall with a rune over it, a shelf and a peg, and at the far end the rock face, with the last wedge still in it.",
  palette = { bg = "#0e0c0a", text = "#cfc8bc", dim = "#6e665a", accent = "#d8b070", border = "#40362a" },
  ambience = {
    flicker { color = "#d8b070", strength = 0.1 },
    drip { glyphs = "⠁⠂⠄", color = "#6a6458", rate = 0.15 },
  },

  things = {
    { name = "the working face",
      description = "The end of the gallery: a wall of grey rock with a bright line running through it at a slant. The tools are laid down along the foot of it in a row, handles all pointing the same way.",
      things = {
        { name = "the silver vein",
          key = "silver vein",
          wonder = true,
          description = "As wide as your hand, white as a tooth, running up through the rock and out of sight. The dwarves took everything on this side of a chalk line and stopped. {magic}The last yard of every seam in the Longshift is still in the mountain.{/} A rune is cut beside the line. It is the one for {i}yours{/}, and it is not addressed to you.",
          actions = {
            { "Touch it", say "Cold, and slightly greasy, as pure silver is. Your fingerprint stays on it, dull against the shine. You rub it off with your cuff. It seemed the least you could do in someone else's larder." },
          } },
        { name = "the last wedge", description = "Iron, driven halfway into a crack. One more blow would have brought down a ton of ore. The hammer is lying beside it, set down, not dropped. The whistle went, and that was the shift." },
        { name = "the chalk line", description = "Ruled, with a straight edge, across raw rock a thousand feet underground. Somebody measured it twice. You can see the first, fainter line a hair to the left." },
      } },
    { name = "the stalls",
      description = "Forty of them, one to a miner. Each has a shelf, a peg and a small flat stone to sit on. They are all the same size and they have all been made different.",
      things = {
        { name = "the first stall",
          description = "The rune over it has been recut many times, a new one over the old, father and son and son. On the shelf: a whetstone, a tin mug and a pipe.",
          things = {
            { name = "the pipe", description = "Clay, with a bowl carved as a small scowling face. It has been filled and tamped, ready for the next break. The tobacco has gone to dust and kept its shape." },
            { name = "the mug", description = "A dent in one side has been hammered out, and hammered out again, and finally left, and a rune scratched next to it. You suspect it says {i}character{/}." },
          } },
        { name = "a stall with a drawing",
          description = "Chalked on the back wall at about knee height, by a small hand: a dwarf with a very large pick, a second dwarf, smaller, and a round thing with lines coming out of it. Nobody down here would have known what the round thing was. A child had been told about the sun and had drawn it for her father to look at." },
        { name = "a stall with a beard comb",
          description = "Hung on the peg by a thong: a comb of horn with three sizes of tooth. Under it a small mirror of polished tin, and a notice in runes, translated beneath in chalk: {i}A TIDY BEARD IS A SAFE BEARD.{/} Then a drawing of a beard and a winch, which you study, and understand, and wish you had not." },
        { name = "the smallest stall",
          description = "At the end of the row, half the width of the others, with the rune over it cut shallow and new. The apprentice's. The peg is lower. There is nothing on the shelf at all. He took everything with him, the day he broke through, except the one thing he left at the bottom." },
      } },
    { name = "the pony stable",
      description = "A side chamber with eight low stalls, a manger and a rack of harness. The dwarves' pit ponies were the size of large dogs and are said to have been the only creatures a dwarf would take orders from.",
      things = {
        { name = "the name boards", description = "Over each stall, a rune and a translation: {i}Boulder. Dumpling. No. Boulder the Second. Her Ladyship. Bite. Other Bite.{/} The eighth has only a rosette." },
        { name = "the rosette", description = "Red ribbon gone brown. {i}Best in Shift.{/} It is nailed over the empty stall with four nails, one to each corner, by someone who did not intend it to come down." },
        { name = "the harness", description = "Oiled. After a thousand years, supple. You look at the oil can on the shelf. It is the one clean thing in the room. The dwarf who trims the rails once a year, you think, makes a detour." },
        { name = "the manger", description = "Empty and swept. In the corner, a ball made of plaited straw, well chewed." },
      } },
    { name = "the shift board",
      key = "shift board",
      description = "A great slate by the gallery mouth, ruled into forty rows. Beside each row is a hook, and on thirty-nine hooks hangs a brass token with a rune. One hook, the lowest, is empty. At the top, apart from the rest, is a larger hook with a key on it.",
      variants = {
        { when = flag "gr_office_open",
          description = "A great slate by the gallery mouth, ruled into forty rows. Thirty-nine brass tokens on thirty-nine hooks. The lowest hook is empty. The large hook at the top is empty too, now, and you feel thirty-nine small brass discs noting the fact." },
      },
      things = {
        { name = "the tokens", description = "You took your token when you went in and hung it up when you came out, and if a hook was bare at the end of the shift they went and looked for you. Thirty-nine came out that day and hung up. It is the tidiest evidence of a bad afternoon you have ever seen." },
        { name = "the empty hook", description = "The small one. His token is not here. He will have it on him still. You think that a dwarf does not hang up his token until he reckons the shift is over." },
        { name = "the foreman's key",
          visible_if = no(flag "gr_office_open"),
          description = "Iron, as long as your hand, with a tag: one rune and its translation, {i}OFFICE{/}. It hangs in plain sight on an open hook. It did not occur to anyone that it would need to be anywhere else.",
          actions = {
            { "Take the key down", set "gr_office_open",
              say "It comes off the hook with a small clear note. There is a door a little way along, iron-bound, with the same rune on it, that you had taken for part of the wall. The key turns as if it had been used this morning. You leave it in the lock. It seems to want to stay near its hook." },
          } },
      } },
    { name = "the full cart",
      description = "An ore tub loaded to the brim and never sent. A docket is wired to the handle.",
      things = {
        { name = "the docket", description = "{i}Gallery 3. Silver, first grade. Weighed, checked, checked.{/} Three sets of initials, and then a blank where the fourth should go. The fourth was the foreman's. He had other things to sign that day." },
        { name = "a lump of ore", description = "Grey rock with threads of white metal through it. You turn it to the lantern and it lights up like frost on a window. There is enough in this one tub to buy Nobles' Row. It has sat here for a thousand years, with a docket on." },
      } },
    { name = "the air door",
      description = "A heavy wooden door across a side passage, to steer the draught. Beside it, a stool a foot high and a length of cord. A boy sat here all shift and opened it for the ponies.",
      things = {
        { name = "the stool", description = "The seat is carved all over: faces, ponies, a very good beetle. He had a knife and ten hours a day." },
        { name = "the cord", description = "It runs to a small bell at the far end of the gallery. One pull: pony coming. Two: dinner. Three, the notice says, is {i}not to be pulled{/}. The cord is frayed at the place you would hold it for three." },
      },
      actions = {
        { "Open it", say "A cold wind comes through and your lantern leans. Far off down the passage a second door bangs, and a third. You shut it again quickly. The whole mine has been breathing through this for a thousand years and you have just made it cough." },
      } },
    { name = "the timbering",
      description = "Oak props and cross-beams, every joint cut to fit without a nail. The Survey once sent a man to count them. He came back saying the dwarves had numbered each one already and that his figures agreed with theirs, which had never happened to him before, with anybody.",
      things = {
        { name = "a height chart", description = "On one prop, a ladder of small notches with runes. Not the miners'. Children's, brought down on some holiday to see where their fathers worked. The top notch is at your hip." },
        { name = "a patch of pale fungus", description = "A white shelf growing from a beam, the size of a saucer. It glows, very faintly, when you shade the lantern. The dwarves farmed something like it, the stories say. This one has gone wild and done well." },
      } },
    { name = "a trough and a spring",
      description = "Water comes out of the wall through a lead spout and falls into a stone trough, and out of the trough through a groove in the floor, as it was told to.",
      things = {
        { name = "a blind shrimp", description = "White, the length of a fingernail, rowing about in the trough. It has no eyes and has never needed any. Your lantern is the first light of its life, and it does not turn its head." },
      },
      actions = {
        { "Drink", say "Cold, and hard as a nail. It tastes of the inside of a mountain. You feel very slightly more load-bearing." },
      } },
    { name = "the powder store",
      description = "A niche with an iron door, standing open. Empty shelves. A notice.",
      things = {
        { name = "the notice", description = "{i}NO POWDER. We do not blast. Blasting is for people who do not know where the rock wants to go. PICKS ONLY.{/} Under it, smaller: {i}This means you, Gallery 2.{/}" },
      } },
    { name = "a mine rat",
      icon = "r",
      description = "Grey, large and calm, sitting up on a prop. Its family has had the run of the Longshift for a thousand years and it has the manner of a caretaker. It looks at your lantern, then at the stamp on the base, and seems to make a note.",
      actions = {
        { "Offer it a crumb", say "It takes the crumb in both hands, turns it over, and puts it down on the prop, in line with the edge. Then it eats it. Standards have been kept up." },
      } },
    { name = "the iron-bound door",
      visible_if = flag "gr_office_open",
      description = "Set flush in the gallery wall, with one rune on it and the key in the lock. It opens inward. There is lamplight behind it, which is not possible, and which you put down to your own lantern until you have checked." },
  },

  exits = {
    { to = "old_mine", description = "Back along the rails to the main level and the cage." },
    { to = "foreman_office", label = "The iron-bound door",
      description = "Through the door with the rune on it, into the one room in the mine that was private.",
      requires = flag "gr_office_open", hidden = true },
  },
}

space {
  id = "foreman_office",
  region = "grumbles",
  secret = true,
  name = "The Foreman's Office",
  description = "A square room cut in the rock, panelled in oak to the height of a dwarf and bare stone above. A desk, a high stool, shelves of ledgers, a coat on a peg. Everything is squared to the edge of whatever it stands on. He tidied up before he left. He thought someone would be in on Monday.",
  palette = { bg = "#100d0a", text = "#d4ccbc", dim = "#72685a", accent = "#e0b060", border = "#443828" },
  ambience = {
    flicker { color = "#e0b060", strength = 0.1 },
    dust { glyphs = "·", color = "#5a5040", rate = 0.15, speed = 0.1 },
  },

  things = {
    { name = "the glass case",
      key = "hammer case",
      icon = "╤",
      description = "On the wall behind the desk, where a foreman could see it by turning his head: a shallow case of oak and glass, with a brass plate. Inside, on two pegs, hangs a hammer.",
      variants = {
        { when = flag "gr_hammer_taken",
          description = "On the wall behind the desk: a shallow case of oak and glass, standing open, with two pegs in it and the outline of a hammer painted on the back board. You know about outlines by now. This one is larger than the rope's, and you can feel it from the other side of the room." },
      },
      things = {
        { name = "the brass plate", description = "Runes, and under them the translation, which somebody took the trouble to engrave as deep as the original: {i}IN CASE OF NEED: DON'T.{/}" },
        { name = "the hammer on its pegs",
          key = "hammer in place",
          visible_if = no(flag "gr_hammer_taken"),
          description = "Black iron, short in the handle, plain. One rune on the head. You have heard of this. Everyone has. In the stories the First Foreman strikes the mountain once and it opens like a door, and the dwarves walk in, and the stories all end with the same line: {i}and he never struck again{/}. Nobody ever says where he put the hammer. He put it in his office, where he could keep an eye on it.",
          actions = {
            { "Open the case", once = true, give "hammer_enough", set "gr_hammer_taken", fx "shake",
              say "There is no lock. A dwarf would no more take this than take the roof. You are not a dwarf, and you lift it off its pegs. The mountain makes a sound you have not heard it make before: short, and rising at the end. Then nothing falls, and you are standing in an office with {gold}the Hammer Called Enough{/} in your hand, and behind you on the board an outline that will be there when the foreman's great-grandchildren come back. You resolve to walk very carefully. For good." },
          } },
      } },
    { name = "the desk",
      description = "Oak, with a slope for writing and a brass rail to stop the pens rolling. The top is at the height of your belt and he would have stood on a box to reach it. The box is there.",
      things = {
        { name = "the unfinished report",
          description = "A sheet, squared to the corner of the desk, with a pen laid across it. Runes in a firm upright hand, and under each line, smaller, the common tongue, because copies went to the Crown. {i}Shift 365,114. Gallery 3, forty fathoms advanced. Bottom level: the apprentice has broken through into{/} and there the line stops. Not trailing off. Stopped, with the pen lifted clean. He went down to see for himself what word to put." },
        { name = "the inkwell", description = "Dry, with a crust the shape of the last dip. The lid is down. He put the lid down." },
        { name = "the top drawer",
          description = "Pens, a seal, a ball of string saved from parcels, and a paper bag.",
          things = {
            { name = "the paper bag", description = "Boiled sweets, fused by ten centuries into one sweet the size of a fist, striped. It still smells of aniseed. A foreman is allowed one weakness, and this was filed under {i}stationery{/}." },
            { name = "the seal", description = "A pick crossed with a ruler. The motto round the edge is the one from the wall." },
          } },
        { name = "the box he stood on", description = "A crate, upside down, stencilled in runes. The translation, in pencil: {i}candles, best{/}. The top is worn in two places the size of small boots, a little apart, toes turned out." },
      } },
    { name = "the ledgers",
      description = "Three walls of them, bound in grey cloth, numbered on the spine. Every shift the Longshift ever worked has a line: who, where, how far, how much.",
      things = {
        { name = "the first ledger", description = "The cloth has gone to lace. The first entry is a single line in a different, older hand: {i}Struck once. It opened. Enough.{/} The next line, the same hand, the following day: {i}Began.{/}" },
        { name = "the last ledger", description = "Open on the stand. The left-hand page is full. The right-hand page has the date ruled at the top and nothing under it. Then, in the bottom corner, in pencil, very small, as if it were not really for the record: {i}BACK SOON.{/}" },
        { name = "a ledger of accidents", description = "Thin. One page used. {i}Splinter, thumb. Splinter removed. Thumb retained.{/} In a thousand years. You begin to see what the outlines on the tool wall are for." },
      },
      actions = {
        { "Look yourself up", say "You are not in them. Nobody your height is. There is one column in the whole run headed {i}visitors{/}, and under it a dash, repeated, down every page, for three hundred and sixty-five thousand shifts. He ruled the column each time anyway." },
      } },
    { name = "the pay chest",
      description = "An iron box by the door with its lid up. Inside, in rows, forty small leather bags, each with a brass tag.",
      things = {
        { name = "a pay bag", description = "Heavy for its size. The tag has a rune and a sum. It was made up for the end of the week, and the week did not end. Nobody has touched one. You do not touch one either. It is astonishing how easy that is." },
        { name = "the smallest bag", description = "At the end of the last row. Half the weight of the others, as an apprentice's would be. Tucked under the cord is a slip of paper, in the foreman's hand, in the common tongue, so he must have meant it to be read by anyone: {i}Not his fault. Pay in full.{/}" },
      } },
    { name = "the coat on the peg",
      description = "Thick grey wool with horn buttons, hanging by the door. It would come to your waist. He went down the shaft without it, then, in a hurry, and came up, and walked home without it too.",
      things = {
        { name = "the left pocket", description = "A folding rule, brass, nine sections. Every dwarf carries one. His is engraved along one edge: a name, and {i}from the lads, forty years{/}." },
        { name = "the right pocket", description = "Half a boiled sweet, in a twist of paper. For later." },
      } },
    { name = "the motto on the wall",
      description = "Carved over the door in letters a foot high, runes above, translation below: {b}MEASURE TWICE.{/} There is no second half. To a dwarf the second half is obvious, and to say it would be showing off." },
    { name = "a plumb line",
      description = "Hung from a nail in the ceiling, with a bronze weight at the end: a cone, point down. It has not moved in a thousand years. You find you are standing up straighter in order not to be shown up by a piece of string.",
      actions = {
        { "Set it swinging", say "You give it the smallest push. It swings once, twice, and stops dead on the centre, as though someone had caught it. You look round. The room is empty. The room is very firmly empty." },
      } },
    { name = "the kettle and the ring",
      description = "A small iron ring over a lamp, and a kettle on it, and beside the kettle one mug and a caddy.",
      things = {
        { name = "the caddy", description = "Tin, with a rune. Inside: a black brick of tea with a corner shaved off, and the knife for shaving it." },
        { name = "the mug", description = "On the side, glazed in, a row of runes. The translation is scratched under the handle by some long-ago visitor who had been waiting to be useful: {i}Number One Foreman{/}. There was only ever the one." },
      } },
    { name = "the lamp",
      description = "A brass lamp on the desk, lit, with a steady yellow flame the height of a thumbnail. You did not light it. The oil in the reservoir is fresh. The dwarf who comes up once a year to check the sign also, it seems, comes in here, fills this, lights it and goes away again. Somebody ought to be in the office." },
    { name = "the window",
      description = "There is a window. It is a square frame with four panes, set in the rock wall, with a sill. Behind the glass is rock. He had it put in so that there would be somewhere to look when he was thinking.",
      things = {
        { name = "the sill", description = "A pot, with earth in it, and a stick, and a label. Whatever he was trying to grow by lamplight a thousand feet down, the label says, in the common tongue, with what you can only call hope: {i}daisy{/}." },
      } },
  },

  exits = {
    { to = "mine_gallery", label = "The iron-bound door", description = "Out to the gallery, shutting the door the way you found it." },
  },
}
