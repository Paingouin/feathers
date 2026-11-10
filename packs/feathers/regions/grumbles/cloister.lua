space {
  id = "refectory",
  region = "grumbles",
  name = "The Refectory",
  description = "A long bare hall with two tables down the middle and a third across the top. Forty monks eat here three times a day and the loudest sound is the soup. Everything that could clink has been dealt with. The spoons are wood. The bowls stand on felt. The benches have socks on.",
  palette = { bg = "#100e0c", text = "#d4cec0", dim = "#74706a", accent = "#d8c080", border = "#423c30" },
  ambience = {
    steam { glyphs = "˙·∙", color = "#7a766c", rate = 0.3 },
    flicker { color = "#d8c080", strength = 0.08 },
  },

  things = {
    { name = "the long tables",
      description = "Scrubbed white, laid for the next meal: a bowl, a spoon, a square of bread and a napkin at each place, all at the same angle. Somebody has gone down the row with a length of string.",
      things = {
        { name = "a wooden spoon", description = "Limewood, carved by its owner, with his mark on the handle. This one has a small fish. The next has a small, different fish. You sense a long quiet disagreement about fish." },
        { name = "a bowl on its felt", description = "Beech, turned thin. You lift it and put it down. Nothing. You put it down harder. Nothing. You have never been so thoroughly anticipated by crockery." },
        { name = "the place at the head",
          description = "On the cross table, one place laid with a silver spoon, tarnished black, and a bowl with a chip in the rim. No stool. This is the Founder's. It has been laid three times a day since he stopped talking, in case he should wish to come down and say grace. The brothers are careful to say that they hope he will. They are careful how they say it." },
        { name = "a bench in socks", description = "Each leg has a knitted sock, grey, with a turned heel. They are darned. You look round for whoever darns socks for a bench, and a brother at the far end lowers his eyes modestly." },
      },
      actions = {
        { "Sit down", say "You swing a leg over. The bench makes no sound. Your knees do. Three monks look up from laying the far table, and one of them, kindly, brings you a cushion for them." },
      } },
    { name = "the reading stand",
      description = "In most houses a brother reads aloud at meals. Here he stands at a lectern on a small platform and holds the book up, open, facing the hall, and turns the page when everyone has nodded.",
      things = {
        { name = "the book on the stand", description = "{i}Lives of the Quiet Saints.{/} It is open at Saint Aldith, who was told a secret in her youth and died at ninety without mentioning it, and whose last gesture was to put her finger to her lips at the doctor." },
        { name = "the nodding stick", description = "A long cane with a tuft of wool on the end. If one brother has not nodded, the reader reaches out and tickles his ear. It is the nearest thing in the house to a raised voice." },
      },
      actions = {
        { "Read a page", say "It is large print, for the back row. You read to the bottom and, before you can stop yourself, nod. Along the hall four monks laying tables nod with you, from habit, and one turns an imaginary page." },
      } },
    { name = "the kitchen",
      description = "Through a wide arch at the end of the hall: a vaulted room with a fire, a long table and more wrapped, padded and muffled ironmongery than you would have thought a kitchen could hold.",
      things = {
        { name = "Brother Cook",
          key = "brother cook",
          icon = "☻",
          description = "A big man with flour to the elbows and a face like a kind ham. He cannot tell you what is for dinner. He does not need to. He holds out a spoon.",
          actions = {
            { "Taste the soup", say "Barley, leek, and something from the garden that you would call a herb if it had not just cleared your head like a slap. He watches your face. You nod. He writes on his slate, shows it to nobody, and looks pleased. You see it as he turns: {i}They NODDED.{/}" },
            { "Compliment him", say "You say it is very good. Out loud. He flinches, glances at the arch, and then, since nobody came, goes slowly red with delight. He gives you a second bowl. You get the feeling that you are the first review he has had in thirty years." },
          } },
        { name = "the cauldron",
          description = "Black iron, big enough to christen a calf in, hung on a crane over the fire. The lid is wrapped in a quilt.",
          things = {
            { name = "the quilted lid", description = "Patchwork, stuffed with wool, tied on with tapes. It has a little embroidered handle. Somebody loved this lid." },
            { name = "the ladle", description = "Wood, with a leather cuff on the hook where it hangs, so that it will not knock. The cuff is tooled with a pattern of leeks." },
          } },
        { name = "the knife block",
          description = "Each knife sleeps in its own slot lined with sheepskin. The chopping board is a section of pine a foot thick that takes a blade without a sound.",
          things = {
            { name = "a carrot, half chopped", description = "The slices are all the same thickness. You could not get a hair between any two of them for size. He has had a great deal of time to think while chopping." },
          } },
        { name = "the bread oven",
          description = "A brick dome with an iron door that has been hung on leather hinges. Forty small loaves are cooling on a rack.",
          things = {
            { name = "a loaf", description = "The crust has been slashed before baking, so that it will not crack aloud in the oven. Each brother's loaf has a different slash. One is a small, defiant fish." },
          },
          actions = {
            { "Take a loaf", say "It is warm, and soft all the way through. No crust to speak of. You realise you have never before eaten bread designed not to be heard." },
          } },
        { name = "a cheese on the slab",
          description = "A wheel from Ma Scree, with the rind cut and a wedge gone. There is a chalk mark on it. Not a name. A small anxious question mark, added by the cook.",
          actions = {
            { "Knock on it", say "Solid. From inside, nothing. Brother Cook has stopped stirring. You both wait a moment longer. He breathes out, and writes on his slate: {i}Not him. A nephew.{/}" },
          } },
        { name = "the list of forbidden foods", description = "On the wall: {i}NO celery. NO toast. NO brittle of any kind. Apples by permission, in the yard. Soup is to be taken from the SIDE of the spoon.{/} At the bottom, heavily underlined: {i}Brother Odo's teeth are a matter for Brother Odo.{/}" },
      } },
    { name = "the serving hatch",
      description = "A square hole between kitchen and hall, with a shelf. Bowls are passed through it hand to hand. The sliding door has been taken off its runners and stood against the wall, since it squeaked, and the brother who oiled it was felt to have made things worse by trying." },
    { name = "the Abbot's chair",
      description = "At the middle of the cross table. It is the same as every other seat in the room, exactly, to make a point about humility. It is the only one with arms. Nobody has raised this." },
    { name = "the washing-up",
      description = "A stone sink by the kitchen arch, with two brothers at it. They wash in warm water and dry with flannel. Each bowl is handed across with both hands, like a baby.",
      things = {
        { name = "a novice drying", description = "He has a bowl and a cloth and he is concentrating so hard that his tongue is out. He has dropped one before. It is written all over him. The house has not mentioned it since, in forty separate ways." },
        { name = "the rack", description = "Pegs wrapped in wool. The bowls hang by a loop of cord through the rim. It looks like a row of very plain hats." },
      } },
    { name = "the window alcove",
      description = "One window, deep in the wall, looking out over the yard. On the stone seat there is an apple core, which is against at least two rules.",
      things = {
        { name = "the yard below", description = "A novice is standing out in the snow, alone, eating an apple. Every bite carries. He is getting through it as fast as he can, with the face of a man doing something shameful in a field." },
      } },
    { name = "the cellar hatch",
      description = "A trapdoor in the corner with a rope handle. Under it, a short ladder and the smell of malt.",
      things = {
        barrel { name = "a barrel of small beer",
                 description = "Brewed in the house. The bung has been wrapped in cloth and the tap in more cloth. It is called the Quiet Ale and is so flat that it has never, in living memory, been heard to fizz." },
        { name = "a bottle, hidden", description = "Behind the barrel, corked and wired: something that does fizz. The label, in a careful hand, says {i}Thursdays{/}." },
      } },
    { name = "the refectory mouse",
      icon = "r",
      description = "It lives behind the bread rack and comes out at meals. Its feet on the flagstones are the loudest thing in the room. The brothers put down crumbs for it on a square of felt, and it has learned to eat there, though it clearly finds the flags more satisfying.",
      actions = {
        { "Hold very still", say "It crosses the floor. Tick, tick, tick. It stops by your boot and looks up. You look down. For the first time since you came through the gate you are the quieter party, and you feel the mouse knows it." },
      } },
    { name = "a padded door",
      visible_if = flag "knows_shouting_room",
      description = "Behind the reading stand, a low door covered in buttoned leather, with a stair behind it going down. You know where it goes. Now that you look, there is a groove worn in the floor from the tables to this door, forty slippers wide." },
  },

  exits = {
    { to = "quiet_monastery", description = "Out to the courtyard and the snow being swept." },
  },
}

space {
  id = "silent_library",
  region = "grumbles",
  name = "The Library of Unspoken Books",
  description = "A room of dark shelves under a low white vault. In a house where nobody speaks, everything that would have been said has to go somewhere, and it goes here. Each brother keeps a book. Some keep several. It is the largest collection of remarks in the kingdom, and not one of them has ever been made.",
  palette = { bg = "#0e0d10", text = "#d2ccc4", dim = "#706c70", accent = "#c8b0e0", border = "#3c3848" },
  ambience = {
    dust { glyphs = "·˙", color = "#5c586a", rate = 0.25, speed = 0.15 },
    flicker { color = "#d8c080", strength = 0.06 },
  },

  things = {
    { name = "the shelves",
      description = "Shelved by brother, in order of entering the house. The early ones are a single thin volume. Then the habit took hold.",
      things = {
        { name = "Things I Did Not Say to Brother Bartram",
          description = "Nine volumes, uniformly bound, by Brother Anselm the Elder. Volume one opens: {i}Good morning.{/} Volume nine closes: {i}And another thing.{/}",
          things = {
            { name = "volume four", description = "Entirely about a borrowed trowel. It has footnotes. Two of the footnotes have footnotes." },
          } },
        { name = "A Reply", description = "One volume, slim, by Brother Bartram. It was begun the day after he found the nine. The whole text is: {i}I knew. I kept the trowel on purpose. It was the only way to get you to write.{/}" },
        { name = "the Abbot's book",
          description = "Bound in black, the thickest on the shelf. You open it with respect. Every page has one word on it, in the middle. The word is {i}No.{/} Now and then, for a change of pace, it is underlined.",
          actions = {
            { "Look for a yes", say "You go through it leaf by leaf. Four hundred pages in there is one. It is dated the day he let the novices keep the cat. He has drawn a box round it in ink and never done it again." },
          } },
        { name = "Observations on Soup", description = "By Brother Cook, forty years of them, one line a day. {i}Thin. Thin. Adequate. Thin. They NODDED.{/} After that last entry there are three pages left blank, as though he had needed to sit down." },
        { name = "a very small book", description = "The size of a matchbox, by Brother Odo, who has been here seventy years. It contains what he was going to say on the day he took the vow, written down that evening so that he would not forget. The clasp has rusted shut. He no longer remembers what it was, and smiles when asked, and will not let anyone oil it." },
        { name = "a book of jokes", description = "By a brother who was a jester before he was a monk. Each joke is written out, and after each there is a ruled space with the note {i}(laughter: Thursday){/}. On Thursdays, in the room downstairs, he does the whole week's at once and they laugh in arrears." },
      } },
    { name = "the house book",
      key = "house book",
      wonder = true,
      icon = "▤",
      description = "On a stand of its own in the middle of the room, chained, as wide as a door: one book kept by the whole house. Every evening the brother whose turn it is writes a single line, the thing that most wanted saying that day and was not. {magic}It is four hundred years of one community holding its tongue, a day at a time, in forty different hands.{/} You read a page. Nothing in it is important. All of it was nearly said. By the bottom you feel that you know these men better than anyone you have ever actually spoken to.",
      things = {
        { name = "today's line", description = "Not yet written. The pen is laid ready across the gutter of the page." },
        { name = "yesterday's line", description = "{i}The snow on the gate tower looked like a hat and I wanted to tell someone.{/}" },
        { name = "a line from long ago", description = "The ink is brown. {i}I am sorry about the bell. I should have asked before I ordered one without a clapper. I thought you would all be pleased.{/}" },
        { name = "a line gone over twice", description = "Written, and then written again on top by the same hand, harder: {i}I am happy here.{/}" },
      },
      actions = {
        { "Turn back a hundred years", say "Different hands. The same things. The soup, the snow, a brother's cough, a wish to say well done. You turn back another hundred and it is the same again. It is the steadiest thing you have ever read." },
      } },
    { name = "Brother Librarian",
      key = "brother librarian",
      icon = "☻",
      description = "A thin monk with ink on his lip, where he rests the pen while thinking. He looks after the books, which means that he has read everything that everyone in the house has ever wanted to say to everyone else. He meets each brother's eye at breakfast with perfect blandness. It is the hardest job on the mountain.",
      things = {
        { name = "his own book", description = "On his desk, shut, with a lock. It is the only locked book in the room. He sees you looking, and writes on his slate: {i}Somebody has to have nowhere to put it.{/}" },
      },
      actions = {
        { "Ask to borrow one", say "He writes: {i}They are not for reading. They are for having written.{/} He thinks, wipes it, and adds: {i}Everybody reads them, of course. At night. That is how we get on so well.{/}" },
        { "Ask about the Founder", say "His pen stops. He writes: {i}He talked. Forty years. Sermons, mostly, and then remarks on the sermons.{/} He looks along the shelves to the far wall, where there is one that is empty. {i}He did not need a book. He said all his.{/}" },
      } },
    { name = "the dictionary of gestures",
      description = "Chained to a desk, much thumbed: the house's own language, built up over four centuries from nods, coughs and eyebrows.",
      things = {
        { name = "an entry: the left eyebrow", description = "{i}Raised: doubt. Raised and held: grave doubt. Raised, held, and accompanied by a slow breath through the nose: see ABBOT.{/}" },
        { name = "an entry: the cough", description = "Eleven kinds. The ninth is {i}your sleeve is in the soup{/}. The eleventh is merely a cough, and is listed so that nobody takes offence at it." },
        { name = "an entry, crossed out", description = "A drawing of a hand doing something brief. Beside it: {i}Removed by order. Brother Anselm knows why.{/}" },
      },
      actions = {
        { "Try the left eyebrow", say "You raise it. Brother Librarian looks up, alarmed, and checks behind him. You put it down. You will need to be careful with that in here. It is loaded." },
      } },
    { name = "the copying desk",
      description = "A sloped desk under the one window. A brother is making a fair copy of somebody's book. His quill has a twist of wool round the nib end so that it will not scratch.",
      things = {
        { name = "the copyist", description = "He is copying volume six of the nine, the one about the trowel. Every so often his shoulders shake. He is not allowed to laugh, and it is coming out through the handwriting, which has gone wobbly in places." },
        { name = "a pot of ink", description = "Made in the house from oak galls and soot. It dries without a shine, so that the page does not even look loud." },
        { name = "the sand tray", description = "For blotting. Fine as flour. There is a finger-drawn face in it, with its mouth open, which someone has not yet smoothed over." },
      } },
    { name = "the visitors' shelf",
      description = "A short shelf by the door with one book on it, bound in sacking, and a pencil on a string. A card: {i}Guests are invited to leave whatever they did not say on the way up.{/}",
      things = {
        { name = "an entry", description = "{i}To the troll: I did know the answer. I just wanted to see what happened after three.{/}" },
        { name = "another entry", description = "In a round firm hand you have seen in a tin box on a summit: {i}Nothing. I say what I think. Scree.{/}" },
      },
      actions = {
        { "Write something you did not say", once = true,
          say "You hold the pencil for a while. Then you write down what you nearly said to the goat, and what you did not say to the barman about the bed, and a thing from before you left home that has nothing to do with being an adventurer. It takes half a page. You shut the book. Walking out, you are lighter by roughly the weight of a plum." },
      } },
    { name = "the catalogue",
      description = "A cabinet of small drawers. The cards are filed not by author or title but by who the thing was not said to.",
      things = {
        { name = "the drawer for the Abbot", description = "It will not shut. It has been extended twice with a box." },
        { name = "the drawer for the cat", description = "Full. All of them fond." },
      } },
    { name = "the far wall",
      key = "blank shelf",
      description = "The oldest shelves, at the end of the room. One of them is empty, top to bottom, and has been dusted every day for four hundred years. It is the Founder's. In the middle of it, by itself, stands a single volume in white vellum.",
      variants = {
        { when = flag "gr_cell_found",
          description = "The oldest shelves, at the end of the room. The Founder's empty case stands out from the wall on a hinge, like a door left ajar, and there is cold air coming round it. Brother Librarian has seen. He has turned his chair so that, strictly speaking, he has not." },
      },
      things = {
        { name = "the white book",
          visible_if = no(flag "gr_cell_found"),
          description = "The spine says, in gold: {i}What I Left Unsaid.{/} It is the Founder's own book. For a man who talked for forty years, it is very thin.",
          actions = {
            { "Take down the white book", set "gr_cell_found", fx "shake",
              say "It will not come off the shelf. It tips forward an inch, like a latch, and behind the wall something heavy lets go. The whole empty case swings out. The book was never a book. He left nothing unsaid. It was a joke, and he was the only one who got it, and it has been waiting on this shelf four hundred years for someone tactless enough to pull." },
          } },
      } },
    { name = "the reading lamp",
      description = "One, on a long arm, with a green shade. The flame is turned so low that it is mostly an intention. Reading here is done with the face very close to the page, which the brothers say improves attention and the librarian says is how he got ink on his lip." },
    { name = "the library cat",
      description = "Grey, large, asleep on the catalogue. She is the cat the Abbot said yes to. She is the only member of the house not under the vow, and has never, in nine years, made a sound. The brothers find this either deeply holy or a deliberate comment.",
      actions = {
        { "Stroke her", say "She begins to purr. Brother Librarian's head comes up. The copyist stops. It is very loud, in here, a purr. Nobody tells her to stop. Three more monks drift in from the corridor and stand about, pretending to look for books." },
      } },
  },

  exits = {
    { to = "quiet_monastery", description = "Back to the courtyard, with your eyebrows under control." },
    { to = "founders_cell", label = "The gap behind the empty shelf",
      description = "Round the edge of the Founder's bookcase, into the cold.",
      requires = flag "gr_cell_found", hidden = true },
  },
}

space {
  id = "founders_cell",
  region = "grumbles",
  secret = true,
  name = "The Founder's Cell",
  description = "A narrow room behind the library wall, with a bed, a desk and a window over the drop. It was sealed the day he died, and the brothers have let themselves forget where the door is. The air is very cold and very still. After the rest of the house, it is the first room that feels as if somebody has only just stopped talking in it.",
  palette = { bg = "#0c0c10", text = "#d4d0c8", dim = "#6a6870", accent = "#e0c890", border = "#3a3844" },
  ambience = {
    dust { glyphs = "·", color = "#55525e", rate = 0.2, speed = 0.1 },
    snow { glyphs = "·˙", color = "#7a8090", rate = 0.1, speed = 0.3 },
  },

  things = {
    { name = "the desk",
      key = "founder desk",
      description = "Plain deal, under the window. On it: a candle burned to the socket, a stack of paper as high as a loaf, and a small stone jar, stoppered with wax.",
      variants = {
        { when = flag "gr_word_taken",
          description = "Plain deal, under the window. A candle burned to the socket, a stack of paper as high as a loaf, and a ring in the dust where a jar stood for four hundred years. The room is no quieter than before. You had half thought it would be." },
      },
      things = {
        { name = "the stone jar",
          key = "jar in place",
          wonder = true,
          visible_if = no(flag "gr_word_taken"),
          description = "No bigger than a fist, grey, with a cord round the neck knotted many times. This is in the house's history, the one chapter every novice reads twice. The brothers came to him and knelt, all forty, and asked whether he could not, for the love of heaven, stop. He looked at them for a long moment. Then he picked up a jar from his desk, and said one word into it, and pushed in the stopper. He lived eleven more years and that was the end of it. {magic}The last word is still in there.{/} He had the last word, and then he gave it up, and that is what the monastery was founded on.",
          actions = {
            { "Take the jar", once = true, give "last_word", set "gr_word_taken",
              say "You pick it up with both hands. It is a little warm, as a thing is that has been held. Inside, something shifts against the stopper, light as a moth, and settles. {gold}The Last Word.{/} You wrap it in your spare shirt and put it at the very bottom of your pack, under everything, and you resolve never to trip." },
          } },
        { name = "the stack of sermons",
          description = "Four thousand sheets, written edge to edge on both sides in a quick sloping hand. He spoke them first and wrote them down afterwards, in case anyone had missed a part.",
          things = {
            { name = "the top sheet", description = "{i}Brethren. I shall be brief.{/} It is numbered one of two hundred and six." },
            { name = "a sheet from the middle", description = "{i}...which brings me, by a road I admit has been indirect, to my second preliminary point.{/}" },
            { name = "the bottom sheet", description = "The last thing he wrote. One line, in the same hand, slower. {i}They were quite right. I have enjoyed the quiet more than I can say.{/} And under it, smaller: {i}Ha.{/}" },
          } },
        { name = "the candle stub", description = "He wrote by night as well. The wax has run down the stick and across the desk and set in a pool the shape of a tongue, which nobody could have intended, and which you look at for some time." },
      } },
    { name = "the bed",
      description = "A plank on trestles and a straw mattress, made up tight. One pillow, with a hollow in it.",
      things = {
        { name = "the pillow", description = "The hollow is on one side only. He slept facing the wall. On the wall beside it, at the height of a sleeping man's mouth, the plaster is worn away to the stone. He talked in his sleep. Of course he did." },
        { name = "under the bed", description = "A pair of felt slippers, the first pair ever made in the house. The brothers stitched them for him as a hint. The soles are quite unworn. He took the hint about the jar, in the end, but not the one about the slippers." },
      } },
    { name = "the window",
      description = "A slit in the outer wall with nothing beyond it but a thousand feet of air and the valley. He had the cell with the view. He is said to have described it daily, to whoever brought his dinner, in case it had changed.",
      things = {
        { name = "the sill", description = "Worn into two shallow dips by his elbows. Between them the stone is scratched with a tally in groups of five: thousands of marks. You cannot tell what he was counting. Days, or sermons, or the times that he opened his mouth afterwards and shut it again." },
        { name = "a chough on the ledge", description = "It has a nest in the corner of the slit. It looks in at you, sideways, and makes one remark. It is the first thing said aloud in this room for four hundred years, and it is {i}chack{/}." },
      } },
    { name = "a speaking trumpet",
      description = "Tin, a yard long, hung on a nail. For addressing the courtyard from the window on days when he could not come down. The mouthpiece is polished. The bell of it has been stuffed, firmly, with a sock.",
      actions = {
        { "Pull out the sock", say "It is in very tight. It has been pushed in by more than one person. You leave it. When forty men have gone to that much trouble, it is not for a visitor to undo." },
      } },
    { name = "the portrait",
      description = "A small panel on the wall, painted from life. A lean old man with bright eyes and one hand raised. The painter has caught him with his mouth open. It would have been difficult to catch him any other way.",
      things = {
        { name = "the painter's note", description = "On the back, in pencil: {i}Eleven sittings. He never drew breath. I have left out the words, but I think you can still see them.{/}" },
      } },
    { name = "a bundle of letters",
      description = "Tied with tape, on the shelf above the bed. All from the brothers of the first house, all pushed under his door, since nobody could get a word in any other way.",
      things = {
        { name = "the first letter", description = "{i}Father. With great love. Could there be a little less.{/}" },
        { name = "the last letter", description = "{i}Father. Thank you. We are sorry it was necessary. We will keep it too, so that you are not the only one.{/} It is signed by forty hands. That was the vow. They took it to keep him company." },
      } },
    { name = "a second jar",
      description = "On the shelf, the twin of the one on the desk, unstoppered and empty. A slip of paper is tucked in the neck: {i}Spare. In case I think of anything.{/} He never needed it. You look into it anyway, and then feel foolish, and then look once more." },
    { name = "the hourglass",
      description = "The sand ran through long ago and lies in the bottom bulb. He turned it at the start of every sermon. The scratches on the frame show how many times he turned it again without stopping." },
    { name = "the silence in here",
      description = "It is a different kind from the silence outside. Out in the courtyard forty men are not saying something. In here one man finally is not, and meant it." },
  },

  exits = {
    { to = "silent_library", label = "The gap behind the shelf", description = "Back round the bookcase, into the smell of ink." },
  },
}
