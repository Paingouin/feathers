-- The Three Regulations: the market inn, with everything an inn has in it.

space {
  id = "market_inn",
  region = "aldmoor",
  name = "The Three Regulations",
  description = "The inn on the market, named for the three regulations it is licensed to break: noise, hours, and the one about dancing. A long low room with a bar down one side, a fire at the end, and the whole of market day in it, drying off.",
  palette = { bg = "#130f0b", text = "#d8ccb8", dim = "#7a6a58", accent = "#e8a850", border = "#4c3a28" },
  ambience = { flicker { color = "#ffb060", strength = 0.25 }, steam { glyphs = "˙·∙", color = "#6c645a", rate = 0.3 } },

  things = {
    { name = "the bar",
      description = "A single oak plank forty feet long, cut from one tree, and scrubbed white. Everything that matters in Aldmoor has been agreed across it, and most of it was then denied.",
      things = {
        { name = "the landlady",
          icon = "☺",
          description = "Mistress Tolly, who can pull a pint with each hand and settle an argument with her eyebrows. She came with the licence, and the licence is older than the Council.",
          actions = {
            { "Order a drink", say "\"Money?\" You show her your copper. \"That's your gate copper,\" she says. \"I'm not taking a man's gate copper. I've seen where that ends.\" She gives you the slops tray's best, in a cracked mug, for nothing, and you are proud to have it." },
            { "Ask for the news", say "\"King's in a meeting. Tide's the tide. And there's a fellow going about calling himself an adventurer.\" She looks at you. \"They say he's harmless.\"" },
          } },
        { name = "the row of mugs",
          description = "Pewter, on hooks, one for each regular, each with a name scratched on the base.",
          things = {
            { name = "the Sergeant's mug", description = "The largest. There is a tooth mark on the rim. He bites everything." },
            { name = "a mug with no name", description = "It belongs to the man who always sits by the door. He has never given a name. The base says {i}HIM{/}." },
            { name = "the cracked mug", description = "For strangers. It leaks slowly from the bottom, which is how the house makes sure that strangers drink up." },
            { name = "a very small mug", description = "A thimble, on its own hook. For the mouse. Nobody admits to having put it up, and it is always empty by morning." },
          } },
        { name = "the pumps", description = "Three brass handles: {i}Mild{/}, {i}Bitter{/}, and {i}Regulation{/}. Regulation is the strong one. It is the legal maximum, plus what she calls rounding." },
        { name = "the slate", description = "Tabs, in chalk. The Council's is the longest. It is paid every year, in one sum, out of the fines for drunkenness." },
        { name = "the jar of pickled eggs", description = "Cloudy. One egg has been in there since the jar was new and is known as the Alderman. It is not for sale and is spoken to on the way past." },
      } },
    { name = "the fire",
      description = "A hearth you could stable a pony in, with a settle on each side and a dog in front.",
      things = {
        { name = "the dog", description = "A grey lurcher the length of the hearth rug. It belongs to the fire. Landladies come and go.",
          actions = { { "Scratch its ears", say "A leg starts going. It does not wake up. The leg knocks over a carter's pint and nobody says a word: it is the dog's fire." } } },
        { name = "the settle by the fire", description = "The warm seat. It has been occupied by the same family for four generations, in shifts." },
        { name = "a poker", description = "Iron, with a brass knob shaped like a goose's head. You do not touch it." },
        { name = "the mantel", description = "A stopped clock, a stuffed pike, and a cannonball with a note from a bride's family." },
      } },
    { name = "the regulars",
      description = "Market people: carters, stallholders, a clerk hiding from his office.",
      things = {
        { name = "two carters arguing", description = "About the road to Saltwick, and whether it is longer going or coming back. It has gone on for nine years. They walk it together twice a week to check." },
        { name = "the man by the door", description = "He has sat there every day for thirty years, facing the room, saying nothing, with the mug marked {i}HIM{/}. The whole inn is slightly on its best behaviour because of him. He is, in fact, waiting for his wife." },
        { name = "a clerk of the Council", description = "At a corner table behind a pile of forms, with ink on his lip. He is drafting a regulation against the inn. He drafts it here every day because the light is good.",
          actions = { { "Read over his shoulder", say "{i}No establishment shall,{/} it begins, and then there is a ring from a mug, and under the ring, in a looser hand, {i}do too much harm, really.{/}" } } },
        { name = "a fiddler", description = "In the chimney corner, playing the one about the miller's daughter, with the rude verse. This is where it went." },
      } },
    { name = "the dancing",
      description = "A square of floor boards by the fire, worn pale. Dancing is forbidden in Aldmoor under regulation 212, except here, between these four nails.",
      actions = {
        { "Dance", say "You step inside the nails. The fiddler changes key without looking up. You dance badly, and with your whole heart, for about as long as it takes a carter to say \"mind the dog\". It is the most legal thing you have done all week." },
      } },
    { name = "the kitchen",
      description = "Through a half door behind the bar: a range, a table, and a cook who does not come out.",
      things = {
        { name = "the cook", description = "Old Bess, who has made the same stew every day for fifty years and has never tasted it. She goes by the sound." },
        { name = "the stew", description = "Brown. It contains everything the market did not sell. On a good day it is superb. On a fish day it is brave.",
          actions = { { "Ask for a bowl", say "A bowl comes over the half door, with a spoon standing up in it. Turnip, mostly, and something that was a herring. You finish it, and are told so: \"He finished it,\" says Bess to the range, astonished." } } },
        { name = "the spice shelf", description = "Salt, pepper, and a tin labelled {i}THE OTHER ONE{/}." },
        { name = "a string of onions", description = "Marta's, from Greenhollow. Even hanging on a nail they manage to look as if they disapprove." },
        { name = "the kitchen cat", description = "Black, enormous, asleep in the flour bin. The bread here has always had a certain something." },
      } },
    { name = "the cellar door",
      description = "A flap in the floor behind the bar, with a ring.",
      things = {
        { name = "the cellar", description = "Barrels, on their sides, on a stone rack. It is cold and smells of yeast and river.",
          things = {
            barrel { name = "a barrel of Regulation", description = "Chalked with a date and the words {i}NOT YET{/}. It has said that for six years. She is waiting for it to stop arguing." },
            { name = "a drain in the floor", description = "An iron grid. Under it, water is going somewhere on purpose. You have been down there, or you will be." },
            rat { description = "Sleek, on a barrel, washing. It has a seat. It may well have a mug." },
          } },
      } },
    { name = "the stairs",
      description = "Up to the rooms. Four of them, off a landing that slopes.",
      things = {
        { name = "the best room",
          description = "A four-poster, a window on the market, and a wash stand with a jug.",
          things = {
            { name = "the four-poster", description = "Curtained in red. A king is said to have slept in it. The landlady says it was the present one, last month, and that he snored and paid in marrows." },
            { name = "the window", description = "It looks straight across at the fountain. Guests are woken at dawn by the sound of water going up." },
          } },
        { name = "the second room", description = "Let by the year to a commercial traveller in buttons. He has not been seen since spring. His samples are laid out on the bed, by size, and are dusted." },
        { name = "the third room", description = "The door is shut, and has a boot outside it to be cleaned. The boot has been outside it for a week. It gets cleaned daily. Nobody has knocked." },
        { name = "the cheap room",
          description = "Under the eaves: a pallet, a candle, and a ceiling you learn about with your head.",
          things = {
            candle(),
            { name = "the pallet", description = "Straw, lively. You are not the only one who would be sleeping here." },
            { name = "names on the beam", description = "Carved by everyone who ever slept here for want of anything better. Carters, pedlars, one {i}Wilf{/}, and a row of adventurers, each with a date, none with a second date." },
          },
          actions = {
            { "Carve your name", say "You find a space under the other adventurers and carve it, small. You add the date. You leave room for a second one." },
          } },
      } },
    { name = "the sign",
      description = "Outside, over the door: three scrolls, crossed out in red. Every few years the Council has it taken down, and every few years it turns out there is no regulation about signs." },
    { name = "the settle by the window",
      description = "Where the market wives sit with a half of mild and the whole of the town's business.",
      actions = {
        { "Listen in", say "The Baroness has a study she does not have. The King is in the kitchen garden. The wall grew again. They know everything. They stop when they see you listening, and then, kindly, start again a little louder." },
      } },
    { name = "the commercial room",
      description = "A back parlour with a round table, where travellers in a line of goods do their sums of an evening. Tonight there is one: a small man with a case of buttons and a tired face.",
      things = {
        { name = "the traveller in buttons", description = "So he exists. He has the second room by the year and is seldom in it. He buys buttons by the gross in the north and sells them to a man on the coast at a price that puzzles him.",
          actions = {
            { "Ask who buys them", say "\"A hatter,\" he says. \"Abroad. He takes all I can find. Any size, any sort, odd ones for choice.\" He turns one over in his fingers. \"I asked him once what they do with them down there. He wrote back: {i}spend them.{/}\"" },
          } },
        { name = "the sample case", description = "Trays of them, on velvet: horn, brass, pearl, glass. On the top tray, by itself, is a button of plain bone, cracked. It was his first. It is not for sale and he could not tell you why he carries it." },
      } },
    { name = "the yard at the back",
      description = "Through the passage: cobbles, a pump, a mounting block, and stabling for six.",
      things = {
        { name = "the ostler", description = "A bow-legged man with a straw in his mouth who can tell a horse's age, temper and owner's bank balance from the teeth. He looks at your boots in the same way." },
        { name = "a carter's horse", description = "Enormous, grey, shaggy at the heel, eating. It has done the road to Saltwick four hundred times and could do it without the carters, who are arguing inside. It has its own view about which way is longer." },
        { name = "the pump", description = "The handle shrieks. It is not oiled, on purpose. It is how Mistress Tolly knows who is watering the beer." },
      } },
  },

  exits = {
    { to = "market", description = "Out into the noise, which is at least a different noise." },
  },
}
