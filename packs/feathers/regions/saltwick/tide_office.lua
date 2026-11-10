space {
  id = "tide_office",
  region = "saltwick",
  name = "The Tide Office",
  description = "A small room on the quay: a counter, a clock with one hand, and shelves of ledgers swollen with damp. The brass plate on the door reads {b}ROYAL OFFICE OF TIDES, INWARD AND OUTWARD{/}. In Saltwick the sea goes out when it has been signed out.",
  ambience = { dust { glyphs = "·˙", color = "#56707e", rate = 0.3, speed = 0.3 } },

  things = {
    { name = "the tide clerk",
      icon = "☻",
      description = "A thin man in sleeve garters, very upright behind the counter, with a form in front of him and nothing in his right hand. He keeps looking at the hand.",
      variants = {
        { when = flag "tide_out",
          description = "He sits back with his garters loosened and the stamp on a small cushion beside him. His paperwork and the sea agree, and he means to enjoy it." },
      },
      actions = {
        { "Talk", when = no(flag "tide_out"),
          say "\"The Office regrets that the tide is unable to go out at present. The outward form is complete.\" He turns it round to show you. \"It is merely not {i}stamped{/}.\"" },
        { "Talk", when = flag "tide_out",
          say "\"Out, as of today, and in good order.\" You ask when it comes back. \"That is an inward matter. Inward is Mr Pargeter, and Mr Pargeter is on leave.\" The dust on the other stool is very thick." },
        { "Ask about the stamp", when = all { no(flag "tide_out"), no(item "tide_stamp") },
          say "\"Taken. Off this counter, through that window, by a gull, on the ninth.\" He has written it down, and shows you where. \"It went towards the light. I have applied for a ladder.\"" },
        { "Hand over the stamp", when = item "tide_stamp", take "tide_stamp", set "tide_out", fx "shake",
          say "He takes it in both hands. He inks it. He brings it down on the form, {b}OUT{/}, and outside, with one long sucking sigh, the whole harbour begins to leave." },
        { "Ask where the tide goes", when = flag "tide_out", set "knows_tide_room",
          say "\"Goes? It is {i}kept{/}. One does not simply let go of a tide.\" He tips his head at the door behind him, the one marked {b}OUT{/}, and returns to his blotter. \"Do not unfold anything.\"" },
      } },
    { name = "the outward form",
      description = "Form 9, Outward, in triplicate: one copy for the Office, one for the Crown, one for the sea. Every box is filled in except one in the corner, the size of a stamp.",
      variants = {
        { when = flag "tide_out",
          description = "Stamped {b}OUT{/} in violet, a little crooked. The sea's copy is gone from the pile. Nobody posted it." },
      } },
    { name = "the clock with one hand",
      description = "It does not tell the hour. The dial says {b}IN{/} at the top and {b}OUT{/} at the bottom, and the hand has rested on {b}IN{/} so long that it has left a shadow.",
      variants = {
        { when = flag "tide_out",
          description = "The hand points straight down at {b}OUT{/}. Where it used to rest there is a pale stripe on the dial." },
      } },
    { name = "the ledgers",
      description = "Every tide since the Office opened, in and out, signed for. The damp has got into all of them.",
      things = {
        { name = "the oldest ledger", description = "The first entry is an {b}OUT{/}. Whoever opened the Office found the sea already in, and no record of anyone letting it." },
        { name = "the newest ledger", description = "Forty-one entries reading {b}IN{/}, one under the other. The handwriting gets smaller as it goes down.",
          variants = {
            { when = flag "tide_out",
              description = "Forty-one entries reading {b}IN{/}, and then one {b}OUT{/}, large, underlined twice." },
          } },
      } },
    { name = "the window",
      description = "Open a hand's width, for the air. There is a white splash on the sill and a webbed footprint on the ink pad." },
    { name = "a door marked OUT",
      key = "out door",
      description = "Behind the counter, narrow, painted the green of all official doors.",
      variants = {
        { when = flag "tide_out",
          description = "Behind the counter, narrow, painted green, and beaded with wet like a cold jug. Now and then it creaks, the way a full barrel does." },
      },
      actions = {
        { "Knock", when = no(flag "tide_out"), say "Hollow. The clerk looks up, and you take your hand away." },
        { "Knock", when = flag "tide_out", say "It does not sound hollow. It sounds like knocking on the side of a ship, from inside." },
      } },
  },

  exits = {
    { to = "saltwick_harbour" },
    { to = "tide_room", label = "The door marked OUT",
      description = "Past the counter and through the wet green door. The clerk has, in his way, said you may.",
      requires = all { flag "tide_out", flag "knows_tide_room" }, hidden = true },
  },
}

space {
  id = "tide_room",
  region = "saltwick",
  secret = true,
  wonder = true,
  name = "Where the Tide Is Kept",
  description = "A stone storeroom, pigeonholed from floor to ceiling, with the sea in the pigeonholes. It has been folded. Each one holds a slab of green water standing on its edge, labelled, with its waves still going, very small, along the top.",
  palette = { bg = "#06110f", text = "#bcd4cc", dim = "#507468", accent = "#6fd8c0", border = "#1f4a44" },
  ambience = {
    shimmer { color = "#4fb8a4", strength = 0.5, speed = 0.4 },
    drip { glyphs = "⠁⠂⠄⡀", color = "#5fa8a0", rate = 0.2 },
  },

  things = {
    { name = "the pigeonholes",
      icon = "≈",
      description = "Water, filed upright, a few thousand tons to the shelf. Nothing holds it in but the label. Small fish pass from one pigeonhole to the next through the wood, and do not seem to find it difficult.",
      things = {
        { name = "a label", description = "{i}Saltwick Hbr, outward, this day. To be returned.{/} The ink is still wet, though in here that proves little." },
        { name = "a pigeonhole marked LOST", description = "A cupful of sea, a child's sandal, and half a sandcastle with the flag still in it." },
        { name = "a crab in the filing", description = "It sidles along a shelf: inside the water, outside the water, inside again. It is the only one here who understands the system." },
      },
      actions = {
        { "Put your hand in", fx "wash",
          say "Cold to the wrist, and a current pulls politely at your fingers. When you take your hand out the water stays as it was, upright, with a hand-shaped dent that closes slowly." },
        { "Listen", say "Surf, very small and very far away, from every shelf at once." },
      } },
    { name = "the top shelf",
      description = "One row of pigeonholes near the ceiling, in older, darker wood. All empty, all dry. The labels give a date and no harbour." },
    { name = "a mop and bucket",
      description = "Leaning in the corner, bone dry, never used. Somebody was issued them on the first day and has been proud ever since." },
  },

  exits = {
    { to = "tide_office", description = "Back through the green door. Shut it properly." },
  },
}
