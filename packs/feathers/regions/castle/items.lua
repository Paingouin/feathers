-- The artifacts of Castle Stillstanding: mighty things of the old kings. They can be
-- found, carried and looked into. Not one of them can be put to any use.

item {
  id = "sword_wilful",
  name = "Wilful, the first king's sword",
  icon = "†",
  description = "A great plain sword, grey as rain, with a grip of black leather worn to the shape of one particular hand. For forty generations it could not be pulled from its block by any knight in the kingdom. It came out for you when you stopped pulling. It is said that no army can stand against the one who bears it. It will not, you have found, leave the scabbard for anything that you actually want.",
  things = {
    { name = "the blade",
      description = "No notch, no rust, no ornament. One line of small letters runs down the fuller.",
      things = {
        { name = "the letters", description = "{i}I AM NOT FOR THAT.{/} It does not say what. You have the feeling that it is a standing answer." },
      } },
    { name = "the grip", description = "It fits your hand badly. It fitted a hill farmer who was made king against his wishes, and it has not seen fit to adjust." },
    { name = "the pommel", description = "A disc of iron, with a sheepdog scratched on it by somebody who was not an artist and loved the dog." },
  },
  actions = {
    { "Draw it", say "You pull. It stays in. You pull harder, and it stays in harder. You remember how this goes and let your hand drop, and the sword slides out an inch on its own, to show that it can, and goes back." },
    { "Strike a pose", say "You stand as the statues stand, one hand on the hilt. A great stillness comes over you. It is the sword. It is waiting for you to finish." },
  },
}

item {
  id = "golden_fish",
  name = "the Carp of King Osbert",
  icon = "∝",
  description = "A carp in solid gold, two feet from nose to tail, so finely made that you keep expecting it to be wet. Forty years King Osbert the Glad fished a moat with no fish in it. On the last day of his life he pulled out this. It has been on his banner, his armour, his brass and his tomb. The scholars of the kingdom have written nine books on what it signifies. It signifies that he caught a fish.",
  things = {
    { name = "the scales", description = "Each one separate, each one cut. They lie the right way. If you stroke it nose to tail it is smooth, and tail to nose it catches, like the real thing." },
    { name = "the eye", description = "A bead of black stone. It has the flat, sideways, disobliging look of every carp that was ever landed, and you would swear that it has just been looking at something else." },
    { name = "the mouth", description = "Open. Inside, far back, a tiny gold hook is lodged in the lip, with an inch of real horsehair line still on it. So he did catch it. Whatever it was when he caught it." },
  },
  actions = {
    { "Hold it up by the tail", say "It hangs there, two feet of gold, and you find that you are grinning. You understand King Osbert completely. You want very much to show it to somebody." },
    { "Put it in water", say "You lower it into the nearest puddle, feeling foolish. It sinks. It lies on the bottom. You could not say afterwards that it moved, and you could not say that it had not turned to face upstream." },
  },
}

item {
  id = "cup_plenty",
  name = "the Cup of Plenty",
  icon = "u",
  description = "A herdsman's drinking horn, cut short and footed in worn silver. It is full of water. It has been full of water for six hundred years, through droughts, sieges and one determined attempt by a boy prince with a bucket. He who holds it shall never thirst. The water is lukewarm and tastes of horn.",
  things = {
    { name = "the water", description = "Clear to the bottom. You can pour it out for an hour and the level does not move. A kingdom could be watered from this cup, by a king willing to stand and pour. There has not been one." },
    { name = "the silver foot", description = "Engraved, small: {i}For the house that took me in. It is all I have. I am sorry about the taste.{/}" },
    { name = "the rim", description = "Chipped in one place, by a tooth. Six centuries of kings have each tried it exactly once." },
  },
  actions = {
    { "Drink", say "Lukewarm. Horn. You are not thirsty any more, and you were not very thirsty before. As miracles go it is entirely reliable, which may be why nobody tells stories about it." },
    { "Pour it out", say "You turn it upside down and count to a hundred. Your boots are soaked. You turn it up again. It is full. You feel that you have been patiently outwaited by a cup." },
  },
}

item {
  id = "kingdom_key",
  name = "the Key of the Kingdom",
  icon = "⌐",
  description = "A key of gold as long as your forearm, with a bow in the shape of a crown and wards cut as fine as a small city. Every charter speaks of it. Every king is handed it at his crowning and told that it opens the kingdom. It was then filed, under K. In six hundred years nobody has found the lock.",
  things = {
    { name = "the wards", description = "Streets, squares, a wall with gates in it, all in gold the thickness of a fingernail. If you look closely there is a market, and in the market a dot that could be a fountain." },
    { name = "the bow", description = "A crown with eight points and no arches. Plain, heavy, old. It is not the crown in the Jewel House. It is the one that used to be." },
    { name = "the label", description = "On a silk string: {i}Key, Kingdom, of the. 1. Lock not held. See also: Lock (not held).{/}" },
  },
  actions = {
    { "Try it in something", say "You offer it to the nearest keyhole you can think of. It is the wrong size, by a factor of about nine. It is the wrong size for every door you have ever seen. Whatever it opens is larger than a door, or is not one." },
    { "Turn it in the air", say "You hold it out and turn it, as a herald would. Nothing opens. You feel sure that somewhere a clerk has just made a note of the attempt." },
  },
}

item {
  id = "old_crown",
  name = "the Standing Crown",
  icon = "♔",
  description = "A band of dull hammered gold three fingers wide, with eight rough stones and nothing else. No arches, no velvet, no pearls. It was made for the first king from what the country could spare, and worn by every king after him until Godric the Careful took it out of use and put a lighter one in its place. It is said that whoever wears it cannot be made to give ground. Nobody adds that it weighs as much as a bucket of nails.",
  things = {
    { name = "the eight stones", description = "River pebbles, most of them: a red one, a green one, one with a white band. One from each of the eight valleys that agreed to have a king. They were not chosen for their value. Somebody from each valley walked in and put one on the table." },
    { name = "the hammer marks", description = "You can count the blows. The smith was a farrier, and the inside of the band still has, very faintly, the curve of a shoe." },
    { name = "the inside of the band", description = "Worn bright by forty foreheads, and dented, at the front, where one of them walked into the portcullis." },
  },
  actions = {
    { "Try it on", say "It comes down over your ears and rests on your nose. It is astonishingly heavy. You stand quite still under it, since there is no other way to stand, and you begin to see how the castle got its name." },
    { "Polish it", say "You rub a stone with your sleeve. It is a pebble. It stays a pebble. It is somebody's pebble from somebody's valley, and you put the sleeve away." },
  },
}
