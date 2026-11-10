space {
  id = "forest_path",
  region = "mumblewood",
  name = "The Path That Tries",
  description = "A path, or the intention of one. It goes around every tree it meets, apologises to the big ones, and somehow continues to exist.",

  things = {
    { name = "a ring of mushrooms",
      key = "mushroom ring",
      description = "Blue-capped, in a perfect circle with one gap, like a meeting waiting for a latecomer.",
      variants = {
        { when = flag "moon_cap_picked",
          description = "Blue-capped, in a circle with two gaps now. The meeting has noticed." },
      },
      things = {
        { name = "the gap", description = "Mushroom-sized. Nothing grows in it. The others lean very slightly away." },
      },
      actions = {
        { "Pick one", once = true, give "moon_cap", set "moon_cap_picked",
          say "It comes away with a small sigh, not necessarily its own. A {gold}moon-cap{/}, glowing faintly in your hand." },
        { "Pick one", say "No. One was a liberty. Two would be a harvest, and they would know." },
        { "Step into the ring", say "You step in. Nothing happens, in a way that feels like a decision made about you." },
      } },
    { name = "a fox",
      key = "fox",
      icon = "f",
      description = "Red, lean, and sitting in the middle of the path as if it had sent for you and you were late.",
      variants = {
        { when = flag "fox_followed",
          name = "a gap in the ferns",
          description = "Where the fox went. The ferns have not quite closed again. They are holding the door.",
          actions = {
            { "Peer through", say "Oak. A great deal of oak, and a door-shaped dark in the side of it." },
          } },
      },
      actions = {
        { "Follow it", set "fox_followed",
          say "It trots off the path, looks back once to check you are the kind of fool it took you for, and slips into the ferns. Behind them stands an oak as wide as a cottage, with a door-shaped dark in its side." },
        { "Talk to it", say "It listens with great courtesy, and when you have finished, it yawns." },
      } },
    { name = "the trees",
      description = "Oak, ash, and something with silver bark that nobody has named, because it never comes when called. All of them {whisper}mumbling{/}.",
      things = {
        { name = "a carved heart", description = "{i}T + L{/}, very old. Under it, later, in a different hand: {i}it didn't last{/}. Under that, in the bark's own slow lettering, a scar that could be read as {i}told you{/}." },
        { name = "a woodpecker", description = "Working on the silver tree with the air of someone taking minutes." },
      },
      actions = {
        { "Listen in", say "{whisper}...not what it was... the lake's been odd again... another one in boots...{/} That last part, you feel, was about you." },
      } },
    { name = "a boot",
      description = "One boot, upright in the path, laces tied. Adventurer's make. It is empty, and does not seem to mind.",
      things = {
        { name = "the inside of the boot", description = "A beetle has moved in and put up what look like shelves." },
      },
      actions = {
        { "Try it on", say "It is a left. You already have a left. The beetle watches you work this out." },
      } },
  },

  exits = {
    { to = "wood_edge" },
    { to = "hermit_clearing" },
    { to = "upward_falls", description = "Follow the stream, and the sound of water doing something it should not." },
    { to = "lake_shore", description = "Through the pines, where the mumbling thins out and stops." },
    { to = "hollow_oak", label = "The gap in the ferns",
      description = "Through the ferns, to an oak with a dark doorway and no door.",
      requires = flag "fox_followed", hidden = true },
  },
}
