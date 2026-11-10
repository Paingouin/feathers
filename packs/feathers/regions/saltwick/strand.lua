space {
  id = "long_strand",
  region = "saltwick",
  name = "The Long Strand",
  description = "A mile of grey sand under the cliffs, ruled across by the tide-line. The sea comes up it, thinks better of it, and comes up again. The only footprints are yours, and they wander.",
  variants = {
    { when = flag "tide_out",
      description = "A mile of grey sand, and beyond it now another mile, wet and shining, that used to be sea. The water has gone out to a white line near the horizon. It left its things behind: weed, pools, and the black ribs of a ship." },
  },

  things = {
    { name = "the tide-line",
      description = "Everything the sea did not want: weed, cork, rope, and wood worn to the shape of nothing in particular.",
      things = {
        { name = "a green bottle",
          key = "green bottle",
          visible_if = no(flag "bottle_taken"),
          description = "Half buried, corked and waxed. Something pale is rolled up inside.",
          actions = {
            { "Pick it up", give "bottle", set "bottle_taken",
              say "It comes out of the sand with a small suck. There is a name scratched in the wax." },
          } },
        { name = "a clog", description = "Left foot. The sea has the other, and has not finished with it." },
        { name = "a whelk shell",
          wonder = true,
          description = "Big as your fist, pink inside. You hold it to your ear, as everyone does, and it is not the sea in there. {magic}It is a kitchen{/}: a pan, a clock, somebody humming. The sea, it seems, listens to shells from the other end.",
          actions = {
            { "Listen longer", say "A chair is pulled out. A spoon is set down. Whoever it is has laid a second place." },
          } },
      } },
    { name = "a crab",
      icon = "c",
      description = "It holds up both claws at you. It has no further plan. Neither, you realise, do you.",
      actions = {
        { "Back away sideways", say "It accepts this as the correct form." },
      } },
    { name = "a rock pool",
      visible_if = flag "tide_out",
      description = "A basin of clear water, left behind. In it a very small fish swims in a very small circle, under the impression that this is still the sea.",
      things = {
        { name = "an anemone", description = "Red, soft, shut like a purse. It opens when you look away." },
      } },
    { name = "the wreck",
      visible_if = flag "tide_out",
      description = "The ribs of a ship standing black out of the wet sand, as tall as a barn. Enough of the stern is left to read the name: {i}UNSINKABLE{/}. Under it somebody has carved, small and neat, {whisper}on the whole{/}.",
      things = {
        { name = "the figurehead", description = "A wooden woman, pointing firmly ahead. She is pointing at the cliff." },
        { name = "a hatch", description = "Aft, where some deck survives: a hatch cover crusted with barnacles, and not quite shut." },
      } },
    { name = "the cliffs",
      description = "Grey, tall, and full of holes that are either caves or the homes of very large birds." },
  },

  exits = {
    { to = "cliff_road", label = "The cliff steps",
      description = "Up the steps cut in the cliff. The rope handrail starts a little after you need it." },
    { to = "saltwick_harbour", description = "Round the point to the quay." },
    { to = "wreck_hold", label = "The hatch",
      description = "Up the ribs and in through the hatch, into the ship's own dark.",
      requires = flag "tide_out", hidden = true },
    { to = "second_cove",
      description = "Round the far headland, over rocks that are under water more often than not.",
      requires = flag "tide_out",
      locked = "the sea is standing in the way" },
  },
}

space {
  id = "wreck_hold",
  region = "saltwick",
  secret = true,
  name = "Inside the Unsinkable",
  description = "The hold of a ship lying on her side, so that one wall is the floor and the deck is a wall. Green light comes through the planking in stripes. Everything that was not nailed down is in a heap in the low corner, and has been for a hundred years.",
  palette = { bg = "#08100e", text = "#bccabc", dim = "#56695c", accent = "#8fc79a", border = "#2a463a" },
  ambience = {
    drip { glyphs = "⠁⠂⠄⡀", color = "#5f9a84", rate = 0.4 },
    dust { glyphs = "·˙", color = "#4a6a58", rate = 0.3, speed = 0.3 },
  },

  things = {
    { name = "the cargo",
      description = "Crates, burst and barnacled, every one stencilled the same.",
      things = {
        { name = "a crate", description = "{i}LIFEBELTS, CORK, 200{/}. It is empty. They are all empty. The lifebelts, at least, got away." },
        { name = "the manifest", description = "In a tin frame: {i}Lifebelts. Lifeboats (crated). Anchors, spare, 40.{/} She carried nothing but precautions." },
      } },
    { name = "the captain's table",
      description = "Bolted to what was the floor, so that it now juts from the wall at head height, chair, captain and all.",
      things = {
        { name = "the captain",
          icon = "☠",
          description = "A skeleton in a good coat, sitting at a right angle to the world, held in his chair by the table. One hand rests on the log. {danger}He looks as if he might turn his head.{/} He does not. He is waiting to be proved right.",
          actions = {
            { "Salute", say "You salute. A crab comes out of his collar, looks at you, and goes back in. You decide that counts." },
          } },
        { name = "the ship's log", description = "The last page: {i}Struck sand, 2 bells. Am informed by the mate that sand does not count. Remaining aboard on principle.{/}" },
        { name = "a brass telescope", description = "Screwed to the table. You put your eye to it. It is trained, through a gap in the planks, on a bench at the top of the cliff." },
      } },
    { name = "the ship's bell",
      wonder = true,
      description = "It hangs from what is now the wall, and it hangs sideways: straight out, level, mouth towards the sea. Everything else aboard fell over when the ship did. {magic}The bell has not been told.{/}",
      actions = {
        { "Ring it", fx "shake",
          say "One note, sideways. Far out on the wet sand, the white line of the sea stops for a moment, as a dog does when it hears its name." },
      } },
  },

  exits = {
    { to = "long_strand", label = "The hatch", description = "Out through the hatch and down the ribs to the sand." },
  },
}
