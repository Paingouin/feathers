-- The stream that crosses Tether, and where it goes.

space {
  id = "le_falls",
  region = "loose_ends",
  wonder = true,
  name = "The Fall That Never Lands",
  description = "The stream runs across the green, under a stone bridge one stride long, and out along a spit of rock to the end of the island. There it goes over. It has cut itself a lip. It drops clear, white and whole, into three miles of air, and no one below has ever been rained on by it.",
  palette = { bg = "#0a1016", text = "#d8e2ea", dim = "#667a8c", accent = "#a8e0f0", border = "#365268" },
  ambience = { rain { glyphs = "│╎·", color = "#6aa0b8", rate = 0.4, speed = 0.8 }, fog { color = "#162834", speed = 0.3, strength = 0.4 } },

  things = {
    { name = "the fall",
      wonder = true,
      key = "le_the_fall",
      icon = "║",
      description = "You lie on the lip and look down it. A white column, thick as an oak, going straight down, with the wind leaning on it. A hundred feet below it begins to fray. At five hundred it is a horse's tail. At a thousand it is a scarf of mist with a rainbow hung in it. {magic}And below that there is nothing. It does not reach the cloud. It does not fall as rain. Somewhere in the clear air the water has stopped falling, and it has not gone anywhere else.{/} The stream has run since the village was a village. You do the sum, lying there, of how much water that is. Then you stop doing the sum.",
      actions = {
        { "Drop a leaf in the stream", say "It goes over the lip, spinning, and down with the water. You follow it until it is a speck in the white. The white thins. The speck goes on a little further, alone, quite dry, and then you lose it against the country. The leaf arrived. Only the water does not." },
        { "Put your hand in the lip", say "Cold, and strong, and pulling. It is in a hurry. Whatever happens to it down there, it has no notion of it here. It goes over like a child running out of a door." },
      } },
    { name = "the rainbow",
      description = "A full ring, lying flat in the mist a thousand feet down, like a quoit thrown over the fall. It is there in any light. The children say you can see it by the moon, in white.",
      things = {
        { name = "the inside of the ring", description = "A darker blue than the sky round it. The last of the water goes into that blue disc and does not come out the bottom." },
      } },
    { name = "the stream",
      description = "Three feet wide, a foot deep, clear over gravel. It rises from a spring in the middle of the green. A spring, on a rock in the sky, with no hill above it, that has never run dry.",
      things = {
        { name = "the spring", description = "Back on the green, under a stone hood: water welling up out of a crack in the solid rock, as cold as teeth. The island is twenty feet thick there. Dunnage has looked at the underside of that spot, they say, and it is dry." },
        { name = "a trout", description = "One, brown, speckled, holding in the current under the bridge. It came up as an egg on a heron's foot, the schoolmistress thinks. It is forty years old. It has a name, and a salary of worms from the parish.",
          actions = {
            { "Tickle the trout", say "You lie on the bank and slide a hand under. It lets you. It leans on your fingers like a cat. A small boy on the bridge informs you that you are tickling the Alderman and that there is a fine." },
          } },
        { name = "watercress", description = "In the slack by the bridge, dark green and peppery. It is the only salad in Tether, and it is on every plate." },
        { name = "the stone bridge", description = "One slab, hand railed, with a date and {i}ERECTED BY SUBSCRIPTION{/}. The stream could be stepped over. The village wanted a bridge. A place is not a place without one." },
      } },
    { name = "the lip",
      description = "A notch worn in the rock at the island's end, smooth as the inside of a bowl. The water has cut it three feet deep. At that rate, the schoolmistress has worked out, it will saw the spit off in eleven thousand years, and there is a parish fund.",
      things = {
        { name = "a row of iron rings", description = "Set in the rock either side, for ropes. Each generation's young men go down the fall on a line, at midsummer, to see where it stops. The record is nine hundred feet. He came up white haired and would only say that it gets very quiet." },
        { name = "a measuring line", description = "Coiled on a peg, a thousand feet of it, knotted at every fathom, with a lead. The last two hundred feet of it have never been wet." },
      },
      actions = {
        { "Sound it with the line", say "You pay it out beside the water, knot after knot. At eight hundred feet the lead is hanging in thin mist. At a thousand, the end of the line, it hangs in clear air, and the fall beside it has stopped. Above the lead, water. Below it, a view. You haul in. The last hundred fathoms come up bone dry and slightly warm." },
      } },
    { name = "the mill race",
      description = "A second channel, cut off the stream above the lip, running to a wheel no bigger than a cart's. It turns a grindstone. The knife grinder of Tether works here, in the spray, with his back to the finest view in the kingdom.",
      things = {
        { name = "the knife grinder", description = "A stooped man in a leather apron, holding a scythe to the stone. Sparks go off the blade and out over the edge. \"Thirty years,\" he says, of the view. \"I looked once.\"",
          actions = {
            { "Ask where the water goes", say "He lifts the blade off the stone. \"My father said it's wanted somewhere. Said you don't ask where a thing's gone when it's been asked for.\" He tests the edge on his thumb. \"The schoolmistress says evaporation. She's from Below.\"" },
          } },
        { name = "the wheel", description = "Oak, green with weed, eight buckets. It was built by the first families. It has been reported to turn, on certain still nights, a little way backwards." },
      } },
    { name = "a bench of slate",
      description = "Set by the lip, facing out. Courting couples come here, and old people, and anyone with a decision. The slate is scratched all over with initials and with the answers people came to.",
      things = {
        { name = "the scratches", description = "{i}Yes. No. Stay. Go Below. Ask her. I forgave him here.{/} And one, very small, low down: {i}It isn't lost. It's somewhere.{/}" },
      },
      actions = {
        { "Sit a while", say "You sit. The water goes over, and goes over. It is the same shape every second and never the same water. After a time you find that you have stopped waiting for the sound of it hitting the bottom. You had been listening for that since you came. You had not known." },
      } },
    { name = "the sound",
      description = "A rush at the lip, like any weir. And under that, nothing. A fall this high should roar. There is no roar, because there is no bottom to make it. It is the quietest great waterfall in the world, and people lower their voices beside it without knowing why." },
    { name = "the spray",
      description = "It comes back up on the wind, fine as breath, and settles on your face. Ferns grow all along the spit in it, and moss a hand deep, and a small blue flower found nowhere else.",
      things = {
        { name = "the blue flower", description = "Lipwort. Four petals. It grows only where the spray lands, and it flowers all year, and the bees from Wrong Way Up come round the island for it. The honey from here is the blue of skimmed milk." },
        { name = "the ferns", description = "Hart's tongue and maidenhair, hanging over the edge by their roots, dripping into the sky. Each drip, you notice, falls. It is only the fall itself that does not arrive. You watch a single drop the whole way down to the cloud, to be sure." },
      } },
    { name = "a swimmer's ladder",
      description = "Iron, bolted to the bank where the stream widens into a pool before the lip. Children swim here in summer, with a rope across the outflow, and a second rope, and a net, and somebody's grandmother." },
    { name = "the grandmother",
      icon = "☺",
      description = "On a stool by the pool with her knitting and a long pole with a hook. There are no children in today. She is on duty all the same. She has fished out three generations, including the present Clerk of the Weather, who was not grateful.",
      actions = {
        { "Ask if anyone ever went over", say "\"One dog,\" she says. \"Big yellow fool of a thing, after a stick. Straight over.\" She counts stitches. \"Came trotting up the stones from the mountain nine days later, dry as a biscuit, with the stick. Wouldn't say where he'd been. Never went near water again.\"" },
      } },
    { name = "a brass tablet",
      description = "On a post. {i}THE FALL. Height: not established. Destination: not established. The Royal Survey regrets.{/} Someone has scratched a tick beside {i}regrets{/}." },
    { name = "a bottle on a string",
      description = "Tied to a ring, hanging in the fall itself, twenty feet down. The schoolmistress's experiment: a corked bottle with a note asking the finder to write. She lets out another yard each term. She is a patient woman and has a hundred terms of string." },
    { name = "the view past the fall",
      description = "South, over the cloud tops, to a bay of white that stands quite still while everything round it moves. A single grey thread runs toward it from the village, sagging, and goes in." },
  },

  exits = {
    { to = "le_tether", label = "Back along the stream", description = "Upstream, against the hurry of it, to the green." },
  },
}
