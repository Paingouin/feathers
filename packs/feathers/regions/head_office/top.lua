-- Head Office: the Executive Floor at the very bottom, and the office of whoever is in charge.

space {
  id = "ho_executive",
  region = "head_office",
  name = "The Executive Floor",
  description = "The lift opens on carpet so deep that your boots go quiet in it. A corridor panelled in black wood, with a brass lamp at every door and a name on every door in gold. It is cooler down here, and hushed, like a bank on a Sunday. Somewhere a single typewriter is going. At the far end of the corridor there is a pair of doors taller than the rest, and a desk in front of them, and at the desk a secretary who has seen you coming for a hundred yards and has arranged her face.",
  palette = { bg = "#0a0a0c", text = "#dcd6cc", dim = "#787066", accent = "#d8b860", border = "#4c4028" },
  ambience = {
    dust { glyphs = "·", color = "#3c3a36", rate = 0.05, speed = 0.04 },
    shimmer { color = "#2a2418", strength = 0.2 },
  },

  things = {
    { name = "the secretary",
      key = "ho_secretary",
      icon = "☻",
      description = "Miss Ember, the Chairman's diary secretary: small, upright, the dull red of a banked fire, with a pencil through her bun and a diary in front of her the size of a paving stone. The post is temporary. She has held it since the Founding. She guards the tall doors with the one weapon the Firm has never found an answer to, which is that she is quite sure of her instructions.",
      things = {
        { name = "the diary", description = "Open at today. {i}9: Out. 10: Out. 11: Out. 12: Dinner (out).{/} She turns back a page for you, and a year, and a century. It is all in her hand, every hour, and not one line of it was copied from the day before. She wrote each of them fresh." },
        { name = "the pencil in her bun", description = "Red at one end and blue at the other. Blue is for appointments kept. The blue end has never been sharpened." },
        { name = "her typewriter", description = "Black, upright, with keys like a row of teeth. She is typing a letter. {i}The Chairman thanks you for yours of the 4th and regrets.{/} It is the same letter. The date of {i}yours{/} changes." },
      },
      actions = {
        { "Ask to see the Chairman", say "\"He is out.\" It comes like a door closing softly. You ask when he will be back. \"Presently.\" You ask when he went. She considers whether that is a proper question, and decides that a guest may be told. \"He came down with all of us, at the start. He saw us settled. He hung a clock in the canteen. Then he took his hat and said he was going to see about something, and that I was to keep his appointments open.\" She squares the diary. \"I have.\"" },
        { "Ask to wait", when = no(flag "ho_office_open"), set "ho_office_open",
          say "\"Wait?\" The pencil comes out of the bun. She looks down the diary. She looks down the list of things visitors have asked, which is short, and this is not on it. \"Nobody waits. They are told he is out and they go.\" She gets up. She is no higher than your elbow. \"There are chairs inside. I suppose a person who is willing to wait had better do it properly.\" She opens one leaf of the tall doors, a hand's breadth, with a key she wears on a ribbon. \"Don't sit in his. And don't touch the pen.\"" },
        { "Ask to wait", when = flag "ho_office_open", say "\"You may go in,\" says Miss Ember. \"I have written you in the diary. In blue.\" She shows you the pencil. The blue end has a point on it, new, and very carefully done." },
      } },

    { name = "the tall doors",
      key = "ho_tall_doors",
      description = "Twelve feet high, black, with handles of plain brass. No name is painted on them. It did not seem necessary. The carpet in front of them has no wear at all.",
      variants = {
        { when = flag "ho_office_open", description = "Twelve feet high, black, with handles of plain brass. One leaf stands a hand's breadth open. There is lamplight inside, and it is very still." },
      } },

    { name = "the Balance",
      wonder = true,
      description = "In an alcove halfway down the corridor, lit from above, stands a pair of scales as tall as a door. Bronze, very old, plain. It is the thing on the Firm's seal, and this is the one the seal was drawn from. In the left pan lies a heap of small lead tokens, and you count them in tens: nine hundred and four. In the right pan there is nothing whatever. The beam hangs dead level. You look underneath for the trick, the wire, the wedge. There is none. Something you cannot see sits in the empty pan, and weighs exactly as much as everything the Firm has ever taken, and has done so through every addition. The Directors pass it twice a day and keep their eyes on the carpet.",
      things = {
        { name = "the left pan", description = "Lead, stamped with numbers. Token 212 sits on the very top and is the only one that is not grey. It has a brightness on it, as if it were handled." },
        { name = "the right pan", description = "Empty and clean. You put a finger in it and press, to see. It does not go down. You press with your whole hand. It is like leaning on a wall." },
        { name = "the plate on the plinth", description = "{i}THE FIRM'S BALANCE. Checked daily. Always correct.{/} Somebody has added, in careful small letters, with the point of a pin: {i}And yet.{/}" },
      },
      actions = {
        { "Add your copper to the left pan", say "You lay your bent copper on the heap of lead. The beam does not stir. You take it off again. The beam does not stir. Whatever is in the other pan, it was already allowing for you." },
      } },

    { name = "the Directors' doors",
      description = "Nine a side, each with a gold name and a brass lamp, each shut.",
      things = {
        { name = "the door of the Director of Temptation", description = "{i}Sir Belphegor Ash.{/} From behind it comes the sound of somebody practising a golf swing into a net. He has not been up to floor three since the staff fell below fifty. He finds it lowering." },
        { name = "the door of the Director of Works", description = "{i}Lord Slag.{/} On the mat is a pair of very small slippers' worth of dust: he went up to see the furnaces once, and left his slippers there, and has stayed in ever since rather than send for them." },
        { name = "the door of the Director of Audit", description = "Ajar. A grey desk, a grey lamp, and nobody. She is in the canteen. The room is so tidy that it seems to have fewer corners than the others." },
        { name = "a door with the name painted out", description = "The Director who asked to be demoted. He washes up now. Nobody has liked to give the room to anyone else. A whistling can sometimes be heard from it, though he is nine hundred floors away." },
      },
      actions = {
        { "Knock on a door", say "You knock at Sir Belphegor's. The golf stops. There is a long silence in which somebody very grand holds his breath. Then a card comes out under the door. {i}In a meeting.{/} You know another gentleman who uses that one. You wonder if they have met." },
      } },

    { name = "the boardroom",
      description = "Through glass doors on the left: a table long enough to launch, eighteen chairs, and one at the head with a higher back.",
      things = {
        { name = "the table", description = "One plank of black wood, polished till it holds the lamps like water. At each place there is a blotter, a carafe, and a pad. Every pad has the same thing drawn on it, eighteen times, in eighteen hands: a small house with smoke coming out of the chimney." },
        { name = "the minutes", description = "A book on the table. {i}Apologies: the Chairman. Matters arising: none could be decided in his absence. Any other business: Lord Slag asked whether anybody knew where he had gone. Nobody did. The meeting closed.{/} The entry is the same on every page. Only the handwriting ages." },
        { name = "the chair at the head", description = "Leather, high-backed, pushed in square. The seat is not creased. A fine net of cracks has come over it anyway, as on the back of an old hand." },
        { name = "a chart on an easel", description = "{i}Projected Souls.{/} The line goes up like the side of a house. It was drawn at the Founding and has been carried forward a year at a time, by ruler, without anyone going back to compare." },
      } },

    { name = "the portraits",
      description = "Oils, in gilt frames, down the right-hand wall: the Board, by seniority.",
      things = {
        { name = "the portrait of Lord Slag", description = "Very fine, with a great many orders. The painter has put the furnaces in behind him, glowing. He has painted them from a description, and they look like a row of post boxes." },
        { name = "the portrait of the Chairman", description = "The largest frame, at the end, by the tall doors. It holds a canvas of plain dark brown. He would not sit. The painter did the background, and waited, and the Board hung it as it stood. In certain lights you think the brown has a shape in it, large, with its back to you, going away." },
        { name = "a small frame at knee height", description = "A watercolour, not signed: a hillside, sheep, a girl sitting on a stone. It has no business among the Directors. Each of them, on being asked, has said one of the others must have put it there." },
      } },

    { name = "the carpet",
      description = "Deep red, wall to wall, the pile as long as grass. It is brushed each night in one direction, toward the tall doors, and your footprints lie in it behind you like tracks in snow.",
      things = {
        { name = "a square cut out of the corner", description = "By the lift, neatly, with a knife: two pieces, each the size of a knee. The cut edges have been turned under and stitched so that it should not fray. Somebody is ashamed of it and somebody needed it." },
      } },

    { name = "the typing pool",
      description = "A side room where six imps on high stools take down the Board's letters. They have had none to take since the last meeting that decided anything. They type, to keep their hands in, the alphabet." },

    { name = "the tea service",
      description = "On a trolley outside the tall doors: silver, with a spirit lamp, laid for one. Miss Ember makes a fresh pot at four each day and wheels it in. At five she wheels it out.",
      things = {
        { name = "the cup", description = "Bone china, with the crest. There should be a pair. There is one cup on the trolley, and a clean ring on the cloth where its fellow stood." },
      },
      actions = {
        { "Ask where the other cup is", say "Miss Ember looks at the ring on the cloth. \"It goes,\" she says. \"Every so often. And it comes back, washed.\" She puts the lid on the sugar. \"I do not enquire. It is not for me to know where the Chairman takes his tea. I only know that someone is taking it, and that I have made it, and I find that is a great deal to go on with.\"" },
      } },

    { name = "the in-tray trolley",
      description = "A wheeled rack as tall as you are, parked by the secretary's desk, stacked with cylinders from every floor. Each is tagged {i}For signature{/}. The lower ones have been here so long that the brass has gone green.",
      things = {
        { name = "a cylinder from Reception", description = "{i}Chit: one lamp, seventh, failing.{/}" },
        { name = "a cylinder from Personnel", description = "It is the fattest. {i}4,000 confirmations, various.{/}" },
      } },

    { name = "the window",
      description = "At the end of a side passage there is a window, with curtains, and a view. It is a painting of a view: a park, a lake, far hills, done on the brickwork behind the glass. The Directors asked for an outlook. The painter gave them the one he remembered, and it is plainly from upstairs, and plainly from the Glowers on a clear day, looking west." },
  },

  exits = {
    { to = "ho_lift", label = "The lift", description = "Back along your own footprints in the carpet." },
    { to = "ho_big_office", label = "The tall doors",
      description = "Through the leaf Miss Ember has left open.",
      requires = flag "ho_office_open", hidden = true },
  },
}

space {
  id = "ho_big_office",
  region = "head_office",
  secret = true,
  name = "The Chairman's Office",
  description = "A big plain room. You had been ready for a throne, a pit, a wall of flame. There is a desk, a chair, a lamp with a green shade, and a hat stand with nothing on it. The carpet stops at the door: in here the floor is bare boards, swept. One wall is books. Everything is in order and nothing is dusty. It is the room of somebody who works late, and likes it plain, and went out, and is expected.",
  palette = { bg = "#0c0b0a", text = "#dcd8cc", dim = "#7a7466", accent = "#9cc890", border = "#444234" },
  ambience = {
    flicker { color = "#9cc890", strength = 0.08 },
    dust { glyphs = "·", color = "#3e3c34", rate = 0.04, speed = 0.03 },
  },

  things = {
    { name = "the desk",
      description = "Oak, not black: ordinary brown oak, old, with a leather top and ink stains. It is the only brown thing in Head Office.",
      things = {
        { name = "the pen",
          key = "ho_pen_stand",
          description = "It lies in a tray at the front of the desk, alone: a black pen, heavy, with a steel nib. Every signature in the Archive was made with it. It is not chained. In this building, that is how you know what a thing is.",
          actions = {
            { "Take the pen", when = no(item "ho_binding_pen"), give "ho_binding_pen", fx "flash",
              say "You were told not to touch it. You stand over it a while. Then you see the card propped in the tray, in a big round hand, the ink gone brown: {i}If I am not back, somebody had better take this away before it does any more. Not a Director. Somebody with nothing in mind.{/} You look at your own mind, and it qualifies. The pen is cold and very heavy. Out in the corridor the typewriter stops, for one line, and then goes on." },
          },
          variants = {
            { when = item "ho_binding_pen", description = "The tray at the front of the desk is empty, with a long clean shape in the dust of ages where there is otherwise no dust. The card is still propped in it." },
          } },
        { name = "the stamp",
          key = "ho_stamp",
          description = "A rubber stamp with a wooden handle, on a red pad. You turn it over. {i}CONFIRMED{/}, backwards. The handle is worn to the shape of a very large thumb.",
          actions = {
            { "Stamp Mr Brimley's confirmation", when = all { flag "ho_brimley_word", no(flag "ho_brimley_confirmed") }, set "ho_brimley_confirmed", fx "shake",
              say "You take the sheet out of its cylinder and lay it square on the blotter. {i}That the word 'Acting' be struck from his door.{/} You ink the stamp. You think of twelve hundred quarterly returns and one remark about the weather. You bring it down. {i}CONFIRMED{/}, a little crooked, and the red does not dry so much as set. The cylinder takes the sheet back and is gone up a tube in the wall before you have let go of it. Far overhead, a long way up the building, you would swear that somebody cheered, and was shushed." },
            { "Stamp something else", say "You try it on the back of your hand. Nothing: the rubber comes away clean. It only stamps what has been properly drawn up. You are not drawn up. You find you are a little hurt." },
          } },
        { name = "the blotter", description = "Green, in a leather corner-piece. It has the ghost of one signature on it, backwards, large, over and over, and under them all, the oldest and faintest mark, a small drawing of a house with smoke." },
        { name = "the in-tray", description = "Empty. All of it is out on the trolley with Miss Ember. He left a clear desk." },
        { name = "the out-tray", description = "One sheet. {i}Canteen clock: leave it.{/} It is initialled. Nobody has dared to collect it, so it has never been filed, and so the instruction has never lapsed." },
      } },

    { name = "the chair",
      wonder = true,
      description = "It is behind the desk, turned a little aside, as a chair is left by somebody who got up meaning to come back. A big chair, of worn brown leather, with arms. You go round and look at it. The seat has a hollow in it and the arms are rubbed pale. Whoever sat here was very large, and sat forward, with their elbows on the desk and their head in their hands. You can see it in the leather as plainly as in a footprint. All your life you have been told who sits at the bottom of everything, and what he wants with you. He sat like a man with a job he had not asked for, and one evening he put his hat on, and nobody down here has had the heart to tell the rest of the world.",
      things = {
        { name = "the arms of the chair", description = "Worn through at the ends to the horsehair, in the grip of two hands. Miss Ember has darned them. The darn is worn too." },
        { name = "a cushion", description = "Flat, faded, embroidered with a motto by somebody who could not embroider: {i}IT SEEMED A GOOD IDEA.{/}" },
      },
      actions = {
        { "Sit in his chair", say "You were told not to. You put one hand on the arm of it instead. The leather is cool. From this side of the desk the room looks smaller and the door looks a long way off, and you can see what he saw each time he lifted his head: the hat stand, with the hat on it. You take your hand away." },
      } },

    { name = "the hat stand",
      description = "Bentwood, by the door. Six pegs. No hat, no coat, no stick. On the floor underneath is a rubber mat with the dried print of two very large galoshes.",
      things = {
        { name = "the pegs", description = "The top one is worn on the upper side. The others have never been used. He had one hat." },
      } },

    { name = "the wall of books",
      description = "Floor to ceiling, and not a ledger among them.",
      things = {
        { name = "a shelf of travel", description = "Guides to the upper world: its roads, its inns, its fairs. They are all read to pieces. The one on the kingdom falls open at a page about a village with a well." },
        { name = "a shelf of gardening", description = "Nine books on roses, and a seed catalogue with the corners turned down." },
        { name = "a book left face down on the arm of the sofa", description = "{i}The Shepherd's Calendar.{/} It has been face down so long that the spine has set that way. You turn it over. He had got as far as lambing." },
        { name = "a gap in the top shelf", description = "One book's width, with dust on either side of it and none in it. He took something to read on the way." },
      },
      actions = {
        { "Take down a book", say "You pull out a guide to the Mumblewood. A pressed leaf falls from it, a real one, brown and brittle, an oak. On the flyleaf, in the big round hand: {i}Went up for an afternoon. Nobody ran. Must go again.{/}" },
      } },

    { name = "the sofa",
      description = "Horsehair, under the books, with a rug folded on one end. It is long. It would need to be.",
      things = {
        { name = "the folded rug", description = "A grey travelling rug, with a moth hole. It smells of nothing down here. You hold it to your face. Very faintly, as from another year, it smells of grass." },
      },
      actions = {
        { "Wait on the sofa", say "You said you would wait, so you do. The lamp hums. The boards tick. Nothing comes through the door, and the trapdoor under the desk does not lift. After a time you understand that waiting in this room is not a thing done to pass the time until he comes. It is a way of keeping the place warm. You get up, and you find you have folded the rug again without thinking." },
      } },

    { name = "the green lamp",
      description = "On the desk, with a brass pull. It is lit. It was left lit. The oil in it is at the same line as on the day he went, says Miss Ember, and she has never filled it." },

    { name = "the trapdoor",
      description = "In the boards behind the desk, where the chair would roll over it: a square hatch with a ring. The edges are clean. There is a short ladder hooked on the wall beside it, and the bottom rungs of the ladder are worn.",
      things = {
        { name = "the ring", description = "Bright with handling. It is cold, colder than anything else in the room, and when you lift it a finger's width a breath of cool air comes up, and it smells like the passage in the Small Print." },
      },
      actions = {
        { "Lift the trapdoor", say "It comes up easily, on a counterweight. Below is dark, and a long way down in the dark the faintest paleness of a floor. You think of the ladder. It is about a tenth as long as it would need to be. Either he was very tall, you think, or he did not strictly need it, and kept it out of good manners. You let the hatch down." },
      } },

    { name = "the framed paper",
      description = "The desk does not face the door. It faces the side wall, and on that wall, at the eye level of a person sitting, hangs one small frame. It holds the original of the First Claim, of which the branches have copies: {i}Everything. Finders keepers.{/} And across it the blue stamp. Under the stamp, in pencil, in the big round hand, he has written two words: {i}Quite right.{/}" },

    { name = "the window",
      description = "There is one, behind a blind. You pull the cord. Brick. But the brick has been whitewashed, and on the whitewash, in ordinary chalk, somebody with no gift for it has drawn a line of hills, a sun, and three things that are probably sheep." },

    { name = "the wastepaper basket",
      description = "Wicker, under the desk, with one ball of paper in it. You smooth it out. {i}Dear{/}, it says, and a space, and then nothing. He did not know how to address it either." },

    { name = "the calendar",
      description = "A block calendar on the mantel, of the kind where you tear off the day. It has not been torn since he left. The leaf showing is a Thursday." },
  },

  exits = {
    { to = "ho_executive", label = "The tall doors", description = "Out to Miss Ember, the trolley and the deep carpet." },
  },
}
