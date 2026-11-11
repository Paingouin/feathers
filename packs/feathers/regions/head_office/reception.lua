-- Head Office: the way in, the lift, and what the whole building stands on.

space {
  id = "ho_reception",
  region = "head_office",
  name = "Reception",
  description = "The tube lets you out, feet first and rather warm, into a hall of black marble the size of a cathedral. Far overhead hang lamps like red moons. Far ahead stands a desk. Between you and the desk run a carpet, a row of potted plants, and a silence with a clock in it. Everything is polished. Everything is expecting you. A sign on a stand says {i}WELCOME{/}, and it has been dusted this morning.",
  palette = { bg = "#0c0808", text = "#e0d4c8", dim = "#806c60", accent = "#f08040", border = "#603828" },
  ambience = {
    embers { glyphs = "·˙", colors = { "#a03818", "#e08840" }, rate = 0.04 },
    shimmer { color = "#3a2018", strength = 0.2 },
  },

  things = {
    { name = "the receptionist",
      key = "ho_receptionist",
      icon = "☻",
      description = "Miss Cinder. Tall, grey as ash, in a high collar, with horns dressed back under a comb and a smile of real and practised warmth. She has greeted every visitor to Head Office since it opened. There have been eleven. She remembers each of them by name, and what they took in their tea.",
      things = {
        { name = "her smile", description = "It has too many teeth in it and every one of them means well. You have seen worse smiles on aunts." },
        { name = "her comb", description = "Tortoiseshell, set with small red stones that are warm, like the ends of cigars." },
        { name = "her list of visitors", description = "Eleven names on a card. A saint, who came to argue. Two poets, who came to look. A lawyer, who came for a client and stayed for the pension. Seven who were lost. She has left a twelfth line ruled, for a long time now, just in case." },
      },
      actions = {
        { "Say you are just looking", say "\"Of course you are.\" She could not be more pleased. \"Everybody is, the first time. Take all the time you like. We are not going anywhere, and we are in no hurry about you.\" She says this as kindly as it can be said, and it is still the second most worrying thing you have heard this week." },
        { "Ask who is in charge", say "\"The Chairman.\" She lowers her eyes a moment, as people do. \"He is out.\" Since when? She consults a diary, turns back a page, turns back the book, fetches an older book. \"Since before the diary,\" she says. \"We keep his appointments open.\"" },
        { "Ask after Mr Brimley", say "\"Brimley!\" She clasps her hands. \"Glowers branch. Such neat returns. Always the same figures, to the farthing, every quarter for three hundred years. Personnel have a file on him this thick. They mean to do something about him the moment anybody is in to sign it.\"" },
      } },

    { name = "the desk",
      description = "A slab of black stone forty feet long, with one lamp, one bell, one book and one pen. The rest of it is kept bare, to show how much desk there is.",
      things = {
        { name = "the visitors' book",
          key = "ho_visitors_book",
          description = "Bound in red, as broad as a door, open at a page with eleven signatures on it and a great deal of room. The heading, in copperplate: {i}Guests of the Firm. Signing here commits you to nothing. We mention this because of the other books.{/}",
          actions = {
            { "Sign the visitors' book", when = no(item "ho_visitor_pass"), give "ho_visitor_pass", fx "sparkle",
              say "You read the page twice, both sides, and hold it up to the lamp. It is only a visitors' book. You sign. Miss Cinder blots it herself, reads your name aloud once so as to have it right for ever, and hangs a card round your neck on a loop of red tape. \"There. Now the lift will know you. Any floor you please. Mind the bottom button, it sticks.\"" },
            { "Read the other signatures", say "The saint signed with a cross and added {i}under protest{/}. One of the poets wrote four lines and crossed out three. The lawyer's signature has a small flourish under it which, you notice, is in the same hand as the copperplate heading." },
          } },
        { name = "the bell", description = "A brass bell with a button on top. You are standing in front of the person it would summon, and she is looking at you. You do not ring it. She seems a little disappointed." },
        { name = "the desk pen", description = "On a chain. An ordinary pen, says a small card. {i}Not the other one.{/}" },
      } },

    { name = "the red lamps",
      wonder = true,
      description = "Nine of them, hung on chains from a roof you cannot see. Each is a globe of dull red glass as wide as a hayrick, and inside each one something burns slowly that is not oil and not coal. They have never been lit, Miss Cinder says. They were hung alight. The light they give is the colour of the last of a fire, and it falls on the marble for a quarter of a mile in every direction, and under it the whole enormous floor looks like a pond at sunset with nobody on it. You stand a while. It is quite beautiful, and nobody down here ever told them so.",
      things = {
        { name = "the chains", description = "Each link is the size of a cartwheel. They go up, and up, and stop being chains and become a colour." },
        { name = "the lamp that is dimmer", description = "The seventh. It has been failing for a century and a half. There is a chit in for it. The chit is on a desk on the bottom floor, waiting for a signature." },
      } },

    { name = "the carpet",
      description = "Red, a yard wide, and running dead straight from the mouth of the tube to the desk. It is worn down the middle by eleven pairs of feet, which is to say, not at all.",
      things = {
        { name = "the edge of the carpet", description = "The marble on either side has no mark on it of any kind. You have a strong feeling that visitors keep to the carpet, and an equally strong one that nobody would say a word if you did not." },
      },
      actions = {
        { "Step off the carpet", say "You put one foot on the marble. Nothing happens. Across the hall a small devil in an apron appears with a cloth, waits politely for you to lift the foot again, and polishes where it was." },
      } },

    { name = "the potted plants",
      description = "A row of them in brass tubs, one every ten yards. Tall, dark, glossy, and thriving.",
      things = {
        { name = "a leaf", description = "Thick and leathery, almost black, with a red vein. Warm to the touch. It is the only kind of plant that likes it here, and it likes it a great deal." },
        { name = "a watering can", description = "Behind the third tub. It is full of something that steams. The label on the handle says {i}Tuesdays{/}." },
        { name = "a tub with a flower", description = "The ninth plant has put out one flower, small, white and entirely out of keeping. Somebody has stood a little card in the tub. {i}We do not know either. Please do not pick it.{/}" },
      } },

    { name = "the waiting area",
      description = "Six armchairs of red leather round a low table, on an island of rug. They are the most comfortable chairs you have ever seen, and you find that you do not altogether trust them.",
      things = {
        { name = "the armchairs", description = "Deep, soft, and buttoned. One of them has the dent of a sitter in it still. The lawyer, says Miss Cinder. He sat down in it to wait and was offered a position before he could get up." },
        { name = "the magazines", description = "A fan of them on the table. {i}Brimstone Quarterly{/}. {i}The Tempter's Gazette{/}. {i}Country Fire{/}. All of them are the current number. They always are. Being behind with the magazines is considered a torment, and the torments have been discontinued." },
        { name = "a bowl of sweets", description = "Wrapped in gold paper. A card: {i}Complimentary. Truly. We had it checked.{/}" },
      },
      actions = {
        { "Sit down", say "You sit. The chair takes you in like a warm bath. In all your life nothing has ever been so easy as staying in this chair. You get up at once, in a hurry, and stand a little way off from it, breathing." },
        { "Take a sweet", say "Barley sugar. It is excellent. You wait for the catch right down to the last sliver and there is none, which you think about for some time afterwards." },
      } },

    { name = "the clock",
      description = "A long-case clock of black wood beside the desk, eight feet tall, ticking like a man tapping a pencil.",
      things = {
        { name = "the dial", description = "It has the usual hours. Under them, a second ring of figures tells the date, and a third, very small, tells the quarter of the financial year. Only the third hand is gilded." },
        { name = "the motto", description = "Painted in the arch above the dial: {i}Late for nothing, early for everything.{/}" },
      } },

    { name = "the mouth of the tube",
      description = "A brass hatch in the marble, as wide as a barrel, with two flaps. One is lettered {i}ARRIVALS{/}. The other is lettered {i}BRANCHES{/}, and has a small padded seat inside it, and a strap.",
      things = {
        { name = "the padded seat", description = "Red leather, like everything else. The Firm travels its own tubes when it must. The strap is for the bend at the top." },
        { name = "a rack of cylinders", description = "Post for the branches, waiting to go up: calendars, circulars, a reminder about the figures. One cylinder is addressed {i}Glowers, attn. Mr Brimley{/}, and marked {i}Hold for signature{/}. It is grey with dust." },
      } },

    { name = "the floor directory",
      description = "A board of black felt in a brass frame, with white letters pushed into it, beside the lift.",
      things = {
        { name = "the upper entries", description = "{i}Temptation. Contracts. Personnel. Canteen. Archive.{/} Each has a floor number with a little minus in front of it. The numbers are not in order, and are not small." },
        { name = "an entry that has been changed", description = "{i}Torments{/} is still there if you look: the holes in the felt show where the letters were. Over it, in newer and whiter letters: {i}Customer Experience{/}." },
        { name = "the bottom entry", description = "{i}Executive Floor{/}. At the very bottom of the board, as it is at the very bottom of the building. Seniority, down here, goes down." },
      } },

    { name = "the small devil with the cloth",
      description = "He has an apron, a tin of polish, and the whole hall to do. He starts at the tube and works towards the desk. When he reaches the desk the tube end wants doing again. He has never once thought of this as a punishment. It is a position, with prospects.",
      actions = {
        { "Ask about his prospects", say "\"Brass,\" he says, shining. \"After marble, you go on to brass. Door handles. There's a fellow been on door handles since the Flood and he says it's another world.\"" },
      } },

    { name = "the sign that says WELCOME",
      description = "Gold letters on a black board, on a brass stand. You look round the back. The back says {i}WELCOME{/} as well, for anybody leaving." },
  },

  exits = {
    { to = "gl_lower_office", label = "The flap marked BRANCHES",
      description = "Into the padded seat, pull the strap, and up the black tube to Mr Brimley's hall of desks." },
    { to = "ho_lift", label = "The lift",
      description = "A pair of bronze doors at the back of the hall, with a dial above them that has run out of room.",
      requires = item "ho_visitor_pass", locked = "the doors look you over and stay shut: no pass" },
  },
}

space {
  id = "ho_lift",
  region = "head_office",
  name = "The Lift",
  description = "A panelled box with a brass rail, a mirror, a small stool and an attendant. One whole wall is buttons: ranks and ranks of them, black, each with a number and a minus sign, rising out of sight overhead and sinking below the stool. The lift does not seem to move. Floors are brought to it. It hums a little, in the meantime, to be companionable.",
  palette = { bg = "#120c08", text = "#e0d2bc", dim = "#84705a", accent = "#e8a848", border = "#6a4a28" },
  ambience = {
    flicker { color = "#e8a848", strength = 0.12 },
  },

  things = {
    { name = "the attendant",
      key = "ho_attendant",
      icon = "☻",
      description = "Old Scuttle, in a pillbox hat and a jacket with two rows of buttons, as if in sympathy with the wall. He has one wing, folded, and a horn that is mostly a stump. He lost the others in the Fall, he says, and it is plain that he means a staircase.",
      things = {
        { name = "his pillbox hat", description = "Red, with a chin strap, and {i}LIFT{/} in gold wire on the front. It sits on the stump of the horn and nowhere else." },
        { name = "his stool", description = "Three-legged. He has not sat on it since a Director once got in, and that was before the hat." },
        { name = "his gloves", description = "White cotton. The forefinger of the right one is black to the knuckle from pressing." },
      },
      actions = {
        { "Ask how many floors there are", say "\"Depends who's asking.\" He thinks. \"Accounts say six thousand. Works say they've only ever built four. Me, I press the button and something turns up, and it has always been the right something. I don't look into it. Don't look into things, here. That's my advice, and it's free, which is rare.\"" },
        { "Ask what he did before", say "\"Front-line tempting. Forty years on a crossroads in the rain.\" He flexes the black finger. \"Never closed one. They'd come along, I'd say my piece, they'd say 'what, for ever?' and I'd say 'well, yes', and you could see it go out of them. I asked for a transfer to something with a roof.\"" },
      } },

    { name = "the wall of buttons",
      wonder = true,
      description = "You tip your head back. The buttons go up the wall in their ranks, past the top of the panelling, past where a ceiling should be, into a brown dusk with a lamp in it and then on beyond the lamp. You look down between your boots and the stool. They go down as well, row under row, to a depth where each button is a grain and then a grey haze. Every one of them is a floor. Every floor is a hall like Mr Brimley's, lit, staffed, and keeping its paperwork up. You had thought of the bad place as a pit. It is a ledger, and you are standing in the binding.",
      things = {
        { name = "the worn buttons", description = "Perhaps a dozen, at hand height, are polished pale by the glove. These are the floors anybody goes to." },
        { name = "the unworn buttons", description = "All the others. Scuttle has never pressed them. \"Somebody's in there, doing something,\" he says. \"You can hear them, when it's quiet. Rulers.\"" },
        { name = "a button with a ribbon on it", description = "A loop of black ribbon tied round one button, high up. Floor minus two hundred and twelve. Scuttle shrugs. \"Somebody upstairs keeps writing about it. Soul that won't stay filed. They've tied the ribbon on so the query knows where to come.\"" },
        { name = "the button with nothing on it",
          key = "ho_blank_button",
          description = "The very lowest, under even the Executive Floor, down by the skirting. It has no number and no minus. It is not black like the others but the grey of a pebble, and nothing has worn it.",
          actions = {
            { "Press the button with no number", when = no(flag "ho_foundations_open"), set "ho_foundations_open", fx "shake",
              say "You crouch and put your thumb on it. \"I wouldn't,\" says Scuttle, without heat, \"but I'm not allowed to stop a guest.\" It goes in with a click like a knuckle. The humming stops. For a moment the lift does what it has never done: it moves, a hand's breadth, downward. A new way shows on the dial that has no mark against it. Scuttle takes off his hat. \"Well,\" he says. \"That's the bottom of the bottom. I'll wait. I'm not getting out.\"" },
          } },
      } },

    { name = "the dial over the door",
      description = "A brass half-circle with a needle. It was engraved for twelve floors. More have been added since in paint, then in pencil, then on a strip of paper pasted round the rim and trailing down the wall like a tape measure.",
      things = {
        { name = "the paper strip", description = "It reaches the floor and has been neatly rolled. The numbers on the last yard are in a hand so small that you take it for a decorative border." },
      } },

    { name = "the mirror",
      description = "A long glass on the back wall, in a gilt frame. It shows the lift, the buttons, Scuttle, and you, looking better than you feel.",
      things = {
        { name = "your reflection", description = "A shade taller. A shade better dressed. It has your sword, but it is a real one. You raise a hand and it raises a hand, a very little late, like a clerk checking a figure before he copies it." },
        { name = "a notice in the corner of the frame", description = "{i}This glass flatters. It is the policy of the Firm that every guest should see what might be arranged.{/}" },
      },
      actions = {
        { "Make a face at it", say "You pull the worst face you have. The reflection gives it back to you, improved. It is a handsomer bad face than yours, with more character. You stop, since you were losing." },
      } },

    { name = "the brass rail",
      description = "Round three sides at hip height. It is warm, like everything, and polished by a specialist." },

    { name = "the music",
      description = "It comes from a grille in the ceiling: something slow for strings, played very softly and with great feeling by an orchestra that has one tune.",
      things = {
        { name = "the grille", description = "If you put your eye to it you can see the corner of a music stand, and a claw turning the page back to the beginning." },
      },
      actions = {
        { "Hum along", say "You pick it up by the third bar. Scuttle joins in a third below. Behind the grille a violin falters, and then all the strings come in again together, louder and almost in tears, like players who have been heard at last." },
      } },

    { name = "the certificate",
      description = "Framed, by the door. {i}This lift has been inspected.{/} There is a date, which is a year with three figures in it, and a signature, and under the signature: {i}It will do.{/}" },

    { name = "a brass plate by the door",
      description = "{i}Maximum load: 13 persons, or 1 Director, or 4,000 files.{/} Somebody has scratched {i}or 1 conscience{/} underneath, and somebody else has had it almost polished out." },

    { name = "the emergency handle",
      description = "A red handle behind a little pane of glass. {i}In case of doubt, break glass.{/} The glass has never been broken. Doubt has occurred, Scuttle says, but nobody liked to." },

    { name = "the floor of the lift",
      description = "Linoleum in a pattern of small flames, worn through to the boards in a patch exactly the size of a stool." },
  },

  exits = {
    { to = "ho_reception", label = "R: Reception", description = "The marble hall, the red lamps and Miss Cinder." },
    { to = "ho_temptation", label = "Minus 3: Temptation", description = "The front line. It is short of hands and long on targets." },
    { to = "ho_contracts", label = "Minus 9: Contracts", description = "Where it is written down, at length." },
    { to = "ho_personnel", label = "Minus 40: Personnel", description = "Appointments, confirmations, and three hundred years of Mr Brimley." },
    { to = "ho_canteen", label = "Minus 77: Staff Canteen", description = "Dinners from twelve to two. It is always twelve to two." },
    { to = "ho_archive", label = "Minus 500: The Archive", description = "Every bargain, filed." },
    { to = "ho_customer_experience", label = "Minus 666: Customer Experience", description = "Formerly Torments. They are tired of the joke about the number." },
    { to = "ho_furnaces", label = "Minus 900: Works", description = "The furnaces. Wear something you do not mind." },
    { to = "ho_executive", label = "The Bottom: Executive Floor", description = "As low as the numbers go. The carpet starts at the lift door." },
    { to = "ho_foundations", label = "The button with no number",
      description = "One floor further than the bottom. The lift does not like it and goes anyway.",
      requires = flag "ho_foundations_open", hidden = true },
  },
}

space {
  id = "ho_foundations",
  region = "head_office",
  secret = true,
  wonder = true,
  name = "Under the Bottom",
  description = "The doors open on no floor of the building. You step out under it. Above you hangs the underside of Head Office: the footings of six thousand storeys, black girders, the cold ends of pipes. Below your boots there is one level surface of pale stone running away into the dark, with no join in it anywhere. It is cool. After so many warm rooms the cool goes through you like a drink of water. The building does not stand in this floor. It stands on it, on a great many small brass feet, as a wardrobe stands in a room that belongs to somebody else.",
  palette = { bg = "#0a0c0e", text = "#d4dadc", dim = "#66747a", accent = "#b8d0d8", border = "#34444c" },
  ambience = {
    dust { glyphs = "·", color = "#46545a", rate = 0.05, speed = 0.04 },
    shimmer { color = "#1c2a30", strength = 0.2 },
  },

  things = {
    { name = "the pale floor",
      description = "Smooth as the inside of a shell and the colour of the sky before sunrise. No tool marks. No seams. You walk a long way out from the lift with a hand trailing and it does not change.",
      things = {
        { name = "the cool of it", description = "It comes up through your boots. It is the only thing in Head Office that is not kept warm, and the heat of nine hundred floors of furnace sits on top of it and has never got one inch in." },
        { name = "a scratch", description = "One short bright scratch, by a brass foot, where somebody tried a chisel. The chisel is still lying there. Its edge is turned over like the lip of a jug." },
        { name = "a single curved line", description = "Out in the middle, under the dead centre of the building, a line is let into the stone: one shallow curve as long as your arm. It is not carved. The floor simply has it, like a crease in the palm of a hand. The brass feet nearest to it have all been set a respectful yard away." },
      },
      actions = {
        { "Lie down on it", say "You lie on your back on the cool stone and look up at the underneath of every wicked office in creation. From here it is a ceiling with pipes. Your shoulders come down from round your ears for the first time since the tube. Nothing down here wants anything from you. You get up after a while, with reluctance." },
      } },

    { name = "the brass feet",
      description = "Thousands of them, in rows: each a claw of cast brass as big as an anvil, clenched on a ball. The whole of Head Office rests on these and on nothing else.",
      things = {
        { name = "a foot, close to", description = "The ball under the claw is not fixed. The foot has been set down on the pale stone and has stayed where it was put by weight alone. Nothing would take a bolt." },
        { name = "a wedge of folded paper", description = "Under one foot that must have rocked. It is a memorandum, folded in eight. You can read one corner: {i}...temporary, pending proper foundations...{/} The date has three figures." },
      } },

    { name = "the surveyors' post",
      description = "A trestle table, a lantern long burnt out, and a theodolite on three legs, all under a grey felt of dust. The Works Department came down here once to find out what they were building on.",
      things = {
        { name = "the theodolite", description = "Brass, fine, and pointing at nothing. Whoever used it last left it sighted along the floor towards the dark, at a mark they never found." },
        { name = "the survey book", description = "Open at the last entry. Columns of levels, every one the same figure. Then, in a different pen: {i}No fall in any direction. No edge reached in nine days' walking. It was here. We did not lay it. Recommend we say no more about it and build.{/}" },
        { name = "a plumb bob on a string", description = "Hung from the corner of the trestle. It hangs dead true, as you would expect of the one honest thing in the building." },
      },
      actions = {
        { "Sight through the theodolite", say "You wipe the eyepiece and look. Pale floor, level as milk, out to where the dark begins. You turn the little wheel as far as it goes. More floor. Whatever this is the top of, Head Office is a hat left on it." },
      } },

    { name = "the underside of the building",
      description = "Girders, rivets, and the bottoms of things. You can pick out the Executive Floor by the quality of the joists.",
      things = {
        { name = "the cold pipes", description = "The return pipes from the furnaces, lagged in rope. They come down, turn, and go straight back up, like visitors who have seen enough." },
        { name = "a drip", description = "Ink, from a blot somewhere far above, falling a drop at a time. It lands on the pale stone and does not stain it. It beads, and rolls about, and is gone by the time the next one comes." },
        { name = "a trapdoor in the joists", description = "Directly over the curved line there is a hatch in the floor of the Chairman's office. It has a ring on the under side, worn bright. Somebody has come down this way, by a ladder, more than once, and gone up again." },
      } },

    { name = "the quiet",
      description = "Upstairs there is always a pen going, a tube coughing, a clock. Here there is nothing. Even the lift has stopped humming. You hear your own breath, and it sounds like somebody else's, further off.",
      actions = {
        { "Call out", say "\"Hello?\" It goes out across the stone. No echo comes back. You have the clear impression that it was heard, though, and that the hearer did not think it was anybody's business to answer." },
      } },

    { name = "a chair",
      description = "A plain office chair, set down alone on the pale stone a long stone's throw from the lift, facing out into the dark. It is not dusty.",
      things = {
        { name = "the seat", description = "Leather, cracked, and hollowed. Somebody very large and very still has sat in this for a long time at a stretch." },
        { name = "a cup on the floor beside it", description = "Bone china, with the Firm's crest. A quarter inch of tea in the bottom has gone cold, but it has not dried. So it was this week, or this year. Time is hard to judge by tea, down here." },
      },
      actions = {
        { "Sit in the chair", say "You sit and look where it looks. Dark, and pale floor going into it. You wait to see what the sitter waits for. Nothing comes. But you find you are not bored and not afraid, and you understand how a person might come down a ladder for this, year upon year, and tell nobody." },
      } },

    { name = "the lift, from outside",
      description = "A lit box hanging from four cables in the dark, with its doors open and a small one-winged figure inside, holding his hat. It is the only light there is. It looks like a lantern somebody has left for you." },

    { name = "the dark beyond",
      description = "It begins where the lift's light gives up. It is not the dark of a cellar. It has no walls in it. The floor goes on into it, and you could walk after it, and you somehow know that it would be perfectly safe and that you would not arrive.",
      actions = {
        { "Walk a little way in", say "You walk until the lift is a spark behind you. Your boots make no sound at all. The stone is cool and level and goes on. You count two hundred steps and stop, since it has become clear that the number does not matter here, and you turn round and follow the spark home." },
      } },

    { name = "a row of chalk marks",
      description = "On the nearest girder, at the height of a devil's reach: tally strokes in fives, a great many, each batch dated. Under the last batch, in the same chalk: {i}Still here. Still not ours.{/}" },

    { name = "the chisel",
      description = "Cold steel, Works issue, lying by the scratch with its edge ruined. A tag on the handle: {i}Return to stores. Do not indent for another. We are not to try again.{/}" },
  },

  exits = {
    { to = "ho_lift", label = "The lift", description = "Back into the lit box. Scuttle puts his hat on again when the doors shut." },
  },
}
