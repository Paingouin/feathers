-- The Royal Mint, where the money stopped, and the strong room under it.

space {
  id = "er_mint",
  region = "erstwhile",
  name = "The Royal Mint",
  description = "A square building of black stone with bars on every window and a door six inches thick, standing open. Inside is one great room with a furnace at one end, a row of screw presses down the middle, and a counting table by the door. Everything is where the last shift left it. A grey Master in a leather apron walks the floor with his hands behind him, inspecting men who are striking coins out of nothing, and finding fault.",
  palette = { bg = "#0c0c0e", text = "#d0d0d4", dim = "#666870", accent = "#d8c070", border = "#3a3a44" },
  ambience = {
    dust { glyphs = "·˙", color = "#5a5a66", rate = 0.2, speed = 0.1 },
    flicker { color = "#c8a050", strength = 0.05 },
  },

  things = {
    { name = "the Master of the Mint",
      key = "er_mint_master",
      icon = "☺",
      description = "Master Bezant: broad, grey, with burn scars on both forearms that have come with him. He has the walk of a man who is answerable for every coin in the kingdom to the weight of a grain. The court went. The bullion went. Nobody told the Mint to stop, and a Mint does not stop without an order under seal.",
      things = {
        { name = "his apron", description = "Horsehide, to the ankle. The pocket holds a pair of tongs, a loupe and a small grey pie for later." },
        { name = "his touchstone", description = "A black pebble on a cord round his neck, for trying gold. He rubs a coin on it, looks at the streak, and knows. He has not had a coin to rub in ninety years. He rubs his thumb, to keep his eye in." },
      },
      actions = {
        { "Ask what they are striking", say "\"The new coinage,\" he says. \"The dies came down Wednesday night. Finest head we have ever had, cut by Rose himself. We were to strike the first on Thursday for His Majesty to give out at the audience with his own hand.\" He looks at the presses. \"Then the silver did not come. It has been delayed. The men are keeping their arms in.\"" },
        { "Ask to see the last coin struck", when = no(flag "er_vault_open"), set "er_vault_open",
          say "He stops walking. \"The last?\" He looks at you for some time. \"There is no last, the run was never started. But there is the first.\" He lowers his voice. \"A Master strikes one piece himself from a new die, in lead, before any silver. A proof. To see that the head is true. I struck it Wednesday night and put die and proof in the strong room, as the rule is. And on the Friday they came with a list and took every die in the building away to be filed. They did not ask about the strong room. They did not have it on the list.\" He nods at a grating in the floor by the furnace. \"I have never told them. You may look. You will not tell them either. I can see that nobody asks you things.\"" },
        { "Ask whose head it is", when = flag "er_vault_open",
          say "\"The King's,\" he says, as if you were simple. You ask which king. He opens his mouth, and a look of honest puzzlement comes over his big grey face, like a man who has gone upstairs and forgotten what for. \"The King's,\" he says again, more slowly. \"I have it on the tip of my tongue. It has been there for some time.\"" },
      } },
    { name = "the screw presses",
      description = "Six of them, iron, each with a long arm weighted at both ends with a ball of lead. Two men swing the arm, the screw comes down, and a third man feeds blanks under it and flicks out the coins. They are doing it now, all six crews, in rhythm, with nothing on the bed.",
      things = {
        { name = "the pressmen", description = "Eighteen grey men stripped to the waist. They swing and step back, swing and step back. The arms do not move. They are rusted where they stopped. The men swing the memory of them, and sweat." },
        { name = "the feeders", description = "The dangerous job. Each sits in a pit under the press with his fingers an inch from the die. Every one of them has a full set of fingers now. That, the Master says, is the only improvement he has seen in ninety years." },
        { name = "the empty die seats", description = "A square socket in the head of each press and another in the bed. Bare. Scratched bright round the edges where a punch and hammer were used to drive the dies out in a hurry." },
        { name = "the coin trays", description = "Under each press, a wooden tray to catch the struck pieces. Empty. Not altogether: in the third there is a drift of hawthorn petals that has blown in, lying as coins would lie, and the feeder flicks more on to it." },
      },
      actions = {
        { "Swing a press arm", say "You take hold of one of the lead balls and heave. Nothing. You put your back into it. Rust lets go with a shriek that stops the whole floor, and the arm comes round a quarter turn, and the screw bites down on the bare bed with a bang. Eighteen grey men look at you. Then the nearest crew looks at its own arm, which has moved for the first time since they died. One of them spits on his hands. \"Again,\" he says." },
      } },
    { name = "the furnace",
      description = "A brick dome with an iron door and a bellows the size of a boat. It is cold, and a fox has had cubs in it. The grey melter still stands by with his ladle, skimming.",
      things = {
        { name = "the crucibles", description = "Clay pots in a row, each with a skin of dull metal in the bottom, where the last melt froze. Silver. It was not worth the Council's time to chip out. It is the only bullion left in the Royal Mint and there is about enough for a teaspoon." },
        { name = "the fox's earth", description = "Bones, a pigeon's wing, a chewed strap. She is not in. The melter says that she comes at dusk and that he moves his feet for her." },
        { name = "the ingot moulds", description = "Iron troughs, greased, ready. In one, rain has collected and frozen and thawed for ninety years, and made, in rust, a perfect ingot of nothing." },
      } },
    { name = "the counting table",
      description = "By the door: a table covered in green cloth, chequered in squares, where the tellers reckoned the coin by moving counters. The cloth is where the word exchequer comes from. Three grey tellers sit at it now, pushing nothing from square to square with rakes.",
      things = {
        { name = "the tellers", description = "They are checking one another. That is the system. Each counts, and the next counts the count. They have reached a total that all three agree on, for the first time in the history of the Mint, and it is nought." },
        { name = "the tally sticks", description = "Hazel rods in a rack, notched and split down the middle: half for the Mint, half for the Treasury. The Treasury's halves went to Stillstanding. The Mint's are all here, waiting to be matched, each with a name inked on the flat." },
        { name = "a real counter", description = "One brass jetton on the cloth, stamped with a lion, on the square for a single penny. It is the only thing on the table that anybody could pick up. The tellers move their rakes round it." },
      } },
    { name = "the trial plate",
      description = "A slab of pure silver the size of a hand, kept in a locked glass case on the wall, against which every coin of the realm was tested. The case is locked. The plate is gone. There is a card in its place.",
      things = {
        { name = "the card", description = "{i}Removed to Stillstanding for safe keeping. Receipt given.{/} The receipt is pinned under it. It is signed by the Chancellor, for the Council, and under that in a broader hand somebody has written {i}Granted{/}, for the joke." },
      } },
    { name = "the weighing room",
      description = "A glass booth in the corner, to keep the draught from the scales. Inside, a balance of brass and steel under its own second glass, so fine that it was said to weigh a signature.",
      things = {
        { name = "the balance", description = "Both pans are empty and it is not level. The left hangs lower by the thickness of a hair. You look closely. There is nothing in it. The Master says that it has hung so since Thursday, and that he has had it apart twice." },
        { name = "the box of weights", description = "Brass, from a pound down to a grain, each in its own velvet hole. The grain is missing. It was so small that on the Friday somebody breathed out." },
      },
      actions = {
        { "Sign your name and weigh it", say "There is a slip of paper on the bench, and a pencil. You write your name and lay the slip in the right-hand pan. The beam comes level. Exactly. You take the slip off, and the left pan sinks again, by a hair. Something weighing one signature is lying in that pan. You put your finger in. Brass, and cold, and nothing." },
      } },
    { name = "the edge-marking bench",
      description = "A hand mill with two steel bars for rolling an inscription round the rim of a coin, so that nobody could clip it unseen. The bars are still in. They missed these.",
      things = {
        { name = "the edge inscription", description = "You read it backwards off the steel, letter by letter. {i}A GIFT AND NOT A LOAN.{/} No king of this country put those words on the edge of his money before or since. The usual thing was something about God." },
      } },
    { name = "the pay office",
      description = "A hatch in the wall with a ledge. The moneyers were paid here on Saturdays, in the coin they had made. A grey paymaster sits behind it with a book.",
      actions = {
        { "Ask about wages", say "\"Ninety years in arrears,\" he says, turning the book to you. Four thousand seven hundred Saturdays, each with eighty names, each marked {i}owing{/}. \"They do not complain. They say that a Mint is the one place where you know the money will turn up.\"" },
      } },
    { name = "the grating by the furnace",
      key = "er_mint_grating",
      description = "An iron grid in the floor, the size of a door, with a ring. Cold air comes up through it and a smell of oil.",
      variants = {
        { when = flag "er_vault_open",
          description = "An iron grid in the floor with a ring, and the Master standing beside it with his foot off it, looking carefully at something on the far wall. It lifts. Stone steps go down." },
      } },
    { name = "the barred windows",
      description = "Bars as thick as your wrist, set in lead. They kept a great many people out for four hundred years. Now bindweed comes in through them, and goes out again, since there is nothing to stay for." },
    { name = "the door",
      description = "Six inches of oak plated with iron, on five hinges, with three locks, and a wedge of firewood under it to hold it open. On the Friday they had the keys with them on the carts. Nobody had the heart to shut it on the men inside." },
    { name = "a moneyer's lunch",
      description = "On a windowsill: a real tin plate and a real horn spoon, under dust. Beside them is a silver penny of the reign before, with a hole punched in it for a string. A lucky one. He left it. In a Mint, on that Friday, nobody could be found who would touch a coin." },
  },

  exits = {
    { to = "er_high_street", description = "Out past the wedge in the door, into the street." },
    { to = "er_mint_vault", label = "Down the steps under the grating",
      description = "The strong room of the Mint, which was not on the list.",
      requires = flag "er_vault_open", hidden = true },
  },
}

space {
  id = "er_mint_vault",
  region = "erstwhile",
  secret = true,
  name = "The Strong Room",
  description = "A stone box under the furnace, ten feet each way, dry as a biscuit and still faintly warm from four hundred years of fires overhead. Iron shelves stand round three walls. They are bare, and swept, and each has a row of oiled rings on it where something sat. One shelf, behind the door, where you would not look, is not bare.",
  palette = { bg = "#0a0a0c", text = "#ccccd0", dim = "#60626a", accent = "#e0c880", border = "#34343e" },
  ambience = {
    dust { glyphs = "·", color = "#565660", rate = 0.1, speed = 0.05 },
  },

  things = {
    { name = "the shelf behind the door",
      key = "er_die_shelf",
      description = "At knee height, in the shadow of the open door: a square of green baize, and on it a short black cylinder of steel standing on its end, and beside that a single dull grey coin.",
      variants = {
        { when = flag "er_die_taken",
          description = "At knee height, in the shadow of the open door: a square of green baize with one grey coin on it, and beside the coin a ring of oil where a die stood for ninety years." },
      },
      things = {
        { name = "the lead proof",
          wonder = true,
          description = "A disc of lead the size of a crown piece, struck once, on one side. You pick it up. It is heavier than you expected and it takes the warmth of your hand at once. There he is, the right way round and standing up from the metal: a man of fifty with a long nose, in profile, looking pleased, and a little as if he has just thought of something. Round him runs the legend, clear and unfiled, since nobody knew that this existed. You tilt it to the slit of light to read his name. Lead is soft. In ninety years the Master's thumb, passing over it every night, has worn the letters to a shine, and they will not come up. He did not mean to. He only wanted to look at the best head that the Mint ever cut.",
          actions = {
            { "Put it back", say "You set it down on the baize, face up. You had him in your hand, name and all, and the name was rubbed out by the one man who kept it. You find that you are not sorry for the Council's sake. You are a little sorry for the Master. You put it exactly where it was." },
          } },
        { name = "the baize", description = "Green, new once, cut from the counting table upstairs. There is a square missing from one corner of that cloth. You did not notice it. The tellers rake round the hole." },
      },
      actions = {
        { "Take the die", when = no(flag "er_die_taken"), set "er_die_taken", give "er_unstruck_die", fx "sparkle",
          say "You lift it. It is as heavy as a full mug, and oiled, and it has been oiled lately. You turn the face to the light and there is the head, hollow and backwards, and round it a bright bare ring where the legend was. So they did come down here. Somebody did, with a file, alone, later, and did the work the list had missed, and then greased the steel against rust and stood it back on the baize beside the proof. You look up the steps. The Master's boots are at the top, and he is whistling, and it is not a tune." },
      } },
    { name = "the bare shelves",
      description = "Three walls of them. Each is labelled on its edge with the name of a reign, on an enamel strip, and held the dies of that coinage. Kings going back four hundred years, and every shelf swept. The dies are at Stillstanding now, in a cupboard, the Master supposes, with nobody to grease them.",
      things = {
        { name = "the oil rings", description = "A row of round marks on each shelf, where the dies stood. You count along one. Twelve to a reign. Every ring has dust in it but those on the lowest shelf, which are fresh and dark, as if they were wiped yesterday out of respect." },
        { name = "the enamel strips", description = "White, with black letters. {i}GODRIC. OSBERT. HUMBERT II.{/} The strip on the lowest shelf has been prised off. The two rivets are there. Somebody has hung a sprig of hawthorn on one." },
      } },
    { name = "the pyx",
      description = "An iron chest with three locks, in which one coin out of every batch was put aside for the yearly trial. It is unlocked. It is full to the lid of little leather bags, each tagged with a date, and each one flat.",
      things = {
        { name = "a flat bag", description = "You feel it. Empty. They took the coins and left the bags, and tied every one up again first. The Council had an eye for a small tidy cruelty." },
        { name = "the last bag", description = "Tagged with a Thursday. It was never filled, since the run was never struck. It is the only one in the chest that was not robbed, and it has nothing in it either." },
      },
      actions = {
        { "Shake the chest", say "You rock it. Leather. Then, from the very bottom, a small flat click. You dig. Under four hundred bags, slipped through a split seam and lying on the iron, is one silver penny of a reign two hundred years gone. It is the whole reserve of the Royal Mint. You put it in the Thursday bag, and tie the bag, and put it on top." },
      } },
    { name = "the Master's stool",
      description = "Three-legged, by the baize shelf, where a man could sit with his knees up and look. The seat is worn. The stone under it is worn. A candle bracket on the wall above has ninety years of grey wax on it that you can see through, and under that, at the bottom, an inch of the real thing." },
    { name = "a file",
      description = "On the floor under the shelf: a three-cornered file with a wooden handle, clogged with bright steel dust. It is real. It has not been here ninety years. There is no rust on it at all.",
      actions = {
        { "Pick it up", say "The handle is cold. The steel dust in the teeth is fine as flour and still silver. Whoever filed the name off the die did it this year, or this month. You think of a milestone on the old road with a fresh number. Somebody in Erstwhile is still working for the Council, quietly, and is tidy, and brings his own tools." },
      } },
    { name = "the warm ceiling",
      description = "The underside of the furnace floor: a brick vault, blackened, with a crack down the middle where four hundred years of heat came through. A root has found the crack and hangs down into the strong room, white, and at the end of it one pale leaf has opened in the dark, to see." },
    { name = "the door",
      description = "Iron, a hand thick, on a pivot. On the inside somebody has scratched a line for every year, in fives. It is the Master's tally. There are eighteen fives. He comes down each anniversary, by the mark, and each time he cannot think what it is the anniversary of." },
    { name = "a rat hole",
      description = "At the foot of the wall, gnawed through mortar. No rat has used it in years. There is nothing to eat in a strong room. Something small lives in it now which collects, and has pushed out to the mouth of the hole one grain weight of brass." },
    { name = "the steps",
      description = "Eleven, worn in the middle, up to the grid of grey light. Each one has a number painted on the riser, so that a man carrying bullion in the dark would know where he was. The numbers run from the top. The bottom step is one." },
    { name = "the smell",
      description = "Oil, cold iron and old candle. Under it there is something you did not expect in a room under a furnace in a dead city: bay. Faint. It is the smell of a cake of soap in a dish at the baths." },
  },

  exits = {
    { to = "er_mint", label = "Up the steps", description = "Back to the floor of the Mint, where the Master is looking the other way." },
  },
}
