space {
  id = "high_houses",
  region = "everwood",
  name = "The High Houses",
  description = "The elves live in the trees. A stair winds up the great beech, and at the top the houses begin: platforms of pale wood, roofs of living leaf, and bridges of rope between them with no handrail, since an elf has never needed one. You hold on to the tree.",

  things = {
    { name = "the Namer",
      key = "namer",
      icon = "☺",
      description = "Old Maerwyn, who gives names. She is the only elf you have seen with a line on her face, and she has the one, between the eyes, from looking at people. She is looking at you.",
      variants = {
        { when = flag "ev_named",
          description = "Old Maerwyn, who gave you yours. She has gone back to her bench, and is carving it onto a small tag of birch for the records. She is taking care over the spelling. It will be said for a long time." },
      },
      things = {
        { name = "her book of names",
          description = "Birch-bark pages on a ring. Every elf in the Everwood, and the few outsiders who were ever given one.",
          things = {
            { name = "the sentinel's name", description = "{i}Ilvaren{/}: She Who Has Seen You. Given at birth. She has spent three hundred years growing into it." },
            { name = "the poet's name", description = "{i}Caldir{/}: Presently. He asked whether it could be changed, some centuries ago. He was told presently." },
            { name = "an outsider's name", description = "{i}Mag-u-Thessil{/}: She Who Looked Back. Given to a woman in farm boots, three hundred years ago, who wanted to know how the High Houses stayed up. Maerwyn says she was the only one who ever asked the tree." },
            { name = "your page", visible_if = flag "ev_named",
              description = "{i}Tal-u-Verethin{/}. The ink is still wet. In the margin she has drawn a very small boot." },
          } },
        { name = "her carving knife", description = "The blade is worn to a sliver. She has carved every name tag in the forest with it and says it knows most of them by now and she just holds on." },
      },
      actions = {
        { "Ask for a name", when = no(flag "ev_named"), set "ev_named",
          say "She walks round you once. She listens to you breathe. She asks you to cross the nearest bridge, and watches. \"{i}Tal-u-Verethin,{/}\" she says. The elves nearby incline their heads; one of them coughs. You ask what it means. \"It is very old,\" she says. \"It means One Who Is Heard Coming.\"" },
        { "Ask for a better name", when = flag "ev_named",
          say "\"There are others,\" she says. \"That is the kind one.\"" },
        { "Ask about the horn on her wall", when = all { flag "ev_named", no(item "horn_of_evening") },
          say "\"The Horn of Evening. One note and the afternoon ends. All of it, at once.\" She looks at it as you would look at a wasp in a jar. \"I have kept it for nine hundred years, because nobody else would sit in a room with it. Every century somebody young comes and says, would it be so bad? And I say, go and reline the sundial.\"" },
      } },

    { name = "the Namer's house",
      description = "A floor, a roof of beech leaves, and one wall, which is rare here. The wall is for hanging things that must not be left lying about.",
      things = {
        { name = "the name tags",
          description = "Thousands, of birch, on threads, turning in the air. Each elf has one here. When an elf goes into the West Wood for good, the tag is cut down and given to the Remembering Tree. There are very few bare threads." },
        { name = "a grey hunting horn",
          key = "horn on the wall",
          visible_if = no(item "horn_of_evening"),
          description = "On a peg by itself, with a clear yard of wall on every side of it. Grey horn, black silver, a plug of wax in the mouthpiece. The other things on the wall lean slightly away.",
          actions = {
            { "Offer to take it away", when = flag "ev_named", once = true, give "horn_of_evening",
              say "She is quiet for a time. \"You are leaving,\" she says. \"You will go a long way, noisily, and you will not come back often.\" She lifts {gold}the Horn of Evening{/} off its peg with both hands and gives it to you. \"It could not be safer. Do not blow it within a day's walk of here. Further, if you can manage. We would hear.\" When you look back she is sitting quite differently, like someone who has put down a full bucket." },
            { "Reach for it", when = no(flag "ev_named"),
              say "\"No,\" says the Namer, without turning round. She says it the way she would say a name." },
          } },
        { name = "an empty peg",
          visible_if = item "horn_of_evening",
          description = "With a clear yard of wall on every side. The other things on the wall have begun, a little at a time, to move back." },
      } },

    { name = "the rope bridges",
      description = "A hundred feet up, one rope for the feet and nothing for the hands. Elves cross them carrying trays.",
      things = {
        { name = "the nearest bridge", description = "Forty paces of silver rope as thick as your thumb. It does not sway for elves. It has started swaying already, at the thought of you." },
        { name = "a knot", description = "Where the rope meets the bough: one knot, simple, unlike any you know. You pull it to test it. It tightens, pointedly." },
        { name = "the drop", description = "Leaves, then air, then more leaves, then the ground, small and tidy. No elf has ever fallen. One is said to have descended unexpectedly, and to have landed in a pose." },
      },
      actions = {
        { "Cross one", say "You cross it sitting down, an inch at a time. At the middle an elf steps over you, lightly, with a harp." },
        { "Ask about a handrail", say "The elf you ask does not know the word. You mime it. \"Ah,\" she says. \"For the washing.\"" },
      } },

    { name = "a house of leaves",
      description = "No walls. A floor, a roof, and a view. There is nowhere to put anything, and nothing has been put.",
      things = {
        { name = "the chair", description = "Carved from one piece of pear wood over ninety years. Nobody sits on it. It is for the room." },
        { name = "a bowl with one apple", description = "The apple is changed daily, by someone unseen, for another exactly like it." },
        { name = "the bed",
          description = "A hammock of grey silk slung between two boughs, hanging as still as a painting of itself.",
          actions = {
            { "Press it", say "It is as hard as a plank. You look underneath. It is a plank, with silk over it. The silk is for the look, and the plank is for the back." },
          } },
        { name = "where the cupboard would be", description = "A piece of air between two branches. You look at it for some time. No pots. No shoes. No second robe. Nobody lives like this. You begin to form a suspicion." },
      } },

    { name = "an elf child",
      key = "elf child",
      icon = "☻",
      description = "Sixty or seventy years old and about the size of a ten-year-old, hanging upside down from a branch by her knees. She is the first person in the Everwood to look at you with plain interest.",
      things = {
        { name = "her knees", description = "Scabbed. Both. You had not thought an elf could have a scab. It is the most reassuring thing you have seen all day." },
        { name = "her pockets", description = "Emptying slowly, since she is upside down: a snail shell, a slingshot, a crust, and a frog, which catches a twig on the way past and climbs back in." },
      },
      actions = {
        { "Ask her name", say "She says it. It is eleven syllables long and means Light Upon The Third Leaf Of Morning. \"Everyone calls me Bit,\" she says." },
        { "Ask where everything is kept", when = no(flag "ev_knows_root"), set "ev_knows_root",
          say "\"The stuff?\" she says, upside down. \"The pots and the washing and that? Down the Root.\" She points at the foot of the great beech, far below, where there is a fold in the bark you took for bark. \"We're not meant to say. The grown-ups like it to look as if it all just happens.\" She swings. \"Somebody has to boil the eggs.\"" },
        { "Ask if she likes it here", when = flag "ev_knows_root",
          say "\"It's all right. You can't shout.\" She thinks. \"I'm going to be a sentinel. You get a bow, and you're allowed to sit in mud if you say it's for watching.\"" },
      } },

    { name = "the great beech",
      description = "The tree the stair goes up. The trunk is wider than a mill and the stair has been grown, not built: each step is a burr that the tree put out where it was asked.",
      things = {
        { name = "the stair", description = "Three hundred steps. The elves go up it as water goes down. You came up it as you are." },
        { name = "a step that is late", description = "Near the top there is a gap where a step has been asked for and has not yet come. There is a bud. The elves step over the gap and say it will be along." },
        { name = "a fold in the bark", key = "bark fold",
          description = "Far below, among the roots: a seam in the grey bark, as tall as a door.",
          variants = {
            { when = flag "ev_knows_root",
              description = "Far below, among the roots: a seam in the grey bark, as tall as a door. Now that you know, you can see that the moss is worn off beside it at the height of a shoulder, and that a thread of steam is coming out at the top." },
          } },
      } },

    { name = "an elf with a tray",
      description = "Crossing a bridge with a silver tray held at the shoulder on three fingers. On the tray is one cup. The cup is empty. It is on its way to be looked at beside someone.",
      actions = {
        { "Ask where the kitchen is", say "\"The what?\" he says, with a clear brow. He is a very good liar. All of them are. It comes of being immortal and living with your relations." },
      } },

    { name = "the roofs of leaf",
      description = "Each house is roofed by the branch above it, trained flat and so thick that rain cannot find a way through. In autumn the roofs turn gold and the elves say it is a pity to have to wait all year. In the glade, of course, they do not have to.",
      things = {
        { name = "a wren's nest", icon = "v", description = "In a roof, a ball of moss with a hole in the side. The wren shouts at you from the doorway. It is the loudest inhabitant of the High Houses and has been asked to leave by every Lady in turn." },
      } },

    { name = "a loom",
      description = "On a platform by itself, strung with grey thread finer than hair. A cloak is on it, half woven. The weaver does one row a day and steps back to see.",
      things = {
        { name = "the half cloak", description = "It is already hard to look at. Your eye slides off it onto the tree behind. When it is done there will be an elf nobody can find, who will be very pleased with himself for about a week." },
      } },

    { name = "silver lamps",
      description = "Hung from the boughs on chains, unlit. In the High Houses they are lit at dusk. Under the glade's hour there is no dusk, so the elves come up here for it, in turns, a little guiltily, to see the lamps.",
      actions = {
        { "Look inside one", say "No wick, no oil. A moth, grey, the size of your thumbnail, asleep on a perch. It does the glowing at night. It has a name tag." },
      } },

    { name = "the view of the canopy",
      description = "The top of the forest, from inside it, rolling off green to the Grumbles. A league to the south the leaves change colour, sharply, along a line. That is where the Mumblewood begins and the brushing stops.",
      things = {
        { name = "a red kite", icon = "v", description = "Hanging over the canopy on forked tail and long wings, steering with a twist of its tail. It does not belong to the elves, and of everything in sight it alone does not seem to be trying." },
      } },
  },

  exits = {
    { to = "silver_glade", description = "Down three hundred steps, holding on." },
    { to = "elf_mess", label = "The fold in the bark",
      description = "Down the stair, round the back of the roots, and in through the seam where the steam comes out.",
      requires = flag "ev_knows_root", hidden = true },
  },
}

space {
  id = "elf_mess",
  region = "everwood",
  secret = true,
  name = "The Root",
  description = "Under the great beech, among roots as thick as barrels, is everything the Everwood does not show. Kitchens. Wash tubs. A cobbler. Sacks of flour and a wall of mops. It is hot and loud and smells of onions, and there are forty elves down here with their sleeves rolled up and their hair tied in a rag.",
  palette = { bg = "#140e0a", text = "#d8ccba", dim = "#7a6a58", accent = "#e8a050", border = "#4c3a28" },
  ambience = {
    steam { glyphs = "∙°˙", color = "#7a6c5c", rate = 0.6 },
    flicker { color = "#ffb060", strength = 0.2 },
  },

  things = {
    { name = "the cook",
      icon = "☺",
      description = "Berrin, broad for an elf, red in the face, stirring a cauldron with both hands. He has cooked every one of the meals that nobody upstairs is seen to eat. \"They eat,\" he says. \"Course they eat. They eat at night, like owls, standing up, over the sink.\"",
      things = {
        { name = "his apron", description = "It was white, in the reign of the last Lady. It now records every dinner since, in layers." },
        { name = "his ladle", description = "Iron, bought from a dwarf, and the only honest piece of metal in the forest according to Berrin. It has a dent from the day the poet came down to complain about a sauce." },
      },
      actions = {
        { "Ask for something", say "A bowl of stew and a heel of bread, in your hands before the sentence is out. It is the first thing in the Everwood that has been given to you rather than shown. It has an onion in it. You could weep, and it would be put down to the onion." },
        { "Ask why they hide all this", say "\"Hide? We don't hide. They don't look.\" He bangs the ladle on the pot. \"Four thousand years ago somebody said wouldn't it be lovely if it all just happened. And my family said, we'll see to it. And we've been seeing to it ever since, and they've clean forgot it doesn't.\" He does not sound angry. He sounds like a man describing weather." },
      } },

    { name = "the kitchen",
      description = "One long hearth under a root, six fires, and a chimney that comes out through a hollow oak a furlong away so that the smoke looks like mist.",
      things = {
        { name = "the cauldron",
          description = "Stew, by the hundredweight: barley, onion, rabbit. Upstairs they will tell you an elf lives on dew and the scent of flowers. The cauldron holds two hundred helpings and is scraped clean nightly.",
          actions = {
            { "Stir it", say "It takes both arms. Something heavy rolls over at the bottom. \"That's the bone,\" says Berrin. \"Been in since my father. Don't bring it up, it's what makes it.\"" },
          } },
        { name = "a tray of pears",
          description = "Forty, being polished with a cloth by a boy. One in five is perfect and goes upstairs to be looked at. The other four go in a pie.",
          things = {
            { name = "the pie", description = "Cooling. It has a leaf cut into the crust, because they cannot help themselves, but the leaf is lopsided, and a thumbprint has been left in on purpose." },
          } },
        { name = "the egg pan", description = "Three dozen on the boil. The child was right. Somebody has to." },
        { name = "the sink",
          description = "Stone, long, with a tap from the spring. Along its edge the stone is worn in forty shallow scoops, each the width of two elbows.",
          things = {
            { name = "a scoop in the stone", description = "This is where the Lady's steward stands, at midnight, to eat cold rabbit with his fingers. The one beside it is deeper. Nobody will say whose that is." },
          } },
      } },

    { name = "the wash tubs",
      description = "White robes by the hundred, soaking. Grass stains, mostly. Reclining on a lawn for four thousand years is hard on the linen.",
      things = {
        { name = "a laundress",
          key = "laundress",
          description = "Arms like a rower, hair in a rag, a peg in her mouth. She holds up a robe with a wine stain. \"The poet,\" she says. \"He spills when he gets a word. Two hundred years, three stains. That's his whole output.\"",
          actions = {
            { "Ask what she finds in pockets", say "\"Leaves. Always leaves. They pick one up to admire and forget it. One acorn cup. A list, once, that said {i}be more spontaneous{/}.\" She jerks her head at a basket under the bench. \"Anything hard goes in there. Nobody ever comes down for it. They'd have to admit they'd got pockets.\"" },
          } },
        { name = "the pocket basket",
          description = "Wicker, under the wash bench. Four thousand years of things left in robes on wash day.",
          things = {
            { name = "a great many leaves", description = "Pressed flat by the mangle. Each was, at the time, the most beautiful leaf its finder had ever seen." },
            { name = "a wax tablet", description = "Small. On it, in a hand you have seen in the glade: {i}O!{/} and then, crossed out so hard that the wax has torn, the exclamation mark." },
            { name = "a horn comb",
              key = "comb in basket",
              visible_if = no(item "parting_comb"),
              description = "Pale, with nine long teeth, lying on the leaves. Every leaf under it has divided neatly down the middle and moved a little to either side.",
              actions = {
                { "Take the comb", once = true, give "parting_comb",
                  say "The laundress looks round. \"That? Came out of the Lady's mother's robe, the year of the big wash. I use it on my fringe.\" You lift it, and the washing on the line above you draws apart like a curtain. She watches that. \"Does it do that for you? Never did that for me. You have it, then. It must want something bigger than a fringe.\" It is {gold}the Comb That Parts{/}, out of the songs, and it smells faintly of soap." },
              } },
          } },
        { name = "the mangle", description = "Two rollers and a wheel, dwarf-made, traded for a harp nobody had finished tuning. It is turned by whoever lost at cards." },
        { name = "the drying lines", description = "Strung between the roots where the hot air from the hearth goes by. Forty grey cloaks hang on them, and you can only find thirty." },
      } },

    { name = "the wall of mops",
      description = "The forest floor upstairs is swept, raked and, in the glade, combed, every night after the light is put away. There is a rota.",
      things = {
        { name = "the rota",
          description = "Chalked on slate. Every name in the Everwood is on it except the Lady's and the poet's. The poet was taken off after an incident with a rake and a metaphor.",
          things = {
            { name = "the Tuesday column", description = "{i}Leaves, border to glade: Ilvaren.{/} The sentinel is said to be very thorough about leaves. She puts some of them back afterwards, for the look." },
          } },
        { name = "the lawn comb", description = "Six feet wide, with bone teeth, drawn by two elves in harness. They do not enjoy it. They are both lords upstairs." },
        { name = "a mop with a name tag", description = "Birch, on a thread, carved by the Namer. The mop is called Faithful. It has served longer than most of the court." },
      } },

    { name = "a locked chest",
      key = "afternoon chest",
      wonder = true,
      icon = "▣",
      description = "Iron-bound, under the stair, with gold light leaking at the hinges. {magic}This is where the afternoon is kept when the glade is being cleaned.{/} It is taken up again before the first elf comes down, and hung. Berrin says it is getting thin at the edges and nobody wants to be the one to tell them.",
      things = {
        { name = "the keyhole",
          description = "A warm gold thread comes out of it and lies across the floor. Where it falls, the flagstones show a long shadow of nothing in particular.",
          actions = {
            { "Put your eye to it", fx("flash", "#e8c878"),
              say "Folded. That is the only word. A fine day in early autumn, folded in four with the creases showing, and a smell of apples. Then your eye waters and you have to stop. You see gold on everything for a minute, and all the kitchen staff look taller." },
          } },
        { name = "the hinges", description = "Brass, gone soft and bright where the light gets out. A cricket has taken up residence by the left one and sings all night, under the impression that it is always just before dusk." },
        { name = "a mend",
          description = "Berrin shows you, on a corner of the lid, where a patch of the afternoon wore through some centuries ago and was darned by his grandmother with a bit of ordinary Wednesday. Upstairs, there is a spot near the third birch where the light is a shade flat. The elves call it a subtlety." },
      } },

    { name = "the cobbler",
      description = "He makes the shoes that leave no print. The trick, he says, is a very wide sole and a customer who weighs nothing because they will not eat in front of people.",
      things = {
        { name = "a pair of court shoes", description = "Grey silk, soft as a moth. Inside, where it will never be seen, he has put a good thick insole of sheep's wool. \"Standing for the Lady is eleven hours,\" he says. \"I'm not a cruel man.\"" },
        { name = "the lasts", description = "A wooden foot for every elf in the forest, on shelves, labelled. They are all long and narrow and perfect. One has a bunion. He will not say whose, but it is on the top shelf, with the nobility." },
      },
      actions = {
        { "Show him your boots", say "He takes one in both hands. He turns it over. He is silent for a long time. \"Well,\" he says at last, gently, \"they've got you here.\"" },
      } },

    { name = "a table of off-duty elves",
      description = "Slouching. Laughing with their mouths open. One of them has her feet on the table and is telling a joke about a dwarf, and it is a good one, and when you come in they all sit up straight from habit, see what you are, and slouch again.",
      things = {
        { name = "a game of cards", description = "Greasy, dog-eared, and played fast. The stake is who works the mangle. The one losing is the herald of the Court of Leaves, and his language is not from the Old Tongue." },
        { name = "a jug of beer", description = "Brown, with a head on it. They brew it behind the flour. Upstairs, an elf will tell you that they take only spring water with a flower in. That elf was down here last night with a pint." },
        { name = "the one with her feet up",
          description = "You know her. An hour ago she was lying on the lawn with her hands folded, not snoring. Down here she has a voice like a carter.",
          actions = {
            { "Ask for the joke", say "She tells it again. It involves a dwarf, a ladder, and an elf who will not admit the ladder exists. Everyone at the table has heard it four hundred times. Everyone laughs. So do you, and for the first time today nobody minds the noise you make." },
          } },
      } },

    { name = "the flour sacks",
      description = "Stacked to the roots. The grain comes in at night, by cart, from a miller in Greenhollow who has been told he is supplying a monastery and has never wondered why the monks pay in old silver.",
      things = {
        { name = "a mouse", icon = "r", description = "Fat, brown, and unafraid. Upstairs there are no mice. This is where they are." },
      } },

    { name = "the roots",
      description = "The beech's own, coming down through the ceiling as thick as barrels and going on into the floor. The whole place is built round them without a nail. Whatever else goes on down here, nobody has ever put a peg in the tree.",
      things = {
        { name = "a root worn smooth", description = "At the bottom of the stair, at hand height. Every elf coming off the lawn at the end of a long day of grace puts a hand here, lets their shoulders drop, and says a word. It is a short one, and the same for all of them." },
      } },

    { name = "the back stair",
      description = "Narrow, steep, and coming out, the laundress says, behind a tapestry of leaves in the Court itself. \"That's how the Lady's cup gets filled. She's never once looked round. She's very good.\"" },

    { name = "a cricket", icon = "ι",
      description = "By the chest hinge, singing. It has outlived every other cricket in the kingdom by about four thousand years, a fact that it is too busy to notice." },
  },

  exits = {
    { to = "high_houses", label = "The fold in the bark", description = "Out through the seam, wiping your mouth, back to where everything just happens." },
  },
}
