-- Off the staff corridor: the Prayer Office, the room for what cannot be delivered,
-- the anteroom for gods nobody believes in yet, and the kitchen of the goddess of soup.

space {
  id = "sh_sorting_office",
  region = "small_heavens",
  name = "The Prayer Office",
  description = "A long room with a counter, a wall of pigeonholes and a hole in the ceiling. Out of the hole, without stopping, prayers fall. They come down like a slow snow of paper, every size, some folded, some screwed up, a few on fire. A staff of cherubs in green eyeshades catches them in baskets, reads the first line, and throws each one into a pigeonhole without looking. Nothing is lost. A good deal is late.",
  palette = { bg = "#0f1012", text = "#dad8d0", dim = "#74747a", accent = "#d8d0a0", border = "#404048" },
  ambience = { snow { glyphs = "▫·˙", color = "#8c8a78", rate = 0.5, speed = 0.5 } },

  things = {
    { name = "Mrs Collect",
      icon = "☺",
      description = "The Postmistress of Heaven: a large calm angel with her wings pinned back under a cardigan, sleeve garters, and a pencil in her bun. She has run this office since there were only three gods and one of them was a river. She can tell a prayer's destination by the sound it makes landing.",
      things = {
        { name = "the pencil in her bun", description = "Indelible. She licks it. Her tongue is purple and has been for an age." },
        { name = "her sleeve garters", description = "Elastic, gold. They are, she says when asked, her halo. It kept catching on the pigeonholes and she had it cut down." },
        { name = "a cup of tea", description = "Cold, with a prayer floating in it. {i}Let him not have seen.{/} She fishes it out, reads it, and drops it in the box for the God of Small Change, who does a line in minor mercies." },
      },
      actions = {
        { "Ask how it works", say "\"They say it, down there. It comes up. If there's a name on it, it goes in the name's hole. If there's no name, we go by subject. If there's no subject, we go by tone.\" A prayer lands on her shoulder. She reads it. \"{i}Please please please.{/} That's Almost's. They're always Almost's.\"" },
        { "Ask whether they are answered", say "\"That's not this department.\" She sorts three without looking. \"We deliver. What a god does with his post is his own affair. Socks answers every one. Ledger answers in arrears. Thursday reads them and sighs.\" She looks up at the hole. \"I'll say this. I've never seen one go up that didn't come down {i}somewhere{/}.\"" },
        { "Ask about the ones with no god", when = flag "sh_tray_sorted", say "\"Ah. You found one.\" She lowers her voice. \"There's two sorts. There's the ones for a god that isn't yet. Those go to the Anteroom, the door with no card, and wait for him. You don't knock at that door. You stand at it.\" She taps the counter. \"And there's the other sort. Those you've seen where they go. I don't sort those. I only carry the tray.\"", set "sh_anteroom_known" },
      } },
    { name = "the fall of prayers",
      wonder = true,
      description = "{shimmer}A column of white, turning, from the hole in the ceiling to the baskets.{/} Each scrap is somebody, somewhere, at this moment, meaning it. A grace before a meal. A thing said into a pillow. A whole fishing fleet's worth, all at once, in a squall. They make a sound as they fall, very faint, like a great many people a long way off all drawing breath to speak.",
      things = {
        { name = "a burning one", description = "It comes down slowly, alight at one corner, and a cherub with a wet sponge on a stick goes for it. Those are the ones said in a rage. They are delivered the same as the others, scorched, with a slip: {i}DAMAGED IN TRANSIT.{/}" },
        { name = "a very small one", description = "The size of a stamp. It is from a child, about a rabbit. It has six cherubs round it. Those get taken up by hand." },
        { name = "a heavy one", description = "It falls straight, like a stone, and goes through the basket. {i}Whatever you think best.{/} They get one or two a year that are meant. The floor is dented where they land." },
        { name = "the hole", description = "Round, ragged, as if the first prayer had come through the plaster by itself and the rest had followed. Above it is not sky. It is merely the underside of everybody." },
      },
      actions = {
        { "Catch one", say "It settles on your palm, light as ash. {i}Let the adventurer who was in my shop come to no harm, the great daft thing.{/} There is no name on it. You know the hand, though, from a slate of tabs in a tavern. You fold it very small. A cherub holds out a basket, and after a moment you let it go, since it is not yours to keep. It is only about you." },
      } },
    { name = "the pigeonholes",
      description = "A whole wall, each with a brass card. The big ones at the bottom overflow on to the floor. The small ones at the top get one a year, and a cherub flies it up.",
      things = {
        { name = "LEDGER", description = "The largest hole. Everything in it is a request for more time. He reads them in order of receipt." },
        { name = "SOCKS", description = "Always full, always emptying. Her prayers are four words long and said on one leg." },
        { name = "GOOSE, THE", description = "A hole lined with tin. The prayers in it are all the same prayer: {i}not me{/}. The cherubs put them in with tongs." },
        { name = "WALL", description = "One prayer, very old, very long, written on a brick. It has been in the hole so long that the hole has settled round it." },
        { name = "THRUM", description = "Empty, dusted, the brass card polished. One prayer came for him, about sixty years ago, by mistake, from a man who had read the name on a ruin and liked it. Vesper came down in person to collect it. He is said to have it framed." },
      } },
    { name = "the cherubs",
      description = "Eleven. They are not the plump kind off a ceiling. They are small, quick, ink to the elbow, with eyeshades and a union.",
      things = {
        { name = "the shop steward", description = "A cherub with a pipe and a clipboard. The grievance this century is the burning ones. He wants danger money. Ledger has offered a medal." },
        { name = "a new cherub", description = "First week. Reads every prayer all the way through and has to go and sit down. The others were like that once. They are kind to him, and have hidden the ones from the hospital." },
      },
      actions = {
        { "Sort a tray", when = no(flag "sh_tray_sorted"), set "sh_tray_sorted", set "sh_dead_letters_open",
          say "They give you a tray and an eyeshade. Ledger, Ledger, Socks, Soup, Ledger. It is easy. Then one that begins {i}To whom it may concern{/}, and one that begins {i}Is anybody{/}, and one that is only a name you do not know, said twice. You look for the hole. There is none. The shop steward takes them from you, quite gently, and puts them on a tin tray by a green door at the back. \"Those go through,\" he says. \"You can carry it, if you want. Wipe your feet.\"" },
        { "Sort a tray", when = flag "sh_tray_sorted", say "You do another. You are getting quick. A cherub looks at your pile and moves two, without comment, from Ledger to Almost." },
      } },
    { name = "the counter",
      description = "Oak, with a brass grille and a bell. It is where the gods come to collect. There is a queue of one: a damp little god in a sou'wester, who has come for the Afterthoughts' post and has been told it is still at sea.",
      things = {
        { name = "the bell", description = "{i}RING FOR ATTENTION.{/} Under it, in pencil: {i}Attention is a prayer. Ring for service.{/}" },
        { name = "the god in the sou'wester", description = "God of the ninth wave. He gets his prayers in bottles, all on one tide. He has a string bag. He says the islanders are good people but they will put things in rhyme." },
      } },
    { name = "a tin tray by a green door",
      key = "sh_tin_tray",
      description = "Japanned tin, with a handful of prayers on it, squared up. Beside it a door in green baize with brass studs, the kind that shuts without a sound.",
      variants = {
        { when = flag "sh_dead_letters_open", description = "Japanned tin, with the three you found on top. The green door beside it has been left on the latch for you. It is the only door in the office that the cherubs do not bang." },
      } },
    { name = "the franking machine",
      description = "Cast iron, with a treadle. Every prayer is stamped with the date it was said and the date it was delivered. The two are sometimes years apart, and once, on one from a drowned man, the second is earlier than the first.",
      actions = {
        { "Frank your hand", say "{i}chunk.{/} RECEIVED, it says, on your knuckles, in purple, with today's date. It is oddly reassuring. You have at any rate arrived somewhere." },
      } },
    { name = "a sack marked RETURN TO SENDER",
      description = "Prayers that were answered before they were finished. The goddess of soup is the worst for it. Half her post goes back with the spoon already in the mouth." },
    { name = "a sack marked WRONG GOD",
      description = "Sailors praying to Saint Ledger. Clerks praying to the sea. A whole village in the Glowers that prays, every night, to be spared a gentleman who is at that moment mending their road. These are forwarded, with a slip. The slip is very tactful." },
    { name = "the scales",
      description = "A letter scale in brass. Prayers are charged by weight of meaning, not of words. A bishop's hour comes to a farthing. Something a carter says under a wheel breaks the pan." },
    { name = "a calendar of feast days",
      description = "On the wall, all scribbled over. Feast days are the rush. Mrs Collect has ringed the Feast of Saint Wobble in red and written {i}ALL LEAVE CANCELLED{/}, though his whole post is people asking to be let fall over somewhere soft." },
  },

  exits = {
    { to = "sh_staff_corridor", label = "The counter flap", description = "Back into the corridor." },
    { to = "sh_dead_letters", label = "The green baize door", description = "With the tin tray, quietly.",
      requires = flag "sh_dead_letters_open", hidden = true },
  },
}

space {
  id = "sh_dead_letters",
  region = "small_heavens",
  secret = true,
  wonder = true,
  name = "Not Known at This Address",
  description = "{glow}The green door shuts behind you and the noise of the office stops as if it had been cut with scissors.{/} A small square room, carpeted, with one lamp. The walls are drawers, from the floor up, each with a paper label. This is where the prayers go that were not said to any god at all: the ones addressed to the dark, to the ceiling, to the dead, to whoever is there. Nobody sorts them. Nobody answers them. They are kept, every one, flat and dry, in case.",
  palette = { bg = "#0b0d10", text = "#d4d4cc", dim = "#666a70", accent = "#a8b8c8", border = "#303840" },
  ambience = { dust { glyphs = "·", color = "#48505a", rate = 0.08, speed = 0.1 } },

  things = {
    { name = "the drawers",
      description = "Shallow, like a collector's cabinet, hundreds to a wall. Each label is the way its prayers begin.",
      things = {
        { name = "IS ANYBODY THERE", description = "Six drawers. The oldest are on bark. The question has not changed and neither has the handwriting, much: it is the hand people write in when they are alone at night." },
        { name = "TO THE DEAD", description = "The fullest. They are letters, really. {i}You would have laughed. The apple tree came through. I still lay two places.{/} The dead have a god somewhere, presumably. These were not sent to him. They were sent to the dead." },
        { name = "IF YOU CAN HEAR ME", description = "From the sea, mostly, and from under the Grumbles. The paper is damp or it is gritty. One is scratched on a shovel." },
        { name = "TO WHOM IT MAY CONCERN", description = "A whole drawer in one neat hand: the priest of the Unknown God, every evening for thirty years. He does not know they come here. Each ends {i}Were we close?{/}" },
        { name = "THANK YOU", description = "One drawer, and it is not full. These are the ones said to no one, for no reason, on a hill, on a fine morning. They are the only prayers in the whole of the heavens that ask for nothing. The drawer runs more smoothly than the others." },
      },
      actions = {
        { "Put the tray's three away", say "You find the drawers. {i}To whom it may concern{/} goes in with the priest's. {i}Is anybody{/} goes in the sixth drawer, on top. The one that is only a name, said twice, has no drawer. You stand holding it. In the end you lay it in THANK YOU, since you cannot think where else, and the drawer shuts on it without a sound." },
      } },
    { name = "the lamp",
      description = "A reading lamp with a green shade, on a small table, lit. There is no chair at the table. There is the mark of a chair, in the carpet, four dents.",
      things = {
        candle { name = "the flame under the shade", description = "Oil, trimmed, burning clean. Somebody trims it. The cherubs say it is not them and Mrs Collect says it is not her, and they have agreed to leave it at that." },
      } },
    { name = "a pigeonhole by the door",
      key = "sh_last_hole",
      description = "One, alone, at the height of your eyes, set into the frame of the green door. It has no brass card. Where the card would be, somebody has scratched a single curved line into the wood. This is where Mrs Collect sets down the tray each night. It is empty every morning.",
      actions = {
        { "Look inside", say "Dust, and not much of that. A smell of cold stone and, very faint, of milk. At the back there is no back: the hole goes on into the wall further than your arm, and the air in it is moving, slowly, away from you. You take your arm out. You do not feel that you were unwelcome. You feel that you were early." },
      } },
    { name = "the carpet",
      description = "Dark green, thick, laid to the walls. It is the only carpet behind the heavens. People who come in here tend to have been crying, the shop steward says, or to be about to, and linoleum is no good for that." },
    { name = "the quiet",
      description = "Complete. Outside the door, eleven cherubs are shouting pigeonhole numbers and prayers are falling like a mill race. In here you can hear the lamp. It is the quiet of a room where a great many things have been said and all of them are still being listened to.",
      actions = {
        { "Say something", say "You open your mouth to say a thing to nobody. You find that you have one ready: it has been ready for some time. You say it. It does not echo. Behind you, very softly, a drawer you had not noticed opens a finger's width, takes it in, and shuts." },
      } },
    { name = "a drawer with your name on it",
      description = "Low down, by the skirting. A fresh label, the ink still shiny. You had not thought you prayed. It appears that you have been doing it steadily, under your breath, since the tavern.",
      things = {
        { name = "the top one", description = "{i}Let it be a small dragon.{/}" },
        { name = "the one under it", description = "{i}Let nobody have seen that.{/} There are eleven of these, all different dates." },
        { name = "the one at the bottom", description = "The first. From before you set out, in your own bed, the night you decided. It is one word. You shut the drawer on it. It was the right word." },
      } },
    { name = "a ledger of receipts",
      description = "On the table by the lamp: a day book, ruled. Mrs Collect enters each tray. {i}Rec'd 3. Rec'd 11. Rec'd 1 (heavy).{/} The other column, headed {i}Collected{/}, is blank the whole way down, in her hand. But each morning's tray is gone, and she has never written {i}missing{/}." },
    { name = "a child's drawing",
      description = "Pinned to the side of a cabinet. A house, a sun, and next to the house a stick person with a very large smile. {i}FOR YOU{/}, it says, with the Y backwards. It came up with the prayers one night with no words on it at all. Nobody has known where to file it, and so it is on the wall." },
    { name = "the green door, from inside",
      description = "Baize and brass studs. There is a hook on the back of it with an eyeshade on it, an old one, cracked. A cherub's size. One of them comes in here, on his own time, and reads." },
    { name = "a smell",
      description = "Paper, lamp oil, and under those, salt. Not the sea. The other kind." },
  },

  exits = {
    { to = "sh_sorting_office", label = "The green baize door", description = "Back into the noise." },
  },
}

space {
  id = "sh_anteroom",
  region = "small_heavens",
  secret = true,
  name = "The Anteroom of the Not Yet",
  description = "You stand at the door with no card, and wait, and you are in a waiting room. Benches round the walls, a stove, a table of very old periodicals. On the benches sit the gods who are not believed in yet. They are faint, like breath on a window, and they are passing the time until somebody, somewhere, needs them enough to say so. Some have been here since before the Street was paved. They are quite cheerful. It only takes one.",
  palette = { bg = "#0e0e14", text = "#d0d0dc", dim = "#6c6c84", accent = "#b0a8e0", border = "#3a3854" },
  ambience = { fog { color = "#1a1a28", speed = 0.15, strength = 0.35 }, shimmer { color = "#b0a8e0", strength = 0.1 } },

  things = {
    { name = "the benches",
      description = "Deal, polished by the sitting of beings with no weight. A dozen gods, none of them quite there.",
      things = {
        { name = "a god of the thing you came upstairs for", description = "Thin, anxious, snapping his fingers. People stand in doorways every day and very nearly call on him. Then they remember, and go down again, and he sinks back.",
          actions = { { "Tell him it will come to you", say "\"That's what they all say,\" he says, and for a moment he is nearly solid. \"That's my whole liturgy, that is. Say it again.\" You say it again. He has, briefly, a hat." } } },
        { name = "a goddess of steam engines", description = "Large, brass coloured, humming. She is by far the most distinct person in the room. She has one believer, in a city called Tickover, who has not yet noticed that when she talks to the Boiler something answers. It will be any day now.",
          actions = { { "Wish her luck", say "\"Luck's not mine,\" she says. \"Pressure's mine.\" She shakes your hand. It is like putting it on a warm kettle. \"Tell Big Sal the left gauge reads low. She knows. Tell her I know she knows.\"" } } },
        { name = "a god of second helpings", description = "He has been waiting to be believed in since the first harvest that was more than enough, and is beginning to suspect that Soup has been taking his post." },
        { name = "a very small god", description = "The size of a wren's egg, on the bench by itself, glowing. It does not know what it is the god of. Nobody does. It is waiting to find out, with tremendous good will." },
        { name = "a god with a suitcase", description = "Dressed for travelling, hat on his knee. He was called, once: a whole valley believed in him for an afternoon, during a flood. He went. The water went down. He has been back on the bench ever since and tells the others what it was like. They have heard it. They ask again." },
      } },
    { name = "a seat with a card on it",
      description = "The best seat, by the stove. A card on a string is tied to the arm: {i}RESERVED. The Unknown, of Aldmoor. Portico ready. Service nightly.{/} Thirty years of faith have been sent up for this god, on account, and nobody has come to claim it.",
      things = {
        { name = "the cat on the seat", description = "A grey cat, asleep, entirely solid, the only thing in the room that is. It has a look of the Roof Road about it. It opens one eye at you. There is a visitors' book on an altar in Aldmoor with one paw print in it, and the priests are divided." },
        { name = "the pile of post under the seat", description = "A sack and a half. All from one priest. All unopened. The cat is lying on the overflow." },
      },
      actions = {
        { "Ask the cat if it is the god", say "The cat yawns. It gets up, turns round once, and lies down again on thirty years of evensong. This is either a no, or it is the most complete yes that has ever been given, and you see why the priests are divided." },
      } },
    { name = "the stove",
      description = "A round iron stove with a mica window. What burns in it is not coal. A cherub comes in on the hour with a scuttle of prayers that begin {i}If only there were a god of{/}, and tips them in. They burn slowly, with a blue flame, and that is what keeps the Not Yet warm.",
      actions = {
        { "Warm your hands", say "It is a thin heat, but a real one. In the mica window you can see the words going, one at a time. {i}If only there were a god of lost keys. Of second chances. Of people who are no good at this.{/} That last one burns for a long while. Somebody on the benches behind you sits up." },
      } },
    { name = "the table of periodicals",
      description = "Back numbers. {i}The Coming God. Advent Quarterly. Which Pantheon?{/} All well thumbed, by fingers that left no mark.",
      things = {
        { name = "a pamphlet", description = "{i}So You Are About To Be Believed In.{/} Chapter one: {i}Do not overpromise.{/} Chapter two: {i}Smiting, and why not.{/} Chapter three is torn out. It was called {i}What to say when they ask who made the world{/}, and every god on the Street has a copy of it, folded small." },
        { name = "a waiting list", description = "On a clipboard. Hundreds of names, each a need. Most are crossed through in a different ink, as the need went away. {i}God of the right word. God of the last match. God of the walk home.{/} That one has been crossed through and written in again four times." },
      } },
    { name = "the bell over the door",
      description = "A shop bell on a spring. It rings when a god is called for the first time. It has rung nine times since the room was built. Every god here remembers each of the nine, and who went, and what they were wearing.",
      actions = {
        { "Listen for it", say "It does not ring. But the spring trembles, very slightly, the way a web does. Somewhere on earth, somebody is close. The whole room has gone still. Then it passes: they found their keys, or the fever broke, or it stopped raining. The gods breathe out. \"Nearly,\" says the one with the suitcase. \"That was nearly somebody.\"" },
      } },
    { name = "the window",
      description = "Frosted, with a view of nothing in particular. It is the part of the heavens that has not been built on yet. You can make out the trestle and the lamp at the end of the corridor, from the other side.",
      things = {
        { name = "something written in the frost", description = "By a finger, from in here: a list of the nine who were called. The last name is {i}Almost{/}. Under it somebody has written {i}(nearly){/}, and somebody else has rubbed it out, but you can still see it." },
      } },
    { name = "a hat stand",
      description = "With attributes on it instead of hats, left by gods to mark their places. A bunch of keys. A pair of spectacles with one arm. A wooden spoon. A sandal, enormous, with the strap chewed.",
      things = {
        { name = "the enormous sandal", description = "It is Thrum's other one. This room is where a god comes from. It seems it is also where one waits when the believing stops, if he cannot bring himself to go into his own hall. The sandal is warm. He has only just stepped away." },
      } },
    { name = "a notice",
      description = "Framed, by the door. {i}Deities are reminded that existence is not a right. Please do not manifest in the waiting area. Do not accept worship from the staff.{/} And at the bottom, smaller: {i}You are not forgotten. You are early.{/}" },
    { name = "a draughts board",
      description = "Set up between two of the faintest. They have been at the same game for eight hundred years. Neither can lift the pieces. They do it by agreeing where each one would have gone.",
      actions = {
        { "Move a piece for them", say "You move the black one they are both looking at. They stare at the board. They stare at you. \"It can be {i}done{/},\" says one, in a whisper. \"Things can be {i}moved{/}.\" It is, you gather, the most encouraging thing to happen in the Anteroom in living memory, and you are asked to do the white one as well." },
      } },
    { name = "a child's chair",
      description = "Small, painted blue, by itself near the stove. Empty. It is kept for a god who has not been thought of yet by a person who has not been born. The others dust it. They are looking forward to finding out." },
  },

  exits = {
    { to = "sh_staff_corridor", label = "The door with no card", description = "It is open, now that you have stopped waiting for it." },
  },
}

space {
  id = "sh_soup_kitchen",
  region = "small_heavens",
  name = "The Kitchen of Auntie Stock",
  description = "A kitchen with a range the length of a wall, a scrubbed table, and one pot. The pot is the size of a hip bath and has been on since the first bone. Auntie Stock, goddess of soup, stands on a box to stir it. Her heaven is the best attended of all of them, since she feeds the staff, the gods, the cherubs and anybody who comes to the back door looking as though they have not eaten. That is a description of everybody, in her opinion, and of you in particular.",
  palette = { bg = "#130f0a", text = "#e0d4bc", dim = "#806c50", accent = "#f0a850", border = "#553c20" },
  ambience = { steam { glyphs = "˙·∙°", color = "#74644c", rate = 0.5 }, flicker { color = "#ffb060", strength = 0.2 } },

  things = {
    { name = "Auntie Stock",
      icon = "☺",
      description = "As wide as she is tall, red to the elbows, with a ladle through her apron string like a sword. She is the goddess of soup, and of there being enough, and of {i}sit down, you look terrible{/}. Sick rooms pray to her. So do night watchmen, and mothers, and every soldier there has ever been, in the last hour before. She answers all of them the same way and it nearly always helps.",
      things = {
        { name = "the ladle", description = "Iron, a pint to the dip, older than the pot. It has been raised in anger once, at Saint Ledger, who had come to ask what a bowl cost. The dent is still in his halo." },
        { name = "her apron", description = "Sacking. Every stain is a recipe. She can read you the week off it, and does, when asked what is in the pot." },
        { name = "the box she stands on", description = "{i}BEST ONIONS. Greenhollow.{/} It has her name on it, in chalk, and under it {i}with respect, M.{/} Marta sends a box up every harvest. She has never said how she knows the address." },
      },
      actions = {
        { "Ask for a bowl", say "It is in front of you before you have finished asking. Barley, a bone, something green. You eat. Warmth goes down to your boots and stays there. \"When did you last have a hot meal?\" You try to remember. \"That's what I thought,\" she says, and fills it again. You understand, with your mouth full, why it is the best attended heaven on the corridor." },
        { "Ask what is in it", say "\"Whatever was left.\" She stirs. \"That's the whole of it. That's the mystery. You take what was left, and water, and time, and you don't give up on it.\" She tastes. \"I've had this pot on since there was a fire to put it on. I've never started it again. It's the same soup. It's had everything in it and it's never been finished.\"" },
        { "Ask who made the world", say "\"Have you eaten?\" she says. You say you have, just now. \"Then have another.\" The ladle comes down. \"I came when somebody first put a bone in hot water and gave it to somebody else. There was already a somebody else. There was already hungry.\" She puts bread by your bowl, hard. \"I don't ask who laid the table, I see who's sat at it. Eat.\"" },
      } },
    { name = "the pot",
      wonder = true,
      description = "Black iron, three legs, a lid like a shield. {shimmer}It has never been empty and it has never been the same twice.{/} You look in. It goes down a long way, brown and gold and slowly turning, and things rise in it and sink: a carrot, a bay leaf, a shin bone the size of an oar, a single pea. It is every soup. The steam off it smells of the kitchen you were a child in, whichever that was.",
      things = {
        { name = "the lid", description = "Hung on a hook. It rings like a gong when a cherub flies into it, and they do, about one a week, following their noses." },
        { name = "a bone", description = "It comes up, rolls, and goes down. It is very large and very old. \"Don't ask what off,\" she says. \"It was here when I got the pot. It's what gives it body.\"" },
        { name = "the scum", description = "She skims it. Into a saucer. The saucer goes down the corridor to the mouse." },
      },
      actions = {
        { "Stir it for her", say "She hands you a spoon like a paddle. You stir. It is heavy going, like rowing a boat through a warm night. Round, and round, and something touches the spoon from underneath and moves on. \"That'll do,\" she says. \"Don't encourage it.\" You do not ask what." },
      } },
    { name = "the table",
      description = "Deal, scrubbed white, long enough for a harvest supper. Benches down both sides. Everybody sits here: there is no high end.",
      things = {
        { name = "a seraph, eating", description = "Six wings folded like a deck chair, elbows on the table, dipping bread. He has flour on his halo. He is on his break and will not discuss the nature of the divine." },
        { name = "Vesper's place", description = "At the end nearest the door. A bowl, a spoon, and a napkin in a ring marked {i}T.{/} He comes in when the dusting is done. He takes one bowl for himself and carries a second back through the bronze doors, covered. He brings it back empty, he says. She has never asked to see." },
        { name = "a row of small bowls", description = "Eleven, in a line, with eleven small spoons, for the cherubs. And a twelfth, a thimble, further down." },
        { name = "names cut in the table", description = "By diners, with spoons. Gods, angels, one or two of the dead, passing through. And near the end, carved deep with a clasp knife: {i}Wilf woz ere. Good soup.{/}" },
      } },
    { name = "the range",
      description = "Black, with brass rails, and a fire you could roast a temple at. It is fed with resolutions made at the new year, which burn fast and hot and are gone by the second week.",
      things = {
        { name = "the oven", description = "Bread. Always nearly done. She says the smell of bread about to come out is a kind of soup, and counts it." },
        { name = "a kettle", description = "Singing. This one actually does. Thursday is said to come and stand in the doorway just to listen, and go away shaken." },
      } },
    { name = "the back door",
      description = "A stable door, top half open, on to the corridor. A ham bone props the bottom. People come to it who would not come to the front: the damned on their half day, a devil with a tin can and an apologetic manner.",
      things = {
        { name = "the devil at the door", description = "Small, grey, in a clerk's collar, holding out a billy can. From the Lower Office, he says, Sub-Assistant Tempter, here on his own account. She fills it. She fills everybody's. \"He's somebody's boy,\" she says." },
      },
      actions = {
        { "Ask the devil how he got in", say "\"Tradesmen's,\" he says, miserably. \"It's all the same pipes, sir, under. They don't like you to know.\" He holds the can in both hands. \"We don't get it hot, where I am. They say that surprises people.\"" },
      } },
    { name = "the larder",
      description = "A walk-in, stone shelved, cold. There is very little in it. That is the point of soup.",
      things = {
        { name = "an onion", description = "One. It will do forty." },
        { name = "the heel of a loaf", description = "Yesterday's, kept for thickening. Nothing is thrown out in this heaven. It is the only commandment and nobody has ever broken it." },
        { name = "a stone", description = "Grey, smooth, the size of a fist, on a shelf by itself. You have heard the story: a stranger, a village, a pot. \"Good lad, that,\" she says. \"I let him have the credit.\"" },
      } },
    { name = "a string of herbs",
      description = "Thyme, bay, something blue from the Everwood that the elves send with a note saying it will be ready in a century. She uses it now. It is fine." },
    { name = "the spice shelf",
      description = "Salt. Pepper. A tin labelled {i}THE OTHER ONE{/}, which you have seen before, on a shelf in an inn kitchen in Aldmoor. This would be where Old Bess gets it." },
    { name = "the sink",
      description = "Stone, with a pump. The washing up is done by penitents, who find it does more good than what they were given before.",
      things = {
        { name = "a bishop, washing up", description = "Sleeves rolled, mitre on the draining board. He has been at the same stack for sixty years. He says he has never been happier. He says it rather often." },
      } },
    { name = "the warmth",
      description = "It is the warmest room you have been in since you left home. You had not noticed you were cold. You had been cold for weeks, in a small way, round the edges, and had taken it for adventure." },
  },

  exits = {
    { to = "sh_staff_corridor", label = "The back door", description = "Over the ham bone into the corridor." },
  },
}
