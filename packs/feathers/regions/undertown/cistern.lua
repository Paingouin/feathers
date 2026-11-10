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

  on_enter = { say "For once, you have nothing clever to think." },

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
      } },
    { name = "the bronze door",
      description = "Set in the hall's one solid wall: a door of green bronze, twice your height, without handle, hinge, or keyhole. At its centre is a shallow hollow, round, the size of a seal.",
      variants = {
        { when = item "signet_ring",
          description = "Set in the hall's one solid wall: a door of green bronze, without handle, hinge, or keyhole. At its centre is a shallow hollow, round, the size of a seal. The ring in your pocket has gone colder, and heavier, and you would swear it is pointing." },
      },
      actions = {
        { "Push it", say "You might as well push the town." },
        { "Knock", say "The bronze drinks the sound. Nothing answers. Something, perhaps, listens." },
      } },
  },

  exits = {
    { to = "great_drain", description = "Back up the tunnel, towards brick and rats and ordinary dark." },
    { to = "buried_shrine",
      description = "Through the bronze door, where the hollow at its centre is the size of a seal.",
      requires = item "signet_ring",
      locked = "a bronze door with a seal-shaped hollow" },
  },
}
