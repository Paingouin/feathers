-- Things carried out of the Further Down. One ticket, and four artifacts:
-- mighty, collected, and never used.

item {
  id = "fd_claim_ticket",
  name = "a claim ticket",
  icon = "▫",
  description = "A square of grey card, no bigger than a postage stamp, written in a hand so small it has had to be polite about it. {i}Lost Property Market. One article, the bearer's. Number 1.{/} You would like to know how you came to be first in a queue you never joined.",
  things = {
    { name = "the back of the ticket",
      description = "{i}Articles not claimed within one lifetime become the property of the Shelf.{/} Underneath, in pencil: {i}no hurry.{/}" },
  },
  actions = {
    { "Try to remember what you lost", say "A glove. A coin or two. An afternoon in the summer you were nine. Most of your sense of direction. You cannot tell which of them is number one, and you find you badly want to." },
  },
}

item {
  id = "fd_kept_noon",
  name = "the Lamp of the Kept Noon",
  icon = "☼",
  description = "A lantern of horn and black iron with its shutter soldered closed. The Murmurs carried it down with them when they left the surface, and in it one whole noon, the last they saw. Open the shutter and it would be broad midday for a mile in every direction, underground, once. They have saved it for eleven hundred years against a great enough need, and so far every need has turned out, on reflection, to be manageable.",
  things = {
    { name = "the shutter",
      description = "Soldered along all four edges, neatly, by somebody very small with a very steady hand. A line of gold shows round it, thinner than a hair. That is the noon. It is leaning on the door." },
    { name = "the handle",
      description = "Warm, as a windowsill is warm. There are flowers engraved on it, done from memory, and the memory was beginning to go: they have too many petals." },
  },
  actions = {
    { "Hold it to your cheek", say "Sun. Not a great deal of it, the amount that comes through a shut eyelid. You stand with your eyes closed in a cave and are, for a breath or two, lying in a field." },
    { "Try the shutter", say "You put a thumbnail to the solder and take it away again. It is not yours to spend, and there is only the one." },
  },
}

item {
  id = "fd_finding_needle",
  name = "the Finding Needle",
  icon = "↗",
  description = "The needle out of the haystack. A plain steel needle on a thread: let it hang, and it turns and points at whatever you have lost, through rock, across water, however long ago. Kings sent armies after it. It is the most thoroughly lost object in history, for the simple reason that nobody had a needle to find it with.",
  things = {
    { name = "the thread",
      description = "Red silk, knotted at the end by someone with a system. It never tangles. It finds its own end." },
    { name = "the eye",
      description = "Look through it and things appear a little nearer than they are. Only the lost ones." },
  },
  actions = {
    { "Let it hang", say "It swings once and steadies, pointing up and a little to the left, through a mile of rock, at a field outside a village where you dropped a glove when you were six. You are astonished. Then it trembles, and tries to point at everything else you have ever lost, all at once, and spins. You put it away. You had no idea there was so much." },
  },
}

item {
  id = "fd_aegis",
  name = "the Aegis Provisional",
  icon = "◘",
  description = "A round shield of grey metal that nobody has been able to name, without a scratch on it. It turns any blow whatever: sword, spell, falling masonry, harsh words. It was dug up by the workmen who built the Dungeon of Dire Peril and made the Grand Prize, to be awarded to the first adventurer to complete the course. There has not been a first adventurer. It is, strictly, still not yours.",
  things = {
    { name = "the rosette",
      description = "Pinned to the rim: gold ribbon, {i}GRAND PRIZE{/}, and a card with a line for the winner's name. Somebody has filled it in for you, in bone-white chalk, and added {i}(provisional){/}." },
    { name = "the face of the shield",
      description = "Quite smooth. Dust will not settle on it. You breathe on it and your breath goes round." },
  },
  actions = {
    { "Raise it", say "You get it up on your arm and brace. Nothing attacks you. Nothing has ever attacked you. You feel, behind the mightiest shield in the world, slightly overdressed." },
    { "Flick it", say "Your finger stops a hair short of the metal and will not go further. The shield has not noticed. It is a matter of principle." },
  },
}

item {
  id = "fd_first_oar",
  name = "the Oar of the First Crossing",
  icon = "♆",
  description = "An oar of black wood, taller than you, the blade worn to the shape of a long leaf. With it somebody rowed the first boat across the first water, before there was a word for the other side. One stroke of it will carry any boat to any shore there is. It has been standing on an island in a lake with no far side, where even it had to admit there was nothing to be done.",
  things = {
    { name = "the grip",
      description = "Two hollows worn in the wood by two hands, set wide apart. Yours do not reach both. Whoever rowed with this was larger than you, or was not in a hurry and did it one hand at a time." },
    { name = "the blade",
      description = "Always wet, a little, and always cold. The drops run to the tip and hang there and do not fall. They would like to know which way." },
  },
  actions = {
    { "Take a stroke in the air", say "You sweep it once through nothing. The ground gives a small lurch, the way a boat does as it leaves the mooring, and then remembers that it is ground. You stand very still until it is quite sure." },
  },
}
