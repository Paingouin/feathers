space {
  id = "smugglers_vault",
  region = "undertown",
  secret = true,
  name = "The Smugglers' Vault",
  description = "A dry chamber off the Drain, stacked to the roof with crates. Somebody is moving a great deal of something past the gate sergeant.",
  variants = {
    { when = flag "knows_undertown",
      description = "A dry chamber off the Drain, stacked to the roof with crates. So this is what {danger}OURS{/} means. The Baroness, it turns out, has a hobby." },
  },
  ambience = { dust { glyphs = "·˙", color = "#4a5a50", rate = 0.4 }, flicker { color = "#e0b060", strength = 0.2 } },

  things = {
    { name = "the crates",
      description = "Each stencilled {whisper}TURNIPS{/}. None of them smell of turnips. Several of them clink.",
      things = {
        { name = "a crate of untaxed candles", description = "Hundreds of them. In Aldmoor, light is dutiable. Saint Ledger would weep, and then send a bill for the tears.",
          things = { candle { name = "an untaxed candle", description = "It burns just like a taxed one, but with a faint air of getting away with something." } } },
        { name = "a crate of vol-au-vent cases", description = "Empty pastry shells, thousands of them, imported. Somewhere above, a kitchen is taking the credit.",
          variants = {
            { when = visited "noble_house",
              description = "Empty pastry shells, thousands of them, imported. So that is the Baroness's real secret. They are not even made in the house." },
          } },
        { name = "a crate that is breathing", description = "Slowly. In, and out. It is nailed shut and labelled {danger}NOT YET{/}.",
          actions = { { "Listen at it", say "The breathing stops. You have the distinct sense of being listened to, in return. You step away, and after a moment, it resumes." } } },
      } },
    barrel { name = "a barrel marked 'DEFINITELY TURNIPS'", description = "It sloshes." },
    { name = "the smugglers' ledger",
      description = "Neat columns in an upright hand, with a small coronet doodled in the margin. Somebody is robbing the town with excellent bookkeeping.",
      variants = {
        { when = visited "noble_house",
          description = "Neat columns, a coronet doodled in the margin, and the same hand as the invitation in your pocket. The Baroness is robbing the town with excellent bookkeeping." },
      },
      things = {
        { name = "the last entry", description = "{i}One ring, bronze, origin unknown, from the dredging of the Cistern. Not for sale. Not for anything, until I understand it.{/}" },
      } },
    { name = "the back of the vault",
      description = "The oldest crates, stacked three deep against the far wall. Their corners are white with salt. Turnips do not usually arrive by sea.",
      variants = {
        { when = flag "sea_tunnel",
          description = "The oldest crates, white with salt at the corners, and the gap between them you came out of. Cart ruts run into it and downhill, towards the sea." },
      } },
    { name = "a ladder",
      description = "Leading up a brick shaft to a patch of wall that, from this side, is obviously a door.",
    },
  },

  exits = {
    { to = "great_drain" },
    { to = "sea_cave", label = "The low tunnel",
      description = "Between the salt-stained crates and down the cart ruts, a long dark mile to the cave in the cove.",
      requires = flag "sea_tunnel", hidden = true },
    { to = "griffon_cellar", label = "The shaft", set "cellar_passage",
      description = "Up the shaft to the false wall, which opens from this side at a push, into a smell of stew. The smugglers drink at the Griffon. Of course they do." },
  },
}
