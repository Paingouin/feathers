space {
  id = "great_drain",
  region = "undertown",
  name = "The Great Drain",
  description = "A brick tunnel tall enough to ride a horse through, though the horse would have views. A channel of grey water runs down the middle, minding its own business with some urgency.",

  things = {
    rat(),
    rat { name = "a second rat", description = "It is watching the first rat in the manner of a deputy." },
    rat { name = "a rat with a tiny ledger",
          description = "It appears to be taking a census. When it reaches you it hesitates, then makes a small mark in a different column.",
          actions = { { "Ask to see the ledger", say "It closes the ledger. You have never been refused by anything so small." } } },
    { name = "the arches",
      description = "Side passages open off the drain, each under a low brick arch. Most are silted shut.",
      variants = {
        { when = flag "knows_undertown",
          description = "Side passages open off the drain. You count from the ladder: one, two, three. The third arch looks exactly like the others, unless you know. You know." },
      },
      things = {
        { name = "the first arch", description = "Silt, and a boot. Just the one." },
        { name = "the second arch", description = "Silt, and the other boot. So that's all right." },
        { name = "the third arch", description = "Silt, like the others.",
          variants = {
            { when = flag "knows_undertown",
              description = "Silt, like the others, except for one dry stone at shoulder height, clean, as though often touched." },
          } },
      } },
    { name = "graffiti",
      description = "Generations of it, scratched in the brick.",
      things = {
        { name = "a scratched message", description = "{whisper}GRIBBERT'S ELIXIRS: I CAN SEE THROUGH TIME{/}, and under it, in another hand, {whisper}no you can't, Kev{/}." },
        { name = "a much older carving", description = "Not letters. A row of small curved marks, like waves, or wings, repeated the length of the tunnel at the height of a raised hand. The rats do not run along that course of bricks." },
      } },
    { name = "the grey water",
      description = "It flows towards the dark with the air of something late for an appointment.",
      actions = {
        { "Follow it with your eyes", say "Downstream the tunnel widens, and the echo changes, the way a voice does when it walks into a cathedral." },
      } },
  },

  exits = {
    { to = "market", description = "Up the rungs, towards daylight and the price of things." },
    { to = "cistern", description = "Downstream, where the tunnel opens out and the sound of the water goes strange and large." },
    { to = "smugglers_vault", label = "The dry stone",
      description = "Past the third arch, where a dry stone gives under the hand.",
      requires = flag "knows_undertown", hidden = true },
  },
}
