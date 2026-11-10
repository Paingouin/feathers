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
        { "Take an acorn", once = true, say "Your hand is on it when you notice the squirrel. Then the other squirrels. You make, instead, a small deposit: one button. It is entered." },
        { "Take an acorn", say "You have no more buttons you can spare. The squirrels know exactly how many you have." },
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
    { name = "the counter",
      description = "A slab of bark laid across two roots, polished by four centuries of small feet. There is a dip worn in it where deposits are set down, and a second, smaller dip where they are looked at doubtfully.",
      things = {
        { name = "a set of scales", description = "Two acorn cups hung from a twig by spider silk. An acorn goes in one; in the other, a pebble kept for the purpose. The pebble has been licked clean so often that it shines." },
        { name = "the clerks",
          description = "Three young squirrels in a row, each with a strip of bark and a great seriousness. They enter everything in triplicate, by biting.",
          things = {
            { name = "the junior clerk", description = "The smallest, at the end. It has bitten its strip clean through twice this morning out of nerves and been given another without comment." },
          } },
        { name = "a notice of rates", description = "Scratched on a leaf pinned to the wall with a thorn. You cannot read tooth, but the columns are clear enough: something small on the left, something a little larger on the right, and a very long gap between them." },
      } },
    { name = "the queue",
      description = "Customers, waiting along a root with a patience that suggests this is normal.",
      things = {
        { name = "a jay", icon = "v",
          description = "Pink, blue-winged, loud, and plainly overdrawn. It buried four thousand acorns last autumn and cannot remember where a single one is. It is here to ask for an extension.",
          actions = {
            { "Offer to vouch for it", say "The head teller looks at you, then at the jay, then at your one remaining button. The application is declined on the grounds of the guarantor." },
          } },
        { name = "a wood mouse", description = "It has brought one hawthorn berry and is holding it against its chest in both hands. This is its entire fortune. It has been treated, you notice, exactly as politely as the jay." },
        { name = "a nuthatch", description = "Waiting upside down, on the wall, because that is how it waits. It has an account here for hazelnuts and does not trust the squirrels with them, which is fair." },
      } },
    { name = "the strongroom",
      description = "A knot in the heartwood at the back of the hollow, stopped with a plug of clay and moss. Two squirrels sit one each side of it, not eating anything, which for a squirrel is a uniform.",
      things = {
        { name = "the clay plug", description = "Stamped all over with small paw prints, each one a seal. To get in you would need to break forty of them, in front of witnesses, with those teeth present." },
        { name = "a chink beside the plug",
          description = "A crack you can put an eye to.",
          things = {
            { name = "the reserve",
              wonder = true,
              description = "Acorns. A chamber of them the size of a hay cart, stacked to the roof, gold in the one thread of light. {magic}Not one has sprouted and not one has rotted.{/} Four hundred autumns are in there, held against a winter that has not come yet. The squirrels of the Mumblewood have never spent the capital. They are the only bank in the kingdom that could survive everybody asking at once." },
          } },
      } },
    { name = "the knot-hole",
      description = "High in the trunk: one round window, and one round patch of sun that crosses the floor through the day. Business is done by it. When the light reaches the counter, the bank opens. When it reaches the fox, the bank shuts.",
      things = {
        { name = "the patch of sun", description = "It is on the third shelf at present. A row of very old acorns is having its turn in the light, and somebody small is dusting them with its tail." },
      } },
    { name = "the night manager",
      icon = "o",
      description = "On a ledge near the roof, a tawny owl, asleep, with its face turned to the wall. It takes over at dusk. The squirrels do not discuss what happens to customers who come after hours with bad paper.",
      things = {
        { name = "a pellet", description = "On the leaves under the ledge: grey, neat, and containing, you see when you look closer, one very small strip of bitten bark. A forger, perhaps. The Bank takes a firm line." },
      } },
    { name = "the heartwood walls",
      description = "The inside of the oak, brown and ridged, going up into the dark like the inside of a tower. It is warm to the hand. The tree is hollow and alive and has been both for longer than the bank.",
      things = {
        { name = "the growth rings", description = "Where a shelf has been gnawed deep you can count them. You get to three hundred and lose your place. The squirrels, who have counted, have marked every hundredth with a notch." },
        { name = "a moth on the bark", description = "Brown, ridged, and so exactly the colour of the wall that you only see it when it sighs. It has been there all summer and has never once been entered in the ledger." },
      },
      actions = {
        { "Lay your ear to the wood", say "A slow creak, a long way up, and under it the mumble, deep as a cellar. From inside you can nearly make out words. It is saying a list of numbers. The oak, you realise, has been keeping its own accounts all along, and checking theirs." },
      } },
    { name = "a notch on the lowest shelf",
      description = "If you have made a deposit, it is here: in a notch of its own on the lowest shelf, between two acorns, entered and carried forward. If you have not, the notch is empty and waiting. They cut it when you came in." },
  },

  exits = {
    { to = "forest_path", label = "The doorway in the oak", description = "Out through the ferns, to the path and its opinions." },
    { to = "barley_road", label = "The burrow",
      description = "Down, along, and a long way on your elbows, towards the smell of barley." },
  },
}
