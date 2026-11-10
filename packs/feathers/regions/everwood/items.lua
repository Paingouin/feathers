-- Things of the Everwood. All three are mighty, and none of them is any use to you.

item {
  id = "pending_acorn",
  name = "the Pending Acorn",
  icon = "ο",
  description = "One acorn, brown, with its cup on. It lay in the petition bowl of the Court of Leaves for longer than Aldmoor has had a wall. Every elf knows what it is: the seed of the forest that comes after this one. Planted, it would be an oak in a year and a wood in ten, and the Everwood would have a neighbour. It has been awaiting a decision.",
  things = {
    { name = "the cup of the acorn", description = "It fits so well that you cannot get a fingernail under it. Something in there is in no hurry and has made itself comfortable." },
    { name = "a hairline crack", description = "Down one side, very fine. It was not there in the bowl. You have been carrying it in a warm pocket, and it has taken that as a sign of interest." },
  },
  actions = {
    { "Hold it to your ear", say "Creaking. Very faint, very slow, the sound a floor makes in a house where somebody upstairs has just got out of bed." },
    { "Look for somewhere to plant it", say "You scuff the ground with a boot. The acorn gets heavier in your hand, noticeably, until you stop. Not here, then. It has opinions, and three thousand years of practice at waiting for a better offer." },
  },
}

item {
  id = "horn_of_evening",
  name = "the Horn of Evening",
  icon = "∂",
  description = "A hunting horn of grey horn bound in silver gone black. The elves held the afternoon at four o'clock, and this is how it is let go: one note, and the sun in the glade moves on, and it is dusk, and then it is every hour they have been owed since. Nobody has ever blown it. It was given to you so that it would be a long way off.",
  things = {
    { name = "the mouthpiece", description = "Stopped with a plug of beeswax, and the wax sealed with four different seals, one for each Lady who thought about it and decided against." },
    { name = "the silver bands", description = "Engraved with a sun at each of its heights, all round the horn. At the place where four o'clock should be, somebody has worn the silver smooth with a thumb." },
  },
  actions = {
    { "Blow it", say "You get it as far as your chin. Then you think of forty elves on a lawn getting four thousand years of evenings in one go, with no time to change. You lower it. The wax plug was only ever a courtesy." },
    { "Shake it", say "Something moves inside, dry and light. It is either a dead moth or the first second of five o'clock." },
  },
}

item {
  id = "parting_comb",
  name = "the Comb That Parts",
  icon = "Ш",
  description = "A comb of pale horn with nine long teeth. It parts whatever it is drawn through: hair, a crowd, a hedge, an argument, and on one occasion in the songs a river, to let an army over. It came to you out of a basket of things found in pockets on wash day. The elves have been using it on a fringe.",
  things = {
    { name = "the nine teeth", description = "Not one is chipped. Between the fourth and fifth there is a single hair, silver, about a yard long. You leave it. It seems to hold a rank." },
    { name = "the spine of the comb", description = "Letters in the Old Tongue, cut small. The laundress read them for you: {i}Left or right. Choose before you start.{/}" },
  },
  actions = {
    { "Comb your hair", say "It falls into a parting so straight that you can feel the draught along it. For the rest of the day people step aside for you without knowing why." },
    { "Draw it through the air", say "The air goes two ways. A gnat that had been coming towards you finds itself, to its surprise, going round." },
  },
}
