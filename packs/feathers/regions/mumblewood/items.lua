-- Artifacts found in the Mumblewood. They are mighty, they are legendary, and there is
-- nothing whatever you can do with them except own them.

item {
  id = "axe_unswung",
  name = "the Axe That Was Never Swung",
  icon = "Ψ",
  description = "A felling axe with a head of dark iron and a haft of pale ash, as long as your leg. It was forged to bring down the whole Mumblewood, and carried in by the best woodcutter in the kingdom. The edge has never touched bark. {gold}It is the sharpest thing you have ever seen, since nothing has ever blunted it.{/}",
  things = {
    { name = "the edge", description = "You hold a hair over it. The hair parts before it arrives. It was not even your hair; it was passing." },
    { name = "the haft",
      description = "Ash, worn dark in two places by a pair of hands that held it for forty years and did nothing else with it.",
      things = {
        { name = "a row of notches", description = "One for every tree he was sent to fell and did not. They go all the way round, and then round again, smaller." },
      } },
    { name = "the maker's mark", description = "A crown, stamped in the iron. Under it, scratched later with a nail: {i}no{/}." },
  },
  actions = {
    { "Swing it", say "You raise it. Every tree within earshot stops mumbling. The axe is very heavy all at once, heavier than iron ought to be, and you find that you have put it down. The mumbling starts again, a little shaken." },
    { "Test the edge", say "You do not. Some part of you that has kept you alive this long takes the decision out of your hands." },
  },
}

item {
  id = "upstream_cup",
  name = "the Upstream Cup",
  icon = "u",
  description = "A plain cup of grey stone, cold, with a rim worn smooth by lips. It is always full to the brim, and the water in it is always moving: up the inside, over the lip, and gone before it reaches your hand. Pilgrims climbed the falls for this. {gold}A kingdom was once offered for it, and declined, on the grounds that the cup would only have poured it away.{/}",
  things = {
    { name = "the water", description = "Clear, quick, and going up. You never see it arrive in the cup. You only ever see it leave." },
    { name = "the base",
      description = "Rough underneath, where it was broken off the rock it grew from. It was not carved. The falls made it, a drop at a time, in the wrong direction.",
      things = {
        { name = "a scratched word", description = "{i}Thirsty?{/} Somebody's joke, eight hundred years old, and still fresh." },
      } },
  },
  actions = {
    { "Drink from it", say "You tip it to your mouth. The water goes up past your lips, over your nose and off your forehead into the air. You are wet from the chin up and exactly as thirsty as before." },
    { "Turn it upside down", say "Now it holds the water perfectly. You stand there with an upside-down cup that is not spilling, and nobody to show." },
  },
}
