-- The Weather Office, and what it keeps behind the big barometer.

space {
  id = "le_weather_office",
  region = "loose_ends",
  name = "The Weather Office",
  description = "A stone box on a rock of its own, with a brass plate: {i}ROYAL OFFICE OF WEATHER, Upper Division. Issue and Returns.{/} Inside there is a counter, a wall of instruments, and a smell of ink and wet coats. The kingdom's weather is administered from this room. The room would like that understood.",
  palette = { bg = "#0e1012", text = "#d4d8dc", dim = "#6c747c", accent = "#70b8d8", border = "#3a4854" },
  ambience = { dust { glyphs = "˙·", color = "#7088a0", rate = 0.2 }, flicker { color = "#70b8d8", strength = 0.06 } },

  things = {
    { name = "the Clerk of the Weather",
      key = "le_clerk",
      icon = "☺",
      description = "Mr Mild: a dry, exact man in a grey coat buttoned to the neck, behind a counter, with a pen. He issues the weather. If the weather disagrees with what he has issued, he sends it a letter.",
      things = {
        { name = "his pen", description = "Steel, with a fine nib. He rules a line under each day when it is over. The lines are all the same length. The days, he will tell you, are not his fault." },
        { name = "his umbrella", description = "In a stand beside him, black, furled so tightly that it could be used to pick a lock. It has never been opened. Opening it would be an admission." },
        { name = "his spectacles", description = "Small and round. They are misted on the inside. The Office is the dampest building in the Loose Ends and he denies it daily." },
      },
      actions = {
        { "Ask for the forecast", say "He turns a ledger toward you. {i}Today: fair.{/} Rain is running down the window behind him. He does not turn round. \"The Office's position,\" he says, \"is that it is fair. What you see is a local discrepancy. It has been reported.\"" },
        { "Ask who decides the weather", say "\"The Schedule decides. So much sun, so much rain, per parish, per quarter, laid down by the first Clerk and not altered since.\" He taps the ledger. \"We issue against it. We are not here to have ideas. The last Clerk who had an idea gave Saltwick a second Tuesday.\"" },
        { "Complain about the weather", say "He hands you a form. It is in triplicate, and asks for the date, the parish, the nature of the weather, and the weather you would have preferred. At the bottom, in small print: {i}Preferences are noted and have no effect.{/} You fill it in anyway. It helps." },
        { "Ask for yesterday", when = all { flag "le_knows_store", no(flag "le_store_open") }, set "le_store_open",
          say "The pen stops. \"Who told you that?\" He knows who. He takes off his spectacles, wipes them, and puts them on, no clearer. \"The charter says any subject may inspect a day once it is past. It does not say I must be pleasant about it.\" He lifts the counter flap. He swings the big barometer out from the wall on a hinge. There is a door. \"Touch no corks.\"" },
      } },
    { name = "the big barometer",
      key = "le_big_barometer",
      description = "Eight feet of mahogany and mercury on the back wall, with a dial like a church clock. The needle points to {i}SET FAIR{/}. It is screwed there. You can see the screw.",
      variants = {
        { when = flag "le_store_open",
          description = "Eight feet of mahogany and mercury, swung out from the wall on a hinge like a cupboard door. Behind it is a real door, low, iron, standing open, and a stair going down into the rock with a cold breath coming up it." },
      },
      things = {
        { name = "the screw", description = "Brass, through the needle, with the slot worn. It has been taken out a few times, for inspections, and put back." },
        { name = "the mercury", description = "It is doing something else entirely. It goes up and down the tube like a man pacing." },
      } },
    { name = "the counter",
      description = "Oak, with a brass grille and two windows: {i}ISSUE{/} and {i}RETURNS{/}.",
      things = {
        { name = "the Issue window", description = "Where the day's weather is signed out. A tray of chits, each stamped: {i}Aldmoor, drizzle, 4 hrs. Greenhollow, sun, with one cloud for interest. Castle, see standing order (fog).{/}" },
        { name = "the Returns window", description = "For weather sent back unused or unsatisfactory. There is a basket under it. In the basket is one small, wet, embarrassed looking breeze, with a ticket: {i}Wrong parish.{/}",
          actions = {
            { "Let the breeze out", say "You lift the lid an inch. It is round your ankles and out under the door before you can blink, and across the room a stack of forms goes up like pigeons. Mr Mild does not raise his voice. He writes something down, with your description beside it." },
          } },
        { name = "a bell", description = "{i}Ring for attention.{/} You ring. He is standing a foot away. He finishes his line, lays down the pen, and says, \"Yes?\"" },
        { name = "the Schedule", description = "Under glass on the counter: a sheet of vellum ruled into parishes and quarters, in a hand four hundred years old. Every square has a ration. In the square for the Loose Ends themselves it says only {i}as found{/}." },
      } },
    { name = "the instruments",
      description = "A wall of them, brass and glass, each with a card.",
      things = {
        { name = "the rain gauge", description = "A copper funnel through the roof into a marked glass. The glass is full to the brim. The card says {i}Nil{/}, and is initialled." },
        { name = "the anemometer", description = "Four cups on a spindle on the roof, geared to a dial down here. It is spinning to a blur. A second card has been hung over the dial: {i}Under repair.{/}" },
        { name = "a hair hygrometer", description = "A single long hair, stretched in a frame, which lengthens in the damp and moves a needle. The hair is red. It was the first Clerk's wife's, and she is said to have been a better forecaster than any of them, and to have gone grey over it." },
        { name = "a thunder glass", description = "A sealed flask of cloudy liquid that is supposed to clear before a storm. It has a storm in it, a very small one. You can see the lightning. The card says {i}Decorative.{/}" },
        { name = "the sunshine recorder", description = "A glass ball that burns a line on a card when the sun is out. Today's card is burnt from end to end. Mr Mild has written across it {i}Fair, as forecast{/}, and this once you cannot fault him." },
      },
      actions = {
        { "Tap a dial", say "You tap the glass of the nearest. The needle jumps to {i}STORMY{/}, quivers, and looks at you, as far as a needle can. Then it creeps back to where the Office wants it." },
      } },
    { name = "the window",
      description = "One, facing the village. It is raining on it, from a small firm cloud that has taken up a position directly over the Office and nowhere else.",
      things = {
        { name = "the cloud", description = "Grey, the size of the roof, with a raddle mark of blue on its flank. It is one of Nan Wether's. She has a view on the Office's rates for trimmings, and this is how she expresses it." },
      } },
    { name = "the junior desks",
      description = "Three high stools at a sloping desk. Two are occupied by clerks copying figures. The third is empty and has a coat on it.",
      things = {
        { name = "a junior clerk", description = "Copying yesterday into the ledger for yesterday. He has a cold. Everybody in the Office has a cold. It is put down as {i}seasonal{/} in every season." },
        { name = "another junior clerk", description = "Adding up the kingdom's rain for the quarter. He has got it to come out exactly to the Schedule, and he is doing it again, because it never has before and it frightens him." },
        { name = "the empty stool", description = "The coat has a Weather Office badge on the lapel, turned in. Its owner has gone to lunch. It is a long lunch. It is at the Slow Spill." },
      } },
    { name = "the complaints box",
      description = "A tea chest by the door, full to the lid.",
      things = {
        { name = "a complaint from Greenhollow", description = "{i}Sir. It rained on the fete AGAIN. This is the ninth year. We do not think it is chance. Yrs, the Committee.{/} Pinned to it, the Office's reply: {i}It is not chance. See Schedule.{/}" },
        { name = "a complaint from the Castle", description = "On crested paper. {i}His Majesty asks, without wishing to press, whether the fog might be lifted from the garden on a Wednesday, for the marrows.{/} It has been stamped {i}UNDER CONSIDERATION{/} by eleven successive Clerks." },
        { name = "a complaint from a monastery", description = "A blank sheet, folded, sealed. It was delivered by a brother who stood at the counter for an hour, pointing upward, at a great deal of snow. The Office filed it under {i}Silent, strongly{/}." },
      } },
    { name = "the weathercock",
      description = "On the roof, seen through a skylight. It is tied with three turns of wire to point south-west. The wire is new. The last one was pulled off in the night by something.",
      things = {
        { name = "the old spindle", description = "A stump beside the new one, snapped off short. The first weathercock went in a gale four hundred years ago. It was following something, the Office records say, and declined to stop." },
      } },
    { name = "the pneumatic tube",
      description = "A brass pipe from the ceiling with a leather cup on the end. Chits are sent up it to the roof, where a boy reads them out to the sky through a speaking trumpet. You can hear him. \"Aldmoor! Drizzle! Four hours! I said four!\"" },
    { name = "a portrait",
      description = "The first Clerk, in oils, over the stove. A stout man pointing at a cloud. The cloud in the painting has drifted, over four centuries, from the left of the frame nearly to the right, and the varnish is cracked along its track." },
    { name = "the stove",
      description = "Iron, lit, with a rail of wet coats round it that never dry. A kettle. A row of mugs with initials. One mug says {i}THE WEATHER{/} and nobody admits to it." },
    { name = "the ledgers",
      description = "A wall of them, one a year, each with a year on the spine in gold.",
      things = {
        { name = "this year's", description = "Open on the counter. Two columns: {i}Issued{/} and {i}Observed{/}. The Issued column is full, neat and confident. The Observed column has been left blank since March, when it began to be upsetting." },
        { name = "a ledger with a black spine", description = "The nine years of the Long Winter. Every page says {i}Snow (not issued){/}. On the last page, in a shaking hand: {i}It has gone. We did nothing. Let it be recorded that we did nothing, most diligently, throughout.{/}" },
        { name = "the first ledger", description = "The first page reads {i}Day 1. Fine.{/} It is in the first Clerk's hand, and he has underlined {i}Fine{/} twice, like a man who has been proved right at the first attempt and means to make it last." },
      } },
  },

  exits = {
    { to = "le_tether", label = "The causeway to Tether", description = "Twenty yards of stone slab on chains. It is raining on the first ten." },
    { to = "le_weather_store", label = "The door behind the barometer", description = "Down a stair in the rock, into a cold that smells of every season at once.",
      requires = flag "le_store_open", hidden = true },
  },
}

space {
  id = "le_weather_store",
  region = "loose_ends",
  secret = true,
  wonder = true,
  name = "The Returns",
  description = "A long vault cut down through the Office's rock, lined on both sides with stone shelves, and on the shelves, jars. Thousands. Each is corked, waxed, and labelled with a date. Mr Mild calls them records. {magic}They are days. Every one that has been, kept back in a pint of itself, in order.{/}",
  palette = { bg = "#0a0c12", text = "#d0d6e2", dim = "#606a82", accent = "#f0c868", border = "#343e5c" },
  ambience = { shimmer { color = "#f0c868", strength = 0.12 }, dust { glyphs = "˙·", color = "#7480a0", rate = 0.2, speed = 0.1 } },

  things = {
    { name = "the shelves",
      description = "Slate, floor to roof, going back further than the lamp. A year to a bay, three hundred and some jars to a year. The near bays are grey stoneware. Further in they are brown, then a rough red clay, then something older.",
      things = {
        { name = "this year's bay", description = "Not yet full. The last jar in the row is still warm, and has no cork in. There is a funnel in its neck and a thread of today going down it, the colour of rain on a window." },
        { name = "a bay with every jar black", description = "Nine years of them, tarred over. The Long Winter. Frost has come through the stoneware and grown on the outside in ferns. Nobody has waxed these; they sealed themselves." },
        { name = "a jar on its side", description = "Rolled to the back of a shelf, unlabelled. Mr Mild says from the stair that it is the second Tuesday, the one Saltwick was given in error, and that it is not to be discussed." },
        { name = "the oldest bay", description = "At the far end. The jars here are not thrown on a wheel. They are pinched out of clay by hand, and the thumb prints are large. The labels are not paper; each has a pebble tied to its neck, with one scratch on it. The first jar of all is there, in two halves. The first Clerk dropped it. Day 1 is kept beside it in a teapot, with the spout waxed, and is said to be none the worse." },
      } },
    { name = "yesterday",
      key = "le_yesterday",
      description = "The jar you asked for, at the end of the row, sealed this morning. The label has the date and {i}Fair, becoming adventurer{/}. You may inspect it. You have a charter right.",
      actions = {
        { "Hold it to the light", say "Through the stoneware, faintly, a glow like the inside of an eyelid. You tilt it. Something in there tilts too: a mountain, very small, with a figure on it, signing a book. You were not at your best yesterday. You see that it has been kept anyway, all of it, with the same care as a coronation." },
        { "Listen to it", say "Wind. Boots on rock. Your own voice, saying hello to a mountain. You sound younger than you thought, and more pleased." },
      } },
    { name = "a day you remember",
      key = "le_good_day",
      wonder = true,
      description = "You walk back along the years until the dates mean something, and stop at one. You know it. You were nine, or ten. Nothing happened on it. {magic}You take the jar down and hold it against your chest, and through the clay comes a warmth, and a smell of cut grass, and a door banging somewhere in a house that is not there any more.{/} You had thought that day was gone, and that you were the last place it was kept, and that you were not keeping it well. It has been here all the time, on a shelf, in the dry. Somebody labelled it. Somebody waxed the cork.",
      actions = {
        { "Put it back", say "You put it back exactly where it was, label out. You square it with the others. You stand a moment with your hand on the shelf. Then you go on, lighter by something you had been carrying without knowing." },
      } },
    { name = "the reserve",
      key = "le_reserve",
      description = "At the foot of the stair, in a niche by itself behind an iron grille: one jar, larger, with a paper label gone brown and three empty spaces for signatures. The grille has a lock. The lock has no keyhole. The grille, you find when you lean on it, has also never been shut.",
      variants = {
        { when = flag "le_day_taken",
          description = "At the foot of the stair, a niche behind an iron grille that was never shut. There is a clean ring on the stone where a jar stood. You have left a note in it, weighted with a pebble: {i}Borrowed against need. Will not open. An adventurer.{/}" },
      },
      things = {
        { name = "the grille", description = "Wrought iron, with a lock plate as big as a hand, and no hole in the plate. Eleven Clerks have gone to their graves believing the reserve was secure, and not one of them ever pushed." },
        { name = "a chit, on a nail", description = "{i}One (1) day, fine. Held against need. Signatures required: three Clerks.{/} Below, in pencil, by a later hand: {i}There is only ever one of us. I believe he knew.{/} And below that, later still: {i}Then it is for somebody who is not a Clerk.{/}" },
      },
      actions = {
        { "Take the jar", when = no(flag "le_day_taken"), set "le_day_taken", give "le_kept_day", fx "sparkle",
          say "It is warm as a loaf. You lift it out, and the vault brightens by about one candle, as if a cloud had moved off somewhere. From the top of the stair Mr Mild says, without coming down, \"I did not see that. I am ruling a line. I shall be ruling it for some minutes.\" You hear the pen. You leave a note, since it seems the least you can do, and promise the jar that you will not waste it." },
      } },
    { name = "the funnel room",
      description = "A side chamber where a copper funnel as wide as a cartwheel comes down through the roof. This is where the day comes in. It condenses on the copper, runs to the spout, and drips into the jar beneath, a drop at a time, until midnight.",
      things = {
        { name = "the drip", description = "Slow. Each drop is a different colour for the instant it hangs: a grey one, a gold one, one the green of the pasture after rain. You watch a blue one gather. That was the last few minutes. You are in it." },
        { name = "the midnight cork", description = "On a string by the jar, with a stick of wax and a candle. At twelve he comes down, corks the day, seals it, writes the label and puts a fresh jar under. He has not missed a night. Neither did any before him. That is why there is a yesterday." },
        candle { description = "For the wax. It burns with a small steady flame and has a day's worth of grey thumb prints round the base." },
      } },
    { name = "a shelf of oddments",
      description = "By the stair, uncatalogued: weather that fitted nowhere.",
      things = {
        { name = "a jar marked {i}February 30th{/}", description = "It rattles. He says it is hail and that there was an error in the calendar that year and that nobody was to blame." },
        { name = "a very small jar", description = "The size of an egg cup. {i}The eclipse, 4 min.{/} It is dark inside it, even with the lamp behind." },
        { name = "a jar with a storm in", description = "It hums. The cork is wired down like a wine of the fizzing kind and the shelf under it is scorched. {i}Sold by the pint to a Madam S. of Aldmoor, for display. Remainder dangerous.{/}" },
        { name = "a jar of fog, standing order", description = "{i}Castle, garden, Wednesdays.{/} There are forty of these, ready filled, in a crate. The King's marrows have never had a chance." },
      } },
    { name = "the lamp",
      description = "One, on a hook at the stair foot, shielded. He allows no more. A day that is looked at too much, he says, goes pale. He says it with authority. You wonder how he found out, and which day it was." },
    { name = "the cold",
      description = "It is every temperature here, in layers. Your ankles are in November. Your hands, when you raise them, find a level that is plainly June. If you stand on a stool your head goes into a frosty morning with a robin in it, somewhere." },
    { name = "the catalogue",
      description = "A card index in oak drawers, one card a day. Each has the date, the weather issued, the weather that came, and a column headed {i}Remarks{/}.",
      things = {
        { name = "the remarks", description = "Mostly blank. Now and then, in four hundred years of different hands, a Clerk has been unable to help himself. {i}Lovely.{/} {i}My daughter was born.{/} {i}I do not think we issued this one. I think it was a present.{/}" },
        { name = "the drawer for the Long Winter", description = "Nine years of cards, each stamped {i}NOT ISSUED{/} in red, harder every year. By the ninth the stamp has gone through the card." },
      },
      actions = {
        { "Look up your birthday", say "You find the card. {i}Issued: showers. Observed: showers, clearing at the moment in question.{/} Under Remarks, in a neat hand that cannot have known you: {i}Somebody was pleased.{/}" },
      } },
    { name = "the far end",
      description = "Past the oldest bay the vault goes on, unshelved, into the dark. There is a draught from it, quite warm. You walk until the lamp is a spark behind you. The floor is smooth. There are no more jars. There is room for them.",
      actions = {
        { "Call into it", say "\"Hello?\" No echo comes back. A vault of this length owes you an echo. You have been short changed, or else the sound has gone on to somewhere it can be of use. You walk back toward the lamp a little faster than you came." },
      } },
    { name = "a stool and a book",
      description = "Halfway along, pulled up to a shelf. A junior clerk's. The book is poems. He comes down at lunch, takes out a day from the summer before last, and sits with it on his knee, not opening it, only holding it. Mr Mild knows. He has docked nobody's pay." },
    { name = "the stair",
      description = "Forty steps up to the back of the barometer. A pen is scratching at the top of it, ruling a line, and taking care to be heard doing so." },
  },

  exits = {
    { to = "le_weather_office", label = "Up the stair", description = "Out past the barometer, into an office that will tell you it is fair." },
  },
}
