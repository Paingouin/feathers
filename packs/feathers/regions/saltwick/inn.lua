space {
  id = "slack_water_inn",
  region = "saltwick",
  name = "The Slack Water",
  description = "The harbour inn: one long low room with a fire at one end and a bar at the other, beams you duck for, and a floor that slopes toward the sea so that anything dropped rolls to the door. Above are the rooms; behind is the kitchen. It is named for the pause between tides, when nothing moves and a man may as well have another.",
  palette = { bg = "#100d0a", text = "#d4c8b4", dim = "#766a58", accent = "#e0a050", border = "#48392a" },
  ambience = {
    flicker { color = "#e8a850", strength = 0.2 },
    steam { glyphs = "∙°˙", color = "#6a6258", rate = 0.3 },
    embers { glyphs = "∙·˙", color = "#e08040", rate = 0.1 },
  },

  things = {
    { name = "the bar",
      description = "A ship's plank, a foot thick, laid on two barrels. It came off a wreck. Most of the inn did. The rule of the coast is that you may keep what the sea gives you, and the sea has been generous with furniture.",
      things = {
        { name = "the mugs",
          description = "Forty pewter mugs on hooks along the beam above the bar, each belonging to one man and no other. A mug is hung up when its owner is first allowed to drink here, and taken down when he is buried.",
          things = {
            { name = "a mug with a knot on the handle", description = "The skipper of the {i}Persistent{/}. The knot is a bowline, in tarred twine, renewed every spring." },
            { name = "a very small mug", description = "A christening cup, hung low. The owner is nine. It is filled with milk on his birthday, at the bar, with full ceremony, and he is expected to stand his round of it." },
            { name = "a mug turned to the wall", description = "The owner sailed eleven years ago and was not heard of again. It has not been taken down. Turning it is as far as anyone here will go." },
            { name = "the visitors' mug", description = "Chained to the bar, dented, and the only one in the room you are allowed to touch. Somebody has scratched {i}STRANGER{/} on it, and under that, more kindly, {i}SO FAR{/}." },
          } },
        { name = "the beer pulls", description = "Three whalebone handles. {i}Mild{/}, {i}Bitter{/}, and one with no label, which the landlord pulls only for men who have been in the water that day." },
        { name = "the slate", description = "What is owed, in chalk, by boat. The {i}Hopeful{/} owes a great deal. The {i}Realistic{/} owes nothing, and has it written up anyway, to make a point." },
      } },
    { name = "the landlord",
      icon = "☻",
      description = "Tam Garrow, one arm, one eye, and two opinions, both about the Tide Office. He lost the arm to a winch and the eye to a gull, and tells it the other way round if he thinks you will believe it.",
      actions = {
        { "Order something", say "He fills the visitors' mug with something brown and pushes it down the bar. It slides the whole length, on the slope, and stops at your hand. \"Pay when you've made your fortune,\" he says. \"I've a list of those. Long list.\"" },
        { "Ask about the name", when = no(flag "tide_out"),
          say "\"Slack water. The quiet between the tides. Twice a day the whole room would go still for it, mid-word, mid-swallow. You could feel it in the floor.\" He wipes the bar. \"Not felt it for forty-one tides. Place is nervous.\"" },
        { "Ask about the name", when = flag "tide_out",
          say "\"Slack water. The quiet between the tides.\" He looks at the window, and the mud beyond it. \"It's all slack now. One long one. I'd change the sign, but the painter only does the sea flat anyway.\"" },
        { "Ask about rooms", say "\"Three. One's let, one's wet, and one's the one people ask not to have again.\" He nods at the stair. \"Go up and look. Don't wake One.\"" },
      } },
    { name = "the regulars",
      description = "The men who would be at sea if the sea were available. They sit in their fathers' places and say their fathers' things.",
      things = {
        { name = "a retired captain",
          description = "Captain Elias Thorne, ninety, in the settle by the fire, with a blanket and a glass of rum that is topped up without his asking. He rounded every cape there is. He is asleep.",
          actions = {
            { "Listen to him", say "He talks in his sleep. \"...two points to larboard... no, she'll not answer... well then, round the outside of it...\" A pause. \"...never did find the edge. Went looking. It kept being further on.\" He settles, and snores, and somebody tucks the blanket." },
          } },
        { name = "a game of fox and geese", description = "Two fishermen and a board of pegs, the same game they have been playing since they were boys. One of them is the fox. He has been the fox for fifty years. He has never caught a goose, and the other has never let him change sides." },
        { name = "the man who saw the mermaid", description = "He will tell you, for a drink. She was sitting on the Calf Rock combing her hair. He rowed over. She was a seal, combing nothing. \"But for the length of that row,\" he says, \"I was the man who saw a mermaid. They can't take the row off me.\"" },
        { name = "a dog under the table", description = "A ship's dog, grey round the muzzle, lying on four pairs of boots. It gets up when a mug is empty and goes to look at the landlord. It has never been wrong." },
      } },
    { name = "the fire",
      description = "Driftwood, burning blue and green from the salt in it. Over the mantel hangs the usual stuffed fish.",
      things = {
        { name = "the stuffed fish",
          description = "A cod in a glass case, with a brass plate: {i}Caught by T. Garrow, 62 lb.{/} The plate has been changed. You can see the screw holes of three earlier ones. The fish itself has, you would swear, been let out at the seams.",
          actions = {
            { "Ask how big it really was", say "\"Sixty-two pound,\" says the landlord. \"Sixty-eight,\" says the fox. \"It was a haddock,\" says the dog's owner. There is a silence. The retired captain, in his sleep, says \"Forty,\" and nobody argues with ninety." },
          } },
        { name = "the settle", description = "A high-backed bench with a hinged seat. Under the seat, by custom, is kept one dry set of clothes in a middling size, for whoever comes in from the water." },
        { name = "the hearthstone", description = "A slab with letters on it. You tilt your head. It is a gravestone, face up, from a churchyard the sea took. {i}Here lies{/}, and the rest has been worn off by boots. He is warm, at any rate." },
      },
      actions = {
        { "Sit by it", say "The heat finds every damp place in your clothes and announces it. You steam gently. Nobody remarks on it; everybody here has steamed." },
      } },
    { name = "the kitchen",
      description = "Through a hatch behind the bar: a low black room with a range the size of a boat and one woman in command of it.",
      things = {
        { name = "the cook",
          description = "Mag Garrow, the landlord's sister, broad as a door, stirring with one hand and cuffing a gull off the windowsill with the other without turning her head.",
          actions = {
            { "Ask what is in the chowder", say "\"Fish.\" Which fish? \"The ones that came.\" She looks at you. \"You'll eat it. Everyone says what's in it and then they eat it and then they stop asking.\"" },
            { "Ask for a bowl", say "She ladles it without a word. Cream, smoke, potato, and four kinds of fish that have settled their differences. You eat it standing at the hatch. Halfway down the bowl you stop being cold, and you had been cold since the cliff." },
          } },
        { name = "the chowder pot", description = "Iron, a yard across, never empty and never washed. It was her mother's. The bottom inch of it is, by reasonable reckoning, sixty years old, and is what gives the rest its character." },
        { name = "the range",
          description = "Eight hot plates, two ovens, and a brass rail hung with pans in order of size.",
          things = {
            { name = "a tray of hot rolls", description = "Out of the oven this minute. She has her back turned. You count them: thirteen. She knows there are thirteen. She has made it very clear, without saying anything, that she knows." },
            { name = "the smallest pan", description = "For one egg. It is the landlord's. He has had the same egg, the same way, every morning since the winch, and she has never once let him cook it." },
          } },
        { name = "the pantry", description = "A cold slate cupboard: butter in a crock, a ham, a wheel of cheese with a wedge out, and a jar marked {i}NOT FOR TAM{/} which is nearly empty." },
        { name = "the gull at the window", description = "It has been thrown out eleven times today. It is standing on the sill again with its head on one side, in the manner of a guest who is sure there has been a misunderstanding." },
      } },
    { name = "the rooms upstairs",
      description = "Up a stair like a ladder: a crooked passage and three doors, numbered in tar.",
      things = {
        { name = "room one",
          description = "Shut. A pair of boots stands outside it, polished, and a tray with an empty plate. From inside comes the scratch of a pen, and now and then a sigh.",
          things = {
            { name = "the boots", description = "Town boots, thin soles, never been near a deck. There is sand in the welts all the same. Somebody has been walking on the Strand at night, alone, for a long time." },
            { name = "a note under the door", description = "The corner of a paper, pushed out. {i}Please tell them I am still on leave.{/} The landlord says the gentleman has had the room for years and pays on the nail. He does not say who. Nobody at the Slack Water tells the Tide Office anything." },
          },
          actions = {
            { "Knock", say "The pen stops. A long silence. Then a voice, dry and careful: \"Is it about the tide?\" You say no. \"Then I am not in,\" says the voice, with relief, and the pen starts again." },
          } },
        { name = "room two",
          description = "The wet one. The roof leaks in a place directly over the bed, and has done since the mast of a wreck came through it. They left the mast. It holds the roof up, now, and you may hang your coat on the crosstrees.",
          things = {
            { name = "the bed", description = "A box bed with doors, like a cupboard you sleep in. Somebody has carved on the inside of the door, where only a person lying down would see: {i}Day 9. Still raining. Still only in here.{/}" },
            { name = "a bucket under the leak", description = "It rings, a drop at a time, the same note. The last guest tuned the bucket by bending the rim, and left a second one beside it a third higher. You can nearly get a tune." },
          } },
        { name = "room three",
          wonder = true,
          description = "The one people ask not to have again. It is a perfectly good room: a bed, a chair, a washstand, a window on the harbour. {magic}Whoever sleeps in it dreams of being at sea, and wakes with salt on their lips and their hair wet.{/} Fishermen will not take it. They say they do enough of that awake.",
          things = {
            { name = "the pillow", description = "Damp. It is always damp, on one side only, and smells of open water." },
            { name = "the window", description = "It looks on the harbour. At night, the landlord says, it does not. He will not say what it looks on. He put the shutter up himself and has never asked a guest to take it down." },
            { name = "a row of pebbles on the sill", description = "One from each guest who stayed the whole night. They found them in the bed in the morning. They are not Saltwick stone. There are nine." },
          },
          actions = {
            { "Lie down for a moment", fx "wash",
              say "Only a moment. You shut your eyes. The bed lifts, and falls, and lifts. There is a wind, and rigging, and somebody forward calling a depth in a language you do not have. You sit up fast. The room is still. Your lips taste of salt, and there is a pebble in your hand." },
          } },
      } },
    { name = "the ship's wheel on the wall",
      description = "Six feet across, with one spoke missing. It hangs behind the bar. Every man who comes in gives it a quarter turn to starboard, without looking, and every man who leaves turns it back.",
      actions = {
        { "Turn it", say "You give it a quarter turn. Forty heads come round. You turn it back. Forty heads return to their mugs. Evidently it was not your turn." },
      } },
    { name = "the cellar hatch",
      description = "A trap in the floor behind the bar with a ring in it, and a rope going down. The beer comes up. Other things come up too, on dark nights, from a boat with wrapped oars, and are never written on the slate.",
      things = {
        { name = "a keg at the top of the steps", description = "Chalked {i}VINEGAR{/}, in a hand you have seen before, or will." },
      } },
    { name = "the sloping floor",
      description = "It drops a foot from the fire to the door. The tables have two long legs and two short. A dropped coin will roll the length of the room and out under the door into the harbour, and the tally of what the harbour has had off this floor is kept, in pencil, on the door frame.",
      things = {
        { name = "the pencil tally", description = "{i}3 shillings 4d, one wedding ring, a glass eye (Tam's, returned by tide), marbles: many.{/}" },
      } },
    { name = "the row of mugs",
      description = "Stoneware, grey, on a rail over the bar, each with a boat's name fired into the glaze in place of a man's. You drink from your boat's mug. If the boat is lost, the mug is not taken down.",
      things = {
        { name = "the Kittiwake's mug", description = "Chipped at the lip, in use, with a herring scale stuck in the glaze of the handle." },
        { name = "the Constance's mug", description = "Upside down. She has been overdue since before the landlord was born. It is turned up every evening at lighting time, in case, and turned down at closing." },
        { name = "a mug marked UNSINKABLE", description = "Twice the size of the others, with a gilt rim, ordered by the owner for his crew. It arrived the week after. Nobody has ever drunk from it. It is used for the darts money." },
        { name = "the stranger's mug", description = "Plain, with a crack. It is filled a finger short. That is not meanness: a full mug on this floor slides." },
      } },
    { name = "a traveller in springs",
      description = "A neat man from Tickover with a sample case on his knees, drinking small beer and looking at the wall clock with open distress. He is four minutes behind everyone in the room and cannot get into a conversation. Each time he laughs, the joke is over.",
      things = {
        { name = "his sample case", description = "Velvet, with springs clipped in rows by size. He has sold none. A fishing village wants things to stay where they are put, and a spring, he admits, is not that." },
        { name = "his watch", description = "He keeps taking it out. It is right by his city and wrong by the sea. He has been advised to set it on. He looks at you as if you had suggested he change his name." },
      },
      actions = {
        { "Tell him a joke slowly", say "You leave a gap of four minutes before the end. The room goes on round you. Then you say the last line, and he laughs, on the dot, with his whole face, for the first time since he left home. He buys you a small beer. It arrives late." },
      } },
    { name = "the dartboard",
      description = "Elm, soaked nightly in a bucket, hung on the uphill wall. On this floor you throw from a chalk line that is a foot lower than the board's foot, and visiting teams have been known to cry.",
      things = {
        { name = "the darts", description = "Three, flighted with gull. They are kept in the Unsinkable's mug with the money." },
        { name = "the scoreboard", description = "A slate. {i}SALTWICK 400, ALDMOOR WATCH 12{/}. It has not been wiped since the match. The match was nine years ago." },
      },
      actions = {
        { "Throw one", say "You allow for the slope. You allow too much. The dart goes into a beam, a hand's breadth from a very old dart with a tag on it that says {i}the baron, 2 pints{/}. You are in good company." },
      } },
    { name = "a man from Blowhard",
      description = "In the corner farthest from the fire, with his chair turned to the window, drinking small beer very slowly: a broad, quiet man in a jersey with a white whale knitted on the front. He is down for his sister's wedding. He has been a whaler for thirty years.",
      things = {
        { name = "his jersey", description = "Every Station has its pattern. This one is a whale, blowing, and round the hem a row of small figures in a boat, sitting down." },
        { name = "his hands", description = "Rope scarred, enormous, and at this moment folding a paper napkin into the shape of a calf with a tail. He leaves one on every table he sits at. The potboy has a collection." },
      },
      actions = {
        { "Ask how many he has caught", say "The room goes a little quiet. Every sailor in Saltwick has asked him that, and they want to see your face. \"None,\" he says, comfortably. You say, in thirty years? \"A hundred and ten, counting my father's and his,\" he says. \"We've a clean sheet.\" He sets the paper whale in front of you. \"You'd need to come up and hear them. Then you'd not ask.\"" },
      } },
    { name = "a horn mug with a thong",
      description = "On a nail behind the bar, apart from the pewter. It is kept for the mate of the northern mail, who will not drink from metal. The landlord thinks it an affectation. He has, all the same, been seen warming it for him on a cold night, before he gets in." },
  },

  exits = {
    { to = "saltwick_harbour", description = "Out onto the quay, uphill to the door, which seems unfair on the way home." },
  },
}

space {
  id = "chandlery",
  region = "saltwick",
  name = "Brine & Daughter, Chandlers",
  description = "A shop so full that the door only opens halfway. Rope hangs from the ceiling in coils like a forest; lamps, blocks and bells hang among it; the floor is anchors and the walls are drawers. Everything a boat could want is here, and you could not swing a cat for it, which is why the cat is on top of the cupboard.",
  palette = { bg = "#0e0e0c", text = "#d0ccb8", dim = "#727060", accent = "#d8b860", border = "#444232" },
  ambience = {
    dust { glyphs = "·˙", color = "#5e5a48", rate = 0.3, speed = 0.2 },
    flicker { color = "#e0c070", strength = 0.08 },
  },

  things = {
    { name = "Mistress Brine",
      icon = "☻",
      description = "Small, brown, quick, behind a counter you can only see the top third of. She can put her hand on any object in the shop in the dark, and has had to. Her daughter does the ladder work.",
      things = {
        { name = "her daughter", description = "Nell Brine, sixteen, at the top of a ladder with a ball of twine in her teeth, re-coiling something that was coiled wrong by a customer. She can splice a rope faster than her mother, and is waiting to be told so." },
      },
      actions = {
        { "Ask for adventuring supplies", say "\"Adventuring.\" She looks you over. \"You'll want rope. They always want rope. And they never buy enough, and they come back for more, the ones that come back.\" She measures you with her eye as an undertaker does. \"Forty fathoms. I'd say forty.\" You say you have no money. \"No,\" she says. \"You wouldn't have.\"" },
        { "Ask what sells best", say "\"Tar, twine and lamp oil. And hope, but that's the same as tar.\"" },
      } },
    { name = "the rope",
      description = "Every thickness from a bootlace to a man's arm, in hemp, manila and tarred coir, hanging in coils with the price on a tag.",
      things = {
        { name = "the thickest cable", description = "An anchor cable, eighteen inches round, coiled in a heap as high as your chest. It was ordered for the {i}Unsinkable{/} and never collected. Mistress Brine's grandmother took the deposit. They have been dusting it for a hundred years." },
        { name = "a board of knots", description = "Forty knots tied in white cord and nailed to a varnished board, each with its name. {i}Bowline. Sheepshank. Carrick bend.{/} The last is a tangle with the label {i}Customer's Own{/}." },
        { name = "a rope end, whipped", description = "Nell's work: the strands bound off with waxed thread so tight and even it looks cast. She has left it on the counter where her mother will see it." },
      },
      actions = {
        { "Try a knot", say "You tie something. Nell looks down from the ladder. \"That's a granny,\" she says, \"with another granny on it.\" She comes down, undoes it with two fingers, and ties a bowline round your wrist before you have seen her hands move." },
      } },
    { name = "the lamps",
      description = "Hung in a row along one beam, brass and copper, port red and starboard green. All of them are lit. A chandler's lamps always are; a dark one does not sell.",
      things = {
        { name = "a dark lantern", description = "Shuttered on three sides, so that it shines only one way. \"For night fishing,\" says Mistress Brine, very steadily. She sells a great many, to men who have never been seen with a fish." },
        { name = "a riding light", description = "The lamp a boat shows at anchor. It swings a little on its hook, though nothing else in the shop is moving. It has been afloat so long it has kept the habit." },
      } },
    { name = "the knotted winds",
      wonder = true,
      icon = "§",
      description = "In a locked glass case on the counter: three lengths of cord, each with three knots. They are winds. A woman up the coast ties them, and has for longer than anybody likes to work out. {magic}Undo the first knot for a breeze, the second for a gale, and never undo the third.{/} The cords stir, slightly, in a case with no draught.",
      things = {
        { name = "the third knot", description = "Tighter than the others, and sealed with a blob of red wax. Each cord has one. Nobody who buys a wind has ever come back to say what was in it, which is taken as an answer." },
        { name = "the price card", description = "{i}Winds: one season's catch, or a true secret. No credit. No returns.{/}" },
      },
      actions = {
        { "Tap on the glass", say "All three cords swing toward your finger and strain against the pins. Papers lift on the counter. Somewhere in the shop a bell rings once on its own. \"Don't tease them,\" says Mistress Brine, without looking up." },
      } },
    { name = "the charts",
      description = "A rack of rolled sea charts, and one pinned flat under glass on the counter for customers to consult.",
      things = {
        { name = "the chart under glass",
          description = "The coast from Saltwick outward, soundings in fathoms, rocks marked with crosses. A long way out, where older charts would put a monster, a sober hand has written: {i}Here be herring, mostly.{/}",
          things = {
            { name = "the edge of the chart", description = "The soundings stop. The paper goes on, blank, for a hand's breadth, and then there is the frame. Nell says every skipper who buys one asks what is past the blank. Her mother says: \"More chart, when somebody draws it.\"" },
            { name = "a pencilled cross", description = "Close in, off the Long Strand, with {i}UNSINKABLE{/} beside it and a small rude drawing." },
          } },
        { name = "a chart of the harbour bottom", description = "Made, the label says, by guesswork and lead line. It shows nineteen steps, flat sand, and nothing of interest. It is about to be found wrong in several respects.",
          variants = {
            { when = flag "tide_out",
              description = "Made, the label says, by guesswork and lead line. Nell has it spread on the counter and is correcting it in red ink, with enthusiasm, from the window." },
          } },
      } },
    { name = "the bells",
      description = "Ship's bells, hand bells, a fog bell the size of a bucket. A cord runs through all their clappers so that the shop door rings the lot.",
      actions = {
        { "Open the door again", say "Every bell in the shop goes at once. The cat does not move. Mistress Brine does not move. You are the only thing in the building that jumps." },
      } },
    { name = "the second-hand figureheads",
      description = "Leaning in a row at the back, taken off boats that were broken up: wooden women, a wooden king, a wooden dog. They all stare at the same spot on the opposite wall with great determination.",
      things = {
        { name = "the wooden king", description = "Crowned, bearded, pointing forward with a sceptre that has been snapped off and replaced with a broom handle. Three boats have carried him and all three were wrecked. He is very reasonably priced." },
        { name = "the wooden dog", description = "A terrier, ears up, from a ratting boat called the {i}Good Boy{/}. Nell has put a bowl of water in front of it. She says she knows. She says it does no harm." },
      } },
    { name = "the drawers",
      description = "A wall of them, floor to ceiling, hundreds, each with a brass handle and a card.",
      things = {
        { name = "a drawer of fish hooks", description = "Sorted by size from a whale down to a whisker. A card in the angler's hand is pinned to the smallest compartment: {i}None for me, thank you. A. Finch.{/} He writes every year, to be sure." },
        { name = "a drawer marked SUNDRIES", description = "A sextant mirror, a dried seahorse, a glass eye, a caul in a locket to keep a sailor from drowning, and nine identical corks." },
        { name = "a drawer that will not open", description = "The card says {i}SPARE{/}. Mistress Brine says it has never opened, not for her mother nor her grandmother, and that it rattles differently every year." },
      } },
    { name = "the cat on the cupboard",
      icon = "c",
      description = "A tortoiseshell with a tarred tail, looking down on the shop from the only clear surface in it. She came off a boat. She sits facing the door, as she sat facing the bow.",
      actions = {
        { "Reach up to her", say "She lets you get within an inch and then looks at your hand until it goes away." },
      } },
    { name = "a barrel of ship's biscuit",
      description = "Round, pale, and hard as slates. They keep for ever. The ones at the bottom of the barrel are older than the daughter.",
      actions = {
        { "Try one", say "You bite. Nothing happens to the biscuit. You bang it on the counter, as Mistress Brine shows you, and a weevil walks out, looks about, and walks back in. \"That's how you know it's fresh,\" she says." },
      } },
    { name = "the glass floats",
      description = "Green glass balls in nets, hung in the window, each holding a bubble of somebody's breath from the glassworks. The light goes through them and lays green coins all over the floor.",
      things = {
        { name = "a float with something in it", description = "One has a little water inside, sealed in when it was blown. It slops when you turn it. There is the smallest possible shrimp in the water, and it has been in there, Nell says, since before she was born." },
      } },
    { name = "a shelf of Tickover goods",
      description = "Kept apart from the honest stock, behind a rope: brass things that came by cart from inland. A self winding log line. A patent fog horn with a boiler. A compass that ticks.",
      things = {
        { name = "the patent fog horn", description = "You stoke it with a teaspoon of coal and in a quarter of an hour it gives one blast. Mistress Brine sold one to a herring boat. The fog had lifted by the time it went off, and the blast put the whole fleet about." },
        { name = "the compass that ticks", description = "It points north, in jerks, one a second. Sailors will not have it aboard. \"A compass should know,\" says Mistress Brine. \"That one's working it out.\"" },
        { name = "a price ticket", description = "On all of them, in her hand: {i}CHEAP. Runs four minutes behind. Not my doing.{/}" },
      } },
    { name = "the sailmaker's corner",
      description = "A bench under the back window with a palm, a fid, and a bolt of canvas the colour of porridge.",
      things = {
        { name = "an order on the spike", description = "{i}One patch, 6 ft by 6. Any colour. Must be a thing that was loved. For the airship. H.B.{/} Pinned to it, folded, is a child's blanket with ducks on, and a note from a fisherman's wife: {i}He's grown. Take it up.{/}" },
        { name = "the sail needle", description = "Three cornered, as long as your finger, stuck in a lump of tallow. She can put eleven stitches to the inch through four thicknesses, in the dark, and has, on a foredeck, in weather she does not talk about." },
      },
      actions = {
        { "Thread the needle", say "You try for some time. Mistress Brine takes it from you, threads it behind her back while looking at the ceiling, and hands it over. \"There,\" she says. \"Now you've threaded a needle.\"" },
      } },
    { name = "the northern shelf",
      description = "At the back, above the tar, a shelf of goods that nobody in Saltwick buys and one boat a year depends on.",
      things = {
        { name = "snow goggles", description = "A strip of driftwood, carved to fit the face, with two slits to see through no wider than a coin's edge. The chandler put a pair on once to see. He says the whole world became a letter box." },
        { name = "an ice saw", description = "Six feet long, with teeth like a shark's and a handle at one end only. The other end has a ring for a weight. It is priced in fish." },
        { name = "a tin of red paint", description = "{i}Signal Red, Best.{/} One tin a year, for the houses of a town that needs to be found in the snow. Next to it, one tin of yellow. They are particular, up there, about not being the same colour as the weather." },
        { name = "a sack of beach stones", description = "Round, grey, the size of loaves, picked off the Long Strand by the chandler's boy at a penny the dozen. They are for a bath house. You ask what a bath house wants with stones and are told that they heat them. You ask why they do not use their own. The chandler says there are not any. You think about a country with no stones in it, all the way home." },
      },
      actions = {
        { "Try on the snow goggles", say "The shop goes away. What is left is one bright slot, with a lamp in it and half the chandler. You turn your head and get the other half. \"That's all you want to see, up there,\" he says. \"The rest of it'd blind you.\"" },
      } },
    { name = "a coil of rope with a red thread",
      description = "Every strand has one red yarn laid into it, the whole length. It is made for a town that strings rope from post to post down its street, to be followed home by hand in a white blow. The chandler says the red is so you know it is the right rope. You wonder what the wrong rope would be, out there, and where it would take you." },
  },

  exits = {
    { to = "saltwick_harbour", description = "Out through the half of the door that opens, to the quay." },
  },
}

space {
  id = "harbour_floor",
  region = "saltwick",
  name = "The Harbour Floor",
  description = "The bottom of Saltwick harbour, in the open air for the first time since it was built. Grey mud, shining, ribbed by a tide that left in a hurry. The quay stands over you like a cliff, weeded green. Boats lie about on their sides. Everything the town has dropped in nine hundred years is down here, and most of it is looking at you.",
  palette = { bg = "#0a0e0e", text = "#c4ccc8", dim = "#5e6c68", accent = "#9ac4b0", border = "#2e443e" },
  ambience = {
    fog { color = "#14201e", speed = 0.2, strength = 0.4 },
    drip { glyphs = "⠁⠂⠄⡀", color = "#5f8a84", rate = 0.3 },
  },

  things = {
    { name = "the mud",
      description = "Deep, soft and cold, with a skin on it that holds until you trust it. It makes a noise when you lift your foot like something being told a secret.",
      things = {
        { name = "your footprints", description = "A line of holes back to the steps, each one filling with water. They are the first ever made here. You find this more of a responsibility than you expected." },
        { name = "a lugworm cast", description = "A small coil of mud beside a small dimple. Under it, a worm, going about its day, with no idea that the sky has changed." },
      },
      actions = {
        { "Stand still", say "You sink, gently, to the ankle. Then a little more. You decide that standing still is a thing to do on the way to somewhere else." },
      } },
    { name = "the stranded boats",
      description = "The fleet, lying where the water set it down. From below they are bigger than they look from the quay, and rounder, and each one has a beard.",
      things = {
        { name = "the keel of the Hopeful", description = "Blue above the waterline. Below it, a thing nobody was meant to see: a second name, painted on the bottom in white, upside down. {i}PLEASE{/}." },
        { name = "the keel of the Realistic", description = "Sheathed in copper, patched, re-patched, and scraped clean of every barnacle. Her owner has been down here already this morning with a brush. He does not waste a calamity." },
        { name = "a rudder with a fish in it", description = "A pool has been left in the hollow behind a rudder, and in it is a plaice, flat on the bottom, with both eyes turned up at you. It is waiting for the tide. It is going to be waiting a while, and you move it, in your hat, to a bigger pool." },
      } },
    { name = "the lost things",
      description = "Scattered across the mud, half sunk: everything that ever went over the side of the quay with a small splash and a large oath.",
      things = {
        { name = "the clay pipes", description = "Hundreds. White stems sticking out of the mud like the bones of very small birds. Every fisherman who ever leaned on the rail and laughed has contributed." },
        { name = "a wedding ring", description = "Gold, thin, lying on the mud as if set down a moment ago. Inside: {i}T. to M.{/} The landlord's tally at the inn lists one. Somebody up there has been telling his wife for thirty years that he lost it at sea, which is, narrowly, true.",
          actions = {
            { "Leave it on the bottom step", say "You carry it over and set it on the lowest step of the harbour stair, where the first person down will see it. Whoever T. is, he will have some explaining to do, and a ring to do it with." },
          } },
        { name = "a glass eye", description = "Blue, staring up out of the mud. The landlord has his back; this is a different one. The harbour, it seems, has had more than one eye on it." },
        { name = "an anchor graveyard", description = "A dozen anchors, fouled on one another, rusted into a single thing with too many arms. Each one was cut loose by a skipper in a hurry. Together they have held the harbour bottom down for centuries." },
        { name = "a child's boat", description = "Carved from a block, with a rag sail, upright in the mud and perfectly sound. It sank on its first voyage, sixty years ago, and its captain is asleep by the fire at the Slack Water under a blanket. He rounded every cape after. He never forgot this one." },
      } },
    { name = "the cockle pickers",
      icon = "☻",
      description = "Half the town is down here with rakes and baskets, bent double, working backwards. The harbour has turned out to be paved with cockles.",
      things = {
        { name = "Hesper Coddle's basket", description = "Full, already, and she has started on her apron. She rakes without looking, as she guts without looking. \"Forty years I've sold fish over the top of these,\" she says. \"They never said a word.\"" },
        { name = "a cockle", description = "Ribbed, cream and brown, shut tight. You hold it in your palm. After a while it opens a crack, puts out a foot like a small tongue, and tries to dig into your hand." },
      },
      actions = {
        { "Help rake", say "You rake for an hour. You get eleven cockles and a boot. The child next to you gets a bucketful and a silver spoon. It is a matter of where you stand, they tell you kindly, and of knowing where to stand." },
      } },
    { name = "the gulls, walking",
      icon = "v",
      description = "They would normally float here. They are walking instead, with their wings held a little away from their sides, like people in wet clothes. Each has mud to the knee and blames you.",
      actions = {
        { "Apologise to the gulls", say "One of them takes your apology and looks for the part of it that can be eaten." },
      } },
    { name = "the harbour chain",
      description = "An iron chain, each link the size of a loaf, lying across the harbour mouth in the mud. It was raised in time of war to keep enemy ships out. There has never been a war here. It was raised once, by mistake, on a regatta day.",
      things = {
        { name = "a link", description = "Furred with weed and mussels, and inside the link, sitting in it as in an armchair, an enormous edible crab that has plainly been there since it was small enough to get in." },
      } },
    { name = "the founder, lying down",
      wonder = true,
      description = "Half sunk in the middle of the harbour, face up: a stone statue of a woman, twice life size, in a long coat, with one arm raised. She stood on the quay, the old charts say, and the sea took her in a storm before anyone living was born. {magic}Nine hundred years of tides have not worn her face.{/} She is pointing straight up now. Her expression has not changed, and it suits the new direction just as well.",
      things = {
        { name = "her raised hand", description = "The forefinger is out. A cormorant sits on it, wings spread to dry, like a second, smaller statue she is holding up for inspection." },
        { name = "the plinth beside her", description = "Fallen with her. Three words cut deep, in letters so old they are nearly pictures: {i}SHE ASKED FIRST{/}. Nobody at the Tide Office has ever known what it was she asked, or whom." },
      },
      actions = {
        { "Clean the mud from her face", say "You use your sleeve. Under the mud the stone is pale and fine, and she is not stern, as founders are. She looks like somebody waiting for an answer that she expects to be yes." },
      } },
    { name = "the foot of the mole",
      description = "The long stone arm that carries the Light, seen from below: huge rough blocks, black with weed, going down into the mud.",
      things = {
        { name = "the weed on the mole",
          key = "mole weed",
          description = "Bladderwrack, a yard thick, hanging in a curtain. At one place it hangs in an arch, as if over something.",
          variants = {
            { when = flag "sw_sea_door",
              name = "an arch in the mole",
              description = "Under the weed you scraped away: a low arch of older stone than the rest, with an iron grille standing open on one hinge, and steps going up inside the mole into the dark. The Light has a back door, and it is under the sea." },
          },
          actions = {
            { "Scrape the weed away", when = no(flag "sw_sea_door"), set "sw_sea_door", fx "shake",
              say "It comes off in wet armfuls, with crabs in it. Behind is an arch, and a grille eaten to lace by the salt. You lean on the grille. It considers its position and falls off one hinge. Steps go up into the root of the lighthouse." },
          } },
        { name = "the mussels", description = "A blue-black crust of them over every block, each shut tight and holding a drop of sea inside it to be going on with. Between them, they have the last of the harbour." },
      } },
    { name = "a trickle of channel",
      description = "One thread of water still runs down the middle of the harbour to the mouth, a hand wide. It is all the river Saltwick has. Until today nobody knew it had one.",
      things = {
        { name = "a shoal of fry", description = "Hundreds of fish the length of a fingernail, all facing upstream in the trickle, holding on. They have gone from a harbour to a gutter in an afternoon and have not broken formation." },
      } },
    { name = "an old cannon",
      description = "Bronze, green, muzzle down in the mud at a slant. It fell off a ship. There is a cannonball still in it; you can see the curve of it up the barrel, and a small octopus sitting on the curve, looking out.",
      things = {
        { name = "the octopus", icon = "o",
          description = "The size of your hand, the colour of the bronze, with eyes like slots. {danger}It reaches an arm out of the muzzle toward you.{/} The arm touches your finger, tastes it with each sucker in turn, and withdraws. You have been examined, and you will never know the result.",
          actions = {
            { "Offer it a cockle", say "The arm takes the cockle, turns it over, and draws it inside. A moment later the empty shell is put out again, both halves, and set on the mud with the others. There is a row. It keeps its doorstep tidy." },
          } },
      } },
    { name = "a wheel in the mud",
      description = "Iron, spoked, a yard across, lying flat with the mud ribbed round it. It is not off a cart. It has a flange. Something that ran on rails came down here once and went no further.",
      things = {
        { name = "the rail it ran on", description = "One length, bent, going from the foot of the quay toward the harbour mouth and under the mud. On the web of it, cast in: {i}TICKOVER MUNICIPAL. PHASE THREE.{/} They built the end first, to be sure of it." },
        { name = "an eel in the hub", description = "It lives there, with its head out of the axle hole, and regards the middle and both ends of the tramway with equal contempt." },
      } },
    { name = "a row of mooring rings",
      description = "Set in the foot of the quay wall, far below the ones in use: great iron hoops gone to red lace. They are too low for any tide the Office has on file. Whatever was moored to them, the harbour was a different shape.",
      things = {
        { name = "the lowest ring", description = "Bronze, not iron, and not rusted at all. There is a turn of rope still on it, turned to stone. It leads out along the mud a little way toward the open sea, and stops, at an end that was not cut but bitten." },
      },
      actions = {
        { "Pull on the stone rope", say "It does not give. You did not think it would. But far out past the mole, where the water has gone to, something knocks once against the floor of the sea, the way a boat knocks on a quay when you take hold of her painter." },
      } },
    { name = "a whale's rib in the mud",
      description = "Bedded in the silt, curved, grey, as long as a boat: one great rib, with barnacles on it. No whale was ever brought into Saltwick. It came in by itself, a long time ago, and lay down here, and the harbour was built round where it lay.",
      things = {
        { name = "the barnacles", description = "Shut tight, waiting for the water. You tap one. Nothing. They have the look of a row of small closed shops." },
        { name = "a mooring ring", description = "Somebody has driven an iron staple into the end of the rib and used it to tie up a dinghy, for a hundred years or so. The rib has grown no opinions about it." },
      },
      actions = {
        { "Sit on the rib", say "It is smooth and dry on top and exactly the height of a bench. You sit in the middle of the empty harbour, on a whale, with the weed steaming. You feel that you ought to apologise to it for something, and you cannot think what, never having met one." },
      } },
    { name = "a lump of clear glass",
      description = "Half buried by the mole footings: a slab as big as a paving stone, bluish, with bubbles in it. You take it for glass until you touch it. It is ice, as hard as rock, lying in the mud of a harbour in a mild season, not melting. It has slid off the deck of the northern mail at some time and sat under the water ever since, keeping its own counsel. The tide being out seems to be a matter of indifference to it." },
  },

  exits = {
    { to = "saltwick_harbour", label = "The harbour steps", description = "Up forty green steps to the quay, leaving most of the mud behind and bringing the rest." },
    { to = "light_cellar", label = "The arch in the mole",
      description = "Through the fallen grille and up the steps inside the mole, under the lighthouse.",
      requires = flag "sw_sea_door", hidden = true },
  },
}

space {
  id = "light_cellar",
  region = "saltwick",
  secret = true,
  name = "Under the Light",
  description = "A round vault inside the root of the mole, directly below the lighthouse. The walls are the old stone, older than the tower, wet and black. It is the store of every keeper there has ever been, and none of them threw anything away. A ladder goes up to a trapdoor. Something comes down beside it.",
  palette = { bg = "#0a0c10", text = "#ccd0cc", dim = "#666c68", accent = "#ffd27a", border = "#40402c" },
  ambience = {
    drip { glyphs = "⠁⠂⠄⡀", color = "#5f8090", rate = 0.3 },
    shimmer { color = "#ffd27a", strength = 0.15 },
  },

  things = {
    { name = "the root of the lamp",
      wonder = true,
      icon = "│",
      description = "Down through the roof, where no chimney or pipe has any business, comes a single thread of gold light, thin as a wire and straight as a plumb line. It comes from the lamp, three storeys up. It goes into the floor. {magic}The flame at the top of the tower is only the part that shows.{/} Wim polishes the brass and thinks he keeps a lamp. He is keeping the leaf of something.",
      things = {
        { name = "where it enters the floor", description = "A hole in the bedrock no wider than a straw, lined with gold where the light has touched it for longer than there has been a tower. You put your eye to it. It goes down, and down, and is still going when your nerve stops." },
      },
      actions = {
        { "Pass your hand through it", fx("flash", "#ffd27a"),
          say "No heat. For the instant your hand is in the thread, you see it as it was when you were six: small, grubby, holding a stick that was a sword. Then it is your hand, and the light is unbroken, as though you had not been there." },
      } },
    { name = "the older lamps",
      description = "Along one wall, on a stone shelf: every lamp the keepers tried before they found there was no need. They brought oil, and wicks, and reflectors. The light upstairs burned on regardless, and they carried their lamps down here one by one.",
      things = {
        { name = "a whale-oil lamp", description = "Brass, with four wicks. The reservoir is full. It was lit once, beside the great lamp, and nobody could see that it was lit." },
        { name = "a cresset", description = "An iron basket for burning pitch. This one is from before the tower, when the Light was a fire on a rock and a man to feed it. The label, in a later hand: {i}What we thought it was.{/}" },
        { name = "a mirror of polished silver", description = "Curved, a yard across, to throw the beam further. They hung it behind the lamp. The beam went through it. There is a clean round hole in the middle with edges like a bitten biscuit." },
      } },
    { name = "the barrels of oil",
      description = "Forty, stacked in a pyramid, sent by the Crown each year for the Light and signed for by the keeper. Not one has been broached. Wim's grandfather started the pyramid. Wim says it would be rude to stop accepting them.",
      things = {
        barrel { name = "the bottom barrel", description = "The staves have gone grey and the hoops are rust. Whatever is in it is no longer oil. It knocks back when you knock." },
        { name = "the delivery notes", description = "A spike of them, every one stamped {b}RECEIVED WITH THANKS{/}. The Crown has paid for three hundred years of lamp oil, and the Light has never cost anybody a penny, and both parties are content." },
      } },
    { name = "a hook in the wall",
      key = "horn hook",
      description = "A bronze hook, green, shaped like a wave about to break. Hanging from it by a baldric of rotted leather is a great horn made from a single shell.",
      variants = {
        { when = item "sea_kings_horn",
          description = "A bronze hook, green, shaped like a wave about to break. A baldric of rotted leather hangs from it, and a ring of clean stone on the wall shows the shape of what the baldric held." },
      },
      things = {
        { name = "the inscription under the hook", description = "Cut in the old stone, in letters so old they are nearly pictures: {i}FOR WHEN THEY ARE ALL OUT, AND NONE ARE COMING IN.{/} The same hand as the plinth in the harbour." },
      },
      actions = {
        { "Take the horn", once = true, give "sea_kings_horn", fx "sparkle",
          say "The leather parts at a touch, and the horn is in your arms: heavier than a shell should be, and cold, and coiled three times. The thread of light beside you does not waver. Overhead, very faintly, a kettle that has been about to boil for forty years begins to sing. {gold}The Horn of the Sea-King.{/} You cannot sound it. You are not sure that you would." },
      } },
    { name = "the keepers' shelf",
      description = "A row of small things on a ledge, one for each keeper, left on his last day: the office has no other memorial.",
      things = {
        { name = "a clay pipe", description = "The first keeper's. The bowl is carved as a lighthouse. It has a crack, mended with tar." },
        { name = "a pair of spectacles", description = "The seventh keeper's. One lens is missing. You have seen that lens, in a gull's nest on the gallery. The family has been robbing the place for generations." },
        { name = "an empty place at the end", description = "Dusted. Wim comes down, then, by the trapdoor. He has cleared a space the size of a folded letter." },
      } },
    { name = "the old stone",
      description = "The vault is cut from a single outcrop, the rock the first fire was lit on. Tool marks all over it, shallow and close, made with something softer than iron.",
      things = {
        { name = "a tide line inside", description = "A band of dried salt round the whole wall at the height of your knee. The sea has been in here. It came, the keepers' book says, on the night the horn was blown, to see." },
        { name = "a blind white crab", description = "It lives in a crack by the floor, pale as a tooth, and comes out when the drip falls. It has never seen the thread of light. It walks through it twice a day." },
      } },
    { name = "the ladder",
      description = "Twelve iron rungs to a trapdoor in the roof. From below you can read the underside of the trap: it is the back of Wim's hearth rug, nailed on.",
      actions = {
        { "Listen at the trap", say "A stove ticking. A page turned. A big slow voice, reading aloud to nobody: \"...and the weather is fine.\" Then the page again. He is on his own up there with one letter, and making it last." },
      } },
    { name = "a crate from Tickover",
      description = "Slatted deal, stencilled {i}THE LIGHT, SALTWICK. CLOCKWORK, REPLACEMENT.{/} It was sent down forty years ago when the turning gear in the lamp room was last looked at. It has never been opened. Wim says the old gear was not broken, and that he was not going to put a thing up there that was four minutes behind the sea.",
      things = {
        { name = "through the slats", description = "Brass, in straw, bright as the day it was packed. It is ticking. It has been ticking in the dark for forty years, wound by nobody, and when you put your hand on the crate the tick does not get any louder, only a little quicker, like a dog that has heard the door." },
        { name = "the consignment note", description = "Nailed to the lid. {i}With the compliments of L. Fusee. If it will not stop, do not be alarmed. Some of them will not.{/}" },
      },
      actions = {
        { "Knock on the crate", say "The ticking stops. You wait. It starts again, very softly, and you would swear it was now in time with the drip from the wall." },
      } },
    { name = "a tally of nights",
      description = "Cut in the old stone by the ladder foot: strokes in fives, row under row, going down the wall and along the floor and up the other side. One for every night the Light has been lit.",
      things = {
        { name = "the newest strokes", description = "Wim's, with a cold chisel, neat. He comes down each morning and cuts last night." },
        { name = "the oldest strokes", description = "Under the damp line, worn nearly smooth, and not cut with a chisel. Something scored them with a single point, deep, each one as long as your arm. There are a great many. They were counting nights here before there was a Light to count them for." },
      } },
    { name = "a horn lantern from the north",
      description = "On a shelf of its own, wrapped in a bit of sealskin: a little lantern with windows of scraped horn and a candle end in it. A card is tied to the ring.",
      things = {
        { name = "the card", description = "{i}Mr Wim: you will not believe my tower, so here is my flame. It was lit from the one before, and that from the one before. It has not been out in a hundred and four years. Light your lamp from it once, if you care to, and then yours and mine are the same fire. M. Frost, the Cold Light.{/}" },
        { name = "the candle end", description = "Burned down an inch and pinched out. So he did light it. And somewhere up in the lamp room, since that night, the Saltwick Light has been burning a flame that began on a pole on the ice. He has told nobody. He keeps the lantern where he keeps the things he would save first." },
      },
      actions = {
        { "Hold the lantern", say "It weighs nothing. The horn is the colour of weak tea and warm from your hand in a moment. You think of two old keepers, four hundred miles apart, who have never met and never will, each climbing a stair at dusk to tend the same fire." },
      } },
    { name = "a puddle with a skin of ice",
      description = "In the lowest corner, where the floor dips, a pool no bigger than a plate has frozen over, though the cellar is only cool. It is directly under the shelf with the lantern. Wim puts it down to a draught." },
  },

  exits = {
    { to = "harbour_floor", label = "The steps down", description = "Down inside the mole and out through the arch, onto the mud." },
    { to = "saltwick_light", label = "The ladder",
      description = "Up twelve rungs and out under the hearth rug, into Wim's round room, with some explaining to do." },
  },
}
