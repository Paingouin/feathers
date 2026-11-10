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
