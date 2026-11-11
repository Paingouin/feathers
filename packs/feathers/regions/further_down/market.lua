-- The Lost Property Market: everything dropped down a well or a drain ends up on a stall.

space {
  id = "fd_lost_market",
  region = "further_down",
  name = "The Lost Property Market",
  description = "Every well, drain, grating and gap between floorboards in the kingdom comes out, in the end, above this cavern. What falls is caught in nets, sorted, ticketed and put on a stall. Nothing is for sale. It is all being kept for its owner, for as long as that takes, and in the meantime it is very nicely displayed.",
  palette = { bg = "#0c0b0e", text = "#cac6c6", dim = "#686068", accent = "#e0b060", border = "#3c3440" },
  ambience = {
    dust { glyphs = "·˙'", colors = { "#8a7a60", "#5a5460" }, rate = 0.35, speed = 0.25 },
    flicker { color = "#d8a050", strength = 0.12 },
  },

  things = {
    { name = "the nets",
      description = "Slung across the roof of the cavern on a hundred lines, fine as cobweb and strong as rope, with a Murmur in a bosun's chair going from one to the next with a hooked pole.",
      things = {
        { name = "something falling",
          description = "A glint, high up, turning over. It drops out of a crack in the roof, hits the net, bounces twice and lies still. A wedding ring. A bell is rung. Somewhere above, somebody is on their knees beside a sink." },
        { name = "the chutes",
          description = "Stone throats in the ceiling, each with a brass label: {i}GREENHOLLOW, WELL.{/} {i}ALDMOOR, DRAINS, ALL.{/} {i}CASTLE, PRIVY (HANDLE WITH TONGS).{/} {i}SALTWICK, HARBOUR, VIA SEA.{/}" },
        { name = "the catcher",
          description = "She has done it for forty years and has never dropped a thing. She caught a piano once, from the Collegium. It took all the nets and she still speaks of it." },
      } },
    { name = "the Keeper of the Market",
      icon = "☺",
      description = "Mr Keeps, behind a counter under a sign that says {i}CLAIMS{/}. An elderly Murmur in sleeve guards with a magnifying glass on a ribbon. He knows where every article is and whose. He has returned, in his whole career, eleven. He is not discouraged. The owners are busy, and it is a long way down.",
      variants = {
        { when = flag "fd_shelf_open",
          description = "Mr Keeps, behind the counter under the sign that says {i}CLAIMS{/}. He has had a claim. He has not stopped smiling since, in the small private way of someone who was right to keep the shop open." },
      },
      things = {
        { name = "the claims book",
          description = "A ledger a foot thick, which for him is furniture. Every line: the article, where it fell, whose it was, and a column headed {i}MISSED?{/}, with a tick or a blank.",
          things = {
            { name = "the ticked column", description = "He can tell when a thing is missed. He says the article changes: it sits differently. A missed glove looks towards the door." },
          } },
        { name = "his magnifying glass", description = "For reading the names inside rings and the initials on handkerchiefs. From your side of it his eye is the size of a plum, and kind." },
      },
      actions = {
        { "Ask what he has of yours", when = no(item "fd_claim_ticket"),
          say "\"Pardon. Have you your ticket?\" You have not. He spreads his hands. \"Then I could not say. One may not go guessing at what a person has lost. It is the most private thing about them.\" He looks at you over the glass. \"They send word to the inns, as a rule.\"" },
        { "Hand over the ticket", when = item "fd_claim_ticket", take "fd_claim_ticket", set "fd_shelf_open", fx "sparkle",
          say "He reads it twice. \"Number one,\" he says, and gets down from his stool, and is gone a long time. He comes back with two porters and a wooden sword. It is the length of your forearm. The point is chewed and your name is on the hilt, in a hand that had only just learned the letters. You lost it down the Greenhollow well when you were five, fighting a goose.\n\nYou hold it. It is exactly the right weight. \"Nobody has ever come for number one before,\" says Mr Keeps. \"It is against all the rules, but you may go through to the back. I should like you to see how the rest are kept.\" You put the sword in your belt, beside nothing." },
        { "Ask about the eleven", say "\"A ring, a ring, a spectacle lens, a ring. A ferret, alive, and most indignant. A letter, which the owner read here at the counter and asked us to lose again. Four more rings. And a dog's ball.\" He takes off his glass. \"The dog came for it himself. We still do not know how.\"" },
      } },
    { name = "the stall of rings",
      description = "Ten thousand of them, on velvet, sorted by the well they came down. It is the largest stall in the market. People will take rings off to wash.",
      things = {
        { name = "a plain gold band", description = "Inside: {i}M. to T., Thursday.{/} It has a tick in the book. It has been looking at the door for nine years." },
        { name = "a ring with a seal", description = "The seal has been pared off with a knife before it was dropped. This one did not fall. It was thrown, and it has no tick." },
        { name = "a curtain ring", description = "Brass. Entered, ticketed, displayed with the others. {i}We do not judge,{/} says the card." },
      } },
    { name = "the stall of single things",
      description = "One glove. One boot. One earring. One of a pair of dice. Half a pair of scissors.",
      things = {
        { name = "the wall of left gloves",
          description = "Hundreds, pinned up like butterflies. In forty years the stallholder has made up three pairs, from different owners, and introduced them. Two of the three, she says, are very happy." },
        { name = "a child's boot with a buckle",
          description = "Just arrived, a little out of breath. It walked. It is being signed in." },
        { name = "the other sock",
          description = "A bin of them, heaped. This, then, is where they go. You look for a long moment at a grey one with a darned heel and say nothing to anybody." },
      } },
    { name = "the stall of coins",
      description = "Wishes, mostly. Every coin thrown into a well with a wish on it is kept here in a labelled envelope, with the wish written on the front, in case the owner should want either back.",
      things = {
        { name = "an envelope, recent",
          description = "{i}One copper, bent. Greenhollow well. Wish: to be an adventurer.{/} The date is the morning you left. You do not remember throwing one. You remember thinking about it very hard, beside a bucket.",
          actions = {
            { "Ask for it back", say "The stallholder weighs the envelope in her hand. \"Pardon. The coin you may have. The wish is out.\" Out? \"It was collected. They do get collected, the meant ones.\" She will not say who by. She gives you the envelope. It is empty: you have the copper already. It came up in a bucket." },
          } },
        { name = "an envelope, very old",
          description = "The paper is brown and the coin is of a king nobody can name. {i}Wish: that it will all still be here in the morning.{/} Every stallholder for a thousand years has dusted it, and none of them has filed it under Granted or under Not." },
      } },
    { name = "the stall of keys",
      description = "On hooks, by the thousand, each with a tag saying what it opens. Half the locked doors in the kingdom could be dealt with from here in an afternoon. Nobody has ever thought to ask.",
      things = {
        { name = "a key tagged for a cell", description = "{i}Aldmoor Gaol, the end one.{/} The tag has been turned to face the wall. It has no tick, and Mr Keeps says, carefully, that some things are down here because they were put." },
        { name = "a very small key", description = "{i}Diary. Whose: she knows.{/}" },
        { name = "a key the size of a spade", description = "{i}City gate. Not Aldmoor's.{/} It is the same dark metal as the rings on the river jetty." },
      } },
    { name = "the stall of things said",
      description = "A row of stoppered bottles. Words dropped down wells: secrets, names shouted to hear the echo, and a good many things people could not say to anyone's face.",
      things = {
        { name = "a bottle, green", description = "{i}Greenhollow. \"HELLO.\" (A child. Repeated daily, one summer.){/} There are sixty of these. They are kept together." },
        { name = "a bottle, sealed with black", description = "{i}Aldmoor. A confession. Not ours to hear.{/} It never has been opened. The wax has a thumbprint in it the size of a seed." },
        { name = "a bottle, empty", description = "{i}Castle. What the King said down the well on the day he was crowned.{/} Unstoppered. The label adds: {i}It went on down. We could not hold it.{/}" },
      },
      actions = {
        { "Hold one to your ear", say "The green one. Through the glass, tiny and a long way off: a child's voice. \"Hello?\" A pause. \"Hello?\" It is waiting for the well to answer. You hear yourself say hello back, to a bottle, in a market, under the ground." },
      } },
    { name = "the shelf of lost names",
      key = "fd_lost_names",
      wonder = true,
      description = "At the back of the market, a long shelf with nothing on it but luggage labels, each tied to a nail. On every label is a name that somebody has forgotten: the friend from the summer they were seven, the dog before the dog they remember, the word their grandmother used for the stars. {magic}A name that has been forgotten is not gone. It has only come down here, where somebody writes it out fair and hangs it up.{/}",
      things = {
        { name = "a label at your eye level",
          description = "They have hung one high, where a Murmur would need a ladder. You read it. It is the name of the old man who mended your first boots and told you the story about the knight and the turnip. You had not thought of him in fifteen years. You could not have told anyone you had forgotten it.",
          actions = {
            { "Say it aloud", fx("wash", "#e0b060"),
              say "You say it. The label turns once on its string, and when it stops the writing has gone from it. Mr Keeps, at his counter, puts a tick in a book without looking up. That is twelve." },
          } },
        { name = "the oldest label",
          description = "Black with age, on the first nail. The ink has gone into the card and cannot be read. Mr Keeps says it has been there since before the shelf was put up round it. He does not know whose it was or who forgot it. \"We look after it,\" he says. \"Somebody will want it. They always do, in the end, and usually at an awkward time.\"" },
      } },
    { name = "the porters",
      description = "Murmurs in brown coats with barrows, wheeling the day's fall from the nets to the sorting tables. Four are carrying an umbrella as if it were a ship's mast.",
      actions = {
        { "Lend a hand", say "You pick up the umbrella between finger and thumb and set it on the stall. Four porters look at their hands, then at you. One gets out a notebook and writes down your height, and underlines it." },
      } },
    { name = "the sorting tables",
      description = "Where it is decided what a thing is. This is harder than it sounds from underneath.",
      things = {
        { name = "an argument about a spoon", description = "Two sorters, a spoon, and the question of whether it is cutlery or a shovel. It has been referred to the Mayor." },
        { name = "a set of false teeth", description = "Ticketed {i}ALDMOOR, ALDERMAN, SNEEZE.{/} They are kept in water and the water is changed." },
        { name = "a cannonball", description = "It came down the castle well during a siege and went through three nets. They have built the table round it." },
      } },
    { name = "a turnstile",
      description = "At the far end of the stalls, a full-sized iron turnstile set into the cavern wall, painted red and never used. Over it, a board with gilt letters half peeled: {b}THIS WAY TO DIRE PERIL.{/} The Murmurs have planted a window box on it." },
    { name = "the curtain behind the counter",
      description = "Grey baize, from roof to floor, behind Mr Keeps. The stalls are for things that are missed. You gather there is somewhere else, for the rest.",
      variants = {
        { when = flag "fd_shelf_open",
          description = "Grey baize, from roof to floor. One corner of it has been pinned back for you, as high as the pin would go. You will have to crawl." },
      } },
  },

  exits = {
    { to = "fd_pardon", description = "Up the steps to where the lights are in straight lines." },
    { to = "fd_dungeon", label = "The turnstile", description = "Through the red turnstile, which sticks, to whatever Dire Peril is." },
    { to = "fd_unclaimed", label = "Behind the curtain",
      description = "Under the pinned-back baize, on hands and knees.",
      requires = flag "fd_shelf_open", hidden = true },
  },
}

space {
  id = "fd_unclaimed",
  region = "further_down",
  secret = true,
  wonder = true,
  name = "The Unclaimed Shelf",
  description = "Behind the curtain the cavern goes back and back, and it is all shelves. {magic}These are the things that were lost and never missed.{/} Nobody has looked for them, nobody knows they are gone, and they are kept exactly as carefully as the rest: dusted, labelled, each with a small lamp. The Murmurs do not think a thing matters less because no one has noticed it.",
  palette = { bg = "#0a0a0c", text = "#c4c4c8", dim = "#5c5c68", accent = "#c8d0e8", border = "#30303c" },
  ambience = {
    dust { glyphs = "·", color = "#484858", rate = 0.1, speed = 0.05 },
    fireflies { glyphs = "·", colors = { "#c8d0e8" }, rate = 0.15, speed = 0.02 },
  },

  things = {
    { name = "the shelves",
      description = "Stone, cut into the living rock, running further than the lamps. A Murmur on a rolling ladder is working along one with a duster made from a single moth scale.",
      things = {
        { name = "the duster",
          description = "She does a shelf a night. When she reaches the end, the beginning needs doing. \"It is not so different from anything else,\" she says." },
      } },
    { name = "a row of afternoons",
      description = "Glass domes, like the ones over clocks, and in each a little weather. They are afternoons that nobody remembers having: wet ones, mostly, with nothing in them. Somebody sat at a window.",
      things = {
        { name = "one with sun in it",
          description = "A dome with a square of light on a floor, and a cat in the light. The label says only {i}Aldmoor, a Tuesday.{/} It was nobody's best day. It was lost in a week, among the others. It is very beautiful." },
      },
      actions = {
        { "Look for one of yours", say "Third shelf, low down. A kitchen. Rain on the glass. A child under a table with a wooden sword, doing nothing whatever, perfectly content. You had lost it so completely that you never knew it was owed. You do not ask for it back. You know where it is now." },
      } },
    { name = "a drawer of first teeth",
      description = "Labelled and dated. The coins that were left for them are on the stall outside. The teeth were never missed at all.",
      things = {
        { name = "one very large tooth", description = "The size of a loaf, at the back of the drawer. The label: {i}Not a child's. Came down the Castle well. First tooth of what?{/} It is kept with the rest. A first tooth is a first tooth." },
      } },
    { name = "a rack of walking sticks",
      description = "Left in corners of inns for a hundred years. Not one was ever gone back for. Each has worn to the shape of its owner's hand, and the Murmurs, who could shelter under any of them, have polished every grip." },
    { name = "a case of skills",
      description = "Small corked tubes. {i}How to whistle through a grass blade. The seven times table. The way to the pond.{/} Things people could do, and then at some point could not, and never noticed the day.",
      actions = {
        { "Uncork one", say "It is the trick of skimming a stone, and you get it back all at once, in the wrist. You could do six bounces at the age of eight. You cork the tube again, guiltily. It is still in your wrist. The tube, when you look, is still full: it seems there was always enough for both of you." },
      } },
    { name = "a shelf of the kingdom's",
      description = "Larger articles. A country can lose things without missing them, too.",
      things = {
        { name = "a milestone", description = "{i}TO THE SEA, 9.{/} From a road that is not there any more. Nobody noticed the road go. It is kept in case the milestone is needed for evidence." },
        { name = "a festival", description = "A box of bunting, a pole, and a recipe for a cake. It was held every spring, and then one spring it was not, and no one could have said which. The Murmurs keep it on the first warm dusk of the year, quietly, so that it does not lapse." },
        { name = "a law", description = "On one sheet. {i}That every well shall have a bucket, and every bucket a rope long enough.{/} It was never repealed. It simply fell out of the book, and yet every well still has one." },
      } },
    { name = "a jar of a smell",
      description = "{i}Somebody's grandmother's hall.{/} Sealed with wax. Beside it, a dozen more: {i}the inside of a particular hat{/}, {i}rain on a hot road, one occasion{/}, {i}a dog, wet, beloved{/}." },
    { name = "the haystack",
      description = "At the end of the aisle, between two shelves: a haystack. A real one, full size, gone grey, fenced with a little rope. It is by far the largest article on the Unclaimed Shelf, and nobody has ever missed it, because of what was said to be in it.",
      things = {
        { name = "a notice on the rope",
          description = "{i}One haystack. Fell complete through the floor of a barn in the reign of Odo the Unready. Searched from Above for sixty years, by experts. Contents: see label.{/}" },
        { name = "something in the hay",
          key = "fd_needle_in_hay",
          description = "You were not looking. That, it turns out, is the method. A wink of steel at arm's height, and a red thread hanging from it.",
          variants = {
            { when = item "fd_finding_needle", name = "a gap in the hay",
              description = "A hole the width of a needle. The haystack looks, if anything, relieved. It was a great deal to be responsible for." },
          },
          actions = {
            { "Draw it out", once = true, give "fd_finding_needle", fx "sparkle",
              say "It comes out as easily as a pin from a cushion. A steel needle on a red silk thread. It swings on the thread, turns, and points straight at your chest, where the wooden sword is. Then at your boot, where the spare lace was. It has taken to you. {gold}The Finding Needle.{/} The Murmur on the ladder has stopped dusting. \"Pardon,\" she says faintly. \"It was sixty years, with rakes. We did think of telling them it was down here. But they seemed so occupied.\"" },
          } },
      } },
    { name = "a shelf left empty",
      description = "Clean, lit, labelled. The label says {i}RESERVED{/}, and a date, and the date has not happened yet. Mr Keeps is not being mysterious. He says only that the nets are sometimes told what to expect.",
      actions = {
        { "Ask who tells them", say "The Murmur on the ladder looks down the aisle to where the shelves go on into the dark. \"Pardon. It comes up from the back, on a card. We have never been all the way to the back.\" She dusts the empty shelf. \"It is always right.\"" },
      } },
    { name = "your wooden sword's place",
      description = "A peg, a label, a lamp, on the nearest shelf to the curtain. {i}Number 1.{/} The lamp is still lit. They have not taken the label down. \"In case,\" says the Murmur with the duster. \"People do lose things twice.\"" },
    { name = "the lamps",
      description = "One to each article, blue, no bigger than a seed, the whole way back. From the curtain it is like looking down a street at night that goes on to the edge of the world. Every lamp is trimmed, and every lamp is for something nobody wants.",
      actions = {
        { "Walk a little way down", say "A hundred paces. The shelves do not end. A doll. A song with one verse. The second-best view from a hill. You stop when the curtain behind you is as small as a stamp, and you find that you are not sad at all. It is the best kept place you have ever been in." },
      } },
    { name = "the quiet back there",
      description = "Past the last lamp you can see, the aisle goes on. The air from that direction is still and smells faintly of paper. There is a great deal of filing down here, and you have begun to wonder who it is all for." },
  },

  exits = {
    { to = "fd_lost_market", label = "The curtain", description = "Back under the baize, to the stalls of things that somebody wants." },
  },
}
