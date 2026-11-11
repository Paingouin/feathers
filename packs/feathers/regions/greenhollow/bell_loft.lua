space {
  id = "bell_loft",
  region = "greenhollow",
  secret = true,
  name = "The Bell Loft",
  description = "Rafters, pigeons, and a bell the size of a cow. From up here the whole village is one handful of roofs, and beyond it more world than you had planned for.",
  palette = { bg = "#0d0e15", text = "#c8c9d2", dim = "#666a7c", accent = "#9fb4e8", border = "#353a52" },
  ambience = { dust { glyphs = "·˙", color = "#5a5f78", rate = 0.5 }, stars { glyphs = "·∙✧", color = "#8f9fd0", rate = 0.2 } },

  things = {
    { name = "the bell",
      wonder = true,
      icon = "Ω",
      description = "Green bronze, crack-free, and silent when struck. The villagers say it rings {magic}yesterday{/}: that is why you sometimes wake sure you have just heard something.",
      things = {
        { name = "the clapper", description = "Wrapped in nothing. Muffled by nothing. It simply arrives at the bell and the sound goes somewhere else." },
        { name = "the founder's mark", description = "A date that has not happened yet, struck through, and an apology." },
      },
      actions = {
        { "Strike it", say "Nothing. Then you remember, quite clearly, hearing a bell on your way into the village this morning.", fx "wash" },
      } },
    { name = "the pigeons",
      description = "Forty or so, in rows, facing the bell like a congregation that has given up on the sermon.",
      actions = {
        { "Count them", say "Forty-one. No: forty. One of them was a particularly round shadow." },
      } },
    { name = "the louvred window",
      description = "Through the slats: the square, the mill turning in no wind, the long road, and a smudge of smoke where Aldmoor must be.",
      things = {
        { name = "the view of the goose", description = "A white dot in the square. It is facing the chapel. It is facing {i}up{/}." },
      } },
    { name = "an old nest",
      description = "Wedged in the highest rafter, far too big for a pigeon and far too old to say whose. It is lined with something that has kept its colour.",
      actions = {
        { "Reach for it", say "Your fingers stop a hand's width short. They would stop a hand's width short, you suspect, however long your arm." },
      } },

    { name = "the bell frame",
      description = "Oak beams as thick as you are, pegged, not nailed.",
      things = {
        { name = "the ringers' names",
          description = "Cut into the beam by generations of ringers, each with a date. The dates stop in the year the bell fell silent. The names go on. People still come up to pull a rope and hear nothing, for the exercise." },
      } },
    { name = "the clock works",
      description = "The chapel has no clock face. It has the works, up here, ticking, driving nothing. Somebody winds them.",
      things = {
        { name = "the pendulum", description = "A brass bob the size of a plate, going to and fro in the dust. It has worn a clean line in the air." },
        { name = "the winding handle", description = "Bright with use." },
      },
      actions = {
        { "Wind it", say "Three turns. The tick steadies. You have the feeling of having done a small duty for a stranger." },
      } },
    { name = "a barn owl",
      icon = "v",
      description = "White, heart-faced, on the highest beam, asleep with its eyes open a crack. The pigeons sit on the far side of the bell from it and take turns to look.",
      things = {
        { name = "owl pellets", description = "Under the beam, grey and neat. Fur, small bones, and in one of them a button." },
      },
      actions = {
        { "Tiptoe past", say "One eye opens fully, black as the well, takes you in, and shuts. You have been weighed and found too large." },
      } },
    { name = "a smaller bell",
      description = "The treble, cracked, taken down and stood in the corner. This one would still ring. Nobody has the heart, with the big one listening.",
      actions = {
        { "Flick it with a fingernail", say "A thin clear note. Every pigeon turns its head. The great bell does nothing, in a way that you can feel." },
      } },
    { name = "the weathervane spindle",
      description = "An iron rod coming down through the roof and turning in a cup of grease.",
      things = {
        { name = "the vane, through a slipped tile",
          description = "A copper goose, gone green, with its beak into the wind. The village says the real one sat for it. The dates do not work, and the village does not care." },
      } },
    { name = "a ringer's stool",
      description = "Three legs, and beside it a stone jug.",
      things = {
        { name = "the stone jug", description = "Cider, long gone. The smell has stayed on to mind the place." },
        { name = "a hymn book", description = "Left open on a beam, at hymn 4." },
      } },
    { name = "the rope ladder, from the top",
      description = "Hooked over a beam by two iron claws. It was rolled up here for years, waiting for somebody to disobey a sign." },

    { name = "the ringing board",
      description = "A painted board on the wall, recording a peal: {i}5,040 CHANGES, IN 3 HOURS 9 MINUTES, BY THE GREENHOLLOW RINGERS{/}, and six names. It was rung the year after the great bell went silent. Six men pulled for three hours and nobody in the village heard a note.",
      things = {
        { name = "the last line", description = "{i}It was a good peal. You will have to take our word.{/}" },
        { name = "a pencilled note", description = "Under the board, small: {i}Heard it. Tuesday before. Thought it was the wind. Very fine. M.{/} The handwriting is Old Marta's." },
      } },
    { name = "bats",
      description = "A dozen, hung in the angle of two rafters like small folded umbrellas. They go out at dusk through the louvres, one at a time, each waiting for the one before to get clear.",
      actions = {
        { "Watch one sleep", say "It is the size of your thumb, with a face like a very old, very small dog. It yawns. It has more teeth than you were ready for. It wraps itself up again and you are dismissed." },
      } },
    { name = "a child's hoard",
      description = "Behind the cracked treble, in a gap in the boards: a tin box. Somebody came up here before you, and was shorter.",
      things = {
        { name = "the tin box", description = "A conker, hard as a stone. A blue bead. A drawing of the goose, with too many teeth. And a list, in careful pencil: {i}Things I will do when I am an adventurer. 1. Leave.{/} There is no number two." },
      },
      actions = {
        { "Put it back", say "You set the box in its gap and slide the board over. Whoever it was is grown now. You find that you hope they left, and you also hope that they are the one who keeps bees." },
      } },
  },

  exits = {
    { to = "chapel", label = "The ladder down", description = "Down, rung by rung, into candle smoke." },
  },
}
