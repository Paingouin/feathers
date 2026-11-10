space {
  id = "secret_study",
  region = "aldmoor",
  secret = true,
  name = "The Study That Isn't Hers",
  description = "A small round room with no window and one lamp. So this is where the Baroness does not study. She does not study a very great deal: maps, charts, and all of them of what lies under the town.",
  palette = { bg = "#0d0d10", text = "#cfc8b8", dim = "#6b665c", accent = "#d8b468", border = "#403a30" },
  ambience = { flicker { color = "#ffc060", strength = 0.3 }, dust { glyphs = "·", color = "#4c463c", rate = 0.3 } },

  things = {
    { name = "the map table",
      description = "A map of Aldmoor, drawn from below: every cellar, every drain, and a great vaulted hall under the market that no surveyor of the upper town has ever admitted to.",
      variants = {
        { when = flag "knows_undertown",
          description = "You know it now: the Great Drain, the Cistern beyond it, and, off the Drain, a chamber marked in red ink with one word: {danger}OURS{/}." },
      },
      things = {
        { name = "a red-ink annotation", description = "Beside a side passage of the Great Drain: {danger}third arch, count the rats, push where it's dry{/}." },
        { name = "a bronze door, drawn large", description = "Sketched again and again in the margins, each time with a hollow at its centre, and beside the hollow, each time, a question mark pressed harder into the paper." },
      },
      actions = {
        { "Study the map", when = no(flag "knows_undertown"), set "knows_undertown",
          say "You trace it with a finger until the Undertown sits in your head like a tune: {place}the Drain{/}, {place}the Cistern{/}, and a hidden vault three arches along. You could find that arch now." },
        { "Study the map", say "You have it by heart. It is the first thing you have ever had by heart on purpose." },
      } },
    { name = "the writing desk",
      description = "Letters, half finished, all to the same correspondent, all beginning {i}It is not what you think{/}.",
      things = {
        { name = "the top drawer", description = "Sealing wax, a pen knife, and a small velvet box, open.",
          things = {
            { name = "the velvet box", description = "Shaped to hold a ring.",
              variants = {
                { when = item "signet_ring", description = "Shaped to hold a ring. It is doing so no longer, and looks, if anything, lighter for it." },
              },
              actions = {
                { "Take the ring", once = true, give "signet_ring",
                  say "{gold}A signet ring{/}, bronze, and far older than anything else in this house, including the house. It is cold, and stays cold in your hand." },
              } },
          } },
        { name = "an unfinished letter", description = "{i}...the door will not open for me, though I have the seal. I begin to think the seal is not the key but the question. Whatever sleeps behind it, I am not who it is waiting for.{/}" },
      } },
    { name = "a telescope",
      description = "Mounted on a brass stand and pointed, with great care, straight down at the floor.",
      actions = {
        { "Look through it", say "Floorboards. Then your eye adjusts, and for one dizzy moment there is depth, and arches, and a glimmer on black water a long way down. Then floorboards.", fx "wash" },
      } },
  },

  exits = {
    { to = "noble_house" },
  },
}
