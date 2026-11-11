-- Castle Regret: the gate, the hall, and the dining room laid for one.

space {
  id = "gl_castle_gate",
  region = "glowers",
  wonder = true,
  name = "The Gate of Castle Regret",
  description = "The lane ends on a shelf of rock under the sky. Above you the castle goes up and up: black towers, thin as fingers, joined by bridges no wider than a plank, with roofs like folded wings and a hundred windows, all dark but one. It was built to appal, by a family that took appalling seriously, and it does. It has also been dusted. The gargoyles have been washed. There is a boot scraper.",
  palette = { bg = "#0d0a10", text = "#d0c6d2", dim = "#685c70", accent = "#c05868", border = "#40304a" },
  ambience = {
    stars { glyphs = "·˙", color = "#5a5068", rate = 0.2 },
    fog { color = "#1a1420", speed = 0.2, strength = 0.35 },
  },

  things = {
    { name = "the towers",
      description = "Nine, of different heights, none of them straight. They lean in towards each other at the top like a ring of tall people looking down at something small. It is you.",
      things = {
        { name = "the highest tower", description = "It ends in a cone of slates and an iron finial shaped like a bat. Smoke, or something like smoke, comes and goes round it in gusts. As the light fades you see that the gusts have wings." },
        { name = "the bridges", description = "Stone, without rails, from tower to tower at dreadful heights. On one of them hangs a line of washing: shirts, white, with tall collars, pegged out by the shoulders and blowing." },
        { name = "the lit window", description = "Near now. Tall, pointed, with small leaded panes, and yellow. You can see the edge of a tablecloth and a silver thing that might be a candlestick. Nothing moves. Then a shadow passes, pauses to set something straight, and goes on." },
      } },

    { name = "the gatehouse",
      description = "Two drum towers and an arch with a portcullis. The portcullis is up. It has been wedged up, with a wedge, and the wedge is painted white so that nobody will trip on it.",
      things = {
        { name = "the portcullis", description = "Iron teeth as long as your arm, hanging over your head. Each point has a cork on it." },
        { name = "the murder holes", description = "In the roof of the arch, for pouring things on visitors. There is a hanging basket in each one. Ferns, mostly, which like the dark." },
        { name = "the great doors", description = "Black oak, twenty feet high, studded with iron in the shape of a family tree. It has a great many branches near the bottom and one at the top." },
      } },

    { name = "the knocker",
      description = "Bronze, the size of a ham: a snarling wolf's head with a ring in its jaws. Tied to the ring with a ribbon is a card. {i}Please knock firmly. The household is small and may be at the back.{/}",
      actions = {
        { "Knock", when = no(flag "gl_knocked"), set "gl_knocked", fx "shake",
          say "You lift the ring and let it fall. The boom goes into the castle and wanders about in it for some time. Then: footsteps. A great many bolts. One leaf of the door swings in without a sound, because it has been oiled, and a man in a tailcoat looks at you and then past you, down the lane, for the rest of the mob. \"Just the one, sir?\" He seems faintly let down. \"His Lordship will be so pleased. Do come in. You will stay to dinner. That was not a question, sir, I am afraid it never is.\"" },
        { "Knock again", when = flag "gl_knocked",
          say "The door opens before the ring lands. \"Sir is expected,\" says the butler. \"Sir has been expected since a quarter past the year twelve hundred and six.\"" },
      } },

    { name = "the gargoyles",
      description = "A row along the parapet, crouched, winged, gaping, each one worse than the last.",
      things = {
        { name = "the nearest gargoyle", description = "A thing with a pig's snout and a bishop's hat, tongue out. It has a name plate: {i}Great-Uncle Tancred, from life.{/} Somebody has recently scrubbed behind its ears." },
        { name = "a gargoyle with a gutter", description = "This one is working. Rain comes out of its mouth and falls forty feet into a water butt, which has a lid, a tap, and a label reading {i}for the roses{/}." },
        { name = "a nest", description = "In the lap of the worst gargoyle of all, a jackdaw has built. The gargoyle's stone claws have been packed round with straw by somebody with long thin fingers and a ladder." },
      } },

    { name = "the roses",
      description = "A bed on either side of the gate, in the lee of the wall. White ones only, and every bloom is perfect. They are tended by night and it shows: they open at dusk and all face the moon.",
      things = {
        { name = "a label on a stick", description = "{i}Alba 'Clémence'. Do not prune before the equinox. R.{/} The hand is the one on the invitations." },
        { name = "a pair of gardening gloves", description = "Left on the wall. Grey kid, very long in the finger, darned at each tip." },
      },
      actions = {
        { "Smell one", say "Faint, cold, clean, like linen brought in from frost. It is not a scent that roses have by day. A petal comes away on your sleeve and you feel, absurdly, that you ought to hand it back." },
      } },

    { name = "the boot scraper",
      description = "Wrought iron, by the door, in the form of two small demons holding a bar. The bar is worn in the middle to a thread. In six hundred years only a handful have come up the hill, but the master of the house has scraped his boots on it every night, coming in from the road." },

    { name = "the moat",
      description = "Dry, and laid out as a sunk garden. Or it would be a sunk garden by day. Now it is a pit of shadow with pale things moving in it.",
      things = {
        { name = "the pale things", description = "Moths. Thousands, the size of your hand, drifting over beds of night-flowering stock. Where the old families kept pike, this one keeps moths." },
        { name = "the drawbridge", description = "Down, and it has been down so long that grass grows in the chains. A plank has been replaced. The new one is numbered in pencil underneath, so the butler told you, in case it should need doing again in a century or so." },
      } },

    { name = "a row of stakes",
      description = "Leaning against the wall by the door, in an umbrella stand: wooden stakes, some thirty, of various makes. Each has a luggage label.",
      things = {
        { name = "a label", description = "{i}Left by Mr Aubrey Stoat, hunter of the undead, who was taken poorly on the stairs. To be called for.{/} The date is ninety years ago." },
        { name = "another label", description = "{i}Left by a gentleman who would not give a name, upon learning there was pudding.{/}" },
      } },

    { name = "the view back",
      description = "The whole of the Glowers under you, six brows in a line, and at their foot a scatter of tiny roofs with no lights showing. They are showing no lights very hard. Beyond, the moor, and a thread of smoke where the star lies, and beyond that a paleness you take for the sea.",
      actions = {
        { "Wave at the village", say "Nothing. Then, from one shutter, the smallest possible flash: a spyglass, catching the last of the day. You have been entered on somebody's slate." },
      } },

    { name = "a wolf",
      icon = "w",
      description = "Grey, enormous, lying across the top step with its chin on its paws. Its eyes are yellow and it does not blink. It has a collar, and on the collar a brass disc.",
      things = {
        { name = "the brass disc", description = "{i}FENRIS. If found, please return. He is perfectly gentle and will be anxious.{/}" },
      },
      actions = {
        { "Step over it", say "You lift one leg across. A growl starts, somewhere under the stone, low enough to feel in your teeth. You stop. The growl goes on, and then you see the tail. You have been standing on it." },
        { "Offer your hand", say "It sniffs. It considers the garlic about you with a connoisseur's distaste. Then it leans its whole head into your palm, heavily, with a sigh, like a dog that is hardly ever visited." },
      } },
  },

  exits = {
    { to = "gl_village", description = "Down the eleven turns, to the shutters and the questions." },
    { to = "gl_hall", description = "Through the great doors, which the butler is holding with the patience of a man holding a door for the first time this century.",
      requires = flag "gl_knocked", locked = "the doors are shut, and there is a knocker" },
  },
}

space {
  id = "gl_hall",
  region = "glowers",
  name = "The Great Hall of Regret",
  description = "A hall you could lose a church in. Black pillars go up into the dark, and the dark is hung with banners that stir when nothing else does. A staircase divides and divides again. Suits of armour line the walls with their visors down. It is all exactly as bad as you were told, and there is a fire lit, a stand for your coat, and a small table with a bell and a visitors' book.",
  ambience = {
    flicker { color = "#c06050", strength = 0.12 },
    dust { glyphs = "·˙", color = "#4c4050", rate = 0.15, speed = 0.15 },
  },

  things = {
    { name = "the butler",
      key = "gl_grist",
      icon = "☺",
      description = "Grist. Tall, grey, stooped, in a tailcoat older than the kingdom's coinage. He is alive, he would like that understood, and has been in service here for fifty-one years, as was his father, and his. The Grists do not get bitten. It is in the terms.",
      things = {
        { name = "his gloves", description = "White, spotless. He changes them at every door. There is a small basket for the used ones beside each." },
        { name = "his face", description = "Long and mournful by nature and held that way by an effort. He is enjoying himself more than he has in years. A guest. He has got out the good candles." },
        { name = "a silver tray", description = "Carried flat on five fingers, with nothing on it. He says it is to keep his hand in." },
      },
      actions = {
        { "Ask if you are in danger", say "\"Grave danger, sir.\" He takes your coat. \"His Lordship has been saving conversation since the last visitor, who was a tax assessor in the old Queen's time. There is rather a lot of it. I would advise sir to nod, and on no account to ask about drainage.\"" },
        { "Ask what the Count is like", say "\"A monster, sir. He rises at dusk. He reads the newspaper, which is a fortnight old. He mends things. He walks down to see to the road. He comes back, he changes for dinner, he sits down at a table laid for a guest, and at midnight I clear the other place.\" Grist straightens a candle. \"Six hundred years of that would turn anyone into something, sir. In his Lordship's case it turned him into a man who notices when one is tired.\"" },
        { "Ask where you may go", say "\"Anywhere, sir. The dining room is through the double doors, and his Lordship is in it. The library and the gallery are up the stair. The crypt is down, and one is asked to wipe one's feet. The west tower belongs to the bats. If sir should find a door that is not there, sir is welcome to that as well. His Lordship says that secrets want airing.\"" },
      } },

    { name = "the staircase",
      description = "Black marble, wide enough for six abreast, splitting at a landing under a window of red glass.",
      things = {
        { name = "the red window", description = "A rose of crimson glass thirty feet across. By day it must throw the whole hall into blood. Nobody in this house has seen it by day. Grist says the effect at full moon is a sort of pink, and that his Lordship finds it cheerful." },
        { name = "the banister", description = "Carved as a serpent, tail at the bottom, head at the top with its mouth open. The head is worn smooth and pale. Somebody slides down this banister. You look at Grist. Grist looks at the ceiling." },
        { name = "the thirteenth step", description = "It creaks, on a marble staircase, which should not be possible. Grist explains that it was installed. A staircase like this ought to have one. A man came from Aldmoor." },
      } },

    { name = "the suits of armour",
      description = "Forty, black, spiked, in two ranks. Every visor is down and every gauntlet is on the pommel of a sword.",
      things = {
        { name = "the nearest suit", description = "The helm has horns. The breastplate has a face on it, screaming. A small card is tucked in the gorget: {i}Count Ulrich the Flayer. Did not, in fact. Was a keen beekeeper.{/}" },
        { name = "a suit with its visor up", description = "One, at the end. Inside the helm, comfortably, a hen is sitting. Grist says she will not lay anywhere else and that his Lordship will not hear of her being moved." },
        { name = "a very small suit", description = "Child-sized, with a tin sword. The card says: {i}Mine. I was seven. R.{/}" },
      },
      actions = {
        { "Lift a visor", say "You raise it with one finger. Dark. Then, deep in the helm, two points of light open and regard you. Your heart stops. They blink. A mouse runs down the inside of the breastplate and out by the knee." },
      } },

    { name = "the banners",
      description = "Hanging in the upper dark, threadbare, in rows: the colours of every house that ever marched on Regret.",
      things = {
        { name = "a banner with a sun on it", description = "The Dawn Crusade. It got as far as the gate, the card says, and was asked in. The banner was left behind in the morning as a thank-you." },
        { name = "the family banner", description = "Black, with a single white rose and a motto: {i}Mea culpa, et cetera.{/}" },
      } },

    { name = "the fire",
      description = "A hearth like a cave, with a whole trunk burning in it and two stone wolves for firedogs.",
      things = {
        { name = "a pair of chairs", description = "Wing chairs, facing each other across the hearth. One is worn hollow. The other is as plump as the day it was stuffed, and has a rug folded over its arm and a footstool set ready. It has been set ready every evening by the same hand. The rug has faded on the folds." },
        { name = "the mantel", description = "A slab of black stone. On it, a row of things under glass domes: a child's shoe, a pressed primrose, a lump of sealing wax, a sixpence. No labels. Grist dusts them and has never asked." },
        { name = "a toasting fork", description = "Silver-plated, from the smith at Lower Wince. Sold as vampire-proof. The Count bought two dozen, through the carter, to keep the man in trade. He finds they do crumpets very well." },
      } },

    { name = "the visitors' book",
      description = "On the small table, open, with a pen laid ready and the ink fresh. The page is ruled for forty names. There are four on it.",
      things = {
        { name = "the last entry", description = "{i}Jos. Whittle, Assessor of Taxes. Stayed four days. Was shown the roof.{/} Under {i}Remarks{/}: {i}Assessment withdrawn. I should like it recorded that I tried to leave on the Tuesday.{/}" },
        { name = "the first entry", description = "Six hundred years old, brown, in a child's round hand: {i}Clémence. I am not afraid of you.{/}" },
      },
      actions = {
        { "Sign it", say "You sign. Grist blots it with great ceremony, carries the book to the lamp, and reads your name aloud to the hall. The banners stir. Somewhere beyond the double doors a chair is pushed back, quickly, by somebody trying not to seem quick." },
      } },

    { name = "the bell",
      description = "Brass, on the table. A card: {i}Ring for attention. Ring twice for alarm. Do not ring thrice.{/}",
      actions = {
        { "Ring it thrice", say "One. Two. Three. Silence. Then, from every side, far off in the stone, a patter, a rush, a roar of small wings. It passes overhead in the dark and is gone. Grist appears at your elbow with a dustpan. \"The bats, sir. They think it is the dinner gong. They are always disappointed. So, sir, am I.\"" },
      } },

    { name = "a grandfather clock",
      description = "Ebony, nine feet tall, with a pendulum like an axe. It strikes only the hours of darkness. Between dawn and dusk the hands go round in silence, for nobody.",
      things = {
        { name = "the dial", description = "It shows the hour, the phase of the moon, the time of sunrise to the minute, and in a small window at the bottom a date. Under the date, a painted scroll: {i}No callers.{/} The scroll is on a wheel. It has other faces. This is the first time in your lifetime that the wheel has had to turn.",
          variants = {
            { when = flag "gl_dined", description = "It shows the hour, the phase of the moon, the time of sunrise, and the date. In the small window beneath, the painted scroll has turned on its wheel. It reads: {i}One caller.{/}" },
          } },
      } },

    { name = "the coat stand",
      description = "An iron tree. On it: one black cloak, one black hat, one black umbrella, and now your coat, which looks as if it has come to the wrong funeral." },

    { name = "the double doors",
      description = "At the end of the hall, tall, with a line of yellow light beneath them. From behind them comes the sound of a single fork being moved a very small distance, and then moved back." },

    { name = "a cobweb",
      description = "One. In a corner of the highest arch, vast and grey, with a spider at its centre the size of a saucer. The hall is otherwise spotless.",
      things = {
        { name = "the spider", description = "Grist calls her Madam. She has been there longer than he has. She is dusted round. On feast days a fly is provided." },
      } },

    { name = "the stair down",
      description = "Behind the staircase, a low arch and steps going into the rock. Cold comes up it, and a smell of stone, and of lavender. There is a doormat." },
  },

  exits = {
    { to = "gl_castle_gate", description = "Out under the corked portcullis to the night and the wolf." },
    { to = "gl_dining_room", description = "Through the double doors, toward the light and the one who has been keeping it on." },
    { to = "gl_library", description = "Up the left-hand stair, where the air smells of paper." },
    { to = "gl_gallery", description = "Up the right-hand stair, where forty generations hang waiting to be looked at." },
    { to = "gl_bat_loft", description = "The west tower, by a spiral stair with a rope for a rail. It is warm in there and it rustles." },
    { to = "gl_crypt", description = "Down past the doormat, into the rock." },
  },
}

space {
  id = "gl_dining_room",
  region = "glowers",
  name = "The Dining Room",
  description = "A long room hung with dark red, lit by a hundred candles. A table runs the length of it, forty feet of white damask, and at the far end two places are laid: one at the head, one at its right hand. This is the lit window. This is what it has been lighting.",
  palette = { bg = "#120a0c", text = "#dccccc", dim = "#7a6064", accent = "#d8a050", border = "#502830" },
  ambience = { flicker { color = "#ffb870", strength = 0.18 } },

  things = {
    { name = "the Count",
      key = "gl_count",
      icon = "☻",
      description = "He rose when you came in and has not yet sat down. Very tall, very thin, white as paper, in evening dress of a cut that went out with the longbow. A widow's peak. Hands like a pianist's who gave it up. He is the terror of seven hills, and he is looking at you the way a man looks at a letter he has waited a long time for and is now afraid to open.",
      things = {
        { name = "his teeth", description = "You look, of course. He lets you. Two of them are longer than they should be and very white. He keeps his lips over them when he smiles, and so his smile always seems to be apologising for something." },
        { name = "his evening dress", description = "Black, perfect, and darned. You have to be close to see it. The darns are finer than the cloth. Six hundred years in one suit, and every stitch by candlelight, by hand, his own." },
        { name = "his eyes", description = "Dark red, like wine held up to a fire. They are said to hold a man helpless. They do, a little, though no more than those of any host who is hoping very much that you like the soup." },
        { name = "his shadow", description = "He has none. The candles throw yours down the room, forty feet of adventurer, wobbling. Where his should be the carpet is only carpet. He sees you looking and moves a candlestick, kindly, so that your shadow covers the gap." },
      },
      actions = {
        { "Introduce yourself", say "You give your name. He repeats it, getting it right, and bows from the waist. \"Regret,\" he says. \"The name, and I fear the sentiment. You came up the lane. Past the signs. Past the cart.\" His voice is deep and soft and has an accent that no country has any more. \"Forgive me. I had a speech. I have been improving it since the plague year, and now I find that I have forgotten the whole of it. Will you sit?\"" },
        { "Sit down to dinner", when = no(flag "gl_dined"), set "gl_dined",
          say "You sit at his right hand. Grist brings five courses, and each is the best thing you have ever eaten. The Count takes beetroot wine and nothing else and watches each forkful with close and terrible attention. \"The pastry,\" he says at last. \"Be honest.\" You say it is very good. He shuts his eyes. \"I have been making that pastry for two hundred years, and nobody could tell me.\" He asks about the road, the moor, the price of wool, your mother. He listens to every word. At midnight Grist comes to clear, stops at your place, looks at the empty plate, and has to go and stand in the passage for a while." },
        { "Ask if he means to bite you", say "A pause. He sets down his glass. \"I did once. Bite. A person. In the year of the wet summer. It was a misunderstanding, we were both very young, and she bit me first.\" He looks at the tablecloth. \"I have regretted it every night since, and I have had a great many nights. No. I mean to ask whether you would care for more parsnips.\"" },
        { "Ask why he lays the table", say "\"Because somebody might come.\" He says it at once, as one gives the answer to a sum. Then, more slowly: \"On the first night I laid it out of manners. For the first century, out of hope. After that...\" He turns the stem of his glass. \"If you stop laying a place, you have decided something. I did not wish to be a man who had decided.\"" },
        { "Ask about sleep", say "\"I do not. It was part of the arrangement, though nobody said so at the time.\" He looks at the window, where the night is. \"Six hundred years awake. People suppose the blood is what one misses, or the sun. It is dreaming. To lie down and have somewhere else simply happen to one, for nothing.\" He smiles with his lips closed. \"I think everything I ever cared for began in that way. I should like to see where they keep it.\"" },
        { "Ask about his soul", when = no(item "gl_old_ticket"), once = true, give "gl_old_ticket",
          say "\"Mislaid.\" He says it lightly. \"There was a paper. I was young, it was a wet summer, a gentleman called with a very reasonable manner and a pen. They have an office now, under my own crypt, I let them the cellarage. I went down to ask for it back. I took a ticket. I sat.\" He opens a pocketbook and lays a slip of brown card on the cloth. \"Then the gong went for dinner, and one cannot keep a table waiting, and somehow in three hundred years I have not found the evening to go down again. The number is two hundred and twelve. Take it. You are the sort who goes into places. I had forgotten there was that sort.\"", fx "sparkle" },
        { "Thank him for dinner", when = flag "gl_dined", say "\"No,\" he says. \"No, you have that the wrong way round entirely.\" He walks you to the door himself, and stands there, lit from behind, until you have turned the corner. You know without looking that he will lay the second place again tomorrow, but you think that he will lay it differently." },
      } },

    { name = "the table laid for one",
      wonder = true,
      description = "A setting of silver and crystal and white linen at the right hand of the head: seven forks, five glasses, a napkin folded into a swan. It has been laid at dusk and cleared at midnight every night for six hundred years. Two hundred and nineteen thousand dinners, for a guest who did not come. You look closer. The silver is worn thin where a cloth has polished it, never where a hand has held it. The chair has been drawn out and pushed in so many times that its feet have cut four grooves in the stone. The swan is perfect. He has had a great deal of practice at the swan.",
      things = {
        { name = "the napkin swan", description = "Folded from one square of linen without a cut. It has a curve to its neck that makes you look twice. Nobody was ever going to look at it once, let alone twice, and it was done like that anyway, tonight and every night." },
        { name = "the grooves under the chair", description = "Four, a finger deep, in flagstone. Out at dusk, in at midnight. You fit the chair legs into them and it settles there as a key settles in a lock." },
        { name = "the place card", description = "In a silver holder. Cream card, the fine black hand. It does not say a name. It says {i}Welcome{/}. The card is new, but the holder has worn a mark in the cloth of every tablecloth this house has owned." },
      },
      variants = {
        { when = flag "gl_dined", description = "A setting of silver and crystal at the right hand of the head. Six hundred years it was laid at dusk and cleared untouched at midnight: two hundred and nineteen thousand dinners for no one. Tonight there are crumbs. There is a ring of wine on the damask, and the swan has been shaken out and used. Grist has not cleared it. He has been told to leave it exactly so until morning, and he stands by the sideboard, looking at a dirty plate as other men look at a sunrise." },
      } },

    { name = "the head of the table",
      description = "His place. One glass, one small plate, one knife.",
      things = {
        { name = "his glass", description = "Crystal, with a stem like a thread, full of something very dark red. You brace yourself. It is beetroot. Pressed, strained and laid down in the cellar by years. He will tell you which slope if you let him." },
        { name = "the beetroot", description = "On the small plate, one, roasted, cut in quarters. He eats it with a knife and fork and no pleasure. It is what the arrangement allows him, if he will not take the other thing, and he will not." },
      } },

    { name = "the candles",
      description = "A hundred, in silver branches down the table and sconces on the walls, all lit. None of them drips. He trims them himself, going round with scissors while the soup is fetched.",
      things = {
        candle { description = "Beeswax, tall, burning without a tremor. The smugness is there but it has been brought up properly." },
        { name = "a snuffer", description = "Silver, on a long handle. It has never been used in this room. The candles here are let burn down to the socket, and the last one is in the window." },
      } },

    { name = "the window",
      description = "The lit window, from inside. Tall, leaded, uncurtained. A lamp stands on the sill with its wick turned high.",
      things = {
        { name = "the lamp", description = "Brass, with a red glass chimney. He fills it at dusk. It is not there to see by: the room has a hundred candles. It is there to be seen." },
        { name = "the view down", description = "The village, a mile below, dark as a shut book. He knows every roof. He can tell you which chimney smokes, which family has a new baby by the washing, and which shutter has a spyglass behind it. \"A young lady with a slate,\" he says. \"She keeps better hours than I do. I try to pass the window on the quarter, so as not to spoil her figures.\"" },
      },
      actions = {
        { "Stand in the window", say "You stand in the light and look out. A mile down, in one black shutter, a tiny glint appears, wavers, and holds steady. You have been seen in the lit window of Castle Regret, and by breakfast you will be a legend in Lower Wince. In the legend you will not have had a second helping." },
      } },

    { name = "the sideboard",
      description = "Black oak, with a mirror back that has been painted over, long ago, with a landscape.",
      things = {
        { name = "the painted mirror", description = "A view of fields and a river in full sun, done on the glass in oils, to cover it. In one corner the paint has flaked, and in the flake of bare mirror there is the room, and the candles, and you, and an empty chair at the head of the table with a glass in the air beside it." },
        { name = "the tureens", description = "Six, silver, with lids shaped like sleeping animals. Hot. All full. Every night he has a dinner for forty cooked, on the principle that if one comes, more might." },
        { name = "a decanter of water", description = "For you. He does not drink wine, he explains, and then waits. You say nothing. He looks very slightly crestfallen. It is the only joke he knows and nobody has ever been there to take it." },
      } },

    { name = "the far end of the table",
      description = "Thirty-eight chairs with no places laid. The cloth runs down between them, white and bare. At the very foot, facing him down all that length, stands one chair which is different: small, painted blue, a child's chair with a rush seat.",
      things = {
        { name = "the blue chair", description = "Six hundred years old and repainted often, always the same blue. It is not laid for. It is only kept at the table. You do not ask, and he sees you not asking, and inclines his head in thanks." },
      } },

    { name = "the portrait over the fire",
      description = "A woman of about thirty in a green dress, laughing at the painter. She has a small scar on her lip. The plate says {i}Clémence, in the year after{/}. She has two very white teeth that are longer than they should be, and she is the only face in the castle that is not sorry about anything.",
      actions = {
        { "Ask who she was", say "\"She bit me first,\" the Count says, and for a moment he is nearly a young man. \"She thought the whole thing was funny. She went off to see the world, and she said I should come when I had finished being sorry.\" He looks at the portrait. \"She writes at midwinter. I am told the south is very fine.\"" },
      } },

    { name = "the dinner gong",
      description = "Bronze, a yard across, in a frame of two rearing wolves. Grist strikes it at seven. It can be heard in Lower Wince, where they take it for a thing too dreadful to name, and put the kettle on by it." },

    { name = "the carpet",
      description = "Red, worn through to the backing in a single line: from the head of the table to the window, and back." },
  },

  exits = {
    { to = "gl_hall", description = "Back through the double doors to the fire and the two chairs." },
  },
}
