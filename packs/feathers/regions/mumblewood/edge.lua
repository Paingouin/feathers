space {
  id = "wood_edge",
  region = "mumblewood",
  name = "The Edge of the Mumblewood",
  description = "The fields stop here and the trees start, all at once, like a crowd that has decided. The millstream goes in ahead of you, uphill, not waiting.",

  things = {
    { name = "a warning sign",
      description = "{b}BEWARE.{/} Below that, the list of what to beware of has been eaten. By something on the list, you assume.",
      things = {
        { name = "the tooth marks", description = "Small, numerous and thorough. A committee." },
      },
      actions = {
        { "Read the back", say "On the back: {whisper}BEWARE OF THE FRONT{/}." },
      } },
    { name = "the first tree",
      description = "An ash, standing a little forward of the others. It was pushed.",
      things = {
        { name = "its bark", description = "Furrowed, in the way of a brow." },
      },
      actions = {
        { "Listen to it", say "A long low mutter. You catch {whisper}...told them it would rain...{/} and then it notices you and becomes, pointedly, wind." },
      } },
    { name = "a stile",
      description = "Three planks over a fence that ended years ago on both sides. People climb it anyway. It would be rude not to.",
      actions = {
        { "Climb over it", say "You climb over. You are now on the other side of nothing, and feel you have done it properly." },
        { "Walk around it", say "You walk around. A blackbird stops singing. You go back and climb." },
      } },
    { name = "the brambles",
      description = "Blackberries, at exactly the height of your face, guarded at exactly the height of everything else.",
      things = {
        { name = "a snagged scrap of cloak", description = "Good red wool, torn off somebody in a hurry. A hero's cloak. The brambles have kept it as a reference." },
      },
      actions = {
        { "Pick a blackberry", say "Sweet, warm, and paid for in full by your sleeve." },
      } },
  },

  exits = {
    { to = "mill_lane", description = "Downstream, which here means downhill, back to flour and a cat." },
    { to = "forest_path" },
  },
}
