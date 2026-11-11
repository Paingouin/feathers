-- Head Office: Customer Experience (formerly Torments), the furnaces, and what the stokers grow.

space {
  id = "ho_customer_experience",
  region = "head_office",
  name = "Customer Experience",
  description = "A vaulted cellar of black iron, hung with chains, lit from below. It was built as the Department of Torments, by people who meant it. Then there was a reorganisation. The chains are still up, since nobody had a budget to take them down, but each now has a hanging basket on it. There is a rug. There is a counter with a bell and a devil in a soft collar, who asks how your visit has been so far, on a scale of one to nine.",
  palette = { bg = "#0c0a0e", text = "#d6cedc", dim = "#746a7c", accent = "#d06a8c", border = "#4c2c40" },
  ambience = {
    embers { glyphs = "·˙", colors = { "#902848", "#d06a8c" }, rate = 0.05 },
    drip { glyphs = "⠁⠂⠄", color = "#5a4660", rate = 0.1 },
  },

  things = {
    { name = "the Experience Officer",
      key = "ho_experience_officer",
      icon = "☻",
      description = "Mr Wrack. Eight feet tall, plated like a lobster, with a brow you could shelter under and hands made for one trade. He wears a soft collar and a badge that says {i}Here to Help{/}. He was Chief Tormentor for four thousand years. He has been on three courses.",
      things = {
        { name = "his badge", description = "{i}Here to Help. Ask me how.{/} It is pinned straight through the plating. He says he did not feel it." },
        { name = "his hands", description = "Each finger ends in a different instrument. He keeps them folded. When he gets flustered one of them opens out into a set of pincers and he has to shut it with the other hand." },
        { name = "his crib sheet", description = "Under the counter, much thumbed. {i}1. Smile. 2. Not like that. 3. Ask an open question. 4. Do not loom.{/} Number four is underlined until the paper has torn." },
      },
      actions = {
        { "Rate your visit", say "\"On a scale of one to nine,\" says Mr Wrack, with a pencil the size of a fence post, \"nine being the worst.\" He hears himself. \"The best. Nine being the best. They changed it.\" You say seven. He writes it down with enormous care and looks at it. \"Seven,\" he says. \"I never got a seven in the old job. You only ever got screams, and you couldn't tell if they were pleased.\"" },
        { "Ask whether he misses it", say "He folds his hands tighter. \"We are not to say. It was a different time.\" A pause. \"It never worked, you know. That was the finding. Four thousand years, and not one of them came out a better customer. They only got to dislike us.\" He straightens the bell. \"I do miss the rack. I was good with the rack. I've made it into a trellis.\"" },
        { "File form 9b", say "You say you have a complaint regarding form nine. Mr Wrack goes the grey of a cold stove. \"A nine-b. In person. At the bottom.\" He finds the pad, blows off the dust, and takes down every word. The form was confusing. The third copy was too faint. He reads it back, stamps it {i}UPHELD{/}, and shakes your hand with two fingers, carefully. \"We shall do better,\" he says, and you believe him, which is the frightening part." },
      } },

    { name = "the chains",
      description = "Dozens, as thick as your wrist, hanging from rings in the vault. Each ends in a manacle, and in each manacle sits a wire basket of trailing ferns.",
      things = {
        { name = "a hanging basket", description = "Maidenhair, doing nicely in the damp. A label on the manacle: {i}Water Fridays. Do not rattle.{/}" },
        { name = "a chain that still swings", description = "Very slightly, on its own, to and fro. Mr Wrack sees you looking. \"Habit,\" he says. \"It'll settle. It's only been six hundred years.\"" },
      },
      actions = {
        { "Rattle a chain", say "It clanks, deep and dreadful, and the sound goes round and round the vault. A fern drops a frond. Mr Wrack closes his eyes for a moment with an expression of the purest homesickness, and then says, quite gently, \"Please don't.\"" },
      } },

    { name = "the rack",
      description = "A frame of black oak with a windlass at each end and a bed of rollers. It stands against the wall now, upright, and sweet peas are growing up it in six colours.",
      things = {
        { name = "the sweet peas", description = "They have reached the upper windlass and are starting on the ratchet. The scent is strong enough to notice from the lift." },
        { name = "the windlass handle", description = "Worn smooth and dark with four thousand years of one palm. Tied to it now is a small green watering can." },
      } },

    { name = "the iron maiden",
      description = "She stands by the counter with her door ajar: a coffin of iron shaped like a stern lady, lined with spikes. Hats hang on the spikes. Underneath, in the foot of her, are the umbrellas.",
      things = {
        { name = "the spikes", description = "Each has had a cork pushed on the end. The corks are not all the same size. They have been collected over time, from the canteen." },
        { name = "her face", description = "Cast with a frown. Somebody on the second course has tried to file the corners of the mouth upward. She now looks like a stern lady who has been told a joke in church." },
      },
      actions = {
        { "Hang up your hat", say "You have not got a hat. You hang up your satchel instead. Mr Wrack gives you a brass tag with a number on it, and tells you twice not to lose it, and you see that the tag is what he is proudest of in the whole department." },
      } },

    { name = "the feedback wall",
      description = "A cork board, six yards long, with the heading {i}YOU SAID, WE DID{/}.",
      things = {
        { name = "the left column", description = "{i}You said: Aaaaargh.{/} This entry appears four hundred times, in different hands." },
        { name = "the right column", description = "{i}We did: stopped.{/} Once, at the top, with a tick." },
        { name = "a card pinned at the bottom", description = "{i}You said: the pit of snakes was cold. We did: the snakes now have a heated shelf.{/} It is signed by all the snakes, with a mark each." },
      } },

    { name = "the pit of snakes",
      description = "A round pit in the floor with a rail. It is full of snakes. They are on a heated shelf, in a heap, asleep, and each has a small knitted tube.",
      things = {
        { name = "the knitted tubes", description = "Striped. Mrs Scorch, in Temptation, does them in meetings. There are four hundred snakes and she is on her second time round." },
        { name = "the largest snake", description = "As thick as a bolster, with its chin on the rail. It opens one eye at you, yellow, considers you as a meal, and closes it again. It has had its dinner. They all get dinner now. Nobody has fallen in for an age." },
      },
      actions = {
        { "Lean over the rail", say "Four hundred heads come up together with a noise like a kettle. Then they see you have not brought anything, and four hundred heads go down again, and the heap resettles with a sigh." },
      } },

    { name = "the eternal boulder",
      wonder = true,
      description = "In an alcove at the back there is a slope of rock, and at the top of the slope a round boulder as tall as a man, at rest. You know the story. A man was set to roll it up, and every evening it rolled down, for ever. He got it to the top the week they closed the department. It stayed. Nobody has ever understood why. They let him go, and before he went he came back with a chisel, and cut one line into the stone at the height of his own two hands. {i}IT WAS HEAVY AND I DID IT.{/} The rock is worn in two smooth hollows beside the words, where his palms went, every day of an age. You put your hands in them. They fit anyone.",
      things = {
        { name = "the slope", description = "Polished like a slide, with a groove down the middle where the boulder came back. At the bottom there is a dip worn by one pair of feet turning round." },
        { name = "a wedge under the boulder", description = "A small oak wedge. Mr Wrack put it there himself, the first night, on his own time, in case. He has never told anyone and it has never been needed." },
        { name = "a pair of sandals", description = "Left at the foot of the slope, side by side. He went home barefoot. He said he would not be wanting them, he was only going to walk on the flat." },
      } },

    { name = "the waiting bench",
      description = "A bench of nails, points upward, with a long cushion on it in a floral print.",
      things = {
        { name = "the cushion", description = "Three inches of horsehair. Through it, if you sit carefully, you can feel nothing at all, which is the idea, and a matter of some pride." },
      },
      actions = {
        { "Sit on the bench", say "You lower yourself by inches. It is soft. It is perfectly, entirely soft. You sit there on four hundred nails feeling like a king, and Mr Wrack watches your face the whole time with his pencil ready, hoping for an eight." },
      } },

    { name = "the leaflet stand",
      description = "A wire rack of folded leaflets.",
      things = {
        { name = "a leaflet", description = "{i}Your Eternity And You.{/} There is a drawing of a devil and a soul shaking hands. They both look surprised." },
        { name = "another leaflet", description = "{i}Was It Something We Did? A short questionnaire.{/} Question one is {i}Yes / No{/}. There is no question two." },
      } },

    { name = "the brazier",
      description = "An iron basket of coals on a tripod, with a rack of irons beside it. A toasting fork has joined the irons, and there is a plate of crumpets on the hob.",
      actions = {
        { "Toast a crumpet", say "Mr Wrack hands you an iron that was forged for another purpose altogether and has a crumpet on it. It toasts beautifully. He produces butter. You eat a hot buttered crumpet in the torture chamber of the damned, and he asks, hopefully, whether that would bring the seven up." },
      } },

    { name = "the notice of reorganisation",
      description = "Framed by the lift. {i}With effect from the first of the month, Torments ceases. Staff are thanked for their long service and will be retrained. It has been found that suffering does not improve the figures. The Board wishes it had looked at the figures sooner.{/}" },
  },

  exits = {
    { to = "ho_lift", label = "The lift", description = "Mr Wrack holds the door, at arm's length, so as not to loom." },
  },
}

space {
  id = "ho_furnaces",
  region = "head_office",
  name = "The Works",
  description = "Heat like a hand on your face. A hall of brick as long as a street, and down both sides of it the furnace doors, forty to a side, each with a fire behind it the colour of a sunset. Stokers go between them with barrows. This is the fire of the bad place, the one in all the sermons, and you look everywhere for what it is burning. It is burning coke. It heats the offices. A great many pipes go up through the roof to a great many radiators, and that, the foreman tells you, is the whole of it, and always was.",
  palette = { bg = "#140806", text = "#ecd4bc", dim = "#8c6248", accent = "#ff8a30", border = "#703018" },
  ambience = {
    embers { glyphs = "∙·˙✦", colors = { "#e04810", "#ff9030", "#ffd070" }, rate = 0.3 },
    flicker { color = "#ff7020", strength = 0.3 },
    steam { glyphs = "˙·", color = "#5c4038", rate = 0.2 },
  },

  things = {
    { name = "the foreman",
      key = "ho_foreman",
      icon = "☻",
      description = "Clinker. Broad as a door, black to the eyes, in a leather apron with a shovel over his shoulder like a rifle. He has run the Works since the first fire was lit, and he talks about the offices upstairs the way a ship's engineer talks about the passengers.",
      things = {
        { name = "his shovel", description = "The blade is worn to a crescent. The shaft is new. \"Same shovel,\" he says, before you can open your mouth." },
        { name = "his apron", description = "Scorched in the pattern of every door on the row. He can tell you which burn is which furnace. He has names for the furnaces." },
        { name = "his eyebrows", description = "He has not got any. He says they are overrated and that he had them once and could never see what they were for." },
      },
      actions = {
        { "Ask what the fires are for", say "\"Heating.\" He waits for you to say the rest. You say it. He laughs until he has to lean on the shovel. \"Burn people? In my fires? Have you any idea what that does to a grate? No. No, they tried it once, upstairs, for the look of the thing. It clogged the flues and it stank and it wasn't even warm. I told them. Coke, I said, or I walk.\"" },
        { "Ask where the ash goes", when = no(flag "ho_garden_open"), set "ho_garden_open",
          say "Clinker looks at you sidelong. Then he looks up the hall and down the hall. \"You asked about the ash,\" he says. \"Nobody from upstairs ever asked about the ash. Forty barrows a day and they think it goes nowhere.\" He jerks his head at a low iron door behind the last furnace. \"Go and see. Shut it after you. And if anybody in a collar asks, it's a clinker store.\"" },
        { "Ask where the ash goes", when = flag "ho_garden_open", say "\"You've seen where,\" says Clinker. \"Did you try a tomato? Try a tomato.\"" },
      } },

    { name = "the furnace called Old Faithful",
      wonder = true,
      description = "The first door on the left is bigger than the others and its brick is older, black and glazed like a pot. Clinker opens it for you with a hook. You had braced for something cruel. Inside is a bed of fire the size of a threshing floor, white at the heart, gold at the edges, breathing slowly. It was the first thing lit down here and it has not been out since. Every other fire on the row was started with a shovelful from this one. Every lamp upstairs, every urn, the nine red globes in the hall: all of them are this fire, carried somewhere. The stokers take their caps off to it in the morning. You find that you have taken off yours.",
      things = {
        { name = "the heart of the fire", description = "You cannot look straight at it. Out of the corner of your eye it is not white but every colour, the way a soap bubble is." },
        { name = "the fire door", description = "Cast iron, a foot thick, with a motto raised in the metal: {i}KEEP IT IN.{/} The hinge side has a line of small notches, one for each foreman. There is one notch." },
        { name = "a kettle on a hook", description = "Hung just inside the door on a long iron arm. The stokers' own. They would not think of boiling water on any of the others." },
      },
      actions = {
        { "Warm your hands", say "You hold them out. The heat goes up your sleeves and into your shoulders, down into the old wet of every ditch you ever slept in. You stand there some time. \"Everybody does that,\" says Clinker. \"Devils and all. It's only a fire. It's a good one, though.\"" },
      } },

    { name = "the row of furnaces",
      description = "Seventy-nine more, in two ranks. Each has a brass plate with a number, and each number has a name chalked under it.",
      things = {
        { name = "the furnace called Auntie", description = "Number nine. She smokes. She has always smoked. They have relined her twice and she smokes, and they have stopped taking it personally." },
        { name = "the furnace called the Director", description = "Number thirty. It makes a great deal of noise and gives out very little heat." },
        { name = "a furnace that is out", description = "Number sixty-one, cold, with its door open and a stoker's boots sticking out of it. He is inside, with a brush, doing the flue. He is singing. It sounds well in there." },
      } },

    { name = "the stokers",
      description = "A gang of forty, bare-armed, the colour of the brick, with barrows and shovels. They work a shift of exactly eight hours. Nobody has ever managed to make them work nine.",
      things = {
        { name = "a stoker with a barrow", description = "Coke in, ash out. He does a little skip at the turn by number twelve, where the floor dips. He has done it every trip for longer than the floor has dipped." },
        { name = "the stokers' union card", description = "Pinned over the tool rack, framed, behind glass. {i}Amalgamated Brotherhood of Firemen and Rakers. Motto: Without us, they are a cold cellar with opinions.{/}" },
        { name = "the tea can", description = "A tin can on a wire, black as a boot. It goes round at the half shift. Clinker drinks first, and then it goes by age, and the argument over who is older has been running since the second fire." },
      },
      actions = {
        { "Offer to wheel a barrow", say "They let you. It weighs what a pony weighs. You get it to number four, on willpower, and tip it more or less into the door. Forty stokers lean on forty shovels and give you a slow round of applause, and one of them chalks your name under the furnace. It is still there when you leave." },
      } },

    { name = "the coke heap",
      description = "A grey hill at the end of the hall, coming down a chute from above.",
      things = {
        { name = "the chute", description = "It comes down through the roof. You ask where the coke is from. \"Dwarves,\" says a stoker. \"Up top. Best there is. They don't ask what it's for and we pay on the nail.\"" },
        { name = "a delivery note", description = "Spiked on a nail. {i}Forty ton, best hard. Far Enough Colliery. Deliver to: Below. Sign here.{/} It is signed, in soot, with a thumb." },
      } },

    { name = "the pipes",
      description = "They leave the top of every furnace, as thick as tree trunks, and go up into the roof in a forest. They tick as they warm.",
      things = {
        { name = "the brass labels", description = "Each pipe has one, wired on. {i}Reception. Contracts. Canteen (urns). Executive Floor (towel rails).{/}" },
        { name = "a pipe with a lagging of red cloth", description = "It is wrapped in what turns out to be a great many old scarves. The label says {i}Small Print{/}. \"He feels the cold,\" says Clinker. \"Little fellow. Sits still all day. We keep him on the warm side.\"" },
        { name = "the main valve", description = "A wheel as big as a mill wheel. It has been at the same setting since it was fitted. A tag: {i}Comfortable. Leave it.{/}" },
      } },

    { name = "the low iron door",
      key = "ho_ash_door",
      description = "Behind the last furnace on the right: a door you would have to stoop for, painted black, with {i}CLINKER STORE{/} stencilled on it. There is a worn track in the brick floor leading up to it, of the width of one barrow wheel.",
      variants = {
        { when = flag "ho_garden_open", description = "Behind the last furnace on the right: a low black door stencilled {i}CLINKER STORE{/}. It is on the latch. A thread of green light shows underneath, and a smell comes through that has no business here at all." },
      } },

    { name = "the pyrometer",
      description = "A dial as big as a clock face on the end wall, with a needle. The scale runs: {i}Chilly. Fair. Comfortable. Warm. Too Much. Sermon.{/} The needle is at Comfortable and has worn a groove in the dial there." },

    { name = "the shift whistle",
      description = "A brass steam whistle on a pipe, with a chain.",
      actions = {
        { "Pull the chain", say "A shriek that takes the top off your head. Forty stokers put down forty shovels in one motion and walk towards the door. Clinker looks at the clock, looks at you, and blows it again himself, twice, which means {i}as you were{/}. \"Don't,\" he says. \"They'll hold me to that.\"" },
      } },

    { name = "the old brand",
      description = "On the end wall, above the pyrometer, hangs an iron brand on a long handle, of the sort used for marking the damned in pictures. It is furred with rust. Under it, in chalk: {i}Never used. It kept going out.{/}" },

    { name = "a pair of singed slippers",
      description = "By the lift door, on a mat. Visitors from the offices are meant to change into them. They are very small and have a director's crest. They have been here, unclaimed, since his one visit." },
  },

  exits = {
    { to = "ho_lift", label = "The lift", description = "The doors are almost too hot to touch. Scuttle opens them with his sleeve." },
    { to = "ho_garden", label = "The low iron door",
      description = "Stoop under the stencil that says CLINKER STORE.",
      requires = flag "ho_garden_open", hidden = true },
  },
}

space {
  id = "ho_garden",
  region = "head_office",
  secret = true,
  wonder = true,
  name = "The Stokers' Garden",
  description = "You come through the low door into green. A cave behind the furnace wall, long and high, with the backs of the fire bricks glowing along one side like a row of low suns. Under them, in beds of black ash, things are growing. Tomatoes on canes, as red as the doors. Beans. Marrows the size of piglets. A vine has gone right up the rock and across the roof and hangs down in bunches. It is as warm as July, and it is damp, and it smells of leaves, and there is not a devil in the building above the rank of stoker who knows it is here.",
  palette = { bg = "#0a0e08", text = "#d6e0c4", dim = "#6c7c58", accent = "#f06838", border = "#3c5428" },
  ambience = {
    fireflies { glyphs = "·˙∙", colors = { "#ffb060", "#f0e080" }, rate = 0.12 },
    steam { glyphs = "˙·", color = "#4a5a40", rate = 0.2 },
    drip { glyphs = "⠁⠂", color = "#5a7a50", rate = 0.08 },
  },

  things = {
    { name = "the gardener",
      key = "ho_gardener",
      icon = "☻",
      description = "Old Cinders, who is too stiff for the barrows now. He is bent nearly double, with a face like a baked apple and a sacking apron full of twine. He started this with one tomato seed that came down in a visitor's turn-up, eleven visitors ago, and he has never been as wicked since as a devil ought.",
      things = {
        { name = "his twine", description = "In every pocket, in lengths. He ties things up as he talks to you, without looking. By the end you have a bow on one sleeve." },
        { name = "his knees", description = "Padded with two squares of old carpet from the Executive Floor. \"Best pile there is,\" he says. \"They throw it out when a Director's walked on it wrong.\"" },
        { name = "his seed tin", description = "A tobacco tin, rattling. He opens it for you. Every seed has come down by accident: in a cuff, in a hem, in the mud on a tempter's boot. He has a plum stone he is saving for when he feels lucky." },
      },
      actions = {
        { "Ask about the fork", when = no(item "ho_first_fork"), give "ho_first_fork", fx "sparkle",
          say "\"That?\" He straightens as far as he goes. \"That's the Original. Carried in front of the Host, that was. Shook at saints.\" He pulls it out of the compost with a suck. \"Hay fork. Always was. Some farmer left it in a field and the Host hadn't anything to wave. Six hundred year I've had it. Take it.\" You protest. \"Take it, I've a trowel. It wants to be seen by somebody. It was made for a parade, when all's said, and all it gets down here is marrows.\"" },
        { "Ask how anything grows here", say "\"Ash,\" says Cinders. \"Best feed in the world, ash. And the warm off the bricks, and the drip from the pipes.\" He looks down the beds. \"And nobody telling it not to. Upstairs they've a rule for everything. Nobody ever thought to make one against tomatoes, since there weren't any. So there's no rule, and they come up.\"" },
        { "Try a tomato", say "He picks you one, warm from the wall, and wipes it on his apron, which does not improve it. You bite. It is the best tomato you have ever eaten. It tastes of a summer you were not at. \"I know,\" says Cinders, watching your face. \"I think it's being so far from where they belong. They try harder.\"" },
      } },

    { name = "the glowing wall",
      description = "The back of the furnaces: eighty squares of fire brick, each the size of a barn door, each shining dull orange from the fire on the other side. The beds are laid out in front of them according to who likes what.",
      things = {
        { name = "the back of Old Faithful", description = "Brighter than the rest, nearly gold. The vine is rooted at the foot of it, and has been allowed to climb where it likes." },
        { name = "the back of Auntie", description = "It has a sooty bloom on it. Mushrooms are grown here, in trays, by a stoker who does not hold with sunlight." },
        { name = "the back of number sixty-one", description = "Dark and cool today, since the fire is out for sweeping. Somebody has stood the lettuces in front of it, for a holiday." },
      } },

    { name = "the tomato beds",
      description = "Six long rows on canes, heavy with fruit at every stage from green to nearly black.",
      things = {
        { name = "a truss of tomatoes", description = "Nine on the one stem, like a string of lamps. The largest has a little paper collar: {i}Do not pick. Show.{/}" },
        { name = "the canes", description = "Not cane. Old pitchfork shafts, toasting forks, and the handles of a number of instruments from the department that was closed. Mr Wrack sends them down. He does not ask what for." },
        { name = "a row of pots on a plank", description = "Seedlings, each with a label in a stoker's fist: {i}Big Red. Bigger Red. Mother's. The Director (sour).{/}" },
      } },

    { name = "the vine",
      description = "As thick as a leg at the root. It goes up the rock, over the roof, and down the far side, and the grapes hang from it in black bunches through the steam.",
      things = {
        { name = "a bunch of grapes", description = "Dusty black, tight, cool in the hand in spite of everything. Cinders makes a wine of them. He has forty years of it, in jars, and has never opened one. He says he wants to see how long he can not." },
        { name = "the root", description = "It has cracked the floor and lifted a flagstone. Cinders has put a brick under the flagstone, so that the vine should not have to hold it up alone." },
      } },

    { name = "the marrow bed",
      description = "Under the warmest bricks. Seven marrows, striped, each on its own bed of straw, each the size of a sleeping pig.",
      things = {
        { name = "the biggest marrow", description = "It has a name scratched in its skin when it was small, and the name has grown with it: {i}HUMBERT{/}. Cinders has heard there is a king upstairs who goes in for marrows. He would dearly like to send him this one. He cannot think how to address the label." },
        { name = "a tape measure", description = "Hung on a nail, cloth, in inches. The last yard has been added on in a different cloth." },
      },
      actions = {
        { "Thump the big marrow", say "It gives back a note like a drum. Cinders listens with his head on one side. \"Another week,\" he says. \"I've said another week since the spring. I can't bring myself. Once it's cut, it's only a marrow.\"" },
      } },

    { name = "the compost heap",
      description = "In the corner, steaming gently: ash, peelings from the canteen, a great many shredded memoranda.",
      things = {
        { name = "the shredded memoranda", description = "You can read scraps. {i}...targets for the coming...{/} {i}...must remind all staff...{/} {i}...disappointing...{/} They rot down very well, Cinders says. There is a lot of nourishment in a memorandum, once nobody has to read it." },
        { name = "worms", description = "Red ones, fat. Nobody brought them. They came down by themselves, through nine hundred floors of brick, for the compost. Cinders regards them as colleagues." },
      } },

    { name = "the bench",
      description = "A plank on two upturned buckets, facing the tomatoes. Stokers come and sit here at the half shift with the tea can, and look at things being green.",
      things = {
        { name = "a row of pipes on the plank", description = "Clay pipes, left for next time, each with a mark. One is very small and new. They have let the boy from the flues have one, empty, to hold." },
      },
      actions = {
        { "Sit a while", say "You sit on the plank with your back to the warm bricks. A drip falls. A bean comes loose from its cane, slowly, and feels about for it again. Somewhere far above you are six thousand floors of offices. You cannot hear one of them. You think you have not been anywhere so peaceful since Greenhollow, and you are careful not to think about what that means." },
      } },

    { name = "the water butt",
      description = "A boiler with the top cut off, set under the place where the cold return pipes sweat. It fills a drop at a time. A tin mug floats in it.",
      things = {
        { name = "the tin mug", description = "Stamped on the bottom: {i}PROPERTY OF THE FIRM. NOT TO BE REMOVED FROM CANTEEN.{/}" },
      } },

    { name = "a white flower in a pot",
      description = "On a ledge by itself. Small, five petals, nothing to look at. It is the same as the one in the tub in Reception. Cinders grew it on from a slip, which he took at night, with a table knife, and has felt bad about since. He does not know what it is. He thinks the seed came down in a poet.",
      actions = {
        { "Smell it", say "Almost nothing. A little like rain on a road. Cinders is watching you. \"I know,\" he says. \"I've been smelling that for six hundred year and I can't place it either. But I'd know it anywhere.\"" },
      } },

    { name = "the show bench",
      description = "A trestle with a cloth, and on it, the prize exhibits of the Stokers' Annual Show, with cards.",
      things = {
        { name = "the first prize card", description = "{i}Best Tomato: Cinders.{/} It has been Cinders every year. The stokers held a vote on whether to go on having the category, and it was unanimous that they should." },
        { name = "a cup", description = "A soup tin, polished, with two handles soldered on. Engraved with a nail: {i}FOR GROWING.{/}" },
      } },

    { name = "the low door, from inside",
      description = "On this side nobody has stencilled anything. Somebody has painted it green, with a number, like a front door, and hung a horseshoe over it, the wrong way up, since nobody here knew." },
  },

  exits = {
    { to = "ho_furnaces", label = "The low door", description = "Back out into the roar, and shut it after you." },
  },
}
