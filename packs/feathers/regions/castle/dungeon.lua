space {
  id = "castle_dungeon",
  region = "castle",
  name = "The Dungeons",
  description = "Forty steps down, the castle keeps its word about dungeons: black stone, iron rings, a brazier, a rack. Then you look again. The rings have coats on them. Somebody has put a rug down.",
  palette = { bg = "#0b0b0e", text = "#c4c2c0", dim = "#64626a", accent = "#d08a50", border = "#3a343a" },
  ambience = {
    drip { glyphs = "⠁⠂⠄⡀", color = "#56607a", rate = 0.2 },
    flicker { color = "#d08a50", strength = 0.12 },
  },

  things = {
    { name = "Grist",
      key = "jailer",
      description = "The jailer: a broad man with a ring of keys and a mug. His were the eyes at the slot. The rest of him is less alarming, and he knows it, which is why there is a slot.",
      things = {
        { name = "his ring of keys", description = "Forty, iron, each as long as a hand. He knows every one by its weight. Thirty-nine of the locks have rusted open and he carries the keys for the noise." },
        { name = "his mug", description = "Tin, a quart, with {i}HEAD GAOLER{/} punched into it with a nail. There is one gaoler. He promoted himself the day the other retired, and held a small supper." },
        { name = "his box", description = "A wooden box by the door, a foot high. He stands on it to look through the slot. He would thank you not to mention the box." },
      },
      actions = {
        { "Show the warrant", say "He reads it twice. \"Doesn't say what for.\" He holds it to the brazier. \"That's his thumb, though. That's garden.\" He hands it back with something close to respect. \"Look at what you like. Don't feed Pelham, he's had his.\"" },
        { "Ask who is locked up", say "\"Locked,\" he says, and laughs, and stops when he sees that you mean it. \"There's the one. His door's been open since the old King died. He likes it shut at night. I shut it.\"" },
        { "Ask about the bolts", say "\"Nine. Top to bottom. I do them every time, in order, and I say the number.\" He is shy about it. \"A dungeon wants a bit of ceremony. Otherwise it's a cellar.\"" },
      } },
    { name = "the guardroom",
      description = "The first chamber at the foot of the stair: a table, two benches, a brazier, and iron rings in the wall at the height of a raised arm.",
      things = {
        { name = "the iron rings", description = "For chaining prisoners upright. Each has a coat on it, or a hat. One has a string bag of onions. The ring by the door has a lantern, and under it, chalked: {i}Take this if going down the hole. Bring it back.{/} There is no lantern on it." },
        { name = "the brazier", description = "A basket of coals on three legs. There are irons in it, heating. They are toasting forks. Grist does a round of toast at four and takes one in to the end cell." },
        { name = "the table",
          description = "Scarred oak. A game of draughts is set out on it, half played.",
          things = {
            { name = "the draughts", description = "Black is Grist. White is Pelham, who comes out for it on Sundays. White is winning, and has been since the old King died, and Grist says that it is a long game." },
            { name = "the day book", description = "{i}Prisoners: 1. Escapes: 0. Complaints: 1 (toast).{/} Every day, for years. On one page somebody has written, under complaints, {i}withdrawn, it was very nice{/}." },
          } },
        { name = "the rug", description = "Red and blue, from somewhere foreign, a little singed at one corner. It was seized from a smuggler in the last reign and was meant to go up to the Hall. It got as far as here." },
      } },
    { name = "the rack",
      description = "The real thing: oak, rollers, a wheel with handles. There are shirts on it.",
      things = {
        { name = "the shirts", description = "Drying. The rack gives a very even stretch. The whole guardroom sends its linen down." },
        { name = "the wheel", description = "Four handles, polished by use. It has a ratchet, and a brass plate from the maker: {i}Pilbeam and Son, Engines of Persuasion. Also Mangles.{/}" },
      },
      actions = {
        { "Turn the wheel", say "A sleeve gets slightly longer. Grist takes your hand off the wheel, gently, as you would with a child at a loom." },
      } },
    { name = "the Royal Torturer",
      key = "torturer",
      description = "A thin man in a leather apron, at a desk, filling in a form. The post is hereditary and has not had a client in sixty years. Every quarter he must account for that in writing, to an office that does not answer. It has done to him what he is not allowed to do to anybody else.",
      things = {
        { name = "his instruments",
          description = "Laid out on a cloth: oiled, sharp, labelled. One of them is in use, as a paperweight.",
          things = {
            { name = "the thumbscrews", description = "Brass, exquisite. He cracks walnuts with them at midwinter and gives the walnuts to Pelham." },
            { name = "a thing with a spring", description = "You pick it up. You turn it over. \"Nobody knows,\" he says. \"It came down from my grandfather with a look. I keep it sharp in case it is asked for by name.\"" },
            { name = "the pincers", description = "Long, black, with a red silk tassel on the handle. His mother put the tassel on. She thought the set looked severe." },
          } },
        { name = "his leather apron", description = "Spotless. It has a bib pocket with three pens in it." },
        { name = "a portrait of his father", description = "On the wall behind the desk: a thin man in a leather apron, at a desk, filling in a form." },
      },
      actions = {
        { "Ask what the form is", say "\"Form 12: Nil Return, Torments.\" He turns it so that you can see. Sixty years of them, his and his father's, each saying {i}none{/}. \"If I miss a quarter,\" he says, \"they send an inspector. To see why I am not doing it properly.\"" },
        { "Volunteer", say "His pen stops. He looks at you with a hope that is terrible to see. Then it goes out. \"You have to be {i}sent{/},\" he says. \"With a warrant that says what for. Yours is blank. I looked.\" He goes back to the form. \"It was kind of you.\"" },
      } },
    { name = "the iron maiden",
      description = "Standing against the wall, seven feet of black iron in the shape of a woman, with a door in the front. It is ajar.",
      things = {
        { name = "inside it", description = "The spikes were taken out in the old King's time and sold as railings. There are hooks instead, and on the hooks Grist's other tunic, his good hat, and a suit of clothes for funerals. It is the driest cupboard in the castle." },
      },
      actions = {
        { "Shut the door", say "It closes with a boom that goes down the passage and comes back. From the end cell a voice calls, \"Is that four o'clock?\"" },
      } },
    { name = "the stocks",
      description = "Oak, with holes for neck and wrists, on a platform. They have been turned on their side and fitted with a shelf. Grist keeps his boots in the wrist holes." },
    { name = "the first cell",
      description = "The door is off, and leaning on the wall. Inside, on straw: barrels.",
      things = {
        { name = "the barrels", description = "Ale, for the guardroom, kept here because it is cool. Each is chalked with a date and, in a second hand, a mark out of ten." },
        { name = "a set of manacles", description = "Bolted to the wall, open. One cuff holds a tap. The other holds a mallet." },
      } },
    { name = "the second cell",
      description = "Shelved, and full of things with labels on string. {i}EVIDENCE{/}, says a board over the door.",
      things = {
        { name = "a stuffed duck", description = "On the top shelf, on a stand, looking down the passage toward the end cell. {i}Exhibit A.{/} It has a mean little glass eye. You see, somewhat, the Chancellor's point, and somewhat Pelham's." },
        { name = "a sack of false coin", description = "Lead, washed with gold, seized at the Aldmoor Gate. The coiner got five years. The coins are better made than the Mint's and for a while the Treasury put in to borrow them." },
        { name = "a lute with no strings", description = "{i}Exhibit: instrument on which the forbidden song was played, to the public danger.{/} The strings were cut and sealed in a separate bag. The bag hums." },
        { name = "a single left boot", description = "{i}Found at scene.{/} No scene is given. It has been evidence for ninety years and is still, the label insists, material." },
      } },
    { name = "the third cell",
      description = "The door is shut, and there is a man inside, in rags, in chains, on straw, groaning. He stops when he sees you and gets up to shake hands.",
      things = {
        { name = "the official prisoner",
          description = "Walter Shackle, a retired actor, on four pence a day. When the inspector comes from the office that does not answer, there has to be somebody suffering, or questions are asked. He has played the part for nine years and gets very good notices.",
          things = {
            { name = "his chains", description = "Papier-mâché, painted. He made them himself. They rattle if he shakes a tin of nails that he keeps behind him." },
            { name = "his rags", description = "A costume, kept on a hanger. The dirt is greasepaint. He has a clean set for matinees." },
          },
          actions = {
            { "Ask for a groan", say "He clears his throat, turns his face to the wall, and produces a sound of such long and hopeless misery that the hair stands up on your arms. From down the passage comes a patter of applause: Grist, the Torturer, and somebody with a napkin." },
          } },
      } },
    { name = "the fourth cell",
      description = "Empty, swept, with a window slit and a stone bench. Scratched into every wall, from floor to as high as an arm will go, is writing.",
      things = {
        { name = "the oldest scratches", description = "Tallies, in fives. Days, then weeks. They run round three walls and stop in the middle of a five." },
        { name = "a verse", description = "{i}Here I lie for stealing bread. / I'd do it again, but ham instead.{/}" },
        { name = "a drawing of a ship", description = "Three masts, every rope, done with a nail over what must have been years. On the deck there is one small figure, waving, at whoever would one day stand here and look." },
        { name = "the newest scratch", description = "Low down, fresh, in careful capitals: {i}GRIST WOZ ERE{/}. And under it, more careful still: {i}SO WOT. P.{/}" },
      },
      actions = {
        { "Add your name", say "You find a nail and put it under the others, small. It is the first time you have written it on anything that will last. It is in a dungeon. You feel that this is about right for the stage your career has reached." },
      } },
    { name = "the fifth cell",
      description = "Bricked up. There is no door, only a patch of newer stone the shape of one, and a slate hung on a nail in it.",
      things = {
        { name = "the slate", description = "{i}Mushrooms. Do not open. G.{/} A faint good smell of earth comes through the mortar. Grist supplies the kitchen. Mistress Dobbin does not ask where they are grown, either." },
      } },
    { name = "the end cell",
      key = "end cell",
      description = "The door is open. Inside: a bed with a quilt, a shelf of books, a geranium in the window slit, and a small old man in a chair with a napkin tucked into his collar.",
      things = {
        { name = "Old Pelham",
          key = "pelham",
          description = "Put in thirty-four years ago, over a duck. Sentence: twenty years. He has done the sum. He has decided not to bring it up, in case they notice.",
          actions = {
            { "Ask about the duck", say "\"It was the Chancellor's duck,\" he says, \"and it was my pond. That's all I'll say. The duck knows what it did.\"" },
            { "Admire the cell", when = no(flag "knows_tunnel"), set "knows_tunnel",
              say "You say that it is the nicest room you have seen in the castle, and it is. Pelham goes pink. \"You've not seen the best of it.\" He gets up, shifts the bed a foot to the left, and lifts the rug. \"Twenty years, with a spoon. Go on. Mind the bend, I went round a pipe.\"" },
            { "Ask why he stays", say "\"Where would I go?\" he says. \"I've the quilt. I've the geranium. Grist does toast.\" He smooths his napkin. \"Out there I'd be an old man who'd been in prison. In here I'm the prisoner. There's only the one. People come down specially.\"" },
          } },
        { name = "the geranium", description = "Red, in a cracked mug, turned daily towards the slit. It gets an hour of sun at midsummer and makes it last." },
        { name = "the spoon", description = "On the shelf, in the place of honour. Pewter. The bowl is worn down to a crescent the width of a fingernail." },
        { name = "the quilt", description = "Patchwork, hundreds of pieces, all the same grey. He made it from thirty-four years of prison shirts. The stitching is very fine. Round the border, in darker grey, he has worked a row of small ducks, and through each one a single neat stitch." },
        { name = "the shelf of books",
          description = "Nine volumes, lent from above by somebody who signs the flyleaf {i}H.{/}",
          things = {
            { name = "a book on vegetable growing", description = "Much thumbed. Pelham has no soil but the geranium's. He reads it as other men read voyages." },
            { name = "a history of drains", description = "A complete one. He says that it was a great help with the pipe." },
          } },
        { name = "the door of the cell", description = "Oak, a hand thick, with a grille. On the inside he has fitted a small brass bolt of his own. \"So I can have a bit of privacy,\" he says." },
      } },
    { name = "the dungeon rats",
      icon = "r",
      description = "Three, sleek, sitting in a row by the brazier at toast time. They are not chased. There is a fourth plate.",
      actions = {
        { "Count the plates", say "Grist's. Pelham's. The Torturer's. And a saucer, on the floor, with crusts cut small. \"They're company,\" says Grist, not meeting your eye. \"It's a dungeon. You get fond.\"" },
      } },
    { name = "the inspector's chair",
      description = "A good chair, upholstered, with a footstool, kept under a dust sheet at the end of the passage. It faces the rack. It is for the inspector from the office, should he ever come. Beside it is a small table with a decanter, and a bell to ring if he would like anything made louder." },
    { name = "the hole in the floor",
      description = "A round hole in the lowest passage, with its iron grille hinged back and a ladder going down. No light goes down with the ladder. The torches on the wall lean, very slightly, the other way.",
      things = {
        { name = "the grille", description = "Bars as thick as your wrist, with a lock the size of a loaf. It was made to keep things in. Nobody has ever been able to think of anything down there that wanted to come out." },
        { name = "the ladder", description = "Ash, forty rungs that you can see. The top ones are worn. The lower ones are not." },
      },
      actions = {
        { "Call down", say "Your voice goes in and is not sent back. It has not been lost. It has been kept." },
      } },

    { name = "the key board",
      description = "A plank by the guardroom door with a row of hooks, each labelled in poker work.",
      things = {
        { name = "the cell keys", description = "Five, on their hooks, bright with disuse. The sixth hook, for the end cell, is empty. Pelham has that one. It seemed simpler." },
        { name = "a hook marked 'Oubliette'", description = "No key. A tag instead: {i}It is a hole. It does not lock. Nobody has ever wanted in.{/}" },
        { name = "a hook marked 'Dire Peril'",
          description = "A big iron key with a skull for a bow, furred with dust, and a Corporation label. Grist says a man from Aldmoor left it thirty years ago, for safe keeping, and said he would be back Monday.",
          actions = {
            { "Ask what it opens", say "\"Couldn't tell you. He said it was the front door of the finest dungeon in the kingdom.\" Grist looks round his own, at the shirts drying and the geranium. \"I didn't take offence. I've never held with front doors on dungeons. It gives the wrong idea.\"" },
          } },
      } },
    { name = "a suggestions slot",
      description = "Cut in the guardroom door, with a board: {i}PRISONERS' SUGGESTIONS. ALL WILL BE READ.{/} There is one prisoner. The box is emptied weekly.",
      things = {
        { name = "this week's suggestion", description = "A slip, in Pelham's hand: {i}The toast was a shade pale on Tuesday. Otherwise no complaints. P.{/} Grist has written beneath it: {i}Noted. Sorry.{/}" },
      } },
    { name = "a row of shirts, drying",
      description = "On a line across the torture chamber, between the rack and the maiden. Grist takes in washing for the garrison. The rack, he points out, is the best mangle in the castle." },
    { name = "a cell door used as a table",
      description = "In the guardroom, across two barrels: a door of black oak with a grille. It did not come from any cell down here. It is too good. It has a brass plate, {i}Knock and Wait{/}.",
      things = {
        { name = "the brass plate", description = "Somebody has scratched under it with a pin, a little at a time: {i}and Wait, and Wait{/}. Grist says that the door came on the carts from the old capital, off a Chancellor's office, and that it is the only thing in the dungeon that has ever really frightened anybody." },
      },
      actions = {
        { "Knock on it", say "You rap on the table. Grist, without thinking, says \"Come back Tuesday.\" Then he looks at his own mouth as if it had been borrowed." },
      } },
    { name = "a prisoner's petition, framed",
      description = "On the guardroom wall, behind glass: a square of sacking written on in soot. {i}That I may be told what I am in for.{/} It is endorsed across the corner, in ink, in a broad loose hand: {i}Granted. Nothing. Let him out.{/}",
      things = {
        { name = "a note under the frame", description = "{i}Kept as a curiosity. The only petition ever answered the same day. Prisoner was released in error on a date that does not exist and could not afterwards be found to be put back.{/}" },
      } },
  },

  exits = {
    { to = "castle_bailey", description = "Up forty steps and out through nine bolts." },
    { to = "spoon_tunnel", label = "Under Pelham's rug",
      description = "Down through the floor of the end cell, by invitation.",
      requires = flag "knows_tunnel", hidden = true },
    { to = "oubliette", label = "The hole in the floor",
      description = "Down the ladder, with a light of your own.",
      requires = item "lantern",
      locked = "it is dark down there in a way the torches do not wish to discuss" },
  },
}

space {
  id = "spoon_tunnel",
  region = "castle",
  secret = true,
  name = "Pelham's Tunnel",
  description = "A tunnel one old man wide, dug with a spoon. You can tell: the walls are scalloped all the way along, each scoop the size of a mouthful, twenty years of them. It is neat. It is swept. Halfway along there is a mat.",
  palette = { bg = "#100e0c", text = "#cac4b8", dim = "#6c665c", accent = "#c8a878", border = "#40382c" },

  things = {
    { name = "the scallops",
      description = "You try to count the ones within reach and give up after three hundred. Each was a morning's work. Not one is careless.",
      things = {
        { name = "a scallop with a date", description = "Every so often one has a tiny mark beside it. His birthday. He gave himself the day off, and came down anyway, and did one, to keep his hand in." },
      } },
    { name = "the first yard",
      description = "Just under the cell, the work is rough and hurried, the scoops deep and wild. He was angry when he started. By the second yard it has evened out. By the third it is beautiful." },
    { name = "the bend",
      description = "Here the tunnel meets a lead pipe and goes round it, respectfully, in a curve. The pipe is warm. It runs to the kitchens.",
      things = {
        { name = "the lead pipe", description = "It ticks. Put an ear to it and you can hear the scullions, very small, singing the song that is forbidden everywhere else." },
        { name = "a shelf cut in the wall", description = "At the bend, where it is warmest, a niche the size of a loaf. He proves his bread dough here, from flour that comes down with the toast. There is a cloth over a bowl, rising." },
      } },
    { name = "the mat",
      description = "Plaited rush, with {i}WIPE{/} worked into it. He is a guest at the other end, and behaves like one." },
    { name = "the props",
      description = "Every six feet the roof is held by a pit prop, and every prop is a chair leg, turned and polished. Thirty-four years of prison furniture has gone into this. Grist has signed for each chair as {i}worn out{/}." },
    { name = "a root",
      description = "Coming down through the roof, white and thick as a thumb, with a ribbon tied to it so that he does not catch it with his head. It is a very long way down for a root. Something up there is growing with great determination.",
      actions = {
        { "Touch the root", say "It is cool, and faintly ridged, and you would swear that it is busy. You have felt that before, in a garden, with your hand on a marrow the size of a boat." },
      } },
    { name = "the spoil",
      description = "There is none. Twenty years of earth, and not a heap of it anywhere. He took it up a pocketful at a time and put it in the geranium, and when the mug was full he ate soup over the hole in the floor and let it fall in with the crumbs." },
    { name = "a tally",
      description = "Scratched lines, in fives, for yards. Near the far end they stop, and there is one word: {i}PIE.{/}" },
    { name = "a candle bracket",
      description = "A fork, driven into the wall by its handle, with a candle end between the prongs. There is one every ten yards. He has a spoon for the digging, and it would not have been right to use it for anything else." },
    { name = "the far end",
      description = "The tunnel comes up under a flagstone. Pelham dug towards freedom for twenty years, and missed, and came up at two in the morning in the castle pantry, under a shelf of pies. He sat there until it began to get light. Then he took one pie, the smallest, and went home." },

    { name = "a niche of spoons",
      description = "Cut into the wall at the halfway mark, a shelf with eleven spoons laid in a row. These are the ones that wore out. He could not throw them away.",
      things = {
        { name = "the first spoon", description = "Tin. It lasted a week and got him four inches. He keeps it at the head of the row, as a general keeps his first sword." },
        { name = "the eleventh spoon", description = "Silver, with the royal cipher. Somebody sent it down on his tray in the fourteenth year, without a word, and the tunnel went a good deal faster after that." },
      } },
    { name = "a side scrape",
      description = "A yard of passage going off to the left, and then stopping.",
      actions = {
        { "Ask yourself why he stopped", say "You crawl in. At the end, in the lantern, the earth gives way to stone: dark, dressed, laid without mortar, with a small square cut in it and a dot. He hit somebody else's wall, twenty feet under the castle, and very sensibly went round." },
      } },
    { name = "a worm",
      description = "It comes out of the roof, considers the tunnel, and goes back in. It was here first, and regards the whole undertaking as an amateur piece of work." },
    { name = "a seam of dressed stone",
      description = "Partway along, Pelham's spoon met something it could not scrape: the corner of a cut block, pale, with a moulding. He went round it. It took him a year.",
      things = {
        { name = "the moulding", description = "The same profile as the plinths in the Royal Vault. This is the foundation of the chapel, then, and he dug past the dead kings with a spoon, six feet from their heads, and never knew." },
        { name = "a scratch on the block", description = "{i}Good morning.{/} Pelham wrote it, the day he broke through to the corner, on the principle that it costs nothing to be civil to a wall." },
      } },
    { name = "a bent spoon in a crack",
      description = "Pushed into the roof as a hook, with a lantern ring worn into the bowl. It is silver. It has the royal cipher on the handle, and it is not from this castle's kitchen: the cipher is an older one.",
      actions = {
        { "Look at the cipher", say "A crowned letter, and you tilt the spoon to read which. The letter has been rubbed flat with a stone. The crown has been left. Pelham says that he found a whole canteen of them in the dungeon stores when he came, marked like that, and that he took them for seconds." },
      } },
  },

  exits = {
    { to = "castle_dungeon", label = "Pelham's cell", description = "Back to the rug, the quilt and the geranium." },
    { to = "castle_kitchens", label = "The flagstone", description = "Up into the pantry, among the pies. Take nothing. He has an arrangement." },
  },
}

space {
  id = "oubliette",
  region = "castle",
  wonder = true,
  name = "The Oubliette",
  description = "The ladder ends on a floor of dust. This is where the kingdom put what it wished to forget, and it was never people. Your lantern finds them one at a time: the things that were dropped down the hole, struck off the lists, and not mentioned again. {magic}They are all still here. Nobody told them.{/}",
  palette = { bg = "#08090e", text = "#bcc0cc", dim = "#565a70", accent = "#9a8fd0", border = "#2a2c48" },
  ambience = {
    dust { glyphs = "·˙", color = "#444860", rate = 0.2, speed = 0.1 },
  },

  things = {
    { name = "a statue with no name",
      description = "A king in marble, twice life size, lying on his side where he landed. The name on the plinth has been chiselled off, and the number, and the dates. Whoever did it left the face. It is a mild face. He would like to know what he did.",
      things = {
        { name = "the plinth", description = "Three lines of lettering, gone. The chisel went deep and was not hurried. Along the bottom edge the mason's own mark has been left, small: he was not ashamed of the statue." },
        { name = "his marble hand", description = "Held out, palm up, as kings are carved when they are granting something. There is a little heap of things in it that have fallen from above over the years: a button, a pie crust, a toasting fork." },
      },
      actions = {
        { "Dust him off", say "You clean the marble with your sleeve, as far up as you can reach. It makes no difference to history. He is a little easier to see." },
      } },
    { name = "a crate of hats",
      description = "Tall, pointed, with a bell on the end. They were the fashion for one season, two hundred years ago, and were then banned by statute, with penalties. You look at one. You understand the statute.",
      actions = {
        { "Try one on", say "The bell rings. Up in the Great Hall a duchess shudders, and does not know why." },
      } },
    { name = "a portrait, face to the wall",
      description = "A big canvas leaning on its face against the stone. On the back, in chalk: {b}NO.{/}",
      actions = {
        { "Turn it round", say "You get one corner an inch from the wall. A painted eye looks out through the gap, with great interest. You put the corner back. The chalk was right." },
      } },
    { name = "a music box",
      description = "The last copy of a song that was forbidden for being too easy to remember. The lid is wired shut and sealed by three archbishops.",
      things = {
        { name = "the three seals", description = "Red wax, each with a mitre. The third archbishop's seal is crooked. He was humming." },
      },
      actions = {
        { "Hum near it", say "The box hums the next bar. It is in your head now, and will be for a week. This is why." },
      } },
    { name = "a throne for two",
      description = "A double seat, gilded, with one canopy and an arm down the middle. There was a reign, once, of two brothers who were to rule together. The arm down the middle has been sawn at, from both sides, and nearly through.",
      actions = {
        { "Sit on one side", say "The whole thing tips toward you. It only balances with two. You get off, and it rocks for a while and settles level, waiting for them to make it up." },
      } },
    { name = "a banner of surrender",
      description = "White silk on a gilt pole, with a fringe. It was carried out of the gate on the second day of the siege, by a herald, on the orders of a nervous council. The enemy did not see it, the council changed its mind, and the kingdom won by standing still. The banner was dropped down here the same night, and the second day of the siege was reported as rain." },
    { name = "a heap of medals",
      description = "A drift of them against the wall, bronze, with ribbons. Struck in advance for a war with the dwarves that was declared at breakfast and cancelled at lunch, when somebody looked at a map of what was under the Grumbles.",
      things = {
        { name = "one medal", description = "{i}FOR VALOUR UNDERGROUND.{/} On the back, a dwarf, running away. The engraver had never seen one and has given it wings." },
      } },
    { name = "a clock with thirteen hours",
      description = "A tall case clock with a painted dial. A king who was always late decreed an extra hour in the day and had a clock built to keep it. It kept it perfectly. The rest of the kingdom did not, and after a month of the court arriving for dinner at breakfast, the clock came down the hole.",
      things = {
        { name = "the thirteenth numeral", description = "Squeezed in between twelve and one, in a different paint. The hand is on it now. Down here, it seems, it is the extra hour, and has been for a hundred years." },
      },
      actions = {
        { "Listen to it", say "It is going. A slow, comfortable tick, with nobody to wind it. You stand there through a whole minute of an hour that does not exist, and feel that you have been given something." },
      } },
    { name = "a door in a frame",
      description = "Standing upright in the dust, in its own frame, attached to no wall: a small green door with a brass handle. It was the door of a room in the royal apartments. The room was abolished. They did not know what to do with the door.",
      actions = {
        { "Open it", say "It opens. On the other side is the Oubliette, the same dust, the back of the frame. You step through anyway. Nothing is different, except that for a moment afterwards you cannot think what you came in for." },
      } },
    { name = "a stuffed dog",
      description = "A spaniel, on a board, under a glass case with one cracked pane. A queen's pet. When it died she had it kept, and took it to dinner, and gave it a seat on the Council. The Council waited until she had been dead a year and a day.",
      things = {
        { name = "its collar", description = "Red leather, with a gold tag: {i}Lord Privy Seal.{/} It was, by the minutes, no worse than the one before." },
      } },
    { name = "a banned word",
      description = "A slab of slate, face down. On the back: {i}Removed from the language by Act. Not to be read aloud.{/}",
      actions = {
        { "Turn the slab over", say "One word, carved. You read it. It is a perfectly ordinary word. You cannot now think of a single sentence that does not want it, and you realise that for two hundred years everyone up there has been talking round a hole." },
      } },
    { name = "a looking glass",
      key = "honest glass",
      wonder = true,
      description = "A tall mirror in a plain frame, turned to the wall and covered with a sheet. It was a wedding gift to a vain king from a clever bride. It showed him exactly as he was, and he bore it for a week. {magic}It does not flatter and it does not mock. It only declines to help.{/}",
      actions = {
        { "Pull off the sheet", fx("wash", "#c0c8e0"),
          say "There you are, by lantern light. Travel-stained, under-equipped, one bootlace done up with string. And looking back at you out of all that, steadier than you had expected, somebody who came down a ladder into the dark to see what was there. You look for a good while. Then you put the sheet back, gently. It was not unkind. You see why he could not stand it." },
      } },
    { name = "the repealed Thursday",
      key = "thursday",
      wonder = true,
      description = "A calendar leaf the size of a door, on good vellum, in a frame. One Thursday in a spring three reigns ago, on which something happened at court. The day was repealed by decree and taken out of the week, and the histories go from Wednesday to Friday without a mark. Here it is. {magic}It is still that afternoon inside the frame.{/} The light on the vellum falls from a window that is not down here.",
      actions = {
        { "Hold a hand to it", fx("wash", "#e0c890"),
          say "Sun, on the back of your hand, at the bottom of a hole in the ground. It is a warm day in there. Whatever happened on it, the weather was not to blame." },
      } },
    { name = "the first stone",
      key = "first stone",
      wonder = true,
      description = "Low in the far wall, where the foundations go into the hill, there is one stone unlike the rest. The masons built on it and round it and did not cut it. It was here when they came. There is a single curved line in its face, worn nearly smooth, and nothing else. Nobody dropped this one down the hole. {magic}Everything else was put on top of it, and that did as well.{/}",
      variants = {
        { when = item "signet_ring",
          description = "Low in the far wall, where the foundations go into the hill, there is one stone unlike the rest. The masons built on it and round it and did not cut it. It was here when they came. There is a single curved line in its face, worn nearly smooth. You take the ring out of your pocket and hold it up. It is the same line. {magic}Nobody dropped this one down the hole. Everything else was put on top of it, and that did as well.{/}" },
      },
      actions = {
        { "Touch it", say "Cold, as stone is. You had expected something. You find that you are standing quite still anyway." },
      } },
    { name = "what fell from above",
      description = "Directly under the hole, a small cone of things that nobody meant to forget: crumbs, a draught piece, earth from a geranium, and on top a slice of toast, quite fresh, butter side down." },
    { name = "the dust",
      description = "Ankle deep and soft as flour. It holds every footprint that was ever made in it. There are yours. And there are a pair, in good boots, that stood for a long time in front of the statue.",
      things = {
        { name = "a place where the dust is moving",
          description = "By the far wall, beside the first stone, the dust is not lying still. It is creeping, a grain at a time, toward the foot of the wall, and going under it. Four hundred years of dust have fallen in here. The floor ought to be knee deep. It is draining.",
          variants = {
            { when = flag "fd_dust_followed",
              description = "A crack at the foot of the wall, wide enough for a thin adventurer going sideways, with the dust sifting steadily in. Cold air comes up out of it and stirs the hat bells in their crate." },
          },
          actions = {
            { "Follow the dust", when = no(flag "fd_dust_followed"), set "fd_dust_followed", fx "shake",
              say "You kneel and sweep with your hands. The dust runs away from them like water finding a plughole. Under it: the edge of a flagstone, and beside the flagstone a crack, and in the crack, going down, the corner of a step. You sit back on your heels. The kingdom has been dropping things into this room for four centuries to forget them, and the room has a cellar." },
          } },
      } },

    { name = "a ballot box",
      description = "Black tin, padlocked, with a slot. There was to have been an election, once, in the reign of a king who had been reading. It was held. The box came down the hole the same evening, unopened.",
      things = {
        { name = "the slot",
          description = "You tilt the box to the lantern. One paper inside. So one person voted. It is not known who for, or who, though the King of the day was seen near the box with ink on his thumb." },
      },
      actions = {
        { "Shake it", say "The single ballot slides from end to end with a small dry whisper. It has been the entire will of the people for two hundred years, and it sounds as if it knows." },
      } },
    { name = "a heap of signposts",
      description = "Finger posts, pulled up and thrown down, pointing every way at once. Each is to a place the kingdom decided not to have.",
      things = {
        { name = "one to a village", description = "{i}NETHER WALLOP 2.{/} It was abolished for tax reasons. The people still live there. They have been asked to keep it to themselves." },
        { name = "one pointing down", description = "Somebody has propped one of the posts upright in the dust with its finger to the floor. The board has been planed blank and nothing painted on it. It leans, a very little, toward the far wall." },
      } },
    { name = "a wagon rope, coiled",
      description = "Under the statue's shoulder, flattened where he came down on it: forty feet of tarred rope with a hook. They did not drop him. They lowered him as far as it would go, and then somebody cut it.",
      things = {
        { name = "the cut end", description = "Clean, at a slant, one stroke. On the hook end a rag of sacking is still tied, where they padded it so as not to chip him. Nobody pads a thing that they hate." },
      },
      actions = {
        { "Follow the drag marks", say "They come from under the hole, where he landed, to where he lies. Somebody down here has since moved him: two tons of marble, rolled over so that he is on his side and not on his face. There are spoon marks in the floor where a lever was set." },
      } },
    { name = "a box of brass letters",
      description = "A deal box that fell from above and split. Brass capitals, the kind that are screwed to the base of a monument, a few dozen, loose. They have been sorted by some earlier visitor into piles by letter.",
      things = {
        { name = "the piles", description = "You try them, as the earlier visitor must have. You can make {i}THE{/}. You can make {i}WHO{/}. Whatever name they came off is in there, and there are too many letters for one short name and not enough for two, and whoever boxed them took out a handful first, at random, and dropped those down some other hole." },
      } },
  },

  exits = {
    { to = "castle_dungeon", label = "The ladder", description = "Up, to torches, shirts and a man with a mug. You are surprised how glad you will be of them." },
    { to = "fd_stair", label = "The crack in the floor",
      description = "Sideways, breathing in, and then down, on steps nobody up here has ever counted.",
      requires = flag "fd_dust_followed", hidden = true },
  },
}
