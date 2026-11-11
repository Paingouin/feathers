space {
  id = "secret_study",
  region = "aldmoor",
  secret = true,
  name = "The Study That Isn't Hers",
  description = "A small round room with no window and one lamp. So this is where the Baroness does not study. She does not study a very great deal: maps, charts, and all of them of what lies under the town.",
  palette = { bg = "#0d0d10", text = "#cfc8b8", dim = "#6b665c", accent = "#d8b468", border = "#403a30" },
  ambience = { flicker { color = "#ffc060", strength = 0.3 }, dust { glyphs = "·", color = "#4c463c", rate = 0.3 } },

  things = {
    { name = "the map table",
      description = "A map of Aldmoor, drawn from below: every cellar, every drain, and a great vaulted hall under the market that no surveyor of the upper town has ever admitted to.",
      variants = {
        { when = flag "knows_undertown",
          description = "You know it now: the Great Drain, the Cistern beyond it, and, off the Drain, a chamber marked in red ink with one word: {danger}OURS{/}." },
      },
      things = {
        { name = "a red-ink annotation", description = "Beside a side passage of the Great Drain: {danger}third arch, count the rats, push where it's dry{/}." },
        { name = "a bronze door, drawn large", description = "Sketched again and again in the margins, each time with a hollow at its centre, and beside the hollow, each time, a question mark pressed harder into the paper." },
      },
      actions = {
        { "Study the map", when = no(flag "knows_undertown"), set "knows_undertown",
          say "You trace it with a finger until the Undertown sits in your head like a tune: {place}the Drain{/}, {place}the Cistern{/}, and a hidden vault three arches along. You could find that arch now." },
        { "Study the map", say "You have it by heart. It is the first thing you have ever had by heart on purpose." },
      } },
    { name = "the writing desk",
      description = "Letters, half finished, all to the same correspondent, all beginning {i}It is not what you think{/}.",
      things = {
        { name = "the top drawer", description = "Sealing wax, a pen knife, and a small velvet box, open.",
          things = {
            { name = "the velvet box", description = "Shaped to hold a ring.",
              variants = {
                { when = item "signet_ring", description = "Shaped to hold a ring. It is doing so no longer, and looks, if anything, lighter for it." },
              },
              actions = {
                { "Take the ring", once = true, give "signet_ring",
                  say "{gold}A signet ring{/}, bronze, and far older than anything else in this house, including the house. It is cold, and stays cold in your hand." },
              } },
          } },
        { name = "an unfinished letter", description = "{i}...the door will not open for me, though I have the seal. I begin to think the seal is not the key but the question. Whatever sleeps behind it, I am not who it is waiting for.{/}" },
      } },
    { name = "a telescope",
      description = "Mounted on a brass stand and pointed, with great care, straight down at the floor.",
      actions = {
        { "Look through it", say "Floorboards. Then your eye adjusts, and for one dizzy moment there is depth, and arches, and a glimmer on black water a long way down. Then floorboards.", fx "wash" },
      } },
    { name = "the chart rack",
      description = "Pigeonholes to the ceiling, a rolled chart in each, tagged in the Baroness's hand.",
      things = {
        { name = "a chart of the Cistern", description = "Sounded, with depths marked in fathoms. In the middle the soundings stop and she has written: {i}line ran out. Twice.{/}" },
        { name = "a chart of the castle drains", description = "With one shaft marked {i}garderobe (unguarded, see why){/}." },
        { name = "a chart of something under the moor", description = "Unfinished. A long shape, drawn in dots, north of the town. She has written {i}ribs?{/} beside it and then crossed out the question mark." },
        { name = "a chart of the tide", description = "A graph, years long, going up and down as tides do. Near the end she has pencilled in where it will go next, and the pencil goes off the bottom of the paper.",
          variants = {
            { when = flag "tide_out",
              description = "A graph, years long, going up and down as tides do. Near the end her pencil goes off the bottom of the paper. She predicted it. She will be insufferable, if she can find anyone to tell." },
          } },
      } },
    { name = "the lamp",
      description = "One oil lamp with a green shade. It has been trimmed so often that the shelf under it is a drift of wick ends. She is down here a great deal, not studying." },
    { name = "a bookshelf",
      description = "Short, and every book on it has been read to pieces.",
      things = {
        { name = "A Complete History of Drains, the real one", description = "The copy upstairs is a lever. This is the book. Every margin is full, and at the end she has added forty pages of her own." },
        { name = "a mason's handbook", description = "Open at the chapter on arches. She has ringed a sentence: {i}no arch of this span can stand without centring{/}, and written beside it: {i}the Drain does{/}." },
        { name = "a book of old seals", description = "Every device ever used in the kingdom. Crowns, beasts, ships. She has marked the page for a single curved line, which has no family, no date, and under {i}origin{/} the word {i}prior{/}." },
      } },
    { name = "a pair of waders",
      description = "Hanging on a nail, wet to the thigh. The Baroness Vaux-Pimbleton, in pearls, has been in the Great Drain this week. You find that you think rather better of her." },
    { name = "a tray",
      description = "A plate with a crust on it, a cold pot, a cup. Brought down by somebody and never collected. So one person in the house does know.",
      things = {
        { name = "a note under the cup", description = "{i}My lady. The cistern rope is mended and I have put new nails in your boots. Burn this. S.{/} The butler writes a very clear hand." },
      } },
    { name = "the speaking tube",
      description = "A brass mouthpiece in the wall. It goes up to the drawing room, behind the bookcase, so that she can hear when her guests have gone.",
      actions = {
        { "Listen", say "The harpsichord. A general saying \"from the left\". And the footman, close to the tube, very quietly: \"He's still in there, my lady. The one who isn't Sir Aubrey.\"" },
      } },
    { name = "a collection of things from below",
      description = "A glass case of what she has brought up: each with a ticket and a place.",
      things = {
        { name = "a bronze nail", description = "{i}Cistern, north wall.{/} Green, square-headed, and as long as your hand. No smith in Aldmoor makes them." },
        { name = "a tile", description = "{i}Great Drain, third arch.{/} Glazed blue, with half of a curved line on it. She has left room beside it for the other half." },
        { name = "a paper boat", description = "{i}Great Drain, at the weir.{/} Folded from a page of regulations. She kept it. There is a whole fleet in the drawer underneath." },
      } },
    { name = "the round wall",
      description = "The room has no corners. If you put a hand on the plaster it is cold and slightly damp, and you understand that you are standing in a well shaft with a floor put in. The house was built round it, to hide it, by the first Pimbleton who went down." },
    { name = "a specimen cabinet",
      description = "Twelve shallow drawers, each labelled in a neat upright hand. It is the one piece of furniture in the room that has been dusted.",
      things = {
        { name = "the top drawer", description = "River mud, in corked tubes, each with a date and a depth. Somebody has been taking the Undertown's pulse for years." },
        { name = "a drawer of keys", description = "Forty, tagged. {i}Sluice. Vault (theirs). Vault (ours). Grate, market.{/} One tag is blank, and that key is the brightest." },
        { name = "the bottom drawer", description = "It sticks. Inside, wrapped in a silk handkerchief: a child's wooden boat, with a paper sail. Not a specimen. It has been kept a long time by somebody who would not like you to have seen it." },
      },
      actions = {
        { "Try the sticking drawer", say "It gives all at once, as they do. You put the little boat back exactly as it was, and smooth the handkerchief, and shut the drawer with more care than you have shown anything in this house." },
      } },
    { name = "a clock that is wrong",
      description = "A bracket clock on the shelf, ticking, and four hours out. Then you see the second dial under the first, with one hand, marked {i}high{/} and {i}low{/}. It does not tell the time. It tells the water.",
      things = {
        { name = "the second dial", description = "The hand points nearer {i}low{/} than the scale was made for. A pencil mark on the brass shows where low used to be." },
      } },
  },

  exits = {
    { to = "noble_house" },
  },
}
