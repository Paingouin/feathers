-- Things the adventurer can end up carrying. Items are keys: the world checks whether you
-- hold them. Like everything else, they can be looked into.

item {
  id = "copper_coin",
  name = "bent copper coin",
  icon = "¢",
  description = "One copper, bent. On one side, a king nobody liked. On the other, a different king nobody liked.",
  things = {
    { name = "the bite mark", description = "Someone tested it with their teeth. The coin won." },
  },
  actions = {
    { "Flip it", say "Kings. It is always kings." },
    { "Bite it", say "Yes. Still a coin. Your tooth files a complaint." },
  },
}

item {
  id = "onion",
  name = "an onion",
  icon = "o",
  description = "Marta's finest. It is an onion in the way a siege is an inconvenience.",
  things = {
    { name = "a layer", description = "Under the skin: onion.",
      things = {
        { name = "another layer", description = "Under that: more onion.",
          things = {
            { name = "yet another layer", description = "The onion is beginning to feel like a metaphor.",
              things = {
                { name = "the heart of the onion", wonder = true,
                  description = "Small, pale, and perfectly calm. {magic}It was worth it.{/} You are crying, but everyone does, here." },
              } },
          } },
      } },
  },
  actions = {
    { "Sniff it", say "Your eyes water. Somewhere, a goose looks up." },
  },
}

item {
  id = "crowbar",
  name = "a crowbar",
  icon = "Γ",
  description = "The universal key. Opens crates, grates, and negotiations.",
  actions = {
    { "Heft it", say "You feel twelve percent more like an adventurer. The other eighty-eight percent is still you." },
  },
}

item {
  id = "invitation",
  name = "an invitation (somebody else's)",
  icon = "✉",
  description = "Thick cream card: {i}The Baroness Vaux-Pimbleton requests the pleasure of the company of{/} and then a name that is certainly not yours, in handwriting that knows it.",
  actions = {
    { "Practise the name", say "\"Sir Aubrey Fenwick-Thrum.\" You say it four times. It sounds like falling down stairs." },
  },
}

item {
  id = "signet_ring",
  name = "a signet ring",
  icon = "○",
  description = "Heavy bronze, older than the house you found it in. The seal is a single curved line. It could be a wave. It could be a wing.",
  things = {
    { name = "the inside of the band", description = "An inscription worn down to three letters and a guess." },
  },
  actions = {
    { "Try it on", say "It fits every finger equally badly, as though it was sized for a different sort of hand." },
  },
}
