-- The way out: the Desert Express from Tickover, and the place where the line stops.

space {
  id = "pa_train",
  region = "parch",
  name = "The Desert Express",
  description = "One engine, one carriage, and a guard's van that is mostly a stove. It leaves the Punctual Gate at four minutes past every hour that has a seven in it, and runs east until the grass gives up and then the bushes and then the ground itself goes the colour of biscuit. The window is open. The air coming in has been somewhere hot and wants you to know.",
  palette = { bg = "#15110b", text = "#ded2b6", dim = "#857456", accent = "#d9a441", border = "#62502a" },
  ambience = {
    steam { glyphs = "˙·∙", color = "#5c564a", rate = 0.3 },
    dust { glyphs = "·˙", color = "#6a5a34", rate = 0.5, speed = 1.2 },
  },

  things = {
    { name = "the conductor",
      icon = "☺",
      description = "Mr Abel Punch, in a uniform buttoned to the chin in heat that would soften a candle. He has worked the Express for thirty one years. In that time it has carried, by his count, four hundred and six passengers, and he remembers what each of them had for lunch.",
      things = {
        { name = "his watch", description = "A silver turnip on a chain. It is set to Tickover time, four minutes behind the world, and he has a second one in the other pocket set to desert time, which is whenever the caravan gets in. He consults both and trusts neither." },
        { name = "his whistle", description = "Brass, worn bright at the lip. One blast for leaving, two for arriving, three for a camel on the line. He has a fourth signal, for a camel on the line that will not discuss it, and that one is spoken." },
        { name = "his ledger of passengers", description = "A narrow book. Number four hundred and seven is you. Under {i}Purpose of journey{/} he has written {i}Says adventure{/} and under {i}Luggage{/} he has written {i}No{/}." },
      },
      actions = {
        { "Show your ticket", say "He takes the buff card, reads both sides, and punches a second star beside the first. \"Platform ticket,\" he says. \"Admits you to places of departure. Well, we shall certainly be departing.\" He gives it back. He is the first official in your life who has found you in order." },
        { "Ask how far it goes", say "\"To the end of the line, sir.\" You ask where that is. \"Where the line ends,\" says Mr Punch, with the patience of a man explaining a wall. \"They were going to go on. There was to be a Phase Two. There is a brass plate.\"" },
        { "Ask what the others had for lunch", say "\"Number three hundred and twelve, a cold pigeon. Number three hundred and thirteen, the other half of it, there having been words.\" He could go on. You can see that he could go on as far as the engine can." },
      } },
    { name = "the carriage",
      description = "Third class, there being no first or second since the Company sold them. Slatted benches, a luggage rack of brass and string, and a floor with sand in the corners that no brush has ever beaten.",
      things = {
        { name = "the benches", description = "Varnished slats that print themselves on you in stripes. The one by the door has a cushion. The cushion is the conductor's, and he lends it by the stop.",
          things = {
            { name = "a carving under the seat", description = "You find it with your fingers before your eyes: {i}Wilf woz ere{/}, and under it, in the same knife, {i}hot{/}." },
          } },
        { name = "the luggage rack", description = "It holds a carpet bag, a crate of clock springs addressed to {i}Wick, Great Shade{/}, and a hat box which moves a little when the train does and a little when it does not." },
        { name = "the communication cord", description = "A red chain along the ceiling. {i}PENALTY FOR IMPROPER USE: A LOOK.{/}",
          actions = {
            { "Pull it", say "The train stops, in the middle of nothing, with a long sigh. Mr Punch comes down the carriage. He does not say a word. He looks at you. Then he blows his whistle once and the train goes on. It was a thorough look, and you will be carrying it for some time." },
          } },
        { name = "the sand in the corners", description = "Fine and pale, in four neat drifts. It came in at the window one grain at a time over thirty years. It is on its way to Tickover, and making good time for sand." },
      } },
    { name = "the dining car",
      description = "It is a wicker hamper on the seat opposite, with a label: {i}DINING CAR. LUNCHEON SERVED BETWEEN THE SECOND WATER TOWER AND THE THIRD.{/}",
      things = {
        { name = "the bill of fare", description = "A card tucked in the lid. {i}Egg, boiled. Egg, another. Bread. A pickle. Tea from the engine.{/} At the bottom, printed: {i}The Company regrets that the soup has been discontinued since the bend at Mile Forty.{/}" },
        { name = "the eggs", description = "Two, in a napkin, boiled at Tickover by the stoker's wife and still warm, since so is everything else." },
        { name = "the pickle", description = "One onion, in a jar of its own, the size of a fist. It has a look you know. Marta's onions get everywhere." },
        { name = "a tin mug on a hook", description = "For the tea, which comes from a brass tap on the front of the carriage, straight off the boiler. It tastes of tea and slightly of distance." },
      },
      actions = {
        { "Take luncheon", say "You wait for the second water tower, as instructed. Mr Punch opens the hamper, lays a napkin on your knee, and stands at your elbow while you eat an egg. \"Will there be anything further, sir?\" There is the other egg. You have dined on a train. You sit up straighter for a mile." },
      } },
    { name = "the window",
      description = "A drop sash on a leather strap, down as far as it goes. The country goes by at the speed of a horse that is thinking of something else.",
      things = {
        { name = "the last tree", description = "A thorn, alone, with a fence round it and a painted board: {i}LAST TREE. THE COMPANY ACCEPTS NO RESPONSIBILITY FOR SHADE BEYOND THIS POINT.{/} A goat is standing in its shadow, very exactly." },
        { name = "the water towers", description = "Three iron tanks on legs, an hour apart, each with a windmill that turns when the train passes and at no other time. They were filled once, when the line opened. The engine has been making it last." },
        { name = "the telegraph poles", description = "They march beside the track with one wire between them. At Mile Sixty the wire stops, and the poles go on for another mile without it, out of loyalty." },
        { name = "a gazelle", description = "Keeping pace, a little way off, not trying. It looks into the carriage as it runs. It has seen the Express every day of its life and has still not worked out what the thing is hunting." },
      },
      actions = {
        { "Put your head out", say "Heat, cinders, and a wind like a dry towel. Ahead the two rails run dead straight to a point, and the point shakes. Behind, the same. You are the only thing in the Parch that is going anywhere and you are doing it at eleven miles an hour." },
      } },
    { name = "the engine",
      description = "A small green tank engine called {i}Sufficient{/}, built at Tickover and never altogether forgiven for leaving. She pulls from the front going out and pushes from the back coming home, there being nowhere at the far end to turn round.",
      things = {
        { name = "the driver", description = "Mrs Cinder, with her elbow on the cab side and her eyes shut. She drives by the sound. She says that there are only two things on the line to hit, and one of them is the end." },
        { name = "the name plate", description = "Brass, on the tank: {i}SUFFICIENT{/}. There was a sister engine, {i}Ample{/}. She was kept back for Phase Two, and is in a shed in Tickover with a sheet over her, waiting." },
        { name = "the cow-catcher", description = "An iron grid on the front, for cows. There are no cows. It has caught, over the years, a great deal of sand, one hat, and a tortoise, which was let off at the next stop and thanked the driver." },
      },
      actions = {
        { "Ask to blow the whistle", say "Mrs Cinder opens one eye. She moves her elbow. You pull the cord and {i}Sufficient{/} screams at the whole empty desert. Nothing answers. \"There,\" she says. \"Now it knows we're coming.\" She shuts the eye." },
      } },
    { name = "the guard's van",
      description = "A box on wheels at the back, with a stove, a kettle, a red flag, a green flag, and a chair that leans.",
      things = {
        { name = "the stove", description = "Lit. In this heat. It is in the regulations, and the regulations were written in Tickover in a wet March." },
        { name = "the mail bag", description = "One canvas sack for the whole Parch. Four letters, a seed catalogue, and a parcel from the Collegium marked {i}SPECIMEN JARS. EMPTY. PLEASE FILL AND RETURN.{/}" },
        { name = "the flags", description = "The green one is as new as the day it was issued. The red one is faded nearly pink. That tells you what kind of railway it is." },
      } },
    { name = "the other passenger",
      description = "A very small old woman in a great many shawls, at the far end, with a basket on her knee. She got on at a halt that had no platform and no name and nothing round it as far as you could see.",
      things = {
        { name = "her basket", description = "Covered with a cloth. Something inside it is ticking. She sees you looking and moves the cloth: a hen, and under the hen, a clock. \"For my grandson,\" she says. You do not ask which." },
        { name = "her ticket", description = "Tucked in her shawl. It is the black one, the one that Miss Dollop does not issue. The old woman has had it punched so many times that it is mostly holes." },
      },
      actions = {
        { "Ask where she is going", say "\"Home,\" she says. You ask where that is. She points out of the window at the plain, flat to the edge of the sky, with nothing on it. \"You'll see it,\" she says, \"when you've been here a bit. It takes the eyes a while.\" She gets off, later, at nothing, and walks away into it at a good pace." },
      } },
    { name = "the mile posts",
      description = "White boards beside the track, counting up from Tickover. You begin to wait for them. By Mile Thirty you have opinions about the painting of the numerals.",
      things = {
        { name = "Mile Forty", description = "On a bend. The only bend. The surveyor sneezed. This is where the soup was lost." },
        { name = "Mile Sixty One", description = "The last. Somebody has added, underneath, in tar: {i}AND THE REST{/}." },
      } },
    { name = "the heat",
      description = "It comes on at about Mile Twenty, like a hand laid flat on the roof. By Mile Fifty the varnish smells of toffee and the brass of the rack is too hot to touch, and the conductor has undone nothing.",
      actions = {
        { "Fan yourself with the ticket", say "It moves the hot air on your left to your right and brings the hot air on your right round to the left. Mr Punch watches with professional interest. \"Most find it helps to sit still and resent it, sir,\" he says." },
      } },
    { name = "the timetable in a frame",
      description = "Screwed to the bulkhead. {i}DEP. TICKOVER (GATE) :04. ARR. THE END, WHEN REACHED.{/} A second column, headed {i}PHASE TWO: GREAT SHADE, THE WELLS, THE FAR COAST{/}, has been ruled in neatly and left quite empty.",
      things = {
        { name = "a pencilled note", description = "In the empty column, very small, in a child's hand: {i}soon{/}. The pencil has been gone over in ink by somebody older." },
      } },
  },

  exits = {
    { to = "tk_gate", label = "Back to Tickover", description = "Sufficient pushes you home backwards, the whole way, and gets you in four minutes late to the second." },
    { to = "pa_railhead", label = "The end of the line", description = "Two blasts on the whistle, a long squeal, and the buffers. Mr Punch opens the door on to a great deal of light." },
  },
}

space {
  id = "pa_railhead",
  region = "parch",
  name = "Budget's End",
  description = "The line stops. There is no town to stop at and no reason you can see: the two rails come out across the flat, bright as wire, reach a pair of buffers, and that is all. The money ran out here, at twenty past eleven on a Tuesday, and the gang put down their hammers where they stood. There is a platform one carriage long. There is a station the size of a wardrobe. Beyond the buffers the desert begins in earnest and goes on, the colour of a lion, as far as there is anywhere.",
  backdrop = {
    "                           ·    ",
    "                    ▄▄          ",
    "  ══════════════════██  ˙       ",
    "▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▂▂▃▃▂▂▁▁",
  },

  things = {
    { name = "the buffers",
      description = "Two sprung plates on a frame of sleepers, facing east. They match the pair in the field outside Tickover. Between those and these there are sixty one miles of railway. Nothing has ever hit either set.",
      things = {
        { name = "the brass plate", description = "Bolted to the cross beam and polished weekly: {i}PHASE TWO WILL COMMENCE FROM THIS POINT. THE TICKOVER AND FAR COAST RAILWAY COMPANY.{/} It has no date on it. The engraver was told to leave room." },
        { name = "the sand against them", description = "The dune has come up to the buffers and stopped, level with the top, in a clean curve. It has been there as long as anybody has looked. It is waiting to see what the railway does." },
      },
      actions = {
        { "Lean on them and look east", say "Sand, then more sand of a different shape, then a line where the sand becomes sky and both of them wobble. No rails. You can see how far the Company meant to go. You find that you are on the Company's side." },
      } },
    { name = "where the rails stop",
      wonder = true,
      icon = "═",
      description = "You walk round the buffers to see. The iron ends square, cut with a saw. And past the ends, for as far as your eyes will carry, two straight lines go on over the sand: not rails, only the shadow of where rails would be, a little darker, a little firmer, exactly the gauge. {magic}Nothing has been laid there and nothing has drifted over it in forty years.{/} The dunes on either side have kept off, the way a crowd keeps off a path that somebody is going to need.",
      things = {
        { name = "the two lines", description = "You crouch. The sand in them is packed as if something heavy had gone over it, often. There is no track in it. There is not a mark." },
        { name = "a sleeper", description = "One, laid across the lines a few yards out, alone, grey with weather. The gang put it down as their last act that Tuesday. Every year the stationmaster walks out and turns it over, so that it will wear evenly." },
      },
      actions = {
        { "Walk a little way along it", say "It is easier going than the sand beside it. You go a hundred yards between the two dark lines and stop, for no reason. You look down. You have stopped exactly where a station would be. Your feet seem to have known the timetable." },
      } },
    { name = "the stationmaster",
      icon = "☺",
      description = "Mr Ezra Halt, in a cap with gold on it, sitting on a trunk in the shade of his station, which he has to share with the station. He was appointed to Budget's End for a fortnight, until Phase Two. That was the spring he was twenty.",
      things = {
        { name = "his cap", description = "{i}STATIONMASTER{/} in gold wire, kept in a tin at night against the sand. He puts it on for the train and takes it off after, and in between he is a man on a trunk." },
        { name = "his trunk", description = "Packed. It has been packed for forty years, for the posting further up the line. He takes out one clean collar a week and puts one back." },
        { name = "his flag", description = "Green. He has a red one somewhere. He has never had occasion to tell a train not to come." },
      },
      actions = {
        { "Ask about Phase Two", say "\"Any day,\" says Mr Halt. \"There was a letter.\" You ask when. \"The spring I came.\" He looks east along the two dark lines in the sand. \"They keep the way clear, you notice. Somebody means to use it. I shouldn't like them to arrive and find nobody to take the tickets.\"" },
        { "Ask what there is to do here", say "\"One train in. One train out. In between I sweep the platform.\" You look at the platform. It is deep in sand. \"Oh, not successfully,\" he says." },
        { "Ask the way to anywhere", say "He points along a line of white stones leading off south of east. \"The Long Wait. A mile. Follow the stones. If you can't see the next stone, stand still and it will occur to you.\"" },
      } },
    { name = "the station",
      description = "A wooden box with a pitched roof, a ticket window and a door, big enough for one man standing or one man asleep and not for both. It was sent out flat on a wagon, with instructions.",
      things = {
        { name = "the ticket window", description = "A brass grille and a slot. Behind it is a rack of tickets, printed in advance for Phase Two: {i}GREAT SHADE{/}, {i}THE WELLS{/}, {i}THE FAR COAST{/}. They have gone the colour of tea." },
        { name = "the station clock", description = "It has a face on each side, one for the platform and one for the desert. The platform side keeps Tickover time. The desert side has no hands. Mr Halt says that it came like that and that he has stopped thinking it was a mistake." },
        { name = "the waiting room", description = "A bench outside under the eave, in a strip of shade a foot wide. At noon the shade is under the bench. At noon you may wait under the bench." },
        { name = "the lamp", description = "A signal lamp on the gable, lit at dusk and turned to face east, in case." },
      } },
    { name = "the tools",
      description = "Where the gang put them down: a row of sledgehammers, a spike barrel, a rail gauge, a tea can. They are laid out as they fell, and somebody has since tidied them without moving any of them.",
      things = {
        { name = "the hammers", description = "Eleven, heads to the east, hafts silver with sun. The twelfth man took his home. He has been written to." },
        { name = "the spike barrel", description = "Half full of iron spikes, each one counted, with the number chalked on the stave: {i}2,406{/}. It is the most heavily audited object in the Parch." },
        { name = "the tea can", description = "Black. There is a ring of dry leaves in the bottom, forty years old, and a spoon. Whoever was making the tea heard the news half way through." },
      },
      actions = {
        { "Pick up a hammer", say "You heft one. It is heavier than a sword and better balanced than any sword you have held. You take a practice swing at nothing, and Mr Halt, on his trunk, looks up so quickly, and with such hope, that you put it down again very gently." },
      } },
    { name = "the platform",
      description = "Thirty feet of planks on trestles, with a white line along the edge and a name board at each end. The sand comes up through the gaps from underneath, a little at a time.",
      things = {
        { name = "the name board", description = "{place}BUDGET'S END{/}, painted by the gang on the back of a crate lid as a joke on their last night. The Company's official board says {i}TEMPORARY TERMINUS{/} and is underneath it, holding it up." },
        { name = "a broom", description = "Worn to a stump on one side. There is a clean patch of platform exactly one broom wide and six feet long, in front of the ticket window, and the desert has the rest." },
        { name = "a luggage trolley", description = "Two wheels and a handle. On it is a crate of tea with a small tree stencilled on the side, come up from the south, going north. The Parch drinks none of it. It is only on the way." },
      } },
    { name = "the water tank",
      description = "Iron, on four legs, with a canvas hose and a windmill on top that turns in no wind at all. It fills the engine once a day from a well that the gang dug before anything else.",
      things = {
        { name = "the windmill", description = "Eight tin sails. It goes round when the train is due and stops when it has gone, and Mr Halt says that it is the heat coming off the rails. He says it as a man does who settled the matter with himself years ago." },
        { name = "a lizard under the tank", description = "Flat, sand coloured, in the only puddle for sixty miles, with its eyes shut. It is the richest animal in the desert, and you can see from its face that it knows." },
      },
      actions = {
        { "Stand under the drip", say "One drop every ten heartbeats, on the back of your neck. You stand there for some time. The lizard opens an eye, measures you, and moves over about half an inch. You gather that this is generous." },
      } },
    { name = "the surveyor's pegs",
      description = "A line of short white stakes going on from the buffers, east, one every chain, each with a red rag. The surveyor went on ahead of the gang and was never told to stop.",
      things = {
        { name = "the nearest peg", description = "Numbered in tar: {i}1{/}. The rag is new. Somebody is renewing the rags." },
        { name = "the furthest peg you can see", description = "A white dot with a red dot on it, a long way out, and you think there is another beyond that, or it may be your eyes. It is said that he reached the Far Coast and is standing there with the last peg in his hand, waiting for the hammer." },
      } },
    { name = "the line of white stones",
      description = "Fist sized, limewashed, a stride apart, leading away to the south of east over a low rise. This is the road. All the roads in the Parch are like this: somebody's patience, laid end to end.",
      things = {
        { name = "one stone out of line", description = "A yard to the left of the rest. You nudge it back with your boot. A beetle, underneath, looks up at you in the light, and you nudge the stone out of line again and apologise." },
      } },
    { name = "a camel, unattended",
      icon = "Ω",
      description = "Kneeling in the sun beside the platform with a brass tag on its halter: {i}PROPERTY OF THE LONG WAIT. MEETS ALL TRAINS.{/} It is chewing. It watches the train come in as you might watch a neighbour's washing.",
      actions = {
        { "Say good morning", say "The camel stops chewing. It looks at you from the boots up, without hurry. It reaches the hat. It begins to chew again. You have been met." },
      } },
    { name = "the sky",
      description = "Nothing in it. No cloud, no bird, no edge. It is a blue so even that your eye slides off it, and the sun is not so much in it as behind all of it at once.",
      things = {
        { name = "the silence", description = "When the engine stops ticking there is none of the small noise you had never noticed: no leaf, no water, no fly. You can hear the sand settle on the platform. You can hear your own collar." },
      } },
  },

  exits = {
    { to = "pa_train", label = "The Desert Express", description = "She is standing at the platform with steam up, facing the wrong way, ready to push." },
    { to = "pa_caravanserai", label = "Along the white stones", description = "A mile of stones, one stride apart, over a rise and down to four walls and a gate." },
  },
}
