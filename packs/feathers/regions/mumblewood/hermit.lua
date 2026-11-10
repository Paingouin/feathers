space {
  id = "hermit_clearing",
  region = "mumblewood",
  name = "The Hermit's Clearing",
  description = "A clearing, a hut made of whatever fell nearest, and a sign reading {b}GO AWAY{/} with a bench beside it for people who need to sit down while reading it.",
  ambience = {
    steam { glyphs = "˙·∙", color = "#6f7f6a", rate = 0.3 },
    fireflies { glyphs = "✧·", color = "#bfe88a", rate = 0.25 },
  },

  things = {
    { name = "the hermit",
      icon = "☺",
      description = "He came to the woods forty years ago to be alone, and has been telling visitors about it ever since.",
      variants = {
        { when = flag "hermit_fed",
          description = "He is eating soup that glows faintly, and is, for once, too busy to tell you about the quiet." },
      },
      things = {
        { name = "his beard", description = "It has moss on the north side." },
        { name = "his vow of silence", description = "Framed, on the hut wall. Broken in nine places and mended with string." },
      },
      actions = {
        { "Talk", when = flag "hermit_fed", say "\"Mm,\" he says, round the spoon. It is the shortest thing he has said in forty years, and he looks surprised by it." },
        { "Talk", say "\"I came here for the quiet,\" he says, and goes on to describe the quiet for some time." },
        { "Offer the moon-cap", when = item "moon_cap", take "moon_cap", give "oar", set "hermit_fed",
          say "His eyes go wide. \"For the soup!\" It is in the pot before you can say it was only a thought. Then he pulls the {gold}oar{/} out from under the washing line, which falls down. \"Take it. Boat's long gone. Well. Long gone from {i}me{/}.\"" },
        { "Ask for the oar", when = no(flag "hermit_fed"),
          say "\"That's holding up my smalls. You'd have to bring me something better than smalls.\" He looks, wistfully, at the soup." },
        { "Ask about the lake", say "\"Lake Perhaps? Looks back at you wrong. Fellow down there's fished it thirty years and never caught a thing. Says that's the point.\"" },
      } },
    { name = "the washing line",
      key = "washing line",
      description = "Strung from the hut to an oar stuck upright in the ground. On it: one robe, one other robe, and smalls of great antiquity.",
      variants = {
        { when = flag "hermit_fed",
          name = "the fallen washing line",
          description = "On the ground, robes and all. The hermit has stepped over it twice. This is where it lives now." },
      },
      things = {
        { name = "the oar", visible_if = no(flag "hermit_fed"),
          description = "Pale ash wood, worn smooth at the grip. Wasted on laundry, and knows it." },
      } },
    { name = "the soup pot",
      description = "It has been simmering since before the hut. Things go in. Opinions differ on whether soup comes out.",
      variants = {
        { when = flag "hermit_fed",
          description = "Faintly {magic}blue{/} now, and humming. It is the best it has been in decades, which the hermit puts down to patience." },
      },
      actions = {
        { "Taste it", say "Nettles, mostly, and something that tastes of a Tuesday." },
      } },
    { name = "the sign",
      description = "{b}GO AWAY{/}, painted with great care. On the back: {whisper}unless you've brought something{/}." },
    { name = "the bench",
      description = "For sitting on while being told to leave. Worn smooth.",
      actions = {
        { "Sit", say "You sit. The hermit is at your elbow at once, delighted, asking which part of the sign you didn't understand." },
      } },
  },

  exits = {
    { to = "forest_path" },
  },
}
