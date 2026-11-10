space {
  id = "graveyard",
  region = "greenhollow",
  name = "The Leaning Yard",
  description = "The chapel's graveyard, on the slope behind it. Every stone has tilted, each its own way, and the village will not have them set straight. It is thought to be what she would have wanted.",
  ambience = {
    dust { glyphs = "·∙˙", color = "#5d6b4a", rate = 0.4 },
    fireflies { glyphs = "✧·", color = "#cfe07a", rate = 0.3 },
  },

  things = {
    { name = "the sexton",
      icon = "†",
      description = "Amos Clay, resting on a spade. He digs, mows, winds the clock that nobody sees, and engraves the brass plates in advance.",
      things = {
        { name = "his spade", description = "The blade is worn to a curve. The handle is his third. He says it is the same spade." },
        { name = "a robin",
          description = "On the handle of the spade the moment he lets go of it. It is waiting for worms and is not sentimental about where they come from." },
      },
      actions = {
        { "Ask about the heroes", say "\"I do them a plate when they set out. Saves time.\" He looks at your boots and then, professionally, at your height. \"Six foot of brass costs the same as five. I'm not being personal.\"" },
        { "Ask about the crypt", when = no(flag "gh_knows_crypt"), set "gh_knows_crypt",
          say "\"There's no crypt,\" he says. Then, since he is an honest man and a bad liar: \"There's the saint. Under the yew. We don't say crypt. She's not dead, to speak of. She's nearly.\" He turns a sod over with the spade. \"Third root on the north side. Lift the slab. Mind the step. She tripped on it herself.\"" },
        { "Ask about the crypt", say "\"Third root, north side. And mind the step. I'll not say it again.\" He has said it, you gather, to every child in the village." },
      } },

    { name = "the yew",
      icon = "♣",
      description = "Older than the chapel, hollow, and wide enough to stable a horse in. It leans on a crutch of oak.",
      things = {
        { name = "the hollow",
          description = "Dry and dark, smelling of resin. Children hide here. So, by the bottle, does the sexton." },
        { name = "the oak crutch",
          description = "Replaced every century. The tree has outlasted eleven." },
        { name = "a slab among the roots",
          key = "yew slab",
          visible_if = flag "gh_knows_crypt",
          description = "Grey stone under the third root, with an iron ring let into it. Without being told, you would have stepped over it for a lifetime.",
          variants = {
            { when = flag "gh_crypt_open",
              description = "Lifted, and leaning against the root. Steps go down." },
          },
          actions = {
            { "Lift the slab", when = no(flag "gh_crypt_open"), set "gh_crypt_open", fx "shake",
              say "It comes up more easily than it should and stops, balanced on its edge, exactly as far as it needs to go. Steps lead down into the cool. The first one is higher than the rest." },
          } },
      } },

    { name = "the headstones",
      description = "Three centuries of Greenhollow, leaning.",
      things = {
        { name = "a hero's stone",
          description = "{i}HERE LIE THE BOOTS OF SIR DARRICK VALE.{/} The rest of him is thought to be doing well abroad." },
        { name = "a double stone",
          description = "A husband and wife. On his side: {i}At rest.{/} On hers, a year later: {i}At last.{/}" },
        { name = "a very small stone",
          description = "{i}BISCUIT. A GOOD DOG. He would have gone with any of them, if asked.{/}" },
        { name = "the millers' plot",
          description = "Six generations of millers in a row. Each stone is whiter than the one before." },
        { name = "Old Tom's stone",
          description = "New, and nearly upright still. {i}THOMAS REED. HE KEPT HIS STOOL.{/} There is a pewter mug on the grass in front of it, and it is full, and it is fresh." },
      } },

    { name = "the lychgate",
      description = "A roofed gate with a bench for resting coffins and, on weekdays, shopping." },

    { name = "the long grass",
      description = "Mown round the stones, left alone between them.",
      things = {
        { name = "a slow-worm",
          description = "Bronze, legless, on a warm slab. A lizard that gave up on the whole business of legs and has not looked back." },
        { name = "primroses",
          description = "On the old graves, thick. The oldest graves have the most." },
        { name = "a molehill",
          description = "Fresh. Turned up in it from below are a coffin handle and a button. The sexton has had words with the mole." },
      } },

    { name = "the leaning buttress",
      description = "Built against the chapel wall to stop it leaning. It leans. They hold each other up now, and neither will be the first to mention it." },

    { name = "a new grave, open",
      description = "Dug, squared and empty, with planks across it. Nobody has died. \"Somebody will,\" says the sexton. \"I like to be ahead.\"",
      actions = {
        { "Look in", say "Six feet of clean earth, a few roots, and one surprised worm. You step back from the edge with more care than you stepped up to it." },
      } },

    { name = "the view over the wall",
      description = "Fields, the dark line of the Mumblewood, and behind it, blue and small, five mountains." },

    { name = "a wheelbarrow of wreaths",
      description = "Last month's, on their way to the heap. Ivy, mostly. One is made of onions, plaited, from Marta, who gives what she has." },

    { name = "the chapel roof, from behind",
      description = "It sags in the middle and rises at both ends. From here you can see that it has never been repaired. From here you cannot see why it is still up." },
  },

  exits = {
    { to = "chapel", description = "In by the south door, to candle smoke and a sleeping priest." },
    { to = "cabbage_row", description = "Out by the lychgate, to gardens and washing." },
    { to = "wobble_crypt", label = "The steps under the yew",
      description = "Down among the roots, minding the first step.",
      requires = flag "gh_crypt_open", hidden = true },
  },
}

space {
  id = "wobble_crypt",
  region = "greenhollow",
  secret = true,
  name = "Under the Yew",
  description = "A small round vault with the roots of the yew for a ceiling. It is dry and still, and somebody keeps a lamp burning. In the middle, on a stone table, lies the saint, or a carving of her, or both. Beside the table, upright on the bare floor with nothing holding it, stands a staff.",
  palette = { bg = "#0c0c12", text = "#ccc8d2", dim = "#66627a", accent = "#c9a8e8", border = "#383450" },
  ambience = { dust { glyphs = "·˙", color = "#5a5670", rate = 0.3, speed = 0.2 }, flicker { color = "#e8c070", strength = 0.15 } },
  variants = {
    { when = item "unfalling_staff",
      description = "A small round vault with the roots of the yew for a ceiling. It is dry and still, and somebody keeps a lamp burning. In the middle, on a stone table, lies the saint, or a carving of her, or both. Her open hand is on the side where the staff stood." },
  },

  things = {
    { name = "Saint Wobble",
      icon = "♀",
      description = "A woman in grey stone on a stone bed, life size, with one knee drawn up as though she were about to rise. The carving is so fine that there is a darn in the stocking. The village says it is a statue. The sexton says {i}nearly{/}.",
      things = {
        { name = "her face",
          description = "Not serene. Concentrating. It is the look of someone carrying a full tray across a crowded room." },
        { name = "her hand",
          description = "Open, palm up, at the edge of the table. The fingers are curled round a thickness of nothing." },
        { name = "the darn",
          description = "On the left heel, in stone, eleven stitches. No sculptor would have thought of it. Somebody would have had to see it." },
      },
      actions = {
        { "Say good evening", say "It seems only right. Nothing answers. But the lamp flame, which was leaning, stands up straight." },
      } },

    { name = "the staff",
      key = "crypt staff",
      wonder = true,
      icon = "|",
      description = "Ash, plain, shod with iron, taller than you. {magic}It stands on its point, on flagstones, alone.{/} There is no socket. It does not lean. A cobweb runs from the top of it to the wall, and the spider has plainly found it reliable.",
      variants = {
        { when = item "unfalling_staff",
          name = "where the staff stood",
          description = "A ring of clean stone in the dust, the size of a ferrule. The cobweb hangs from the wall by one end. The spider has moved to the lamp hook and is starting again without complaint." },
      },
      actions = {
        { "Push it over", when = no(item "unfalling_staff"),
          say "You push. It goes over a hand's breadth and comes back up, without hurry, and stands. You push harder. Somewhere above you, quite distinctly, the chapel creaks." },
        { "Take the staff", once = true, give "unfalling_staff", fx "sparkle",
          say "You close your hand on it and lift. It comes away as light as a broom. You wait for the roof. Nothing falls: not the yew, not the chapel, not you. {gold}The Unfalling Staff.{/} You let go of it in the middle of the floor, to see, and it stands there waiting for you. You have the feeling of having been lent something by someone who expects to want it back." },
      } },

    { name = "the lamp",
      description = "A horn lantern on a hook, lit, with fresh oil. That is the sexton, every evening, on his way home." },

    { name = "the roots",
      description = "They come down through the roof and go round the table, never across it. One has grown into the shape of an armrest, at the right height, on the right side." },

    { name = "the crutches",
      description = "Along the wall: crutches, dozens of them, of every size, down to a child's. They were left by people who came in on them. The dust says none of it was recent. Then, at the end of the row, there is one with no dust at all." },

    { name = "the first step",
      description = "Higher than the others by a hand. Everyone trips on it going up. It is the step she tripped on. They built the stair round it, and kept it." },

    { name = "an inscription round the wall",
      description = "Cut deep, in one line, all the way round, so that you turn on the spot to read it: {i}SHE DID NOT FALL. NEITHER NEED YOU.{/}" },

    { name = "a row of small clay cups",
      description = "On a ledge, each with a stub of candle in it, each scratched with a name. One for every child born in Greenhollow. They are lit once, and brought down here, and kept. There are a hundred and twelve that match the brass plates upstairs. They are at the front." },
  },

  exits = {
    { to = "graveyard", label = "The steps up", description = "Up among the roots. You know about the first step now. You trip on it anyway." },
  },
}
