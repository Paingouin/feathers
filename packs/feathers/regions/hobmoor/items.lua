-- Things of Hobmoor. The splinter is a key. The other three are mighty, and no use at all.

item {
  id = "star_splinter",
  name = "a splinter of the star",
  icon = "✦",
  description = "A chip of black iron the size of your thumb, glossy on one face and pitted on the other. It is warm and has stayed warm. It weighs about what a horseshoe does, which is wrong for its size, and if you close your hand on it you can feel one low note going up your arm.",
  things = {
    { name = "the glossy face", description = "It melted, coming down, and set again smooth. You can see yourself in it, small and upside down, with a great deal of sky behind you." },
  },
  actions = {
    { "Hold it to your ear", say "The same note as the star, an octave or two up, and behind it a rushing, like a shell that has been somewhere worse than the sea." },
    { "Drop it", say "It lands point down and stands there in the turf, quivering. You have the impression that it would have liked further to go." },
  },
}

item {
  id = "glass_turnip",
  name = "the Turnip of Holloway",
  icon = "ó",
  description = "One turnip, whole, with its leaves on, sealed in a lump of green glass that was a field until a star landed in it. It was cooked in an instant by the heat of heaven and has not cooled, nor spoiled, nor will it. Sages would call it a relic of the conjunction of earth and sky. Its grower calls it the one that got away.",
  things = {
    { name = "the turnip inside", description = "Purple at the shoulder, white below, and perfectly done. There is a wisp of steam caught in the glass above it, halfway up, stopped." },
    { name = "a bubble in the glass", description = "Beside the root: a bubble the size of a pea, with eleven-day-old air in it from the moment of the fall. If you turn the lump, the bubble does not move. It is still deciding which way is up." },
  },
  actions = {
    { "Hold it up to the light", say "The whole moor goes green and wobbles. For a moment there is a turnip the size of the Grumbles on the horizon. You lower it, respectfully." },
    { "Try to get at the turnip", say "You knock the glass on a rock. The rock chips. The turnip turns very slightly inside its bubble of heat, as a sleeper turns, and you put it away." },
  },
}

item {
  id = "poker_sword",
  name = "Mournbright, lately a poker",
  icon = "†",
  description = "A longsword of the old kings, with a blade the grey of rain and a name let into it in silver. It cut the chain of the Drowned Gate. It was carried at the Field of Nine Banners. A hero left it at an inn on Hobmoor against a bill for eleven nights and a horse, and for two hundred years it has stirred the fire.",
  things = {
    { name = "the blade", description = "Sooty to the hilt, and under the soot not a notch. The last hand's breadth is blued by two centuries of peat fires. It has taken the temper beautifully and is, the landlady says, the best poker in the county." },
    { name = "the name on the blade", description = "{i}MOURNBRIGHT{/}, in silver, and under it in the same letters: {i}Draw me in need.{/} Under that, scratched with a nail: {i}or if the back log wants turning.{/}" },
    { name = "the hilt", description = "Wound in gold wire, with a sea-green stone in the pommel. There is a loop of string through the guard, for hanging it by the chimney." },
  },
  actions = {
    { "Draw it in need", say "You are not, at this moment, in need. The sword can tell. It lies in your hand like a poker." },
    { "Swing it", say "It sings through the air on a clear high note and takes the top off a thistle forty feet away, which you did not aim at and were not near. You put it back in your belt with both hands. You are an adventurer with a sword now. It is not clear to either of you who is in charge." },
  },
}

item {
  id = "unlanded_pebble",
  name = "the Pebble That Has Not Landed",
  icon = "•",
  description = "A grey pebble off the moor, of no distinction, that you let go of inside a falling star. It never reached the bottom, there being none, and you took it back out of the air. It has kept the habit. It has weight, but the weight does not point down: it points, steadily, at wherever it was going.",
  things = {
    { name = "which way it pulls", description = "You hang it from a thread. It hangs at a slant, away to the north and up, towards a part of the sky you would not otherwise have looked at. At night, if you sight along the thread, there are stars all round the place, and none in it." },
  },
  actions = {
    { "Let go of it", say "It stays where your hand was. Then, very slowly, it begins to drift, not down, and you catch it before it gets ideas. Jem Holloway would charge sixpence for this." },
    { "Put it on a table", say "No table to hand. You try a flat rock. It rests there as a guest sits on the edge of a chair, with its hat on." },
  },
}
