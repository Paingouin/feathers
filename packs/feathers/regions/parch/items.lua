-- Things carried out of the Parch: a bag of dates that does not last, and four artifacts
-- that nobody, least of all you, will ever get any use out of.

item {
  id = "pa_dates",
  name = "a bag of dates",
  icon = "▪",
  description = "A twist of palm leaf with nine dates in it, sticky, the colour of good furniture. The cook of the Long Wait counted them in front of you. She counted them twice.",
  things = {
    { name = "the best date", description = "Fat and split and shining. You were told which one it is. You were told who it is for, and that it is not you." },
    { name = "the palm leaf", description = "Folded with one hand in a way that you could not manage with two. It will not come undone until it is meant to." },
  },
  actions = {
    { "Eat one", say "You eat the smallest. It tastes like the end of a long day being forgiven. You do not eat a second. Somewhere in the yard a camel has been counting too." },
  },
}

item {
  id = "pa_last_sum",
  name = "the Abacus of the Last Sum",
  icon = "♦",
  description = "The counting frame of King Tot the Exact: ten rods of black wood, with beads of gold on nine of them and one bead of plain baked clay on the tenth. With it he costed a kingdom to the last fig. It is said that whoever moves the clay bead will know what everything comes to. It will not move. You have tried with your thumb, which is all the force the legends mention.",
  things = {
    { name = "the gold beads", description = "Ninety of them, worn to the shape of his fingertips. They slide as though the rods were oiled yesterday. They add up. You check them against your fingers and they are right and your fingers are wrong." },
    { name = "the clay bead", description = "Thumb sized, the red of a flower pot, with a thumbprint baked into it that is smaller than yours. It sits at the bottom of the tenth rod and will not slide, for you or for anybody. It is not stuck. It is not time." },
    { name = "the frame", description = "Cut along the top in the close square script of the Parch: {i}Carried forward.{/}" },
  },
  actions = {
    { "Work out what you are worth", say "You set out your one copper, your boots, and your prospects. The gold beads click along the rods of their own accord and stop. You read the total. Then you read it again, with the frame the other way up, and like it no better." },
  },
}

item {
  id = "pa_unspent_wish",
  name = "the Unspent Wish",
  icon = "♦",
  description = "A stoppered jar of blue glass no bigger than an egg, and in it a light the size of a lentil that goes round and round like a fish that has been promised a pond. It is the third wish of somebody who made two and then, at the last moment, thought better of it. Nobody has thought better of a third wish before or since. It cannot be used by you: it is theirs, and they are not finished thinking.",
  things = {
    { name = "the light", description = "Gold, then green, then gold. When you hold the jar near something you want, it goes to that side of the glass and presses its nose there. It has done this, in your pack, in the direction of every pie shop since." },
    { name = "the stopper", description = "Cork, sealed with blue wax, and in the wax the print of a very large thumb. The genie sealed it himself. He says it is the only job he was ever proud of." },
    { name = "a tag", description = "Brown paper on a thread: {i}1 (one) wish, third of three. Held pending instructions. Do not shake.{/}" },
  },
  actions = {
    { "Wish on it", say "You wish, hard, for a horse. The light stops going round. It looks at you, as far as a lentil can. Then it goes on going round. It was polite of it to stop." },
  },
}

item {
  id = "pa_windproof_page",
  name = "the Windproof Page",
  icon = "♦",
  description = "A square of sand, a hand across and a finger thick, that holds together like a slate and is not stuck with anything. One line is written in it with a fingertip. It is the only page of the Library of Sand that the wind went round. Scholars have crossed the Parch to learn what was worth keeping. It is in a hand so plain that you can read it, and so you are the wrong person to be holding it.",
  things = {
    { name = "the line", description = "{i}I was here and it was a good day.{/} That is all. There is no name. The librarians say that every other book in the place was cleverer, and that the wind is no judge of cleverness." },
    { name = "the edges", description = "Rounded, like a pebble's. A few grains come away on your thumb. You look, and the page is no smaller. You stop doing it anyway." },
    { name = "the back", description = "Smooth, and faintly warm on the coldest night, like a wall that has had the sun on it all day." },
  },
  actions = {
    { "Blow on it", say "You blow, gently, and then not gently. Not a grain moves. A little wind gets up out of nowhere, goes round you once, and blows your hair into your eyes. You are being told." },
  },
}

item {
  id = "pa_mirage_flask",
  name = "the Flask of As Advertised",
  icon = "♦",
  description = "A traveller's flask of beaten silver, cool to hold, and full to the stopper with water drawn from the mirage itself: the lake that every thirsty soul in the Parch has seen and none has reached. It is the finest water in the world. You can hear it. You can see it move. You can tip the flask up and nothing whatever comes out, since it is exactly as real as it looked.",
  things = {
    { name = "the water", description = "Through the neck you can see it: clear, cold, catching a light from a sky that is not the one over you. There is a palm tree reflected in it. There is no palm tree." },
    { name = "the silver", description = "Dented by a hundred years of saddles. Beads of wet stand on the outside of it at noon. They are real. You have licked one. It is the nearest anybody has come." },
    { name = "the stopper", description = "Horn, on a chain. Stamped on top, very small: {i}Contents as described.{/}" },
  },
  actions = {
    { "Drink from it", say "You tip it right up and wait with your mouth open. You hear it gurgle. Your throat goes cool, as if you had drunk. You have not drunk. You are thirstier, but in a more hopeful way." },
  },
}
