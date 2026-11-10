space {
  id = "forge_hall",
  region = "far_enough",
  name = "The Great Forge",
  description = "One fire, the length of a street, in a trench down the middle of the hall, and two hundred anvils along it. The noise is tremendous, and it is in time: the smiths strike on the beat, and the beat has not been lost in living memory.",
  palette = { bg = "#140a06", text = "#dccbb4", dim = "#7a6252", accent = "#f08a30", border = "#5a2e18" },
  ambience = {
    embers { glyphs = "∙·˙✦", colors = { "#f08a30", "#f0c060" }, rate = 0.6, speed = 0.7 },
    flicker { color = "#f08a30", strength = 0.22 },
  },

  things = {
    { name = "the fire",
      key = "first fire",
      wonder = true,
      icon = "♨",
      description = "{flicker}It was lit once.{/} The first smiths found a seam of something that burns without getting smaller, and they put a hall round it. It has needed no coal in two thousand years. The dwarves stoke it anyway, a shovelful a shift, so that it does not feel taken for granted.",
      things = {
        { name = "the seam", description = "Under the flames, if you shield your eyes: a band of rock that glows from inside, white at the heart. Nobody knows what it is. The dwarves have a word for it which means, as near as you can get, {i}the bit that was already warm{/}." },
        { name = "the trench", description = "Cut to follow the seam, lined with firebrick, and edged with an iron rail at dwarf waist height. On you the rail is a tripping hazard. Three smiths have told you so." },
        { name = "the stoker", description = "An old dwarf with a long shovel and one lump of coal. At the turn of the shift he puts it on, says a few words, and bows. The coal is a courtesy. The fire takes it, you would swear, graciously.",
          actions = {
            { "Ask what he says to it", say "\"Thanks,\" he says. \"And that we're still here.\" He leans on the shovel. \"It was here before us. It doesn't need us. You want to stay on the right side of a thing like that.\"" },
          } },
        { name = "the colour of it", description = "Orange at the edges, gold further in, and at the middle a white that leaves a green line in your eyes. The smiths read it as you would read a face." },
      },
      actions = {
        { "Warm your hands", fx("flash", "#f08a30"),
          say "You hold them out. The heat comes into them, and up your arms, and into parts of you that have been cold since the snow line. It is a generous fire. You find you have said thank you, out loud, and that the stoker has heard, and approves." },
      } },
    { name = "the Hinge Master",
      key = "hinge master",
      icon = "☺",
      description = "Old, bare-armed, at the first anvil, making a hinge. He has made the same hinge every day for sixty years. Each one goes on the pile, and each one is, he says, nearly it.",
      variants = {
        { when = item "perfect_hinge",
          description = "Old, bare-armed, at the first anvil, making a hinge. He knows what you have in your pack. He has not asked to see it. He is striking more slowly today, and smiling, and the hinge on his anvil is the closest yet." },
      },
      things = {
        { name = "his hammer", description = "The head is worn to a shape that fits one job. The handle has been replaced nine times and the head twice. He calls it his father's hammer, and he is right." },
        { name = "his arms", description = "Scarred to the elbow with sixty years of sparks, in a pattern as fine as lace. He can tell you which hinge each one came from." },
        { name = "the hinge on the anvil", description = "Three knuckles and a pin, still red. It is beautiful. He looks at it as you would look at a letter with one word spelled wrong." },
      },
      actions = {
        { "Admire a hinge", say "You pick one off the pile. It moves like water and shuts without a sound. \"See the play in it?\" he says, pained. You do not. \"No,\" he says kindly. \"You wouldn't.\"" },
        { "Ask what he is comparing them to", when = no(flag "fe_knows_hinge"), set "fe_knows_hinge",
          say "He puts the hammer down. That alone turns heads along the line. \"My master made one,\" he says. \"The year I was bound to her. One, that came out right, and she never made another. Said there was no call.\" He nods at the end wall, at a plain iron door you had taken for a cupboard. \"Her forge. Cold since. Go in if you like. Push it with one finger.\" He picks the hammer up, and comes in on the beat as if he had never left it." },
        { "Ask what he is comparing them to", say "\"You've seen it,\" he says. \"You tell me.\"" },
      } },
    { name = "the pile of hinges",
      description = "Twenty thousand rejected hinges, in a heap as high as the anvil. Any one of them would outlast the door, the house and the family.",
      things = {
        { name = "a hinge from the bottom", description = "Sixty years old and a little heavier in the knuckle. An apprentice's hinge. It is still better than any hinge in Aldmoor, and he blushes if you say so." },
        { name = "a hinge from the top", description = "Yesterday's. You work it back and forth. It makes no sound, and there is no feel to it at all, as if the two leaves had simply agreed." },
      },
      actions = {
        { "Ask what happens to them", say "\"Kettle lids. Mug lids. Tavern's had six thousand.\" He shrugs. \"They're not wasted. They're only not it.\"" },
      } },
    { name = "the beat",
      description = "Two hundred hammers, one stroke. An apprentice at the end keeps it with a small bell.",
      things = {
        { name = "the bell apprentice", description = "Twelve years into the bell, with eight to go before they let him near iron. He has not missed a stroke. His foot keeps it in his sleep, his mother says, and she has had the bed bolted down." },
        { name = "the bell", description = "Bronze, the size of an apple, on an iron arm. Its note cuts through the hammers as a needle goes through cloth, and every smith in the hall is listening for it with the back of the head." },
      },
      actions = {
        { "Clap along", when = no(flag "fe_clapped"), set "fe_clapped", fx "shake",
          say "You come in a fraction late. Two hundred smiths miss their stroke. There is a silence in the Great Forge for the first time in anyone's life, and into it the apprentice says a word. Then the bell, and they pick it up, and nobody looks at you, which is worse." },
        { "Clap along", say "You keep your hands in your pockets. A smith nearby nods, once, without looking up. You are forgiven, and it has been carved." },
      } },
    { name = "the anvils",
      description = "Two hundred, in two rows, each on a block of oak brought down from the surface at great expense and seasoned for a century. Each anvil has a name. None is called anything fanciful.",
      things = {
        { name = "the nearest anvil", description = "Its name is on a plate: {i}Third From The Door{/}. Its smith says it has always been a steady worker and does not like fuss." },
        { name = "an anvil with a wreath", description = "Iron leaves, hung on the horn. Its smith retired this year, after two hundred and six. The anvil is being rested for a shift, out of respect, before the next one is bound to it." },
        { name = "a smith at work", description = "She is drawing out a bar for a kettle spout, turning it a quarter on every stroke without looking. She is also, you gradually realise, holding a conversation with the smith opposite, by eyebrow, between beats." },
      } },
    { name = "the quenching trough",
      description = "Black water, the length of the fire. It hisses all day. Something lives in it. The smiths feed it filings.",
      things = {
        { name = "a forge newt", icon = "s", description = "Red as a coal, a foot long, asleep on a pair of hot tongs. It eats iron filings and is believed to be good luck, largely by the newt.",
          actions = {
            { "Offer it a filing", say "It opens one eye, takes the filing off your fingertip with a tongue as dry as paper, and chews, with a tiny sound like a file. Then it goes back to sleep on the tongs. The smith who wants the tongs will wait." },
          } },
        { name = "the newt spawn", description = "A string of red beads along the hot end of the trough, each with a dark comma inside. The smiths quench at the other end until they hatch. It costs them forty paces a time and nobody has ever complained." },
        { name = "the scale on the bottom", description = "Two thousand years of flaked iron, a yard deep, soft as silt. They dredge it once a century and make it into something. Last time it was the bell." },
      } },
    { name = "a rack of finished work",
      description = "Today's output, waiting for the inspector with his lens.",
      things = {
        { name = "a sword", description = "They make one a year, to show they can, and then put it in a cupboard. There is nobody they want to hit." },
        { name = "a kettle", description = "This is what the Forge is for. It will boil in a minute, pour without dripping, and be left to somebody in a will.",
          things = {
            { name = "the spout", description = "The curve of it was settled by a committee of smiths four hundred years ago, after a sixty-year trial, and is not open to discussion." },
            { name = "the lid", description = "Hung on a hinge from the reject pile. It closes with a small sound like somebody being satisfied." },
          } },
        { name = "a set of nails", description = "A hundred, identical. The inspector weighs each one. Yesterday he sent back a batch for being a grain over, with a note that said only {i}Really{/}." },
        { name = "a door knocker", description = "A fist, in brass. It is a private order from the gate. The old one, the Sergeant feels, had started knocking back a fraction slow." },
      } },
    { name = "the inspector",
      description = "A thin dwarf, for a dwarf, with a lens on a ribbon and a face that has not been pleased since his own apprenticeship. He passes nineteen pieces in twenty. The smiths consider him soft.",
      actions = {
        { "Ask him to inspect your equipment", say "He goes over you with the lens, boots to helmet. It takes some time. At the end he writes one rune on a slate and shows it to the nearest smith, who looks at you with compassion." },
      } },
    { name = "the apprentices' bench",
      description = "At the cold end of the hall, a long bench where the young ones file. They file for ten years before they are allowed to strike. A flat surface, the masters say, is the whole of the craft, and the rest is temperature.",
      things = {
        { name = "an apprentice filing", description = "She has a cube of iron in a vice and has been making one face of it flat for two years. She shows it to you. It looks flat. She lays a straight edge on it and holds it to the fire, and you see, or are persuaded that you see, a line of light." },
        { name = "a cube that passed", description = "On a shelf of honour. It was filed in the old king's day. If you set another passed cube on top of it, the two cannot be pulled apart, and the apprentices are sent to try as a lesson in humility." },
      } },
    { name = "the bellows",
      description = "Four, each the size of a house, hanging in iron frames along the wall. They are for a fire that needs air. This one does not. They are worked for an hour every shift regardless, by a crew of twelve, to keep the leather supple and the crew in practice.",
      actions = {
        { "Take a turn", say "They give you the end of the beam. You pull. Twelve dwarves let go to watch. The bellows, which they move in step without thought, does not shift for you by an inch, and they take the beam back with great tact." },
      } },
    { name = "a plain iron door",
      key = "cold forge door",
      description = "In the end wall, past the last anvil. No handle, no lock, no mark. You took it for a cupboard.",
      variants = {
        { when = flag "fe_knows_hinge",
          description = "In the end wall, past the last anvil. No handle, no lock, no mark. You put one finger on it, as you were told. It opens the width of a hand, without a sound, without any weight at all, and waits there for you to make up your mind." },
      } },
    { name = "the heat",
      description = "It is not the heat of a fire that somebody made. It comes off the trench steadily, evenly, the same at the far end as the near, as warmth comes off an animal that is asleep." },
  },

  exits = {
    { to = "plumb_square", description = "Out into the square, where it is merely warm." },
    { to = "cold_forge", label = "The door with no squeak",
      description = "Through the plain iron door, which is holding itself open for you.",
      requires = flag "fe_knows_hinge", hidden = true },
  },
}

space {
  id = "cold_forge",
  region = "far_enough",
  secret = true,
  name = "The Cold Forge",
  description = "A smith's workshop, one anvil, one hearth, and no fire. It has not been used in sixty years and there is no dust in it: somebody comes in to sweep. The tools are laid out in the order she left them. Through the wall you can hear the beat of the Great Forge, very faint, like a heart in the next room.",
  palette = { bg = "#0c0b0c", text = "#cdc8c4", dim = "#6a6462", accent = "#a8b8c8", border = "#363a44" },
  ambience = {
    dust { glyphs = "·", color = "#4c4a4c", rate = 0.12, speed = 0.1 },
    shimmer { color = "#a8b8c8", strength = 0.1 },
  },

  things = {
    { name = "the door, from inside",
      key = "the perfect door",
      wonder = true,
      icon = "╬",
      description = "The same plain iron door. From this side you can see how it is hung: on two hinges, of three knuckles each. {magic}These are the ones that came out right.{/} The door weighs as much as a horse. It closed behind you at the touch of the air you moved by walking past it.",
      things = {
        { name = "the upper hinge", description = "You look for the play in it. You have learned to. There is none. It is like looking for the join in a still pond." },
        { name = "the lower hinge", description = "The same. She made a pair, the same day, and no third. There is a story that she tried, the next morning, and put her hammer down after one stroke, and said: {i}No. That was them.{/}" },
        { name = "the edge of the door", description = "It meets the frame so exactly that with it shut there is no line. People have lost the door, from inside. The Hinge Master, as a boy, was in here for a day and a night." },
      },
      actions = {
        { "Push it with one finger", say "It swings wide, slows, and stops, exactly where you would have stopped it. You push it shut. It closes on your finger, finds the finger there, and waits, holding it no harder than a handshake, until you take it out." },
        { "Breathe on it", say "It moves. An inch, on a breath. Sixty years of dwarves have stood where you are standing and done the same, and gone back to their own anvils very quiet." },
      } },
    { name = "the cold anvil",
      key = "cold anvil",
      description = "Smaller than the ones outside, and older, with a face worn into the shallowest of dishes. On it lies a third hinge.",
      variants = {
        { when = item "perfect_hinge",
          description = "Smaller than the ones outside, and older, with a face worn into the shallowest of dishes. There is a clean shape on it where a hinge lay for sixty years. The anvil does not look robbed. It looks like a hand that has finally given something away." },
      },
      things = {
        { name = "the third hinge", visible_if = no(item "perfect_hinge"),
          description = "So there was a third. Three knuckles and a pin, plain, the length of your hand. There is a slip of slate under it, with a line of runes and, below, the same line in letters, in a hand you know from a visitors' book: {i}She says: for whoever comes in without being sent to fetch it. Her words. M.P.{/}",
          actions = {
            { "Take the hinge", once = true, give "perfect_hinge", fx "sparkle",
              say "It is cool, and heavier than it looks, and it opens in your hand as you lift it, the way a book falls open at the place. {gold}The Hinge.{/} Through the wall the beat of the Forge goes on, and then, for one stroke, you could swear that two hundred hammers came down a little more gently than usual." },
          } },
        { name = "the slip of slate", visible_if = item "perfect_hinge",
          description = "{i}She says: for whoever comes in without being sent to fetch it.{/} You were told you could look. Nobody sent you for anything. You read it again to be sure, and are." },
        { name = "the dish in the face", description = "Two hundred years of one hammer in one place. If you pour water on a new anvil it runs off. Here it would stay." },
      } },
    { name = "her tools",
      description = "Laid on the bench in a row: tongs, punches, a set of hammers going down in size to one that would do for a watch. Nothing has been moved. The sweeper lifts each one, dusts under it, and puts it back in its own shadow.",
      things = {
        { name = "the smallest hammer", description = "The head is no bigger than a thimble. This is what did the pin." },
        { name = "the tongs", description = "The jaws are padded with soft copper, so as not to mark the work. No other smith in the hall troubles. No other smith has needed to." },
        { name = "a gap in the row", description = "One hammer is gone, the working one, the one in between. It is in the Great Forge, at the first anvil. He calls it his father's. It was hers, and she was the nearest he had." },
      } },
    { name = "the hearth",
      description = "Swept, blacked, and laid with kindling and one lump of coal, ready to light. It has been ready for sixty years. It is relaid every spring, in case she was only resting.",
      actions = {
        { "Hold your hand over it", say "Cold. And then, when you have nearly taken your hand away, not quite cold. The Great Forge is only through the wall. It may be that. You decide it is that." },
      } },
    { name = "her apron",
      description = "Leather, on a nail, scorched in a constellation over the left hip where the sparks always went. It has kept the shape of her. She was broad, and not tall, even for a dwarf.",
      things = {
        { name = "the pocket", description = "A stub of chalk, a bent nail kept for a reason, and a boiled sweet in a twist of paper, gone to stone." },
      } },
    { name = "a chalk tally on the wall",
      description = "Strokes in fives, covering the wall from the floor to as high as she could reach, then on from a stool. Every hinge she made that was not it. There are a great many more than twenty thousand. At the end, two strokes with a ring round them, and a third.",
      things = {
        { name = "the ring", description = "Drawn firmly, and gone over. Under it, one rune. The Hinge Master, asked, will tell you it means {i}there{/}." },
      } },
    { name = "the stool",
      description = "Three legs, by the hearth. One leg is a hand shorter and has been made up with a hinge, folded. A reject. It is the only one of hers that anybody has ever found." },
    { name = "the sweeper's broom",
      description = "Behind the door, soft bristle, with a short handle. The Hinge Master does it himself, at the turn of the last shift, when the hall is quiet. He has never told anyone and the whole Forge knows." },
    { name = "the quiet",
      description = "After the hall, it presses on your ears. You can hear the beat through the wall and under it something slower. You work out, after a while, that it is the fire." },
    { name = "a window of mica",
      description = "A pane of grey mica the size of a hand, set in the wall at dwarf eye height, looking onto the trench. She watched the colour of the fire through it while she worked, and never needed one of her own.",
      actions = {
        { "Look through it", say "You go down on one knee. The whole length of the fire, gone silver through the mica, and along it two hundred small figures rising and falling together. From in here it looks like one creature breathing." },
      } },
  },

  exits = {
    { to = "forge_hall", label = "The door with no squeak", description = "Out, on one finger, into noise and red light." },
  },
}
