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

    { name = "a smuggler, asleep",
      description = "On a bale, with his hat over his face and one hand on a cudgel. The night shift.",
      actions = {
        { "Tiptoe round him", say "From under the hat: \"If you're Customs, I'm a turnip merchant. If you're not, mind the breathing crate.\" He has not moved." },
        { "Ask what is in the crate", say "\"Don't know. Came with the vault. We put the label on. Seemed wise.\"" },
      } },
    { name = "the contraband shelves",
      description = "Everything Aldmoor taxes, and Aldmoor taxes everything.",
      things = {
        { name = "sacks of salt", description = "From Saltwick, each one stamped {i}SAND{/}." },
        { name = "unstamped playing cards",
          description = "The ace of spades in every pack is blank, where the duty stamp would go. The smugglers play with them and argue about what the ace is worth." },
        { name = "a case of blue cordial", description = "Gribbert's supplier. The label says {i}MANA (bulk){/}." },
        { name = "bolts of foreign lace", description = "Fine as frost. It is wrapped round a ham, in case of inspection, and the ham is wrapped round a bottle, in case of a thorough one." },
      } },
    { name = "a rack of disguises",
      description = "Farmers' smocks, straw hats, and one very fine false beard on a wig stand.",
      things = {
        { name = "the false beard",
          description = "Chestnut, curled, the kind of beard a man grows who has never had to hurry.",
          actions = {
            { "Try it on", say "You look like somebody who has just bought a beard. The smuggler, from under his hat, says \"No.\"" },
          } },
      } },
    { name = "the strongbox",
      description = "Iron, bolted to the floor, with a slot in the top.",
      things = {
        { name = "the lock", description = "Aldmoor work, seven levers. Your crowbar, if you have one about you, has remembered an appointment." },
      },
      actions = {
        { "Listen at the slot", say "Coins, settling. It is the sound the Council thinks it can hear in its own treasury." },
      } },
    { name = "a shrine to Saint Ledger, facing the wall",
      description = "The smugglers are devout. They turn him round before they do the books, and turn him back after, and leave a tenth, less expenses." },
    { name = "a tide table",
      description = "Pinned to a crate, for Saltwick, with notes in pencil: {i}high, low, and when the Office isn't looking{/}.",
      variants = {
        { when = flag "tide_out",
          description = "Pinned to a crate, for Saltwick, with notes in pencil. Across the whole of it, new and angry: {i}WHO SIGNED IT OUT.{/}" },
      } },
    { name = "a handcart",
      description = "Iron tyres bound in sacking, for quiet. The axle is greased with butter. Untaxed." },
    { name = "the vault cat",
      icon = "c",
      description = "Grey, enormous, and paid in fish. She keeps the rats out of the vol-au-vent cases and takes one case a month as commission.",
      actions = {
        { "Stroke her", say "She rolls over. It is a trap, and you know it is a trap, and you have four scratches before you have finished knowing it." },
      } },

    { name = "a very small crate",
      description = "On the floor by the ladder, apart from the rest: a box you could hold in one hand, nailed with pins, and lined with moss.",
      things = {
        { name = "the label",
          description = "{i}TO: PARDON, BELOW. BY THE DRAIN. ONE STRAWBERRY (FRAGILE). KEEP UPRIGHT.{/} And in the ledger hand: {i}paid in advance, in full, in something Sal says are pearls. Do not ask. Do not be late.{/}" },
        { name = "the strawberry",
          description = "You lift the lid. One strawberry, the best of some garden, on a bed of moss, with a drop of water on it. The smugglers will run brandy past the Watch for a laugh. They carry this one like a baby." },
      },
      actions = {
        { "Ask the sleeping smuggler who buys it", say "He does not wake. He says, quite clearly, \"small feller, very civil, never seen his face,\" and turns over." },
      } },
    { name = "a wanted poster, framed",
      description = "The Watch's own, for the whole gang, hung over the ledger with pride. The reward is four shillings. The likenesses are so poor that two of the gang have applied for it." },
    { name = "a dumb waiter",
      description = "A box on a rope in a brick shaft, going up. It comes out, by the smell of polish, somewhere on Nobles' Row.",
      things = {
        { name = "an order, sent down",
          description = "A card in the box, in a lady's hand. {i}The usual. And the Baroness says the last lot was NOT turnips and could she have more of it.{/}" },
      } },
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
