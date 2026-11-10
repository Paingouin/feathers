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

item {
  id = "moon_cap",
  name = "a moon-cap",
  icon = "τ",
  description = "A mushroom with a cap the blue of a clear midnight. It glows a little, apologetically. Every book says not to eat the blue ones. Every book was written by someone who was never offered soup.",
  actions = {
    { "Sniff it", say "Rain, cellar, and a hint of Tuesday." },
  },
}

item {
  id = "oar",
  name = "an oar",
  icon = "╿",
  description = "Ash wood, grey with weather, smooth at the grip. For years it has held up a hermit's washing. It has a great deal of rowing saved up.",
  things = {
    { name = "the blade", description = "Faint letters, burned in: {i}EVENTU{/}. The rest was on the other oar." },
  },
  actions = {
    { "Row the air", say "You take a few strokes at nothing. You move, if anything, slightly backwards." },
  },
}

item {
  id = "bottle",
  name = "a bottle with a letter in it",
  icon = "δ",
  description = "Green glass, corked and waxed, scoured dull by sand. There is a roll of paper inside, and scratched in the wax with a pin: {i}W., the Light, Saltwick{/}. It has come the long way.",
  actions = {
    { "Shake it", say "The paper shifts. It is not yours to read, and you find, annoyingly, that this stops you." },
  },
}

item {
  id = "tide_stamp",
  name = "the outward stamp",
  icon = "⊥",
  description = "Brass handle, rubber face, violet with old ink. It says {b}TUO{/}, which is how a stamp says {b}OUT{/}. A gull has been sitting on it, conscientiously, for a month.",
  actions = {
    { "Stamp your hand", say "{b}OUT{/}, in violet, on your palm. Nothing happens to you. You check the nearest puddle. It stays." },
  },
}

item {
  id = "lantern",
  name = "a borrowed lantern",
  icon = "¤",
  description = "Brass, storm-proof, stamped on the base {i}PROPERTY OF THE HELD TONGUE{/}. It burns without a sound. You had not known that lanterns made one until this one did not.",
  actions = {
    { "Hold it up", say "A circle of light with you in the middle. Adventurers in pictures are always holding up a lantern. They look less cold." },
  },
}

item {
  id = "rope",
  name = "a dwarf rope",
  icon = "§",
  description = "Tarred hemp, forty fathoms, coiled so well that it seems a shame to use it. There is a tag in runes. It is probably the dwarf for {i}return to peg{/}.",
  actions = {
    { "Coil it again", say "Worse. Noticeably worse. Somewhere under a mountain, an outline on a wall is disappointed." },
  },
}
