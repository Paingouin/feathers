space {
  id = "cliff_road",
  region = "saltwick",
  name = "The Cliff Road",
  description = "The road leaves Aldmoor's walls, climbs for a mile out of habit, and then runs out of country. On the left, sheep. On the right, a great deal of air, and at the bottom of it, the sea.",

  things = {
    { name = "the sea",
      wonder = true,
      icon = "≈",
      description = "Grey-green, moving, and far too much of it. It goes out until it becomes sky, and there is no seam. Every map you have seen drew this as a blue edge with a fish in it. {magic}The maps left out that it breathes.{/}",
      things = {
        { name = "the horizon", description = "Flat, and exactly level with your eyes. You climb a rock to look down on it. It comes up with you." },
      },
      actions = {
        { "Shout at it", say "The wind takes your shout back inland, where somebody else will have to deal with it." },
      } },
    { name = "a signpost",
      description = "Three arms, pointing three ways with equal confidence.",
      things = {
        { name = "the first arm", description = "{place}ALDMOOR{/}, 1 mile. Uphill in both directions, according to the farmers." },
        { name = "the second arm", description = "{place}SALTWICK{/}, down." },
        { name = "the third arm", description = "{place}THE EDGE{/}, here. Somebody has added, in chalk, {whisper}mind it{/}." },
      } },
    { name = "the sheep",
      description = "Cliff sheep. They graze at angles that would make a goat reconsider.",
      things = {
        { name = "a sheep on a ledge",
          description = "Forty feet down the face, on a ledge the width of a plank, chewing. There is no way down to it and no way up from it. It was not born there. It is in no hurry to explain." },
      },
      actions = {
        { "Count them", say "Eleven. Then twelve. The twelfth is the one on the ledge, and you would rather not have looked." },
      } },
    { name = "a bench",
      description = "Facing the sea, grey with salt, with a brass plate on the back.",
      things = {
        { name = "the brass plate", description = "{i}In memory of Odo Pell, who sat here every day and never did find out what was over there.{/}" },
      },
      actions = {
        { "Sit", say "You sit. The wind goes through your coat, has a look round, and leaves." },
      } },
  },

  exits = {
    { to = "aldmoor_gate", description = "Back inland, to the walls and the queue." },
    { to = "saltwick_harbour", description = "Down the switchbacks to roofs, masts, and a smell of fish that has come up to meet you." },
    { to = "long_strand", label = "The cliff steps",
      description = "Steps cut in the cliff, down to a long grey beach. A rope handrail has been provided for most of them." },
  },
}
