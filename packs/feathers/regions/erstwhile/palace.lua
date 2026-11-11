-- The Old Palace: the great stair, the throne room, the kings in stone, and behind a sealed
-- door the afternoon that was struck out of the week.

space {
  id = "er_palace",
  region = "erstwhile",
  name = "The Old Palace",
  description = "A hundred steps bring you up to the forecourt and the long pale front. The doors are open. They were left open: there is a wedge under each. Inside is a hall of chequered marble with a stair going up in two wings, a roof that is mostly sky, and a full-grown oak standing in the middle of the floor where a chandelier used to hang. The palace is the quietest place in the city. The dead do not come up here much. They were not invited.",

  things = {
    { name = "the great stair",
      description = "Two flights of white marble curving up to a gallery, with a balustrade of stone lions holding shields. Every third lion is missing. The treads are dished in the middle, and deepest on the fourth step, where for four hundred years every courtier paused to see who was looking.",
      things = {
        { name = "the lions", description = "Each holds a shield with the arms of a king. You go up counting reigns. Near the top there is a lion with a shield that has been dressed flat, and the lion has been left looking at it." },
        { name = "the fourth step", description = "A hollow you could keep a goldfish in. You stand in it, turn, and look down the hall, as they did. Nobody is looking. It is still a very good place to stand." },
        { name = "a dropped fan", description = "On the ninth step, real, ivory, open. It has been rained on for ninety years. Nobody came back for it, and no footman picked it up, and that tells you as well as anything how fast they went." },
      } },
    { name = "the oak in the hall",
      wonder = true,
      description = "It came up through the black square in the exact centre of the floor, and has lifted the marble round it into a low dome of tilted slabs, black and white, like a chessboard somebody has punched from below. The trunk is four feet through. The crown goes out through the roof and has taken the roof with it. Rooks live at the top. Halfway up, grown deep into a fork where it was carried by the sapling, hangs a brass chandelier of sixty branches, with a few stumps of candle still in the sockets. The tree did not break it. It picked it up.",
      actions = {
        { "Stand under it", say "Green light and the sound of leaves, in a king's front hall. An acorn drops and bounces on the marble and rolls to your foot. You pick it up. Ninety years ago another one did exactly that, on the Friday, into an empty house, and nobody was here to sweep it out." },
      } },
    { name = "the porter's chair",
      description = "A hooded leather chair by the door, for a man to sit in a draught all night. A grey porter is in it, with a staff, awake. He is the only ghost in the palace. He was told to stay until the family returned, and he is a person who does what he is told.",
      things = {
        { name = "his staff", description = "Black, with a silver knob. He knocks it on the floor when a visitor enters, twice for gentry and once for trade. For you he hesitates, and then knocks one and a half." },
        { name = "the visitors' book", description = "On a stand beside him, real, swollen with damp. The last signed page is a Wednesday, and full. The next has a date written at the top in a clerk's hand, and four thousand and nine marks down the margin, crosses mostly, with here and there a name. They ran out of lines and went on round the edges." },
      },
      actions = {
        { "Ask if the King is at home", say "\"His Majesty is giving audience,\" he says. \"In the Audience Court. I regret that the doors are closed.\" You ask when they will open. He considers, as a careful servant does who has been asked something a little above his place. \"They were closed from the outside, sir,\" he says. \"By gentlemen of the Council. With wax. His Majesty has not, to my knowledge, been informed.\"" },
        { "Ask where everybody went", say "\"To the country, sir. For a short time.\" He looks straight ahead. \"The Chancellor gave the order himself, at four in the morning, in his shirt. I held the door. I counted eleven hundred persons and two hundred and six carts. Nobody counted me. I do not complain of it. Somebody must be in.\"" },
      } },
    { name = "the chequered floor",
      description = "Black and white marble, laid in squares a yard across. Where the roof is open it is green with moss on the white squares only. The black ones get too hot in summer.",
      things = {
        { name = "the cart tracks", description = "Across the marble from the stair to the door: two white scars, gouged, with chips knocked out at every joint. They brought handcarts into the great hall and loaded them at the foot of the stairs. A king's house, and they wheeled barrows over it." },
        { name = "a chess game", description = "In one corner somebody has set up acorn cups and snail shells on the squares. It is mid-game. The porter says that he plays the rooks. He means the birds. He says they are improving." },
      } },
    { name = "the portraits",
      description = "Up the wall of the stair: gilt frames, twenty of them, each eight feet high. The canvases went on the carts. The frames stayed, and in each frame now is whatever is behind it: a square of plaster, a square of sky, a square of ivy with a nest in it.",
      things = {
        { name = "the frame with the sky in it", description = "The wall behind has fallen out. It holds a view of the city, the river and the hills, with weather. It is the best picture in the collection and it changes." },
        { name = "the last frame", description = "At the top of the stair. There is a canvas in this one. It was not taken. It has been painted over from edge to edge with one coat of grey, and that was done with a house brush. In a low sun, the porter says, you can make out the shape of a man standing with his arm out." },
        { name = "the brass labels", description = "Under each frame, a name and a number and a pair of dates. The last label has been unscrewed. The four screw holes are there, in a neat oblong, and a paler patch of wall the size of a hand." },
      } },
    { name = "the forecourt",
      description = "Gravel, once raked, with a turning circle for coaches and a mounting stone. Wild thyme has taken the gravel. From the top step you can see the whole of Erstwhile laid out below: the grey streets, the market awnings, the playhouse flag, and one thread of real smoke going up from one chimney.",
      things = {
        { name = "the sentry boxes", description = "Two, striped, either side of the doors. One has fallen over. In the other a wren has built, in the corner where a man would lean his head." },
        { name = "a sundial", description = "On a pillar in the turning circle. It tells the right time. In Erstwhile that makes it a curiosity, and the dead come up the steps on Sundays to look at it and shake their heads." },
      } },
    { name = "the kitchens",
      description = "Down a stair off the hall: a vaulted cave with six hearths, spits long enough for an ox, and a table forty feet long. Ferns grow in the chimneys.",
      things = {
        { name = "the long table", description = "Laid out along it, under a skin of dust and plaster, are the makings of a banquet. Pie dishes with nothing in them. Moulds. A sugar loaf gone to a brown stump. A hundred and twenty covers for a Thursday night that the kitchen had not been told was cancelled." },
        { name = "the bill of fare", description = "Chalked on a slate by the door. {i}Thursday. To follow the Audience. First remove: carp. Second: a raised pie of venison. A subtlety in sugar, of the Palace.{/} And at the bottom, in the cook's hand, underlined twice: {i}H.M. says to make enough for the people in the yard also. How many is that? NOBODY KNOWS.{/}" },
        { name = "the back door to the lane", description = "Small, and worn. It runs down behind the houses to an inn yard. A plain coat hangs on a nail beside it, real, moth-eaten, with a pair of plain shoes underneath. The scullions were told never to see who took them." },
      } },
    { name = "the Chancellor's door",
      description = "Off the hall, a door of dark wood with a brass plate: {i}THE LORD CHANCELLOR. Knock and Wait.{/} It is locked. There is no keyhole on this side.",
      things = {
        { name = "the brass plate", description = "Polished thin. Under {i}Knock and Wait{/} somebody has scratched with a pin, a long time ago, a little at a time, on different days: {i}and Wait, and Wait.{/}" },
        { name = "a bench outside", description = "Hard, narrow and without a back. It was designed by the Chancellor himself. Four thousand people sat on it over the years, one at a time, and came away having been told that the matter would be looked into." },
      },
      actions = {
        { "Knock and wait", say "You knock. You wait. You wait rather longer than you meant to, since the bench, it turns out, has a way of keeping a person. Nothing comes. That was always the answer. It was only that on one day of one week, a little further down the hall, a different door had a different man behind it." },
      } },
    { name = "the gallery",
      description = "At the head of the stair, running round three sides of the hall. Doors open off it: to the throne room, to a hall of statues, and to the library. All three stand ajar. The palace was not locked. A thing was sealed inside it, and after that nobody thought there was anything else to steal." },
    { name = "a weather stain",
      description = "On the wall under the open roof, where ninety years of rain have run down the plaster. It has made, quite by itself, a map of somewhere: coasts, a river, an inland sea. The porter has given the places names. He will not tell you them." },
    { name = "the lit window",
      description = "From inside you find it: the middle window of the first floor, behind the gallery, at the end of a short passage. Afternoon sun lies on the passage floor in a long gold oblong. You look out through the glass at the sky. The sun is somewhere else altogether. The light is not coming in. It is coming from under a pair of doors at the end of the passage, and going out." },
  },

  exits = {
    { to = "er_high_street", label = "Down the hundred steps", description = "Back to the Processional Way." },
    { to = "er_throne_room", description = "The great doors off the gallery, one of them off its hinge." },
    { to = "er_statues", description = "A long hall lined with marble kings." },
    { to = "er_library", description = "A door with an owl carved over it." },
    { to = "er_gardens", description = "Out through a garden front, into what was a garden." },
  },
}

space {
  id = "er_throne_room",
  region = "erstwhile",
  name = "The Throne Room",
  description = "A long room with tall windows down one side and a dais at the end. Swallows go in and out of the windows. The hangings went on the carts, and the carpet, and the candlesticks. They left the throne. It was too big for the door: it had been built in the room, four hundred years before, by people who did not expect to move.",

  things = {
    { name = "the throne",
      description = "Oak, black with age, with a high back carved into a lion's head and arms worn pale where hands gripped them. It is not grand. It is very large and plain and looks as much like a settle as anything. There is a dust sheet half over it, as if somebody began to cover it for the summer and was called to help with a cart.",
      things = {
        { name = "the seat", description = "A cushion, real, red once. There is a dip in it. Ninety years have not filled it out. He was a heavy man and he sat a good deal on one side, leaning to hear." },
        { name = "the left arm", description = "Worn deeper than the right. He leaned on it, towards whoever was speaking. Somebody has cut a row of small notches along the underside with a penknife, a hundred or more, the way a bored man counts speeches." },
        { name = "the lion's head", description = "Over where his own would be. Its mouth is open. A swallow has built in it, and the lion now appears to be eating straw." },
        { name = "the dust sheet", description = "Holland cloth, grey with weather. It was thrown over in a hurry and has slid, and nobody has pulled it straight. You do." },
      },
      actions = {
        { "Sit on it", say "You climb up. Your feet do not reach the dais. It is a seat built for somebody to be looked at in, and from it you can see every inch of the room, every door, and the back of every bench. Nobody could have crept up on him. Everybody could get to him. You sit there some time, leaning on the left arm, and find that you are listening." },
      } },
    { name = "the dais",
      description = "Three steps of red stone. On the top step, to the right of the throne, is a stool. It is the Chancellor's. He stood, by custom, and the stool was there so that everybody could see him not using it.",
      things = {
        { name = "the stool", description = "Unworn. Polished. A small brass plate on it says {i}Of the Council{/}. It is the only seat in the room that was taken on the carts, and somebody brought it back, later, and put it here very exactly." },
        { name = "the top step", description = "Two shallow dips in the stone, close together, beside the stool. A man stood here through four reigns with his weight on his heels, saying no." },
      } },
    { name = "the petitioners' bar",
      description = "A rail of brass across the room, twenty feet from the throne, with a gate in it. Subjects stood behind it to be heard. The gate has been lifted off its pins and laid on the floor, neatly, to one side.",
      things = {
        { name = "the gate", description = "It was not broken. Somebody with large hands took it off, as you would take a door off for a party, and set it down where nobody would trip." },
        { name = "the worn floor", description = "Behind the bar the boards are trodden grey in one spot, the width of a pair of feet. In front of it, between the bar and the throne, they are as new, with the saw marks on. For four hundred years nobody crossed that twenty feet. Then there is a track across it as wide as a road, made in one day." },
      } },
    { name = "the tall windows",
      description = "Six, floor to cornice, facing west over the gardens. The glass is out of five. The sixth is whole, and somebody has scratched on it with a diamond, small, low down.",
      things = {
        { name = "the scratched pane", description = "{i}What is it for, if not this?{/} There is no name. The hand is the hand on the slate at the baths." },
        { name = "the swallows", description = "They come in at the first window and go out at the fifth, all day, with a great deal to say. They are the nearest thing to a court that the room has left, and they are in favour of everything." },
      } },
    { name = "the benches of the Council",
      description = "Down the right-hand wall: nine seats with high backs and a desk before each. Nine inkwells, dry. Nine pens, laid down in a row at one angle.",
      things = {
        { name = "the ninth desk", description = "The inkwell has been thrown. There is a black star on the wall opposite, six feet up, with a run down from it. It has been there ninety years. It was the only vote the Council lost." },
        { name = "a sheet of minutes", description = "Under the first desk, where it slid. {i}Wednesday. Present, the nine. H.M. proposes that at tomorrow's audience he will hear every person who attends, and not the usual one. The Chancellor: there are a great many. H.M.: good. The Chancellor: they will ask for things. H.M.: I am counting on it.{/}",
          actions = {
            { "Read on", say "{i}The Chancellor desires it noted that the Treasury cannot bear it. H.M. desires it noted that he has looked in the Treasury, that it is full, and that he has not been able to discover what it is for. The Council rose at six without a vote. H.M. went to the baths.{/}" },
          } },
      } },
    { name = "the sealed doors",
      key = "er_sealed_doors",
      description = "At the side of the dais, a pair of doors lead through to the Audience Court, where the King heard petitions. They are shut. A band of red tape has been drawn through both handles and the knot buried in a cake of wax the size of a saucer, stamped with nine small seals in a ring. The gold light you saw from the hall comes out from under them and lies across the dais. It is warm on your boots.",
      variants = {
        { when = flag "er_seal_broken",
          description = "At the side of the dais the doors to the Audience Court stand a hand's width open. The tape hangs from one handle with half a cake of wax on it. Light comes through the gap as it does through a barn door at harvest: gold, with dust in it, and noise behind." },
      },
      things = {
        { name = "the wax", description = "Dark red, cracked across with age, and stamped nine times. Each seal is a different small device: a key, a scale, a tower. They are the nine of the Council. There is a space in the middle of the ring, where by law a tenth and larger seal should go. It is smooth." },
        { name = "the light under the doors", description = "You put your hand in it. Sun, on your palm. You have felt this exact warmth before, at the bottom of a hole in the castle, coming off a sheet of vellum in a frame." },
        { name = "a sound", description = "With your ear against the wood: a great many people in a large room, and a voice saying something short, over and over, and each time a cheer." },
      },
      actions = {
        { "Try the doors", when = no(flag "er_seal_broken"),
          say "You take a handle in each hand and pull. The tape holds. The wax does not so much as creak. It is a Council seal, and you find that your hands are not willing to break it, without knowing what it was put on for. Nine careful men thought this door ought to be shut. You would like to read their reasons first." },
        { "Break the seal", when = all { flag "er_knows_thursday", no(flag "er_seal_broken") }, set "er_seal_broken", fx("wash", "#f0d090"),
          say "You have read their reasons. You put your thumbs to the wax and push. It goes with a crack like a dry stick, and the nine seals fall on the dais in pieces, the key, the scale, the tower. There was never a tenth. He did not shut himself in. The doors swing a hand's width by themselves, and a Thursday afternoon comes out round your feet like water from under a sluice." },
      } },
    { name = "the musicians' gallery",
      description = "Over the entrance, behind a carved screen. A stand of music is still up, and on it, held with two pegs, the last piece that was played.",
      things = {
        { name = "the music", description = "{i}A Fanfare for the Entry of His Majesty, to be played ONCE.{/} Somebody has written across the top in pencil: {i}he says play it for each of them. All four thousand. We shall want beer.{/}" },
        { name = "a trumpet", description = "Left on the bench, green, with the mouthpiece worn and a dent where it was dropped. The trumpeter's lip gave out, the note says, at about petitioner nine hundred, and a drummer took over, and after that a boy with a whistle." },
      } },
    { name = "the ceiling",
      description = "Painted, and mostly still up: a blue heaven with the virtues sitting about on clouds in an idle way. Justice has lost her scales to the damp. Mercy has come through quite untouched. Prudence, over the Council's bench, has a crack running straight through her." },
    { name = "a child's shoe",
      description = "In the middle of the floor between the bar and the throne, on the new boards, lying on its side: a small real shoe with a strap. Nobody of that size was ever permitted past the rail. One was, once, and went fast enough to lose it.",
      actions = {
        { "Pick it up", say "Brown leather, hard as wood, with a hole worn in the sole. You turn it over. Stuck to the inside of the heel there is a single liver-coloured dog hair. You put the shoe back where it was, on its side, pointing at the throne." },
      } },
    { name = "the canopy",
      description = "A frame of gilded poles over the throne, where a cloth of state hung. The cloth is gone. Honeysuckle has come in through the window and gone up the poles and over, and done the job again in green and yellow, and the bees are at it." },
    { name = "the great doors",
      description = "Twelve feet high, one hanging, one standing. Carved on the standing one, from top to bottom, are the names of the kings. You read down them. Near the foot a name has been planed away, a long shallow scoop across the oak, and the names after it are in a different, plainer cutting, done somewhere else and fixed on afterwards with screws." },
  },

  exits = {
    { to = "er_palace", description = "Back to the gallery and the great stair." },
    { to = "er_thursday", label = "Through the sealed doors",
      description = "Into the light, and the noise, and the afternoon.",
      requires = flag "er_seal_broken", hidden = true },
  },
}

space {
  id = "er_statues",
  region = "erstwhile",
  name = "The Hall of Kings",
  description = "A gallery a hundred paces long, with a marble king on a plinth every five. They stand in order of reign down both walls, twice life size, each with his name and his number and one hand doing something royal. The roof is sound here. The dust is thick and unmarked. You walk down between them like a child between grown-ups at a funeral.",
  palette = { bg = "#0d0e12", text = "#d4d4dc", dim = "#666a78", accent = "#a8b8d8", border = "#363c50" },

  things = {
    { name = "the first king",
      description = "By the door: a short broad man in a mail shirt, leaning on a spade. {i}THE FIRST, who came up the hill.{/} No name is given. They say he did not use one until he had to The sculptor never saw him. Nobody had. He was carved three hundred years after his death from a description that said only that he had been tired.",
      things = {
        { name = "the spade", description = "Not a sword. Every other king in the hall has a sword somewhere about him. The first has a spade, with a worn blade, and the plinth says that he dug the well before he built the wall." },
        { name = "the inscription", description = "{i}Who came up the hill.{/} It does not say where from. You look for a second line. There is room for one. The mason ruled it, lightly, with a point, and then cut nothing on the rule." },
      } },
    { name = "a king with a book",
      description = "{i}OSBERT, called the Glad.{/} He is laughing. It is extremely hard to carve a laugh in marble and the sculptor has not altogether managed it. From the left he is delighted. From the right he has toothache." },
    { name = "a king on a very high plinth",
      description = "{i}GODRIC, called the Careful.{/} His plinth is two feet taller than the rest. He ordered it so, to be out of reach, and left money in his will for a railing, which was put up, and for a second railing round the first.",
      things = {
        { name = "the railings", description = "Iron, two rows, with a gate in each and a padlock on each gate. The keys are in his other hand, in marble." },
      } },
    { name = "a queen in armour",
      description = "{i}MAUD, called Ironhand.{/} Her left gauntlet is missing: not broken, never carved. The arm ends at the wrist in a neat flat. The sculptor was told that the hand was elsewhere and would be along." },
    { name = "a very small king",
      description = "{i}EDRIC, called the Brief.{/} He reigned eleven days, at the age of four. He is carved at his real size, on a full-sized plinth, holding a toy horse, and somebody has always kept a real one beside him. The present one is wooden, with wheels, and nearly new.",
      actions = {
        { "Push the horse", say "It rolls a foot along the plinth and stops against his marble shoe. The wheels have been oiled. You look round the long empty hall. There is nobody. There is a porter downstairs who does as he is told, and who was, you suppose, once told by somebody that the little one was not to be left without." },
      } },
    { name = "the bare plinth",
      key = "er_bare_plinth",
      wonder = true,
      description = "Near the far end, between a king with a falcon and a king with a scroll, a plinth stands with nothing on it. Four iron dowels come up out of the top where the feet were fixed, and round each the marble is broken. He was not lifted down. He was levered off and went over on his side. And the face of the plinth, where three lines of lettering were, has been cut back an inch deep in long even strokes, right across, and the dust of it swept up. You put your hand flat in the hollow. It is as cold as the rest. Along the bottom edge, small, the mason has left his mark: a rose.",
      things = {
        { name = "the four dowels", description = "Bent, all to the same side, towards the windows. They pushed him from the wall. It took, by the marks of the bars on the plinth, six men." },
        { name = "the track in the floor", description = "A groove in the paving, two inches deep, from the plinth to the nearest window, where the sill is broken out. Twice life size, in marble, on his side. They dragged him to the window and put him out of it, on to a wagon bed. The porter says the wagon went to Stillstanding with the rest, and that there is a hole under that castle for things the Crown would sooner not have about." },
        { name = "the mason's rose", description = "You have seen that mark today, cut under the neck of a face on a steel die. The man who carved him and the man who cut his coin were the same man. He left his mark on both, and both times it was left alone by the people who took the name off." },
        { name = "a posy on the plinth", description = "Fresh. Hawthorn and wild thyme, in a twist of red silk ribbon. It is lying where the feet were. There are no prints in the dust of the hall but your own." },
      },
      actions = {
        { "Read what is left", say "You tilt your head to get the light along the hollow. Nothing. They went deep. But the chisel jumped once, at the very end of the last line, where the dates were, and left the tail of one stroke. So you know this much, which nobody was meant to: that there was a first date, and a dash, and that after the dash there was nothing cut at all. When they took his name off he had not died." },
      } },
    { name = "the king with a falcon",
      description = "His neighbour on the left, the father. {i}HUMBERT, called the Second.{/} A long nose and a mild face. The falcon on his wrist is looking the other way. The sculptor liked this family." },
    { name = "the king with a scroll",
      description = "His neighbour on the right, the successor. {i}HUMBERT, called the Third, who restored good order.{/} He is in a different marble, greyer, and by a different hand. He is not looking at the empty plinth. The whole set of his neck is a man not looking at it.",
      things = {
        { name = "the scroll", description = "Carved half unrolled. It has real words on it, cut small: {i}That petitions be heard singly, in the order of their numbers, and one in each year, lest the Crown be importuned.{/} It is the founding law of the queue on the castle hill, and he is holding it like a shield." },
        { name = "his other hand", description = "A fist. Every other king here has an open hand, or a sword in it. This one has it shut, and close to his chest." },
      } },
    { name = "the last plinth",
      description = "At the very end, ready and bare, uncut, without dowels. It was put up for whoever came next. Then the court moved, and the kings since have their marble at the castle. This one has been waiting for somebody to stand on it for ninety years, and a fern has got in first." },
    { name = "the dust",
      description = "A finger deep, grey, and as smooth as a bedsheet from wall to wall. Your prints go down the middle of it, one set, coming this way. Nothing else has walked here. And still there is a fresh posy at the far end, on a plinth.",
      actions = {
        { "Look for other tracks", say "You go over it on your knees. Mouse. A bird, hopping. Your own boots. And then, from the broken window to the bare plinth and back, a line of marks so faint that you see them only with your cheek on the floor: where the dust has not been pressed down but only smoothed, by something as light as a hem. Somebody comes in at that window. Somebody who weighs what a ribbon weighs." },
      } },
    { name = "the windows",
      description = "High, on the garden side. One has its sill broken away in a great bite, with scratches down the wall outside. Ivy has come in through it and gone straight across the floor to the bare plinth, and stopped at the foot of it, as if it had come to read the name." },
    { name = "a sculptor's ladder",
      description = "Left against the wall by the last plinth, with a canvas bag of tools hanging on it. Points, claws, a mallet with a head worn into a saddle. He did not come back for them. The chisel that was used on the name is not his: his are all here, and they are sharp." },
  },

  exits = {
    { to = "er_palace", description = "Back up the hall, between the kings, to the gallery." },
  },
}

space {
  id = "er_thursday",
  region = "erstwhile",
  secret = true,
  wonder = true,
  name = "The Thursday",
  description = "You step through, and it is a quarter past four on a spring afternoon. {glow}The Audience Court is whole.{/} The roof is on. The windows have glass in them and the sun is pouring through, and the hall is packed from wall to wall with people who are not grey. They are brown and red and loud. They have come in off the street in their working clothes, four thousand of them, in a line that goes six times round the room and out of the far door, and they are being heard. At the top of the hall a big man in his shirtsleeves sits at a kitchen table with his crown hung on the chair back, writing. Each time he looks up and says one word, and each time the roof nearly comes off.",
  palette = { bg = "#1a140a", text = "#f0e4c8", dim = "#a08c60", accent = "#ffd070", border = "#7a6030" },
  ambience = {
    dust { glyphs = "·˙∙", color = "#c8a860", rate = 0.5, speed = 0.15 },
    shimmer { color = "#6a5020", strength = 0.5 },
  },

  things = {
    { name = "the King",
      key = "er_the_king",
      icon = "♚",
      description = "Fifty, heavy, long in the nose, with his sleeves rolled and ink to the elbow. He has the mild face of the statue under the castle and the die in the Mint. But neither of them shows this: that he is having the best day of his life. He hears a carter. He asks one question. He writes a line, looks up and says \"{b}Granted{/},\" and the carter goes off down the hall being hit on the back by strangers. Nobody uses his name. They call him Sire, and Himself, and once, from the back, \"that man\".",
      variants = {
        { when = flag "er_pen_given",
          description = "Fifty, heavy, long in the nose, with ink to the elbow and a fresh pen. He has given you the old one and has already forgotten it, as a man does on a day when he has given away a forest. He is hearing a woman about a well. He asks one question. He looks up. \"{b}Granted{/},\" he says, and the roof goes up again." },
      },
      things = {
        { name = "the kitchen table", description = "Deal, scrubbed, with a drawer. He had the throne left next door and this carried up from the scullery, since you cannot write four thousand grants on your knee. There is a ring on it from a mug, and a mug." },
        { name = "the crown", description = "Gold, heavy, hung by its rim on the corner of the chair like a hat. It has a real dent. Twice he has reached back for it, to scratch under it, and been surprised to find that he took it off." },
        { name = "his face", description = "You try to fix it, to take it away with you. A long nose. Laughter lines. An ink smear by the left eye. It is a face you would lend money to. You look for anything in it that knows what Friday will be like, and there is nothing, and you are glad." },
        { name = "a spaniel under the table", description = "Liver and white, flat on the boards with his chin on a royal foot. He answers to Chancellor. This has caused one misunderstanding already today and the room is hoping for another." },
      },
      actions = {
        { "Join the line", when = no(flag "er_in_line"), set "er_in_line",
          say "You go to the back, which is in the yard. A woman with a goose makes room. \"What are you asking for?\" she says. You say that you do not know. \"Best think,\" she says. \"He goes quick.\" He does. The line moves at a walk. You go six times round the hall in the sun with four thousand people who have each been waiting years to say one sentence, and you hear every one of them get to say it." },
        { "Step up to the table", when = all { flag "er_in_line", no(flag "er_pen_given") }, set "er_pen_given", give "er_granting_pen", fx "sparkle",
          say "\"And you?\" He looks up. He looks at your boots, and your one bootlace, and your face, with real attention. Nobody of consequence has ever looked at you for that long. You find that you have nothing to ask for. Everything you want is the kind of thing you have to go and get. So you ask him what he would like. The hall goes quiet. The clerk's pen stops. \"Nobody has asked me that today,\" says the King slowly. \"Nor, I think, on any other.\" He thinks. \"A fresh pen. This one is split.\" The clerk hands him one. He holds out the old one to you across the table, wet. \"Granted,\" he says, and grins like a boy, and the roof comes off." },
        { "Ask him his name", when = flag "er_pen_given",
          say "He opens his mouth to tell you. He is a man who would. And a carter behind you shouts \"Get on, there's a queue!\" and the hall laughs, and the King laughs, and waves you by with the back of his hand, and the moment has gone to the next person. You will not get it now. You find that you do not altogether mind. Everybody in this room knows who he is." },
      } },
    { name = "the Clerk of Petitions",
      description = "At the end of the table, a thin inky man on a high stool with a green ledger, writing as fast as a man can write. His wig is off. His cuffs are black. He has entered one petition a week for forty years, and since noon he has entered two thousand. Something has happened to his face that you last saw on a horse let out to grass.",
      things = {
        { name = "the green ledger", description = "{i}Number. Petitioner. Prayer. Granted.{/} He fills the first three columns. The King reaches over and fills the fourth himself, every time. He will not let it be done for him." },
        { name = "a heap of spent pens", description = "By the clerk's elbow, forty or fifty, split. A boy runs in with more every quarter of an hour, cut from every reed bed in the palace moat." },
      },
      actions = {
        { "Ask how many are left", say "\"Two thousand and eleven, at this moment,\" he says, without looking up or slowing. \"We shall be at it until dark. I have not had my dinner.\" He turns a page. \"I do not want my dinner. Is that not extraordinary? Next!\"" },
      } },
    { name = "the Chancellor",
      description = "A tall narrow man in black, standing against the wall behind the King with a face like a shut gate. He has a paper in his hand. He has had it there since noon. It is a list of what is left, and he draws a line through it every time the roof goes up.",
      things = {
        { name = "his list", description = "{i}The Forest of Aldmoor. The salt tax. The tolls of eleven bridges. The plate. The Treasury (all).{/} Every item is struck through but the last, and against the last he has written, small, with a hand that shook: {i}leave him one coin. For the look of it.{/}" },
        { name = "his other hand", description = "Behind his back, opening and shutting. He is not a wicked man. He kept the kingdom solvent through four reigns by never once doing what he has now watched done four thousand times before tea." },
      },
      actions = {
        { "Ask what he will do", say "He turns his eyes on you. They are grey and very tired. \"Tonight? Nothing. I shall let him have his dinner.\" He looks at the King's back. \"Tomorrow I shall undo it. All of it. Every word. I shall take the day out of the calendar and his name off the stones, so that there is no hand in law that signed these.\" His jaw works. \"It will be the worst thing I have ever done, and I shall do it thoroughly, because there are a hundred thousand people in this country who were not in the line.\" He looks away. \"He will not fight me. That is what I cannot forgive him. He will say, {i}very well, but it happened.{/}\"" },
      } },
    { name = "the line",
      description = "Six times round the hall and out into the yard, four abreast in places, in an order that nobody appointed and everybody keeps. Carters, widows, a chimney sweep, two aldermen who had not expected to queue. It is in the highest spirits. People are holding one another's babies.",
      things = {
        { name = "a carter at the front", description = "A big red man named Dobbs, turning his hat. \"The mile between the Bell and the bridge, Sire. It wants mending.\" \"How long has it wanted it?\" \"Since my father.\" \"Granted.\" He was the first, and he has come round again to watch the rest." },
        { name = "the Widow Anstey", description = "Small, in black, holding a receipt. Her husband paid a fine and was then found innocent, and she has carried that paper to this hall on forty Thursdays. She is near the front now. She keeps unfolding it to be sure that the writing is still on." },
        { name = "a child with a lead", description = "Seven or so, one shoe off, holding a length of rope with nothing on the end and looking under every bench. She has not got a petition. She has lost a dog. It is about to turn out to be the same thing.",
          actions = {
            { "Point at the table", say "You point. She looks. Under the King's chair a liver and white tail goes twice on the boards. Her face does a thing that you will remember. She does not go to the back of the line. She goes straight up the middle of the Audience Court on one shoe, past the bar, where no child was ever let, and the King sees her coming and puts down his pen." },
          } },
        { name = "two aldermen", description = "In fur, sweating. They came to ask for a monopoly on tallow. They have now stood for three hours behind a ratcatcher and in front of a midwife, and have heard what people ask for. They have been whispering. You think they are going to ask for something else." },
        { name = "a man with nothing to ask", description = "He is in the line anyway. \"I only wanted to see it done,\" he tells you. \"My grandchildren will not believe it.\" He is right. They will be told that it did not happen, by law, and he will tell them anyway, every year, and be smiled at." },
      } },
    { name = "the cheering",
      description = "It is not polite. It is not for a king. It is the noise people make when a neighbour's cow is got out of a ditch: glad, and loud, and mostly for the cow. It goes up every time he says the word, and it has not got any quieter since noon, and it has gone out through the windows over the whole city, where ninety years later they have still not quite stopped hearing it." },
    { name = "the sun in the windows",
      wonder = true,
      description = "Six tall windows down the west wall, and the afternoon coming in at all of them in slabs you could lean on. It lies across the line of people and makes them gold: gold hats, gold dust off the boards, a gold goose. It is the light you felt on your hand at the bottom of the Oubliette. They took this day out of the week. They framed the leaf and dropped it down a hole. And they could not take the weather out of it, which goes on, in here, behind a cake of wax, being a quarter past four on the best Thursday there ever was.",
      actions = {
        { "Stand in it", fx("wash", "#f0d090"), say "You stand in a window with the sun on your face. It is warm in the way that only one afternoon in a year is warm. Outside, below, the gardens are clipped and the gravel is raked and the fountains are going. Nobody in this room knows about Friday. You do, and it does not spoil it. You had thought that it would." },
      } },
    { name = "the band",
      description = "In the corner: a trumpeter with a split lip, sitting down, a drummer, and a boy with a tin whistle who has taken over the fanfares. He plays one for every petitioner, four notes. He has done nine hundred. He is having to think of something different to do with the same four notes each time, and he is managing." },
    { name = "a table of beer",
      description = "By the door, two casks on a trestle and a footman drawing mugs for anybody who comes off the line. It was the King's own order, at one o'clock, when he saw how long it was going to take. The footman has stopped pretending that it is beneath him.",
      actions = {
        { "Take a mug", say "It is put into your hand. It is cold, and brown, and has a head on it, and you drink it in a hall that was sealed ninety years ago, shoulder to shoulder with a midwife. It is real beer. You do not know how. You have stopped asking that of this room." },
      } },
    { name = "the far door",
      description = "Open, on the yard, with the line coming in through it and the afternoon going on outside. You could walk out of it. You look at the sky through it, and the clipped hedges, and a gardener with a barrow. You think that you had better leave by the door you came in at." },
    { name = "a ruled page",
      description = "At the back of the clerk's ledger, when he turns to blot: a fresh page, already ruled in four columns, numbered 4,010 at the top, and empty. He ruled it this morning in case. It is the only line in the book that you will see again, ninety years on, upstairs in a library, still waiting.",
      wonder = true },
    { name = "the doors you came through",
      description = "Behind you, a hand's width open. Through the gap you can see the throne room: grey, roofless at one corner, with a swallow going through it. From this side there is no tape on the handles and no wax. Nobody in here has ever seen those doors shut." },
  },

  exits = {
    { to = "er_throne_room", label = "Back through the doors", description = "Out of the afternoon, into the grey, where it is whatever day it is." },
  },
}
