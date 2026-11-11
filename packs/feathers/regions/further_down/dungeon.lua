-- The Dungeon of Dire Peril: purpose-built for adventurers, complete in every detail, and never opened.

space {
  id = "fd_dungeon",
  region = "further_down",
  name = "The Dungeon of Dire Peril",
  description = "Thirty years ago the Corporation of Aldmoor resolved to attract adventurers, and built them a dungeon: corridors, traps, a monster budget, a treasure at the end. It was finished on a Friday. The opening was fixed for the Monday. On the Saturday there was a change of Council. You stand in the entrance hall, under the dust sheets, the first adventurer it has ever had, and you did not even come in by the front.",
  palette = { bg = "#0e0a0a", text = "#d0c4c0", dim = "#705c58", accent = "#d86048", border = "#48302c" },
  ambience = {
    flicker { color = "#d86040", strength = 0.18 },
    dust { glyphs = "·˙", color = "#5a4844", rate = 0.2, speed = 0.1 },
  },

  things = {
    { name = "the ticket booth",
      description = "A kiosk with a brass grille and a roll of tickets, numbered from 000001. The roll is complete.",
      things = {
        { name = "the price list",
          description = "{i}Adventurers: one silver. Parties of four or more: by arrangement. Chosen Ones: free on production of prophecy. Children and wizards half price.{/}" },
        { name = "the roll of tickets",
          description = "Pink, perforated, a little faded along the edge that faces the door.",
          actions = {
            { "Tear off number one", say "It comes away with a small dry sound that has waited thirty years to be made. {i}ADMIT ONE. THE MANAGEMENT ACCEPTS NO RESPONSIBILITY FOR DOOM.{/} There is nobody to give it to. You punch it yourself, with a thumbnail, and feel that the forms have been observed." },
          } },
        { name = "a cash box", description = "Open, empty, lined with green baize, with compartments for the different coins. Each compartment has been labelled in a hopeful hand." },
      } },
    { name = "the skeleton on the door",
      icon = "☠",
      description = "A skeleton in a rusted helmet, sitting on a stool beside the inner gate with a placard on a stick. The Corporation hired six of them as guards and then stopped the wages. The other five went home. This one has principles.",
      variants = {
        { when = flag "fd_dress_rehearsal",
          description = "A skeleton in a rusted helmet, standing very straight beside the inner gate. He has put the placard down. For one afternoon, without prejudice to the dispute, he is on duty, and he has not been so happy since he was alive." },
      },
      things = {
        { name = "the placard",
          description = "{b}ON STRIKE.{/} {i}THIRTY YEARS' BACK PAY. NO MENACE WITHOUT WAGES.{/} The paint has been touched up every year." },
        { name = "his helmet", description = "Issued. There is a number inside, and a name written on tape: {i}CLATTER, N.{/} He will tell you the N is for Nigel, if asked, and he hopes you will ask." },
        { name = "his thermos", description = "Empty, naturally. He unscrews it at eleven and at four and looks into it. It is the routine he misses." },
      },
      actions = {
        { "Ask to be let in", when = no(flag "fd_dress_rehearsal"),
          say "\"Can't, mate. Dispute.\" His jaw clicks. \"If I let you in, that's guarding in reverse, and guarding in reverse is still guarding. I've had it looked at.\" You say you are an adventurer. He turns his whole skull to look at you. \"Are you,\" he says. \"Are you really.\" Something in the eye sockets changes. \"We never had one.\"" },
        { "Cross the picket line", when = no(flag "fd_dress_rehearsal"),
          say "You take a step. He stands up. He is a full head taller than you and made entirely of the insides of someone. \"Don't,\" he says, quite gently. \"I'd have to rattle at you, and that's menace, and they haven't paid for it.\" You step back. He sits down, relieved." },
        { "Propose a dress rehearsal", when = no(flag "fd_dress_rehearsal"), set "fd_dress_rehearsal", fx "shake",
          say "You put it to him: not an opening. A rehearsal. Unpaid, unofficial, without prejudice, one performance, to test the equipment. He thinks. He takes out a rule book the colour of old teeth and reads a page with his finger. \"Rehearsals,\" he says slowly, \"are not covered.\" He stands, sets the placard against the wall and pulls a lever. Down the whole length of the dungeon, torches light themselves, one after another, into the dark. Something goes {i}clunk{/}. Something else begins, in a small way, to swing.\n\n\"HALT,\" says Nigel Clatter, in a voice he has been saving. \"WHO DARES.\" You tell him who dares. He writes it down." },
        { "Ask how the dispute is going", say "\"Slow. I send a letter up the drain every quarter day. I had a reply in the ninth year.\" He produces it from inside his ribs. {i}Your communication is receiving attention.{/} He folds it back along the same creases. \"So that's encouraging.\"" },
      } },
    { name = "the inner gate",
      description = "A portcullis of black iron with a skull worked into every crossing. A paper seal is pasted across it: {i}NOT YET INSPECTED. DO NOT ADMIT PUBLIC.{/}",
      variants = {
        { when = flag "fd_dress_rehearsal",
          description = "The portcullis is up, on a chain that has not moved in thirty years and makes sure you know it. The paper seal hangs from one half in two pieces. Beyond: a corridor, torches, and a strong smell of new paint that has been new for a long time." },
      },
      things = {
        { name = "the inspection certificate",
          description = "Framed beside the gate, with every box left empty but one. Under {i}Reason for non-inspection{/} the Inspector has written: {i}Too dangerous to inspect. I do not see how the public could be let in to a place like that. Somebody could be hurt.{/}" },
      } },
    { name = "the first corridor",
      description = "Past the gate you can see the first forty yards. It is a very good corridor: dank, echoing, with torches in brackets and helpful signage.",
      things = {
        { name = "a pit trap",
          description = "A square of flagstones slightly lower than the rest, with a notice on a stand: {b}PIT (MIND THE).{/} There is a handrail round it, and a second notice: {i}DEPTH 9 FT. STRAW AT BOTTOM. LADDER PROVIDED.{/}",
          actions = {
            { "Fall into it", when = flag "fd_dress_rehearsal",
              say "You step on the flagstones. They hesitate, for thirty years' worth of stiffness, and then they do it: the floor goes and you go with it, nine feet, on to straw, with a yell that you are privately rather pleased with. It is your first trap. You lie in the straw and look up at the square of torchlight, and at a skull looking over the edge of it to ask whether that was all right. It was {i}perfect{/}." },
          } },
        { name = "a swinging blade",
          description = "A great crescent of steel in a slot in the ceiling. {i}SWINGS: TUESDAYS AND THURSDAYS, 10 TO 4.{/} It has been padded along the edge with a strip of carpet." },
        { name = "an arrow slit",
          description = "With a crossbow fixed behind it on a spring, and a label: {i}ARROWS (BLUNT). PLEASE RETURN TO BUCKET.{/} The bucket is full." },
        { name = "a pressure plate",
          description = "Painted yellow, with a footprint on it and the words {i}STAND HERE FOR SURPRISE.{/}",
          actions = {
            { "Stand there", when = flag "fd_dress_rehearsal",
              say "You stand. A panel flies open in the wall and a banner unrolls: {b}BOO.{/} After a moment a second, smaller banner unrolls beneath it: {i}(SPIDERS WERE NOT WITHIN BUDGET).{/}" },
          } },
      } },
    { name = "the staff notice board",
      description = "Green baize, by the booth. The dungeon had a full establishment on paper.",
      things = {
        { name = "the vacancies",
          description = "{i}WANTED: Minotaur (must know own way round). Ooze, gelatinous, part time. Riddling Sphinx, references required. Dragon, see Committee.{/} Every one has {i}POST NOT FILLED{/} stamped across it in red." },
        { name = "a rota",
          description = "Six names, all ending in bones. Five are crossed through. Against the sixth, every day for thirty years, a tick, and in the column for hours: {i}picket{/}." },
        { name = "a letter of application",
          description = "{i}Dear Sirs, I am a wooden chest of long experience and wish to apply for the position of Mimic. I can do lids.{/} Across it: {i}APPOINTED.{/} It is the only one." },
      } },
    { name = "a treasure chest by the booth",
      description = "Oak, iron-bound, with a hasp. It is sitting by the ticket booth with a cash ledger open on its lid and a pen in what you now see is the corner of its mouth.",
      things = {
        { name = "the ledger", description = "The dungeon's accounts for thirty years. Income: nil. Outgoings: one tin of placard paint, annually. It balances. The Mimic is very proud of that." },
      },
      actions = {
        { "Open it", say "You reach for the hasp. The lid lifts an inch by itself and something inside clears its throat. \"We are closed,\" says the chest, \"and I am Administration. The lid business is strictly for paying customers. I will say {i}rarr{/}, as a courtesy.\" It says rarr. It is out of practice, and you both know it." },
      } },
    { name = "the gift shop",
      description = "A counter with a striped awning, built before anything else, and stocked.",
      things = {
        { name = "a rack of tabards", description = "{i}I SURVIVED DIRE PERIL.{/} In four sizes. None sold. The moths have had the small ones, and they did not survive." },
        { name = "souvenir skulls", description = "Plaster, with a slot for coins. Nigel will not look at them. He says it is like you walking past a shelf of little pink heads." },
        { name = "a postcard stand",
          description = "Views of the dungeon, hand tinted: {i}The Pit. The Blade. The Final Chamber (artist's impression).{/}",
          actions = {
            { "Take a postcard", say "You take The Pit. On the back, printed: {i}Having a perilous time. Wish you were here instead of me.{/} You have nobody to send it to. You put it in your pack anyway, with the bootlace." },
          } },
      } },
    { name = "the dust sheets",
      description = "Over everything: the benches, the weapon rack for hire, a statue of something with horns. The Murmurs come in once a year, by the turnstile, and shake them out. They do not approve of the place, but dust is dust." },
    { name = "a weapon rack, for hire",
      description = "Swords, a penny an hour. They are wooden, painted silver. A notice: {i}REAL SWORDS MAY NOT BE BROUGHT INTO THE DUNGEON. SOMEBODY COULD BE HURT.{/}" },
    { name = "the grand opening",
      description = "Still laid out at the end of the hall: a ribbon across the corridor mouth, a pair of gilt scissors on a cushion, a table with forty glasses, and a cake under a glass dome.",
      things = {
        { name = "the cake", description = "Iced in grey, in the shape of a skull. It has gone as hard as the real thing. The Murmurs dust it." },
        { name = "the ribbon",
          description = "Red silk, sagging a little.",
          variants = {
            { when = flag "fd_ribbon_cut", description = "Two ends of red silk, hanging. It is open. Nobody above knows, and there will be no further visitors. It is open all the same." },
          },
          actions = {
            { "Cut the ribbon", when = all { flag "fd_dress_rehearsal", no(flag "fd_ribbon_cut") }, set "fd_ribbon_cut", fx("flash", "#d86048"),
              say "You pick up the gilt scissors. Nigel Clatter takes off his helmet and holds it over where his heart was. The Mimic puts down its pen. You cut. The two ends fall. \"I declare this dungeon,\" you say, and find you have to stop and start again, \"open.\" Nobody claps, because one of them has no hands and the other has no skin, but the chest bangs its lid, twice." },
          } },
        { name = "the speech",
          description = "On a lectern, in a clerk's copperplate, for the Mayor of thirty years ago to read. {i}Fellow citizens. Adventure is the industry of the future.{/} It goes on for nine pages. On the last, in pencil: {i}pause for cheering.{/}" },
      } },
    { name = "a map of the course",
      description = "On an easel: {i}YOU ARE HERE.{/} Corridor, pit, blade, a maze marked {i}(MINOTAUR TO FOLLOW){/}, a riddle door, and at the far end a room coloured gold and labelled {b}FINAL CHAMBER. TREASURE.{/}",
      things = {
        { name = "the riddle door",
          description = "According to the key, it asks one riddle and opens to the right answer. A note in the margin: {i}Sphinx not appointed. Door has been left on the latch. The answer is written on the back in case of difficulty.{/}" },
        { name = "a lever on the wall beside the map",
          description = "Brass, with a card tied to it: {b}SECRET DOOR.{/} And smaller: {i}staff only, short cut to Final Chamber, saves walking.{/}",
          actions = {
            { "Pull the lever", when = no(flag "fd_dress_rehearsal"),
              say "It does not move. A bony hand has come down on yours, lightly. \"That's operating the equipment,\" says the skeleton. \"Can't have the equipment operated. There's a dispute on.\"" },
            { "Pull the lever", when = all { flag "fd_dress_rehearsal", no(flag "fd_secret_door") }, set "fd_secret_door", fx "shake",
              say "A section of wall beside the gift shop grinds back and sideways, with a noise like a giant clearing his throat, and stops halfway. Nigel gives it a kick. It finishes. Behind it, a short passage, and at the end of that a glow of gold. \"You're meant to do the maze first,\" he says. \"But there's no Minotaur, so you'd only be walking.\"" },
          } },
      } },
    { name = "a royal licence, framed",
      description = "Behind the ticket booth, in a gilt frame, hangs the paper that allowed all this. {i}To the proprietor: leave to dig, fit out and operate one Dungeon, for the Peril and Improvement of Adventurers.{/} It is endorsed in one word, in a broad loose hand, and signed. The signature has been cut out with scissors, leaving a neat window on to the wall.",
      things = {
        { name = "the date", description = "A Thursday. The clerk at the booth says that the proprietor stood in a line all day for that word, got it at dusk, and came down here the same night to start digging. By Saturday he had been told that the licence was void, the day being void. He had already bought the skeletons." },
        { name = "the window where the name was", description = "Through it you can see the rock. Somebody has drawn a small smiling face there, on the stone, in the hole, so that the licence still appears to be signed by a person." },
      },
      actions = {
        { "Ask why it never opened", say "\"Could not get it stamped,\" says the booth. \"No licence, no opening. We applied again. The new arrangement is one petition a year, in order. We are number three thousand and six.\" A dust sheet stirs. \"Mr Clatter says that he will still be here. That is rather the point of Mr Clatter.\"" },
      } },
    { name = "a turnstile counter",
      description = "A brass dial on the inner gate that clicks up one for every adventurer admitted. It reads {b}0000{/}. It has been oiled monthly for ninety years. The oil can sits beside it with a label: {i}In case.{/}" },
  },

  exits = {
    { to = "fd_lost_market", label = "The turnstile", description = "Back out among the stalls. It sticks in this direction too." },
    { to = "fd_final_chamber", label = "The secret door",
      description = "The staff short cut, to the gold light at the end.",
      requires = flag "fd_secret_door", hidden = true },
  },
}

space {
  id = "fd_final_chamber",
  region = "further_down",
  secret = true,
  name = "The Final Chamber",
  description = "A round vault with a domed roof, a dais, and a hoard. It is everything the last room of a dungeon ought to be. You have seen it in your head since you were five. That the gold is painted on, and the dragon's place is taken by a folding chair, does not matter nearly as much as you would have expected.",
  palette = { bg = "#100c06", text = "#dcd0b0", dim = "#786848", accent = "#f0c040", border = "#504018" },
  ambience = {
    shimmer { color = "#403010", strength = 0.5 },
    embers { glyphs = "·˙", color = "#c08030", rate = 0.15 },
  },

  things = {
    { name = "the hoard",
      description = "A heap of gold to the height of your head: coins, cups, crowns, a gilded harp. It is canvas over a wooden frame, painted, with real coins glued on round the bottom where people could reach.",
      things = {
        { name = "the real coins", description = "Forty-one of them, brass, struck for the purpose. On one side a skull. On the other: {i}NOT LEGAL TENDER. A SOUVENIR OF DIRE PERIL.{/}" },
        { name = "the painted gold",
          key = "fd_painted_dawn",
          wonder = true,
          description = "Go close. The scene painter was a Murmur, hired because he was cheap and could work in the dark. He had never seen gold in daylight. So he gave the heap the only great light he knew of, from his grandmother's grandmother's stories. {magic}The whole hoard is lit from one side by a sunrise.{/} Long shadows, rose on the rims of the cups, and a warmth laid across all of it that no torch ever gave. It is a painting of a dawn by someone who was only ever told about one, and he got it right.",
          actions = {
            { "Stand in the light", fx("wash", "#f0c890"),
              say "You stand where the painted sun would fall. For a moment the vault has an east. Nigel, in the doorway, has gone quiet. \"I remember those,\" he says. \"We used to get one every day. You'd not credit how little notice we took.\"" },
          } },
        { name = "a gilded harp", description = "Plywood. One real string, for verisimilitude. It is in tune." },
      } },
    { name = "the dais",
      description = "Three steps up, black marble, where the dragon was to have lain along the hoard with one eye open.",
      things = {
        { name = "a folding chair",
          description = "Canvas, with {i}DRAGON{/} stencilled on the back. It is where the dragon would have sat between performances." },
        { name = "the dragon's contract",
          description = "On the chair, unsigned. {i}The Dragon shall menace, but shall not incinerate. The Dragon shall be defeated twice daily and three times on feast days. The Dragon shall provide own fire.{/}",
          things = {
            { name = "the dragon's reply",
              description = "Pinned to the contract, on good paper, in a large round hand, scorched at one corner. {i}Sirs. I thank you for your offer. I have looked at your terms and I do not think I could bring myself to lose to them twice a day. They will be so young. I should end by giving them the treasure and asking after their mothers. I remain, with regret, yours.{/} There is no name. There is a thumbprint in soot, the size of a plate." },
          } },
      } },
    { name = "the Grand Prize",
      key = "fd_prize_stand",
      description = "On a stand at the top of the dais, under a spotlight made from a lamp and a biscuit tin: a round grey shield with a gold rosette. A card: {i}GRAND PRIZE. TO BE AWARDED TO THE FIRST ADVENTURER TO COMPLETE THE DUNGEON OF DIRE PERIL.{/}",
      variants = {
        { when = item "fd_aegis", name = "the empty prize stand",
          description = "A stand, a biscuit tin, a circle in the dust. The card has been turned over, and on the back in chalk: {i}AWARDED.{/} And the date. Nigel wrote it. He pressed so hard the chalk broke." },
      },
      things = {
        { name = "the small print on the card",
          description = "{i}The shield was found by the workmen when digging the Final Chamber, lying on a ledge, clean. It could not be scratched, bent, lifted by more than one man at a time, or valued. The Committee therefore resolved to give it away.{/}" },
      },
      actions = {
        { "Claim the prize", when = no(flag "fd_ribbon_cut"),
          say "\"Ah,\" says Nigel, from the door. \"Thing is. First adventurer to complete the dungeon. And the dungeon's not open. You can't complete a thing that's not open.\" He scratches his skull, a dry sound. \"There's a ribbon. Out front. I'm only saying.\"" },
        { "Claim the prize", when = flag "fd_ribbon_cut", once = true, give "fd_aegis", fx("flash", "#f0c040"),
          say "The dungeon is open. You have fallen in its pit. You have reached its Final Chamber, by a route that staff confirm is a route. Nigel Clatter, Guard, comes up the dais with the Mimic walking behind him on its corners, and he takes the shield off the stand and cannot think what to say, so he says \"There you go,\" and puts it on your arm.\n\n{gold}The Aegis Provisional.{/} It weighs nothing. Nothing can get through it. You have won it by being the only entrant in thirty years, at a dress rehearsal, and you have never in your life been so proud of anything." },
      } },
    { name = "the dome",
      description = "Painted dark blue with gold stars, and a moon with a face. The moon looks worried. The painter did the stars from a description too, and has put in rather more than there are.",
      things = {
        { name = "a trapdoor in the dome", description = "{i}FOR LOWERING OF BATS.{/} The bats were to be on wires. The wires are there. A real bat has moved in since and hangs among them, professionally." },
      } },
    { name = "the riddle door, from behind",
      description = "The proper way in, at the far side of the chamber. On this side somebody has written the riddle and its answer in chalk, for the staff.",
      things = {
        { name = "the riddle", description = "{i}What is brave, lost, hungry and here?{/}" },
        { name = "the answer", description = "{i}You are.{/} And beneath, in another hand: {i}be nice to them when they get it. They'll have had a day.{/}" },
      } },
    { name = "a suggestions box",
      description = "By the exit. {i}HOW WAS YOUR DOOM? PLEASE TELL US.{/} With a pencil on a string and a stack of cards.",
      actions = {
        { "Fill in a card", say "{i}Peril: dire. Staff: could not have been kinder. Pit: excellent. Would be doomed again.{/} You post it. The box rattles. It is the only card in there, and you hear the Mimic, out in the hall, getting up to come and read it." },
      } },
    { name = "the ledge in the rock",
      description = "Behind the hoard the builders left a piece of the cavern wall unfaced: raw stone, and in it a ledge, smooth, at about the height of a table. The shield was found lying on it. Nothing else was. The ledge has no dust on it either, even now.",
      things = {
        { name = "a shape in the stone",
          description = "A round hollow where the shield lay, worn the way a doorstep is worn. It was put down there and taken up again a great many times, by someone, before it was put down for the last." },
      } },
    { name = "the exit sign",
      description = "{b}EXIT THROUGH GIFT SHOP.{/} An arrow. They thought of everything, in the order that mattered to them." },
    { name = "a fire bucket",
      description = "Sand, and a notice: {i}IN CASE OF DRAGON.{/} The sand has a cigar end in it, thirty years old. Somebody on the Committee came down the night before the opening, and sat in the dragon's chair, and looked at what they had made." },
    { name = "a torch that will not light",
      description = "One bracket in the ring stays dark. Nigel says it never has lit. He says it is the one on the east side, as near as he can judge, and that the painter asked for it to be left." },
    { name = "a visitors' book for victors",
      description = "On a lectern by the dais, bound in red, with a gold pen on a chain. {i}Those who have Prevailed will kindly sign.{/} Every page is blank. The ribbon is at page one.",
      things = {
        { name = "the first line", description = "Ruled, numbered 1, and waiting. Somebody has pencilled in the margin, very faintly, so that it can be rubbed out when the real one comes: {i}the Mimic, on a quiet night, for practice.{/}" },
      },
      actions = {
        { "Sign it", say "You take up the gold pen. You have not prevailed. You came in by the staff door and nobody tried to stop you. You hold the pen over line one for some time. Then you put it down. From under the dust sheets comes a small dry sound, which is the noise that a skeleton makes when it approves." },
      } },
    { name = "a plinth for the victor's statue",
      description = "At the back of the chamber: a marble block, ready, with dowel holes drilled in the top for a pair of feet. The proprietor ordered it in advance, from a mason who signs with a rose. The mason's note is still tied to it: {i}Second bare plinth I have cut this year. I should like, once, to be asked for the man.{/}" },
  },

  exits = {
    { to = "fd_dungeon", label = "Exit through gift shop", description = "Back along the staff passage, to the entrance hall and a chest that wants to know how it went." },
  },
}
