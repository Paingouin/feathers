-- Mango Landing: the beach, the trading post, and what the trading post keeps at the back.

space {
  id = "jg_landing",
  region = "sweltering",
  name = "Mango Landing",
  description = "A curve of white sand with the jungle standing at the back of it like a crowd at a rope. Kev's boat rides in the shallows. There is a jetty, a shed with a veranda, a river mouth the colour of tea, and a heat that sits down on your shoulders and asks how far you have come.",
  palette = { bg = "#0c140c", text = "#e0e4c8", dim = "#6e8060", accent = "#f0b848", border = "#3a5a34" },
  ambience = {
    shimmer { color = "#f0d890", strength = 0.2 },
    steam { glyphs = "˙°", color = "#44604a", rate = 0.2 },
  },

  things = {
    { name = "Kev's boat",
      description = "A black lugger with tan sails, anchored in water so clear that she seems to hang over her own shadow. On the stern, in new paint: {i}Still Nothing To Declare{/}.",
      things = {
        { name = "Kev", icon = "☻",
          description = "A thin brown man in a hat made of a whole leaf, lying along the boom with a line over the side. He is not poorly. He has never been better. He was told that pushing a barrow over a beach was the future of the trade, and he took the long boat south the same night.",
          actions = {
            { "Ask if he is poorly", say "\"Poorly,\" says Kev, with relish. He catches a fish the colour of a sunset, looks at it, and puts it back. \"Tell Dob I'm very low. Tell him I may never push a cart again.\" He lies back. \"Tell him the tea's coming.\"" },
            { "Ask about the trade", say "\"Tea comes north. Rubbish goes south. Don't look like that, it's good rubbish. They can't get enough of it down here.\" He nods at the shed. \"Pomfret's got a chipped mug in the window priced at a canoe.\"" },
            { "Ask when he sails", say "\"When you like. Three days up, three days down, and I don't talk before noon.\" He considers you. \"You were sick twice on the way. I've put it in the log as weather.\"" },
          } },
        { name = "the cargo going north", description = "Tea chests, lead-lined, each stamped with a mark like a small tree. You have seen the mark before, in a cave, under a baroness's lace." },
        { name = "the ship's log", description = "A school exercise book. {i}Day 1: sea. Day 2: sea. Day 3: passenger sick (weather). Arr. Mango. Hot.{/} Every voyage for six years reads the same, apart from the passenger." },
        { name = "a hammock", description = "Slung under the foresail. It has taken the shape of Kev so exactly that when he is out of it, it still looks occupied." },
      } },
    { name = "the jetty",
      description = "Twenty yards of grey planks on crooked legs, walking out into the green water. Every third plank is new. The jungle sends the old ones back as mushrooms.",
      things = {
        { name = "a bollard", description = "A tree stump, used for mooring, that has come into leaf. Kev ties up to it and trims it once a voyage. It is winning." },
        { name = "a boy fishing", description = "About nine, with a bent pin and a look of total command. He has a string of eleven fish. He looks at your boots, and then at you, and then moves his fish a little further off.",
          actions = {
            { "Ask what is biting", say "\"Everything,\" he says. \"Not for you.\" He is right. He lends you the line for the space of one breath, to prove it, and takes it back with a fish on that was not there when you held it." },
          } },
        { name = "the water under the jetty", description = "Clear to the sand, and full: striped fish, blue fish, a fish like a dinner plate that swims on its side, and a ray going by underneath them all like a carpet that has somewhere to be." },
      } },
    { name = "the red crabs",
      wonder = true,
      icon = "x",
      description = "They come out of the trees in the last hour of the tide: land crabs, red as sealing wax, each the size of your hand, in a column forty yards wide that crosses the sand without a gap and walks into the sea. {wave}The whole beach clicks.{/} They have somewhere to be, they have always had it, and they go round your boots without a glance, the way a river goes round a post.",
      things = {
        { name = "one crab", description = "It has stopped in front of your left boot. It taps the leather with a claw. It is not attacking. It is knocking. You move the boot, and it goes on to the sea in a straight line, having been right." },
        { name = "the track they leave", description = "The sand behind the column is stitched all over, fine as cloth. The next wave irons it flat. In a month, the boy says, they all walk back, smaller and more of them." },
      },
      actions = {
        { "Stand in the way", say "You plant your feet. The column divides a yard ahead of you and closes a yard behind, and for some minutes you are an island in a red river that sounds like rain on a tin roof. Not one of them touches you. You have never been so politely ignored by so many." },
      } },
    { name = "the palms",
      description = "A row of them, leaning out over the sand at an angle no builder would sign. They do not fall. They have been not falling since before the jetty.",
      things = {
        { name = "a coconut", description = "High up, among the fronds, directly over the path. Everybody who walks under it looks up. It has been about to drop for two years and is enjoying the attention.",
          actions = {
            { "Walk under it", say "You hurry. Nothing. You look back, and it has not moved, and you feel that you have been made fun of by a fruit." },
          } },
        { name = "a notice nailed to a trunk", description = "{i}MANGO LANDING. Pop. 14 and Mr Pomfret. Please do not feed the jungle.{/}" },
        { name = "a hermit crab in a teacup", description = "A fine one, with a gold rim and a crack. It came south in a crate and was thrown out as damaged. The crab took it within the hour and is the envy of the beach." },
      } },
    { name = "the mango tree",
      description = "At the top of the beach: old, dark, as broad as a barn, and so loaded that the branches have been propped with oars. The Landing is named for it. So are most of the children.",
      things = {
        { name = "a ripe mango", description = "Gold going to red, heavy, warm from the sun, with one bead of sap at the stalk.",
          actions = {
            { "Eat it", say "It cannot be done neatly. You are told this afterwards by the boy on the jetty, who watched. It runs down both arms to the elbow. It tastes the way you thought oranges were going to taste, the first time, before you had one. You stand on a foreign beach with juice on your chin, and for the moment you want for nothing at all." },
          } },
        { name = "the props", description = "Seven oars and a mast. Whenever a branch comes down low enough to touch the sand, somebody gives up a piece of boat." },
        { name = "the ants", description = "A line of them going up the trunk and another coming down, each of the second lot carrying a piece of mango the size of itself over its head. They have a road, a rule of the road, and a place where two of them are standing still to direct the rest." },
      } },
    { name = "the river mouth",
      description = "Where the Slow Brown comes out of the trees and meets the sea. The brown water and the green lie side by side for a furlong without mixing, with a line between them you could rule.",
      things = {
        { name = "the line in the water", description = "Fish cross it. You watch a blue one go over from green to brown and come straight back, shaking its head." },
        { name = "a floating island", description = "A mat of weed and grass the size of a cart, come down the river, with a small tree on it and a heron on the tree. It goes out to sea at a walking pace. The heron has not noticed, or is emigrating." },
        { name = "the river boat", description = "Tied up just inside the mouth: a flat thing with a tin roof and a stovepipe, and a hammock in the bow with somebody in it." },
      } },
    { name = "the jungle's edge",
      description = "It does not thin out towards the beach. It stops, all at once, a green wall sixty feet high with no door in it. Something in there is making a noise like a saw, and something else answers it like a bell.",
      things = {
        { name = "a creeper", description = "It has come four feet out across the sand since morning, towards the shed. There is a row of pegs along the top of the beach with dates on. The creepers are measured daily, and cut back on Fridays.",
          actions = {
            { "Watch it grow", say "You crouch and stare at the tip. Nothing. You look away for a moment, at a crab, and when you look back the tip has put out a leaf and is pointing at you. You stand up rather quickly." },
          } },
        { name = "a parrot", icon = "v", description = "Red and blue, in a fig tree, upside down. It says, in Mr Pomfret's voice, {i}\"Genuine! Genuine! Very rare!\"{/} and then, in Kev's, {i}\"Not before noon.\"{/}" },
        { name = "a flower the size of a cartwheel", description = "Flat on the ground at the foot of the wall, red, spotted, with no leaves and no stem. It smells like a butcher's in August. Flies adore it. The naturalists up the river have named it after their professor, and the Landing thinks that is about right." },
      } },
    { name = "the shed with the veranda",
      description = "Planks, a palm roof, a sign as long as the building: {i}POMFRET'S NORTHERN CURIOSITIES. Genuine Imports From The Fabled Kingdom.{/} There is a queue." },
    { name = "the queue",
      description = "Six people from up the river in their best, with baskets of fruit and dried fish to trade. They are here for the curiosities. They talk about the Kingdom the way people at home talk about the moon.",
      things = {
        { name = "a woman with a basket", description = "She has come two days by canoe for a mitten. Only one. She has seen a picture. \"For the cold,\" she explains to you, fanning herself. \"We don't have it. I should like to own something that is for it.\"",
          actions = {
            { "Tell her about snow", say "You do your best. White, cold, comes down out of the sky, lies about. She listens with great courtesy. At the end she pats your arm. \"And the turnips,\" she says, \"that grow under the ground, in the dark? Do tell me about those.\" She does not believe a word, and she is having a lovely time." },
          } },
        { name = "an old man in a helmet", description = "A Watch helmet from Aldmoor, with the plume. He wears it for best. He bought it for a canoe and a pig and says that it was cheap, since a thing like that must have belonged to a king." },
      } },
    { name = "the heat",
      description = "It is not weather. Weather changes. It is more that the air here is another substance, like soup, and you are in it.",
      actions = {
        { "Take off your coat", say "You take off your coat. It makes no difference, and now you are carrying a coat." },
      } },
    { name = "a turtle",
      description = "On the sand above the tide line, as big as a table top, digging a pit with her back flippers. She is crying, slowly, large clear tears. The boy says they all do it and it is only the salt. She looks at you with an old wet eye and goes on digging, and you find that you have taken your hat off.",
      things = {
        { name = "the pit", description = "Deep as your arm. The eggs go in one at a time, round and white, soft as a purse. She covers them, pats the sand flat, and drags herself back to the sea without once looking round. She has done her part. The rest is up to the beach." },
      } },
    { name = "a signpost",
      description = "One post, three boards. {i}THE KINGDOM{/}, pointing out to sea. {i}UP RIVER{/}, pointing at the river. The third points straight into the wall of trees and says {i}MORE{/}." },
  },

  exits = {
    { to = "second_cove", label = "Home, by Kev's boat",
      description = "Three days north with a man who does not talk before noon, to the cove where the sea is not." },
    { to = "jg_trading_post", description = "Up the steps, past the queue, into the shade and the smell of mothballs." },
    { to = "jg_river", label = "The river boat",
      description = "Along the jetty to a flat boat with a tin roof, which goes up the Slow Brown whenever its pilot can be brought to agree." },
  },
}

space {
  id = "jg_trading_post",
  region = "sweltering",
  name = "Pomfret's Northern Curiosities",
  description = "A long dim room, hung to the rafters with everything the kingdom threw away. Each piece has a ticket on a string, written in a fine hand with a great many capital letters. It smells of camphor, damp wool and other people's attics, and it is the most exotic shop for a thousand miles.",
  palette = { bg = "#12100a", text = "#dcd4bc", dim = "#7a705a", accent = "#e8b040", border = "#4a4028" },
  ambience = {
    dust { glyphs = "·˙", color = "#6a604a", rate = 0.4 },
    flicker { color = "#e8b040", strength = 0.1 },
  },

  things = {
    { name = "Mr Pomfret",
      icon = "☺",
      description = "A round pink man in a wool waistcoat, buttoned, in this heat, as a matter of trade. He came out from Aldmoor thirty years ago with a crate of unsold hats and has never looked back. He speaks of the kingdom in a hushed voice, to customers, and in quite another voice to you.",
      things = {
        { name = "his waistcoat", description = "Grey wool, with a watch chain. He is the only man in the Sweltering who is dressed for a wet Thursday in the Temple Quarter, and it is half his stock in trade. People come in simply to look at it." },
        { name = "his ledger", description = "Double entry. {i}1 mug, chipped, ex Tipsy Griffon: bought, nil. Sold, 1 canoe.{/} There is a column headed {i}Conscience{/}. It has been ruled, and left blank, and kept very clean." },
        { name = "his fan", description = "A page from an Aldmoor by-law, folded. He fans himself with regulation 212, the one against dancing, and it does very well." },
      },
      actions = {
        { "Tell him where you are from", say "He goes white, then pink. He takes you by the elbow behind a rack of scarves. \"Not a word,\" he says. \"Not one word about what a turnip costs at home. I have a wife and a veranda.\" He presses a boiled sweet into your hand. It has been in his pocket since Aldmoor." },
        { "Ask how business is", say "\"Booming. They'll take anything with a hallmark, a lining or a hinge. Last month I sold a toast rack to a chief as a crown for very thin kings.\" He lowers his voice. \"The thing to grasp is that here, {i}we{/} are the mysterious east.\"" },
        { "Ask what goes north", when = no(flag "jg_knows_trade"), set "jg_knows_trade",
          say "He looks at the queue, at the door, and at the parrot. \"Tea,\" he says loudly. Then, quietly: \"And curiosities. You'd be astonished what a baroness will pay for a genuine jungle idol. I have a man who carves them. Wednesdays.\" He twitches a blanket aside at the back of the shop. There is a door behind it. \"Mind the paint. Some of the antiquities are wet.\"" },
      } },
    { name = "the counter",
      description = "A door laid across two tea chests. On it: a pair of scales, a tin of boiled sweets, and a small brass bell from an inn, which he rings when a sale is very large.",
      things = {
        { name = "the scales", description = "On one pan, a button. On the other, an amount of dried fish that would keep a family for a week. They balance. Mr Pomfret calibrated them himself." },
        { name = "the bell", description = "Engraved {i}LAST ORDERS{/}. The customers think that it is a prayer." ,
          actions = {
            { "Ring it", say "One clear note. Six people in the queue bow their heads. Mr Pomfret, who has his back to you, says \"Time, gentlemen, please,\" before he can stop himself, and then pretends that he coughed." },
          } },
        { name = "the price list", description = "{i}Buttons, each: 1 fish. Buttons, matching pair: 5 fish. String, per yard: by arrangement. Snow: ask.{/}" },
      } },
    { name = "the window display",
      description = "The pride of the house, laid out on black velvet, which is a petticoat.",
      things = {
        { name = "the chipped mug", description = "Pewter, dented, with a griffon on it and a name scratched on the base. The ticket reads: {i}CHALICE of the Northern Tavern Lords. From this very Vessel the Barman drank. One canoe.{/}",
          actions = {
            { "Read the base", say "{i}HIS{/}, it says, in scratches. Somewhere in Greenhollow a barman is still wondering where it went." },
          } },
        { name = "a single mitten", description = "Red wool, with a hole in the thumb. {i}HAND-HOUSE, for the Great Cold. Worn by the Snow People. The other one is a Legend.{/}" },
        { name = "a turnip", description = "Under a glass dome, on a cushion. It has travelled badly. {i}The Sacred Earth-Fruit, grown in Darkness by a Farmer. Do not breathe on.{/}" },
        { name = "a boot scraper", description = "Cast iron, in the shape of a hedgehog. {i}Household God of the Doorstep. Fierce.{/} Three have been sold. They are fed." },
      } },
    { name = "the hat wall",
      description = "The original crate, still going: forty years of Aldmoor millinery that Aldmoor would not buy, on pegs, from floor to roof.",
      things = {
        { name = "a tall hat with a buckle", description = "{i}Ceremonial. Worn by Elders for Disapproving.{/} This is accurate. It is the only honest ticket in the shop." },
        { name = "a bonnet", description = "Straw, with wax cherries. Something has eaten two of the cherries and regretted it." },
        { name = "a nightcap", description = "Flannel, with a tassel. {i}Sleeping Crown. In the Kingdom, ALL are Kings by night.{/} It is his best seller. Half the villages up the river go to bed in them.",
          actions = {
            { "Try it on", say "It is warm, in a country where nothing needs to be. A girl in the queue gasps and nudges her mother. For one moment, in a flannel nightcap in a shed, you are the most glamorous thing she has ever seen. You take it off quite slowly." },
          } },
      } },
    { name = "the shelf of bottled weather",
      description = "A row of jars and bottles with cork stoppers and labels in copperplate.",
      things = {
        { name = "a jar of fog", description = "{i}Morning MIST from the Barley Road.{/} It is a jar. There is condensation inside. In fairness, there would be." },
        { name = "a bottle of snow", description = "{i}SNOW (resting).{/} An inch of water. Children are brought to look at it and told that it is asleep." },
        { name = "a jar of drizzle", description = "{i}A Tuesday.{/} Grey water with a dead gnat in it. You look at it for some time. You are, to your surprise, homesick." },
        { name = "a gap on the shelf", description = "A ring in the dust where a squat bottle stood, and round the ring a wider one, where the wood is paler and a little cracked, as planks crack in a hard frost." },
      } },
    { name = "the document rack",
      description = "Papers from the kingdom, each in its own frame of split cane.",
      things = {
        { name = "a parking summons for a cart", description = "{i}Proclamation of the Gate King against a Wheeled Beast.{/} It has a seal. Seals fetch double." },
        { name = "a Tide Office table", description = "{i}one penny{/}, last year's. {i}Prophecies of the Sea, by the Northern Seers.{/} The fishermen here check it against the real tide and say that the seers are good, though they have lately lost their touch." },
        { name = "a page of Council minutes", description = "{i}Sacred Text. Recited for Sleep.{/} You read three lines about drainage and have to sit down on a tea chest." },
      } },
    { name = "the rack of scarves",
      description = "Wool, every one. In this air they hang as limp as kelp. They are bought as wall hangings, and to frighten children: {i}in the north you must wear this, or your neck falls off.{/}" },
    { name = "the armoury",
      description = "A barrel in the corner with things standing in it.",
      things = {
        { name = "an umbrella", description = "Black, with two ribs gone. {i}Portable Roof. For a People whose Sky cannot be Trusted.{/}",
          actions = {
            { "Open it", say "It goes up with a crack. Everybody in the shop steps back, and an old man makes a sign against it. \"Indoors,\" breathes Mr Pomfret. \"Oh, you've made my week. They'll be talking about that up the river till the rains.\"" },
          } },
        { name = "a toasting fork", description = "{i}Trident of a very small Sea King.{/}" },
        { name = "a warming pan", description = "Copper, with a long handle. {i}Bed Gong.{/} It is sold with a stick." },
      } },
    { name = "the customers",
      description = "Two at a time, by the rule of the house, turning things over with great care.",
      things = {
        { name = "a young man with a fish knife", description = "He is paying court to somebody, and wants a gift that says so. He has it down to a butter dish or a left boot. He asks you, as a northerner, which is the more romantic.",
          actions = {
            { "Say the butter dish", say "He nods slowly, relieved. \"It has a lid,\" he says. \"It shows that I am serious.\" He pays four fish and a carved paddle for it and goes out holding it in both hands, like a heart." },
          } },
        { name = "a grandmother", description = "She comes in every week and buys nothing. She only wants to hold the thimble. Mr Pomfret lets her. He has told his wife that it is good for trade, and has told himself the same." },
      } },
    { name = "the rafters",
      description = "Hung with what will not go on a shelf: a bird cage, a saddle, half a rocking horse, a sledge.",
      things = {
        { name = "the sledge", description = "A child's, with iron runners. {i}Boat for Hard Water.{/} Nobody will buy it. Nobody believes in the hard water. He keeps it for the argument it starts." },
        { name = "the bird cage", description = "Empty, with the door wired open. A small green lizard lives in it by choice and comes to the bars when anybody passes." },
      } },
    { name = "the shop cat",
      description = "A grey tabby from Elbow Lane, shipped south in a hat box, now very large and somewhat striped by association. The jungle is full of things that could eat it. It has explained matters to them one at a time.",
      actions = {
        { "Stroke it", say "It allows this, with its eyes on the door. Something long and spotted is looking in from the veranda. The cat yawns at it. The spotted thing remembers an appointment." },
      } },
    { name = "a blanket on the back wall",
      key = "jg_blanket",
      description = "A grey army blanket, nailed up as if it were a tapestry. {i}Not for Sale.{/} It moves a little, in no wind.",
      variants = {
        { when = flag "jg_knows_trade",
          name = "the door behind the blanket",
          description = "The blanket is hooked back. Behind it is a plank door, ajar, and a smell of wet paint and fresh sawdust that an antiquities business ought not to have." },
      } },
    { name = "Mrs Pomfret",
      description = "Through the bead curtain, on the veranda, shelling something into a bowl. She was born at the Landing. She married him for the waistcoat, she says, and stayed for the look on his face each time it rains warm.",
      actions = {
        { "Ask what she thinks of the kingdom", say "\"I think it's somewhere he made up,\" she says comfortably. \"Cold you can see. Water you can walk on. A king who grows marrows.\" She shells another. \"But he tells it very well, and it sells.\"" },
      } },
  },

  exits = {
    { to = "jg_landing", description = "Out past the queue, into the white light." },
    { to = "jg_back_room", label = "Behind the blanket",
      description = "Through the plank door, where the antiquities are made.",
      requires = flag "jg_knows_trade", hidden = true },
  },
}

space {
  id = "jg_back_room",
  region = "sweltering",
  secret = true,
  name = "The Antiquities Department",
  description = "A lean-to at the back of the shop, open on one side to the trees. Here the other half of the trade is got ready to go north: genuine jungle idols, authentic cursed masks, shrunken heads of guaranteed fierceness, all in rows, drying. It is rubbish going one way and rubbish coming back, and at each end somebody is thrilled.",
  palette = { bg = "#100e08", text = "#d8d0b4", dim = "#766c52", accent = "#d89838", border = "#463c24" },
  ambience = {
    dust { glyphs = "·˙∙", color = "#7a6a48", rate = 0.5 },
  },

  things = {
    { name = "Old Tamba",
      icon = "☻",
      description = "A very old man on a stool, carving, with shavings up to his ankles. He comes on Wednesdays. He was a boat builder, and good, and says this is easier and pays better and that nobody drowns of it.",
      things = {
        { name = "his knife", description = "Short, hooked, older than he is. It takes off a curl of wood so thin that the light comes through." },
        { name = "the idol in his hands", description = "Squat, scowling, with its tongue out. He holds it at arm's length, adds a tooth, and laughs for quite a long time." },
      },
      actions = {
        { "Ask what the idols are gods of", say "\"That one is the god of the price going up. That one is my brother-in-law.\" He points with the knife. \"The big one I do not know yet. I will know when the lady who buys him tells her friends.\"" },
        { "Ask if any of it is real", say "He stops carving. \"The wood is real,\" he says. \"The work is real. The north will hang it on a wall and be afraid of it, and the fear will be real.\" He blows the dust off a scowl. \"What else did you want?\"" },
      } },
    { name = "the drying racks",
      description = "Three tiers of them, bamboo, the whole length of the wall.",
      things = {
        { name = "a row of idols", description = "Forty, identical, scowling. Each has a ticket ready for the far end: {i}Ancient. Do NOT anger.{/} They were trees a fortnight ago." },
        { name = "a cursed mask", description = "Long, black, with shell eyes. The curse is described on a card, in three grades, at three prices. The top grade is {i}unspeakable{/}, and the card stops there." ,
          actions = {
            { "Try it on", say "It fits. It smells of paint. Old Tamba looks up, screams, and falls off his stool, and then gets back on it, wiping his eyes. \"Every time,\" he says. \"I do it for all the visitors. You should see the face under the face.\"" },
          } },
        { name = "the shrunken heads", description = "A string of nine, the size of fists, with stitched lips and a great deal of hair. You go closer. They are coconuts. The hair is goat. One has a little painted frown and has been named, on its ticket, after a Mr Lionel Thrubwell." },
      } },
    { name = "the ageing bench",
      description = "Where new things are made old: a tub of mud, a pot of tea, a wire brush and a chicken.",
      things = {
        { name = "the tub of mud", description = "Idols go in for a week and come out a thousand years old. The mud is from the river. It has, in fairness, seen a great deal." },
        { name = "the chicken", description = "She walks over the carvings while they are soft. It gives the surface a look of great antiquity and mysterious script. Two scholars at the Collegium have published on her." },
        { name = "a pot of cold tea", description = "For staining. It is the tea that goes north. Somewhere in Aldmoor a gate sergeant is drinking what the gods are dipped in." },
      } },
    { name = "the packing table",
      description = "Straw, crates and a stencil. The crates are going to the Smugglers' Hole and from there, on a barrow, to the drawing rooms of Nobles' Row.",
      things = {
        { name = "the stencil", description = "{i}CURIOS. This Side Up. Do Not Anger.{/}" },
        { name = "an order book", description = "{i}Baroness of Aldmoor: one idol, large, baleful, to go with curtains. Collegium, Faculty of Antiquity: six heads, assorted. Capt. Brisket, the Watch: one mask, for the nephew's birthday.{/}" },
        { name = "a crate marked RETURNS", description = "One idol, sent back from Aldmoor with a note: {i}Not baleful enough. Smiles in certain lights.{/} Old Tamba has pinned the note to the wall and is very proud of it." },
      } },
    { name = "the pattern shelf",
      description = "The old pieces that the new ones are copied from. There are only three, and they are not like the rest.",
      things = {
        { name = "a stone hand", description = "Life size, green, broken off at the wrist, with its fingers flat. It came down the river in a flood. It is so hard that Tamba's knife skates on it. He copies it in softwood and says the copies sell, and the hand watches him do it." },
        { name = "a clay bowl", description = "Plain and thin as a shell. On the bottom, the print of a thumb, pressed in before it was fired, by a potter nobody has a name for. Tamba puts his own thumb on the bottom of everything he makes, in the same place. He says it is manners." },
        { name = "a tooth", description = "As long as your forearm, curved, and stone all through. It is not carved. Tamba says it came out of the river bank, and that there is a jaw in there still, and that one does not dig." },
      } },
    { name = "the crate of unsold weather",
      key = "jg_weather_crate",
      description = "Under the bench: the bottles that did not move. {i}Hail (broken). Sleet. A Wet Bank Holiday.{/} At the bottom, wrapped in a sack, is something that has frosted the straw around it.",
      variants = {
        { when = flag "jg_wind_taken",
          description = "Under the bench: the bottles that did not move. {i}Hail (broken). Sleet. A Wet Bank Holiday.{/} At the bottom, a nest of straw, still white, slowly thawing." },
      },
      things = {
        { name = "the frosted straw", description = "Stiff and white, in the hottest shed on the coast. A beetle walked on to it at some time and is still there, in mid-step, quite unharmed, waiting for the thaw." },
        { name = "Pomfret's stock card", description = "{i}Bt. of a sailor, who had it of a wreck. Blue glass, v. old. Sold 3 times as Kingdom Air and brought back each time. Complaints: \"growls\", \"killed my fish\", \"wife's hair turned white on that side\". Not to be opened. NOT a toy. See if Aldmoor will take it.{/}" },
      },
      actions = {
        { "Take the bottle", when = no(flag "jg_wind_taken"), set "jg_wind_taken", give "jg_north_wind", fx "flash",
          say "You unwrap the sack. A squat blue bottle, sealed with lead, so cold that it burns. Something inside it turns over. Old Tamba has stopped carving. \"Take it,\" he says. \"Take it a long way. He sold it to my cousin to keep fish. The fish are still fresh. That was eleven years ago.\"" },
      } },
    { name = "the open side",
      description = "No wall, only posts, and beyond the posts the jungle, a yard off, looking in.",
      things = {
        { name = "a monkey", icon = "&", description = "Small, grey, with a white beard, sitting on the rail and holding one of the idols. It turns it over. It looks at Tamba. It puts the idol down and makes exactly the idol's face." },
        { name = "a vine through the roof", description = "It came in at the corner and has gone along a rafter and down a post and into a crate, where it is growing round an idol. That one will be sold as {i}reclaimed from a lost temple{/}, and it will nearly be true." },
        { name = "the sawdust path", description = "A track of pale dust going off between the trees to where the softwood is cut. Every foot of it has a line of ants on it, carrying the dust away. Nobody knows what they want it for." },
      } },
    { name = "the paint shelf",
      description = "Pots of red earth, soot, white clay and one tin of Aldmoor Municipal Green, which gives the best curse.",
      actions = {
        { "Touch a wet idol", say "Your thumb comes away green. There is now an idol going north with your thumbprint on its forehead. In a year or two some scholar will have a theory about it." },
      } },
    { name = "a finished crate",
      description = "Nailed, stencilled and ready. Through the slats, forty scowls. On the lid, in chalk, in Kev's hand: {i}for Dob. Tell him I'm poorly.{/}" },
    { name = "a hammock",
      description = "Slung between two posts, for the heat of the day, with a carved head rest. The head rest is the one good thing he has made this year, and it is not for sale." },
    { name = "the wage tin",
      description = "A tea caddy. Tamba is paid in buttons, which up the river are money, and which Mr Pomfret gets by the gross from a traveller with a room at an inn in Aldmoor. Everybody concerned believes that he is robbing somebody else." },
  },

  exits = {
    { to = "jg_trading_post", description = "Back under the blanket, to the front of the house." },
  },
}
