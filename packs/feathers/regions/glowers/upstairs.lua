-- Upstairs at Castle Regret: the library and what is behind it, the gallery and what is behind that, and the bats.

space {
  id = "gl_library",
  region = "glowers",
  name = "The Library of Regret",
  description = "Three storeys of books round a well of dark air, with iron galleries and a ladder on a rail. Six hundred years of evenings with nobody to talk to. He has read all of it. He has read most of it twice, and has opinions pencilled in the margins, and second thoughts pencilled under those.",
  palette = { bg = "#0e0c0a", text = "#d6cec0", dim = "#74685a", accent = "#c8a060", border = "#44382c" },
  ambience = { dust { glyphs = "·˙", color = "#5a5044", rate = 0.2, speed = 0.1 }, flicker { color = "#e0a860", strength = 0.08 } },

  things = {
    { name = "the diary",
      wonder = true,
      description = "It fills the whole of the lowest shelf round three walls: six hundred volumes, bound alike in black, one for each year. You take one down at random, and another. Every page of every volume has the date at the top, in that fine hand, and beneath it the same two words: {i}Nobody came.{/} Two hundred and nineteen thousand times. The ink never hurries and the hand never slackens. You had thought of it as a record of loneliness. By the third volume you see it as a watch, kept without relief by a man who would not let a single night pass unmarked in case it should be the one.",
      things = {
        { name = "the first volume", description = "The hand is younger, rounder. The first entry is long, and crossed out. The second is longer, and crossed out. The third says {i}Nobody came{/}, and after that he found there was nothing to add." },
        { name = "a volume from the middle", description = "One entry, two centuries back, differs. {i}A tax assessor came. Showed him the roof. He left Tuesday.{/} Then, the next night, with what you would swear is a firmer stroke: {i}Nobody came, but somebody has.{/}" },
        { name = "this year's volume",
          description = "On the desk, open, with the pen beside it. Tonight's date is written. Beneath it the page is still blank. He has not written the words yet. It is past the hour when he does.",
          variants = {
            { when = flag "gl_dined", description = "On the desk, open. Tonight's date, and beneath it, in the fine hand, not two words but three: {i}Somebody came. Pastry acceptable.{/} The ink is still wet. Under the three words a line has been ruled, firmly, as one rules off an account that has finally come out." },
          } },
      },
      actions = {
        { "Count the volumes", say "Six hundred and four. You do not open the last one yet. You run your thumb along the spines instead, year after year after year, and at the end of the shelf there is a foot of empty space, left on purpose, for the ones to come." },
      } },

    { name = "the shelves",
      description = "Oak and iron, floor to vault, every book in its place and the places labelled.",
      things = {
        { name = "the section on vampires",
          description = "Forty feet of it. Every treatise, sermon and penny dreadful written against his kind, collected and annotated.",
          things = {
            { name = "a bestseller", description = "{i}The Fiend of the Seven Hills, or, Blood at Midnight.{/} Three volumes. In the margin of the first murder: {i}No.{/} Of the second: {i}Certainly not.{/} By volume three he has given up and is correcting the punctuation." },
            { name = "a learned treatise", description = "{i}On the Destruction of the Undead, by a Bishop.{/} He has pencilled in the stake chapter: {i}This would hurt.{/} And further down: {i}So would it hurt anyone. I do not see that it proves anything.{/}" },
          } },
        { name = "the section on cookery", description = "Larger than the section on vampires. Every book has been used: there is butter on them. He cannot taste a thing he makes. He cooks out of the books and waits to be told." },
        { name = "the section on roads", description = "{i}Setts and Their Laying. The Camber. Drainage, a Life's Work.{/} These are the ones with the most pencil in." },
        { name = "a shelf of letters", description = "Tied in bundles by decade, all in one sprawling hand on thin foreign paper, with stamps showing palm trees. The top one begins: {i}Still sorry? You old fool. It is HOT here, come and be sorry where there is fruit.{/}" },
      } },

    { name = "the reading desk",
      description = "By the fire: a sloped desk, a lamp with a green shade, a magnifying glass, and a pot of pencils sharpened to needles.",
      things = {
        { name = "the newspaper", description = "The {i}Aldmoor Intelligencer{/}, a fortnight old, brought by the carter. He has read every line, including the notices of sale. In the births column he has ticked three, from Lower Wince, and written the names on a list headed {i}Christening spoons{/}." },
        { name = "a half-written letter", description = "{i}The Count of Regret presents his compliments to the Parish and would be honoured...{/} Next month's invitation. He writes them a month ahead, so as not to be caught short." },
        { name = "a list", description = "{i}Things to say to a guest.{/} Numbered to three hundred. Most are struck out as too forward. Number one, never struck: {i}Ask about THEM. Do not talk about drains.{/}" },
      } },

    { name = "the ladder",
      description = "Oak, on a brass rail that runs all round the room. It is there for reaching the high shelves, and for another thing.",
      actions = {
        { "Push off and ride it", say "You get a foot on the bottom rung and shove. The ladder flies. Shelves pour past, the fire goes by, you take the corner at a lean and fetch up against Theology with a bang. On the rail, where you stopped, the brass is worn bright in the shape of a hand. You are not the first person to do that in this house, though you may be the only one who is not six hundred years old." },
      } },

    { name = "the librarian",
      icon = "v",
      description = "A raven, on a perch by the catalogue, old enough to have gone grey at the bill. It is called Corvin and it knows where every book is. It does not approve of any of them being taken down.",
      things = {
        { name = "the catalogue", description = "A cabinet of ten thousand cards. The raven pulls them with its beak. Under {i}V{/} the first card says only: {i}See everywhere.{/}" },
      },
      actions = {
        { "Ask for a book", say "You name one. The raven looks at you for some time. Then it walks along the perch, hops to the cabinet, pulls a card, and drops it at your feet. The card says {i}OUT{/}. They all say {i}OUT{/}. It has a whole drawer of them made up ready." },
      } },

    { name = "a globe",
      description = "A yard across, in a cradle of brass, painted by somebody who had not been anywhere. The kingdom is large and central. The rest is filled in with whales.",
      things = {
        { name = "pins in the globe", description = "Red-headed, in a wandering line through the southern parts, each with a paper flag and a date. They follow somebody's journey over six hundred years. The newest is in a green patch a long way down, marked {i}here be heat{/}." },
      },
      actions = {
        { "Spin it", say "It turns with a rumble. The whales go by. When it stops, the Glowers are uppermost, as they always are: he has weighted it, so that he can find home." },
      } },

    { name = "a bookcase of very clean books",
      key = "gl_clean_case",
      description = "In the darkest corner: a tall case of scientific works. Everything else in the library has a bloom of honest dust on its top edge. These have none. And one, on the third shelf, sticks out a finger's width, with a spine that reads {i}PULL{/}, by A. Lever.",
      variants = {
        { when = flag "gl_lab_open", description = "The tall case in the corner stands out from the wall on a pivot. Behind it, steps go down in a blue and jumping light. Something hums. {i}PULL{/}, by A. Lever, is back in its place and looks pleased." },
      },
      actions = {
        { "Pull the book", when = no(flag "gl_lab_open"), set "gl_lab_open", fx "shake",
          say "You hook a finger over it and pull. It tips like a handle. A clank in the wall, a grinding, and the whole case swings out with a groan. A blue light flickers on the stair behind. The raven says \"Tch,\" exactly as a person would." },
      } },

    { name = "the fire",
      description = "Small, for the size of the room, and guarded by a brass fender. He is careful of sparks. Everything he has is paper.",
      things = {
        { name = "the chair by it", description = "One. Leather, cracked, with a reading stand on an arm. On the stand, face down, a cookery book. He is on pies." },
      } },

    { name = "a suit of chess",
      description = "A board on a small table, a game in progress. Black is winning. White is also him.",
      things = {
        { name = "the score sheet", description = "Game eleven thousand and six. He has lost every one. He says that it is very hard to surprise oneself, and he will go on trying." },
      },
      actions = {
        { "Make a move for white", say "You push a pawn. It is not a good move. It is, however, one he would never in a thousand years have thought of, and in the morning he will stand looking at it for an hour, delighted." },
      } },

    { name = "the upper galleries",
      description = "Two rings of iron walkway, reached by a corkscrew stair.",
      things = {
        { name = "the top shelf of all", description = "Under the vault, in the dark. Children's books. Fables, an alphabet with woodcuts, a battered {i}Tales for the Hearth{/}. They have been read more than anything else in the room. He cannot have been reading them to anyone." },
        { name = "a bat", icon = "ᵛ", description = "One, asleep, hanging from the gallery rail over Philosophy. It is a long way from the loft. Grist says it comes for the quiet." },
      } },
  },

  exits = {
    { to = "gl_hall", description = "Down the left-hand stair to the hall." },
    { to = "gl_laboratory", description = "Behind the bookcase, down toward the blue light.",
      requires = flag "gl_lab_open", hidden = true },
  },
}

space {
  id = "gl_laboratory",
  region = "glowers",
  secret = true,
  name = "The Laboratory",
  description = "A round vault under the library, full of glass and brass and blue sparks that walk up wires. Levers as tall as a man. A slab with straps. A skylight on chains, for the storm. Every castle of this kind has such a room and something dreadful is always being made in it. You look at the slab. On the slab is a clock.",
  palette = { bg = "#090c12", text = "#c8d2de", dim = "#5a6878", accent = "#70b8f0", border = "#283a50" },
  ambience = {
    flicker { color = "#70b0ff", strength = 0.22 },
    embers { glyphs = "·˙✦", colors = { "#80c0ff", "#c0e0ff" }, rate = 0.12 },
  },

  things = {
    { name = "the moon clock",
      wonder = true,
      description = "It lies on the slab under the skylight with its back off: a clock the size of a cartwheel, all silver wheels and no spring. It does not need one. A lens in the roof gathers the moonlight to a point the size of a pea, and the point falls on a little vane of polished silver, and the vane turns. That is all the power there is. Moonlight weighs less than a breath. He has cut every wheel so fine and hung it so true that a breath is enough, and the whole train goes round in silence, the hands creeping, driven by nothing but the moon looking in. On cloudy nights it stops and waits. It is never wrong, because it only counts the hours that can be seen.",
      things = {
        { name = "the silver vane", description = "Thinner than a leaf, on a jewel no bigger than a poppy seed. The spot of moonlight rests on one blade and the blade moves away from it, slowly, as you would move from a hand laid on your arm." },
        { name = "the dial", description = "No numbers. A ring of small moons, new to full to new, in mother-of-pearl. A single hand. It took him forty years to make, he says, and the first thirty-nine were spent getting the dust off the wheels." },
        { name = "a card propped on it", description = "{i}For the church at Lower Wince, whose clock has been wrong since the great frost. To be left at the door, unsigned.{/} Then: {i}They will not take it if they know.{/}" },
      },
      actions = {
        { "Hold your breath and watch", say "You stop breathing so as not to disturb it. The pea of light sits on the vane. The vane turns. A wheel as fine as a spider's web takes one tooth, and far along the train the hand moves, a hair's width, toward a moon. You let your breath go at last, away from the slab, into your sleeve." },
      } },

    { name = "the great levers",
      description = "Three, in a row, with red handles and brass plates.",
      things = {
        { name = "the first lever", description = "{i}LIGHTS.{/}" },
        { name = "the second lever", description = "{i}SKYLIGHT.{/}" },
        { name = "the third lever", description = "{i}DO NOT.{/} This one has a little cage over it, and a padlock, and a dust sheet over the padlock." },
      },
      actions = {
        { "Throw the first lever", say "A crack, a smell of hot copper, and every globe in the room blazes blue. Sparks climb the two tall rods and jump the gap with a noise like tearing silk. It is magnificent. It is also the only way he has found to get enough light for fine work without a window, and he says the noise is a trial." },
        { "Throw the third lever", say "The cage is locked. You rattle it. From inside the wall comes a hopeful whirr, as of a thing that has not been thrown for a great while and has been ready the whole time. You put the dust sheet back." },
      } },

    { name = "the lightning rods",
      description = "Two copper masts going up through the roof, with a glass ball on each the size of a pumpkin.",
      things = {
        { name = "the spark gap", description = "A thread of blue fire, writhing, between two brass knobs. He lights the spirit lamp at it, to save matches." },
        { name = "a jar of stored lightning", description = "Glass, lined with foil, with a brass rod in the cork. It hums. A label: {i}From the storm of the 9th. A good year. Do not touch the knob.{/} There is a second label, newer, in Grist's hand: {i}He means it.{/}" },
      } },

    { name = "the workbench",
      description = "Thirty feet of it, round the wall, and every inch in use.",
      things = {
        { name = "watchmaker's tools", description = "Laid in rows on green baize, the smallest too fine to see properly. Tweezers like eyelashes. A screwdriver he made by sharpening a needle. Steady hands are the one thing his condition gave him that he has thanked it for." },
        { name = "a music box", description = "Half built, in a walnut case. He is pinning the cylinder from memory with a tune somebody used to hum. He has got as far as the ninth bar and is not sure of the tenth.",
          actions = { { "Turn the handle", say "Nine bars, small and bright, of something like a country dance. Then it stops in the middle of a phrase with the next note hanging. You find you are waiting for it. So, plainly, is he." } } },
        { name = "a tray of failures", description = "Springs, cracked jewels, wheels with one tooth wrong. He keeps them all. Each has a tag saying what he learned from it." },
        { name = "spectacles", description = "With nine lenses on swivels, like a fan. He looks through them in combinations. When he has all nine down, Grist says, his eyes look like the bottom of a well with two fish in it." },
      } },

    { name = "the thing under the sheet",
      description = "In the middle of the room, on a second slab, man-shaped, under a white sheet. Straps hang from the slab. Wires run to it from the rods. This is it, then. You have read the books.",
      actions = {
        { "Lift the sheet", say "You take a corner. You count three. You pull. It is a scarecrow. A good one, in a frock coat, with a turnip head and a face drawn on in ink, smiling, and brass joints at the elbows so that the arms can be set. In one cloth hand is a card: {i}To stand in the garlic field, in place of the one with parsnips. I think it is meant to be me, and it is not kind. This one is waving.{/}", fx "flash" },
      } },

    { name = "the skylight",
      description = "An iron-framed dome in the roof, with shutters worked by chains. Open now. The moon is in it, off centre, and a lens on an arm is following the moon by clockwork.",
      things = {
        { name = "the lens", description = "A yard of ground glass in a brass ring. He ground it himself on the kitchen table over nine winters. It is for the clock. He admits to having tried it once at dawn, with the shutters open one inch and himself behind a door, to see what the fuss was. He says it was very bright and he went and had a lie down." },
      } },

    { name = "shelves of jars",
      description = "Hundreds, in rows, each with something floating in it. You go closer, braced.",
      things = {
        { name = "the first jar", description = "Plums." },
        { name = "the second jar", description = "Damsons. Then quince, pear, and medlar. It is the still room. He bottles. The dates go back four hundred years and Grist says the early medlars are now more of a threat than the Count ever was." },
        { name = "a jar at the back", description = "This one has an eye in it. A glass one, blue, in spirit. A label: {i}Property of Bro. Marrable, V.S. Dropped on the low road. Has not liked to call for it.{/}" },
      } },

    { name = "a blackboard",
      description = "Covered in chalk: gear ratios, the weight of moonlight worked to eleven places, and in one corner, boxed, a different sum. {i}219,000 dinners. Guests: 0. Probability of guest tomorrow:{/} and then a long working that ends, underlined twice, {i}not nought{/}." },

    { name = "the mirror under a cloth",
      key = "gl_mirror_stand",
      visible_if = no(item "gl_patient_mirror"),
      description = "On a stand by the bench, something flat and hand-sized under a square of black silk.",
      things = {
        { name = "a note pinned to the silk", description = "{i}The glazier's mirror. It works. I have looked once. I look like my father, and I had hoped not to. Whoever finds this may have it. I should rather be told, by a guest, across a table.{/}" },
      },
      actions = {
        { "Take the mirror", once = true, give "gl_patient_mirror",
          say "You lift the silk. A hand glass, black-framed. You look into it and see the laboratory, sharp and bright, and in the middle of it nobody: a you-shaped piece of nothing with a workbench showing through. You turn it toward the stair. In the glass, at the top, a tall thin figure has come to see what the noise was. You look round. The stair is empty. You look back, and the reflection gives you a small, formal bow.", fx "sparkle" },
      } },
    { name = "the empty stand", visible_if = item "gl_patient_mirror",
      description = "A square of black silk, folded, and the note. He has added a line since you were last here, though you did not see him come: {i}Thank you. Do not tell me what I look like. Tell me I have not changed.{/}" },

    { name = "a cat",
      icon = "c",
      description = "White, asleep in the one warm place, which is on top of the humming jar. Its fur stands straight out all over. It has never known any other way to be." },
  },

  exits = {
    { to = "gl_library", description = "Up the blue-lit stair and out past A. Lever." },
  },
}

space {
  id = "gl_gallery",
  region = "glowers",
  name = "The Long Gallery",
  description = "A corridor two hundred paces long, with windows down one side and Counts of Regret down the other. Forty generations, in oils, in gilt, glaring. The eyes follow you. That is usual in such places. What is less usual is that as you pass each one, he has plainly just looked away.",
  ambience = { dust { glyphs = "·˙", color = "#54485a", rate = 0.15, speed = 0.1 }, stars { glyphs = "·", color = "#4a4458", rate = 0.1 } },

  things = {
    { name = "the ancestors",
      description = "Life size and larger. Black armour, black velvet, black looks.",
      things = {
        { name = "Count Radomir the First", description = "The founder: a giant in wolfskins with one foot on a heap of something. The card says: {i}Built the castle. Dreadful man. The heap is turnips, it was a good year.{/}" },
        { name = "Countess Ottoline the Pitiless", description = "In red, with a hawk on her wrist and a look that could cut glass. The card: {i}Was never once pitiless that I can find. Foreclosed on a mill, then gave it back. The name was her idea.{/}" },
        { name = "Count Ulrich the Flayer", description = "The beekeeper. He has been painted in armour, but if you look, the thing in his mailed fist is a honey dipper." },
        { name = "Great-Uncle Tancred", description = "The original of the gargoyle. The likeness is exact. He is the only ancestor to be painted smiling and you wish that he had not." },
        { name = "the cards", description = "Every portrait has one, in the fine black hand. He has gone into the family history with great care, to learn what he came from. It has turned out to be forty generations of people who were mostly bark." },
      },
      actions = {
        { "Glare back", say "You pick Radomir and give him your worst. He holds it. You hold it. In the corner of your eye, Ottoline's hawk turns its painted head to watch." },
      } },

    { name = "the unfinished portrait",
      wonder = true,
      description = "At the end of the row hangs the present Count, and you stand in front of it for a long time before you understand it. He would not appear in a glass, so the painter could not be given a likeness to check by: she had to look, and paint, and look. She began at twenty. The Count's left hand, at the bottom, is done in the tight bright strokes of somebody young and sure. Higher up the brush loosens. By the collar it is broad and wise and wastes nothing. The face is painted by an old woman, in a few strokes that shake, and it is the truest face in the gallery. She worked on it for sixty years. He did not change by a hair, and she is in every inch of it, growing old from the bottom of the canvas to the top. The eyes are not done. There are two ovals of bare ground where they should be.",
      things = {
        { name = "the signature", description = "Low on the left, in fresh vermilion: {i}Agnes Varley, begun.{/} High on the right, in a thread of grey: {i}A.V., who ran out of days and not of looking.{/}" },
        { name = "the bare eyes", description = "She left them for last, as painters do. Grist's grandfather told him she would stand in front of the Count for an hour with the brush loaded and then clean it. She said they kept being a different colour, and that she wanted to do them on a night when he was happy." },
        { name = "her stool", description = "Still in front of it. Three legs, a seat worn to a saddle. Her palette is on it, the paint hard as stone, and one brush laid across, loaded with a red that has not been made since." },
      },
      actions = {
        { "Stand where she stood", say "You put your feet in two worn places on the boards. From here the whole picture comes right, the hand and the shaking face together. You see what it is: a portrait of sixty years of paying attention, with a vampire in it." },
      } },

    { name = "the windows",
      description = "Forty, pointed, down the outer wall, with stone seats beneath. They look east. Every one has shutters of iron, a foot thick, folded back. At cock-crow they are closed by a weight and a chain, all forty together, with a noise the village takes for thunder.",
      things = {
        { name = "the moon in the windows", description = "It rises through them one at a time as you walk the gallery, forty moonrises in two hundred paces. He takes this walk every clear night. He calls it going out." },
        { name = "a window seat with a cushion", description = "The twentieth. The cushion is worn flat. From here you can see the low road as a pale ribbon. This is where he sits to look at his setts." },
      } },

    { name = "a small portrait of a boy",
      key = "gl_boy_portrait",
      description = "Hung low, between two giants, where a child could see it. A boy of seven in a blue coat, standing in a field in full sun, squinting, with a tin sword. It is the only picture in the gallery painted out of doors by day. It is also crooked.",
      variants = {
        { when = flag "gl_sunroom_open", description = "The boy in the blue coat, in the sun, with his tin sword. He hangs straight now. Beside him a strip of panelling has slid away, and a warm yellow light is coming through the gap." },
      },
      actions = {
        { "Straighten it", when = no(flag "gl_sunroom_open"), set "gl_sunroom_open",
          say "You cannot leave it. You put a finger to the corner and level it. Something behind the frame goes {i}tick{/}. The panelling beside it draws back a hand's breadth, then a door's breadth, and light falls out across the gallery floor. It is yellow, warm and steady, and in this house, at this hour, it has no business to be there at all.", fx "wash" },
      } },

    { name = "a suit of armour holding a tray",
      description = "At the gallery's midpoint. On the tray: a decanter of water, a glass, and a plate of biscuits under a dome. Grist renews them daily, for visitors to the gallery. The biscuits are fresh. Arithmetic suggests he has baked some two hundred thousand.",
      actions = {
        { "Take a biscuit", say "Shortbread, with a little caraway. You eat it looking at Great-Uncle Tancred. You take another. Far below, in the pantry, a butler who has been listening for the chink of that dome for fifty-one years sits down suddenly on a flour bin." },
      } },

    { name = "the gap in the row",
      description = "Between the thirty-ninth Count and the present one, a pale oblong on the wall and an empty hook.",
      things = {
        { name = "the card", description = "It is still pinned up, under nothing. {i}My father. Taken down at my mother's request and stored face to the wall. I look in on him at midwinter. He has not improved.{/}" },
      } },

    { name = "the carpet runner",
      description = "Two hundred paces of crimson. Down the middle, the pile is gone in a single track, with a wider worn place before each window." },

    { name = "a harpsichord",
      description = "Under the tenth window, black, with the keys reversed. The lid is painted inside with a hunting scene in which the stag has got clean away.",
      things = {
        { name = "the music on the stand", description = "A country dance, copied by hand. Nine bars are inked. The tenth is pencilled, rubbed out, pencilled again, a dozen different ways." },
      },
      actions = {
        { "Play a note", say "You press one key. It is in perfect tune. It rings down the whole gallery, and forty ancestors, to a man, look pained." },
      } },

    { name = "a bat on a curtain rod", icon = "ᵛ",
      description = "Small, brown, the right way up for once, grooming a wing. It watches you eat the biscuit with open envy." },

    { name = "the far door",
      description = "At the end of the gallery, iron-bound, with a notice: {i}East Tower. Unsafe.{/} Then, smaller: {i}It is not unsafe. It is where I keep my father. R.{/}" },
  },

  exits = {
    { to = "gl_hall", description = "Down the right-hand stair, past the banister that somebody slides on." },
    { to = "gl_sunroom", description = "Through the panelling beside the boy, into the light.",
      requires = flag "gl_sunroom_open", hidden = true },
  },
}

space {
  id = "gl_sunroom",
  region = "glowers",
  secret = true,
  wonder = true,
  name = "The Morning Room",
  description = "You step through the panel into a summer morning. It is a round room with a domed ceiling, and somebody has painted it, wall and dome and all, as a hayfield at about eight o'clock: sky, larks, a hedge in flower, the sun a hand's breadth clear of a line of elms. Four hundred lamps behind amber glass give the light and a stove under the floor gives the warmth. It is not daylight. It is what a man remembers of daylight after six hundred years, done as well as he could do it. The larks are slightly too large, and the shadows fall in two directions. The sky is a blue you would know anywhere.",
  palette = { bg = "#16130a", text = "#e8e0c8", dim = "#8a8060", accent = "#f0c860", border = "#5a5030" },
  ambience = {
    shimmer { color = "#f0d080", strength = 0.12 },
    dust { glyphs = "·˙∙", color = "#c0a860", rate = 0.3, speed = 0.15 },
  },

  things = {
    { name = "the painted sun",
      description = "A disc of gold leaf as wide as a shield, low on the eastern wall, with a lamp behind every inch of it. You cannot look straight at it. He got that right.",
      things = {
        { name = "the gold leaf", description = "Laid in squares no bigger than a thumbnail, each rubbed down with a dog's tooth. Round the rim he has put a ring of paler leaf, and outside that a blush of rose on the plaster, because a sun in the morning is never just a circle." },
        { name = "a pencil mark beside it", description = "On the wall, very small. A row of ticks and a date, then another row, another date. Each time he has moved the sun, by the width of a gold square, trying to put it where it was. The newest note says: {i}Higher, I think. I am no longer sure and there is nobody to ask.{/}" },
      },
      actions = {
        { "Tell the room where the sun should be", say "You look at it properly, as a person who was out in a real morning not long ago. A little too low for the length of those shadows. You say so, aloud, to nobody. Behind you at the panel there is the faintest sound of a pencil, writing it down." },
      } },

    { name = "the painted sky",
      description = "The whole dome. Blue at the top, paling to the east, with eleven small clouds.",
      things = {
        { name = "the blue", description = "He ground it from a stone that comes over the sea, and he must have used a fortune's worth. It is the true colour. He kept it right for six hundred years with nothing to compare it to but a child's coat in a portrait." },
        { name = "the larks", description = "Three, too big, each with its beak open. He has painted the song as well, in a manner of speaking: there is a little line of gold going up from each one, wavering, the way the sound goes." },
        { name = "a cloud with a face", description = "One of the eleven has an eye and a nose. It is the first one he did. He was seven and that was how clouds were done. He has repainted everything in the room a dozen times and has never touched it." },
      } },

    { name = "the hayfield",
      description = "All round the walls, life size: long grass with the dew on, sorrel, moon daisies, a path trodden through.",
      things = {
        { name = "the dew", description = "Each drop a dot of white with a smaller dot of blue beneath. There are a great many drops. You begin to see how he has spent his evenings." },
        { name = "the trodden path", description = "It runs from the panel where you came in, through the grass, to a gap in the painted hedge. In the gap, far off and no taller than your finger, two children are walking away. One has a blue coat. The other is looking back." },
        { name = "a real daisy", description = "In a pot on the floor against the painted ones, so exactly placed that you took it for paint. It is alive. It has grown here under the lamps, pale and leaning, and it has turned its face to the gold sun." },
        { name = "a hare in the grass", description = "Painted sitting up, ears lit pink from behind by the low sun. He has remembered that. Six centuries on, he has remembered that a hare's ears let the morning through." },
      } },

    { name = "a wicker chair",
      description = "In the middle of the floor, facing east, with a rug. The only furniture. The arms are worn. He comes here before cock-crow, Grist says, when the real one is about to happen outside the iron shutters, and sits until it has gone by.",
      actions = {
        { "Sit in it", say "You sit. The lamps hum. The stove ticks under the floor. The gold sun stands over the elms, warm on your face, and for a minute your shoulders believe it entirely. Then you notice that nothing moves. No grass bends. The larks hang where they are. It is always eight o'clock. You get up, quietly. You have a real morning waiting outside, for nothing, any day you like, and you had not thought to be grateful." },
      } },

    { name = "the lamps",
      description = "Four hundred, behind panes of amber glass set into the painting: in the sun, along the horizon, behind the highest clouds.",
      things = {
        { name = "the oil cans", description = "A row of twelve, by the panel, with long spouts. Filling and trimming four hundred lamps takes him from midnight until three. He does it every night, so that the morning is ready." },
        { name = "one lamp that is out", description = "Low down, behind a poppy. The wick has burned away. You could tell him. You have the feeling that he knows already, and that mending it is tomorrow's happiness, saved up." },
      } },

    { name = "a paint table",
      description = "By the wall, under a cloth. Shells of colour, brushes in a jar, a rag.",
      things = {
        { name = "the brushes", description = "Most have a dozen hairs. One has three. That is the one for dew." },
        { name = "a sketch", description = "Pinned to the table: the same field in charcoal, but with a figure in it, tall, in a cloak, standing in the grass with its face up. He has drawn it and rubbed it out and drawn it. It is not on the wall. He will not put himself in." },
      } },

    { name = "the warm floor",
      description = "Tile, the colour of baked earth, heated from below. He was most particular about it. He says that what he remembers best is not the light. It is how the ground felt, through his shoes, about an hour after the sun had been on it.",
      actions = {
        { "Take your boots off", say "You stand on it in your socks. He is right. It is exactly that. It is a doorstep in June. You stay there some time, in a vampire's secret room, with a hole in one toe." },
      } },

    { name = "a child's kite",
      description = "On a nail, by the panel: paper and split cane, a tail of rag bows. The paper is brown and has been mended along every fold. It was last flown on a morning. He keeps it in the only room he has that is one." },

    { name = "the smell",
      description = "Hay. You look for it and find a muslin bag behind the wicker chair, stuffed with it, cut this summer on the south side of the sixth Glower. The carter brings a bag each June and has been told it is for the mule." },

    { name = "the shadows",
      description = "He painted them falling west from the elms and east from the hedge. He knows it is wrong. A note on the skirting says so: {i}One of these is mistaken. I cannot recall which, and I had rather keep both than lose the right one.{/}" },
  },

  exits = {
    { to = "gl_gallery", description = "Back through the panel into the moonlight and the ancestors." },
  },
}

space {
  id = "gl_bat_loft",
  region = "glowers",
  name = "The Bat Loft",
  description = "The whole inside of the west tower, hollow from floor to cone, crossed by old beams. It is warm and it smells of fur and it is never quite silent. You look up. The roof is not slate. The roof is bats, shoulder to shoulder, by the hundred thousand, hanging in folds like a velvet curtain, and every so often the whole curtain breathes.",
  palette = { bg = "#0c0a0c", text = "#cec6ca", dim = "#665c62", accent = "#b08898", border = "#3c2e36" },
  ambience = {
    dust { glyphs = "ᵛ˅·", color = "#54444c", rate = 0.5, speed = 1.0 },
  },

  things = {
    { name = "the evening flight",
      wonder = true,
      description = "It begins while you are standing there. One bat lets go. Then ten. Then the curtain comes apart all at once, without a signal, and the tower is full of wings: a hundred thousand of them, pouring round the hollow in a rising spiral, faster and faster, never touching each other or the walls or you. The air goes soft and thick with the wind of them, and the sound is like rain on a tent. They wind up through the tower and out by the high louvres in a black rope that does not break for a quarter of an hour, and you can see it through the slats, going out over the Glowers against the last green of the sky, unwinding and unwinding over the dark land. Then the last one is gone. The loft is very big and very quiet, and a single tuft of fur comes turning down through the place where they were.",
      things = {
        { name = "the spiral", description = "Always the same way round. Grist's father chalked an arrow on the wall and it has never been wrong. Nobody leads. If you watch one bat you lose it at once. If you watch none of them you see the shape they make, turning like water going down a drain, only upward." },
        { name = "the wind of it", description = "It lifts your hair and it smells of warm dust and gnats. Not one wing brushes you. A hundred thousand creatures go past your face in the dark at speed, and each one has room." },
        { name = "the rope over the hills", description = "From the louvre you can follow it for miles: a twist of smoke leaning away east, thinning, until it is a grain in the dusk and then only the dusk. The village sees it every night and bolts the last bolt. It is the worst omen in the Glowers, and it is a hundred thousand small animals going out to eat midges off the garlic." },
      },
      actions = {
        { "Stand in the middle", say "You walk to the centre of the floor and stop. The spiral opens round you without a flutter and closes above your head. For a quarter of an hour you stand in a chimney of wings with the last light coming down it. When it is over you find that your arms are held a little out from your sides and that you are smiling. You do not remember doing either.", fx "wash" },
      } },

    { name = "the roost",
      description = "The cone of the tower, lined with them. Brown, mostly, with paler stomachs, each no longer than your thumb.",
      things = {
        { name = "a cluster of young", description = "Left behind in a knot when the mothers fly, pink and hairless, squeaking. A stove pipe runs up the wall just there. It was put in for them, after a cold spring, and Grist stokes it from below." },
        { name = "one very old bat", description = "Grey at the muzzle, hanging apart on its own beam. It does not fly out any more. A saucer of mealworms is set on the beam each evening and it eats them hanging, with great dignity, like a clubman dining alone." },
        { name = "the ledger of bats", description = "On a lectern by the stair. The Count has tried to count them, every year, on the night of the first frost. The entries read: {i}Many. Many. A great many. More, I believe. Many.{/}" },
      } },

    { name = "the beams",
      description = "Oak, a yard thick, crossing the tower at six levels. Ladders go from one to the next.",
      things = {
        { name = "the lowest beam", description = "At head height. Carved into it, in a row, forty small notches with initials: every Count of Regret, measured against the beam at the age of seven. The last notch is marked {i}R.{/} There was room left for more." },
        { name = "a hammock", description = "Slung between two beams, twenty feet up. It is not for a bat. It has a pillow and a book. Grist says only: \"His Lordship finds it companionable, sir. And they find him warm. Which, sir, he is not, so I think that they are being polite.\"" },
      } },

    { name = "the floor",
      description = "Boarded, and covered a foot deep in what a hundred thousand bats leave behind.",
      things = {
        { name = "the guano", description = "Dry, dark, crumbling. It is shovelled out every spring into sacks and goes down on the carter's wagon. This is the secret of the Lower Wince garlic. The village thinks it buys its dressing from a merchant in Aldmoor. The merchant is a box number. The box is Grist." },
        { name = "a shovel and sacks", description = "Stencilled {i}BEST FOREIGN DRESSING, ALDMOOR{/}. The Count would send it down for nothing. They would not take it. So he charges them, a fair price, and spends the money on their road." },
        { name = "boot prints", description = "One pair, narrow, long, going to the middle of the floor and stopping. He stands in the middle too." },
      } },

    { name = "the louvres",
      description = "Slatted openings high in the cone, where they go out. The slats are worn round by wings.",
      things = {
        { name = "the view through the slats", description = "East, away from the village: hills beyond the hills, a river, forest, all blue in the dusk. Country you have not been to. The bats have. They are back by morning and they have never said." },
      } },

    { name = "a bat that has stayed behind", icon = "ᵛ",
      description = "On the rail of the stair, at the level of your face, upside down, looking at you. It has ears like two leaves and a nose that somebody sat on. It is quivering slightly, all over, with interest.",
      actions = {
        { "Hold out a finger", say "It thinks about it. Then it walks across, hand over hand, on its thumbs, and hangs from your finger by its feet. It weighs nothing. You can feel its heart, very fast, like a watch. It yawns at you: a pink mouth, and a full set of the smallest fangs in the Glowers. Then it drops, opens, and is gone up the tower after the rest." },
      } },

    { name = "a bell with no clapper",
      description = "The tower was a belfry once. The bell still hangs in the middle, green, vast, and furred inside with sleeping stragglers. The clapper was taken out four hundred years ago, the card says, {i}so as not to wake them{/}.",
      actions = {
        { "Tap it with a knuckle", say "A soft, deep {i}mmm{/}. Inside, forty pairs of ears swivel toward you at once. You apologise to a bell." },
      } },

    { name = "the spiral stair",
      description = "Stone, narrow, with a rope for a rail. Every step has a saucer on it. Water, for the ones too young to fly to the river." },

    { name = "moths",
      description = "They come in at the louvres toward the stair lamp, which is a mistake, in this tower of all towers. The lamp has a notice hung on it: {i}Put out at dusk. It is not fair on them.{/}" },

    { name = "an owl box",
      description = "Nailed under the lowest louvre. Empty, and has been for a century. He put it up hoping. The owls will not come. He says he quite understands, with the neighbours being what they are, and he keeps it clean." },

    { name = "the quiet afterwards",
      description = "When they have gone the tower ticks as it cools. Somewhere a saucer rocks and settles. You can hear the young ones, high up, and the stove, and the very old bat eating a mealworm with deliberation." },
  },

  exits = {
    { to = "gl_hall", description = "Down the spiral stair, minding the saucers." },
  },
}
