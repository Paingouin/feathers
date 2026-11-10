space {
  id = "griffon_cellar",
  region = "greenhollow",
  secret = true,
  name = "The Cellar That Isn't There",
  description = "For a cellar that does not exist, it is well stocked. Barrels, cobwebs, and one wall noticeably newer than the tavern above it.",
  palette = { bg = "#0c0b0d", text = "#bdb7ae", dim = "#625c58", accent = "#c98f4a", border = "#3a332e" },
  ambience = { dust { glyphs = "·˙", color = "#4a443c", rate = 0.4 }, drip { glyphs = "⠁⠂⠄⡀", color = "#5a6a70", rate = 0.15 } },

  things = {
    barrel(),
    barrel { name = "a second barrel", description = "The same as the first barrel, but it has heard about the first barrel and thinks it could do better." },
    barrel { name = "a barrel marked 'NOT SMUGGLED'",
             description = "The paint is fresh. The denial is fresher.",
             things = {
               { name = "something wedged behind it", description = "Iron, cold, and exactly the shape of a bad idea.",
                 actions = {
                   { "Pull it free", once = true, give "crowbar",
                     say "A {gold}crowbar{/}. Somebody opens things down here that were not meant to be opened. Now, so do you." },
                 } },
             } },
    { name = "the newer wall",
      description = "Brick, where everything else is stone. One brick sits a little proud of the rest, like a child with a secret.",
      variants = {
        { when = flag "cellar_passage",
          name = "the hole in the newer wall",
          description = "A neat gap, a draught, and a smell of far-off drains. The brick lies on the floor, relieved." },
      },
      things = {
        { name = "the loose brick", visible_if = no(flag "cellar_passage"),
          description = "It wobbles when you look at it. It wants to be pushed. Bricks rarely want anything.",
          actions = {
            { "Push it", set "cellar_passage", fx "shake",
              say "The brick goes in, a section of wall comes out, and a draught arrives carrying news from the sewers. None of it good." },
          } },
      } },
    rat { description = "It lives here. You are visiting. It would like that understood." },

    barrel { name = "the ale tun",
             description = "The big one, on its side, with a lead pipe going up through the ceiling to the tap. So this is where Ale comes from. You had hoped not to know." },
    { name = "the wine rack",
      description = "Forty bottles, laid down by the founder against a great occasion. Greenhollow has not had one.",
      things = {
        { name = "a dusty bottle", description = "The label has a year on it, and the word {i}SOON{/}." },
        { name = "an empty slot", description = "One bottle is gone and the dust print is fresh. A great occasion has been had by somebody, privately." },
      } },
    { name = "the smugglers' table",
      description = "A crate with a candle stub, three stools, and a hand of cards put down in a hurry.",
      things = {
        { name = "the cards",
          description = "Three of the hands are terrible. The fourth is five aces. They drink at the Griffon, and it seems they do not trust each other there either." },
        { name = "a tally stick",
          description = "Notched. Forty candles, twelve cases, and one of something marked only with a cross." },
        candle { name = "a candle stub", description = "Untaxed. It burns with a low, guilty flame." },
      } },
    { name = "the trapdoor, from below",
      description = "Planks, a brass ring, and a slot of light. Through the slot you can see the sole of a boot.",
      variants = {
        { when = flag "bed_broken",
          description = "Planks, a brass ring, and a slot of light. No boot. He is upstairs, polishing a mug at the memory of you." },
      } },
    { name = "the cobwebs",
      description = "Curtains of them, grey with dust, looped from beam to beam.",
      things = {
        { name = "a cellar spider",
          description = "All leg. It trembles its web when you breathe, so as to be thought bigger." },
      } },
    { name = "a mushroom patch",
      description = "In the damp corner, pale and domed, growing on a fallen stave. There are fresh cuts on the stalks. The cook comes down for them. So the cook knows there is a cellar, and so, you begin to see, does everyone." },
    { name = "a toad",
      description = "Under the tun, enormous, the colour of the floor. It has been here longer than the smugglers and considers them a fad.",
      actions = {
        { "Pick it up", say "It lets itself be lifted and looks at you. You put it back exactly where it was. It adjusts, to be sure." },
      } },
    { name = "a chalk mark on the old stone",
      description = "An arrow pointing at the newer wall, and the word {i}FRIDAYS{/}." },
    { name = "the floor",
      description = "Flagstones, swept in one track only: from the trapdoor to the newer wall, the width of a handcart.",
      things = {
        { name = "a dropped glove", description = "Lady's, kid leather, embroidered with a small coronet. Whoever comes through that wall on Fridays does not always send servants." },
      } },
  },

  exits = {
    { to = "tipsy_griffon",
      description = function(ctx)
        if ctx:flag("bed_broken") then return "Back up into the smell of stew." end
        return "Up to the trapdoor, which has a boot on it. The boot will move: a man who says there is no cellar cannot be seen holding one shut."
      end },
    { to = "smugglers_vault", label = "The crawl in the wall",
      description = "A crawl through brick and then older stone, slanting down towards the sound of water.",
      requires = flag "cellar_passage", hidden = true },
  },
}
