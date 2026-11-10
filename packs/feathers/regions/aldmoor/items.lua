-- Things found in Aldmoor. One is a key. The others are artifacts: mighty, legendary, and of no
-- practical use to an adventurer whatsoever.

item {
  id = "overdue_book",
  name = "a library book, very overdue",
  icon = "▯",
  description = "A plain grey volume with a Collegium shelf mark on the spine and a slip gummed inside the cover. The last date stamped on the slip is thirty-one years old. The book is warm, as if it had been held a great deal.",
  things = {
    { name = "the title page", description = "{i}On the Returning of Things{/}. Mr Pell says he never got past the title. It seemed to be looking at him." },
    { name = "the date slip", description = "A column of stamps, a week apart, in violet. Then one, and then thirty-one years of nothing, and you can feel the nothing leaning on the page." },
  },
  actions = {
    { "Open it", say "You read a paragraph. It is about a man who borrows a ladder. You shut it, feeling obscurely that you owe somebody something." },
  },
}

item {
  id = "archmage_staff",
  name = "the Staff of Orrin Skybreaker",
  icon = "╽",
  description = "Six feet of black thornwood with a knot at the top the size of a fist. With this, Orrin Skybreaker parted the Grumbles to let his army through, and then, losing his temper, parted the army. For the last ninety years it has propped open a shop window.",
  things = {
    { name = "the knot", description = "If you look into the grain it goes on further than the wood does. You stop looking." },
    { name = "a notch near the foot", description = "Worn by the window sash. Ninety years of weather on one side only." },
    { name = "a price tag", description = "{i}Window prop. Not for sale. Do not point.{/}" },
  },
  actions = {
    { "Brandish it", say "You raise it over your head. A long way off, over the mountains, there is one roll of thunder from a clear sky. It is surely unrelated. You bring it down slowly and carry it, from then on, pointing at the ground." },
    { "Lean on it", say "It takes your weight without comment. It has held up worse." },
  },
}

item {
  id = "iron_gauntlet",
  name = "the Left Hand of Maud Ironhand",
  icon = "♠",
  description = "A gauntlet of blue-black steel, left-handed, articulated down to the last knuckle. Queen Maud wore it at the Battle of the Three Fords and was seen to crush a helmet in it like an egg. Somebody handed it in at the Watch House forty years ago as {i}glove, one{/}.",
  things = {
    { name = "the lining", description = "Red silk, worn through at the thumb. A name tape is sewn inside: {i}M. REGINA{/}. Her mother made her label everything." },
    { name = "the lost property ticket", description = "Tied to the little finger with string: {i}No. 7. Glove (heavy). Found in a hedge.{/}" },
  },
  actions = {
    { "Try it on", say "It closes on your hand by itself, gently, one finger at a time, and holds. You make a fist. A cobble by your foot cracks across, though you were nowhere near it. You take the glove off using mostly your teeth." },
  },
}

item {
  id = "saints_hand",
  name = "the Right Hand of Saint Wobble",
  icon = "☞",
  description = "A small brown hand in a silver case with a crystal lid. Saint Wobble blessed the foundations of Aldmoor with it, and they have not moved since, although everything on top of them has. It is the only genuine relic on the market, which is why nobody would buy it: it spoiled the set.",
  things = {
    { name = "the silver case", description = "Engraved with the saint's miracles: the Steadying of the Bridge, the Jelly That Stood, and the Bishop Who Stopped Mid-Sentence." },
    { name = "the forefinger", description = "Raised, in blessing. Whichever way you hold the case, it is pointing at you." },
  },
  actions = {
    { "Ask for a blessing", say "The finger does not move. But for a moment the ground under your boots is steadier than ground usually is, as if somebody had put a hand flat on it." },
  },
}
