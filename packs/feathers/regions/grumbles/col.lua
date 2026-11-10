space {
  id = "high_col",
  region = "grumbles",
  name = "The Col",
  description = "The top of the pass: a saddle of bare rock between two peaks, with the wind coming through it as through a keyhole. Everything you have walked on is below you. Snow starts here in earnest, and paths go off in several directions, having been given the choice.",

  things = {
    { name = "the view",
      wonder = true,
      icon = "◊",
      description = "The whole kingdom, small enough to cover with a hand. {place}Greenhollow{/} is a smudge of smoke. {place}Aldmoor{/} is a ring of wall. The sea is a grey line with one white tower on it. {magic}From up here the land has a grain.{/} The rivers, the edge of the forest, the long curve of the coast all lean the same way, as grass does after something has gone over it.",
      things = {
        { name = "Greenhollow", description = "You can make out the windmill, turning. The chimney smoke beside it goes straight up." },
        { name = "the Mumblewood", description = "Dark green and, from here, silent. You had not noticed when you stopped hearing it." },
        { name = "Lake Perhaps", description = "A grey eye among the pines, full of clouds. You look up to check them against the real ones, and wish you had not." },
      } },
    { name = "a signpost",
      description = "Four arms: {i}Monastery (quiet please){/}. {i}Gorge{/}. {i}Mine (shut){/}. And one pointing at the sky, which says {i}Up{/}." },
    { name = "a tent",
      description = "Canvas, half down, property of the Royal Survey. Inside: a folding table, a theodolite, and a great many notes held flat with stones.",
      things = {
        { name = "the notes", description = "{i}Day 1. Measured Old Grumble. Day 2. Measured again. Taller. Day 3. Informed the mountain that this was not acceptable. Day 4. Shorter. Out of spite, we think.{/}" },
        { name = "the theodolite", description = "Brass, on three legs, aimed at the summit. Someone has hung a hat on it. The expedition went down for more ink and is expected back." },
      } },
    { name = "the wind",
      description = "It comes through the col with its head down. It has somewhere to be.",
      actions = {
        { "Lean on it", say "It holds you up, at an angle, for the length of a breath. Then it steps aside to see what you will do." },
      } },
    { name = "a chough",
      icon = "v",
      description = "A black bird with red legs, hanging on the wind at exactly the height of your face, not moving at all. It is working out what you are.",
      actions = {
        { "Explain that you are an adventurer", say "It tilts, slides off down the wind, and is a dot. It may be going to tell the others." },
      } },
  },

  exits = {
    { to = "toll_pass", description = "Down the road to the pole and its keeper." },
    { to = "quiet_monastery", description = "Along a swept path to grey walls on the mountainside. Even from here you find you are walking more quietly." },
    { to = "echo_gorge", description = "Down into a crack in the mountain, where the wind does not follow." },
    { to = "old_mine",
      description = "A square gate in the rock, with rails going in.",
      requires = item "lantern",
      locked = "it is dark in there, and the dark has had the place to itself" },
    { to = "summit", label = "The way up",
      description = "A ledge, then a chimney, then an old iron ring where a rope goes.",
      requires = item "rope",
      locked = "the last of it is straight up, and you are not" },
  },
}

space {
  id = "echo_gorge",
  region = "grumbles",
  wonder = true,
  name = "The Gorge of Late Replies",
  description = "A slot in the mountain a hundred feet deep and one cart wide, with walls as smooth as the inside of a bell. Sound goes in here and is kept. It does come back. {shimmer}It comes back when it is ready.{/}",
  palette = { bg = "#0b0c12", text = "#c8ccd8", dim = "#606880", accent = "#a8a0e8", border = "#30365a" },
  ambience = {
    shimmer { color = "#a8a0e8", strength = 0.15 },
    dust { glyphs = "·˙", color = "#5a5f80", rate = 0.2, speed = 0.2 },
  },

  things = {
    { name = "the echo",
      key = "echo",
      icon = "≈",
      description = "You cannot see it. You can hear the shape of it: a long room full of patient noise.",
      actions = {
        { "Shout hello", when = no(flag "echo_woken"), set "echo_woken",
          say "\"HELLO!\" Nothing. Not a whisper of it. You wait, and feel foolish, and turn to go. Then from the far end, quite clearly, in an old man's voice: {magic}\"...is anybody there?\"{/} That was not your echo. That was somebody else's, from before you were born, getting its turn." },
        { "Shout again", when = all { flag "echo_woken", no(flag "heard_monks") }, set "heard_monks",
          say "You shout your name. The gorge takes it and gives you, in exchange, a great many men bellowing at once, then a long and satisfied silence, then one prim voice: {i}\"Thank you, brothers. Same time Thursday.\"{/} You look up the mountain, towards the only people who live near here. They are supposed to be the quiet ones." },
        { "Listen", say "A cough. A goat bell. Half a song about a miller's daughter, without the rude verse, which presumably came out somewhere else." },
      } },
    { name = "your hello",
      visible_if = flag "echo_woken",
      description = "In there somewhere, in the queue. You wonder who will get it, and whether they will be pleased." },
    { name = "a ledge of offerings",
      description = "People leave things for the echo: a coin, a ribbon, a question on a folded paper.",
      things = {
        { name = "the question", description = "{i}Did she say yes?{/} The paper has gone yellow. Whoever asked knows by now, one way or the other. The gorge will get to it." },
        { name = "the ribbon", description = "Blue, tied round a stone so it would not blow away. There is no wind here. People are careful anyway." },
      } },
    { name = "the walls",
      description = "Polished from floor to sky, though no water runs here. A few centuries of voices going past will do that to a rock." },
  },

  exits = {
    { to = "high_col", description = "Up, into the wind, which you can at least answer back." },
  },
}
