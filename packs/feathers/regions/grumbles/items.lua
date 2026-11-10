-- Things found in the Grumbles. All three are artifacts: mighty, famous, and of no use at all
-- to an adventurer, who may nevertheless carry them about.

item {
  id = "winter_crown",
  name = "the Crown of the Long Winter",
  icon = "♔",
  description = "A circlet of clear ice with nine points, cold enough to hurt through a sleeve. It does not melt. It was left on a seat under the glacier by the winter that stayed nine years, when that winter finally went north. {magic}Whoever wears it may tell the snow where to fall.{/} You have held it near your head twice. Both times your ears voted against.",
  things = {
    { name = "the nine points", description = "One for each year. The fifth is taller than the rest. The old people in Greenhollow still call that one {i}the bad one{/} and will not say more." },
    { name = "the frost on your pack", description = "Wherever you carry it, a neat white ring forms round it. Your sandwiches have never kept so well." },
    { name = "a flaw in the ice", description = "Deep in the band, a single trapped snowflake, the first of that winter. It is still perfect. It has six sides and no intention of landing." },
  },
  actions = {
    { "Try it on", say "You get it to within an inch. Your hair stands up, your eyebrows go white, and a small cloud forms over you and waits for instructions. You put it away. The cloud hangs about for a while, then goes off to find someone more decisive." },
    { "Breathe on it", say "Your breath turns to snow and falls on your boots. The crown does not so much as mist." },
  },
}

item {
  id = "hammer_enough",
  name = "the Hammer Called Enough",
  icon = "╤",
  description = "A short-handled hammer of black iron, plain as a doorstop, with one rune on the head. It belonged to the First Foreman. He struck one blow with it, to open the Longshift, and the mountain split from the Col to the roots. Then he looked at what he had done, said the word on the head, and put it in a glass case. {magic}It has one more blow in it than anyone needs.{/}",
  things = {
    { name = "the rune", description = "It is the dwarf for {i}enough{/}. It is also, you are told, the dwarf for {i}stop{/}, {i}there{/} and {i}now look what you have done{/}. They are a thrifty people with runes." },
    { name = "the handle", description = "Ash, dark with one hand's sweat. There is a second grip worn into it lower down, a small one, where an apprentice was once allowed to hold it and not swing." },
    { name = "the face", description = "Not a mark on it. It has only ever hit one thing, and the thing lost." },
  },
  actions = {
    { "Heft it", say "It weighs what a hammer weighs. That is the alarming part. You had expected it to feel like a mountain, and instead it feels like something you could use by accident." },
    { "Tap something, gently", say "You pick a pebble. You raise the hammer an inch. Under your boots the whole of the Grumbles goes quiet, all five of them, in the manner of people holding their breath. You put the hammer away. The noise starts again, a little faster than before." },
  },
}

item {
  id = "last_word",
  name = "the Last Word",
  icon = "ʊ",
  description = "A small stone jar, stoppered with wax and tied with a cord. The Founder of the Held Tongue talked for forty years without a pause. When the brothers begged him, he said one more word, into this jar, and never spoke again. {magic}Whoever lets it out will have had the last word, on everything, with everyone who hears it.{/} Nobody will have anything to add. It has been kept shut by people who knew what that would be like.",
  things = {
    { name = "the wax", description = "Stamped with a finger laid across a pair of lips. The stamp has been pressed in very hard." },
    { name = "the cord", description = "Knotted forty times, once by each brother of the first house. Some of the knots are plainly vindictive." },
    { name = "the weight of it", description = "It is heavier than an empty jar and lighter than a full one. A word, it turns out, weighs about as much as a plum." },
  },
  actions = {
    { "Hold it to your ear", say "Nothing. Then, very faintly, the sound of somebody drawing breath to go on. You hold it well away from your head after that." },
    { "Think about opening it", say "You think of every argument you have ever lost. The gate sergeant. The goat. You could win all of them at once. Then you think of a kingdom with nothing more to say, and of how much you would miss being answered back, and your thumb comes off the wax." },
  },
}
