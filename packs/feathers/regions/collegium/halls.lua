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
    { name = "the lantern",
      description = "A magic lantern on a stand at the back: brass, with a lamp inside and a slot for glass slides. It is the only thing in the Collegium with the word in its name that works, and it was made by an optician in Aldmoor.",
      things = {
        { name = "the box of slides", description = "Painted glass. {i}A Jungle Idol (front). A Jungle Idol (side). The Sacred Script, enlarged.{/} The last shows three toes and a spur, eleven times, in a line." },
        { name = "a slide out of order", description = "Slipped in among the idols: a pencil drawing of a tiny gold frog on a leaf, done so well that you look for the wet. On the edge, {i}Podge{/}. Somebody sent it home in the wrong box, and nobody here has known what to make of a thing that is merely true." },
      },
      actions = {
        { "Light the lantern", say "A servant does it for you, with a taper, without being asked. A frog the size of a door appears on the wall, gold and shining. The room goes quiet. Even Lord Quillon stops. Then he says, \"Next slide,\" and it is a coconut." },
      } },
    { name = "names carved on the desks",
      description = "Three hundred years of young gentlemen with penknives. Coats of arms, mottoes, a very good caricature of a professor.",
      things = {
        { name = "one low on the back bench", description = "Where the servants stand. Small, and cut with something blunt: {i}I understood that. Tib.{/}" },
      } },
    { name = "the divinity bench",
      description = "The front row on the left is reserved for the Faculty of Divinity, which has one student. He is asleep, with a book open on his chest: {i}The Major Gods, with a Note on the Minor{/}.",
      things = {
        { name = "the book", description = "Six hundred pages on Thrum, whom nobody has worshipped in nine centuries. The note on the minor gods is at the back and is a single line: {i}There are also some small ones, locally.{/}" },
        { name = "his servant's notebook", description = "Behind him, on the back wall, a footman is taking the lecture down. In the margin, in another hand entirely, he keeps a list of which small god has done what for whom this week. It runs to forty pages. It is the only serious theology being done in the Collegium." },
      },
      actions = {
        { "Read over the footman's shoulder", say "{i}Tues. Socks: found Cook's. Soup: Tib had a bowl appear, says she didn't. Jamb: buttery door, the usual. Almost: Sir Aubrey nearly attended.{/} He sees you looking and closes the book, not unkindly. \"Field work,\" he says." },
      } },
    { name = "a draught from under the dais",
      description = "It comes up through a knot hole in the boards by the lectern and stirs the professor's notes. He has complained of it for thirty years. The Bursar has it down as {i}character{/}.",
      things = {
        { name = "the knot hole", description = "You put your eye to it. Dark, and a long way down a line of light, as from a door left ajar in a cellar. There is a smell of old paper and of something that has been thinking." },
      } },
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
    { name = "the new accessions",
      description = "A trolley by the Librarian's desk, with the term's arrivals waiting to be stamped.",
      things = {
        { name = "Invisibility for the Busy Man", description = "By I. Null. The Librarian insists that the Collegium has no copy. This is one. The pages are blank, the catalogue card is blank, and it has been on the trolley, waiting to be stamped, for forty years, since nobody can prove that it arrived." },
        { name = "a crate from the Sweltering", description = "{i}Vole-Brandish, The Natural History, MS., part 1 of 60.{/} The Librarian has not opened it. She has read the index, which came separately, and has shelved the crate under B, entire." },
        { name = "a bark notebook", description = "It came in the same crate, by mistake, wrapped in a shirt. Drawings, names, uses, in a careful round hand that keeps apologising in the margins. It has no author on it. The Librarian has read it twice, and has it on her own desk, and looks up sharply if anybody goes near." },
      },
      actions = {
        { "Ask about the bark notebook", say "The Librarian lays one hand flat on it. \"It is not catalogued,\" she whispers, \"because I do not know whose it is. When I know, he will be told that it is the only useful thing that expedition has sent.\" She thinks. \"In writing. So that he can keep it.\"" },
      } },
    { name = "the ladder",
      description = "Oak, on a rail, running the length of the shelves. Gentlemen are not permitted on it. A servant goes up and reads out the spines, and the gentleman points." },
    { name = "the theology alcove",
      description = "A bay by the north window, labelled in gilt. Three walls of sermons, in calf, with the pages uncut. One shelf at the bottom is of smaller books in paper covers, much handled, with no label.",
      things = {
        { name = "the sermons", description = "Twelve hundred volumes on the nature of the gods by people who had not met any." },
        { name = "the paper covered shelf", description = "Chapbooks. {i}The Lady and the Odd Sock. How Jamb Got His Shoulder. Forty Ways With a Bone, as shown to a Cook by One Who Knew.{/} They are stamped {i}Servants' Hall{/} and are not in the catalogue. They are the only books in the alcove with candle grease on them." },
        { name = "a pamphlet tucked behind", description = "No cover. {i}What to say when they ask who made the world.{/} It has three pages. The first two are advice on changing the subject. The third has been cut out, with a knife, close to the stitching." },
      },
      actions = {
        { "Read a chapbook", say "You take {i}How Jamb Got His Shoulder{/}. It is eight pages and has a woodcut of a very wide man holding up a lintel while a house is built under it. It ends: {i}and so, good people, when a door will not open, do not curse. Somebody is leaning on it, and he is on your side.{/}" },
      } },
    { name = "a reader asleep on his arms",
      description = "A senior Fellow, at the end table, face down on a folio, with his spectacles pushed up. A slip on his elbow says {i}DO NOT DUST{/}. He has been researching the same footnote for nine years.",
      things = {
        { name = "the folio", description = "What can be seen of it round his sleeve is a list of temples that stood in Aldmoor before the Street: nine great ones, all to the same name. He has underlined the name each time and then, each time, has plainly gone to look something up and never come back to the line." },
      },
      actions = {
        { "Read the footnote", say "You lean. {i}The Great Temple is said to have had a roof. No account says what became of it. One would expect rubble.{/} And under that, in pencil, very small: {i}One would expect a great deal of rubble.{/}" },
      } },
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
    { name = "the withdrawn theses",
      description = "Bound in grey, unread: every dissertation the Collegium ever passed and then thought better of.",
      things = {
        { name = "On Not Being Seen: A Reply", description = "By I. Null, then a student. The examiners' note is gummed inside the cover. {i}The candidate demonstrated his thesis during the oral. We were unable to find him to tell him he had passed.{/}" },
        { name = "Mimms: On the Age of Certain Stones", description = "Sent from abroad, last year. Stamped {b}RESTRICTED{/} the day it came. A slip is pinned to it in the Chancellor's hand: {i}Not to be read until we have decided what it says.{/}",
          actions = {
            { "Read the first page", say "{i}I bored a root and counted its rings. I examined the wall it grows through. The wall was built after the root. The root grew after the wall. I have checked this four times and it is so.{/} Then, lower down, in the same hand, less steady: {i}I do not put forward an explanation. I put forward the measurements, and I should be very glad to be told that I am wrong.{/} You close it. The caged lamp has gone very steady." },
          } },
      } },
    { name = "a drip",
      description = "From the vault, on to a book. Somebody has put a tin bowl on the book. The bowl is full, and the book under it is quite dry, and a little smug: it is a treatise on umbrellas." },
    { name = "a shelf of confiscated prayers",
      description = "Iron, low, behind a mesh door: devotional matter taken from servants over three centuries on the ground that it was {i}efficacious{/}, which is against the statutes below stairs.",
      things = {
        { name = "a knitted charm", description = "A sock, the size of a thumb, in grey wool, on a loop. Taken from a laundress in the second Chancellor's time. The report says she had not lost an item of washing in eleven years and that it was {i}giving the gentlemen unrealistic expectations{/}." },
        { name = "a wooden spoon, charred", description = "Tagged. {i}Stirred with intent.{/} The cook was let off with a caution. The spoon was kept. The soup, the tag admits, was never as good again." },
        { name = "a slate", description = "A child's, with one line on it in chalk, rubbed nearly out: a prayer to a god of people who are no good at this. No such god is known. The examiners noted that the prayer was {i}nevertheless felt to have gone somewhere{/} and locked it up for that." },
      },
      actions = {
        { "Touch the mesh", say "Warm. Not hot: warm like a bed that somebody has just left. A great many small sincere things are shut in there together and they have, over three hundred years, taken the chill off the iron." },
      } },
    { name = "a kneeler",
      description = "At the very end of the stacks, facing a blank wall: one hassock, worn in two hollows, and a candle stub on a saucer. The dust round it is trodden. The small footprints come here every night before they go anywhere else.",
      things = {
        candle { name = "the stub", description = "Kitchen tallow. It has been lit and pinched out many times over to make it last." },
        { name = "the blank wall", description = "Brick, limewashed. At the height of a kneeling girl's eyes somebody has drawn a very small door in pencil, with a handle. It is not a spell. You would know by now. It is only a wish that there were a way out of here for people who can do things." },
      } },
  },

  exits = {
    { to = "academy_library", label = "The stairs up", description = "Back to the hush, before the long ledger arrives." },
  },
}
