-- The way down from the Oubliette, the buried wall, and the place where the echoes go.

space {
  id = "fd_stair",
  region = "further_down",
  name = "The Stair Nobody Counted",
  description = "Under the dust of the Oubliette, a stair. It goes down inside the castle hill in a slow square spiral, a landing at every turn, cut for a stride a little longer than yours. The kingdom dropped its embarrassments down a hole for four hundred years and never asked what the hole had been for.",
  palette = { bg = "#08080c", text = "#bcbcc8", dim = "#54546a", accent = "#a898d8", border = "#2a2a44" },
  ambience = {
    dust { glyphs = "·˙", color = "#40405a", rate = 0.3, speed = 0.2 },
  },

  things = {
    { name = "the steps",
      description = "Dark stone, dished in the middle by feet. The wear is deep, and it is all on the way up: the front edges are rounded and the backs are sharp. A great many people climbed this, once, and hardly anyone went down.",
      things = {
        { name = "the square and the dot",
          description = "On every riser. You have stopped being surprised. You have started to wonder whether he ever went home." },
        { name = "a step that has been replaced",
          description = "One tread of paler stone, a clumsy fit, with a date scratched in it from the reign of Humbert the First and the words {i}WHO BUILT THIS? ANSWER REQUIRED.{/} Nobody answered. The King's mason mended the step and bricked up the top." },
      },
      actions = {
        { "Count them", say "You start. At the third landing you have ninety. At the fourth you have ninety again. You go back up one flight and count it twice and get different numbers both times, and both seem right. You stop. Nobody has ever managed, and you see why." },
      } },
    { name = "dust from above",
      description = "It comes down the well of the stair in a thin steady fall, from the Oubliette, like sand in a glass. Each landing has its drift.",
      things = {
        { name = "things in the drift",
          description = "What was small enough to sift through the floor. A hat bell. A medal ribbon. One numeral, brass, a {i}13{/}, off a clock." },
        { name = "a slice of toast",
          description = "Butter side down, on the second landing. It has come further than any toast before it. You look up the shaft with something like respect for the man with the mug." },
      } },
    { name = "the first landing",
      description = "A square of floor, a bench cut into the wall, and a niche for a lamp.",
      things = {
        { name = "the lamp niche",
          description = "Sooted. There is a stub of something in it that is not tallow and not wax, clear as glass and hard as a nail.",
          actions = {
            { "Light the stub", say "You put the lantern flame to it. It takes, without smoke, with a small white steady light, and the whole stair below you comes up out of the dark like a thought. Then, landing by landing, the other niches light as well, by themselves, going down. Somebody wired the hill for courtesy." },
          } },
        { name = "the bench",
          description = "Wide enough for four. There is a hollow worn in it for each of them." },
      } },
    { name = "carvings on the wall",
      description = "All the way down, at the height of a raised hand, a band of carving. People, in a line, walking up. Hundreds of them. They carry bundles and tools and children.",
      things = {
        { name = "the people",
          description = "Cut small and quickly and from life. A woman with a hen under her arm. A boy who has stopped to look back and is being pulled on by the hand. They are all your size. They are not Murmurs and they are not dwarves." },
        { name = "what they are leaving",
          description = "At the bottom of the stair, where the band begins, the carver has made a gate with a wall each side of it, and the people coming out. He has taken great care over the gate. Behind it he has carved nothing. The stone there is smooth, and it has been polished." },
        { name = "what they are going to",
          description = "At the top of the band, just under where the Oubliette's floor now is: a hill, bare, with nothing on it, and above the hill a round thing with lines coming from it. The first of the walkers has an arm up across her eyes." },
      },
      actions = {
        { "Follow it with a finger", say "You walk down with one finger on the line of them, against the way they are going. It feels like an impertinence. They came up out of the dark with their hens and their children, and built a kingdom on a bare hill, and forgot the stairs. You are the first to go back down and see what they left behind." },
      } },
    { name = "a handrail",
      description = "Bronze, green, let into the wall. Polished along the top by palms. It is at a comfortable height, which down here is beginning to feel like a message." },
    { name = "a bricked arch at the top",
      description = "Behind you, where the stair meets the Oubliette's foundations, the proper doorway: closed with castle masonry four hundred years old. You came by the crack beside it, where the dust drains. The masons did a thorough job on the door and none at all on the wall.",
      things = {
        { name = "the first stone, from below",
          description = "The stone with the curved line that sits in the Oubliette's wall goes down through the floor and is here too. It is the keystone of the bricked arch. The castle was not built on it. The castle was built on the top of a door." },
      } },
    { name = "a window",
      description = "On the fourth landing, absurdly: a window. An arched opening with a stone sill, looking out on solid rock a hand's breadth away. The rock has been dressed flat and somebody has drawn on it in charcoal: hills, a river, a small sun.",
      actions = {
        { "Look out", say "It is a child's drawing, done standing on the sill. The sun has a face. It is the view they hoped for, put up where the stair gets long, to keep the little ones going." },
      } },
    { name = "the air on the stair",
      description = "It moves upward past your face, steady and cool. The Oubliette has been breathing this for four centuries, and the dust in it has stayed so soft for that reason." },
    { name = "a dropped toy",
      description = "On the sixth landing, in the corner, a horse on wheels. Stone, not wood, so it is still here. One wheel is missing. It was put down by someone small on the way up, to rest their arms, and the line did not wait.",
      actions = {
        { "Set it on the bench", say "You stand it on the bench, facing up the stairs. It is the best you can do. It looks better there." },
      } },
    { name = "sounds from below",
      description = "A long way down: a drip, a hush, and now and then something so faint and many-voiced that you take it for your ears. It is like standing outside a hall where a crowd is talking. You cannot make out a word." },
    { name = "the last landing",
      description = "The stair ends in an arch with no door in it. Past the arch there is a floor of old paving, a great width of dark, and far off, low down, a scatter of lights like a town seen from the top of a pass at night." },
  },

  exits = {
    { to = "oubliette", label = "Up, by the crack", set "fd_dust_followed",
      description = "The long climb, the way all the wear goes, to the dust and the statue and the things nobody mentions." },
    { to = "fd_old_wall", label = "Down, through the arch", description = "Out on to the old paving, under the dark, towards the wall." },
  },
}

space {
  id = "fd_old_wall",
  region = "further_down",
  name = "The Wall Underneath",
  description = "It crosses the cavern from side to side and its top is lost in the roof: a city wall, of the old dark blocks, sixty feet high, with towers. It is far older than Aldmoor's and much better built. Pardon stops respectfully a hundred yards short of it. The paving from the lake and the paving from the stair meet here, in front of the gate.",
  palette = { bg = "#08090c", text = "#bec2c8", dim = "#565c66", accent = "#b0b8a0", border = "#2c3238" },
  ambience = {
    fog { color = "#12161a", speed = 0.2, strength = 0.5 },
    dust { glyphs = "·", color = "#3c424a", rate = 0.1, speed = 0.05 },
  },

  things = {
    { name = "the gate",
      key = "fd_under_gate",
      wonder = true,
      description = "Two leaves of dark metal, forty feet high, standing open. They have stood open so long that the paving has been swept round them in a curve. {magic}And through the gate there is nothing. The arch is full of living rock, floor to keystone, rough and whole and never cut.{/} The wall is finished to the last block. The gates are hung. There is no city behind them, and there never has been. Somebody built the wall first.",
      things = {
        { name = "the hinges",
          description = "Each the size of a cart. They are greased. The Murmurs do it, every spring, from a scaffold. \"It is a gate,\" they say. \"Somebody may want it to close.\"" },
        { name = "the lock",
          description = "A keyhole you could put your arm into. You have seen the key for it, on a hook in the Market, tagged, with no tick. Nobody has missed it. So nobody has yet needed to lock up." },
        { name = "the rock in the arch",
          description = "You put your hand flat on it. Stone. It is warmer than the wall, by a very little." },
      },
      actions = {
        { "Walk through the gate", say "Three paces, and your nose is against a cliff. You stand in the gateway of a city that is not there, with your hand on the place where the high street would begin. It does not feel empty. It feels early." },
        { "Knock on the rock", say "You knock. It is solid, of course. All the same you wait a decent interval, as one does at a door, before you go away." },
      } },
    { name = "the wall",
      description = "Courses of dark block, dry laid, each one marked. It leans back from you very slightly as it goes up, as the best walls do.",
      things = {
        { name = "a growth line",
          description = "Low down, the blocks are black with age. Higher, they are a shade less so. Near the top, as far as the lantern reaches, there is a course that looks almost fresh. You think of the town wall in Aldmoor, and what the market wives say about it every spring." },
        { name = "an arrow slit",
          description = "Cut for someone your height. It faces outward, at you, at Pardon, at the lake. Whatever this wall is for, it is to defend the rock from the rest of the world." },
        { name = "a mason's ledge",
          description = "A putlog hole with a stub of timber still in it, and on the stub a mallet, a chisel and a string with a lead weight. They have no dust on them.",
          actions = {
            { "Touch the plumb line", say "It swings, and comes to rest. Not straight down. A finger's breadth off, toward the gate and the rock behind it. You have seen a level do that, in a dwarf's hand, and he would not talk about it either." },
          } },
      } },
    { name = "the towers",
      description = "One each side of the gate, round, roofed with stone. There are doors at the foot, and the doors are open, and stairs go up.",
      things = {
        { name = "the left tower",
          description = "A guardroom. A table, benches, a rack for spears: all of stone, all cut in one piece with the floor. Nothing has ever been moved because nothing can be. The room has been waiting for a garrison since it was made." },
        { name = "the right tower",
          description = "The same, except for the table. On the table a meal has been set out in carved stone: a loaf, a cheese, a knife, four cups. The mason did it, you suppose, at the end, for a joke, or as a blessing on whoever would sit there.",
          actions = {
            { "Sit at the table", say "You take a bench. Stone loaf, stone cheese. You pick up a stone cup, which you had assumed was one with the table, and it comes away in your hand. It is the only loose thing in the room. There is a ring on the table under it, as from a wet glass. You put it back on the ring, exactly." },
          } },
      } },
    { name = "the meeting of the roads",
      description = "Two paved ways come together in front of the gate: one from the stair in the hill, one from the lake. A third goes off towards the lights of Pardon, and that one is cobbled with river pearl and is one small person wide.",
      things = {
        { name = "a milestone",
          description = "Square, dark, at the fork. One face says, in the old letters, what the chalk beside it gives as {i}UP{/}. One says {i}WATER{/}. The third face, toward the gate, has been dressed smooth and left blank, to be filled in when they knew." },
      } },
    { name = "the Wall Warden",
      icon = "☺",
      description = "A Murmur in a tin hat with a lantern on a pole, who walks the foot of the wall every night from one side of the cavern to the other and back. The post is hereditary. Nobody remembers what it is for. She takes it extremely seriously.",
      things = {
        { name = "her log", description = "{i}Dusk: wall present. Midnight: wall present. Dawn: wall present.{/} Eleven hundred years of it, in the family. One entry, in her great-grandfather's hand, reads: {i}Wall present. Taller?{/}" },
        { name = "her tin hat", description = "A thimble, with a chin strap. It has a dent. Something fell off the wall once, a chip no bigger than a pea, and it is the great event of her career. She keeps the chip." },
      },
      actions = {
        { "Ask what the wall is for", say "\"Pardon. We have never been told.\" She looks up at it with affection. \"It was here when we came down. We thought, at first, that the builders were inside and would come out. Then we thought they were away and would come back.\" She adjusts the hat. \"My own view is that it is for later.\"" },
        { "Ask about echoes", when = no(flag "fd_echo_followed"),
          say "\"Oh, it does not echo.\" You must look doubtful. A wall sixty feet high, in a cavern. \"Pardon. Try. Everybody tries. Then listen for where it goes.\"" },
      } },
    { name = "the sound of the place",
      description = "You say a word, to see. It does not come back off the wall. A cavern this size should ring like a bell, and it does not. The word goes to the wall and is taken in.",
      variants = {
        { when = flag "fd_echo_followed",
          description = "Now that you know, you can hear it all the time: a faint drawing of every sound in the cavern toward one low place at the foot of the left tower, as water goes to a drain." },
      },
      actions = {
        { "Shout, and listen for where it goes", when = no(flag "fd_echo_followed"), set "fd_echo_followed", fx "shake",
          say "\"FEAR NOT!\" It is the only thing you can ever think of. It goes out, hits the wall, and you turn your head to follow it, as the Warden said. It does not come back. It goes {i}along{/}: you hear it run down the face of the wall, getting smaller, round the foot of the left tower, and in at a low black opening you had taken for a culvert. A moment later, from inside, very faint, a great many voices say it back." },
      } },
    { name = "a postern",
      description = "At the foot of the left tower, a low arch, hardly four feet, with a channel worn in its sill. You took it for a drain.",
      variants = {
        { when = flag "fd_echo_followed",
          description = "At the foot of the left tower, a low arch with a channel worn in its sill. It is not water that has worn it. You put your ear to the opening and hear what a shell tells you about the sea, except that it is in words." },
      } },
    { name = "a builder's yard",
      description = "Against the wall, to one side: blocks, squared and stacked, each already marked. Enough for another three courses. They have been ready for a very long time.",
      things = {
        { name = "the top block of the stack",
          description = "The square is cut. The dot is not. He put down the chisel halfway through his own mark and went somewhere, and he meant to come back, because he left his lunch.",
          things = {
            { name = "the lunch",
              description = "A cloth, a heel of something long since gone to dust, and an onion. The onion is stone now, right through, every layer. It still manages to look as if it disapproves." },
          } },
      } },
    { name = "the lights of Pardon",
      description = "Behind you, low down, warm and many. The Murmurs built their city in sight of the wall and never against it. They say it is one thing to be a neighbour, and another to lean." },
    { name = "the roof, where the wall meets it",
      description = "You cannot see it. The Warden says that the wall does not stop at the roof. Her family have always held that it goes up through, and that somewhere Above there is a town built along the top of it that takes it for its own." },
    { name = "a scholar's camp",
      description = "A full-sized folding stool, a spirit stove and a satchel, neatly abandoned at the foot of the gate. The stool has a Collegium crest. Whoever it was did not leave in a hurry. They finished their tea.",
      things = {
        { name = "the satchel",
          description = "Notebooks, in a hand you have seen on a library card. Rubbings of the square and the dot. On the last page, underlined twice: {i}It is not that the city was never built. It is that it has not been built yet. They did the wall first so there would be somewhere to put it. Query: who are They? Query: put what?{/}" },
        { name = "a library slip",
          description = "Tucked in the notebook. {i}Collegium Library. Due back.{/} The date is three hundred years gone. The borrower's name is given as {i}M. Pargeter{/}, and under Purpose of Loan she has written: {i}mine{/}." },
      } },
  },

  exits = {
    { to = "fd_pardon", description = "Along the pearl cobbles, a foot either side of the road, to the city of lamps." },
    { to = "fd_lake", label = "The causeway", description = "The old paving, along the one shore, to the shingle and the water." },
    { to = "fd_stair", label = "The stair in the hill", description = "Up, the way the carved people went. It is a long climb and comes out among things the kingdom forgot." },
    { to = "fd_echo_hall", label = "The postern",
      description = "In at the low arch, bent double, after your own voice.",
      requires = flag "fd_echo_followed", hidden = true },
  },
}

space {
  id = "fd_echo_hall",
  region = "further_down",
  secret = true,
  wonder = true,
  name = "Where the Echoes Go",
  description = "Inside the wall there is a hall as long as the wall is, narrow and immensely tall, and it is full of voices. {magic}Every echo in the kingdom comes here when it has finished.{/} They do not die away. They come down through the rock and are kept: the shouts into wells, the songs in the Drain, the one word a mountain gives back. They go round and round overhead in the dark, very softly, like starlings, each still saying the last thing it said.",
  palette = { bg = "#0a080e", text = "#c8c0d4", dim = "#5e5670", accent = "#c8a0f0", border = "#342c4c" },
  ambience = {
    shimmer { color = "#281c40", strength = 0.4 },
    dust { glyphs = "˙·∙", colors = { "#8870b8", "#5a4a80" }, rate = 0.5, speed = 0.4 },
  },

  on_enter = function(ctx)
    if not ctx:visited("fd_echo_hall") then
      ctx:say("You straighten up inside. Something small circles your head twice and settles on your shoulder. \"Fear not,\" it says, in your voice, without the capitals.")
    end
  end,

  things = {
    { name = "your own echo",
      description = "It has stayed with you. It weighs nothing and has no shape, but when you turn your head there is a faint stir by your ear, and your own voice from an hour ago, pleased to see you.",
      actions = {
        { "Say something to it", say "\"Hello,\" you say. \"Hello,\" it says, a moment later. Then, because it has been in here a little while now and has been listening to the others: \"Pardon.\"" },
        { "Let it go", say "You lift your hand. It goes up from your shoulder into the dark and joins the rest, and you can pick it out for a while, a small determined {i}fear not{/} going round among the kings and the wells. It seems to be getting on." },
      } },
    { name = "the flock",
      description = "You cannot see them. You can hear where they are: a soft roar, high up, that moves from one end of the hall to the other and back, like wind in a wood. Now and then one comes low and you catch a word.",
      things = {
        { name = "a child's hello",
          description = "It comes down past your face. {i}Hello?{/} And again, further off. {i}Hello?{/} There are sixty of them, from one summer, and they keep together. The well never answered her, so in here they answer each other." },
        { name = "a carter's argument",
          description = "Two voices, about the road to Saltwick, and whether it is longer going. They have been at it in the Aldmoor gate tunnel twice a week for nine years, and every word has come down. In here the argument has got nine years ahead of itself and is somewhere you cannot follow." },
        { name = "a sneeze",
          description = "Enormous, ecclesiastical, from the nave of the temple at Aldmoor. It goes over like a cannon shot, with a small {i}oh dear{/} behind it, trying to catch up." },
        { name = "a goose",
          description = "One honk, from under the Greenhollow bridge. The other echoes give it a great deal of room." },
        { name = "the miller's daughter",
          description = "The song, all the verses, in a hundred voices, from every cellar and culvert it was ever sung in. The rude verse comes round. Up in the dark, an archbishop's echo says {i}tut{/}." },
      },
      actions = {
        { "Stand and listen", say "It takes a while for the ear to sort it. Then you begin to get them. A woman calling a cow home. \"MIND THE DOG.\" A king, young, on a balcony, saying \"my people\" and stopping. Laughter in a stairwell. \"Is anybody there?\", many times, in many voices, and after each one, from somewhere else in the flock, from some other year, \"yes.\"" },
      } },
    { name = "the long wall",
      description = "The inside face of the Wall Underneath. It is smooth here, polished, and very slightly curved, so that a sound which starts at one end will run the whole length and come back along the other side.",
      things = {
        { name = "a listening seat",
          description = "A niche with a stone seat, cut at the exact place where the curve brings every voice past your ear in turn. The builders meant someone to sit here.",
          actions = {
            { "Sit and listen", fx("wash", "#c8a0f0"),
              say "You sit. They come by one at a time, as if in a queue: a lullaby, a curse at a stuck door, somebody's name called up a staircase at suppertime. Four hundred years of the kingdom talking to itself when it thought no one was listening. It is all perfectly ordinary, and you could not say why your eyes sting." },
          } },
        { name = "a tally",
          description = "Scratched beside the seat: strokes in fives, thousands of them, to the floor and along it. Somebody sat here and counted the echoes in. Then the strokes stop. Either the counter left, or there came to be too many." },
      } },
    { name = "the echoes of Old Grumble",
      description = "Low down, at the far end, keeping to themselves: the mountain's. They are too big to fly. They lie along the floor like weather, and the sound of them is the sound of the mountain, from all the centuries anyone has shouted at it, laid one over another.",
      actions = {
        { "Listen for what it is saying", say "With all of them together, it is nearly words. You hold your breath. Nearly. There is a shape to it, the same shape each time, patient, like someone repeating a thing to a person who is not paying attention. You do not get it. You are sure that if there were only a few more of them you would." },
      } },
    { name = "the silences",
      description = "Between the voices there are gaps that move with the flock. They are echoes too. A held breath in a chapel. The quiet after a door has been closed with care. A clerk in a tide office, not saying something. They are kept as carefully as the rest." },
    { name = "the oldest echo",
      key = "fd_oldest_echo",
      wonder = true,
      description = "At the very top of the hall, above the flock, where nothing else goes, there is one that does not circle. It hangs. It was here before the others and they leave the height to it. {magic}It is not a word. It is one long note, falling a little at the end, and it is an echo of nothing: there is no first sound for it to be the echo of.{/} The Murmurs' scholars have looked. The answer came, and is still here. The call has not been made yet.",
      actions = {
        { "Listen for it", fx("wash", "#e0d0f8"),
          say "You have to wait for the flock to pass to the far end. Then, in the quiet, from very high up, you hear it: a single note, clear, not loud, turning down at the end the way a voice does when it is certain. Every echo in the hall is the back half of something. This one is waiting for its front. You find you are standing with your mouth a little open, as if the first half were yours to say, and you close it." },
        { "Try to answer it", say "You hum the note back, as near as you can. It is not right. All the same, for one beat, the flock goes silent, the whole hall, every voice the kingdom ever lost down a well. Then they start again, and the goose is first." },
      } },
    { name = "the floor",
      description = "Sand, fine and pale, in ripples. The ripples run across the hall from wall to wall and they are moving, very slowly: the sound is doing it.",
      things = {
        { name = "a pattern in the sand",
          description = "Where the Old Grumble echoes lie, the ripples make rings inside rings, and at the middle the sand stands up in a little cone and trembles." },
        { name = "small footprints",
          description = "A Murmur comes in here, sometimes, alone. The prints go to the listening seat and stop at it. The seat is far too high for them. They stand beside it." },
      } },
    { name = "a jar on a shelf",
      description = "By the postern, a preserving jar with a wire clip, empty, lid open, and a paper label: {i}SPECIMEN. Do not close while occupied.{/} It is the Collegium's, by the handwriting, and it has plainly never caught a thing.",
      actions = {
        { "Hold it up", say "A small echo comes down to look. It goes into the jar, says \"is anybody there\" in a tinny way, and comes out again, pleased with the effect. Two more go in after it. They are queueing. You put the jar back on the shelf, open, and leave them to it." },
      } },
    { name = "the newest ones",
      description = "They come in by the postern all the time, a little out of breath, and hang about near the door before they go up. A dropped pan. A cheer from a market. Somebody in Greenhollow, a minute ago, saying \"well, I never.\"",
      things = {
        { name = "one from a river",
          description = "A dry voice, reading aloud: {i}that it is very hard to be brave at people who keep offering you soup.{/} It is Mr Tench, reading your complaint back, off the roof of his cavern. It goes up to join the rest. You are in the record now." },
      } },
    { name = "what is not here",
      description = "You think to look for it: the shout you gave at the lake. Every other sound you have made on this journey is somewhere overhead. That one is not. It did not come back from the water, and it did not come here." },
    { name = "the height",
      description = "The hall goes up inside the wall further than the wall can be tall. You do the sum twice. Either the roof of the cavern is not where you thought, or the Warden's family is right about where the wall goes." },
    { name = "the draught of voices",
      description = "Stand in the postern and you feel it on your face, coming in: every noise the kingdom is making at this moment, on its way to be kept. It does not feel sad. It is like standing in the door of a barn at harvest." },
  },

  exits = {
    { to = "fd_old_wall", label = "The postern", description = "Out, bent double, into a cavern that seems afterwards a little too quiet." },
  },
}
