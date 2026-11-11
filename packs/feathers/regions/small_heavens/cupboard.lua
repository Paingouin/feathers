-- The heaven of Our Lady of Lost Socks, which is an airing cupboard, and the corridor behind it.

space {
  id = "sh_sock_cupboard",
  region = "small_heavens",
  name = "The Airing Cupboard",
  description = "You are in a cupboard. It is warm, it smells of clean wool, and it is about the size of a confessional, with slatted shelves up both sides to a ceiling you cannot see. Every shelf is full of socks, and every sock is one of a pair. This is the whole of the heaven of Our Lady of Lost Socks. Her following is large but it only ever thinks of her for a moment, on one foot, in the morning.",
  palette = { bg = "#14100c", text = "#e0d6c4", dim = "#807060", accent = "#f0b870", border = "#54402c" },
  ambience = { steam { glyphs = "˙·", color = "#6a5c4c", rate = 0.2 }, flicker { color = "#f0b060", strength = 0.08 } },

  things = {
    { name = "Our Lady of Lost Socks",
      icon = "☺",
      description = "A small round goddess in a pinafore, sitting on an upturned basket with a darning egg. She has the look of every grandmother who ever said she would find it in a minute. She does find it. That is the entire miracle, and she has never once been thanked, since nobody knows she has done it: the sock is merely there again, at the back of the drawer.",
      variants = {
        { when = flag "sh_corridor_found", description = "A small round goddess in a pinafore, darning. She has seen you find the back of the cupboard and has decided, visibly, that what you do in the corridor is between you and the mop." },
      },
      things = {
        { name = "the darning egg", description = "Boxwood, brown with handling. She darns the ones that come in holed before she pairs them. Nobody on earth has ever wondered why the lost sock came back better than the one that stayed." },
        { name = "her spectacles", description = "On a string. One lens is for near and the other is for {i}behind the wardrobe{/}." },
        { name = "her pinafore pocket", description = "It holds a thimble, a list, and a single baby's bootee which she says she is not ready to send back yet." },
      },
      actions = {
        { "Thank her", say "She stops darning. She puts the egg down. \"Well,\" she says. \"Well, now.\" She takes off her spectacles and wipes them on the pinafore for some time. \"Nobody's come up to say it before. They say it to the drawer.\" Your left sock, the one you gave her, comes down off a shelf by itself and lands on your knee with its fellow, darned at the heel." },
        { "Ask where they go", say "\"Go? They don't go anywhere. They come {i}here{/}.\" She waves the egg at the shelves. \"A sock gets tired of being one of two. It wants a bit of time. I give it a shelf and a rest, and when it's ready, back it goes. You'd not believe the state of some marriages I've saved.\"" },
        { "Ask who made the world", say "\"Not me, dear, I only do socks.\" She looks at the shelves. \"There were feet already, when I came. Cold ones. That's all I know.\" She holds up a grey sock against the lamp. \"Now is that a hole or is it the pattern?\"" },
      } },
    { name = "the shelves",
      wonder = true,
      description = "Slatted pine, going up out of sight in the warm dark. {shimmer}Every sock that was ever lost is here, and each one is lying beside its other.{/} The other is not here, of course. The other is in a drawer in Aldmoor, alone. What lies beside each lost sock is the shape of its pair, kept for it, in the wool of the shelf. It is the tidiest thing you have ever seen, and it has all been done one at a time.",
      things = {
        { name = "a shelf of grey", description = "Guard issue, hundreds. Most have a hole at the big toe. She has darned every one, in grey, and then, since it is her heaven, embroidered a very small daisy inside the cuff where no sergeant will look." },
        { name = "a shelf of small ones", description = "Children's. These go back fastest, she says, since the feet are growing and will not wait. Some have gone back too late and come up again a week after, outgrown, and those she keeps." },
        { name = "a shelf of one", description = "A whole shelf with a single silk stocking on it, clocked in gold. It has been here two hundred years. Its pair was buried on the leg of a duchess. \"She's not ready,\" says the goddess, meaning the stocking." },
        { name = "the top shelf", description = "You cannot see it. You can hear it: a soft continual arriving, like snow on a roof. All over the kingdom, people are getting dressed." },
      } },
    { name = "the lamp",
      description = "A night light in a saucer. It is the only light in this heaven and it is plenty.",
      things = {
        candle { name = "the night light", description = "A stub of wax in a saucer of water, burning small and steady. It has been burning since the first cold foot." },
      } },
    { name = "the hot pipe",
      description = "A fat copper pipe that comes up through the floor, crosses the cupboard and goes out through the back wall. It is what keeps the heaven aired. It ticks as it warms.",
      things = {
        { name = "a row of socks on the pipe", description = "Wet ones, drying. They were lost in puddles, off washing lines, and in one case down a well. That one has a newt in it, which she is also drying." },
        { name = "where the pipe goes", key = "sh_pipe_hole", description = "Into the back wall, through a hole a size too big. There is light round the pipe, of a different yellow from the lamp, and a smell of floor polish." },
      } },
    { name = "the basket",
      description = "The same wicker basket as in the alcove on the Street, seen from underneath. Its bottom is the ceiling of the doorway. Socks come through the weave now and then, heel first.",
      actions = {
        { "Look up through it", say "You see the Street of Small Gods from below, through wicker: the soles of a pilgrim, the hem of a priest, a sky cut into diamonds. A child drops a sock in. It comes through the weave, turns over once in the warm air, and settles on its shelf." },
      } },
    { name = "the back wall",
      key = "sh_back_wall",
      description = "Tongue and groove, painted cream, behind the last of the shelves. One board has a knot hole in it at the height of a small goddess's eye.",
      variants = {
        { when = flag "sh_corridor_found", description = "Tongue and groove, painted cream. One board, it turns out, is a door, the kind with no handle that you open by knowing about it. It stands ajar. Behind it there is linoleum." },
      },
      actions = {
        { "Feel along the back wall", when = no(flag "sh_corridor_found"), set "sh_corridor_found",
          say "Your fingers find a draught, and then a hinge. One board swings. Behind the heaven there is a corridor, lit by a row of bulbs of holy light in wire cages, with brown linoleum going both ways. \"Staff only,\" says the goddess, not looking up. \"Wipe your feet. I'm not saying I saw you.\"", fx "sparkle" },
        { "Look through the knot hole", say "Linoleum. A bucket. A pair of very large sandals going past, attached to somebody in a hurry, and a voice saying that if Thursday wants his afternoon dusted he can do it himself." },
      } },
    { name = "a tea chest of odd ones",
      description = "By her feet. These are the socks that came up with no pair anywhere: the pair was burned, or eaten by a dog, or was never knitted.",
      things = {
        { name = "a red sock", description = "One of one. The knitter ran out of wool, and of patience, and of years. The goddess has started on a second herself. She is not a quick knitter and it is going to be a slightly different red." },
        { name = "a sock with a face on it", description = "Two buttons and a stitched mouth. A puppet. It was not lost: it was put away when its child grew up. It came here by itself. She keeps it on her hand when the evenings are long." },
        { name = "a knight's hose", description = "Mail, one leg. Its pair is at the bottom of Lake Perhaps with the knight still in it. \"He's not asked,\" she says. \"If he asks, I'll see what I can do.\"" },
      } },
    { name = "a list on a nail",
      description = "Today's. {i}Tuttle, No. 9, blue, under the cat. Brisket, Capt., grey, in his other boot (again). The King: a marrow has been put in it.{/} Each is ticked. The last line is not ticked and reads {i}the adventurer, left, given freely{/}, with a small star.",
      actions = {
        { "Read further down", say "Tomorrow's is already begun. She knows which socks are going to be lost. She does not prevent it. \"That would be interfering,\" she says. \"And then what would they need me for?\"" },
      } },
    { name = "a smell of wool",
      description = "Warm, clean, a little singed where something was left on the pipe too long. It is the smell of being about to be comfortable. You had forgotten it, and you could not say since when." },
    { name = "a mouse hole",
      description = "At the skirting. A real one, with a real mouse, who is the only other soul in this heaven and is here on the strength of one very sincere prayer about a moth.",
      things = {
        { name = "the mouse", description = "Stout and reverent. It lines its nest with the ravellings from her darning, which makes it the best housed mouse in creation. It says grace." },
      } },
    { name = "your left sock",
      description = "On the nearest shelf, at eye height, where the new ones go. It looks smaller than it did on your foot, and oddly dignified. Beside it the wool of the shelf is already pressing itself into the shape of the right one." },
  },

  exits = {
    { to = "temple_quarter", label = "Out through the basket", description = "Up, through the weave, heel first like everything else." },
    { to = "sh_staff_corridor", label = "The loose board", description = "Through the back of the cupboard into the corridor behind the heavens.",
      requires = flag "sh_corridor_found", hidden = true },
  },
}

space {
  id = "sh_staff_corridor",
  region = "small_heavens",
  secret = true,
  name = "Behind the Heavens",
  description = "A long service corridor with brown linoleum, a dado rail, and a light in a wire cage every ten paces. Doors open off it on both sides, each with a card in a brass holder. Through one comes a smell of soup, through another a draught and the sound of rain. The splendour is all on the other side of these doors, where the faithful can see it. Round the back, heaven is a place of work, and somebody has to do the floors.",
  palette = { bg = "#100f0c", text = "#d6d0c0", dim = "#74705e", accent = "#d8c070", border = "#463f2c" },
  ambience = { flicker { color = "#e8d890", strength = 0.1 }, dust { glyphs = "·", color = "#5c563e", rate = 0.1 } },

  things = {
    { name = "the row of doors",
      description = "Deal, painted the brown of all corridors, each with its card. They are the back doors of the heavens. The gods come out of them in their shirtsleeves.",
      things = {
        { name = "a door marked SOCKS", description = "The loose board, from this side. Somebody has chalked {i}knock first, she darns{/}." },
        { name = "a door marked SOUP", description = "Propped open with a ham bone. The smell coming out of it has stopped angels in mid errand." },
        { name = "a door marked DOORS", description = "It sticks. Of course it does. There is a boot mark at the bottom, very old and very large." },
        { name = "a door marked T.", description = "Double bronze, twenty feet high, let into the corridor wall as if the corridor had been built round it afterwards, which it was. One leaf has a deal door cut in it for the caretaker." },
        { name = "a door marked POST", description = "Half glazed, with a counter flap. Behind the glass, a white blur of paper falling." },
        { name = "a door with no card", description = "The holder is empty and polished. The door is new deal, never painted, and has no handle on this side.",
          variants = {
            { when = flag "sh_anteroom_known", description = "The holder is empty and polished. The door is new deal and has no handle, but Mrs Collect has told you the trick, which is that you wait at it." },
          } },
      } },
    { name = "the mop",
      icon = "╿",
      description = "One mop, one bucket, for all the heavens. There is a rota. Thrum's caretaker does Mondays out of habit, and nobody has done a Thursday for a very long time, since Thursday says his afternoon is meant to look like that.",
      things = {
        { name = "the bucket", description = "Galvanised. The water in it is holy by now from sheer proximity, and grey." },
        { name = "the rota", description = "Pinned over the bucket. {i}Mon: Vesper. Tues: Socks (excused, knees). Weds: Stock. Thurs: see Thurs. Fri: Jamb, if he can get out.{/} Saturday and Sunday are blank. Those are the busy days, out front." },
      },
      actions = {
        { "Do a bit of the floor", say "You mop from the soup door to the post door and back. It is linoleum. It comes up a darker brown and dries the same. Nobody sees. A door opens an inch, somewhere down the corridor, and shuts, and you have the feeling of having been entered in a book on the credit side." },
      } },
    { name = "a nail by the mops",
      key = "sh_key_nail",
      description = "A four-inch nail in the dado, with a key on it on a luggage label.",
      variants = {
        { when = flag "sh_key_taken", description = "A four-inch nail in the dado, and a key-shaped patch of cleaner paint. Somebody will notice on Monday. Vesper will notice. He will write a memorandum, and it will go to the god in charge, who is himself." },
      },
      actions = {
        { "Take the key", when = no(flag "sh_key_taken"), set "sh_key_taken", give "sh_latchkey",
          say "It comes off the nail with a small iron chime. The label says not to. You read the label after, which is the order adventurers do things in. The key is heavy and cold and the wards are cut like words. Along the corridor, every door gives one soft click, the way a house does when it notices you have a key.", fx "sparkle" },
      } },
    { name = "the time clock",
      description = "An oak case with a dial and a slot, by the bronze doors. The gods clock on. It was Saint Ledger's idea and they have never forgiven him.",
      things = {
        { name = "the rack of cards", description = "One for each. {i}SOCKS{/} is punched every dawn. {i}STOCK{/} has never clocked off. {i}JAMB{/} has the card jammed in the slot of the rack. {i}ALMOST{/} has a card with a row of dents that do not go through." },
        { name = "a card at the end", description = "Yellow with age, in a slot by itself: {i}THRUM, L. of A.{/} Punched in, nine hundred years ago, on a Monday. Never punched out. Strictly, he is still on shift." },
      },
      actions = {
        { "Clock on", say "There is no card for you. You put your hand in the slot instead. The clock considers it, goes {i}chunk{/}, and stamps the back of your hand with a time. It is the right time. You had been wondering." },
      } },
    { name = "the pigeonholes",
      description = "A rack of them, for internal post between heavens. Most hold a memorandum.",
      things = {
        { name = "a memorandum from Ledger", description = "{i}To all deities. It has come to our notice that miracles are being performed without a docket. A miracle without a docket is a coincidence and will be charged as such.{/}" },
        { name = "a note for Soup", description = "{i}More pepper. Yrs, Thursday.{/} And her reply, on the same paper, turned over: {i}No.{/}" },
        { name = "a postcard", description = "A view of Saltwick, the Light, from the sea. On the back: {i}Weather here. Wish you were lovely.{/} It is from Old Looks-Like-Rain to Almost. He means it kindly. He always gets it nearly right, for her." },
      } },
    { name = "the pipes",
      description = "Along the ceiling. One hot, from the cupboard. One cold, for the porch. One of lead, very old, that comes out of the wall by the bronze doors and has been capped.",
      things = {
        { name = "the capped pipe", description = "A lead cap, soldered, with a stamp on it: a hand holding a forked thing. Whatever used to come down this pipe to the world, it was turned off at the main when Thrum's last believer died. It still knocks, about once a year." },
      } },
    { name = "the notice board",
      description = "Green baize, brass pins.",
      things = {
        { name = "a notice about smiting", description = "{i}Smiting is by arrangement only. See Ledger for the form. Plagues: one per reign. Signs and wonders: use the small ones first.{/}" },
        { name = "a card in a child's hand", description = "{i}LOST. One god. Answers to nothing. If seen please tell the Unknown temple, Aldmoor, evenings.{/} The priest has been sending these up for years. Somebody pins each new one over the last." },
        { name = "a sign-up sheet", description = "{i}Heavenly Choir, Tues.{/} Three names: Vesper, the mouse, and somebody who has signed with a wet hoofprint." },
      } },
    { name = "the linoleum",
      description = "Brown, with a paler track down the middle where the same few pairs of feet have gone up and down since the corridor was laid. In places it is worn through to an older floor.",
      things = {
        { name = "the older floor", description = "Marble. White, veined in gold. It runs under the linoleum the whole length of the corridor and under the walls on both sides. The small heavens were partitioned off out of something very large, when the rents came down." },
      } },
    { name = "a seraph on a ladder",
      description = "Six wings, four of them folded out of the way and two holding the ladder. He is changing the light in a wire cage, by taking out a small dim star and screwing in a new one.",
      actions = {
        { "Hold the ladder", say "\"Much obliged.\" He hands you down the old star. It is the size of a walnut, grey, and still a little warm. \"They go after an age or so. Put it in the bucket. It'll be the dark sort by morning and somebody has those for the cellars.\"" },
        { "Ask who made the corridor", say "\"Works department.\" He screws the star in. \"Before that it was all one, they say. Open plan.\" He comes down a rung. \"Before {i}that{/}, don't ask me, I'm maintenance. Mind, the light was already on when the first of us got here. I've always thought that was civil of somebody.\" He goes back up. \"Pass me that cage.\"" },
      } },
    { name = "a tea trolley",
      description = "Parked by the post door. An urn, a plate of rock buns, and an honesty box in the form of a small bowl of answered prayers.",
      things = {
        { name = "the urn", description = "It is always nearly boiling. That is Almost's contribution to the corridor and it is the only one she has managed." },
        { name = "the rock buns", description = "Baked by the goat god. Nobody knows what is in them. Everything, presumably." },
      },
      actions = {
        { "Have a bun", say "It is like eating a small warm hillside. There is a button in it. You are, by this point, not surprised, and put the button in your pocket for luck." },
      } },
    { name = "the far end",
      description = "The corridor goes on past the last door, the lights further apart, and the linoleum stops. After that it is bare boards, then bare joists, and then a builder's trestle with a lamp on it and a sign.",
      things = {
        { name = "the sign", description = "{i}NO HEAVENS BEYOND THIS POINT. Yet.{/}" },
        { name = "beyond the trestle", description = "Dark, and not empty. It has the feel of a field at night before a fair comes. Room has been left." },
      } },
  },

  exits = {
    { to = "sh_sock_cupboard", label = "The door marked SOCKS" },
    { to = "sh_soup_kitchen", label = "The door marked SOUP",
      requires = flag "sh_pot_stirred", locked = "the bone is in the door, but a ladle bars it: you have not paid your respects at the Stockpot on the Street" },
    { to = "sh_door_corridor", label = "The door marked DOORS",
      requires = flag "sh_door_unstuck", locked = "it sticks: there is a knack, and it is on the Street side" },
    { to = "sh_marble_heaven", label = "The door marked T.",
      requires = flag "sh_thrum_named", locked = "the little door in the bronze will not open to somebody who does not know whose it is" },
    { to = "sh_sorting_office", label = "The door marked POST" },
    { to = "sh_anteroom", label = "The door with no card", description = "You stand in front of it, and wait, and in a while it has always been open.",
      requires = flag "sh_anteroom_known", hidden = true },
  },
}
