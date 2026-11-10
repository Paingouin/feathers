space {
  id = "lecture_hall",
  region = "collegium",
  name = "The Lecture Theatre",
  description = "Tiers of benches going up into the gloom, and at the bottom a professor at a lectern. Perhaps sixty students are present. Perhaps four are awake. The servants along the back wall are taking the notes.",

  things = {
    { name = "Professor Lord Quillon",
      icon = "☺",
      description = "He is in the ninth week of a course on levitation and has reached the history of the word. He has held the Chair of Applied Magic for forty years without applying any, on the grounds that it would only encourage it.",
      things = {
        { name = "his gown", description = "Black silk with ermine. There is chalk on one sleeve. It got there by accident, in his first year, and he has kept it as evidence." },
        { name = "his voice", description = "One note, a low one. Bees have been known to settle on him." },
      },
      actions = {
        { "Ask a question", say "A hand has not gone up in this room since the old king's day. He stares at yours. \"Yes?\" You ask whether he could show you one. A levitation. The room wakes up. He looks at you with real hatred and says that, regrettably, the hour is over. It is, as of now, by eleven minutes." },
      } },
    { name = "the lectern",
      description = "Oak, carved with an owl. The owl's eyes have been worn blind by forty years of one man's thumbs.",
      things = {
        { name = "the lecture notes", description = "Yellow and soft, in his father's handwriting. His father held the Chair before him. There are stage directions: {i}Pause. Look grave.{/}" },
        { name = "a glass of water", description = "Full. He has never drunk from it. It was put there for his father." },
      } },
    { name = "the benches",
      description = "Oak, tiered, polished by three centuries of gowns.",
      things = {
        { name = "the sleeping students", description = "They sleep upright with their eyes open. The Collegium does teach that, in the first term, and teaches it well." },
        { name = "a carving in the desk", description = "{i}Is it still Tuesday.{/} Under it, in different hands, all down the length of the bench: {i}Yes.{/}" },
        { name = "a paper dart", description = "Hanging in the air half way down the hall, where it was thrown in the last century. It has not come down. It was thrown by a valet." },
        { name = "a student who is awake", description = "A girl in the fourth row, writing fast. She is the only one here taking her own notes. Her gown is second-hand and her family's page in the Register is one line long. She is going to be very inconvenient to somebody." },
      } },
    { name = "the servants at the back",
      description = "Eleven valets and one girl from the scullery, with slates. They take down every word. In the evenings they go through it among themselves, to work out which of the words are true.",
      actions = {
        { "Look at a slate", say "The lecture, in shorthand. In the margin there is a small neat diagram of how a levitation would actually have to go. It has been corrected by three other hands. You suspect that it is right." },
      } },
    { name = "a stick of chalk",
      wonder = true,
      description = "Beside the blackboard a stick of chalk hangs in the air at writing height. {magic}It has hung there since a demonstration given by the Founder.{/} The Professor walks round it. In forty years of lecturing on levitation he has not mentioned it once.",
      actions = {
        { "Take it", say "It will not come. It is not stuck. It is staying, in the manner of someone who was asked to wait." },
      } },
    { name = "the blackboard",
      description = "Slate, the width of the hall. Written on it, in a hand so old that the chalk has gone into the stone: {i}LEVITATION. See demonstration.{/} Nothing else has been added." },
    { name = "the hourglass",
      description = "The lecture is timed by a glass the height of a man. A servant turns it. The sand has worn the neck wider over the centuries, so that the hour is now forty minutes, and nobody on either side of the lectern has complained." },
    { name = "the gallery",
      description = "For visitors. Three mothers with opera glasses, looking for their sons. Each has found a different sleeping boy and is satisfied." },
    { name = "a mouse",
      description = "On the lowest step, sitting up. It attends every lecture. It is believed to have enough for a degree." },
  },

  exits = {
    { to = "academy_quad", description = "Out, quietly, though nothing short of a levitation would wake anyone." },
  },
}

space {
  id = "academy_library",
  region = "collegium",
  name = "The Library of the Collegium",
  description = "Galleries of books under a painted ceiling, long tables, green lamps, and a hush you could lean on. The books are chained to the shelves. At the tables it is the other way round.",

  things = {
    { name = "the Librarian",
      key = "librarian",
      icon = "☺",
      description = "Mistress Ottery, at a high desk, with a stamp, a lamp and a ledger of fines. She knows where every book is. She knows where one book is not, and has known for thirty-one years.",
      variants = {
        { when = flag "co_stacks_open",
          name = "the Librarian's empty desk",
          description = "A stamp, a lamp, and a chair pushed back. From somewhere below comes the sound of a very large ledger being carried up a great many stairs. She will be some time." },
      },
      things = {
        { name = "the stamp", description = "Brass, with a date wheel. It has come down on ten thousand slips and, they say, on one hand." },
        { name = "the ledger of fines", description = "The current volume. The Fenwick-Thrum account is clear: no member of the family has ever borrowed a book." },
      },
      actions = {
        { "Ask for a book on real magic", when = no(flag "co_stacks_open"),
          say "\"Restricted.\" On dragons? \"Restricted.\" On what is restricted? She points to a shelf of catalogues. They are chained shut." },
        { "Return the overdue book", when = all { item "overdue_book", no(flag "co_stacks_open") }, take "overdue_book", set "co_stacks_open",
          say "You put it on the desk. She looks at the shelf mark. She looks at the date. The colour leaves her face and then comes back with reinforcements. \"Thirty-one years,\" she says. \"{i}Who.{/}\" You say that you found it. She breathes. \"The fine will need the long ledger. Do not move.\" She goes down the stairs with her keys. She has left one of them in the grille." },
      } },
    { name = "the reading tables",
      description = "Oak, with a green lamp at every place.",
      things = {
        { name = "the chained readers", description = "Each student is fastened to the desk by the ankle, with a brass chain, for the study hour. It was brought in to stop them leaving. They have not noticed. It had not occurred to any of them to get out of a chair unaided." },
        { name = "a first-year", description = "He has a book open in front of him, upside down. His servant is standing behind him, reading it the right way up by leaning." },
        { name = "a lamp", description = "Green glass. It lights when a page is turned and goes out after a minute. Most of the room is dark." },
      } },
    { name = "the catalogue",
      description = "A cabinet of small drawers, by subject.",
      things = {
        { name = "a card", description = "{i}Magic, Practical: see Servants' Hall.{/} Crossed out, firmly, and refiled under {i}Errors{/}." },
        { name = "another card", description = "{i}Pargeter, M. Works by: see Restricted. Works about: see Portraits, Liberties Taken.{/}" },
        { name = "the drawer marked Z", description = "One card. {i}Zeal, excess of: see Expulsions.{/}" },
      } },
    { name = "the shelves",
      description = "Three galleries, reached by iron stairs. Every book is on a chain long enough to reach the nearest table and no further.",
      things = {
        { name = "Deportment for Wizards", description = "The most borrowed book in the library. Chapter four, {i}Holding the Wand at Dinner{/}, has been rebound twice." },
        { name = "a genealogy of the nine families", description = "Forty volumes. In the margin of every page somebody has drawn, in pencil, a very small wooden spoon." },
        { name = "a shelf of theses", description = "Three centuries of graduates. They are all the same length, and when you look, the same thesis, with the name changed. There is a man in Elbow Lane who copies it out." },
      } },
    { name = "the painted ceiling",
      description = "{i}The Triumph of Breeding over Study.{/} A noble youth in a gown, asleep on a cloud, while Knowledge, a stout woman with a lamp, is shown the door by cherubs.",
      things = {
        { name = "the face of Knowledge", description = "The painter gave her the Founder's face. From the right place on the floor she is looking straight at the Librarian's desk, and she does not look beaten." },
      } },
    { name = "the grille",
      key = "grille",
      description = "An iron gate behind the Librarian's desk, with stairs going down beyond it. A sign: {b}RESTRICTED STACKS. No admittance without a letter from the Chancellor, the Bursar, and your mother.{/}",
      variants = {
        { when = flag "co_stacks_open",
          description = "It stands open, with the Librarian's key still in the lock. The sign about your mother has swung round to face the wall." },
      } },
    { name = "the silence",
      description = "It is kept by an old enchantment, the Librarian says. A dropped book makes no sound here. You try it with a small one. It makes no sound. Mistress Ottery looks up anyway.",
      variants = {
        { when = flag "co_stacks_open",
          description = "It is kept by an old enchantment. With the Librarian away you try a cough. No sound. You try a bigger one. A student at the nearest table looks round, puzzled, at nothing." },
      } },
    { name = "the returns box",
      description = "A brass slot in the desk, for books brought back. There is a cobweb across it." },
  },

  exits = {
    { to = "academy_quad", description = "Down the steps, where you may breathe as loudly as you like." },
    { to = "restricted_stacks", label = "The grille",
      description = "Behind the empty desk, through the iron gate, down.",
      requires = flag "co_stacks_open", hidden = true },
  },
}

space {
  id = "restricted_stacks",
  region = "collegium",
  secret = true,
  name = "The Restricted Stacks",
  description = "Down the stairs the shelves are iron and the lamps are caged. This is where the Collegium keeps the books that work. There are three hundred years of dust on the floor, and through the dust one line of small footprints, recent, going to the same shelf and back.",
  palette = { bg = "#0b0a12", text = "#cac4d8", dim = "#625c78", accent = "#a880f0", border = "#342c54" },
  ambience = { dust { glyphs = "·˙", color = "#4c4660", rate = 0.4, speed = 0.15 }, shimmer { color = "#a880f0", strength = 0.18 } },

  things = {
    { name = "the footprints",
      description = "A servant's shoe, mended at the heel. Whoever she is, she comes down often, and she puts everything back." },
    { name = "a book that reads you",
      wonder = true,
      description = "You open it. The pages are blank. Then, across the top of the first, in a quick brown hand: {magic}An adventurer. Under-equipped. Kind, on the whole. Has not thought this through.{/} You shut it. You feel that you got off lightly, and that it had more.",
      actions = {
        { "Read on", say "{i}Is looking for something and has not asked what.{/} You shut it again. It was only getting started." },
      } },
    { name = "a shelf of grimoires in chains",
      description = "These are chained because they pull. You can hear the links, very quietly, all along the shelf.",
      things = {
        { name = "On the Raising of Storms", description = "Wet. The shelf under it has rusted through twice." },
        { name = "A Treatise on Fire", description = "Kept in a bucket of sand. The Librarian turns it once a week, with tongs." },
        { name = "the one on the floor",
          key = "floor grimoire",
          visible_if = no(item "helpful_grimoire"),
          description = "A green book that has got its chain all the way out and is lying on the flagstones at the full length of it, pointing at the stairs. {i}A Practical Course of Levitation.{/} It is hovering, by about the thickness of a finger. It is trying to help.",
          actions = {
            { "Unclip the chain", once = true, give "helpful_grimoire", fx "sparkle",
              say "The clasp is three hundred years old and comes apart in your fingers. The book rises to the height of your shoulder, turns once in the air, and settles just behind you, where a well-brought-up dog would walk. You have acquired {gold}A Practical Course of Levitation{/}. Or it has acquired you." },
          } },
        { name = "an empty place on the shelf",
          visible_if = item "helpful_grimoire",
          description = "A rectangle with no dust in it, and a chain hanging slack. The books on either side have moved up a little, as people do on a bench." },
      } },
    { name = "the bestiary",
      description = "A great book on a stand, with a coloured plate for every beast in the kingdom: troll, basilisk, goose. The section on birds has been cut out with a knife, neatly, all of it. The stubs are old. The index still lists them, and for every one of them it gives the same page.",
      things = {
        { name = "the plate of the goose", description = "Filed under {i}Monsters{/}. The artist has drawn it life size, across two pages, and has pressed very hard." },
        { name = "the plate of the troll", description = "A good likeness of the one on the pass. He is shown at a desk. The caption says {i}harmless if paid{/}." },
      } },
    { name = "the Founder's shelf",
      description = "Six notebooks in oilcloth, tied with string, labelled in a round farmhand's script: {i}What Works{/}, volumes one to six. They have never been catalogued. The dust on them has been wiped away lately, by a sleeve.",
      things = {
        { name = "volume one", description = "It opens: {i}Start with a kettle. If you can't boil a kettle by wanting to, you have no business with dragons.{/}" },
        { name = "volume six", description = "The last entry: {i}They want me to say it runs in families. It does. All of them.{/}" },
      } },
    { name = "a caged lamp",
      description = "The flame is {magic}violet{/} and leans towards whichever book you are looking at." },
    { name = "a reading stool",
      description = "Low, three-legged, brought down from a kitchen. There is a candle end on the floor beside it and a crust wrapped in a cloth." },
    { name = "a locked cabinet",
      description = "Iron, with nine locks, and a brass plate: {i}The Nine Families: Proofs of Aptitude{/}. You look through the grating. It is empty. It has always been empty. It is the best-guarded thing in the Collegium." },
    { name = "a map of the Collegium",
      description = "Framed, from the founding. Lecture rooms, library, hall. Under the middle of the lawn there is a room drawn in and then scraped out with a knife, and a statue put on top of the place in a later ink." },
  },

  exits = {
    { to = "academy_library", label = "The stairs up", description = "Back to the hush, before the long ledger arrives." },
  },
}
