-- Below Castle Regret: the crypt, and under the crypt the Lower Office, which has the cellarage on a long lease.

space {
  id = "gl_crypt",
  region = "glowers",
  name = "The Crypt of Regret",
  description = "A vault cut in the living rock, low and long, with forty stone coffins in two rows and a forty-first at the end on a dais, lid ajar. Cold. Cobwebs, as there should be. Lavender in bunches on every lid, as there should not. A doormat at the foot of the stair says {i}WIPE{/}.",
  palette = { bg = "#0a0b0e", text = "#c8ccd4", dim = "#5c6270", accent = "#a898c8", border = "#2e3240" },
  ambience = {
    drip { glyphs = "⠁⠂⠄", color = "#4a5068", rate = 0.2 },
    fog { color = "#14161c", speed = 0.15, strength = 0.4 },
  },

  things = {
    { name = "the forty coffins",
      description = "Granite, each with a Count or Countess carved on the lid, hands crossed, feet on a wolf.",
      things = {
        { name = "the coffin of Radomir the First", description = "Twice the size of the rest. The effigy has its mouth open, mid-order. Somebody has laid a turnip in the stone hands, a fresh one. It is replaced each harvest." },
        { name = "the coffin of Ottoline the Pitiless", description = "Her stone hawk has lost its beak. It has been glued back, twice, by different centuries." },
        { name = "a coffin with a bee on it", description = "Ulrich. One bee, carved on the lid in the place of a coat of arms, and a real hive in the airshaft above, which the Count keeps going in his memory. There is honey in the crypt. Nobody outside would believe a word of it." },
        { name = "the lavender", description = "A bunch on every lid, grey and dry, changed at midsummer. He does the rounds with a basket. He says they were dreadful people, and that they are still his, and that both of those are true every year." },
      },
      actions = {
        { "Knock on a lid", say "You rap on Radomir. Stone. Then, with your ear nearly on the granite, you would swear you hear a tiny, irritable scratching. It goes on. It is a deathwatch beetle, in the oak of the dais, and you start breathing again." },
      } },

    { name = "the forty-first coffin",
      description = "On the dais, plain black stone with no effigy, the lid pushed a foot aside. This one is in use. You approach it as you would approach a sleeping dog of no known temper, and look in.",
      things = {
        { name = "inside the coffin", description = "It has been made up. A horsehair mattress, cut to fit. White sheets, turned down. One pillow, plumped. A hot brick in flannel at the foot, gone cold. He does not sleep, he told you so: he lies here from cock-crow to dusk with his hands folded, wide awake, because it is what is done. He has made it as nice as he can." },
        { name = "a shelf in the lid", description = "Cut into the underside, where he can reach it lying down. A candle stub. A tinder box. A book: {i}Setts and Their Laying{/}, volume two." },
        { name = "the native earth", description = "His kind must rest on the soil of their homeland. A tray of it is under the mattress, an inch deep, neatly raked. He is, of course, already in his homeland. He says one does not like to chance it." },
        { name = "a nightshirt", description = "Folded on the pillow. Long, white, with a monogram, and a nightcap with a tassel. The terror of the seven hills goes to his coffin every morning in a nightcap." },
      },
      actions = {
        { "Try it for size", say "You climb in. It is surprisingly comfortable. You lie with your hands crossed and look up at the vault. From here somebody has painted a few stars on the stone, small and badly, the way a boy would. You get out again before you can be found there, and smooth the sheet." },
      } },

    { name = "the cloak on the hook",
      key = "gl_cape_hook",
      visible_if = no(item "gl_cape_entrances"),
      description = "On an iron hook behind the dais, in a muslin bag against moth, hangs a cape: black without, red within. Even on a hook, even in a bag, it hangs with more presence than most people manage standing up.",
      things = {
        { name = "a card on the bag", description = "{i}The first Count's. One cannot put it on to fetch the post. Every door flies open, and Grist says the organ music frightens the hen. It ought to be worn by somebody who is going somewhere. Please.{/}" },
      },
      actions = {
        { "Take the cape", once = true, give "gl_cape_entrances",
          say "You lift it out of the muslin. It pours over your arm like something poured. The crypt's one door, at the top of the stair, bangs open by itself. Forty candles you had not noticed light at once, and a chord rolls through the rock, low and held. A hen, far above, makes its feelings known.", fx "flash" },
      } },
    { name = "the empty hook", visible_if = item "gl_cape_entrances",
      description = "A hook, a muslin bag, a card. The bag is still holding the shape of the shoulders." },

    { name = "the cobwebs",
      description = "In every arch, grey and heavy. Each one has a small paper tag tied to its top strand.",
      things = {
        { name = "a tag", description = "{i}Do not dust. Occupied.{/} And a date, and the initials of whichever Grist was butler when the spider moved in." },
      } },

    { name = "the stair up",
      description = "Worn in the middle, forty steps. The doormat is at the bottom, so that he wipes his feet on the way out of his own grave." },

    { name = "the airshaft",
      description = "A slot going up through the rock to the hillside, the width of a hand. It lets in a thread of the outer air and, at this hour, a thread of bees going home.",
      things = {
        { name = "the hive", description = "A straw skep on a ledge inside the shaft. The bees are black, small, and work the white roses and the night stock. They are the only bees in the kingdom that fly at dusk. The honey is pale and tastes of nothing you can name, a little sad, very good on toast." },
      } },

    { name = "a stone bench",
      description = "Along the wall, for mourners. A cushion on one end, and beside the cushion a workbasket: grey wool, a darning egg, a sock on four needles.",
      things = {
        { name = "the sock", description = "Black, long, half turned at the heel. On sleepless days he sits down here among the family and knits. He has learned to do it in the dark and says it stops him dwelling." },
      } },

    { name = "rats",
      description = "Two, on a coffin lid, sharing a crust.",
      things = {
        rat { description = "Glossy, and at home. It looks at you as a member looks at a visitor in the club library." },
        { name = "a saucer", description = "Milk, and a rind of cheese. There is a saucer for the rats at the foot of every tenth coffin. He says a crypt should have rats and that they should not have to be thin about it." },
      } },

    { name = "a second stair, going down",
      description = "Behind Great-Uncle Tancred's coffin: an arch that is newer than the crypt, squared off and faced with a dull red brick. Stairs descend. They are lit by a lamp that does not flicker at all. A brass plate is screwed to the arch.",
      things = {
        { name = "the brass plate", description = "{i}LOWER OFFICE (GLOWERS BRANCH). Temptations, Acquisitions and Accounts. Hours: always. Please take a ticket.{/}" },
        { name = "a smaller plate", description = "{i}Leasehold of the Regret Estate. Ground rent: one peppercorn, payable at midsummer, never yet in arrear.{/}" },
        { name = "the smell from below", description = "Not brimstone. You sniff again. Ink, floor polish, and carbon paper." },
      } },

    { name = "a wreath",
      description = "Propped against the dais: garlic, plaited, with a black ribbon. A card: {i}From the Parish, with respect. Stay up there.{/} It arrives at midwinter. He hangs it where he can see it. It is the only present the village has ever sent him and he does not seem to have noticed what it is made of." },

    { name = "the dripping",
      description = "Water comes through the vault in one place and falls into a stone basin. It has been falling for nine hundred years and has made the basin itself. He winds his watch by it." },
  },

  exits = {
    { to = "gl_hall", description = "Up the forty steps, wiping your feet." },
    { to = "gl_waiting_room", description = "Down the brick stair, toward the smell of ink." },
  },
}

space {
  id = "gl_waiting_room",
  region = "glowers",
  name = "The Waiting Room",
  description = "A long room with a brown floor, lit by lamps that neither flicker nor warm. Benches along the walls. A hatch with a shutter, down. A ticket dispenser. A sign with a number on it. Nothing here is on fire. It is quiet and clean and of a moderate temperature, and it has been waiting for so long that the benches have settled into the attitude of it.",
  palette = { bg = "#0e0c0a", text = "#d0c8bc", dim = "#746c60", accent = "#c85838", border = "#4a3a30" },
  ambience = { dust { glyphs = "·", color = "#4a443c", rate = 0.08, speed = 0.05 } },

  things = {
    { name = "the number board",
      description = "Over the hatch, a brass frame with painted wooden tiles on hooks. {i}NOW SERVING: 211.{/} The tiles have a layer of dust on their upper edges. The 1 on the end has cobweb between it and the 1 before.",
      variants = {
        { when = flag "gl_called", description = "Over the hatch, in a brass frame: {i}NOW SERVING: 212.{/} The last tile is clean and bright and still swinging very slightly on its hook. The shutter is up." },
      } },

    { name = "the ticket dispenser",
      key = "gl_dispenser",
      description = "A red iron pillar with a slot and a tongue of grey card sticking out. A plate: {i}TAKE ONE. ONE ONLY. WE WILL KNOW.{/}",
      actions = {
        { "Take a ticket", once = true, give "gl_ticket",
          say "You pull. The machine goes {i}chunk{/} with satisfaction and gives you a card. Seven million and four hundred and twelve. You look at the board. Two hundred and eleven. From behind the shutter comes the sound of a page being turned by somebody with all the time there is." },
        { "Take another", when = item "gl_ticket", say "You reach. The tongue of card withdraws into the slot, smartly, like a snail's eye." },
      } },

    { name = "the hatch",
      key = "gl_hatch",
      description = "A counter with a wooden shutter pulled down and a bell. A card in a brass holder: {i}POSITION CLOSED. Please wait to be called. Your patience is being recorded.{/}",
      variants = {
        { when = flag "gl_called", description = "The shutter is up. Behind the counter a passage runs back between walls of pigeonholes into the rock. A flap in the counter has been lifted for you. The card in the holder has been turned round: {i}POSITION OPEN.{/} It is a crisp, new-looking card. It has never been needed before." },
      },
      actions = {
        { "Ring the bell", when = no(flag "gl_called"), say "{i}Ting.{/} Nothing. Then a voice behind the shutter, dry and level: \"Number?\" You read yours out. A pause, of the kind that looks over its spectacles. \"We are serving two hundred and eleven.\" When will you be serving two hundred and twelve? \"When two hundred and eleven has finished.\" And when... \"He is thinking it over.\"" },
        { "Show the Count's ticket", when = all { item "gl_old_ticket", no(flag "gl_called") }, set "gl_called", fx "shake",
          say "You ring, and push the brown slip under the shutter. Silence. A chair scrapes. Whispering, quite a lot of it. Then a different voice, higher, a little out of breath: \"Two hundred and twelve? Two hundred and {i}twelve?{/} We'd given him up for... one moment. One moment, please.\" Running feet. A tile is unhooked overhead and another hung. The shutter goes up with a bang, and a small devil in sleeve garters stares at you across the counter. \"You're not him,\" it says. Then it looks at the ticket, and at the rule book, and sags. \"Transferable by gift. Oh, {i}blast{/}. Come through.\"" },
      } },

    { name = "number two hundred and eleven",
      icon = "☺",
      description = "On the front bench, alone, a small man in a nightshirt with a pen in his hand and a paper on his knee. He is not dead, exactly. He has been about to sign since the year of the wet summer. Every so often he lowers the pen, frowns, and raises it again. The whole Office is stopped behind him like carts behind a hay wagon.",
      things = {
        { name = "the paper on his knee", description = "A standard contract. One soul, in return for {i}being proved right about the fence{/}. He is the only one in the room who knows what that means and he is no longer certain it was worth it." },
        { name = "his pen", description = "The ink dried on the nib three centuries ago. Nobody has told him, in case he asks for more and it starts all over again." },
      },
      actions = {
        { "Ask what he is waiting for", say "\"I'm reading the small print,\" he says, not looking up. Is there much of it? \"No. It's very small, though.\" He tilts the paper to the lamp. \"There's a word here. I think it's 'notwithstanding'. I want to be sure before I commit myself.\" You look at the board, the dust, the cobweb. You ask his name. \"Cray,\" he says. \"Alderman. I'm in a dispute.\"" },
        { "Advise him not to sign", say "He looks up for the first time. \"Don't sign?\" He turns the idea over like a coin he does not recognise. \"I hadn't thought of that.\" He goes back to the paper. \"I'll think about it,\" he says, and behind the shutter somebody very quietly begins to weep." },
      } },

    { name = "the benches",
      description = "Oak, slatted, bolted to the floor. A notice above each: {i}NO LYING DOWN.{/}",
      things = {
        { name = "the back bench", description = "Carved, with a penknife, by the bored of several ages. {i}Abandon hope, and bring a book. I was number 9. They were very civil. Wilf woz ere.{/}" },
        { name = "a dip in the front bench", description = "Beside the Alderman: a hollow the width of a thin man, and two pale places on the floor where narrow shoes were set side by side. He sat here for an afternoon, three hundred years ago, with his hat on his knee. Then a gong sounded far above, and the dip has been empty since." },
        { name = "a left umbrella", description = "Black, furled, with a silver wolf's head. On the bench in the dip. It has a lost-property tag tied to it and the tag has a number: {i}212{/}." },
      } },

    { name = "the magazines",
      description = "A low table with a fan of periodicals, corners curled.",
      things = {
        { name = "the top one", description = "{i}The Tempter's Gazette.{/} The cover story is {i}Ten Wishes They Always Regret (Number Seven Will Damn You){/}. It is four hundred years out of date and the fashions are all wrong." },
        { name = "a trade journal", description = "{i}Brimstone Quarterly.{/} Articles on yield. A notice from Head Office: {i}Branches are reminded that fire and pitchforks are no longer house style. Clients respond better to a form.{/}" },
        { name = "a children's comic", description = "For imps. Somebody has done the puzzle in pencil, and then, lacking another, rubbed it out and done it again. The paper is nearly through." },
      } },

    { name = "the clock",
      description = "On the wall, large, plain, with a second hand. The second hand moves. The minute hand does not. It is not broken. In this room the seconds go by and the minutes are held, pending.",
      actions = {
        { "Watch it", say "The thin hand goes all the way round. As it comes up to twelve you find you are leaning forward. It passes twelve. The minute hand gives the smallest shiver, like a horse declining a fence, and stays where it is." },
      } },

    { name = "a potted plant",
      description = "In the corner: an aspidistra, in a brass pot, dark green and immortal. No office is without one. You understand now where they all come from." },

    { name = "the notices",
      description = "Framed, screwed to the wall, in a typeface that does not want an argument.",
      things = {
        { name = "the first notice", description = "{i}Abuse of staff will be noted and returned to you later, with interest.{/}" },
        { name = "the second notice", description = "{i}The Office cannot enter into correspondence regarding the fairness of bargains. All bargains are fair. That is the dreadful part.{/}" },
        { name = "the third notice", description = "{i}LOST PROPERTY: enquire within. Form 9.{/}" },
        { name = "a notice in a different frame", description = "Older, black-edged, signed with a seal you cannot look at for long: {i}By arrangement with the Landlord, no client of this Branch is to be collected from the parish of Lower Wince, in perpetuity. This was his price for the cellar. We consider that he drove a hard bargain.{/}" },
      } },

    { name = "the floor",
      description = "Brown linoleum, or what there was before linoleum. It is polished daily. There is one path worn in it, from the stair to the front bench, by one pair of narrow shoes, once." },

    { name = "a water cooler",
      description = "A glass bottle upside down on a stand. The water in it is boiling, steadily. Paper cones are provided.",
      actions = {
        { "Take a drink", say "You fill a cone. It is tepid by the time it reaches your mouth, and tastes of pennies. A sign you had not seen says {i}Refreshments are added to your account.{/} You did not know you had one. You suspect that you do now." },
      } },

    { name = "the lamps",
      description = "Gas, or something that behaves like gas, in white globes. The light is perfectly even and casts no shadows whatever. You hold your hand over the bench. Nothing. It is the first place in the Glowers where you and the Count would look the same." },
  },

  exits = {
    { to = "gl_crypt", description = "Up the brick stair to the lavender and the honest cold." },
    { to = "gl_lower_office", description = "Through the lifted flap and down the passage of pigeonholes.",
      requires = flag "gl_called", hidden = true },
  },
}

space {
  id = "gl_lower_office",
  region = "glowers",
  secret = true,
  name = "The Lower Office",
  description = "A hall of desks under a brick vault, row upon row, each with a green-shaded lamp and a devil in a waistcoat. Pens scratch. Brass tubes run along the ceiling and every few seconds one of them coughs and delivers a cylinder. It is the engine room of perdition in the Glowers district. It has done no business at all for three hundred years, and it has kept up the paperwork on that with rigour.",
  palette = { bg = "#100a08", text = "#d8cabc", dim = "#7a6456", accent = "#e06838", border = "#56301e" },
  ambience = {
    embers { glyphs = "·˙", colors = { "#c04820", "#e08040" }, rate = 0.08 },
    steam { glyphs = "˙·", color = "#5a463c", rate = 0.15 },
  },

  things = {
    { name = "the clerk who let you in",
      key = "gl_brimley",
      icon = "☻",
      description = "Mr Brimley, Sub-Assistant Tempter (Acting). Three feet tall, brick red, with small neat horns, sleeve garters, and an eyeshade. A tail, which he keeps tucked in his waistcoat pocket like a watch chain. He has been Acting for three hundred years, because the Assistant Tempter went upstairs to tempt the Count and came back down with a recipe.",
      variants = {
        { when = flag "ho_brimley_confirmed",
          description = "Mr Brimley, Sub-Assistant Tempter. Three feet tall, brick red, with small neat horns, sleeve garters, and an eyeshade. A tail, which today he has let out of his waistcoat pocket, and which will not keep still. On his desk, under a glass paperweight, lies a sheet with a crooked red stamp. He was Acting for three hundred years. He has been confirmed for about an hour, and he has already straightened the stamp twice with his eyes." },
      },
      things = {
        { name = "his horns", description = "Filed, and capped with little brass ferrules, to protect the files." },
        { name = "his eyeshade", description = "Green celluloid. Under it his eyes are yellow, slotted, and tired. He has the look of all clerks everywhere who have been left in charge." },
        { name = "his rule book", description = "Chained to his belt. Twelve hundred pages. He knows it by heart, and would dearly love to find, just once, that it was on his side." },
      },
      actions = {
        { "Ask for the Count's soul back", say "\"Two-one-two.\" He runs a claw down a ledger. \"Regret, R. One soul. Received in good condition. Consideration...\" He stops. He reads it again. \"Consideration: 'that she should live'.\" He closes the ledger very gently. \"We don't get many of those. It can be had back. There's a form. He has to come himself, mind, and sign for it at the counter. Tell him it's been kept nicely. Tell him...\" He takes off the eyeshade and rubs his eyes. \"Tell him we never did know where to put it. It wouldn't go on the shelf with the rest.\"" },
        { "Ask how business is", say "\"Business.\" He gestures at the desks. \"The landlord won't let us touch the village. That was the lease. So we've a catchment of one alderman, who is still reading, and whoever comes up the low road. Nobody comes up the low road. Head Office wants to know why our figures are flat.\" He lowers his voice. \"I've been sending them the same quarterly return since the wet summer. I just change the date.\"" },
        { "Congratulate him", when = flag "ho_brimley_confirmed", say "He stands up. He sits down. He stands up again and shakes your hand in both claws. \"It came up the tube,\" he says. \"Signed. Well, stamped. It's the same in law, I looked it up, I have looked it up nine times.\" Sixty devils are pretending to write. \"They've had a signwriter to my door. He scraped the word off. Three hundred years it took to dry and it came off like a stamp off a letter.\" He blows his nose. \"I shall send them the same return on Friday. But I shall send it as of right.\"" },
        { "Ask about lost property", when = no(flag "gl_form_filed"), say "\"Form nine.\" He points with his pen at a rack of forms without looking. \"In triplicate. Nature of item, date of loss, colour of regret. Then I stamp it, then you may go through.\" Through where? \"Through the door I shall then admit exists.\"" },
        { "Ask about lost property", when = flag "gl_form_filed", say "\"You're stamped,\" he says. \"Door at the end. Don't touch the jars. Don't take anything that calls you by name.\"" },
      } },

    { name = "the rack of forms",
      key = "gl_forms",
      description = "A wall of pigeonholes, each with a sheaf, each numbered.",
      things = {
        { name = "form 1", description = "{i}Application to Be Tempted.{/} Nobody has ever filled this in. It is kept for completeness." },
        { name = "form 6", description = "{i}Notice of Intention to Repent (Provisional).{/} In pads of a hundred. The pad is nearly finished and is the only one that is." },
        { name = "form 9", description = "{i}Enquiry After Property Lost, Mislaid, Sold, or Thrown Away in Temper.{/} Pink top copy, yellow second, a third so faint and grey it is hardly there, which is the one you get to keep." },
        { name = "form 9b", description = "{i}Complaint Regarding Form 9.{/} This one has to be filed in person, at Head Office, at the bottom." },
      },
      actions = {
        { "Fill in form nine", when = no(flag "gl_form_filed"), set "gl_form_filed",
          say "You take a set and a pen on a chain. {i}Nature of item.{/} You think, and put: {i}not sure, would know it if I saw it{/}. {i}Date of loss: gradual. Colour of regret:{/} you put {i}brown{/}. Mr Brimley reads all three copies, moving his lips. He looks up at you with something like respect. \"That's the first one of these I've ever seen filled in honestly.\" The stamp comes down three times. At the far end of the hall, between two filing cabinets where there was a wall, there is a door with a frosted glass panel.", fx "flash" },
      } },

    { name = "the desks",
      description = "Sixty, in rows of ten. Blotter, inkwell, lamp, devil.",
      things = {
        { name = "a devil doing accounts", description = "Adding a column of noughts. She has a mechanical calculator with a handle and uses it for every line. The total is nought. She rules it off, blots it, and begins the next column with the air of a professional." },
        { name = "a devil sharpening pencils", description = "He has a box of a thousand, each sharpened to a point and then, since there is nothing to write, sharpened again. Some are an inch long. He will not be hurried." },
        { name = "an empty desk", description = "The Assistant Tempter's. His nameplate, his inkwell, a framed motto: {i}EVERYONE HAS A PRICE{/}. Propped against the motto is a recipe card for shortcrust pastry, in a fine black hand, with a note: {i}You asked. The secret is cold fingers. R.{/}" },
        { name = "a devil asleep", description = "Head on the blotter, horns hooked over the edge of the desk to keep him from sliding off. Nobody wakes him. He is the night shift. It is always the night shift." },
      } },

    { name = "the pneumatic tubes",
      description = "Brass pipes along the vault, with a flap at every desk. They thump and hiss and deliver.",
      things = {
        { name = "a cylinder arriving", description = "It drops into a wire basket. The devil at that desk unscrews it, takes out a slip, reads it, initials it, puts it in a fresh cylinder and sends it on. You follow the pipe with your eye. It goes round the room and comes back to the same desk." },
        { name = "the tube marked DOWN", description = "Thicker than the others, black, and cold to the touch where everything else is warm. It goes through the floor to Head Office. Nothing has come up it in living memory except a calendar, once a year, and a reminder about the figures." },
        { name = "the staff hatch", description = "A brass flap in the side of the black tube, as wide as a barrel, lettered {i}PERSONNEL{/}. Inside is a seat of red leather and a strap. It is how the Firm travels when it must. The leather has never been sat on from this end." },
      },
      actions = {
        { "Send a message", say "You write {i}hello{/} on a slip, find an empty cylinder, and post it in a flap. It goes off with a thump. Sixty heads follow it round the ceiling. It arrives at the desk of the devil with the pencils, who reads it, and turns quite pale, for a devil, and files it under {i}Unprecedented{/}." },
      } },

    { name = "the oldest file",
      description = "In a glass case by the door, on a cushion, with its own lamp: a folder of some dark hide, tied with a tape that has gone to dust and been left. The tab says {i}No. 1{/}.",
      things = {
        { name = "the label on the case", description = "{i}The Branch's copy of the First Claim. Lodged by this Office on the first morning, upon the whole of the property and all contents. Returned the same day.{/}" },
        { name = "the returned claim", description = "You can read the top sheet through the glass. A claim form, the oldest kind, filled in by a claw in letters of rust: {i}Everything. Finders keepers.{/} Across it, struck square in the middle, a stamp in faded blue that is not in the Office's style at all. {i}NOT YOURS. PRIOR.{/}" },
        { name = "a note from Head Office", description = "Clipped to the cushion. {i}Branches are not to speculate as to the other party. It is enough to know that we were not first, and that whoever was did not want anything for it.{/}" },
      },
      actions = {
        { "Ask Mr Brimley about it", say "\"We don't discuss number one.\" He does not look at the case. \"We got here early. Very early. Nothing was signed for yet, so we put in for the lot, as you would.\" And? \"And it came back like that, before the ink was dry, and nobody has ever found out which window it came back through.\" He straightens his eyeshade. \"I'll say this. It's the only stamp I ever saw that didn't look as though it enjoyed it.\"" },
      } },

    { name = "the ledgers",
      description = "A wall of them, red-backed, one for each year of the lease.",
      things = {
        { name = "the current ledger", description = "Open on a stand. {i}Souls received this quarter: 0. Souls pending: 1 (Cray, Ald.). Souls held: 1 (Regret, R.), see note.{/} The note says: {i}Will not stay filed.{/}" },
        { name = "the column headed Refunds", description = "Every ledger has it, ruled in red down the right-hand side of the page. Not one entry in three hundred years. You ask a passing devil what goes there. \"Nothing,\" she says. \"It's there so we can say there is one.\"" },
      } },

    { name = "the tea trolley",
      description = "It comes round at a quarter to, pushed by an imp in a pinafore. An urn, sixty cups, a plate.",
      things = {
        { name = "the urn", description = "It needs no fire under it. In this one particular, the Lower Office is very well appointed." },
        { name = "the plate", description = "Shortbread, with caraway. You know that shortbread. The imp goes up the back stair to the castle pantry on Tuesdays and Grist leaves a tin out. Neither side has ever mentioned it to its superiors." },
      },
      actions = {
        { "Accept a cup", say "The imp pours. It is strong, dark red, and scalding. You ask what it is. \"Tea,\" says the imp, offended. You take the shortbread too. Nothing is added to your account, as far as you can tell, and the imp gives you a second piece for not asking." },
      } },

    { name = "the motivational posters",
      description = "Framed, one per pillar.",
      things = {
        { name = "a poster", description = "{i}TEMPTATION: it begins with listening.{/} Below, a picture of a devil with a hand cupped to its ear, and a farmer, talking." },
        { name = "another", description = "{i}There is no 'I' in 'damnation'.{/} Somebody has pencilled a small arrow to the i." },
      } },

    { name = "a door with a frosted panel",
      key = "gl_lp_door",
      visible_if = flag "gl_form_filed",
      description = "Between two filing cabinets, where the wall was. Gilt letters on the glass: {i}LOST PROPERTY{/}. A shape moves behind the frost, slowly, like a fish under ice. It may be only the lamp." },

    { name = "the suggestion box",
      description = "By the door. It is welded shut. A slot has been cut in the bottom, over a brazier." },

    { name = "the time clock",
      description = "A machine with a slot and a lever. Each devil has a card. You look at the nearest one. {i}IN{/} is stamped once, at the top, three hundred years ago. The column for {i}OUT{/} is clean down the whole card, and down all the cards behind it." },
    { name = "the office cat",
      description = "A thing like a cat, the colour of a cinder, asleep in the wire basket marked {i}PENDING{/}. It has an extra toe on each foot and a small pair of horns that it is plainly embarrassed about.",
      things = {
        { name = "the PENDING basket", description = "Under the cat there are three hundred years of slips, pressed flat and very warm. Nothing in that basket will ever be dealt with, and everything in it is perfectly safe." },
        { name = "a saucer", description = "Beetroot juice. It will not touch milk. It came down the back stair one Tuesday behind the imp, and has been on the strength ever since as {i}1 mouser, temporary{/}." },
      },
      actions = {
        { "Scratch behind its horns", say "It pushes its whole head into your hand and makes a noise like a kettle coming to the boil. Sixty devils stop writing. \"It never lets us do that,\" says Mr Brimley, wistfully. \"We have cold hearts and warm hands. It says it's the wrong way round.\"" },
      } },
  },

  exits = {
    { to = "gl_waiting_room", description = "Back along the pigeonholes and under the flap." },
    { to = "ho_reception", label = "The tube marked DOWN",
      description = "Beside the black tube there is a brass hatch for staff, with a padded seat and a strap. It goes through the floor to Head Office. Mr Brimley says a guest may ride it, and that he would not, and that the seat is very comfortable." },
    { to = "gl_lost_property", description = "Through the frosted door.",
      requires = flag "gl_form_filed", hidden = true },
  },
}

space {
  id = "gl_lost_property",
  region = "glowers",
  secret = true,
  wonder = true,
  name = "Lost Property",
  description = "Behind the frosted door the vault goes on, and on, further than any lamp reaches: shelves to the roof, aisles to the vanishing point, and on every shelf a jar, a box, a parcel with a tag. This is where it all fetches up. It is not for the things that are sold, which have another department. It is for what people lose on the way to being tempted: tempers, threads, chances, heart, the knack, an afternoon. The devils did not take any of it. They only swept up afterwards, and labelled it, and were never asked for it back.",
  palette = { bg = "#0a0c10", text = "#ccd4dc", dim = "#5e6a78", accent = "#e8c070", border = "#2c3848" },
  ambience = {
    fireflies { glyphs = "·˙∙", colors = { "#e8c070", "#a0c8e0", "#e0a0b0" }, rate = 0.15 },
    dust { glyphs = "·", color = "#444c58", rate = 0.1, speed = 0.05 },
  },

  things = {
    { name = "the shelves of jars",
      description = "Glass, stoppered, each with a little light in it of its own colour. The whole vault is lit by them, dimly, like a hillside of windows. You walk a long way with your hands behind your back.",
      things = {
        { name = "a jar of lost tempers", description = "Red, and it rattles. The label is a long one: a list of names, added to in many hands. The jar is hot. Several of the tempers are still going." },
        { name = "a jar of lost afternoons", description = "Gold, slow, thick as honey. You hold it up. Inside, very small, somebody is lying in long grass doing nothing whatever. The tag reads {i}Assorted. Owners did not notice at the time.{/}" },
        { name = "a jar of lost threads", description = "Fine grey filaments, drifting, each the end of something that somebody was just about to say. If you put your ear to the glass there is a murmur of {i}now where was I{/}." },
        { name = "a jar of lost nerve", description = "Small, blue-white, bright as a star, and quite steady. There is a great deal of nerve in here. It was all lost at the same place: the label gives the third bend of the castle lane." },
        { name = "a very small jar", description = "One point of green light, no bigger than a seed. {i}A first tooth. Put under a pillow in Lower Wince and lost in transit. The sixpence was delivered.{/}" },
      },
      actions = {
        { "Look for something of yours", say "You go along the tags. It takes a long time and you are afraid of what you will find. In the end you come to a jar no different from the rest, pale gold, with your name on it in a clerk's copperplate. {i}One sense of proportion. Lost on leaving home.{/} You look at it for a while, glowing there. You have come a long way without it, and seen a fallen star and a vampire's sunrise. You leave it on the shelf." },
      } },

    { name = "the aisle of lost causes",
      description = "Banners, furled, in racks, thousands of them. Each had an army under it once, or a village, or one man.",
      things = {
        { name = "a banner with a rising sun", description = "You have seen this before, in a room behind an inn. This is the other one: the copy that got lost. The tag says {i}Cause: the destruction of the Fiend of Regret. Status: lost, but owners have not been informed and continue to meet.{/}" },
        { name = "a very small flag", description = "Paper, on a stick. {i}Cause: that it should not be bedtime.{/}" },
      } },

    { name = "the hall of lost keys",
      description = "A wall of hooks, a mile of it. Every key that was ever put down for a moment.",
      things = {
        { name = "the keys", description = "Iron, brass, a few of gold. They hang without a sound. Now and then one of them turns a little on its hook, toward a door that is a long way off and still locked." },
        { name = "the attendant's note", description = "{i}Owners invariably say it was 'in the last place they looked'. It was not. It was here. We put it back afterwards, to be kind.{/}" },
      } },

    { name = "a box marked Misc.",
      key = "gl_misc_box",
      visible_if = no(item "gl_contract_unsigned"),
      description = "On the floor at the end of an aisle, a tea chest with the lid off, full of what would not go anywhere else. One glove. A sock. A reputation, slightly foxed. And down the side, folded in four, a sheet of vellum.",
      things = {
        { name = "the one glove", description = "Left hand. Its tag says the right is in an office like this one, under a different mountain, in a box marked the same." },
        { name = "the reputation", description = "A good one, by the weight. Somebody lost it in a single evening. It has a little mould on one corner and would clean up." },
      },
      actions = {
        { "Unfold the vellum", once = true, give "gl_contract_unsigned",
          say "You open it out. It is a contract, in the Office's own red, very old. You read it standing in the aisle. A soul's worth for a soul. No small print. A cooling-off period. The soul back on request. You turn it over for the catch. You go on looking for some time. Behind you, at the frosted door, Mr Brimley has gone the colour of putty. \"Put that... no. No, take it. Take it away. If Head Office learns we still had the fair one, they'll close the branch.\"", fx "sparkle" },
      } },
    { name = "the box marked Misc.", key = "gl_misc_box_after", visible_if = item "gl_contract_unsigned",
      description = "One glove, one sock, one reputation. There is a clean oblong down the side where the vellum was. Mr Brimley has already filled in a form to say that it was never there." },

    { name = "the shelf marked 212",
      description = "At the height of your eyes, in an aisle of its own. Every other shelf in the vault is crowded. This one holds a single jar, with a foot of clear space on either side, as if the others had drawn back.",
      things = {
        { name = "the jar", description = "It is not like the others. The light in it is white and very quiet, the colour of a window in the early morning. It does not rattle or drift. It sits in the middle of the glass and faces, as far as a light can face, up through nine hundred feet of rock toward a dining room. It has turned the jar to do so. There is a ring on the shelf where the jar has ground round, a hair a year, for three hundred years." },
        { name = "the tag", description = "{i}Regret, R. One soul. Not lost. Not strictly ours. Kept here because it would not settle in Accounts and was upsetting the staff. To be called for.{/} Then in pencil, in Mr Brimley's hand: {i}Dusted weekly. It seems to like the shortbread tin being near.{/}" },
      },
      actions = {
        { "Tell it he laid a second place", say "You feel foolish, talking to a jar. You tell it anyway: the table, the swan, the pastry, the three words in the diary. The white light does not flare or leap. It only seems, for a moment, to stand a little straighter. On the shelf beside it, the dust lifts in a ring and settles." },
      } },

    { name = "the lost afternoons, loose",
      description = "One jar has cracked. Something gold has leaked along the shelf and is dripping, slow as resin, onto the floor.",
      actions = {
        { "Put a finger in it", say "Warm. Then: a wall you are sitting on, legs swinging. A smell of cut grass. Somebody calling a name that is yours, from a kitchen, not urgently. It lasts as long as the drop does. You wipe your finger on your coat with great care. For the rest of the day you will find that you are not in a hurry." },
      } },

    { name = "the attendant",
      icon = "☻",
      description = "At a desk under a lamp, very far down the central aisle: an old, old devil with spectacles and no horns left to speak of, writing tags. He has been here since before the Office. He does not tempt. He was never any good at it. He labels.",
      things = {
        { name = "his pen", description = "A quill. He cuts a new one each century from a box of them under the desk. They are grey, plain, a goose's. He is particular that you should know they are a goose's." },
        { name = "the tag he is writing", description = "{i}One gate copper, bent. NOT lost. Owner still has it and should be told to look after it.{/} He blots it, looks at you over his spectacles, and puts it in a drawer." },
      },
      actions = {
        { "Ask what is the oldest thing here", say "He thinks about it for so long that you wonder whether he has gone to sleep. \"A temper,\" he says at last. \"The first one. Somebody lost it on the second morning there ever was, over where a fence should go.\" He nods down the aisle. \"Jar one. Still warm. We have had the fence in ever since, in one form or another. There is an alderman upstairs about it now.\" He goes back to his tags. \"Nobody has ever come for a temper. They always say they are better off. Then they lose another.\"" },
        { "Ask the way out", say "\"Returns,\" he says, and points with the quill to a small iron door. \"It is one way. Things go back where they are missed. You will come out wherever in this parish you were thought of last.\" He considers you. \"That will be the churchyard. The sexton has been wondering if you could really dig.\"" },
      } },

    { name = "a rack of umbrellas",
      description = "Eleven thousand. Black. They hang like the bats in the west tower, and the attendant says that on wet nights up above, they rustle." },

    { name = "lost marbles",
      description = "A bin of them, glass, every colour, a bushel at least. The tag says: {i}Owners generally unaware.{/}",
      actions = {
        { "Look for yours", say "You stir them with a finger. There is a blue one with a white twist in it that you could swear you know. You decide that you are better not being certain. You close your hand on it, and then, after a moment, you put it back." },
      } },

    { name = "the iron door marked Returns",
      description = "Small, black, waist high, with a brass handle on this side only. It is cold. A draught comes under it, smelling of yew and cut turf." },

    { name = "the quiet",
      description = "It is not the silence of the waiting room, which is the silence of a held minute. This is the hush of a cloakroom at a great party, full of coats, each one still faintly warm." },
  },

  exits = {
    { to = "gl_lower_office", description = "Back through the frosted door to the scratch of pens." },
    { to = "gl_graveyard", label = "Returns", description = "Through the small iron door. It will not open from the other side." },
  },
}
