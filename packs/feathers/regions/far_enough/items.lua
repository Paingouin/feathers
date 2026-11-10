-- What the adventurer can carry out of Far Enough. Two keys, and four things of great power
-- that are of no use to anybody tall.

item {
  id = "hard_hat",
  name = "a visitor's helmet",
  icon = "∩",
  description = "Iron, riveted, lined with felt, and the largest helmet in Far Enough. It was made for visitors some centuries ago and has waited in a cupboard for one. It sits on the top of your head as an egg cup sits on an egg.",
  things = {
    { name = "the brass plate", description = "Riveted to the brow, in runes and then in letters: {b}VISITOR. PLEASE RETURN TO FRONT.{/}" },
    { name = "the felt lining", description = "Never worn. It still smells of the cupboard, and faintly of pride." },
    { name = "a dent", description = "There isn't one. The Sergeant checked it over before she let it go. She would like it back that way." },
  },
  actions = {
    { "Knock on it", say "A clean, low note. Three dwarves nearby turn to listen, and one of them names the smith." },
    { "Adjust it", say "It can be worn level, or it can be worn so that you can see. You choose seeing. A passing dwarf winces." },
  },
}

item {
  id = "small_pick",
  name = "the apprentice's pick",
  icon = "τ",
  description = "A small pick, the smallest size they make, with an ash handle worn pale where one hand held it. The point is as sharp as the day it went through the last of the rock. It has stood against a wall for a thousand years, a long way down, with evening on it.",
  things = {
    { name = "the handle", description = "Near the head, one rune, burned in with a hot nail by somebody young: it is a name, and a short one." },
    { name = "the point", description = "There is no rock dust on it. There is something else, very fine, that glitters blue when you tilt it. You decide not to wipe it off." },
  },
  actions = {
    { "Heft it", say "It weighs almost nothing. It was the last thing the mountain had between itself and the sky, and it did not take much." },
  },
}

item {
  id = "true_level",
  name = "Ever-True, the level",
  icon = "═",
  description = "A spirit level of black bronze as long as your forearm, with one glass and one bubble. It was made by the rune-smith Odda Coldchisel's great-grandmother to be right, always, about everything, and it is. It cannot be sold. It reads the customer.",
  things = {
    { name = "the bubble", description = "It sits a hair off centre, in your hands. You turn round. It stays a hair off centre, on the same side. It is not measuring the floor." },
    { name = "the runes along the edge", description = "Nine, cut small. A dwarf will read them to you if asked: {i}I do not flatter. Do not ask twice.{/}" },
    { name = "the glass", description = "Ground from one clear crystal. There is no join, no stopper, and no way the bubble could have been put in." },
  },
  actions = {
    { "Lay it on something", say "You try a table, a wall, the ground. Each time the bubble gives its verdict at once, and each time a dwarf in earshot says \"told you\" to another dwarf." },
    { "Ask it about yourself", say "The bubble moves, a very little, toward the middle. You feel that this is the kindest it has been to anyone in four generations, and that you should stop while it lasts." },
  },
}

item {
  id = "perfect_hinge",
  name = "the Hinge",
  icon = "╬",
  description = "An iron hinge the length of your hand, plain, with three knuckles and a pin. It is the one that came out right. A door hung on it cannot be forced, will never squeak, and is said not to shut on a friend. You own no door.",
  things = {
    { name = "the pin", description = "It slides out between two fingers and back with no sound and no play. You do it eleven times. You would do it all day." },
    { name = "the maker's mark", description = "There is none. She said that if she had to sign it, it was not finished." },
    { name = "the play in it", description = "You look for it, as the Hinge Master taught you. There is none of that either. For the first time you can see what he meant about the others." },
  },
  actions = {
    { "Open and shut it", say "It moves as a thought moves. Somewhere in the city a smith looks up from his anvil and does not know why." },
    { "Look for a door to put it on", say "You consider every door you have ever met. None of them deserves it. You begin to understand the trouble with owning the best one of anything." },
  },
}

item {
  id = "pawned_crown",
  name = "the Pawned Crown",
  icon = "♔",
  description = "The crown of the old kings of the tall folk: heavy gold, eight points, a blue stone at the brow. It came under the mountain six hundred years ago on the head of a conqueror and stayed behind against a bar bill. Whoever wears it is rightful king of everything above ground. It has been tried on by every dwarf clerk for six centuries, and none of them wanted the work.",
  things = {
    { name = "the blue stone", description = "The size of a plum, and deep. The dwarves valued it once, for the ledger, and wrote down: {i}one stone, blue, adequate{/}." },
    { name = "the pledge ticket", description = "Tied to one of the points with string. {i}Item: one crown. Against: beer, a great deal. Redeemable on payment. Unredeemed pledges pass to the next of the pledger's kind to sign the book.{/} There is a line for a signature. It is yours now. You have not signed, and it does not seem to matter." },
    { name = "the inside of the band", description = "Worn smooth by the heads of nine kings, and under that, scratched with a knife point: {i}it pinches{/}." },
  },
  actions = {
    { "Try it on", say "You put it on over the helmet, there being nowhere else. For as long as it stays there you are king of everything with a sky over it. It slides off sideways. Nothing up there will ever know." },
    { "Polish it", say "It was polished this morning. It has been polished every morning for six hundred years by people who did not own it. That is the dwarf idea of a pledge." },
  },
}

item {
  id = "mountain_reply",
  name = "the Mountain's Reply",
  icon = "•",
  description = "A grey stone the size of a hen's egg. The oldest grudge in Far Enough is against the mountain, for being heavy, and it has been reviewed and upheld every hundred years. At the nine-hundredth review this fell out of the roof and landed in the middle of the Keeper's desk. It is the only answer the mountain has ever given, and nobody can agree on what it said.",
  things = {
    { name = "the flat side", description = "Broken clean. The grain of the rock runs straight across it and then, at one edge, turns." },
    { name = "the round side", description = "Smooth, as if it had been held a long time before it was let go." },
    { name = "the weight of it", description = "Heavier than a stone that size should be. The Keepers took that for a restatement of the mountain's position." },
  },
  actions = {
    { "Hold it to your ear", say "Nothing. Then you notice that it is a particular nothing, kept up with effort, the quiet of someone large who is not going to be the first to speak." },
    { "Weigh it in your hand", say "Heavy. You find yourself saying sorry to it, without knowing which of you is owed." },
  },
}

item {
  id = "garden_lens",
  name = "the Patient Lens",
  icon = "○",
  description = "A disc of water-clear crystal the size of your palm, in a ring of plain iron. It was not ground. It was grown flat, over four hundred years, in a garden nobody is told about, by a family who weeded round it. Looked through, it shows a thing as it will be when it has finished becoming. It does not show how long that takes.",
  things = {
    { name = "the iron ring", description = "Forge work, old, with one rune inside the band. It is the rune from the label on the crystal that grows sideways: {i}leave her be{/}." },
    { name = "the face of it", description = "No scratch, no bubble, no tool mark. You tilt it and for a moment there is a second, fainter disc inside the first, a little larger. It is still growing." },
    { name = "what it shows of your hand", description = "Your own hand, through the glass. The same hand. Steadier, perhaps, and with a callus or two you have not earned yet. You take it away quickly. Gran Marl did warn you." },
  },
  actions = {
    { "Look at something small", say "You find a seed in the seam of your pocket and hold the lens over it. A tree. All of it, root and crown, standing in the palm of your hand, in a wind you cannot feel. You put the seed back with a great deal more respect." },
    { "Look at yourself", say "You hold it up to your face, and lower it again before it reaches your eye. Not unless you're ready, she said. You are an adventurer who has, so far, almost had an adventure. You would like to have the rest of it first." },
  },
}
