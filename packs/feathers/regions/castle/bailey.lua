space {
  id = "castle_bailey",
  region = "castle",
  name = "The Bailey",
  description = "The castle yard: cobbles, a well, a mounting block, and a great many people walking quickly with one sheet of paper each. The kingdom is not being run from here. It is being forwarded.",

  things = {
    { name = "the practice yard",
      description = "Three knights and a straw dummy on a post. The dummy is ahead.",
      things = {
        { name = "the dummy",
          description = "Straw, sacking, a painted frown. Somebody has put up a small shelf beside it for its trophies.",
          actions = {
            { "Hit it", say "It swings round on its post and hits you back, with the arm they hang the bucket on. The knights nod. It has a lovely action." },
          } },
        { name = "a knight",
          key = "questing knight",
          description = "In full plate, in the sun, by choice. He is waiting for a quest. There is a form for one. He has the form.",
          actions = {
            { "Ask about quests", when = no(visited "great_drain"),
              say "\"Dragon, ideally,\" he says. \"Would take a large rat.\" He lowers his voice. \"Is there a large rat?\"" },
            { "Ask about quests", when = visited "great_drain",
              say "You tell him about the Undertown. He writes {i}rats (several){/} on his form, very carefully, and thanks you with tears in his eyes." },
          } },
      } },
    { name = "the well",
      description = "The castle well. A notice on the winch: {i}Wishes by appointment.{/}",
      actions = {
        { "Make a wish", say "You have no coin to spare, so you wish on credit. Far below, something writes it down." },
      } },
    { name = "a messenger",
      description = "A boy with a sheet of paper, going from the Hall to the Kitchens. In a minute he will go from the Kitchens to the Hall, with the same sheet.",
      actions = {
        { "Read over his shoulder", say "{i}Re: yours of this morning. See mine of this morning.{/}" },
      } },
    { name = "the stables",
      description = "Twenty stalls, swept. One is in use. The brass plate on it says {b}SIR REGINALD{/}.",
      things = {
        { name = "Sir Reginald",
          description = "A grey horse, knighted in the last reign for services at a banquet. He outranks you. He knows.",
          actions = {
            { "Bow", say "He inclines his head by the exact amount due to a commoner. You have been put in your place by experts, but never before by a horse." },
          } },
      } },
    { name = "the dungeon door",
      description = "Iron, low, at the foot of the east tower. A slot opens in it when you knock. The slot is at eye level, for somebody.",
      actions = {
        { "Knock", when = no(item "warrant"),
          say "The slot opens on a pair of eyes. \"Warrant,\" say the eyes. You say you only want to look. \"Everyone only wants to look,\" say the eyes. \"That's why there's warrants.\"" },
        { "Knock", when = item "warrant",
          say "The slot opens. You hold up the paper. The eyes read it, and widen, and the bolts go back one after another, all nine." },
      } },
  },

  exits = {
    { to = "castle_hill", description = "Out under the portcullis, to the head of the queue. They will want to know what it is like." },
    { to = "great_hall" },
    { to = "castle_kitchens" },
    { to = "wall_walk" },
    { to = "castle_dungeon", label = "The dungeon door",
      description = "Down, behind nine bolts.",
      requires = item "warrant",
      locked = "nobody goes down without a warrant, signed by the King" },
  },
}
