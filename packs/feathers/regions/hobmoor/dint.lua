space {
  id = "the_dint",
  region = "hobmoor",
  wonder = true,
  name = "The Dint",
  description = "A hole in the moor a hundred paces across, with the turf thrown back from it in a ring and the heather burned black for a furlong round. It was a turnip field. At the bottom, in a bed of glass that used to be soil, is the star.",
  palette = { bg = "#110d0a", text = "#d4c8b8", dim = "#74685a", accent = "#e88848", border = "#503424" },
  ambience = {
    embers { glyphs = "∙·˙", color = "#e87838", rate = 0.3 },
    steam { glyphs = "˙°∙", color = "#6a6058", rate = 0.4 },
  },

  things = {
    { name = "the star",
      key = "star",
      wonder = true,
      icon = "✦",
      description = "Smaller than you would think. A black lump the size of a cow, pitted and glossy, {glow}still faintly red in the cracks{/} after eleven days. Rain hisses on it. There is a sound coming off it that you feel in your back teeth: one low note, held.",
      variants = {
        { when = flag "hm_star_heard",
          description = "A black lump the size of a cow, pitted and glossy, {glow}still faintly red in the cracks{/}, holding its one low note. On the side where you put your ear there is a crack as wide as a door. You had taken it for a shadow. There is a draught at it, and the draught is going in." },
      },
      things = {
        { name = "the cracks", description = "A net of them over the whole crust, each with a dull red at the bottom, as in a loaf just out. They tick as they cool. They have been ticking for eleven days and the red is no dimmer." },
        { name = "the pits", description = "Thumb-sized hollows all over the leading face, smooth, as if it had been pressed while soft by a great many fingers. Air did that, somebody says. It was going fast enough for the air to count as a solid." },
        { name = "the note",
          description = "One pitch, lower than a man can sing. You do not hear it so much as stand in it. The glass under your boots is humming the same note a little flat, and so, you notice, is the tin for pennies.",
          actions = {
            { "Hum along", say "You find the note, or one you can reach that is related to it. For a second the two fit. Every chip of iron on the crater floor rings at once, like a dropped drawer of spoons, and Jem Holloway looks at his tin." },
          } },
        { name = "the heat", description = "You can feel it on your face from ten paces, like a stove in the next room. Somebody has set a kettle on a flat place near the top. It has been boiling for a week and a half and nobody is brave enough to fetch it down." },
        { name = "the chips",
          description = "Flakes and splinters of the crust, black, scattered over the glass all round. Every one is warm.",
          actions = {
            { "Take a splinter", once = true, give "star_splinter",
              say "You pick one the size of a thumb. It is heavier than it should be, warm, and when you close your hand on it the note goes up your arm. {gold}A splinter of the star.{/} Jem Holloway, up on the rim, shouts that that'll be tuppence. You pretend the wind took it." },
          } },
      },
      actions = {
        { "Put your ear to it", when = no(flag "hm_star_heard"), set "hm_star_heard", fx "shake",
          say "Warm iron against your ear, and the note, very loud. And under the note, wind. A rushing. You pull back and look, and where your ear was the crust has a crack in it as wide as a door, going in. You had taken it for a shadow. There is a draught coming out of it. It is blowing the wrong way, in." },
        { "Walk round it", say "Thirty paces. On the far side the crust is smooth and the glass is piled up against it in a frozen wave. That was the front. It came in at a slant, pushed a field ahead of it, and stopped just here. You find that you are glad not to have been a turnip." },
      } },

    { name = "Jem Holloway",
      key = "jem",
      icon = "☺",
      description = "The farmer, on a stool on the rim, with a tin for pennies and a sign. He lost a field of turnips and got a star, and he has not yet decided which way he came out, so he is charging while he thinks.",
      things = {
        { name = "the tin for pennies", description = "A tea caddy with a slot cut in the lid. He shakes it now and then. It has the sound of a good week." },
        { name = "his stool", description = "Three legs, from the milking shed. He has sat on it since the night of the fall, in a hat, in all weathers. His wife brings his dinner out. She is charged a penny, he says, on principle, and gets it back indoors." },
        { name = "his hat", description = "Singed on one side of the brim. He was out with a lantern, seeing to a ewe, when it came over. He will tell you about it. It is included." },
      },
      actions = {
        { "Ask the price", say "\"Penny to look. Tuppence to look close. Thruppence to say you touched it.\" You point out that you are already looking. \"That one's on the house,\" he says. \"I'm not a monster.\"" },
        { "Ask about the night it fell", say "\"Green. Whole sky. No noise at all till after, and then every noise there is. I was sat down by it, forty yards, in the leeks. When I got up there was no field.\" He turns the tin round in his hands. \"Forty year I've grown turnips there. My dad before. You don't expect it of a field.\"" },
        { "Ask what he will do with it", say "\"Collegium offered me nine pound. Smith at Underrib offered eleven, for the iron. A man in a tall hat offered forty, and wouldn't say what for, so I said no.\" He looks down at it. \"I thought I might keep it. It's company. It hums.\"" },
      } },

    { name = "the sign",
      description = "{b}HOLLOWAY'S STAR. FELL HERE. NO REFUNDS.{/} Underneath, smaller, added later: {i}also turnips (cooked){/}.",
      things = {
        { name = "the back of the sign", description = "{b}TURNIPS. PENNY A BUNCH.{/} He turned the board round. The post is the same post." },
      } },

    { name = "the glass",
      key = "glass",
      description = "The soil melted and set. It is green, bubbled, and has turnips in it, whole, each in its own pocket, done to a turn.",
      things = {
        { name = "a turnip near the surface",
          key = "loose turnip",
          visible_if = no(item "glass_turnip"),
          description = "In a knob of glass that stands proud of the rest, cracked nearly through at the neck. The turnip inside has its leaves on. There is a wisp of steam above it, caught.",
          actions = {
            { "Prise it out", once = true, give "glass_turnip",
              say "You lean on the knob and it comes away in your hands, glass, turnip and all, as heavy as a full jug and still warm. From the rim comes a cry of real pain. \"Not that one! That's the big one! I was saving that one!\" You hold it up. The sun goes through it and lays a green turnip of light across the whole crater. Jem Holloway takes his hat off. \"Go on, then,\" he says, hoarse. \"It's gone to you. Look after him.\" You have {gold}the Turnip of Holloway{/}." },
          } },
        { name = "the socket", visible_if = item "glass_turnip",
          description = "A clean hollow in the glass, the shape of a knob with a turnip in it. Jem Holloway has put a pebble in it so that he will not have to look at it empty." },
        { name = "a row of turnips, deeper down", description = "You can see the drill, running straight under your feet, each root sealed where it grew. He sowed them in spring, a foot apart, with a line. They are the neatest thing in the crater." },
        { name = "a worm", description = "In the glass, by itself, perfectly preserved in the act of turning round. It had perhaps a hundredth of a second, and it used it." },
        { name = "a turnip fly", description = "Sealed in mid air above a leaf, wings out. It is the only one of its kind that Jem Holloway has ever looked at kindly." },
      },
      actions = {
        { "Walk on it", say "It rings under your boots and squeaks when you turn. Here and there it is thin, and you can hear that it is thin. You walk as people do on a pond in the first week of frost." },
      } },

    { name = "the Collegium's field party",
      description = "Two gentlemen scholars in gowns, under an awning, at a safe distance. They were sent to study the star. They have established that it is hot and are waiting for a servant to come and establish anything further.",
      things = {
        { name = "the awning", description = "Striped, with the Collegium's arms on the valance: a wand crossed with a silver spoon. It was put up by the carter, who then went home." },
        { name = "the taller scholar",
          description = "The Honourable Somebody, with a wand in a case and a notebook on his knee. The notebook has a heading, underlined twice: {i}Observations.{/} There is a drawing of a horse under it.",
          actions = {
            { "Ask what they have learned", say "\"It is a star,\" he says. \"We are confident of that. It fell.\" He consults the notebook. \"Bodmin is of the opinion that it is made of star.\" The other scholar nods gravely." },
          } },
        { name = "the shorter scholar",
          description = "Asleep in a folding chair, with his mouth open, holding a thermometer. The thermometer says it is a mild day, since it has not left his hand.",
        },
        { name = "a hamper", description = "Cold fowl, a pie, two bottles. This part of the expedition has been carried out with great thoroughness. Only the bones remain to be written up." },
        { name = "a crate of instruments", description = "Nailed shut, as it left the Collegium. On the lid, in chalk: {i}SERVANT TO OPEN.{/} The servant was needed at home to pass an examination for somebody." },
      } },

    { name = "the rim",
      description = "Peat and heather heaved up in a wave ten feet high, all round. On the outside of it the sheep have already started grazing, as if it had always been there.",
      things = {
        { name = "the thrown turf", description = "Whole sods, landed grass side up a furlong off, and gone on growing. One has a daisy on it. The daisy travelled further that night than anyone in the parish has in their lives." },
        { name = "a scarecrow, flung",
          description = "On the rim, on its back, arms out, hat still on. It stood in the middle of the field. It is the only witness who saw the whole thing from the front, and it has straw for a head and has said nothing sensible since.",
          actions = {
            { "Stand it up", say "You prop it on its pole, facing the star. It falls over, backwards, at once. You try again. It has made up its mind about that direction." },
          } },
        { name = "a path down", description = "Trodden by eleven days of visitors, with steps cut in the peat and a rope for the steep part. The rope was thruppence extra until his wife had a word." },
      } },

    { name = "the burned ground",
      description = "A furlong of black heather stalks round the rim. In among them, already, the green tips of something coming up.",
      things = {
        { name = "the new shoots", description = "Not heather. Broad leaves, in a rosette, a hand high after eleven days. You crouch. You know that leaf. It is turnip. Every seed that was blown out of the field has taken, in a ring a quarter of a mile across." },
      } },

    { name = "the visitors",
      description = "A dozen or so on the rim at any hour, come up from Greenhollow and Aldmoor and further, in their good clothes. They look for some time. Then they say that it is smaller than they expected, and go and buy a turnip.",
      things = {
        { name = "a small boy", description = "He has thrown eleven stones at the star and hit it with nine. Each one goes {i}tink{/} and bounces off glowing. He is the only person here conducting any research." },
        { name = "an old woman with a basket", description = "She has walked up from Greenhollow to see whether it was the same one. As what? \"As the one my mother saw.\" She studies it. \"No,\" she says. \"Hers was bigger.\" She seems relieved." },
        { name = "a pedlar", description = "Selling bits of ordinary clinker from a tray as Genuine Star, a penny each. Six feet from him the ground is covered in the real thing, free. He is doing well. People like it to come with a tray." },
      } },

    { name = "the rain on the star",
      description = "A light rain has come over. Every drop that lands on the crust goes up in a thread of steam with a small hiss, so that the star stands in the crater under its own little cloud, sizzling quietly, like breakfast." },

    { name = "a ewe in the crater",
      description = "One of Nan Tegg's, with a torn ear. She has come down the path by herself and is lying on the warm glass beside the star with her legs folded, chewing. The other sheep will not come over the rim. This one has decided it is a hearth." },

    { name = "the smoke",
      description = "One thin thread going straight up from somewhere under the star, where the peat is still smouldering, eleven days on. You can see it from the Aldmoor wall. It is how most people find the way." },

    { name = "a pie stall",
      description = "A plank on two barrels at the top of the path, kept by Jem Holloway's sister. A star has fallen and people have come to see it, and people who have come to see a thing can be sold a pie.",
      things = {
        { name = "the pies", description = "Turnip. Jem lost the crop but not, it turns out, the clamp from last year. Each has a star cut in the lid, five points, wonky. She calls them Heaven's Own. They are tuppence and taste of turnip." },
        { name = "Dorcas Holloway", description = "Arms like a wrestler, flour to the elbow. She thinks the star is the best thing that ever happened to the family and the worst that ever happened to her brother, who has started wearing a hat indoors." },
        { name = "the money tin", description = "Half full already. She shakes it at intervals, for the sound, in the direction of Jem." },
      },
      actions = {
        { "Buy a pie", say "You show her your copper. \"That's your gate copper.\" How does everybody know? \"It's bent.\" She gives you a broken one for nothing. It is hot and peppery and the star on the lid has only four points." },
      } },

    { name = "the thrown turf",
      description = "The ring of sods flung back from the hole when the star struck: a bank as high as your chest, grass side down, already rooting.",
      things = {
        { name = "a whole turnip row", description = "Lifted in one piece, forty turnips in a line with their soil, and set down upside down thirty paces off. The roots point at the sky. They have begun, cautiously, to put out leaves in the wrong direction." },
        { name = "a scarecrow, flat", description = "On its back under the bank, arms out, hat gone. It was the only one looking the right way when the star came and has had a shock." },
        { name = "a mole", description = "Sitting on top of the bank in broad daylight, which moles do not do. It was three feet under the turnips, and then it was not. It has been up here eleven days, thinking." },
      } },

    { name = "the hum in the ground",
      description = "You feel it before you hear it: a note in the soles of your feet, all round the rim. The glass carries it. So do the pie tins, which is how Dorcas knows when somebody has touched the star without paying.",
      actions = {
        { "Lie down and listen", say "You put your ear to the scorched turf. One note, very low, with no breath taken in it. Under the note, slower, something else: a tick, a long gap, a tick. You count forty between them. When you get up there is a ewe beside you with her ear down too." },
      } },
  },

  exits = {
    { to = "moor_road", description = "Up the path, past the tin, and back along the scorch to the stones." },
    { to = "inside_star", label = "The crack in the star",
      description = "Sideways through a split in hot black iron, into a lump of rock the size of a cow, where there cannot be room.",
      requires = flag "hm_star_heard", hidden = true },
  },
}

space {
  id = "inside_star",
  region = "hobmoor",
  secret = true,
  wonder = true,
  name = "Inside the Star",
  description = "You are inside a lump of iron the size of a cow, and there is room. There is more than room. The walls are close enough to touch and they are going past. There is wind in your face. The star came down eleven days ago and stopped, on the outside. {magic}In here it has not landed yet.{/}",
  palette = { bg = "#07080e", text = "#c8ccd8", dim = "#565c74", accent = "#e88848", border = "#2a2c44" },
  ambience = {
    stars { color = "#a8b0d8", rate = 0.6, speed = 1.5 },
    embers { glyphs = "∙·", color = "#e87838", rate = 0.2 },
  },

  things = {
    { name = "the falling",
      key = "falling",
      wonder = true,
      icon = "↓",
      description = "You are standing still. Your stomach says otherwise. It is the feeling at the top of a swing, held, with a wind that comes from below and smells of cold and of nothing at all. {wave}It has been falling for a very long time and has got good at it.{/}",
      things = {
        { name = "your stomach", description = "Somewhere above you. It will be along." },
        { name = "your hair", description = "Standing straight up. So is your coat, your pack strap, and the lace of your left boot, which is pointing at the sky like a compass needle." },
        { name = "how long it has been", description = "You try to feel it. Not eleven days. The star in here has no eleven days. It has one long moment with wind in it, and you have walked into the middle." },
      },
      actions = {
        { "Drop a pebble", when = no(item "unlanded_pebble"), set "hm_pebble_dropped",
          say "You find one in your pocket, off the moor, and let go of it. It stays level with your hand. It is falling as fast as you are. It turns over once, slowly, and hangs there, a grey pebble of no distinction, doing something no pebble on the ground will ever do again." },
        { "Jump", say "You go up. You do not come down. You and the floor remain on good terms at a distance of about a foot, both travelling. You have to climb down the wall with your hands." },
      } },

    { name = "the pebble in the air",
      key = "hanging pebble",
      visible_if = all { flag "hm_pebble_dropped", no(item "unlanded_pebble") },
      description = "At the height of your hand, where you let it go. It is not floating. It is falling, properly, with its whole weight, and so is everything round it, and so nothing changes.",
      actions = {
        { "Take it back", once = true, give "unlanded_pebble",
          say "You close your hand on it and feel that you have been rude to it. It was getting on so well. When you open your fingers it lies in your palm at a slant, leaning, pulling very gently towards where it was going. It has the habit now and will not lose it. {gold}The Pebble That Has Not Landed{/} goes in your pocket, and tries, all the way out, to go somewhere else." },
      } },

    { name = "the walls",
      description = "Black iron, streaming upward. If you look at one spot it is still. If you look away it is going past again.",
      things = {
        { name = "a spot on the wall", description = "You fix on a pit the size of a coin and hold your eyes on it. It stays. Round the edge of what you can see, everything else pours up and away. The moment you blink the pit is gone with the rest, and there is another, exactly like it, arriving." },
        { name = "the glow in the wall", description = "A dull red, deep in the iron, brighter towards the front. The outside has had eleven days to cool. In here it is still coming through air, and the air is still rubbing." },
      },
      actions = {
        { "Touch the wall", say "Hot, and smooth, and sliding under your palm like a rope being paid out. You take your hand away and look at it. No burn. It was only going past." },
      } },

    { name = "the wind",
      description = "From below, steady, strong enough to lean on. It has no smell of heather or peat or rain. It is air from higher than weather.",
      things = {
        { name = "the whistle", description = "In here you can hear what the star's note is: the sound a thing makes going through air very fast. Outside, nothing has gone past it for eleven days. It is whistling still. It has not noticed." },
      },
      actions = {
        { "Lean on it", say "You tip forward onto the wind with your arms out, and it takes you, all of you, and holds. You are falling flat, face down, from a great height, at ease. You have never been so comfortable. It is a pity about the circumstances." },
      } },

    { name = "a light ahead",
      key = "light ahead",
      description = "Down, which is to say the way you are falling, there is a small bright round of green and brown, getting no nearer. It is the moor. You can see the field. It still has turnips in it.",
      things = {
        { name = "the turnip field", description = "The size of a thumbnail, at the bottom of everything. Green rows, drawn with a line. At one end, a dot of yellow that might be a lantern." },
        { name = "the dot of lantern", description = "A man, out late, seeing to a ewe. He has not looked up yet. In here he never does. He is always just about to." },
        { name = "the line of stones", description = "A row of grey specks across the brown, each with its small shadow. From up here you can see every one of them leaning, all the same way, like a row of people watching you come down." },
        { name = "the mountains", description = "White, off to one side, catching a light that is not the sun's. Green. That is you. You are the thing lighting up the Grumbles." },
      },
      actions = {
        { "Shout a warning", say "\"MIND THE TURNIPS!\" The wind takes it upward, behind you, the wrong way. It will arrive, if it arrives, a long time after you do. You think of the Gorge, in the mountains, and what it will make of that." },
      } },

    { name = "where it came from",
      key = "above",
      description = "Up, there is black, and a ring of stars with a place in the middle where there are none. It is getting no further away either.",
      things = {
        { name = "the ring of stars", description = "Thick, bright, crowded up to an edge like people at the edge of a pond. You count along the edge. There is one gap, the width of one star, and the gap is exactly overhead." },
        { name = "the place with none", description = "You look into it for as long as you can. It is not like looking at night sky. Night sky is far. This is not far or near. Your eyes keep trying to settle on something in it and sliding off, and after a while they water, and you look down at the turnips, which are a comfort." },
      } },

    { name = "the floor",
      description = "There is one, in the sense that your boots are against something. It is the back of the front of the star. You can feel through your soles that it is pushing a great deal of air out of the way and not enjoying it.",
    },

    { name = "the crack, from inside",
      description = "A slot of ordinary daylight, grey and still, hanging in the wall beside you. Through it: glass, a wet ewe, a man on a stool with a tin. None of it is moving. Out there the star has landed. The crack is where the two opinions meet.",
      actions = {
        { "Put one arm out", say "Your arm stops falling at the elbow. The rest of you does not. For a moment you are two things at once and you know which half you prefer, and it is not the half you expected." },
      } },

    { name = "a moth",
      description = "Brown, ordinary, off the moor. It came in through the crack after the warmth and is now flying as hard as it can, upward, and staying exactly where it is. It does not seem troubled. A moth round a lantern has much the same afternoon." },

    { name = "a turnip leaf",
      description = "One, green, torn at the stalk, hanging in the air at about the level of your knee. It has not come in from outside. It is from the field below, the one that is still there, and it has got here before the star has. You look at it for some time and decide not to think about it in here.",
      actions = {
        { "Catch it", say "It goes through your fingers. Not like smoke. Like something that has not happened yet." },
      } },

    { name = "the silence under the noise",
      description = "Wind, whistle, the tick of hot iron. And under it, once your ears have given up on those, nothing. No echo, no room. The noise is all there is, and behind it the quiet is a long way across.",
      actions = {
        { "Listen", say "You listen until the wind is only a pressure. There is nothing behind it at all. And you understand, without anyone saying so, that the star is not afraid of landing. It has been somewhere much quieter than a field." },
      } },

    { name = "your coat tails",
      description = "Standing straight up behind your ears. Everything loose on you is: your hair, your bootlaces, the gate copper on its string. None of them know which way down has gone.",
      actions = {
        { "Let go of the copper", say "It floats up to eye level, turning, and you see both sides of it for the first time at once. Bent on the one. A crowned head on the other, very worn, facing the way you are falling. You catch it and put it deep in a pocket and button the pocket." },
      } },

    { name = "frost on the iron",
      description = "A white fur of it on the walls, growing in ferns the wrong way: against the wind, toward where you are going. It melts on your thumb and is cold in a way that makes you think of heights.",
      things = {
        { name = "a thumbprint", description = "Yours, a black oval in the white. As you watch, it frosts over again from the edges in, in about the time it takes to say your own name." },
        { name = "letters in the frost", description = "Lower down, somebody has written with a finger: {i}J. HOLLOWAY 1d{/}. He has been in. He has charged himself." },
      } },

    { name = "the sound of the moor, behind you",
      description = "Very faint, through the crack: a curlew, a pie tin, somebody saying \"mind your head\". It is going on without you at exactly the pace it always did. You had not known that this was a comfort." },
  },

  exits = {
    { to = "the_dint", label = "The crack",
      say "You step out onto glass, and your knees take a moment to believe it.",
      description = "Sideways, back into a wet afternoon where everything has already happened." },
  },
}
