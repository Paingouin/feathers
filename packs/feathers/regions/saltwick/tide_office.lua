space {
  id = "tide_office",
  region = "saltwick",
  name = "The Tide Office",
  description = "A small room on the quay: a counter, a clock with one hand, and shelves of ledgers swollen with damp. The brass plate on the door reads {b}ROYAL OFFICE OF TIDES, INWARD AND OUTWARD{/}. In Saltwick the sea goes out when it has been signed out.",
  ambience = { dust { glyphs = "·˙", color = "#56707e", rate = 0.3, speed = 0.3 } },

  things = {
    { name = "the tide clerk",
      icon = "☻",
      description = "A thin man in sleeve garters, very upright behind the counter, with a form in front of him and nothing in his right hand. He keeps looking at the hand.",
      variants = {
        { when = flag "tide_out",
          description = "He sits back with his garters loosened and the stamp on a small cushion beside him. His paperwork and the sea agree, and he means to enjoy it." },
      },
      actions = {
        { "Talk", when = no(flag "tide_out"),
          say "\"The Office regrets that the tide is unable to go out at present. The outward form is complete.\" He turns it round to show you. \"It is merely not {i}stamped{/}.\"" },
        { "Talk", when = flag "tide_out",
          say "\"Out, as of today, and in good order.\" You ask when it comes back. \"That is an inward matter. Inward is Mr Pargeter, and Mr Pargeter is on leave.\" The dust on the other stool is very thick." },
        { "Ask about the stamp", when = all { no(flag "tide_out"), no(item "tide_stamp") },
          say "\"Taken. Off this counter, through that window, by a gull, on the ninth.\" He has written it down, and shows you where. \"It went towards the light. I have applied for a ladder.\"" },
        { "Hand over the stamp", when = item "tide_stamp", take "tide_stamp", set "tide_out", fx "shake",
          say "He takes it in both hands. He inks it. He brings it down on the form, {b}OUT{/}, and outside, with one long sucking sigh, the whole harbour begins to leave." },
        { "Ask where the tide goes", when = flag "tide_out", set "knows_tide_room",
          say "\"Goes? It is {i}kept{/}. One does not simply let go of a tide.\" He tips his head at the door behind him, the one marked {b}OUT{/}, and returns to his blotter. \"Do not unfold anything.\"" },
      } },
    { name = "the outward form",
      description = "Form 9, Outward, in triplicate: one copy for the Office, one for the Crown, one for the sea. Every box is filled in except one in the corner, the size of a stamp.",
      variants = {
        { when = flag "tide_out",
          description = "Stamped {b}OUT{/} in violet, a little crooked. The sea's copy is gone from the pile. Nobody posted it." },
      } },
    { name = "the clock with one hand",
      description = "It does not tell the hour. The dial says {b}IN{/} at the top and {b}OUT{/} at the bottom, and the hand has rested on {b}IN{/} so long that it has left a shadow.",
      variants = {
        { when = flag "tide_out",
          description = "The hand points straight down at {b}OUT{/}. Where it used to rest there is a pale stripe on the dial." },
      } },
    { name = "the ledgers",
      description = "Every tide since the Office opened, in and out, signed for. The damp has got into all of them.",
      things = {
        { name = "the oldest ledger", description = "The first entry is an {b}OUT{/}. Whoever opened the Office found the sea already in, and no record of anyone letting it." },
        { name = "the newest ledger", description = "Forty-one entries reading {b}IN{/}, one under the other. The handwriting gets smaller as it goes down.",
          variants = {
            { when = flag "tide_out",
              description = "Forty-one entries reading {b}IN{/}, and then one {b}OUT{/}, large, underlined twice." },
          } },
      } },
    { name = "the window",
      description = "Open a hand's width, for the air. There is a white splash on the sill and a webbed footprint on the ink pad." },
    { name = "a door marked OUT",
      key = "out door",
      description = "Behind the counter, narrow, painted the green of all official doors.",
      variants = {
        { when = flag "tide_out",
          description = "Behind the counter, narrow, painted green, and beaded with wet like a cold jug. Now and then it creaks, the way a full barrel does." },
      },
      actions = {
        { "Knock", when = no(flag "tide_out"), say "Hollow. The clerk looks up, and you take your hand away." },
        { "Knock", when = flag "tide_out", say "It does not sound hollow. It sounds like knocking on the side of a ship, from inside." },
      } },
    { name = "the inward desk",
      description = "The other half of the counter, under a brass sign reading {b}INWARD{/}. A stool, a blotter, an inkwell dried to a black crust. Everything on it is squared to the edge, and all of it is under a soft grey fleece of dust.",
      things = {
        { name = "the inward stamp", description = "On its pad, exactly where it was put down. It says {b}NI{/}. The dust on the handle is unbroken. The outward clerk will not touch it. \"It is not my stamp,\" he says, in the voice of a man refusing to wear another man's teeth." },
        { name = "a cardigan on the stool", description = "Brown, buttoned over the back of the stool so that from the door it looks as if somebody narrow is sitting there. It has fooled the Inspector twice." },
        { name = "a leave form",
          description = "Form 2, Absence. {i}Name: Pargeter, H. Reason: personal. From:{/} a date some years gone. {i}Until:{/}",
          things = {
            { name = "the Until box", description = "Not blank. Something was written in it, and then crossed out so hard that the pen went through the paper. You hold it to the light. You think the word was {i}ready{/}." },
          } },
        { name = "a postcard", description = "Propped on the inkwell. A tinted view of Saltwick harbour, posted in Saltwick, to the Tide Office, Saltwick. {i}Weather mixed. Thinking of you all. Not yet. H.P.{/} The clerk gets one every year. He files them under {i}Inward, Pending{/}." },
      },
      actions = {
        { "Blow the dust off", say "A grey cloud lifts and hangs. The outward clerk looks round, appalled. \"That is {i}Inward{/} dust,\" he says. It settles back, in time, exactly where it was. You have the feeling that it was signed for." },
      } },
    { name = "the counter",
      description = "Mahogany, with a brass grille and a hatch, and a groove worn in the wood on the public side by generations of fishermen's elbows. On the clerk's side it is worn by one set of cuffs.",
      things = {
        { name = "the ink pad", description = "Violet. There is a perfect webbed footprint in the middle, which the clerk has drawn a ring round, in pencil, and labelled {i}Exhibit{/}." },
        { name = "a pen on a chain", description = "For the public. The chain is nine inches long and the nearest form is ten inches away." },
        { name = "a bell", description = "A brass dome with a button, and a card: {i}Ring for attention.{/} The clerk is sitting directly behind it, looking at you.",
          actions = {
            { "Ring it", say "{i}Ting.{/} The clerk, who has been watching you from eighteen inches away, looks up as if for the first time. \"Yes?\" he says. You understand that there is a correct way to do things here, and that you have just done one." },
          } },
      } },
    { name = "the form racks",
      description = "Pigeonholes along the side wall, numbered, each with a sheaf of forms.",
      things = {
        { name = "Form 1", description = "{i}Application to Apply.{/} You must complete this before any of the others. It asks which form you want, and why you have not already filled it in." },
        { name = "Form 9", description = "{i}Tide, Outward.{/} A thick pad, much used." },
        { name = "Form 10", description = "{i}Tide, Inward.{/} The pad is full, crisp and yellow at the edges. The top sheet has a ring on it where somebody once set down a cup of tea, and then, evidently, went on leave." },
        { name = "Form 31", description = "{i}Wave, Freak, Notification Of.{/} To be submitted by the wave, in advance." },
        { name = "Form 77",
          description = "{i}Sea, Unexpected Return Of.{/} There is only one copy. It is very old, on vellum, and it has been filled in.",
          things = {
            { name = "the filled-in copy", description = "In letters so old they are nearly pictures. Under {i}reason for return{/}: {i}Was asked.{/} Under {i}authorised by{/}, no signature: a small drawing of a horn." },
          } },
      } },
    { name = "the complaints cabinet",
      description = "Four drawers, oak, labelled {b}COMPLAINTS (TIDE){/}. The bottom three are stuck shut with the weight of what is in them.",
      things = {
        { name = "the top drawer",
          description = "This year's. Mostly from fishermen, mostly short.",
          things = {
            { name = "a complaint from Hesper Coddle", description = "{i}Sir. You have had the sea in for forty-one tides. I have a boat. Kindly consider what a boat is for. Yours, H. Coddle (Mrs).{/} Stamped {b}RECEIVED{/}. Stamped {b}NOTED{/}. Not stamped anything else." },
            { name = "a complaint from a limpet", description = "Unsigned, damp, and consisting of a ring-shaped mark on a blank sheet. The clerk has filed it in good faith." },
            { name = "a complaint from the Revenue", description = "{i}It has come to our officer's notice that smuggling may be affected by the state of the tide. He has seen no smuggling. He wishes it recorded that he has seen none at both states.{/}" },
          } },
      } },
    { name = "the waiting bench",
      description = "A plain bench along the wall under the window, polished by sitting.",
      things = {
        { name = "a waiting sailor",
          description = "A man in a pea coat with a kit bag between his feet and a ticket in his hand. He is waiting for a tide to sail on. He has the look of somebody who came in for five minutes.",
          variants = {
            { when = flag "tide_out",
              description = "A man in a pea coat with a kit bag between his feet. The tide he was waiting for has gone, and taken the water his ship was in. He has decided to keep waiting, on the grounds that he has got good at it." },
          },
          actions = {
            { "Ask how long he has waited", say "He looks at the clock with one hand. \"Since it was there,\" he says, pointing at the pale stripe. \"I've read all the notices. I can do you Form 31 by heart.\" He does. It is surprisingly moving." },
          } },
        { name = "an umbrella stand", description = "Beside the bench. Two umbrellas, a walking stick, and a trident, green with verdigris, with a brass tag wired to it: {i}Left by caller. Will return for.{/} The tag is older than the stand." },
      } },
    { name = "a wall map of the coast",
      description = "Hand-coloured, glazed, with the Office's district outlined in red. Brass pins mark each harbour, with a tiny paper flag: white for in, blue for out.",
      variants = {
        { when = flag "tide_out",
          description = "Hand-coloured, glazed, with the Office's district outlined in red. Every flag on it is white but one. Saltwick's is blue, and the clerk has stuck it in very straight." },
      },
      things = {
        { name = "the edge of the district", description = "The red line runs out to sea and then simply stops, with a note: {i}Beyond this point tides are the responsibility of the next Office.{/} There is no next Office marked. There is no next coast." },
        { name = "a pin with a black flag", description = "One harbour, far to the south, where no town is drawn. The clerk says it is not on his list and he does not move pins that are not on his list." },
      } },
    { name = "the tea things",
      description = "On a shelf behind the counter: a spirit lamp, a tin kettle, two cups. One is in use. The other is upside down on its saucer, and has been washed, weekly, for years.",
      actions = {
        { "Ask whose the second cup is", say "\"Mr Pargeter's.\" The clerk straightens the saucer by a hair. \"He takes it without milk. One wishes to be ready.\"" },
      } },
    { name = "the regulations",
      description = "Framed by the door: {b}BY-LAWS OF THE ROYAL OFFICE OF TIDES.{/} Eleven of them, in copperplate.",
      things = {
        { name = "by-law 1", description = "{i}No tide shall enter or leave except by stamp.{/}" },
        { name = "by-law 4", description = "{i}The Outward clerk shall not sign Inward. The Inward clerk shall not sign Outward. This is to prevent the sea from playing one off against the other.{/}" },
        { name = "by-law 11", description = "{i}In the event that the sea declines to comply, the Office shall write to it.{/} Somebody has added, in pencil: {i}It has never replied. It has always complied. We do not ask.{/}" },
      } },
    { name = "a parcel for collection",
      description = "On the end of the counter, in brown paper and a great deal of string, with a label: {i}TIDE CLOCK, ONE. RETURNED UNMENDED FROM FUSEE, TICKOVER.{/}",
      things = {
        { name = "the clockmaker's letter", description = "Tucked under the string. {i}Sir, I have had your instrument open for two years. It is not faulty. It runs fast before a storm because it is frightened. I can do nothing for that and should not wish to. L.F.{/}" },
        { name = "the clerk's reply, in draft", description = "Under the letter, on a form. {i}Madam, the Office does not recognise fright as a condition of brass.{/} That is crossed out. Under it: {i}Madam, how does it know?{/} That is crossed out too. He has not yet thought of a third thing." },
      },
      actions = {
        { "Hold the parcel to your ear", say "A slow, even tick, through the paper. Fair weather. You find you are relieved, and that you have taken a parcel's word for it." },
      } },
    { name = "the umbrella stand",
      description = "A length of drainpipe by the door with four umbrellas in it, all black, all the property of the Office, each stamped on the handle with the weather it is for.",
      things = {
        { name = "the umbrella marked SQUALL", description = "Ribbed with whalebone and reinforced at the tip. It has been turned inside out so often that it now opens that way first, to save time." },
        { name = "the umbrella marked FINE", description = "Never opened. Still in its sleeve. The clerk carries it on fine days, furled, as the regulations require, and gets wet on the others, when he has forgotten to change it." },
      } },
  },

  exits = {
    { to = "saltwick_harbour" },
    { to = "tide_room", label = "The door marked OUT",
      description = "Past the counter and through the wet green door. The clerk has, in his way, said you may.",
      requires = all { flag "tide_out", flag "knows_tide_room" }, hidden = true },
  },
}

space {
  id = "tide_room",
  region = "saltwick",
  secret = true,
  wonder = true,
  name = "Where the Tide Is Kept",
  description = "A stone storeroom, pigeonholed from floor to ceiling, with the sea in the pigeonholes. It has been folded. Each one holds a slab of green water standing on its edge, labelled, with its waves still going, very small, along the top.",
  palette = { bg = "#06110f", text = "#bcd4cc", dim = "#507468", accent = "#6fd8c0", border = "#1f4a44" },
  ambience = {
    shimmer { color = "#4fb8a4", strength = 0.5, speed = 0.4 },
    drip { glyphs = "⠁⠂⠄⡀", color = "#5fa8a0", rate = 0.2 },
  },

  things = {
    { name = "the pigeonholes",
      icon = "≈",
      description = "Water, filed upright, a few thousand tons to the shelf. Nothing holds it in but the label. Small fish pass from one pigeonhole to the next through the wood, and do not seem to find it difficult.",
      things = {
        { name = "a label", description = "{i}Saltwick Hbr, outward, this day. To be returned.{/} The ink is still wet, though in here that proves little." },
        { name = "a pigeonhole marked LOST", description = "A cupful of sea, a child's sandal, and half a sandcastle with the flag still in it." },
        { name = "a crab in the filing", description = "It sidles along a shelf: inside the water, outside the water, inside again. It is the only one here who understands the system." },
      },
      actions = {
        { "Put your hand in", fx "wash",
          say "Cold to the wrist, and a current pulls politely at your fingers. When you take your hand out the water stays as it was, upright, with a hand-shaped dent that closes slowly." },
        { "Listen", say "Surf, very small and very far away, from every shelf at once." },
      } },
    { name = "the top shelf",
      description = "One row of pigeonholes near the ceiling, in older, darker wood. All empty, all dry. The labels give a date and no harbour." },
    { name = "a mop and bucket",
      description = "Leaning in the corner, bone dry, never used. Somebody was issued them on the first day and has been proud ever since." },
    { name = "a seal in the filing",
      icon = "s",
      description = "A grey seal, asleep on a shelf of folded sea at about the height of your chest, half in a pigeonhole and half out, dripping onto the floor. It came in with the tide and saw no reason to be filed any differently.",
      things = {
        { name = "its whiskers", description = "Long, white, and twitching. It is dreaming of fish. Three small ones go by through the wood behind its head, and the whiskers follow them without the eyes opening." },
      },
      actions = {
        { "Tiptoe past", say "It opens one eye, round and black and wet. It breathes out through its nose, a long warm fishy sigh, and shuts the eye. You have been compared with a rock and found similar." },
      } },
    { name = "the shelf of weather",
      description = "A row of stoneware jars on a high shelf, corked and wired, each with a label. Tides bring things in with them, and the Office is thorough.",
      things = {
        { name = "a jar marked SQUALL", description = "It rocks on the shelf. Something inside is throwing itself at the cork, briefly, about once a minute, and then sulking." },
        { name = "a jar marked FOG, MORNING", description = "Heavy and cold, and the glaze has gone dull. When you lift it, the room is a little harder to see across." },
        { name = "a jar marked CALM",
          wonder = true,
          description = "It is the only one that is warm. There is no sound from it at all, and holding it, there is no sound from you either: your breathing slows, your shoulders come down. {magic}It is the flat bright stillness of a summer sea at noon, with the cork in.{/} The label is in a careful hand not the clerk's. {i}Keep one back. H.P.{/}",
          actions = {
            { "Hold it a while", say "You hold it against your chest. You had not known how much noise you carry about with you. When you put it back on the shelf it all returns, and you find that you can bear it rather better." },
          } },
      } },
    { name = "the receipt book",
      description = "On a lectern by the door: a ledger with a carbon, one receipt per tide. {i}Received from the Sea, one tide, in good condition.{/} The clerk signs for the Office. The other signature, on every page, is a wet thumbprint the size of a plate.",
      things = {
        { name = "today's receipt", description = "The thumbprint is still damp. It has ridges, as a thumb has. Among the ridges, very small, a shrimp is walking about." },
      } },
    { name = "a starfish on the wall",
      description = "Orange, five-armed, the size of your hand, a third of the way up the stonework and climbing. It left the pigeonholes on purpose. By its present rate it will reach the door in a week, and the clerk has put out a saucer of seawater at the top to be civil.",
      actions = {
        { "Wish it luck", say "One arm curls, very slowly, in what you choose to take as a wave." },
      } },
    { name = "the folding table",
      description = "A long slab of slate on trestles in the middle of the room, wet, with brass rules let into the top and a bone folder the length of an oar lying across it. This is where it is done.",
      things = {
        { name = "the bone folder", description = "Whale rib, worn to a blade on one edge. You crease the sea with this. The clerk learned it from his predecessor, who learned it from his, and none of them was ever told who had first worked out that it could be done." },
        { name = "a diagram", description = "Pinned above the table, brown with damp: {i}To Fold a Tide. 1. In half, along the moon. 2. In half again. 3. Do not look at it while folding. 4. Wash hands.{/}" },
        { name = "a scrap left on the table", description = "An offcut of sea about a foot square, trimmed from an edge. It lies flat on the slate with a wave going round and round it. There is a sprat in it, in a hurry, getting nowhere." },
      } },
    { name = "the ladder",
      description = "A library ladder on a brass rail, for the high pigeonholes. The rungs are slimed green and somebody has tied a knotted rope beside it for honesty.",
      things = {
        { name = "the top rung", description = "From here you could reach the old dry row. There is a pair of initials cut in the upright at that height, {i}H.P.{/}, and a tally of visits. He came up here a great deal, at the end, to look at the empty ones." },
      } },
    { name = "the floor drain",
      description = "A brass grating in the middle of the flags, for spills. Water goes down it and, after a moment, comes back up, having thought better of leaving without a form.",
    },
    { name = "a pigeonhole of small waves",
      description = "Low down, at the height of a child, a row of holes no bigger than letter slots, each with a wave in it the size of a hand. They are the ones that come in last, at the very edge, and wet the toes of your boots.",
      things = {
        { name = "the labels", description = "{i}Ripple, evening. Ripple, with foam. Ripple (child's first).{/} The last has a ribbon on it and is not to be issued. Somebody in the Office was a father once." },
      },
      actions = {
        { "Put a finger in one", say "Cold, and it laps your knuckle and draws back, and laps again, with a little hiss, exactly as it would on a beach. You stand there with your finger in a filing system, being paddled at." },
      } },
    { name = "an hourglass on a nail",
      description = "A big one, in an oak frame, the glass gone green. It is how the Office knows when to send the tide out again. The sand in it is from the Long Strand, and whiter than it should be.",
      things = {
        { name = "the sand", description = "It runs through with a faint steady note, like a wet finger on a glass. A different note from the one it would make under your heel. This is the note it makes for the sea." },
        { name = "a brass plate on the frame", description = "{i}NOT to be sent to Tickover for regulating. It is right. It is the only thing in the kingdom that is.{/}" },
      } },
  },

  exits = {
    { to = "tide_office", description = "Back through the green door. Shut it properly." },
  },
}
