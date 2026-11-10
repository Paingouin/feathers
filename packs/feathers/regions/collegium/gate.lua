space {
  id = "academy_gate",
  region = "collegium",
  name = "The Porter's Lodge",
  description = "A gatehouse of pale stone with an arch, an oak door, and a hatch with a porter in it. Over the arch is the motto of the Collegium in the Old Tongue. It means {i}We Were Here First{/}.",

  things = {
    { name = "the porter",
      key = "porter",
      icon = "♜",
      description = "Mr Gudgeon, in a bowler hat, behind a book the size of a paving slab. It is his job to keep out anyone whose family is not in it. He enjoys his work.",
      variants = {
        { when = flag "co_enrolled",
          description = "Mr Gudgeon touches his hat as you pass. He does it to the name and not to you, and manages to make that clear." },
      },
      things = {
        { name = "his bowler hat", description = "Brushed daily. He has worn it at this hatch for thirty years and nobody living has seen the top of his head. There is a rumour that it is noble." },
        { name = "his tea", description = "In a cup with the Collegium crest. Made for him each morning by a first-year's valet, as part of the fees." },
      },
      actions = {
        { "Give your own name", when = no(flag "co_enrolled"),
          say "He turns pages for some time. \"No,\" he says. He turns a few more, for pleasure. \"No.\"" },
        { "Give your name as Sir Aubrey", when = all { item "invitation", no(flag "co_enrolled") }, set "co_enrolled",
          say "\"Fenwick-Thrum.\" He finds it. \"Entered at birth. Eleven years of fees paid. Never attended.\" He looks at you over the book. \"You're late, sir.\" You say there was traffic. He opens the door." },
        { "Ask about the motto", say "\"Before the wall, sir. Before the town. The Collegium's families were here when it was all fields.\" Whose fields? He gives you a look that says the question is in poor taste." },
      } },
    { name = "the Register",
      description = "Every family with the right to send a child here, back to the founding. Beside most of the names, in red, is the same note: {i}no aptitude observed{/}. It has never been a bar to graduation.",
      things = {
        { name = "the first page", description = "One name, the Founder's: {i}Pargeter{/}. No title. Somebody has since pencilled {i}Lady{/} in front of it, and somebody else has inked the pencil in." },
        { name = "the Fenwick-Thrum page", description = "Eleven generations, every one enrolled, not one of whom is recorded as having done any magic. It is, the porter says, one of the very best families." },
        { name = "a page cut out", description = "A stub, near the back. You are told not to ask about Cousin Ignatius here either." },
      } },
    { name = "the arch",
      description = "Carved stone, with the crest at the top and gargoyles at the corners.",
      things = {
        { name = "the crest", description = "A wand, crossed with a silver spoon." },
        { name = "a gargoyle", description = "It has a pipe in its mouth for the rain. It also has, unmistakably, the face of Mr Gudgeon. The mason was refused entry." },
      } },
    { name = "the new term's luggage",
      description = "Each first-year arrives with eleven trunks, a valet and a horse. The horses are sent home.",
      things = {
        { name = "a hatbox", description = "Labelled {i}WAND (SPARE){/}. Inside, in tissue paper, a hat." },
        { name = "a trunk of books", description = "Brand new, uncut, with a note from a mother: {i}These are to be seen on your shelf, Peregrine. You need not open them.{/}" },
        { name = "a cage with a toad in it", description = "A familiar, as required by the prospectus. It has a pedigree. It is looking at the lodge with dread." },
      } },
    { name = "the servants' door",
      description = "Small, at the side, unmarked. People go in and out of it all day with coal, linen and books. Mr Gudgeon does not look them up. He does not look at them." },
    { name = "the bell pull",
      description = "A brass handle marked {b}VISITORS{/}.",
      actions = {
        { "Pull it", say "A bell rings, somewhere deep in the building. A long time later a different bell rings back. Mr Gudgeon listens. \"They're out,\" he says." },
      } },
    { name = "the list of fees",
      description = "Framed, by the hatch. {i}Tuition. Robes. Wand. Valet's board. Breakages (magical): nil, to date.{/}" },
    { name = "the ivy",
      description = "Trained over three hundred years into the arms of the nine founding families. In one corner it has got away and is growing as plain ivy, and looks the better for it." },
  },

  exits = {
    { to = "elbow_lane", description = "Back down the lane, among people with only one name each." },
    { to = "academy_quad", description = "Through the oak door, to lawns and cloisters.",
      requires = flag "co_enrolled",
      locked = "the porter would like a name, and it has to be in the book" },
  },
}

space {
  id = "academy_quad",
  region = "collegium",
  name = "The Quadrangle",
  description = "A square of perfect lawn with cloisters round it. Students in braided gowns cross from one side to the other, slowly, since hurrying is for people who have to be somewhere. Their servants hurry behind them.",

  things = {
    { name = "the lawn",
      wonder = true,
      description = "Nobody walks on it. There is no rule. Three hundred years of students were raised by gardeners to know better, and the grass has had its own way for so long that it has started to see to itself. {magic}You watch a daisy come up, consider its position, and go back down.{/}",
      actions = {
        { "Put one boot on it", say "Every blade under your boot lies flat, all the same way, and stays flat until you take the boot off. Then they stand up together. You have been tolerated by a lawn." },
      } },
    { name = "the statue of the Founder",
      key = "founder",
      description = "Lady Pargeter in bronze, in a robe, holding a book open and pointing to the page. The plinth says she founded the Collegium to bring magic to those born to it. Her bronze boots are farm boots, laced with string. The sculptor worked from life and nobody told him to change them.",
      variants = {
        { when = flag "co_statue_turned",
          description = "Lady Pargeter in bronze, in farm boots, pointing at a page that has turned. Behind her the plinth stands open on a flight of steps. Students go by. Not one of them looks; it is behind a statue, and they were told at seven not to stare." },
      },
      things = {
        { name = "the plinth", description = "{i}MARGARET, LADY PARGETER. She Raised the Art Among Those Fitted by Birth to Receive It.{/} The last line was added by the first Board of Governors. The lettering does not match." },
        { name = "the bronze book",
          description = "The page she is pointing at has real words cast into it, very small: {i}turn me{/}.",
          actions = {
            { "Turn the page", when = no(flag "co_statue_turned"), set "co_statue_turned", fx "shake",
              say "It is bronze. It is all one piece. It turns anyway, with the sound of a door, which is what it is: the plinth has opened at the back, and steps go down. A passing student glances at you, sees a person doing something with their hands, and takes you for staff." },
          } },
        { name = "a pigeon", description = "On her head. It is the only resident of the Collegium to have reached the top by its own efforts." },
      } },
    { name = "a duel",
      description = "Two students, ten paces apart, wands raised: a duel of magic, to the death, over a remark about a sister. Behind each of them a valet is quietly doing the casting. The two valets share a room, and are making sure that nothing lands.",
      things = {
        { name = "the seconds", description = "Two more students, holding the coats. They are discussing a horse." },
        { name = "a scorch mark on the cloister", description = "From a duel in the last century, when one of the valets was off sick." },
      },
      actions = {
        { "Watch", say "A fireball the size of a plum goes wide by a careful yard. Both gentlemen look fierce. Both valets look at the clock: they have a card game at four." },
      } },
    { name = "the noticeboard",
      description = "Green baize behind glass.",
      things = {
        { name = "the timetable", description = "{i}Monday: Theory. Tuesday: Theory of Theory. Wednesday: Fencing. Thursday: Deportment for Wizards. Friday: Practical (cancelled).{/} The word {i}cancelled{/} is painted on. The paint has cracked with age." },
        { name = "a notice from the Bursar", description = "{i}Gentlemen are reminded that servants may not sit examinations on their behalf without a note.{/}" },
        { name = "a notice about the star", description = "{i}A field party will attend the object lately fallen on Hobmoor. Volunteers should supply their own awning and man.{/} Two signatures." },
        { name = "a lost notice", description = "{i}Lost: one familiar (toad). Answers to Lord Blenkinsop. Reward.{/}" },
      } },
    { name = "the sundial",
      description = "It tells the time by moonlight too, which was somebody's thesis. It is four minutes slow in both." },
    { name = "the cloisters",
      description = "A covered walk on all four sides, paved with the tombs of former professors.",
      things = {
        { name = "a tomb slab", description = "{i}Here lies the Regius Professor of Fire. He is not to be disturbed. He was not to be disturbed in life either.{/}" },
        { name = "a first-year, lost", description = "He has been walking round the cloister since breakfast looking for the way out of it. There are four. His valet is letting him work it out, as an education." },
        { name = "a door with fresh oil on the hinges", description = "In the darkest corner. The paint on it has not been touched in a lifetime, and the plate says {i}PRACTICAL{/}. Someone has been going in." },
      } },
    { name = "a gardener",
      description = "An old man with a barrow, standing at the edge of the lawn with nothing in his hands. He has not cut it in twenty years. He comes out every morning in case it wants anything.",
      actions = {
        { "Ask about the lawn", say "\"She does it herself now,\" he says. \"I used to roll her. She didn't care for it. One day the roller was in the pond.\" He looks at the grass with pride. \"Never had a day's training, that lawn. Just watched.\"" },
      } },
    { name = "the pond",
      description = "Round, with a fountain that goes the usual way, a rusty garden roller at the bottom, and carp.",
      things = {
        { name = "a carp", description = "Gold, fat, and older than the Chancellor. Generations of students have practised transformations on it. It is still a carp, and looks smug about that." },
        { name = "a toad on a lily pad", description = "Wearing a very small collar with a crest. Lord Blenkinsop, presumably. He has found something better." },
      } },
    { name = "the tower",
      description = "At the north corner, with a copper dome. The light in the top window is red. It is the only window in the Collegium that is lit after ten." },
  },

  exits = {
    { to = "academy_gate", description = "Back out past the hat." },
    { to = "lecture_hall", description = "Through double doors, towards a single droning voice." },
    { to = "academy_library", description = "Up broad steps, into a hush." },
    { to = "college_hall", description = "Towards a smell of roast and the sound of four hundred spoons." },
    { to = "observatory", description = "Up the tower with the wrong-coloured light." },
    { to = "practical_room", description = "The door in the corner of the cloister, the one with oil on its hinges." },
    { to = "founders_study", label = "The steps under the statue",
      description = "Down through the open plinth, under the lawn.",
      requires = flag "co_statue_turned", hidden = true },
  },
}

space {
  id = "college_hall",
  region = "collegium",
  name = "The Refectory",
  description = "A hall with a hammer-beam roof, four long tables and one across the top on a platform. Dinner is in progress. It has nine courses, and the students get through it without once reaching for anything: a hand comes over each shoulder at the right moment.",
  ambience = { flicker { color = "#ffcf80", strength = 0.15 }, steam { glyphs = "˙·∙", color = "#6c6478", rate = 0.3 } },

  things = {
    { name = "the high table",
      description = "For the Fellows: eleven old men and a decanter. They dine in order of the age of their families, so the one at the head is always the same man and has always had the soup first.",
      things = {
        { name = "the Chancellor", description = "The Duke of Mere, very old, asleep over the fish. He was appointed for his name and has not been inside a lecture room. Asked once what magic was, he said that he believed the college had a man who did that.",
          actions = { { "Bow to him", say "He opens one eye. \"Fenwick-Thrum,\" he says, without having been told. \"Knew your grandfather. Couldn't do it either.\" The eye closes." } } },
        { name = "the decanter", description = "Port, going round to the left. It has gone round to the left since the founding, and the table has a groove." },
        { name = "the salt", description = "A silver ship the size of a cat. Fellows sit above it, and guests below. It has been moved one place down the table in three hundred years, after a marriage." },
      } },
    { name = "the long tables",
      description = "Four, by year. Linen, silver, and three hundred students dining with their hands in their laps.",
      things = {
        { name = "a place setting", description = "Eleven forks. The Collegium teaches which is for what in the first term, before anything else, and examines on it." },
        { name = "a finger bowl", description = "Rose water, with a petal. A second-year has enchanted his to stay warm. That is, his man has." },
        { name = "a student reading under the table", description = "A real book, with diagrams. He sees you looking and shuts it with his knees. \"You won't say,\" he says. \"My father would stop my allowance.\"" },
      } },
    { name = "the servants",
      description = "One behind every chair, in grey, facing forward. They move together, like a tide coming in over three hundred shoulders.",
      things = {
        { name = "a valet", description = "He serves the peas left-handed. With his right, behind his back, he is keeping a candle alight on the far side of the hall, by looking at it. Nobody has ever asked him how the candles in here never gutter." },
      },
      actions = {
        { "Catch one's eye", say "You manage it for half a second. The valet's face does not change. One of his eyelids does, by the width of a hair, and a bread roll arrives on your side plate from a direction you were not watching." },
      } },
    { name = "the kitchens",
      description = "Through a hatch at the bottom of the hall: heat, copper, shouting.",
      things = {
        { name = "the cook", description = "Mrs Bannock, who rules forty people and nine ovens with a ladle. She was at school with Madam Spindle of Elbow Lane. They do not speak, and send each other a cake every midwinter." },
        { name = "the spit", description = "A whole ox. It is turning by itself, steadily. Nobody is near it. A scullery boy is sitting on an upturned bucket some way off, reading, and every so often he looks up at it, and it keeps going." },
        { name = "the stock pot", description = "It has not been emptied since the founding. The Founder is said to have started it. The cook says it is the only original thing left in the Collegium that still works." },
        { name = "a tray, covered", description = "Going up to the tower, for the Astronomer, who does not come down. The kitchen has sent a tray every night for eleven days. Most of them come back." },
      } },
    { name = "the portraits",
      description = "Former Chancellors, in oils, down both walls. Dukes and earls in robes, each holding a wand like a man holding somebody else's baby.",
      things = {
        { name = "the first portrait", description = "By the door, where the light is worst. A broad woman of fifty with her sleeves rolled, holding a wooden spoon. The plate says {i}THE FOUNDER (the artist has taken liberties){/}. He had not." },
      } },
    { name = "the grace",
      description = "Said before dinner in the Old Tongue by the youngest Fellow. It takes four minutes. Translated, it thanks the ancestors for the food, the roof and the servants, in that order." },
    { name = "the college silver",
      description = "On a sideboard, under guard: salvers, tureens, and a row of cups.",
      things = {
        { name = "the Practical Cup", description = "For the best demonstration of working magic by a student. The last name engraved on it is two hundred years old. It is polished weekly, by a housemaid, without hands." },
      } },
    { name = "the minstrels' gallery",
      description = "Over the door. A string quartet plays through dinner. If you watch, the cellist has gone for a smoke. The cello has not noticed." },
  },

  exits = {
    { to = "academy_quad", description = "Out, past the first portrait, into the air." },
  },
}
