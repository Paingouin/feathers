-- The Boiler Hall and what is under it.

space {
  id = "tk_boiler_hall",
  region = "tickover",
  name = "The Boiler Hall",
  description = "A hall of iron ribs and glass as long as a field, and in it, on a bed of brick, the Boiler: one riveted cylinder the size of a beached ship, with a hundred pipes coming off it and going out through the walls to every street in Tickover. The heat meets you at the door like a large friendly dog. Men and women in leather walk about on gantries, reading dials, and the whole place hums one low note.",
  palette = { bg = "#160e0a", text = "#dccab0", dim = "#806650", accent = "#f08a3c", border = "#643a20" },
  ambience = { flicker { color = "#ff8a3c", strength = 0.2 }, steam { glyphs = "˙·∙", color = "#6a5a50", rate = 0.5 }, embers { glyphs = "∙·˙", color = "#e0703a", rate = 0.15 } },

  things = {
    { name = "the Boiler",
      wonder = true,
      icon = "Θ",
      description = "She is called Patience. Two hundred feet of black iron plate, banded and riveted, older than the hall that was built over her. Every engine, tram, lamp spring and kettle in Tickover runs off her steam. {magic}She has never been let go cold, and she has never, the stokers will tell you if the foreman is not about, used as much coal as she ought.{/} The sums have been done many times. She gives more than she is fed. The Guild writes down the difference each year under the heading {i}Goodwill{/}.",
      things = {
        { name = "the rivets", description = "As big as loaves. Each has a number stamped on it and a stoker's name beside the number, three hundred years of them. To have your name on a rivet of Patience is what a stoker gets instead of a pension. They prefer it." },
        { name = "the main gauge",
          description = "A dial as big as a cart wheel, with one black needle. It stands a hair under the red line and has stood there for as long as anyone has looked.",
          things = {
            { name = "the red line", description = "Painted on the glass by the Founder. Nobody knows what happens above it. The dial goes on round, a good way past, and the numbers up there have been left off." },
          } },
        { name = "the safety valve", description = "A brass mushroom on the crown of the boiler with a lead weight on an arm. It lifts on the beat and lets out one puff. That is the thread of white you saw over the city. It is not waste. It is, the stokers say, her breathing out." },
        { name = "the manhole", description = "An oval door in the end plate, bolted with forty nuts, for going inside to scrape her. The nuts are painted over. She does not scale. Nobody has been inside Patience in living memory, and the last man who went in came out and joined the temple." },
      },
      actions = {
        { "Put your hand on the plate", say "A stoker catches your wrist. \"Not there. Here.\" She moves your hand to a patch of iron worn smooth, low down. It is hot, the heat of a loaf just out, no worse. Under your palm the plate lifts and settles. \"Every new stoker does that,\" she says. \"First day. It's so you know who you work for.\"" },
      } },
    { name = "the stokers",
      description = "A dozen on this shift, in leather and clogs, with shovels as broad as tea trays. They work in a line, and swing in time, and sing.",
      things = {
        { name = "Big Sal",
          icon = "☺",
          description = "The shift foreman's opposite number: head stoker, six feet tall, arms like a blacksmith's, with a rivet number tattooed on her wrist. She watches you watching the fire.",
          actions = {
            { "Offer to shovel a turn", when = no(flag "tk_stoked"), set "tk_stoked",
              say "She hands you a shovel without a word. You do twenty. On the twenty first your back makes a remark and she takes the shovel away again, quite gently. \"You threw it short, long and sideways,\" she says. \"But you didn't stop till I stopped you.\" She jerks her head at an iron trap in the floor between the firedoors. \"Stokers only, down there. You've stoked. Go and pay your respects, and don't touch it.\"" },
            { "Ask about the coal", say "\"Dwarves send it. Good black stuff from under the Grumbles, and they count every lump.\" She leans on the shovel. \"We burn half what the books say we should. Don't tell the dwarves. They'd want the other half back.\"" },
            { "Ask what is under the trap", when = flag "tk_stoked", say "\"What we're really stoking,\" says Big Sal. \"Or what's stoking us. I've never been clear which way round it goes.\"" },
          } },
        { name = "the stoking song", description = "Four beats to the swing. The words are a list of the streets, in the order the pipes reach them, so that every shovelful is for somewhere. {i}Escapement, Ratchet, Winders' Row, Pawl Lane where the old men go.{/}" },
        { name = "a new boy", description = "Fourteen, on his first week, with blisters wrapped in rag. He is on the end of the line where it matters least. He is counting under his breath and is the only one out of time." },
        { name = "their clogs", description = "Wood, with iron rims, a pair to each stoker and a rack for them by the door. The floor is too hot for leather. The clogs of dead stokers are not thrown away. They are burnt, in the fire, on a Sunday, with the shift standing by." },
      } },
    { name = "the firedoors",
      description = "Six iron doors along the boiler's belly, each opened by a chain. When one swings back the hall goes orange.",
      things = {
        { name = "the fire", description = "White at the heart, too bright to look at. You look at it. For a while afterward everything you see has a hole in it." },
        { name = "the fourth firedoor", description = "It is kept shut. The stokers feed five and walk past the fourth. There is no fire behind it, Sal says. There does not need to be. It is as hot as the others." },
        { name = "an iron trap in the floor",
          visible_if = flag "tk_stoked",
          description = "A square plate with a ring, between the third firedoor and the fourth. The iron round it is polished by knees." },
      },
      actions = {
        { "Look into the fire", say "A stoker swings a door for you. You look for as long as you can, which is the count of three. When you can see again she is grinning. \"Everybody tries for four,\" she says." },
      } },
    { name = "the coal",
      description = "A black hill at the end of the hall, under a hatch in the roof, with a narrow railway running up it.",
      things = {
        { name = "the coal trucks", description = "Iron tubs on wheels, each chalked with a dwarf rune. The stokers cannot read the runes. They have been told it is the weight. One of them, you happen to know from elsewhere, says {i}short measure, see if they notice{/}." },
        { name = "a fossil in a lump", description = "A fern, perfect, pressed in the black. A stoker has set the lump on a ledge instead of burning it. There is a row of them: ferns, a shell, and one that is the print of a three toed foot, as long as your arm." },
        { name = "the tally man", description = "A clerk on a high stool with an abacus, counting trucks in and shovels out. His two columns have never agreed. He was told on his first day that they would not, and that his task was to be surprised each evening." },
      } },
    { name = "the gantries",
      description = "Iron walkways at three levels, with rails, going round and over the Boiler. The gaugers live up there.",
      things = {
        { name = "a gauger", description = "A woman with a notebook and a pair of spectacles on a stick, going from dial to dial. She taps each glass twice with a fingernail before she reads it. If you ask why, she says the needles like to be woken." },
        { name = "a wall of small gauges",
          description = "One for each street's pipe: two hundred brass dials, each with a name on an ivory tag.",
          things = {
            { name = "the gauge for Ratchet Terrace", description = "Steady. A little flick every so often. That is Mrs Pawl's kettle sitting down." },
            { name = "a gauge with no tag", description = "At the bottom corner. The pipe from it goes straight down through the floor. Its needle does not show pressure going out. It rests against the pin on the wrong side, as if something were coming in." },
          } },
        { name = "the foreman's cabin", description = "A glass box on the top gantry with a desk, a kettle and a brass lever painted red. The foreman is asleep with his feet on the desk. The lever has a label. The label says {i}DON'T{/}." },
      } },
    { name = "the hum",
      description = "One note, low, in the iron and the glass and the soles of your feet. The stokers sing in tune with it without knowing. So do the trams. So, it turns out when you try, do you.",
      actions = {
        { "Hum along", say "You find the note. A gauger on the gantry above you looks down, surprised, and then nods, and for a moment you are part of the machinery of a city, and are paid nothing for it, like everybody else." },
      } },
    { name = "the pipes",
      description = "A hundred of them, lagged in white, leaving the crown of the Boiler like the hair of a goddess in a bad painting, and going out through the walls.",
      things = {
        { name = "the main for Escapement Street", description = "As thick as a tree. It sweats. A cat is asleep on the first bend, and has worn the lagging to the shape of a cat." },
        { name = "a pipe that goes nowhere", description = "It leaves the Boiler, rises twenty feet, and ends in a blank flange with eight bolts. A brass plate says {i}PHASE TWO{/}." },
        { name = "the drain cock", description = "A tap at the lowest point, dripping into a tin bath. The stokers wash in it at shift's end. The water is soft and has a faint sweet smell, of linen, that nobody has accounted for." },
      } },
    { name = "the shift board",
      description = "A slate by the door with three columns of names and a brass clock above it.",
      things = {
        { name = "the names", description = "Sal, Dob, Nan, Little Sal, Other Sal. The new boy is down as {i}?{/}, pending his first rivet." },
        { name = "a line at the bottom", description = "{i}Days since she was let go cold:{/} and then a number with six figures, and a seventh being squeezed in." },
      } },
    { name = "the stokers' shrine",
      description = "A niche in the brick by the coal, with a shovel hung in it, blade up, and a lamp that burns boiler oil.",
      things = {
        { name = "the shovel", description = "The first one. The blade is worn to half its width and bright as a spoon. Under it, cut in the brick: {i}SHE WAS WARM WHEN WE CAME.{/}" },
        { name = "offerings", description = "A lump of best coal with a ribbon on it. A clog iron. A child's drawing of the Boiler with a face: two round eyes, shut." },
      },
      actions = {
        { "Leave something", say "You have a copper, which is spoken for, and lint. You leave the lint. A stoker going past does not laugh. \"She's not proud,\" he says." },
      } },
    { name = "a tea urn",
      description = "A copper urn plumbed straight into a steam pipe, with forty tin mugs on hooks. It is never off the boil.",
      actions = {
        { "Take a mug of tea", say "Black, sweet, and strong enough to shovel with. The mug has a rivet number on the bottom. You have drunk from the mug of rivet 4,471, and somewhere in the plates there is a small round part of Patience that knows about it." },
      } },
    { name = "the glass roof",
      description = "Panes in iron, black with soot on the outside, so that the daylight comes through brown. Where the tall chimney goes up there is a ring of clean glass, kept clean by the heat.",
      things = {
        { name = "the ring of clean glass", description = "You can see straight up the outside of the stack to the sky, and the white thread going up, puff by puff. Between puffs, for a moment, the thread is drawn a little way back down." },
      } },
  },

  exits = {
    { to = "tk_regulator_square", description = "Uphill, out of the heat, to the square." },
    { to = "tk_winders_row", description = "A back lane the fitters use, along the warm wall." },
    { to = "tk_fire_under", label = "The iron trap",
      description = "A plate with a ring between the firedoors, and rungs going down into a red dark.",
      requires = flag "tk_stoked", hidden = true },
  },
}

space {
  id = "tk_fire_under",
  region = "tickover",
  secret = true,
  wonder = true,
  name = "The Fire Under",
  description = "Forty rungs down, under the brick bed of the Boiler, the stokers keep a room that is not on the plans. It is round, and low, and the floor of it is not floor. It is one great slab of dark rock, smooth as a river stone, and it is warm. Not hot: warm, evenly, all over, like bread, like a hand. {magic}Patience was not built to make the heat. She was built on top of it.{/} Nobody lit this. It was here.",
  palette = { bg = "#140a08", text = "#e0ccb8", dim = "#7c5a4c", accent = "#ff9c5a", border = "#5c2c1c" },
  ambience = { shimmer { color = "#ff9c5a", strength = 0.2, speed = 0.15 }, embers { glyphs = "·˙", color = "#c8643c", rate = 0.05 } },

  things = {
    { name = "the warm stone",
      icon = "◎",
      description = "Thirty feet across, as far as the walls let you see, and plainly going on under them. It is the colour of a plum. There is no crack in it and no tool mark. The warmth comes up through your boots at once and then, in a minute, through the rest of you.",
      things = {
        { name = "the surface", description = "Not quite smooth. Under your fingers there is a grain, very fine, all lying the one way, as on the nap of velvet. Stroke it with the grain and it is like glass. Against, it catches." },
        { name = "a worn hollow", description = "In the middle, a dip the size of a person lying curled. Three hundred years of stokers have come down at the end of their last shift and lain there for an hour. It is the retirement ceremony. There is no other." },
        { name = "the edge under the wall", description = "The brick was built to the stone and not into it. The first masons, Sal says, would not cut it. They tried once. The chisel is on the shelf." },
      },
      actions = {
        { "Lie in the hollow", say "You curl up in it. It fits anybody. The warmth goes into your back and the hum of the Boiler comes down through the brick, and under the hum, much slower, there is the other thing: a lift, and a settling. You have not slept so in years. When you wake it is a quarter of an hour later and you feel as if you had been forgiven for something." },
        { "Put your ear to it", say "Nothing, for a long while. Then, very deep, one soft knock, as of something large turning over and not waking. You count to see when the next will come. You get past four hundred and give up." },
      } },
    { name = "the walls",
      description = "Stokers' brickwork, rough, with a ledge all the way round at the height of a seat.",
      things = {
        { name = "names in the mortar", description = "Scratched while it was wet and scratched since: every head stoker, in order, back to a first who signed only with a shovel." },
        { name = "a row of lamps", description = "Oil lamps on the ledge, unlit. There is no need. The stone gives off a light of its own, low and reddish, enough to see faces by." },
        { name = "the ledge", description = "Worn into seats. On one of them somebody has left a pair of spectacles and a half finished sock on four needles, to come back to." },
      } },
    { name = "a shelf of relics",
      description = "A plank on two iron pins, with the things the stokers have thought worth keeping.",
      things = {
        { name = "the mason's chisel", description = "Cold steel, the edge turned right back on itself like a wood shaving. It was struck once. The mason is supposed to have said that it was like hitting a held breath." },
        { name = "the Founder's glove", description = "A leather gauntlet, cracked, the palm scorched in the shape of nothing in particular. Honoria Tick put her hand flat on the stone on the first day and kept it there for the count of a hundred. She built the Boiler the next spring." },
        { name = "a jar of ash", description = "From the clogs. All of them, every stoker, three centuries. It is not a large jar. It turns out people do not come to much." },
        { name = "a thermometer", description = "A long glass one in a brass case, left by a gauger who came down to settle the matter. It reads blood heat. It read blood heat when she put it down, sixty years ago, and has not moved a hair, summer or winter." },
      } },
    { name = "the first engineer's note",
      description = "A square of slate fixed to the wall with four brass screws, written on with a nail.",
      things = {
        { name = "the writing", description = "{i}We dug for a footing and came on this at nine fathoms. It was warm then. We looked for the fire that warmed it and there is none below, we have bored to be sure. It is warm of itself, as a stone is that has lain all day in the sun, and no warmer for all the coal we burn over it, and no cooler when we do not. We take from it. I do not know that we give. H.T.{/}" },
        { name = "a line added underneath", description = "Another hand, much later, in chalk: {whisper}Skipped, 3.19. Stone went cold for the space of two breaths. Then not.{/}" },
      } },
    { name = "the pipe with no tag",
      description = "It comes down through the roof from the gauge wall above and ends in a brass shoe, flat on the stone, like a doctor's listening trumpet.",
      things = {
        { name = "the brass shoe", description = "Not bolted. Not sealed. Only resting there. Whatever goes up that pipe is given, a little at a time, and the needle upstairs leans the wrong way with it." },
      } },
    { name = "an old stoker",
      icon = "☺",
      description = "A man of eighty or so in a clean shirt, sitting on the ledge with his clogs beside him and his bare feet flat on the stone. He retired eleven years ago. He comes down most days.",
      things = {
        { name = "his feet", description = "Broad, pale, with the toes spread. \"Rheumatism,\" he says. \"Gone since I started coming. I don't tell the doctor. He'd want to bottle it.\"" },
        { name = "his rivet", description = "He turns his wrist to show you the number. \"3,902. Port side, low down. She knows me.\"" },
      },
      actions = {
        { "Ask what it is", say "\"Warm,\" he says. He thinks about it for a while longer, because you came all this way. \"I'll tell you what it isn't. It isn't ours. We're like them sparrows on the pipes. Nobody put that pipe there for sparrows.\"" },
        { "Ask if it ever went out", say "\"Once. Before me. My granddad was on shift.\" He looks at the stone between his feet. \"He said it weren't like a fire going out. It were like when you're a nipper in bed and you hear your mother stop breathing in the next room, just for a tick, and then go on. He said every stoker on the line put down his shovel and none of 'em knew why.\"" },
        { "Sit with him", say "You take your boots off, which is a kindness to nobody, and put your feet on the stone. Neither of you says anything for some time. It is not that kind of room." },
      } },
    { name = "a kettle",
      description = "Set straight on the stone, on a ring of scorched brick, which is odd, because the stone is not hot enough to boil it.",
      actions = {
        { "Lift the lid", say "It is not boiling. It is keeping. The tea in it is from this morning and exactly as it was poured. The old stoker says it has never stewed and never gone cold, and that this, of everything down here, is the thing he would put before the Guild as the miracle." },
      } },
    { name = "the air",
      description = "Still, and sweet, with that linen cupboard smell. It does not smell of coal at all. It moves once, slowly, toward the stone, and after a long while moves back.",
      actions = {
        { "Hold a thread up", say "You pull one from your cuff and hold it out. It leans in toward the middle of the room. You count. At a hundred and ten it straightens. At two hundred and thirty it leans out. Slow as a tide, and going on under a city that thinks eleven minutes is a long time." },
      } },
    { name = "a child's chalk drawing",
      description = "Low on the wall, where a stoker's child was once brought down to be shown. A big round shape with a small house on top of it, and smoke coming from the house.",
      things = {
        { name = "the round shape", description = "The child has given it nothing: no eyes, no legs. Only, all round the edge, short strokes, like the rays a child puts round a sun." },
      } },
    { name = "the rungs",
      description = "Forty iron staples in the shaft, warm to the hand at the bottom and cool by the top.",
      things = {
        { name = "the twentieth rung", description = "Halfway. Here the heat from below and the heat from the firedoors above are exactly equal, and for one step you cannot feel either. The stokers call it the Sill, and step over it without stopping." },
      } },
  },

  exits = {
    { to = "tk_boiler_hall", label = "The rungs", description = "Up forty staples into the roar and the orange light." },
  },
}
