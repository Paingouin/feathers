space {
  id = "chapel",
  region = "greenhollow",
  name = "The Chapel of Saint Wobble",
  description = "A small stone chapel to Saint Wobble, patron of things that very nearly fell over. The roof is original. This is considered her chief miracle.",
  palette = { bg = "#0e0f14", text = "#cdc9c0", dim = "#6e6c74", accent = "#c9a8e8", border = "#3d3b4d" },
  ambience = { dust { glyphs = "·˙∙", color = "#6a6478", rate = 0.6 }, flicker { color = "#e8c070", strength = 0.2 } },

  things = {
    { name = "the altar",
      description = "A slab on four legs, one shorter than the others. It has been about to tip for three hundred years.",
      things = {
        candle(),
        candle { name = "a second candle", description = "Leaning. In this chapel that is a form of prayer." },
        { name = "the offering bowl", description = "Two buttons, a bean, and an IOU from the priest to the saint." },
      },
      actions = {
        { "Steady it", say "You put a hand on it. The whole chapel seems to hold its breath. You take the hand away, carefully." },
      } },
    { name = "Father Dunstable",
      icon = "†",
      description = "Asleep in the front pew with the serenity of a man whose god asks only that he not fall off it.",
      things = {
        { name = "his sermon notes", description = "One line: {i}Brethren, we are all of us leaning.{/} Then a drawing of a duck." },
      },
      actions = {
        { "Cough politely", say "He stirs. \"...and so we see,\" he announces, and is asleep again before the end of it." },
        { "Ask for a blessing", say "Without waking, he raises a hand and tilts it from side to side. You feel, obscurely, propped up." },
      } },
    { name = "the east window",
      description = "Old glass, older than the saint. It shows a great bird asleep with its head under its wing, in colours nobody mixes any more. No one remembers who paid for it. The priest dusts it first.",
      actions = {
        { "Look closely", say "The leading is so fine you cannot find where one feather ends and the sky begins. You stand there longer than you meant to." },
      } },
    { name = "the bell rope",
      description = "It goes up through a hole in the ceiling. A sign says {whisper}DO NOT{/}, and the rest has been worn away by people who did.",
      variants = {
        { when = flag "rope_pulled",
          description = "Beside it hangs a rope ladder that was not there before. The sign still says {whisper}DO NOT{/}. You did." },
      },
      actions = {
        { "Pull it", when = no(flag "rope_pulled"), set "rope_pulled", fx "shake",
          say "You pull. Far above, a bell swings mightily and makes no sound at all. Then a rope ladder unrolls and hits you on the head, which does." },
        { "Pull it", say "The bell swings. Silence. You have the uneasy feeling you will hear it later." },
      } },

    { name = "the pews",
      description = "Six rows. Every one slopes, and each slopes its own way.",
      things = {
        { name = "a hassock", description = "Embroidered, in careful cross-stitch: {i}STEADY{/}." },
        { name = "the hymn board", description = "Hymns 4, 4 and 4. The organist knows one." },
        { name = "a carved pew end",
          description = "A mouse in oak, the carver's mark. Every child for two centuries has stroked it on the nose, and the nose is gone." },
      } },
    { name = "the harmonium",
      description = "A reed organ with one stuck key. All of Saint Wobble's hymns have been rewritten round that note.",
      actions = {
        { "Play a chord", say "It wheezes into life with the stuck note already in. Father Dunstable, asleep, sings the first line of hymn 4." },
      } },
    { name = "the font",
      description = "Stone, and tilted. The water in it sits level. In this building that looks wrong.",
      things = {
        { name = "a water beetle", description = "Rowing round and round the font. It was christened by accident and has stayed for the peace." },
      } },
    { name = "the statue of Saint Wobble",
      icon = "♀",
      description = "In a niche: a woman in stone with her arms out for balance, standing on one foot. She has been about to fall since she was carved. The sculptor caught her at the moment she did not.",
      things = {
        { name = "the plaque",
          description = "{i}She tripped on the step in the year of the flood, and did not go down, and the village took heart.{/}" },
        { name = "her raised foot",
          description = "Polished by the hands of people with something difficult coming up." },
      },
      actions = {
        { "Touch her foot", say "Cold stone, smooth. You think of the next thing you are afraid of. For a moment it looks like a step you might not fall on." },
      } },
    { name = "the vestry",
      description = "A cupboard with ambitions: a surplice on a peg, a cracked mirror, and the parish chest.",
      things = {
        { name = "the parish chest",
          description = "Three locks for three keyholders, so that no one can open it alone. Two of the keys are lost and the third lock is broken, so it works out.",
          things = {
            { name = "the register",
              description = "Births, marriages, burials. And a fourth column, kept up in every priest's hand: {i}Nearly{/}." },
          } },
        { name = "the surplice", description = "Darned at the elbows, where a man leans on a lectern while asleep." },
        { name = "the communion wine",
          description = "Elderberry, from the cook at the Griffon. There is a pencil line on the bottle. The line has been moved down and pencilled again, honestly, each time." },
      } },
    { name = "the heroes' wall",
      description = "Brass plates, one for each adventurer who has left Greenhollow: the name, and the date of setting out. There is a second column for the date of return. The brass in that column is very clean.",
      things = {
        { name = "the newest plate",
          description = "Blank, and already screwed on. The sexton does them in advance. He has seen you." },
        { name = "a plate with both dates",
          description = "The only one. {i}Barnaby Griff.{/} Out in the spring, back in the autumn, and engraved under it, small: {i}opened a pub{/}." },
      },
      actions = {
        { "Count the plates", say "A hundred and twelve. You go along the second column with a finger. It does not take long." },
      } },
    { name = "a church mouse",
      description = "Poor, by reputation. In practice it has the candle ends, the wafer crumbs and the whole of the vestry, and is doing nicely." },
    { name = "the roof beams",
      description = "Original, and every one of them bowed. The builder is said to have looked up at them, sighed, and gone home, and that was three hundred years ago.",
      things = {
        { name = "a swallow's nest", description = "Mud, on the highest beam, with four faces over the edge. The parents come and go through a broken pane and nobody will have it mended." },
      } },
    { name = "the south door",
      description = "Low, studded, and open onto green light and leaning stones." },
  },

  exits = {
    { to = "village_square" },
    { to = "graveyard", description = "Out by the south door, into the long grass and the stones." },
    { to = "bell_loft", label = "The hole in the ceiling", description = "Up through the hole in the ceiling, into the dark and the smell of pigeons.",
      requires = flag "rope_pulled", hidden = true },
  },
}
