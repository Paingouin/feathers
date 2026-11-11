-- Muckle Afterthought at work: the net loft, the smokehouse and what is behind it.

space {
  id = "is_net_loft",
  region = "afterthoughts",
  name = "The Net Loft",
  description = "A long room over the boat shed, up an outside stair, with a window in each gable and brown net hanging from every rafter. It smells of tar and bark and wool. Three women sit in the light with their hands going. On the Afterthoughts the men catch the fish, and the women see to it that there is something to catch them in.",
  palette = { bg = "#0e100b", text = "#d0ccb6", dim = "#6e6c56", accent = "#c8b070", border = "#42402a" },
  ambience = { dust { glyphs = "·˙∙", color = "#6a6448", rate = 0.5, speed = 0.3 } },

  things = {
    { name = "the Long Net",
      wonder = true,
      icon = "#",
      description = "It hangs the whole length of the loft in a slow brown wave, and goes on out of the far window and down to the shed below, and there is more of it there. It was begun by the first woman on the island. It has been fished every season since, torn every season, and mended every winter by her daughters, and theirs. {magic}There is not one knot of the first net left in it. There has never been a day when it was not whole.{/} Each mender ties in one mesh of her own hair. You can see them, if you look along it against the light: fair, and red, and black, and grey, going back and back.",
      things = {
        { name = "the newest mesh", description = "Near the window. A thread of bright copper red, tied in last winter. Isa's girl. She is nine, and did it with her tongue between her teeth, and has been back each day since to look at it." },
        { name = "a white mesh", description = "Far along, in the oldest part, where the twine has gone dark as iron. One thread of pure white among it. Nobody knows whose. She must have come to it late, or been born old." },
        { name = "a tear, half mended", description = "As long as your arm, made by a seal that was after the same herring. They do not hold it against the seal. It is noted, and mended, and the seal will be told." },
      },
      actions = {
        { "Run it through your hands", say "It goes through your fingers by the fathom, heavy and soft, and smelling of every sea it has been in. You could not find where it begins. The women watch you try. \"It doesn't,\" says the oldest, and bites off a thread." },
      } },
    { name = "the net wives",
      description = "Three, on low stools, each with a lap full of net and a bone needle moving faster than you can follow. They talk the whole time and none of them looks down.",
      things = {
        { name = "old Kirsty",
          icon = "☺",
          description = "Eighty-eight, blind for the last ten, and the best mender on the islands. She says the eyes only ever got in the way. She knows whose net it is by the feel of the knots.",
          actions = {
            { "Give her your hand", say "She takes it and turns it over, and runs her thumb across the palm as if it were mesh. \"Mainland,\" she says. \"Soft. Not married. Something bit you once and you made a great deal of it.\" The other two are delighted. She is right about the goose." },
            { "Ask about the first net", say "\"She came in a hide boat, with a man, and the man was no use. So she cut her hair and made a net of it, and they ate.\" Her needle does not slow. \"That's all the history there is here. The rest is weather.\"" },
          } },
        { name = "Isa", description = "Kirsty's granddaughter, forty, with forearms like a blacksmith's. She can mend, bark, bait and gut, and row a boat home against the tide with a man lying drunk in the bottom of it. She has done all of these in one day and then gone to a dance." },
        { name = "Bel", description = "The youngest, and newly married in from another isle. She is being watched for mistakes. She has not made any, and it is beginning to tell on the others." },
      },
      actions = {
        { "Offer to help", say "They give you a needle and a hole. You make a knot. Isa looks at it for some time. She cuts it out very gently and gives you the tar pot to stir, which is what they give the children." },
      } },
    { name = "the bone needles",
      description = "A rack of them by the window, flat, pointed, each with a tongue cut in the middle to hold the twine. They are made from the ribs of the whale whose jaw is somebody's gate.",
      things = {
        { name = "the oldest needle", description = "Brown as tea and worn so thin at the point that the light comes through. It has a notch on the edge for each woman who has used it. There are eleven notches, and Kirsty's is not the last, because she has already cut the next one, for the girl." },
        { name = "a wooden needle", description = "Whittled, clumsy, too thick. A man made it, for a present, and it is no use at all. It has the best place on the rack." },
      } },
    { name = "the glass floats",
      description = "Green balls of thick glass in nets of their own, hung in bunches from the beams like fruit. They hold the top of the net up. When the wind gets in at the window they knock together with a sound like far-off bottles.",
      things = {
        { name = "a float with water in it", description = "A spoonful, sealed inside the glass, that got in when it was blown. It has been out to the grounds a thousand times and that spoonful has never met the sea. It rolls round when you tip the float. It is very clear." },
        { name = "a blue float", description = "The only one. It came in on the back strand from somewhere that makes them blue. They hang it on the end of the net, for luck, and for the look of the thing." },
      },
      actions = {
        { "Set them swinging", say "A long soft clinking runs down the loft and back. Bel looks up and smiles. Old Kirsty says, \"That'll be the visitor.\"" },
      } },
    { name = "the bark pot",
      description = "An iron cauldron on a slab by the door, full of something the colour of strong tea. Nets and sails are boiled in oak bark to keep the rot out. The whole loft, and all three women, are tanned a shade browner than the rest of the island.",
      actions = {
        { "Stir it", say "A net turns over in the liquor like a thing asleep. You are told you are doing well. You have been given the one job in the loft that cannot be done badly." },
      } },
    { name = "the long lines",
      description = "Coiled in shallow baskets: a mile of line to a basket, with a hook every fathom, each hook stuck in a strip of cork so that it will run out clean.",
      things = {
        { name = "a basket being baited", description = "A thousand hooks, a thousand mussels. Two of the children are doing it, after school, at a speed that would frighten you. They get a farthing a basket and an opinion of their work." },
        { name = "the hooks", description = "Tinned iron, as long as your little finger. Each is tied on with a knot that is called the Widow's, because it does not let go." },
      } },
    { name = "a cradle",
      description = "A net hammock slung between two rafters, with a baby in it, asleep. One of the women has a string tied to her foot and rocks it without knowing she does.",
      things = {
        { name = "the baby", description = "Bel's sister's. It is three months old and has slept in a net every day of its life. It has one hand out through the mesh and has hold of a float cord, and will not be parted from it." },
      } },
    { name = "the creels",
      description = "Baskets for carrying fish on the back, woven of willow and smelling of every catch since they were made.",
      things = {
        { name = "the head band", description = "A plaited strap that goes round the forehead. The women carry a hundredweight of wet fish up the slip like this, knitting as they go. There is a groove worn in the doorpost at exactly the height of a creel." },
      } },
    { name = "the seaward window",
      description = "Small, square, unglazed, with a shutter. The Long Net goes out through it. So does the women's view, which takes in the slip, the Lee Wall, the inn door and the customs hut, with nothing in between.",
      things = {
        { name = "a row of pebbles on the sill", description = "White ones, a dozen, in a line. When a boat goes out, a pebble is moved to the left. When it comes home the pebble goes back. At this moment there are none on the left." },
        { name = "a herring gull chick", description = "Grey, speckled and furious, in a box of wool. It fell from the cliff. Isa is feeding it by hand until it can fly. It bites her every time. She says it shows spirit." },
      },
      actions = {
        { "Look out", say "You can see everything. A man leaves the wall and goes to the inn. \"Wull,\" says Kirsty, who cannot see. \"Early,\" says Isa. \"He'll have had words,\" says Bel. It is all known up here before it has finished happening." },
      } },
    { name = "the boat shed, through the floor",
      description = "The boards are laid wide, for the nets to drip. Between them you can see down into the shed: a hull on trestles, pale and unfinished, and a man walking round it with a paint pot, not painting.",
      things = {
        { name = "the man with the paint pot", description = "Sandy Groat, who paints the eyes on the boats. He has been walking round this one for nine days. The eye has to go on at the right moment and look the right way. He says he will know. The whole island is being very patient with him and it is costing them." },
      } },
    { name = "a coil of tarred twine",
      description = "Hemp, three-ply, black and sticky. You touch it. You will be finding that out on your clothes for a week." },
    { name = "the loft cat",
      description = "Grey, thin, with half a tail, asleep in a heap of net. She keeps the rats from the twine. She has brought up five litters in this heap, and every boat on the island has one of her grandchildren aboard, on wages." },
    { name = "the work song",
      description = "They have been singing it under their breath since you came in. It has no end. Each verse is a knot, and it is in a language older than the one they talk in.",
      actions = {
        { "Listen", say "It goes round. You catch one word, again and again, where the needle pulls tight. You ask what it means. \"Hold,\" says Isa. \"It only means hold.\"" },
      } },
  },

  exits = {
    { to = "is_landing", label = "The Landing", description = "Down the outside stair, with one hand on the rope rail." },
  },
}

space {
  id = "is_smokehouse",
  region = "afterthoughts",
  name = "The Smokehouse",
  description = "A tall black shed on the shore, tarred outside and tarred by other means within. Blue smoke stands out of every seam. Inside it is dark, warm and brown, and hung to the roof with herring. For a place that makes forty people's whole living, there are, when you look, not all that many fish.",
  variants = {
    { when = flag "is_knows_still",
      description = "A tall black shed on the shore, hung to the roof with herring. There are not all that many fish. There are a great many barrels. Now that you know, the whole building looks like a man standing in front of a door with his hands behind him." },
  },
  palette = { bg = "#100c08", text = "#d2c4a8", dim = "#74644e", accent = "#d89848", border = "#463422" },
  ambience = {
    fog { color = "#2a2218", speed = 0.15, strength = 0.7 },
    embers { glyphs = "∙·˙", colors = { "#d08030", "#8a3a10" }, rate = 0.15 },
  },

  things = {
    { name = "the smoker",
      icon = "☻",
      description = "Rab Isbister, known as Black Rab on account of the trade. He is the colour of a kipper and smells like the best one you ever had. He is the brother who is not speaking to the other brother.",
      things = {
        { name = "his eyebrows", description = "Gone. They went in a flare-up in his youth and never came back. It gives him a look of being surprised, which he is not, ever." },
        { name = "his leather apron", description = "Stiff with smoke and scales. If he took it off it would stand up by itself and very likely carry on." },
      },
      actions = {
        { "Ask about the smoking", say "\"Split, brine, drip, hang. Oak, damp, slow. Three days.\" He opens a hand. \"That's all I'll say. My brother'd tell you different, and he'd be wrong, and I'd not hear it anyway.\"" },
        { "Ask why so many barrels", when = no(flag "is_knows_still"),
          say "\"Herring.\" You look at the barrels. There are sixty. You look at the herring. \"They pack down,\" he says, and moves a little to his left, in front of something." },
        { "Ask why so many barrels", when = flag "is_knows_still",
          say "He looks at your head, where a hat with a badge would be. He looks out of the door towards the white hut on the point. \"Twice,\" he says. \"On the back wall. Not loud. And wipe your feet, Peg's particular.\"" },
      } },
    { name = "the herring rods",
      description = "Poles laid across the beams, row over row up into the dark, each threaded with split herring hung by the gills. Silver at the door end, gold in the middle, deep brown at the back.",
      things = {
        { name = "a silver row", description = "This morning's. Still wet, still bright, still looking faintly surprised." },
        { name = "a gold row", description = "Two days in. The skin has gone the colour of a new violin, and the smell would bring a dead man to the table." },
        { name = "the top row", description = "Away up under the roof ridge, black, shrunk hard. Nobody remembers hanging them. They are left there now as a sort of foundation." },
      },
      actions = {
        { "Count them", say "Fewer than you would think. A few hundred. The rods at the back of the shed, in the dark, are hung with split herring made of painted wood. You look at Rab. Rab looks at the fire." },
      } },
    { name = "the fire trench",
      description = "A slot in the earth floor, the length of the shed, filled with oak chips that smoulder and never flame.",
      things = {
        { name = "the oak chips", description = "All of it is wreck. No trees grow on the Afterthoughts, so every chip in the trench was once part of a ship. Rab says he can taste which. The best kippers he ever made were smoked over a piece of the {i}Unsinkable{/}'s rudder that came in on the back strand. \"Rich,\" he says. \"A wee bit smug.\"" },
        { name = "the damping can", description = "A watering can of sea water. When a chip takes light he drowns it, without looking, the way you would brush off a fly." },
      } },
    { name = "the brine tubs",
      description = "Three half barrels of salt water strong enough to float a potato. There is a potato floating in each, to prove it.",
      things = {
        { name = "the potato", description = "It has been the test potato for six years. It is as hard as a stone and has a sort of rank." },
      } },
    { name = "the splitting table",
      description = "A slab of slate, grooved with knife cuts, and three girls standing at it with their sleeves rolled, opening herring down the back as fast as you could deal cards.",
      things = {
        { name = "the gutting girls", description = "Their fingers are bound in strips of rag against the salt. They sing, joke, split sixty fish a minute, and have decided among themselves what you look like and who it is funny that you look like.",
          actions = {
            { "Ask what is funny", say "They scream with laughing and will not say. One of them points at you with a herring. The other two have to hold on to the table." },
          } },
        { name = "a tub of guts", description = "For the lobster pots, and the gulls, and the garden. Nothing of a herring is wasted here but the look on its face." },
        { name = "a splitting knife", description = "Short, bright, with a handle bound in cord. You are not offered it." },
      } },
    { name = "the barrels",
      description = "Sixty, stacked three high along both walls, bunged and tarred and stencilled {b}KIPPERS, BEST{/}. The ones by the door smell of kipper. The ones farther in smell of nothing, and slop.",
      things = {
        barrel { name = "a barrel by the door", description = "Kippers. You can see them between the staves, packed head to tail like sentences." },
        barrel { name = "a barrel at the back",
          description = "Stencilled the same as the rest. When you rock it, it does not rattle. It says {i}glop{/}.",
          actions = {
            { "Knock on it", say "It answers low and full. A kipper has never made that sound. Rab clears his throat at you from the other end of the shed." },
            { "Hide in it", say "You would come out a different man, and singing." },
          } },
        { name = "the stencil", description = "A tin plate with the letters cut out, and a pot of lamp black. {b}KIPPERS, BEST{/}. There is a second plate hung behind it. It has a herring on it, and nothing else, and has seen far more use." },
      } },
    { name = "the back wall",
      description = "Tarred planks, like the others, with rods of the oldest, blackest herring hung across it from side to side like a curtain. It is the warmest wall in the shed. The fire is at the other end.",
      variants = {
        { when = flag "is_knows_still",
          description = "Tarred planks, with rods of black herring hung across like a curtain. Behind the fourth rod there is a plank with hinges, painted to look like a plank without. It is the warmest wall in the shed, and it is humming." },
      },
      actions = {
        { "Lay your hand on it", say "Warm as a loaf. Something on the other side is going {i}drip{/}, very slowly, into something else." },
      } },
    { name = "the soot",
      description = "Three hundred years of it, on every beam, hanging down in black icicles as long as your finger. It is never cleaned. The soot, Rab says, is half the recipe.",
      things = {
        { name = "a name written in the soot", description = "Low on a post, done with a finger: {i}WULL{/}. Under it, done by another finger, a rude word. Under that, forty years of fresh soot, through which both can still be read. Rab has never wiped it off. He has also never wiped off the rude word, which was his." },
      } },
    { name = "the smokehouse cats",
      description = "Seven, all the same shade of brown, though they were born all colours. They sit in a row along the splitting table with their eyes shut, breathing in.",
      actions = {
        { "Stroke one", say "Your hand comes away dark, and smelling of breakfast. The cat does not open its eyes. It is working." },
      } },
    { name = "a row of kippers in paper",
      description = "Tied in pairs with rush, wrapped in last year's almanac, ready for the ferry. These are the real ones. They go to Saltwick, and from there to the King's table, where they are served as {i}mainland{/}.",
      actions = {
        { "Smell them", say "Your mouth fills. Your eyes fill. You make a small noise that you had not planned. One of the gutting girls says, \"He's a goner,\" and they all nod." },
      } },
    { name = "the door",
      description = "Split, like a stable's. The top half is open and the smoke leans out of it on its elbows.",
      things = {
        { name = "the view from the door", description = "Straight along the shore to the point, and the white hut, and the flagstaff. From here you could see a man in a badged hat set out, and you would have a quarter of an hour." },
        { name = "a cord with a net cork on it", description = "It goes up from the door post, along the eaves and in at the top of the back wall. If you pulled it, something would jingle a long way off. It is within easy reach of the splitting table." },
      } },
  },

  exits = {
    { to = "is_landing", label = "The Landing", description = "Out into air that seems, after this, to have nothing in it." },
    { to = "is_still_room", label = "Behind the back wall",
      description = "Round behind the fourth rod of black herring, where a plank has hinges.",
      requires = flag "is_knows_still", hidden = true },
  },
}

space {
  id = "is_still_room",
  region = "afterthoughts",
  secret = true,
  name = "Herself",
  description = "The back third of the smokehouse, walled off and not on any plan. It is hot, bright with copper and sweet with the smell of malt. Here is the real industry of the Afterthoughts, the reason for the sixty barrels, and the reason a customs officer has sat on the point for nineteen years with nothing to tax. The still is called Herself. The room is called after her.",
  palette = { bg = "#120d06", text = "#dccfa8", dim = "#7c6a48", accent = "#f0b050", border = "#503c1c" },
  ambience = {
    steam { glyphs = "˙·∙°", color = "#8a7450", rate = 0.5 },
    flicker { color = "#ffb050", strength = 0.25 },
  },

  things = {
    { name = "Herself",
      icon = "δ",
      description = "A pot still of beaten copper, as tall as two men, shaped like an onion with a swan's neck. She was hammered out of the sheathing of a wrecked ship four hundred years ago and has been patched so often since that she is quilted. A peat fire burns under her. She ticks, and sighs, and now and then gives a low {i}bloop{/}, like somebody thinking.",
      things = {
        { name = "the swan neck", description = "It goes up, over, and down into the worm tub, in one long bend. A drop forms at the turn of it about once in a breath." },
        { name = "the patches", description = "Copper on copper, riveted. Each has a date punched in it and a set of initials. One of them is a king's penny, hammered flat. It was the nearest metal to hand at the time, and they thought it fitting." },
        { name = "the fire door", description = "Iron, with a herring cast on it. The peats behind it are tended day and night. She has not been cold since the first run." },
      },
      actions = {
        { "Lay your hand on her", say "Hot, and humming, and faintly alive. Peg slaps your wrist. \"She doesn't know you,\" she says." },
      } },
    { name = "Auntie Peg",
      icon = "☺",
      description = "Old Kirsty's younger sister, which makes her eighty-five. She sits on a creel in front of the still with a clay pipe and a wooden mallet, and has done every day since she was a girl. She is the stillman. The word has never been altered for her and she would not thank you for trying.",
      things = {
        { name = "her mallet", description = "For tapping the neck. She knows by the ring of the copper how far the run has gone, to the minute. She has never owned a clock or seen the need." },
        { name = "her nose", description = "Long, sharp, and red at the tip. It has not been wrong in seventy years. It is the most valuable thing on the islands and she blows it on her apron." },
      },
      actions = {
        { "Ask about the Customs", say "\"Wee Lamb? On the point?\" She laughs till she coughs. \"Poor soul. Nineteen year. He rows out and searches the boats, and the kippers are kippers. He's never once thought to wonder why a kipper would slop.\" She wipes her eye. \"We send him a bottle at the new year, with the label of a mainland shop. He writes a note to say thank you. It's a shame, really. He's a nice wee man.\"" },
        { "Ask for a taste", say "She draws a spoonful from the safe and holds it out. It goes down warm and comes back up as a sort of light behind the eyes. You taste peat, and honey, and salt, and the inside of a sea shell. \"That's the new,\" she says. \"Come back in twelve year and I'll give you the good.\"" },
        { "Ask about the First Drop", when = no(item "is_first_drop"), set "is_peg_agreed",
          say "\"Top of the safe. The wee green one.\" She does not turn her head. \"First that ever came off her. My great-great-great-grandmother put it by, for it took the tin off the spoon. It's been {i}not yet{/} for four hundred year and I've dusted it every day of seventy. If you want it, take it. It'll be {i}not yet{/} in your pocket as well as on my shelf.\" The pipe jabs at you. \"You'll not open it.\" That was not a question." },
      } },
    { name = "the spirit safe",
      description = "A box of brass and glass where the run comes out, so that it can be watched and tested. On the mainland a spirit safe is locked by the King's officer and the stillman never touches the spirit. This one has a hasp and no lock. A dried herring is pushed through the hasp instead.",
      things = {
        { name = "the trickle", description = "A thread of clear spirit, thin as a hair, falling into a glass bowl. It has been running, one way and another, since before the kingdom had a customs house." },
        { name = "a small green vial", key = "is_vial",
          visible_if = no(item "is_first_drop"),
          description = "On top of the safe, by itself, in a ring worn clean in the dust. Thick glass, black wax, a stamp of a herring. It is no longer than your thumb. Everything else in this room is busy. This is waiting.",
          actions = {
            { "Take the vial", when = flag "is_peg_agreed", give "is_first_drop",
              say "You lift it out of its ring. It is heavier than a spoonful has any right to be. Peg watches it go into your coat with no expression at all, and then goes over with her apron and wipes the ring away. \"There,\" she says. \"That's one less.\" You have the First Drop: four hundred years old, never opened, and now yours to go on not opening." },
            { "Take the vial", say "Your hand goes out. Peg's mallet comes down on the creel beside her, once, not hard. \"Folk ask, here,\" she says." },
          } },
        { name = "the hydrometer", description = "A glass float with a paper scale inside, for telling the strength. The scale stops at a mark labelled {i}ENOUGH{/}. The float is riding well above it." },
      } },
    { name = "the worm tub",
      description = "A great wooden vat of cold water with a copper pipe coiled down through it, where the vapour turns back into drink. Sea water is let in at the bottom through a pipe in the rock. On a big tide a crab sometimes comes with it and has an afternoon to remember.",
      things = {
        { name = "the worm", description = "Forty feet of copper tube in a spiral. It was drawn by hand, by a man who had been a ship's coppersmith and washed up here alive, and stayed, and thought that he had probably died and that this was the reward." },
        { name = "a crab in the tub", description = "Small, green, walking round the worm very carefully and sideways. More sideways than usual." },
      } },
    { name = "the casks",
      description = "Small ones, lying on their sides in a rack along the seaward wall, where the damp can get at them. Each has a name chalked on the end. They are not the names of whisky. They are the names of children.",
      things = {
        { name = "a cask marked ISA'S GIRL", description = "Nine years old, like its owner. Each child on Muckle has a cask laid down on the day it is born, and the cask is broached at its wedding. If a child is slow to marry, the wedding is uncommonly good." },
        { name = "a cask marked HECTOR", description = "Ninety-one years in the wood. He never married. Nobody will say what is in there now. It is thought to have gone past drink and out the other side. When he dies they will open it at the wake, and the island is partly dreading this." },
        { name = "a cask with no name", description = "New oak, pale, the chalk still to be put on. Bel is not showing yet. The cooper has been told all the same, as the cooper always is, first, before the husband." },
      },
      actions = {
        { "Count the casks", say "Forty-one. Forty names you could find the owners of, by walking round the island and asking. And the pale one." },
      } },
    { name = "the angels' share",
      wonder = true,
      icon = "°",
      description = "Every cask loses a little through the wood each year. On the mainland it goes off into the air, and the distillers call it the angels' share and write it off. Here it has nowhere to go. {magic}It has gathered up under the roof, over four hundred years, into a small golden cloud the size of a hay cart.{/} The cloud drifts from rafter to rafter with the draughts. The lamplight goes into it and comes out warmer. Once a year, at no fixed time, it rains: one drop. Whoever it falls on is let off the rota for a twelvemonth, and is said to sleep well.",
      actions = {
        { "Stand under it", say "You stand, with your face turned up, for as long as you decently can. It does not rain. It does drift over and hang above you for a while, the way a cat comes and sits near you without sitting on you. You smell honey. Peg says you are favoured, and to come out of there before you are more so." },
      } },
    { name = "the malt floor",
      description = "A square of flagstones spread ankle deep with barley, damp, just beginning to sprout. It is turned by hand with a wooden shovel, four times a day.",
      things = {
        { name = "the barley", description = "It comes over on the ferry in sacks marked {i}HEN FEED{/}. The islands keep, by this reckoning, some eleven thousand hens." },
        { name = "the malt shovel", description = "Beech, with a blade worn to the shape of a slice of bread. Turning the malt is a boy's first job and an old man's last. The handle is worn to fit both." },
      } },
    { name = "the lookout",
      description = "A knot hole in the seaward planks at eye height, plugged with a cork on a string. Through it you can see straight along the shore to the customs hut.",
      actions = {
        { "Look through", say "A small man in a blue coat is sitting on the step of the hut, in the sun, polishing a badge. He holds it up to see it shine. He looks very happy. You put the cork back in, feeling a little like a thief." },
      } },
    { name = "the alarm",
      description = "A string of limpet shells and old spoons hung across the corner. A cord from the smokehouse door runs to it. When it jingles, Peg has a quarter of an hour.",
      things = {
        { name = "the drill, on a slate", description = "{i}1. Fire door shut. 2. Herring down in front. 3. Safe under the creel. 4. Sit on the creel. 5. Be an old woman knitting.{/} It has been carried out in earnest twice in nineteen years. Both times he only wanted to borrow a ladder." },
        { name = "the knitting", description = "A grey sock, four inches long, on four needles. It has been four inches long for nineteen years. It is a working sock." },
      } },
    { name = "the ledger",
      description = "A proper bound book, kept in a neat hand, in a biscuit tin. It records every gallon made and what the duty on it would come to if anyone paid it.",
      things = {
        { name = "the last page", description = "A running total, in four hundred years of different inks. The figure owed to the Crown would buy the Crown. Under it, each stillman in turn has written the same two words: {i}carried forward{/}." },
      },
      actions = {
        { "Ask why they keep it", say "\"Because we're honest,\" says Peg, shocked. \"We know to the penny what we owe. One day there'll be a king with the face to come and ask for it himself, and he'll get it, and a dram.\" She puffs. \"The last one that tried sent a letter.\"" },
      } },
    { name = "bottles, waiting",
      description = "Square, green, unlabelled, in straw. Beside them a stack of printed labels from a Saltwick wine merchant, very genteel, and a pot of paste. The merchant has never heard of the islands. His labels are admired here." },
    { name = "the peat stack",
      description = "Indoors, dry, built to the roof. It is the best peat on Muckle, cut from the bank behind the chapel. The minister knows. He has prayed about it and been told, he says, to mind his own." },
  },

  exits = {
    { to = "is_smokehouse", label = "Back through the herring",
      description = "Past the hinged plank, into the brown dark and the smell of kippers, which now seems thin." },
  },
}
