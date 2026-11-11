-- Things found in the Loose Ends. One working object, and four artifacts:
-- mighty, famous, and no use whatever to an adventurer, who may carry them about.

item {
  id = "le_line_peg",
  name = "a travelling peg",
  icon = "∧",
  description = "A clothes peg of split ash the length of your forearm, with a leather loop to put your wrist through. In Tether this is how you go visiting. You clip it over a line, you lift your feet, and you find out where the line goes.",
  things = {
    { name = "the spring", description = "There is none. It is the old kind, one piece of wood with a slit. It has held a wet blanket in a gale and it regards you as a lighter job." },
    { name = "a name burnt in the side", description = "{i}PEGG.{/} All of hers say it. It is the reason she gets them back." },
  },
  actions = {
    { "Practise", say "You clip it to your own belt and lift your feet. You sit down hard. It needs a line, and a line needs somewhere to go." },
  },
}

item {
  id = "le_wind_kite",
  name = "the Kite That Flies the Wind",
  icon = "◊",
  description = "A plain diamond of grey silk on two crossed canes, with a tail of knotted rag. The first kite maker of the Loose Ends made it on a still day, out of temper, and put it up anyway. {magic}It does not need a wind. Where it goes, the wind follows, and it will pull a whole sky round after it on forty yards of twine.{/} It got away from her within the hour. The weather has not been the same since, and the Weather Office will tell you so.",
  things = {
    { name = "the tail", description = "Seven rags, seven knots. Each rag is from a different coat. None of the coats was hers, and she is remembered for that also." },
    { name = "the twine", description = "Forty yards, wound on a stick, with the end chewed through. Something on the ground held on with its teeth for as long as it could." },
    { name = "a patch", description = "One neat darn in the silk, in blue thread. Somebody found it once, mended it, and let it go again. You think well of them." },
  },
  actions = {
    { "Hold it up", say "There is no wind. You hold the kite up at arm's length, and then there is one, from behind you, eager, like a dog that has heard its lead taken down. Your hat leaves. You fold the kite quickly and the air sits again." },
    { "Pay out a yard of twine", say "One yard. The kite lifts off your hand and hangs there, and every cloud you can see turns very slightly to face it. You wind the yard back in. It is not the sort of attention you are used to." },
  },
}

item {
  id = "le_kept_day",
  name = "the Day Kept Back",
  icon = "☼",
  description = "A stoneware jar the size of a loaf, corked and waxed, with a paper label gone brown. The Weather Office has always held one day in reserve, against need: a whole fine day, dawn to dusk, never issued. {magic}Whoever draws the cork will have it, wherever they stand, and so will everyone for thirty miles round.{/} There have been floods, and coronations, and one very bad harvest. Each time the Clerk of the day went down to the store, looked at the jar, and decided it was not yet bad enough.",
  things = {
    { name = "the label", description = "{i}One (1) day, fine, light airs from the south-west. Best quality. NOT TO BE ISSUED without the signatures of three Clerks.{/} There have never been three Clerks at one time. The Office believes this was the intention." },
    { name = "the warmth of it", description = "The jar is as warm as a wall the sun has been on. It was put by in the afternoon." },
    { name = "a sound inside", description = "If you hold it to your ear there is a field in there, with bees, a long way off. And somebody laughing, further off than the bees." },
  },
  actions = {
    { "Think about opening it", say "You think of every wet march, every night under a hedge. You have earned a fine day. Then you think that somebody, somewhere down the years, is going to need it more than a person with damp socks, and your thumb comes off the wax. You are annoyed at how little time that took." },
    { "Warm your hands on it", say "It takes the ache out of your knuckles. That much the Office cannot object to. It is leakage." },
  },
}

item {
  id = "le_upward_plumb",
  name = "the Plumb Line That Points Up",
  icon = "↑",
  description = "A brass bob on a braided cord. Let it go and it rises to the end of the cord and stands there, taut, pointing at the sky. The masons who built the first houses on the Loose Ends had it made so that their walls would be true to what held them. {magic}It points at whatever is keeping a thing where it is.{/} Down on the ground you suppose it would point at the ground. You would like to know what it points at up here, and so would the people who live under it.",
  things = {
    { name = "the bob", description = "Brass, the shape of a pear, hollow by the sound. Whatever is in it wants to be higher than it is." },
    { name = "the cord", description = "Braided of grey hair, three strands. It has been knotted short twice. Somebody gave it too much line, on two occasions, and had to climb for it." },
    { name = "the direction", description = "Not quite straight up. A little east of up. You check it against a doorpost, and the doorpost agrees with the bob, which is no help." },
  },
  actions = {
    { "Let it go", say "It goes up to the length of the cord and stops, pulling like a small fish. It does not swing. It has picked a place in the sky and it is pointing at it. You look along the cord. There is only blue there, and you look for some time." },
    { "Hold it over your head", say "It stands on end above your hand, perfectly still. For a moment you have the clear impression of being hung up, tidily, on a hook, by someone who meant to come back for you." },
  },
}

item {
  id = "le_star_pin",
  name = "the Pin of the Fixed Star",
  icon = "†",
  description = "A silver pin as long as a finger, with a head of clear glass. In the oldest chart of the northern sky there is one pinhole, exactly at the pole, and this is the pin that made it. {magic}The sky turns round one star, and the astronomers of the Loose Ends say the star stays put because it was pinned.{/} The pin came out of the chart four hundred years ago. The star has not moved yet. Nobody up here cares to be the one who checks twice in a night.",
  things = {
    { name = "the glass head", description = "There is a point of light in it. It is not a reflection; you have tried it in your pocket. It is very small and a long way in." },
    { name = "the shank", description = "Bent, a very little, near the tip. It was pushed through something harder than vellum." },
    { name = "the cold of it", description = "It is cold as the outside of a window in January. It never warms, in the hand or anywhere else." },
  },
  actions = {
    { "Stick it in your lapel", say "You do. For the rest of the evening the room seems to turn very slowly round you, and people keep asking you the way. You take it out before you start to believe them." },
    { "Look into the head", say "One point of light, steady. Round it, if you hold your breath, the faintest wheeling of others. You are holding the middle of something. You put it away point down, with great care, in a cork." },
  },
}
