-- The Last Chance, and the room at the back of it where a society has been about to act since the old king's time.

space {
  id = "gl_inn",
  region = "glowers",
  name = "The Last Chance",
  description = "The inn at Lower Wince, entered by the back because the front has been bolted since the reign before last. A low room, a fire, a bar, and garlic hanging from every beam so thickly that tall men drink sitting down. It calls itself the last chance to turn back. Everybody who has ever drunk here has turned back, and stayed for another.",
  palette = { bg = "#120d0b", text = "#d8ccba", dim = "#786a58", accent = "#e0a850", border = "#4a3828" },
  ambience = {
    flicker { color = "#ffb060", strength = 0.2 },
    steam { glyphs = "˙·∙", color = "#6a6258", rate = 0.25 },
  },

  things = {
    { name = "the landlord",
      key = "gl_dobble",
      icon = "☺",
      description = "Ham Dobble, broad, bald and unhurried, polishing a tankard with a cloth that is making it worse. He has kept the Last Chance for thirty years and sold a last drink to four hundred people who were going up to the castle in the morning. Three went. They came back the next day, he says, fatter.",
      things = {
        { name = "his apron", description = "Leather, with a pocket for the corkscrew and a second, smaller, for a clove of garlic. He takes the clove out when he talks to you. It is manners." },
        { name = "his cloth", description = "It was white when the inn opened. He will not have another. He says it knows the glasses." },
      },
      actions = {
        { "Order a drink", say "\"Going up?\" he says, drawing it. You say you thought you might. He sets down a pint of something dark with a clove floating in it. \"On the house, then. Last one always is.\" It is the fourth-best beer you have had and the first to bite back." },
        { "Ask why the garlic", say "\"What garlic?\" You look up. He looks up. A string of it is resting on his head. \"Oh, that. Keeps the flies down.\" You say you have seen no flies. He spreads his hands, a man whose point has been made for him." },
        { "Ask about the Count", say "\"Never met him. Nobody has. He sends down for a barrel of the dark every Michaelmas and it comes back empty at Lady Day with a note.\" What does the note say? \"Says 'Excellent.' Then asks if I've changed the hops. I had. Took him one sip.\" He is torn between dread and professional pride and it shows." },
        { "Give the countersign", when = all { flag "gl_knows_motto", no(flag "gl_hunters_open") }, set "gl_hunters_open",
          say "You lean in. \"Is it tonight?\" He stops polishing. He looks at the door, the window, the fire. \"Not tonight,\" he says, low, \"but soon.\" Then he reaches under the bar and something behind the settle goes {i}clack{/}. \"Through the back of the snug. Mind the sherry. You'll be the first new member since my dad.\"" },
        { "Give the countersign", when = flag "gl_hunters_open",
          say "\"Not tonight, but soon,\" he says, without looking up, and jerks his head at the snug." },
      } },

    { name = "the bar",
      description = "Elm, black with age, with a brass rail and a row of dents where generations have put their heads down.",
      things = {
        { name = "the row of mugs",
          description = "Pewter, on pegs, a name on each. Every handle has a little wreath of garlic skin wound round it, to keep the owner safe while drinking.",
          things = {
            { name = "the sexton's mug", description = "Earth in the seams of the handle. He drinks standing up. He says he spends enough time below floor level." },
            { name = "the widow Lumm's mug", description = "The smallest on the row, for the look of the thing. She has it filled four times." },
            { name = "a mug with a black ribbon", description = "Kept for the Count. Hung there by Ham's great-grandfather as a joke, and dusted since as a precaution. Nobody would dream of using it and nobody would dream of taking it down." },
            { name = "the travellers' mug", description = "Chained to the peg. Scratched round the rim are tally marks, one for each person who drank from it meaning to go up to the castle. There are four hundred. Three are circled." },
          } },
        { name = "the pumps", description = "Two. {i}Dark{/} and {i}Darker{/}. A third handle at the end has no label and draws beetroot wine, laid down for the castle. It is the colour you would expect. Villagers will not look at it being poured." },
        { name = "a jar of pickled garlic", description = "A gallon of it, in brine. Offered free with every drink. Refusing is noted." },
        { name = "the slate", description = "The village's tabs, in chalk. At the bottom, in a different and exquisite hand in red crayon: {i}One barrel, dark. Paid, with thanks. R.{/} Nobody saw it written. Nobody has dared rub it out." },
        { name = "a row of wooden stakes", description = "In a pot behind the bar, like breadsticks. They are sold to travellers at a penny each. Ham whittles them of an evening from kindling. He says the points are not up to much, but people like to be holding something." },
      } },

    { name = "the fire",
      description = "Peat, in a hearth with a crane and a kettle, and a mantel carved with a row of small frowning hills.",
      things = {
        { name = "the mantel", description = "Seven hills, in oak, glowering. A candle in front of each. Under the seventh hill somebody has carved a tiny castle, and in the castle, a pinprick filled with a chip of yellow glass that catches the firelight." },
        { name = "the settle", description = "High-backed, to keep the draught and the castle off your neck. The men of Lower Wince sit here with their backs to the hill and tell each other what he gets up to. None of it has been true yet." },
        { name = "a dog", icon = "d", description = "A brindled lump across the hearth. It wears a collar of garlic and silver studs, and has the resigned look of a dog that would smell better without help.",
          actions = { { "Scratch its ears", say "It groans, rolls, and offers a stomach. The garlic collar slips round under its chin. It sneezes, and looks at you as if you had done that." } } },
        { name = "a poker", description = "Iron, plain. It is a poker. After Hobmoor you check." },
      } },

    { name = "the regulars",
      description = "Six or seven, in the settle and along the wall, in the attitudes of people who were saying something until you came in.",
      things = {
        { name = "an old man in the corner",
          description = "With a pipe, a pint, and a finger he has been waiting to raise. He is the one who tells strangers not to go up there. He holds the post by seniority and gets his beer for it.",
          actions = {
            { "Say you are going up to the castle", say "The room goes silent. The fire pops. The old man takes his pipe out, slowly, and levels the stem at you. \"They do say,\" he says, \"that them as goes up to Regret...\" He lets it hang. You wait. \"...is asked to stop to dinner.\" A woman crosses herself. \"Five courses,\" somebody whispers. \"And he {i}watches you eat{/}.\"", fx "flash" },
          } },
        { name = "two farmers", description = "Garlic men, with the hands for it. They are discussing blight. One of them has a theory that it comes down off the hill by night. The other points out that the only thing that comes down off the hill by night is the man who mends the road, and blight is not his style." },
        { name = "a pedlar", description = "From outside, with a tray of charms: silver crosses, rowan twigs, bottled sunbeams. He has sold out here every year for twenty years and has never once asked himself why the stock still works." },
        { name = "a girl doing sums", description = "Ham's daughter, Posy, at the end table with a slate. She is working out how many dinners the Count has laid for nobody. She makes it two hundred and nineteen thousand. She has put, underneath, {i}that is sad{/}, and then rubbed it out in case anyone saw." },
      } },

    { name = "the snug",
      description = "A panelled nook behind the settle, with a table for four and a door curtain.",
      things = {
        { name = "the panelling", description = "Oak, dark, in squares. One square at the back has a brighter edge than the others, the way a thing has that is opened.",
          variants = {
            { when = flag "gl_hunters_open", description = "Oak, dark, in squares. The square at the back stands ajar on a hinge. Beyond is a short passage and a smell of sherry and beeswax." },
          } },
        { name = "a framed list", description = "{i}Chairmen of the Lower Wince Bowls Club{/}, in gold leaf, going back three centuries. Lower Wince has no bowling green. It is on a slope." },
      } },

    { name = "the garlic in the rafters",
      description = "Plaits, ropes, nets, bunches, a chandelier of it. When the door opens it all sways together, rustling.",
      things = {
        { name = "the oldest string", description = "Over the fire, black as tar and hard as oak. It was hung the year the inn was built. It no longer smells of anything, and so by village reckoning is no longer working, and is kept up for sentiment." },
        { name = "a single onion", description = "Among ten thousand heads of garlic, one onion, hung by mistake. Everybody knows it is there. It is referred to as the weak point and nobody will sit under it." },
      },
      actions = {
        { "Take a clove", say "You twist one off. Every head in the room turns. \"That's holding the roof up, that is,\" says Ham, and takes it from you, and ties it back on with a bit of thread." },
      } },

    { name = "the kitchen",
      description = "Through a hatch: a range, a deal table, and a woman who cooks with everything in the room at once.",
      things = {
        { name = "Mrs Dobble", description = "Red-armed and cheerful, with a knife going so fast it hums. She came from Saltwick to marry Ham and found out about the garlic afterwards. She says that at least it is not fish." },
        { name = "the stockpot", description = "Garlic soup. It has been on since the Dobbles took the inn and is topped up from the same string. A spoon stands in it.",
          actions = { { "Ask for a bowl", say "It comes through the hatch with a heel of bread. It is very good. It is so good that you forget, for the length of the bowl, what it will do to any conversation you have for the next two days." } } },
        { name = "the spice shelf", description = "Salt. Garlic salt. Dried garlic. Garlic in oil. A tin of cinnamon, unopened, kept in case of visitors." },
        { name = "a crate by the back door", description = "Stencilled {i}BEETROOT, BEST{/}, for the castle. The carter has left one behind. Mrs Dobble is using it as a step and intends to go on doing so." },
      } },

    { name = "the cellar hatch",
      description = "A trap behind the bar.",
      things = {
        { name = "the cellar", description = "Cool, whitewashed, with a spring running down one wall into a stone trough.",
          things = {
            barrel { name = "a barrel of Dark", description = "On the stillage, sweating. The hops are from the south side of the sixth Glower, where the frown gives shelter." },
            barrel { name = "a barrel with a black band", description = "Set apart, chalked {i}R.{/} It goes up at Michaelmas. Ham tops it off himself and will not let the boy near it. A man has his pride, even in front of a vampire." },
            rat { description = "On the trough's edge, drinking. Even the rats in Lower Wince smell a little of garlic. The cats have gone off them." },
          } },
      } },

    { name = "the stairs",
      description = "Up to three rooms under the thatch.",
      things = {
        { name = "the front room",
          description = "The one they give to people going up in the morning.",
          things = {
            { name = "the bed", description = "A box bed, with doors. You get in and bolt yourself shut. There is a wreath on the inside, a crucifix, a horseshoe and a bell pull. The bell pull is not connected to anything. Ham says it helps people settle." },
            { name = "the window", description = "Nailed shut, shuttered, barred, and with a notice: {i}DO NOT INVITE ANYONE IN.{/} Underneath, in pencil, the collected remarks of four hundred guests, most of them {i}who?{/}" },
            { name = "the guest book", description = "On the wash stand. Names, dates, and under {i}Purpose of visit{/} the same proud answer down every page: {i}To slay the fiend{/}. Under {i}Remarks on leaving{/}: {i}Weather turned. Horse lame. Remembered an appointment. Very good soup.{/}",
              actions = { { "Sign it", say "You write your name. Under purpose you put {i}to look{/}. It is the only entry of its kind in the book. You leave the last column empty, and for once that seems to you a promise." } } },
          } },
        { name = "the back room", description = "Let to the pedlar. His stock is laid out to air: forty silver crosses on a string. They are tin. He knows. The silversmith who sells them to him knows. By now the crosses probably know." },
        { name = "the little room", description = "Posy's. A cot, a shelf of books, and on the sill a spyglass on a stand, trained through a knot hole in the shutter on the lit window. Beside it, a slate with times on: {i}Lamp trimmed 6. Passes window 7, 7.15, 7.30. Stands a long time 9. Lamp never out.{/}" },
      } },

    { name = "the inn sign",
      description = "Outside, over the bolted front door: a traveller with a bundle, looking up at a hill, with one foot off the ground. Whether the foot is going forward or back the painter has left open. Ham says it depends how much you have had." },

    { name = "the back door",
      description = "The one everybody uses. It has no bolt at all. Ham's reasoning is that anything from the castle would be much too well bred to come in by the back.",
      actions = {
        { "Look out", say "Garlic field, church, graveyard, hill. And the window. From here it is exactly level with your eye, as though whoever built the back door wanted to keep an eye on it too, or wanted it to keep one on them." },
      } },

    candle { name = "a candle in the window", description = "Burning behind the bolted shutter, where nobody outside can see it. It has been lit every night for three hundred years to guide travellers to the inn. Nobody has liked to point out the shutter." },
  },

  exits = {
    { to = "gl_village", description = "Out the back and round to the green." },
    { to = "gl_hunters_room", description = "Through the panel in the snug.",
      requires = flag "gl_hunters_open", hidden = true },
  },
}

space {
  id = "gl_hunters_room",
  region = "glowers",
  secret = true,
  name = "The Vigilant Society",
  description = "A long room without windows behind the snug, panelled, carpeted and lit by a ring of candles. A table with twelve chairs. Maps, weapons, a minute book the size of a paving stone. Here, on alternate Fridays for three hundred years, the men of Lower Wince have met in secret to plan the destruction of the Count, and have adjourned.",
  palette = { bg = "#110c0c", text = "#dccfc4", dim = "#7a6860", accent = "#d06050", border = "#503028" },
  ambience = { flicker { color = "#ffa060", strength = 0.15 }, dust { glyphs = "·˙", color = "#5a4a44", rate = 0.1, speed = 0.1 } },

  things = {
    { name = "the table",
      description = "Oak, twelve feet, scarred by tankards and by one dagger, driven in for emphasis in the year of the comet and never got out.",
      things = {
        { name = "the chairman's chair", description = "Carved with a rising sun. The arms are worn pale. Ham Dobble's now, as it was his father's, and it tips back on two legs in exactly the place his father tipped it." },
        { name = "the dagger in the table", description = "Buried to the hilt. A label on a string: {i}Bro. Marrable, Extraordinary Meeting, on the motion that we go up THIS VERY NIGHT. Motion referred to subcommittee.{/}",
          actions = { { "Pull it out", say "You brace a boot on the table and heave. It has been in there for two hundred and forty years of sherry and polish. The table lifts. The dagger stays. You set the table down again, quietly, and straighten the label." } } },
        { name = "the decanter", description = "Sherry, sweet, half down. Twelve small glasses. The Society's rules allow one glass before business and one after. The business has been getting shorter." },
        { name = "the agenda", description = "For the next meeting, in Ham's block capitals. {i}1. Apologies. 2. Minutes. 3. Matters arising (the Count). 4. Bowls club accounts. 5. Any other business. 6. Is it tonight?{/} Item six has a pencil tick beside it already, and the word {i}no{/}." },
      } },

    { name = "the minute book",
      description = "Bound in black calf with silver corners, on its own lectern. Seven thousand eight hundred meetings.",
      things = {
        { name = "the first page", description = "In Sir Bors Halloran's hand, huge and impatient: {i}Resolved, that the Fiend of Regret be destroyed without delay.{/} Carried unanimously. Then: {i}Resolved, that a plan be drawn up first.{/} Carried. {i}Resolved, that the plan be a good one.{/}" },
        { name = "a page from the middle", description = "{i}Bro. Gall reported that the Fiend had been seen on the low road at midnight, on his knees. Sensation. Asked what the Fiend was doing, Bro. Gall said, re-laying setts. Resolved, to watch the situation.{/}" },
        { name = "the latest page", description = "{i}The Chairman reminded Brothers that the Society exists to end the Night and not solely for sherry. Hear, hear. Bro. Lumm (junior) asked what, in point of fact, the Fiend had done. The Chairman said that was not the question. Bro. Lumm asked what the question was. Meeting adjourned.{/}" },
      },
      actions = {
        { "Look for a meeting where they went", say "You turn three centuries of pages. They came close in the year of the comet. They came close again when the beer went off and it was felt to be his doing. Once, a party of six got as far as the garlic cart, where it came on to rain. The entry reads: {i}Returned in good order.{/}" },
      } },

    { name = "the wall of weapons",
      description = "Racks, floor to ceiling, of everything that has ever been thought good against the undead. All of it is clean, oiled and labelled.",
      things = {
        { name = "crossbows", description = "Six, with silver-tipped bolts. The strings are changed every spring. They were last loosed at a harvest fair, at a target, and the Society took second." },
        { name = "a rack of mallets", description = "Twelve, numbered, one for each Brother. Number seven has been used. It has paint on it. He borrowed it to knock in fence posts." },
        { name = "holy water", description = "A cask of it, blessed by a bishop in the old king's time, with a tap. There is a tin mug on a chain and a notice: {i}NOT FOR DRINKING. This means you, Bro. Pell.{/}" },
        { name = "a net of garlic", description = "Weighted at the corners, for throwing. It was thrown once, in practice, over Brother Cray, and the smell did not leave him. He is buried under it." },
        { name = "a looking-glass on a pole", description = "To see whether a stranger casts a reflection. It is kept by the door. It was last used by the present chairman, who wanted to know if his bald patch had got bigger." },
      } },

    { name = "the velvet case",
      key = "gl_stake_case",
      visible_if = no(item "gl_stake_unused"),
      description = "On a stand of its own under two candles: a long case of purple velvet with a silver clasp, open. In it, on white satin, lies a stake of pale ash with gold letters down its length. The Society's one relic. Every member has held it. None has carried it out of the room.",
      things = {
        { name = "a card in the lid", description = "{i}The Stake of Saint Orrin. To be taken up the hill by the Brother appointed, on the night appointed.{/} Then a column of names of Brothers appointed, each crossed through, with a reason. {i}Chest. Lambing. Wife. Chest. Did not like the look of the sky.{/} The last line is blank and has been waiting." },
      },
      actions = {
        { "Take the stake", once = true, give "gl_stake_unused",
          say "You lift it out. It is lighter than you expected and it leans in your hand toward the door. In the lid there is a pencil on a string. You are the newest member, and nobody else is here. You write your own name on the last line, and under {i}reason{/} you leave room.", fx "sparkle" },
      } },
    { name = "the empty case", visible_if = item "gl_stake_unused",
      description = "Purple velvet, white satin, and a dent the length of a cubit. Your name is on the card. The Society will find it gone on Friday week, and you would give a good deal to read the minutes." },

    { name = "the map",
      description = "The castle, drawn from the village by spyglass over many generations, six feet square. Every window numbered. Every chimney. A dotted line labelled {i}Route of assault{/} goes boldly up the lane as far as the third bend and then becomes a number of smaller dotted lines, with question marks.",
      things = {
        { name = "the lit window", description = "Ringed in red. A note: {i}Dining room. He is in it every night from seven. He is alone. Query: why does he lay the table?{/} A later hand: {i}Query: why do we care?{/} A third: {i}We do not. Struck from the minutes.{/}" },
        { name = "a flap of paper", description = "Pasted over the foot of the crag and marked {i}Here be devils (reported){/}. Lift it and the older map beneath shows a small door and the words {i}tradesmen{/}." },
      } },

    { name = "portraits of the chairmen",
      description = "Twenty-two of them down the long wall, in oils, each holding the stake and looking resolute.",
      things = {
        { name = "Sir Bors Halloran", description = "In armour, with a jaw like a mounting block. He is pointing at something out of frame. The painter has put a tankard just in reach of the other hand." },
        { name = "the ninth chairman", description = "A thin man with a kind face. The plate says he served for forty years and resigned on being asked by a child what the Count had ever done to him. There is a nail hole where his portrait was taken down, and a brighter nail where it was put back." },
        { name = "Ham Dobble's father", description = "The spit of Ham, with hair. He is resolute like the rest. But his eyes have slid sideways, toward where the window would be if the room had one." },
      } },

    { name = "a chest of regalia",
      description = "Sashes, in black and gold, with a rising sun. A gavel. A banner on a pole, furled.",
      things = {
        { name = "the banner", description = "You unroll an arm's length. Black silk, a gold sun coming up over seven hills, and the words {i}NOT TONIGHT BUT SOON{/}. It has been carried in procession exactly as far as the bar." },
        { name = "the gavel", description = "The head is ash, from the same tree as the stake. It has done three hundred years of knocking for order, and so has seen far more action." },
      } },

    { name = "the subscription box",
      description = "Iron, with a slot. Tuppence a meeting toward the Great Expedition. It is very heavy.",
      actions = {
        { "Shake it", say "It does not rattle. It is packed solid. Three hundred years at tuppence a fortnight, twelve Brothers: the Society could buy the castle outright and has never once thought of it." },
      } },

    { name = "a letter under glass",
      description = "Framed, hung by the door where each Brother passes it going out. Cream paper, black edge. {i}The Count of Regret has learned that a Society meets on Fridays with a view to his destruction, and begs to say that Fridays are quite convenient. He will be at home. He wonders whether the gentlemen would care to stay to supper afterwards.{/}",
      things = {
        { name = "the Society's note", description = "Pasted beneath in twelve different hands: {i}A TRAP{/}. {i}Clearly a trap.{/} {i}What sort of supper?{/}" },
      } },

    { name = "the ring of candles",
      description = "Twelve, in an iron hoop on chains, one for each Brother. A thirteenth socket is empty.",
      things = {
        candle { description = "The chairman's. Thicker than the rest. He provides his own." },
        { name = "the thirteenth socket", description = "Never filled. The founding rules provide a seat and a light for {i}such one as shall at last go up{/}. There is wax in it now, a single cold drop. It was not there, you think, when you came in." },
      } },
    { name = "the attendance board",
      description = "A slab of varnished oak with gilt lettering: every member of the Vigilant Society who ever went up to the castle, with a column for the date and a column headed {i}OUTCOME{/}.",
      things = {
        { name = "the first entry", description = "{i}Sir Bors Halloran. Went up armed. Outcome: was asked to stay to dinner. Declined. Regretted it. (The dinner.){/}" },
        { name = "the middle entries", description = "{i}Went up. Was shown the roses. Went up. Was lent a book. Went up; he was out; left card.{/} Forty names. Not one stake." },
        { name = "the last entry", description = "{i}H. Dobble, Chairman. Got as far as the gate. It was raining. Came back for a hat.{/} The date is eleven years old. The hat is on a peg under the board." },
      },
      actions = {
        { "Add your name", say "There is a pot of gold paint and a brush gone hard. You scratch it in with the wrong end. {i}Went up.{/} You leave the outcome blank. It seems to be the custom." },
      } },
    { name = "the Society's library",
      description = "A single shelf, chained, of works on the undead and their destruction.",
      things = {
        { name = "the oldest book", description = "{i}A Certain Method.{/} Hand-written. The certain method turns out to need a virgin, a white horse, and a week of dry weather, and the Society has never had all three in the same month." },
        { name = "a book with a rose pressed in it", description = "Lent from the castle library, a hundred and forty years overdue. {i}On the Care of Old Climbers.{/} The fine is noted on a slip in an elegant hand: {i}Pray do not trouble. Keep it. R.{/}" },
        { name = "a pamphlet", description = "{i}Is Your Neighbour One? Twelve Signs.{/} Somebody has gone through it ticking the signs against Ham Dobble's mother-in-law. She scores nine." },
      } },
  },

  exits = {
    { to = "gl_inn", description = "Back through the panel to the fire and the garlic." },
  },
}
