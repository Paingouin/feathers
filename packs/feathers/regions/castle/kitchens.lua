space {
  id = "castle_kitchens",
  region = "castle",
  name = "The Kitchens",
  description = "A vault of fire and copper where forty people cook for a court that eats standing up. It is hot and loud, and it is the one room in the castle where things are decided and then happen.",
  palette = { bg = "#14100c", text = "#d8ccba", dim = "#7c6e5c", accent = "#e89a50", border = "#4e3a26" },
  ambience = {
    embers { glyphs = "∙·˙", color = "#e89a50", rate = 0.2 },
    steam { glyphs = "∙°˙", color = "#70685e", rate = 0.4 },
  },

  things = {
    { name = "Mistress Dobbin",
      key = "cook",
      description = "The cook, with a ladle that she carries as other people carry a rank. She has cooked for three kings and has an opinion of each. It is the same opinion.",
      actions = {
        { "Offer to help", say "She gives you an onion and a knife. A minute later she takes back the knife. A minute after that she takes back the onion. \"Stand there,\" she says, and points to a spot from which nothing can be reached." },
        { "Ask about the marrows", when = no(flag "knows_garden"), set "knows_garden",
          say "\"Every morning,\" she says. \"On the step. Washed. No note.\" She jerks the ladle at the back wall. \"Through there, behind the flour. Forty years I've cooked here and I never asked who digs that garden. Because then I'd know, and I'd have to curtsey to the soup.\"" },
        { "Ask about the pies", when = no(visited "spoon_tunnel"),
          say "\"Six go in the pantry at night. Five come out in the morning. Twenty years.\" Her eyes narrow. \"And it's never the best one. That's what gets me. It's a polite thief.\"" },
        { "Ask about the pies", when = visited "spoon_tunnel",
          say "You open your mouth. You think of Old Pelham, and his napkin, and the mat. \"Mice,\" you say. She looks at you for a long moment. \"Mice,\" she agrees, and puts a seventh pie in the oven." },
      } },
    { name = "the marrows",
      description = "A heap of them by the back wall, green and striped and enormous. There is marrow soup today. There was marrow soup yesterday. The court has stopped asking." },
    { name = "the great hearth",
      description = "You could roast an ox in it, and they are.",
      things = {
        { name = "the turnspit dog",
          description = "A small brown dog in a wheel, trotting, turning the ox. He has the look of a professional. At six a bell goes, he steps out, another dog steps in, and they nod.",
          actions = {
            { "Pet him", say "He allows it without breaking stride. He is at work." },
          } },
      } },
    { name = "the pantry",
      description = "A cold room off the kitchen, shelved to the roof, with a row of pies cooling under cloths.",
      things = {
        { name = "the pies", description = "Six. Counted nightly, in ink." },
        { name = "a loose flagstone",
          visible_if = visited "spoon_tunnel",
          description = "In the corner, under the bottom shelf. From this side it fits so well that nobody has seen it in twenty years. There are a few crumbs on it." },
      } },
    barrel { name = "a flour barrel", description = "One of a dozen against the back wall. The floor in front of them is swept. The floor behind them is worn, in a line, by one pair of boots." },
  },

  exits = {
    { to = "castle_bailey" },
    { to = "kings_garden", label = "The door behind the flour",
      description = "Past the barrels, through a door the kitchen has agreed not to see.",
      requires = flag "knows_garden", hidden = true },
    { to = "spoon_tunnel", label = "The loose flagstone",
      description = "Down under the pantry shelf, the way the pies go.",
      requires = visited "spoon_tunnel", hidden = true },
  },
}

space {
  id = "kings_garden",
  region = "castle",
  secret = true,
  name = "The Walled Garden",
  description = "A kitchen garden between the keep and the curtain wall, where no window looks. Bean rows, a cold frame, a wheelbarrow, and at the far end a man in an old hat, kneeling in the marrow bed. He does not look up. He is in a meeting.",
  palette = { bg = "#0c120c", text = "#ccd6c0", dim = "#66785e", accent = "#9cc860", border = "#34502c" },
  ambience = {
    dust { glyphs = "·˙", color = "#b8b060", rate = 0.3, speed = 0.2 },
  },

  things = {
    { name = "the King",
      key = "king",
      icon = "♚",
      description = "King Humbert the Fourth, by the grace of several gods, in a gardening apron. He has soil to the elbows and the face of a man who has found what he is for, sixty yards from where everybody is looking for him.",
      things = {
        { name = "his hat", description = "Straw, with a hole in the crown. It is the only crown he has on." },
        { name = "his hands", description = "Broad, cracked, and good at this. They have signed nine thousand documents and remember none of them. They remember every marrow." },
      },
      actions = {
        { "Bow", say "\"Don't,\" he says, without turning round. \"You'll tread on the lettuces. Everyone who bows treads on the lettuces.\"" },
        { "Ask about the meeting", say "\"It's going very well,\" says the King. He pats the soil round a seedling. \"We are agreed on nearly everything. This one wants more water.\"" },
        { "Ask him to sign something", when = no(flag "warrant_given"), give "warrant", set "warrant_given",
          say "He sighs, wipes one hand on his apron, and takes a folded paper from his pocket. He has a stack of them, signed in advance. \"They always want something signed. I don't read them. I find it keeps me cheerful.\" He has left a thumbprint of good black earth beside the seal. \"Now. You never saw me. I am in a meeting.\"" },
        { "Promise not to tell", when = flag "warrant_given",
          say "\"Good,\" says the King. \"Cook knows, of course. Cook has always known. She has never once asked me for anything.\" He looks down the row. \"I send her marrows.\"" },
      } },
    { name = "the marrow bed",
      description = "Twelve plants in a row, each with a stake and a slate with its name on.",
      things = {
        { name = "a slate", description = "{i}Her Grace the Duchess of Pell.{/} All the marrows are named after courtiers. This one is small, and going soft at one end." },
        { name = "the big one",
          key = "great marrow",
          wonder = true,
          description = "At the end of the row, under an awning of its own: a marrow the size of a rowing boat, striped dark green and pale, lying on straw so that it shall not mark. He has grown it for three summers and it has not stopped. {magic}Put a hand on it and you can feel it at work, slow and certain.{/} It is the only thing in the castle that is getting on with its job.",
          actions = {
            { "Guess its weight", say "\"More than the Chancellor,\" says the King at once. \"And more use. I've had it weighed. I haven't had him weighed. I can tell.\"" },
          } },
      } },
    { name = "the wheelbarrow",
      description = "In it: a trowel, a ball of twine, a flask of cold tea, and the Great Seal of the kingdom, which he uses for firming in seedlings.",
      actions = {
        { "Pick up the Great Seal", say "It is heavy, and gold, and has compost in the lettering. You put it back exactly where it was." },
      } },
    { name = "a robin",
      description = "On the handle of the spade. It follows the King up and down the rows for worms. It is the only courtier he has not tried to get away from." },
  },

  exits = {
    { to = "castle_kitchens", label = "The door behind the flour", description = "Back through the kitchen, with mud on your boots and nothing to say." },
  },
}
