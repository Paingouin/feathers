-- Artifacts found on the Saltwick coast. Mighty, storied, and of no practical use to you.

item {
  id = "compass_second_opinions",
  name = "the Compass of Second Opinions",
  icon = "¤",
  description = "A sea compass in a case of gold and whalebone, made for the owner of the {i}Unsinkable{/}. The needle does not point north. It points, firmly, at wherever you ought to be going instead. {gold}Three fleets were saved by it, all by captains who looked at it and then did the opposite of what they had planned.{/} Its last owner never took it out of the safe.",
  things = {
    { name = "the needle", description = "Blue steel, and restless. It swings off whatever you are facing and settles somewhere else, with the air of a relative at a wedding." },
    { name = "the card",
      description = "Where the points of the compass should be, there are words in fine black script: {i}Really? Still? Not That Way. Ask Someone.{/}",
      things = {
        { name = "where north should be", description = "{i}Home{/}, very small, with a question mark." },
      } },
    { name = "the lid", description = "Engraved inside: {i}To a man who is never wrong, from his wife.{/}" },
  },
  actions = {
    { "Follow it", say "You turn to face where it points. It swings away and points somewhere else. You turn again. After a full circle you understand that it disapproves of you in every direction, and that this is the most honest instrument you will ever hold." },
    { "Shake it", say "The needle spins, steadies, and points straight up at your face." },
  },
}

item {
  id = "sea_kings_horn",
  name = "the Horn of the Sea-King",
  icon = "∂",
  description = "A horn made from one great shell, coiled three times, bound with green bronze and as long as your arm. The old stories say that whoever sounded it could call home every ship that ever left harbour, the lost ones included. {gold}It was blown once. The quay at Saltwick was built that year, to have somewhere to put them all.{/}",
  things = {
    { name = "the mouthpiece", description = "Bronze, worn to a shine, and far too wide for a mouth like yours. Whoever blew this had a bigger chest, or a better reason." },
    { name = "the bronze bands",
      description = "Three, green with age, each cast with a line of ships no bigger than barley grains.",
      things = {
        { name = "the smallest ship", description = "On the last band, at the very end, sailing the other way. Every fleet has one." },
      } },
    { name = "the inside of the shell", description = "Pink, and smooth, and going round out of sight. You hold it to your ear. For once it is the sea in there, and it sounds as if it has been waiting." },
  },
  actions = {
    { "Blow it", say "You fill your chest and give it everything. What comes out is a small wet {i}pfft{/}. The horn takes a gale, or a king, and you are neither. A gull on the roof laughs, and it is hard to blame it." },
    { "Hum into it", say "Your hum goes in and round the three coils and comes out the far end as a note so deep that your boots feel it first. Out at sea, something answers, very low, once. You put the horn away quite carefully." },
  },
}
