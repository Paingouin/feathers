space {
  id = "hollow_oak",
  region = "mumblewood",
  secret = true,
  name = "Inside the Old Oak",
  description = "The oak is hollow, and the hollow has been furnished. Shelves gnawed into the heartwood, a floor of dry leaves, and a smell of nuts, dust and fox. High above, a knot-hole lets in one coin of daylight.",
  palette = { bg = "#120e09", text = "#d2c4a8", dim = "#786850", accent = "#d99a4a", border = "#4a3824" },
  ambience = { dust { glyphs = "·˙∙", color = "#8a6a3c", rate = 0.5, speed = 0.3 } },

  things = {
    { name = "the shelves",
      description = "Row on row of acorns, each in its own notch, sorted by year. The oldest are black and hard as beads. Nobody is saving these to eat.",
      things = {
        { name = "the ledger",
          wonder = true,
          description = "A strip of birch bark as long as your arm, covered in tiny tooth-marks in neat columns. {magic}It is accounts.{/} Deposits, withdrawals, and at the foot of each column a single careful bite: carried forward. By the colour of the bark, it goes back some four hundred years." },
        { name = "the oldest acorn", description = "On the top shelf, alone, on a bed of moss. It is the size of your fist, and warm." },
      },
      actions = {
        { "Take an acorn", say "Your hand is on it when you notice the squirrel. Then the other squirrels. You make, instead, a small deposit: one button. It is entered." },
      } },
    { name = "the head teller",
      icon = "s",
      description = "A red squirrel on a stump behind a slab of bark, grey about the muzzle, regarding you over folded paws. You have been looked at like this before, by a man you owed money.",
      actions = {
        { "Ask about a loan", say "It pushes an acorn cup towards you. Inside is one hazelnut. The terms are not stated. You suspect they are severe." },
      } },
    { name = "the fox",
      icon = "f",
      description = "Curled in the leaves by the doorway, one eye open. It lives here by an arrangement you would need to read the ledger to understand.",
      actions = {
        { "Thank it", say "The eye closes. You have been dismissed by experts." },
      } },
    { name = "a burrow in the floor",
      description = "Wide enough for a fox, or for an adventurer with no pride left. A draught comes up it smelling of sun and grain." },
  },

  exits = {
    { to = "forest_path", label = "The doorway in the oak", description = "Out through the ferns, to the path and its opinions." },
    { to = "barley_road", label = "The burrow",
      description = "Down, along, and a long way on your elbows, towards the smell of barley." },
  },
}
