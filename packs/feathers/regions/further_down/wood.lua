-- The Pale Wood: a forest of mushrooms, farmed; and what is inside the biggest one.

space {
  id = "fd_pale_wood",
  region = "further_down",
  name = "The Pale Wood",
  description = "A forest, by every test but one. Trunks as thick as barrels going up into the dark, a roof of round heads overlapping like slates, paths, clearings, a hush. It is all mushrooms. They give a faint light of their own, the colour of the inside of a shell, and the whole wood smells of rain an hour ago.",
  palette = { bg = "#0a0b10", text = "#c8c6cc", dim = "#62607a", accent = "#d8c8f0", border = "#34304c" },
  ambience = {
    dust { glyphs = "·˙∙", colors = { "#c8b8e8", "#8f88b0" }, rate = 0.4, speed = 0.08 },
    shimmer { color = "#2a2440", strength = 0.3 },
  },

  things = {
    { name = "the landing",
      description = "A shelf of rock where the ferry puts in, with a mooring post carved from a single stalk and gone hard as horn.",
      things = {
        { name = "a bell on the post",
          description = "For calling the ferry. It is the size of a thimble, and beside it hangs a second bell, the size of a bucket, labelled in the small hand: {i}FOR THE USE OF THE LARGE.{/}",
          actions = {
            { "Ring the big one", say "It makes a noise like a dropped pan. Across the river Mr Tench raises one hand, to show that he has heard and that there was no need for that." },
          } },
      } },
    { name = "the trunks",
      description = "White, ribbed, cool, a little damp. You can get your arms a third of the way round the nearest. Knock on it and it sounds like a full cask.",
      things = {
        { name = "a tapped trunk",
          description = "A wooden spigot driven in at shin height, with a bucket under it the size of an eggcup, half full of something clear.",
          actions = {
            { "Taste it", say "Water, with a memory of mushroom, and very cold. The bucket holds one sip. You have now drunk somebody's whole morning's work, and you put a button in the bucket by way of apology." },
          } },
        { name = "growth rings of light",
          description = "Each trunk is banded, bright and dim, all the way up: one band for every time the caps have opened. The oldest stalks have more bands than you can count before your neck gives out." },
      } },
    { name = "the canopy",
      description = "Caps, forty feet up, edge over edge, with gills underneath like the pages of ten thousand closed books. Light comes down through the gills in pale leaves.",
      things = {
        { name = "a falling spore",
          description = "They come down all the time, slow as ash, each one alight. Where they land they glow for a breath and go out. The floor of the wood twinkles steadily, like a town seen from a hill.",
          actions = {
            { "Catch one", say "It settles in your palm, lit, weighing nothing. Then it goes dark, and you have a speck of dust and the feeling of having been trusted with something briefly." },
          } },
        { name = "a cap with a bite out of it",
          description = "A neat semicircle gone from the rim, forty feet up, a yard across. Whatever took it had to reach. The farmers have fenced that stalk with string and a notice: {i}WE KNOW. WE ARE NOT ASKING.{/}" },
      } },
    { name = "the farmers",
      description = "You see the lamps first, bobbing along the rows at knee height. Then the hats. The mushroom farmers of the Pale Wood come up to about your garter: grey velvet, long hands, round spectacles of smoked glass, and a habit of bowing before they speak.",
      things = {
        { name = "Farmer Hush",
          icon = "☺",
          description = "The senior farmer, with a wide straw hat woven from dried gill. He carries a ladder of seventy rungs, in sections, on his back. He will not look straight at your lantern and is too polite to ask you to move it.",
          actions = {
            { "Shade your lantern", say "You put your hat over it. \"Oh, pardon. Thank you. Pardon,\" says Farmer Hush, and takes off his spectacles to see you properly. His eyes are enormous and very dark. \"You are from Above. We thought you might be weather.\"" },
            { "Ask about the harvest", say "\"We pick at dusk,\" he says. You point out that there is no dusk. He looks distressed on your behalf. \"There is always dusk,\" he says gently. \"It is when we get up.\"" },
            { "Ask about the biggest one", when = no(flag "fd_cap_open"), set "fd_knows_cap",
              say "He looks toward the middle of the wood, and then at his hands. \"The Great Cap. We do not pick it. It was a wood before we were farmers.\" He lowers his voice, which you would not have said was possible. \"If you go, knock. It is only manners. Three times, low down, where the door would be if it had one.\"" },
          } },
        { name = "a picker on a ladder",
          description = "Halfway up a trunk, a very long way above her own height, cutting a shelf of young caps with a knife like a paring of moon. She has a safety line. The safety line is a spider's, by arrangement." },
        { name = "an apprentice",
          description = "Smaller still, pushing a wheelbarrow made from a walnut shell with a button for a wheel. It contains one mushroom. He is extremely proud of it and stops so that you can look.",
          actions = {
            { "Admire the mushroom", say "It is a good mushroom. You say so. He bows so low that his hat comes off, and wheels it away at speed to tell everybody." },
          } },
      } },
    { name = "the rows",
      description = "Under the big stalks, in beds of black crumb, the crop: small mushrooms in straight lines, staked and labelled.",
      things = {
        { name = "a bed of buttons", description = "White, round, the size of your thumbnail. A label: {i}Breakfast.{/}" },
        { name = "a bed of blue ones", description = "Tall and thin, glowing like gas. {i}Lamps. Do not eat. Pardon: do not eat AGAIN.{/}" },
        { name = "a bed of flat brown ones", description = "Like saucers. {i}Roofing.{/} Half the city is slated with these, and after a wet spell the streets smell of soup." },
        { name = "a bed under a cloth", description = "Covered with a damp handkerchief. {i}Shy.{/} You do not lift the cloth." },
        { name = "a scarecrow",
          description = "A cross of sticks in a doll's coat, with a face drawn on a puffball. There are no crows. It is for the beetle, and the beetle is not fooled, but is too well brought up to say so." },
      } },
    { name = "a beetle at plough",
      description = "A stag beetle the size of a terrier, in harness, drawing a plough made from a bent spoon. It turns at the end of the row without being told.",
      actions = {
        { "Pat it", say "The wing cases are warm and polished. It stops, leans on you slightly, as a horse does, and goes on." },
      } },
    { name = "the path",
      description = "Swept, edged with white pebbles, and exactly one small person wide. You walk with a foot either side of it.",
      things = {
        { name = "a signpost",
          description = "Shin high, with three arms. {i}PARDON, 1/4 mile.{/} {i}FERRY.{/} And one pointing into the thick of the wood, which has been left blank, respectfully." },
        { name = "a bench",
          description = "For resting on the way home from the rows. You could put it in your pocket. Someone has left a lunch on it in a leaf: three crumbs and a currant." },
      } },
    { name = "the Great Cap",
      key = "fd_great_cap_tree",
      wonder = true,
      description = "In the middle of the wood the others stand back from it. One mushroom, as broad in the stalk as a church tower, going up past the reach of any light, and at the top a cap that roofs an acre. {magic}It is older than the river.{/} The glow in its gills is slow, brightening and dimming over the space of a long breath, and every mushroom in the wood keeps time with it.",
      variants = {
        { when = flag "fd_cap_open",
          description = "In the middle of the wood the others stand back from it. One mushroom, as broad in the stalk as a church tower, going up past the reach of any light. {magic}It is older than the river.{/} Low down in the stalk a seam has opened that was not there before, a little taller than a farmer and a good deal lower than you, with a warm light in it." },
      },
      things = {
        { name = "the foot of the stalk",
          description = "The farmers have laid a ring of white pebbles round it, and inside the ring, offerings: a thimble of water, a first mushroom, a child's drawing of the sun, done by somebody who had it described to them." },
      },
      actions = {
        { "Lay a hand on it", say "Cool, and then you feel it: a slow push against your palm and a slow letting go. You wait for the next. It takes as long as it takes to walk across a room." },
        { "Knock three times, low down", when = all { flag "fd_knows_cap", no(flag "fd_cap_open") }, set "fd_cap_open", fx("wash", "#e8d8a0"),
          say "You kneel and knock where a door would be: once, twice, three times. Nothing. Then the glow in the gills overhead holds, at the top of its breath, for the first time in anyone's memory, and a seam opens in the stalk without a sound. Behind you a wheelbarrow is dropped." },
      } },
    { name = "a ring of small ones",
      description = "A circle of red caps with white spots, in a clearing, the kind that in stories you must not step into.",
      actions = {
        { "Step into it", say "You step in. Nothing happens. You step out. A farmer who has watched the whole thing takes off his hat. \"We put those in for visitors,\" he says. \"You are the first who has used them. The committee will be so pleased.\"" },
      } },
    { name = "a spring",
      description = "Water coming up through white sand in a basin of stalk, clear as air. The wood drinks from it by a system of gutters made of split stems, each with a tiny sluice and a tiny sluice keeper asleep beside it." },
    { name = "the quiet",
      description = "No wind, no birds, no leaves. A drip, a long way off. The click of the beetle's harness. You notice that you have been walking on the sides of your feet.",
      actions = {
        { "Whistle", say "Three notes of the miller's daughter. Every lamp in the wood stops. You apologise. \"Not at all,\" says a voice by your ankle. \"It was very loud and we enjoyed it. Please do not do it again.\"" },
      } },
    { name = "a moth",
      description = "White, furred, as big as your two hands, asleep on a trunk with its wings open. There is a brand on one wing, a small neat {i}H{/}. The farmers keep them for the wool." },
    { name = "a row of a different crop",
      description = "At the end of the farmers' rows, by itself, behind a little fence of mushroom stalks, something is growing that is not a mushroom: a stick, a foot high, with two pale leaves at the top that have never seen the sun and are trying anyway.",
      things = {
        { name = "the seedling", description = "A walnut. It came down the river in half a shell and Farmer Hush planted it out of curiosity. It ought to have died in a week. It has put on a leaf a year for eleven years, in the dark, leaning east." },
        { name = "the little fence", description = "To keep the beetle from ploughing it under. There is a label, in Murmur script, very small. A farmer translates it for you: {i}Not ours. Looked after.{/}" },
      },
      actions = {
        { "Ask why they keep it", say "Farmer Hush thinks for some time, as his people do. \"Our town was started on a kindness from above,\" he says, almost too quietly to hear. \"We have never been able to send one back. Nothing of ours will grow up there.\" He looks at the two pale leaves. \"So we thought, we could at least mind something of theirs down here.\"" },
      } },
    { name = "a scarecrow in a crown",
      description = "Among the rows, to keep the moths off: a cross of two mushroom stalks in a ragged coat, and on its head a ring of tin cut from a biscuit box. The farmers say that it fell down a well in a theatre. {i}BEST ASSORTED{/}, it says, on the inside." },
  },

  exits = {
    { to = "fd_slow_river", label = "The ferry", description = "Back across the black water to the jetty and the lamp." },
    { to = "fd_pardon", description = "Along the swept path, a quarter of a mile, towards a great many small lights." },
    { to = "fd_great_cap", label = "The seam in the stalk",
      description = "In through the side of the Great Cap, stooping a good deal.",
      requires = flag "fd_cap_open", hidden = true },
  },
}

space {
  id = "fd_great_cap",
  region = "further_down",
  secret = true,
  name = "Inside the Great Cap",
  description = "The stalk is hollow. You are standing at the bottom of a round white shaft the height of a cathedral, ribbed like a vault, and warm. Far overhead the underside of the cap spreads out in a wheel of gills, and all of it is breathing light: bright, and dim, and bright.",
  palette = { bg = "#100e0c", text = "#d8d0c0", dim = "#6e6658", accent = "#f0d890", border = "#4a4030" },
  ambience = {
    shimmer { color = "#3a301c", strength = 0.5 },
    dust { glyphs = "·˙", color = "#b8a878", rate = 0.3, speed = 0.05 },
  },

  things = {
    { name = "the gills, from beneath",
      key = "fd_cap_gills",
      wonder = true,
      description = "A hundred feet up they run out from the centre like the spokes of a wheel, a thousand of them, each a hanging curtain of light. {magic}The brightness travels along them from the middle to the rim and back again, slowly, over and over.{/} It is the same slow beat you felt in the bark. In here it falls on your face, and you find that your own breathing has gone to meet it.",
      actions = {
        { "Breathe with it", say "In, as it brightens. Out, as it dims. After a dozen you are not sure which of you is leading. After two dozen you sit down on the floor, quite suddenly, because it seemed for a moment that you might not need to be anywhere at all." },
      } },
    { name = "the floor",
      description = "Soft, dry and white, with a give in it like a good mattress. Your boots leave no mark.",
      things = {
        { name = "the first mushroom",
          description = "In the exact centre, on a little rise: one ordinary mushroom, brown, no taller than a candle. It is the only thing in here that is not part of the Cap. The farmers say the Cap grew round it, to keep it company." },
      } },
    { name = "the walls",
      description = "Ribs of white going up, and between them panels as thin as vellum. The glow of the wood comes through from outside, and against it, small shadows: the farmers, standing in a ring, hats off.",
      things = {
        { name = "pictures in the wall",
          description = "Pressed into the soft white, low down, with a fingertip, long ago: little figures with packs on their backs walking down a slope. Behind them a round thing with lines coming out of it. In front of them, nothing yet." },
        { name = "a later picture",
          description = "The same hand, older and shakier. The little figures again, at the bottom of the slope, and the first mushroom. One of the figures is holding something up to it, with lines coming out." },
      } },
    { name = "a hook in the wall",
      description = "A peg of horn, set at about your knee. For eleven hundred years a lantern has hung on it with its shutter closed.",
      variants = {
        { when = item "fd_kept_noon",
          description = "A peg of horn, set at about your knee. There is a pale ring on the wall round it where something hung for eleven hundred years. Somebody has already hung a small blue lamp mushroom on the peg instead. It is doing its best." },
      },
      things = {
        { name = "the lantern",
          key = "fd_noon_lantern",
          icon = "☼",
          description = "Horn and black iron, no bigger than a teapot. The shutter is soldered. Round the edges of it runs a line of gold thinner than a hair, and the white wall beside that edge has gone, over the centuries, very faintly brown.",
          variants = {
            { when = item "fd_kept_noon", name = "where the lantern hung",
              description = "You have it. The Great Cap gave it into your keeping, or at least did not object, and the farmers outside took off their hats, which they had only just put back on." },
          },
          actions = {
            { "Ask whose it is", when = no(item "fd_kept_noon"),
              say "There is nobody to ask. Then there is: Farmer Hush has come as far as the seam and stands with his spectacles in his hand. \"It is the Noon,\" he says. \"We brought it down. We kept meaning to use it. The mushrooms did not care for the idea, and the Cap asked to look after it.\" He turns his hat round. \"It has been asking, lately, whether somebody might take it back up. To see if it still fits.\"" },
            { "Take the lantern down", once = true, give "fd_kept_noon", fx("flash", "#f0d890"),
              say "You lift it off the peg. It is warm, and far heavier on one side than the other, as if the light had settled. The gills overhead brighten and stay bright a moment, and dim. {gold}The Lamp of the Kept Noon.{/} \"You will not open it,\" says Farmer Hush. It is not a question, and you say no. \"No,\" he agrees. \"Nobody does. That is how one can tell it is important.\"" },
          } },
      } },
    { name = "a shelf of small jars",
      description = "Cut into a rib, at farmer height: forty jars, stoppered with wax, each holding a pinch of dust and a label.",
      things = {
        { name = "the oldest jar", description = "{i}First spore of the first cap.{/} The dust inside has not stopped glowing. It was sealed before the kingdom above had a name." },
        { name = "a jar marked with a year", description = "{i}The year the roof spoke.{/} Nobody now alive knows what the roof said. The jar is kept in case it says it again and they need to compare." },
        { name = "the newest jar", description = "{i}This spring.{/} And in different ink, added a moment ago by someone with a shaking hand: {i}A Large one knocked.{/}" },
      } },
    { name = "a stair in the rib",
      description = "Footholds no longer than your finger, going up the inside of the stalk in a spiral, out of sight. The farmers climb it once a year to brush the gills. It takes four days. They take sandwiches.",
      actions = {
        { "Try the first step", say "You get the toe of one boot on it. That is the whole of what can be done. You take the boot off the step and nod to the stair, as one professional to another." },
      } },
    { name = "the warmth",
      description = "It is the warmth of a room where someone is asleep. You have been speaking in a whisper since you came in, and nobody asked you to." },
    { name = "a root, going down",
      description = "At the foot of the wall the white goes into the floor and keeps going. You put your ear to it. A long way under you, slow water, and under that a hush which is not quite silence.",
      actions = {
        { "Listen longer", say "The hush has a beat in it. It is the same beat as the light. You cannot tell whether the Cap is keeping time with something down there, or whether it is the other way about." },
      } },
    { name = "a guest book",
      description = "A book the size of a matchbox on a stand, with a pen made from a moth's antenna. Every farmer signs on the day they are first allowed inside. The signatures are all dots.",
      actions = {
        { "Sign it", say "The pen is lost in your fingers. You make a dot. It is larger than everybody else's dot, and takes up most of a page. You hope that this will be read as sincerity." },
      } },
    { name = "a moth, roosting",
      description = "High up on a rib, wings shut, the colour of the wall. It does not carry the farmers' brand. This one is the Cap's own." },
    { name = "the seam",
      description = "The way you came in, a narrow slit of the wood's cooler light. It has not closed behind you. You have the impression that it is being held, the way one holds a door for a guest who is slow with their coat." },
    { name = "a full-sized footprint in the floor",
      description = "In the soft floor of the cap, near the stair in the rib, a single print of a bare human foot, long healed over and grown in, like a letter cut in a beech. The cap has kept it. It keeps everything that was ever pressed into it.",
      things = {
        { name = "the size of it", description = "Large. Broad at the ball. You have a ten in mind without measuring. He would have had to come in on his hands and knees, and stood up once, here, where the roof is highest, and gone out the same way." },
        { name = "what grows in the print", description = "A ring of the small pale mushrooms, exactly following the outline, heel to toe. They come up every year in that shape and no other. The farmers gather everything else in the cap and have never gathered those." },
      },
      actions = {
        { "Set your foot beside it", say "The floor gives a little under your boot, warm, like bread. When you lift it there is a print. By next year it will have healed to a scar, and by the year after there may be a ring of small pale mushrooms in the shape of an adventurer's left boot, with one lace done up in string. You find that you rather hope so." },
      } },
    { name = "an entry in the guest book, crossed",
      description = "You turn back through the guest book. Eleven pages from the front, one line has been ruled through by a later and official hand, with a note: {i}No such day.{/} Under the ruling you can still read the entry: {i}Very comfortable. Like being inside a good idea. I shall not stay, I have a garden to see to.{/}" },
  },

  exits = {
    { to = "fd_pale_wood", label = "The seam", description = "Out, stooping, into the cool of the wood and a ring of very small people with their hats off." },
  },
}
