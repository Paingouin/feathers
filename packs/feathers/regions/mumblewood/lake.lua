space {
  id = "lake_shore",
  region = "mumblewood",
  name = "The Shore of Lake Perhaps",
  description = "The falls arrive here and lie down. A wide still lake among the pines, silver-grey, holding the sky very carefully, as if it had been lent.",
  palette = { bg = "#0a0f15", text = "#c4ccd6", dim = "#5f6c7c", accent = "#8fb8e8", border = "#2c3f58" },
  ambience = {
    fog { color = "#1a2632", speed = 0.15 },
    shimmer { color = "#8fb8e8", strength = 0.15 },
  },

  things = {
    { name = "the lake",
      wonder = true,
      icon = "≈",
      description = "Lean over and it shows you the sky. Not this one. {magic}The clouds in the water are different clouds{/}, going the other way, and once, far down, something crosses them on very large wings that nothing above you is casting.",
      things = {
        { name = "your reflection", description = "It is you, more or less. It looks a little better equipped. It has, you notice, a sword." },
        { name = "the other sky", description = "It has a star out already. Yours does not, and will not for hours." },
      },
      actions = {
        { "Wave at your reflection", say "It waves back, very slightly late, out of politeness." },
        { "Skim a stone", say "Four skips. On the water's side of the surface, something small skips four times back.", fx "wash" },
      } },
    { name = "the angler",
      icon = "☻",
      description = "A man on a stool with a rod, a line, and no hook. He has not caught a fish in thirty years and regards this as an unbroken record.",
      things = {
        { name = "his line", description = "Bare thread, hanging just above the water. Not in it. \"Wouldn't want to disturb it,\" he says." },
        { name = "his keepnet", description = "Empty, dry, and mended every winter." },
      },
      actions = {
        { "Talk", say "\"Any luck?\" you ask. \"All of it,\" he says. \"Never had a bite. Catch something out of {i}that{/}, and you have to decide what to do with it.\"" },
        { "Ask about the island", say "\"One tree. Heron. Stone that doesn't sit right. I rowed out once.\" He looks at his rod. \"Took up fishing after.\"" },
      } },
    { name = "a rowing boat",
      key = "rowing boat",
      description = "Pulled up on the shingle: sound, dry, and named {i}Eventually{/} in flaking paint. No oars.",
      variants = {
        { when = item "oar",
          description = "Pulled up on the shingle and named {i}Eventually{/} in flaking paint. With one oar it will go in a circle. You tell yourself it is a wide circle, and the island is on it." },
      },
      things = {
        { name = "the rowlocks", description = "Two. You will be using one, at most." },
      },
      actions = {
        { "Sit in it", say "You sit in a boat on dry land. The angler does not look round, which is tactful of him." },
      } },
    { name = "the pines",
      description = "Dark, straight, and silent. The mumbling stops at the shore. Whatever the trees say about the lake, they do not say it here." },
  },

  exits = {
    { to = "forest_path" },
    { to = "upward_falls", description = "Down the wet steps, with the water going the other way beside you." },
    { to = "goat_track", description = "Up behind the pines, where the ground stops being forest and starts being scenery." },
    { to = "lake_island", label = "The rowing boat",
      description = "Out across the wrong sky, to a hump of turf with one tree on it.",
      requires = item "oar", locked = "a boat without an oar is a very small jetty" },
  },
}

space {
  id = "lake_island",
  region = "mumblewood",
  name = "The Island of One Tree",
  description = "A hump of turf the size of a market stall, one willow, one heron, and water on every side showing the wrong sky. From here the shore looks a long way off, and not entirely convinced of itself.",
  palette = { bg = "#0a0f15", text = "#c4ccd6", dim = "#5f6c7c", accent = "#e0c46a", border = "#2c3f58" },
  ambience = {
    fog { color = "#1a2632", speed = 0.1 },
    dust { glyphs = "·˙", color = "#b89a3c", rate = 0.2, speed = 0.4 },
  },

  things = {
    { name = "the willow",
      wonder = true,
      icon = "ϒ",
      description = "It is high summer on the branch and {magic}autumn in the reflection{/}: every green leaf above hangs over a gold one below. Now and then a gold leaf lets go, down there, and falls upward to the surface, and is not there when it arrives.",
      things = {
        { name = "its roots",
          description = "They grip the island like a hand keeping something shut.",
          things = {
            { name = "a flat stone",
              key = "flat stone",
              description = "Set among the roots, too square to be an accident. It does not sit right. The angler said so.",
              variants = {
                { when = flag "stone_lifted",
                  name = "a square hole among the roots",
                  description = "Steps go down, dry, into green light. That should not be possible. Nobody has told the steps." },
              },
              actions = {
                { "Lift it", when = no(flag "stone_lifted"), set "stone_lifted", fx "shake",
                  say "It comes up like a lid. Under it: steps, going down into the lake, and not one drop on them." },
              } },
          } },
      },
      actions = {
        { "Shake a branch", say "A leaf falls. In the water, a leaf rises to meet it. They touch at the surface and there is, for a moment, one leaf too few in the world." },
      } },
    { name = "the heron",
      icon = "ʃ",
      description = "Grey, motionless, on one leg, staring at the water with the patience of a creditor. Its reflection is standing on the other leg.",
      actions = {
        { "Stand on one leg too", say "You last eleven seconds. The heron, without moving, conveys that it was counting." },
      } },
    { name = "the boat",
      description = "{i}Eventually{/}, nosed into the turf. It got you here in a spiral, which it seemed to consider the scenic route." },
  },

  exits = {
    { to = "lake_shore", description = "Back across, in the other direction of circle." },
    { to = "under_lake", label = "The steps under the stone",
      description = "Down, among the roots, into green light and no water at all.",
      requires = flag "stone_lifted", hidden = true },
  },
}

space {
  id = "under_lake",
  region = "mumblewood",
  secret = true,
  name = "The Room Under the Lake",
  description = "A round stone room with the lake for a ceiling. The water lies overhead like glass, held up by nothing but the habit of it, and green light moves over everything. It is perfectly dry. Your boots have never been so loud.",
  palette = { bg = "#06120f", text = "#b8d2c6", dim = "#4f7266", accent = "#7fe0b8", border = "#1f4a3c" },
  ambience = {
    shimmer { color = "#5fc8a0", strength = 0.35 },
    dust { glyphs = "·˙", color = "#3f8a70", rate = 0.3, speed = 0.3 },
  },

  things = {
    { name = "the ceiling",
      wonder = true,
      icon = "≈",
      description = "The underside of Lake Perhaps. Fish pass over like slow birds. And beyond them, through the water, there is the sky: {magic}the other one{/}, the one from the reflection, with its early star. From down here it is not a reflection of anything. It is simply up.",
      things = {
        { name = "a pike", description = "Long, old, hanging overhead and looking down at you the way you look at things in ponds." },
        { name = "the keel of a boat", description = "A small dark leaf-shape on the ceiling. {i}Eventually{/}, from underneath." },
        { name = "the early star", description = "It does not twinkle. It is steady, and warm-coloured, and a good deal nearer than a star ought to be." },
      },
      actions = {
        { "Reach up and touch it", fx "wash",
          say "Cold, and wet, and it gives like the skin on milk. One drop runs down your wrist. The lake above you shivers from shore to shore, and the angler, you feel sure, has just said a word." },
      } },
    { name = "a stone chair",
      description = "One chair, tilted back to face straight up, carved for someone to lie in and watch. The arms are worn. Somebody came here often, for a long time, to look at the wrong sky.",
      things = {
        { name = "a fish hook", description = "On the floor beside the chair, bright as new. Somebody decided, here, not to use it." },
      },
      actions = {
        { "Sit in it", say "You lie back. Fish. Light. The star. You lose a while, and do not get it back, and do not mind." },
      } },
    { name = "the tally marks",
      description = "Scratched in the wall by the chair, in fives, thousands of them. Nights, perhaps. The last group stops at four." },
  },

  exits = {
    { to = "lake_island", label = "The steps up", description = "Up, into ordinary daylight and a heron's disapproval." },
  },
}
