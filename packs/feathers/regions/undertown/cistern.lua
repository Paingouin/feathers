space {
  id = "cistern",
  region = "undertown",
  wonder = true,
  name = "The Sunken Cistern",
  description = "The tunnel ends and the dark goes up, and out, and on. A hall of black water under a stone sky, held aloft by more columns than you can count, each one standing on its own reflection. Aldmoor market is somewhere overhead, haggling. It has no idea.",
  palette = { bg = "#060d12", text = "#b4c6cc", dim = "#4f6670", accent = "#6fc7d8", border = "#24424e" },
  ambience = {
    shimmer { color = "#3f8fa0", strength = 0.6, speed = 0.5 },
    drip { glyphs = "⠁⠂⠄⡀", color = "#5fa8b8", rate = 0.3 },
    fog { color = "#0f2a34", speed = 0.4, strength = 0.5 },
  },
  backdrop = {
    " ▐▌     ▐▌     ▐▌     ▐▌     ▐▌     ▐▌ ",
    " ▐▌     ▐▌     ▐▌     ▐▌     ▐▌     ▐▌ ",
    "≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈",
  },

  on_enter = function(ctx)
    if not ctx:visited("cistern") then ctx:say("For once, you have nothing clever to think.") end
  end,

  things = {
    { name = "the columns",
      description = "Hundreds, in ranks, vanishing into the dark. No two capitals are alike. Whoever built this had time, and meant it.",
      things = {
        { name = "a column carved with fish", description = "They swim upward round the shaft, getting smaller, until at the top they are only scratches, and then only the idea of fish." },
        { name = "a column set upside down", description = "Its capital is in the water and its base holds the roof. It is the only one. It does not look like a mistake." },
        { name = "a column that is warm", description = "You put your palm on it to steady yourself. It is warm, as a wall is warm when someone has been leaning on the far side." },
      } },
    { name = "the black water",
      description = "Perfectly still, but for the rings where the roof drips. It {shimmer}holds the columns upside down{/} so exactly that you cannot say where stone stops.",
      actions = {
        { "Touch the surface", say "One ring goes out from your finger, crosses the hall, and does not come back. It must have found the far side. There must be a far side.", fx "wash" },
        { "Call out", say "Your voice goes away between the columns. A long time afterwards, a voice comes back. It is nearly yours." },
      } },
    { name = "a flat-bottomed boat",
      description = "Tied to an iron ring by a rope gone grey. It is dry inside. There are no oars, and no sign that it has ever needed any.",
      actions = {
        { "Step in", say "It takes your weight without a ripple, and waits. You have the clear impression that it knows where it would go, and that today is not the day. You step out." },
        { "Offer it your oar", when = item "oar", say "The boat does not so much as rock. You put the oar away, feeling you have offered a fish a ladder." },
      } },
    { name = "the bronze door",
      description = "Set in the hall's one solid wall: a door of green bronze, twice your height, without handle, hinge, or keyhole. At its centre is a shallow hollow, round, the size of a seal.",
      variants = {
        { when = visited "buried_shrine",
          description = "Shut again, green and blank, without handle, hinge, or keyhole. But you have been through it, and the hollow at its centre is faintly warm now, as a seat is when someone has just left it.",
          actions = {
            { "Knock", say "It seems only polite. Nothing answers. The hollow stays warm." },
          } },
        { when = item "signet_ring",
          description = "Set in the hall's one solid wall: a door of green bronze, without handle, hinge, or keyhole. At its centre is a shallow hollow, round, the size of a seal. The ring in your pocket has gone colder, and heavier, and you would swear it is pointing." },
      },
      actions = {
        { "Push it", say "You might as well push the town." },
        { "Knock", say "The bronze drinks the sound. Nothing answers. Something, perhaps, listens." },
      } },

    { name = "the landing stage",
      description = "A stone quay with three steps going down into the water. The bottom step is worn hollow, by a great many feet, all going one way." },
    { name = "the roof",
      description = "Vault after vault, lost in the dark. Here and there a pale root has come through from the gardens of the town and hangs straight down.",
      things = {
        { name = "a hanging root",
          description = "It has grown a hundred feet to drink, and touches the water with one white thread. Now and then a ring goes out from it, when somebody up above waters the beans." },
        { name = "a column with rungs",
          description = "Iron staples go up its side into the dark. At the top, by the Baroness's map, is a cellar on Nobles' Row that believes itself to be the lowest thing in the house." },
      } },
    { name = "the pale fish",
      description = "White, finger-long, eyeless, in shoals under the quay. They turn all together when you breathe out.",
      actions = {
        { "Hold your breath", say "They hold still. So does the water. So, it seems, does the hall. You let it go, and everything resumes, politely, as though you had asked." },
      } },
    { name = "the tide marks",
      description = "Bands on every column, like the rings in a tree: this high in the wet year, this high in the dry. They go up well past your head.",
      things = {
        { name = "the highest mark",
          description = "Not a stain. A line cut with a chisel, right round the column, with a small hand carved beside it, pointing down at the line. {i}To here.{/} Whoever built this did not hope for that much water. They expected it." },
      } },
    { name = "the wishing ledge",
      description = "A ledge by the quay with coins on it. So people do come. Coppers, mostly. One of them is gold, and nobody has taken it.",
      actions = {
        { "Leave the gold where it is", say "You do. It is harder than it sounds, and nobody is watching. You have the feeling that it has been noted all the same, in a long ledger, by a kind hand." },
      } },
    { name = "a dredgers' raft",
      description = "Planks lashed to barrels, with a rake, a sieve and a lantern hook. The Baroness's people. This is where the ring came up.",
      things = {
        { name = "the sieve",
          description = "Silt, a buckle, a tooth. Caught under the mesh is a bronze nail, green, square-cut, as long as your hand. Whatever it held was large." },
        { name = "the rake", description = "Forty feet of jointed pole. It does not reach the bottom. They have added a joint every year." },
      } },
    { name = "your reflection",
      description = "It stands on the water under your boots, sole to sole. It looks less worried than you do. It has the easier job." },
    { name = "the drip",
      description = "One drop, from one place in the roof, into one place in the water, about as often as a slow heart.",
      actions = {
        { "Count the drips", say "You get to forty and find that you have slowed your breathing to match. So this is what calm is. You had wondered." },
      } },

    { name = "a stair into the water",
      description = "At the end of the quay, steps go down under the surface: broad, shallow, of the old dark stone. You can see seven before the black takes them. They were not built to be under water. The water came later and they have not been told.",
      things = {
        { name = "the seventh step",
          description = "A coin's depth under. Something stands on it: a lantern, of horn, unlit, upright, as if put down by someone who meant to be a minute." },
        { name = "a mooring ring, drowned",
          description = "Iron, as wide as a cartwheel, a yard under. You have never seen a boat that would need it. The fish swim through it in turn, like children with a hoop." },
      },
      actions = {
        { "Go down as far as your knees", say "Three steps. The water is cold and perfectly still and holds your legs like a hand. You feel with one boot for the fourth step, and the fifth. They go on. They are worn in the middle. People used to come up this way with dry feet." },
      } },
    { name = "the cistern's echo",
      description = "Clap, and the clap goes round the columns nine times before it tires. The dredgers say that if you listen to the end you can hear which arch it leaves by.",
      actions = {
        { "Clap, and listen to the end", say "Nine times round, each fainter. And then it does not die. It goes: out through a low arch on the far side, downward, quite briskly, as if it were expected somewhere." },
      } },
    { name = "a dredgers' notice board",
      description = "A plank nailed to a column, with papers under a slate to keep them from the damp.",
      things = {
        { name = "the tariff", description = "{i}Boots, each: one farthing. Boots, pair: a penny, for the rarity. Rings: tell nobody, see Mott.{/}" },
        { name = "a notice in a very small hand", description = "Pinned low down, with a fish bone. {i}PARDON. One of your nets is across our chimney. No hurry.{/} The dredgers take it for a joke by the mudlark. The mudlark cannot write." },
      } },
    { name = "a conduit mouth, dry",
      description = "High in the east wall, above the tide marks, a stone spout carved as a lion's mouth. It has not run in living memory. The dredgers hang their coats on its lower jaw.",
      things = {
        { name = "an inscription over it", description = "{i}FROM THE KING'S SPRING AT ERSTWHILE, BY HIS GIFT.{/} The cistern was once fed from the old capital, seven miles off, by a pipe. Somebody at the far end turned it into a fountain and a fishpond and forgot that there was a town on the other end." },
        { name = "a green stain below", description = "Where the water used to fall. It is still damp. Once a year or so, the dredgers say, the lion coughs up a cupful, warm, with a walnut husk in it." },
      },
      actions = {
        { "Put your ear to the lion", say "A long way off, down seven miles of stone pipe, something is going on. Water, and under the water a murmur that rises and stops, rises and stops. If you did not know better you would say it was a crowd a great way off, being pleased about something at regular intervals." },
      } },
    { name = "a drowned handcart",
      description = "On its side under a yard of black water by the stair, with one wheel in the air. It is stencilled {i}REMOVAL 31{/}. It went through a street grating in the dark, ninety years ago, with part of a king's dinner service on it, and the dredgers are still finding forks." },
  },

  exits = {
    { to = "great_drain", description = "Back up the tunnel, towards brick and rats and ordinary dark." },
    { to = "buried_shrine", label = "The bronze door",
      description = "Through the bronze door, where the hollow at its centre is the size of a seal.",
      requires = item "signet_ring",
      locked = "a bronze door with a seal-shaped hollow" },
  },
}
