space {
  id = "smugglers_vault",
  region = "undertown",
  secret = true,
  name = "The Smugglers' Vault",
  description = "A dry chamber off the Drain, stacked to the roof with crates. So this is what {danger}OURS{/} means. The Baroness, it turns out, has a hobby.",
  ambience = { dust { glyphs = "·˙", color = "#4a5a50", rate = 0.4 }, flicker { color = "#e0b060", strength = 0.2 } },

  things = {
    { name = "the crates",
      description = "Each stencilled {whisper}TURNIPS{/}. None of them smell of turnips. Several of them clink.",
      things = {
        { name = "a crate of untaxed candles", description = "Hundreds of them. In Aldmoor, light is dutiable. Saint Ledger would weep, and then send a bill for the tears.",
          things = { candle { name = "an untaxed candle", description = "It burns just like a taxed one, but with a faint air of getting away with something." } } },
        { name = "a crate of vol-au-vent cases", description = "Empty pastry shells, thousands of them, imported. So that is the Baroness's secret. They are not even made in the house." },
        { name = "a crate that is breathing", description = "Slowly. In, and out. It is nailed shut and labelled {danger}NOT YET{/}.",
          actions = { { "Listen at it", say "The breathing stops. You have the distinct sense of being listened to, in return. You step away, and after a moment, it resumes." } } },
      } },
    barrel { name = "a barrel marked 'DEFINITELY TURNIPS'", description = "It sloshes." },
    { name = "the smugglers' ledger",
      description = "Neat columns, in the Baroness's own hand. She is robbing the town with excellent bookkeeping.",
      things = {
        { name = "the last entry", description = "{i}One ring, bronze, origin unknown, from the dredging of the Cistern. Not for sale. Not for anything, until I understand it.{/}" },
      } },
    { name = "a ladder",
      description = "Leading up a brick shaft to a patch of wall that, from this side, is obviously a door.",
    },
  },

  exits = {
    { to = "great_drain" },
    { to = "griffon_cellar", description = "Up the shaft and through the false wall, into a smell of stew. The smugglers drink at the Griffon. Of course they do." },
  },
}
