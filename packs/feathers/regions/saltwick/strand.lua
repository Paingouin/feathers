space {
  id = "long_strand",
  region = "saltwick",
  name = "The Long Strand",
  description = "A mile of grey sand under the cliffs, ruled across by the tide-line. The sea comes up it, thinks better of it, and comes up again. The only footprints are yours, and they wander.",
  variants = {
    { when = flag "tide_out",
      description = "A mile of grey sand, and beyond it now another mile, wet and shining, that used to be sea. The water has gone out to a white line near the horizon. It left its things behind: weed, pools, and the black ribs of a ship." },
  },

  things = {
    { name = "the tide-line",
      description = "Everything the sea did not want: weed, cork, rope, and wood worn to the shape of nothing in particular.",
      things = {
        { name = "a green bottle",
          key = "green bottle",
          visible_if = no(flag "bottle_taken"),
          description = "Half buried, corked and waxed. Something pale is rolled up inside.",
          actions = {
            { "Pick it up", give "bottle", set "bottle_taken",
              say "It comes out of the sand with a small suck. There is a name scratched in the wax." },
          } },
        { name = "a clog", description = "Left foot. The sea has the other, and has not finished with it." },
        { name = "a whelk shell",
          wonder = true,
          description = "Big as your fist, pink inside. You hold it to your ear, as everyone does, and it is not the sea in there. {magic}It is a kitchen{/}: a pan, a clock, somebody humming. The sea, it seems, listens to shells from the other end.",
          actions = {
            { "Listen longer", say "A chair is pulled out. A spoon is set down. Whoever it is has laid a second place." },
          } },
      } },
    { name = "a crab",
      icon = "c",
      description = "It holds up both claws at you. It has no further plan. Neither, you realise, do you.",
      actions = {
        { "Back away sideways", say "It accepts this as the correct form." },
      } },
    { name = "a rock pool",
      visible_if = flag "tide_out",
      description = "A basin of clear water, left behind. In it a very small fish swims in a very small circle, under the impression that this is still the sea.",
      things = {
        { name = "an anemone", description = "Red, soft, shut like a purse. It opens when you look away." },
      } },
    { name = "the wreck",
      visible_if = flag "tide_out",
      description = "The ribs of a ship standing black out of the wet sand, as tall as a barn. Enough of the stern is left to read the name: {i}UNSINKABLE{/}. Under it somebody has carved, small and neat, {whisper}on the whole{/}.",
      things = {
        { name = "the figurehead", description = "A wooden woman, pointing firmly ahead. She is pointing at the cliff." },
        { name = "a hatch", description = "Aft, where some deck survives: a hatch cover crusted with barnacles, and not quite shut." },
      } },
    { name = "the cliffs",
      description = "Grey, tall, and full of holes that are either caves or the homes of very large birds." },
    { name = "the beachcomber",
      icon = "☺",
      description = "A long thin woman in a sack coat, walking the tide-line with a barrow and a stick with a nail in it. Her name is Sib Wrack. She has walked this mile twice a day for fifty years and picked up everything the sea put down. She sells none of it. She says she is keeping it for the sea, in case it wants it back.",
      variants = {
        { when = flag "tide_out",
          description = "A long thin woman in a sack coat, standing at the old tide-line with her barrow, looking at a mile of new sand she has never walked. Her name is Sib Wrack. Fifty years of the same strand, and today it has doubled. She has not moved. She is, you think, saving it." },
      },
      things = {
        { name = "her barrow",
          description = "A fish box on a pram wheel, full to the rails.",
          things = {
            { name = "a ship's nameboard", description = "A plank with carved letters, sea-worn: {i}...KABLE{/}. She has had it for years. She knows perfectly well where the rest of it is." },
            { name = "a doll's head", description = "China, bald, one eye shut. The sea has kept it a hundred years and given it back smiling. You would rather it were not in the barrow facing you." },
            { name = "a bundle of driftwood spoons", description = "Not carved. Found. The sea makes a spoon about once a winter, she says, if you leave it to get on with it. She has forty, and a ladle." },
          } },
        { name = "her stick", description = "A broom handle with a bent nail. She can turn over a stone, hook a rope and see off a gull with it, in one movement, without breaking step." },
      },
      actions = {
        { "Ask what the best thing was", say "\"A piano. Came in whole, on a Tuesday, on a spring tide. Stood right there.\" And? \"I played it. One tune. Then the tide come back and took it.\" She walks on. \"It only wanted hearing,\" she says over her shoulder." },
        { "Offer to help", say "She gives you the stick. You turn over a piece of weed. There is a crab under it, which looks at you, and more weed. \"There,\" she says, taking the stick back. \"You've the idea. You've not the eye.\"" },
      } },
    { name = "the sand",
      description = "Grey, fine, packed hard where the sea has been and soft above it. It takes a print perfectly and keeps it for exactly one tide.",
      variants = {
        { when = flag "tide_out",
          description = "Grey, fine, and, below the old tide-line, rippled into ridges that go on for a mile. Nobody has ever walked on those. They hold a print as if they had been waiting to." },
      },
      things = {
        { name = "the worm casts", description = "Thousands of small coils of sand, each beside a small pit. Under every one a worm is eating the beach at one end and putting it back at the other. The whole Strand has been through a worm, many times. It does not seem to have done it any harm." },
        { name = "a message in the sand", description = "Scratched with a stick, above the tide: {i}WIM, COME DOWN.{/} The letters are fresh. The fishwives take it in turns to write it, every morning. He has never come, and it has never once been left unwritten." },
        { name = "razor shells", description = "Long, narrow, brown and white, scattered like the leavings of a barber. You step on one. It is well named." },
      },
      actions = {
        { "Write your name", say "You write it large, with your heel. It looks well. A wave that has been watching comes up exactly as far as the last letter and takes that one only, to show that it could." },
      } },
    { name = "the dunes",
      description = "At the back of the beach, under the cliff: hills of blown sand held together with grass, and a great silence between them.",
      things = {
        { name = "the marram grass", description = "Grey-green, sharp as paper, each blade bent over so that its tip has drawn a perfect circle in the sand around it. A thousand small compasses, all agreeing about the wind." },
        { name = "a natterjack toad", icon = "t",
          description = "Small, warty, with a yellow stripe down its back, sitting at the mouth of a burrow. It does not hop. It runs, like a clockwork mouse, a foot at a time, and then stops and pretends it did not.",
          actions = {
            { "Watch it run", say "It makes four dashes across the open sand, each ending in a freeze, and reaches a tuft. From inside the tuft comes a noise like a ratchet, very loud, out of all proportion. It has been saving that." },
          } },
        { name = "a driftwood shelter", description = "Three spars and a hatch cover, built against a dune by somebody who waited out a night here. Inside: a ring of burnt sticks, a mussel shell used as a spoon, and a name cut in the spar. {i}Wilf{/}. He gets about." },
      } },
    { name = "the shore birds",
      description = "Along the wet edge, working.",
      things = {
        { name = "the sanderlings", description = "A dozen small pale birds running down the beach after each wave and running back up ahead of the next, legs a blur, never once getting their feet wet. They have been doing it since dawn. The sea has not caught one yet and has not stopped trying." },
        { name = "an oystercatcher", description = "Black and white with a bill like a stick of red sealing wax. It finds a mussel, hammers it twice in exactly the right place, and eats it. Then it shouts about it, piercingly, the whole length of the Strand." },
        { name = "a gull dropping a whelk", description = "It flies up thirty feet with a shell and lets go over the rocks. The shell bounces. The gull lands, looks, picks it up, and goes up again. This is the nineteenth time. One of them is going to give in, and you would not bet on which." },
      } },
    { name = "a seal on a rock",
      icon = "s",
      description = "Just off the point: a grey seal hauled out on a flat rock, curved like a banana, head and tail both in the air. It is watching you with the frank interest of somebody at a window.",
      variants = {
        { when = flag "tide_out",
          description = "The rock stands in sand now, a long way from any water. The seal is still on it, curved like a banana, looking toward the distant sea with the expression of a man whose cab has not come." },
      },
      actions = {
        { "Sing to it", say "They say seals like singing. You give it a verse of the one about the miller's daughter. It listens to the end. Then it scratches its chin with a flipper and looks out to sea, and you gather that it has heard it done better." },
      } },
    { name = "the kelp",
      description = "Torn up in a gale and heaped at the tide-line: brown straps as long as a cart rope, each ending in a root like a fist holding a stone.",
      things = {
        { name = "the sandhoppers", description = "Lift the weed and the sand underneath jumps: a thousand grey commas, all springing in different directions, none getting anywhere, like a parliament surprised." },
        { name = "a kelp root with a stone", description = "The weed never let go of its stone. The storm took both. There is something to be said for it, though the stone might say it differently." },
      },
      actions = {
        { "Pop a bladder", say "{i}Tk.{/} It is as good as you remembered. You do nine more. Nobody is watching. You are allowed a moment off." },
      } },
    { name = "a fossil in the cliff",
      wonder = true,
      icon = "@",
      description = "At the foot of the cliff, where a fall has left the rock clean: a coiled shell of stone, ribbed, as wide as a cartwheel, set in the grey like a seal on a letter. {magic}It lived in a sea, and the sea was here, at the height of your head, before there was a cliff to stand under.{/} You put your hand flat on it. It is cold, and it is the oldest thing you have ever touched, and it is the same shape as a snail in your mother's garden.",
      things = {
        { name = "the centre of the coil", description = "The ribs get finer and closer until you cannot follow them. It started very small. Everything here did." },
        { name = "smaller shells around it", description = "Dozens, the size of coins, the same coil. A whole shoal, turned to stone together, still all facing the same way." },
      },
      actions = {
        { "Trace the spiral", say "Your finger goes round, and inward, and round. By the middle you have slowed without meaning to. A wave breaks behind you and you turn, half expecting it to be up at your shoulder." },
      } },
    { name = "the cockle beds",
      visible_if = flag "tide_out",
      description = "Out on the new sand: a darker stretch, pocked all over with small holes, each spitting a little jet of water as you walk by. The beach is taking exception to you, one squirt at a time.",
      things = {
        { name = "a cockle woman's rake", description = "Stuck upright in the sand with a basket hung on it. Its owner has gone back for a second basket. Nobody on this coast has ever needed a second basket before." },
      } },
    { name = "a serious child",
      icon = "☺",
      description = "A girl of about seven, with a wooden spade, building a sandcastle at the very edge of the tide. It has four towers, a keep, a gate and a moat. It is better built than Castle Stillstanding. She does not look up.",
      variants = {
        { when = flag "tide_out",
          description = "A girl of about seven, with a wooden spade, standing beside a sandcastle with four towers, a keep, a gate and a dry moat. The tide she built it against has gone and not come back. She has won. She does not seem to know what to do next." },
      },
      things = {
        { name = "the sandcastle", description = "The walls are faced with limpet shells, overlapped like slates. There is a flag: a strip of red weed on a razor shell. In the courtyard, a crab has been installed as garrison and has accepted the post." },
        { name = "her spade", description = "Wood, bleached, with a split in the blade bound with twine. Her mother's, and her mother's. A long line of women have stood on this beach and told the sea no." },
      },
      actions = {
        { "Ask if the sea will get it", when = no(flag "tide_out"), say "\"Yes,\" she says. \"At about four.\" She pats a tower. \"I'll make it again tomorrow. It's not about it lasting.\" She looks at you as at somebody who has to have things explained." },
        { "Ask if the sea will get it", when = flag "tide_out", say "\"It was meant to,\" she says. She looks at the far white line of the water, and for the first time she looks seven. \"I hope it's all right.\"" },
      } },
    { name = "an old boat's bones",
      description = "High up the beach, long past any tide: the keel and six ribs of a rowing boat, silver with age, with sea holly growing through them. Somebody pulled her up for the winter and did not come back in the spring.",
      things = {
        { name = "the sea holly", description = "Blue-grey, spiked, with flowers like small thistles. It has come up exactly along the line of the keel, as if the boat had been planted." },
        { name = "a rowlock", description = "Bronze, still in its socket, bright where your thumb rubs it. The last thing on her that would still do its work." },
      } },
    { name = "the singing sand",
      wonder = true,
      description = "A patch below the dunes, no bigger than a threshing floor, where the sand is whiter and very dry. Walk on it and it sings: one note, under your heel, like a wet finger on a glass. {magic}Each person gets a different note, and it is always the same one for that person, from a child to a grandmother.{/} Saltwick mothers bring a baby down in its first week, stand it on the sand, and listen, and nod, and never say what they heard.",
      things = {
        { name = "small bare footprints", description = "A row of them, each a thumb long, and beside them a woman's, deep, where she stood holding the weight. The wind has not filled them. On this patch it never does until the next child is brought." },
      },
      actions = {
        { "Walk on it", say "You step out. It sings under you: a middling sort of note, a little flat, quite steady. You try stamping, to get a better one. Same note. You walk the whole patch. It is yours, apparently, and it is not grand, but it does not waver, and you could pick it out of a choir." },
      } },
    { name = "a bathing machine",
      description = "A hut on four cart wheels, striped blue and white, standing in six inches of water with its door facing the sea. It was brought from Aldmoor by a baroness who had read that sea bathing was the thing. She went in. The horse was taken off. That was some time ago.",
      things = {
        { name = "the door", description = "Bolted on the inside. A smell of lavender comes through the keyhole, and the sound of a page being turned." },
        { name = "a tray on the step", description = "Tea, a boiled egg, a folded newspaper. The beachcomber brings it at eight and takes away yesterday's. The egg is always eaten. The newspaper comes back with the crossword done, in ink." },
      },
      actions = {
        { "Knock", say "A pause. \"Is it warm yet?\" says a voice of great refinement. You look at the sea. You say that it is not. \"Then I shall wait,\" says the voice. The page turns." },
      } },
    { name = "a message in a bottle",
      description = "Green glass, corked, rolling at the edge of the foam. There is paper in it.",
      things = {
        { name = "the paper", description = "You work it out with a twig. Good paper, ruled, in a clerk's hand. {i}To whom it may concern. This bottle is the property of the Royal Office of Tides and has been released for the purpose of measuring a current. Kindly return it to the sea, having first entered below the place and the date.{/}" },
        { name = "the entries below", description = "Forty, in forty hands. Saltwick. Saltwick. Saltwick. {i}An island, I think.{/} Saltwick. {i}I do not know where this is but it is very beautiful and I am not coming back.{/} Saltwick." },
      },
      actions = {
        { "Enter the place and date, and throw it back", say "You write {i}Saltwick{/}, and the day, as near as you know it. You cork it and throw it as far as you can, which is as far as the second wave. It bobs there, thinking it over. The current that the Tide Office is measuring appears to be a small one." },
      } },
    { name = "an old woman at the tideline",
      description = "In a black shawl, with a stick, walking slowly along the wrack and turning things over with the ferrule. She has done it every morning since she was a girl. She is not gathering anything.",
      things = {
        { name = "her stick", description = "Blackthorn, with a brass tip worn to a point. She can roll a bottle over with it from six feet and read whether there is paper inside without bending." },
        { name = "a cork in her pocket", description = "She shows it to you: an ordinary cork, gone grey. \"I kept the spare,\" she says. \"I'd two, and one bottle.\"" },
      },
      actions = {
        { "Ask what she is looking for", say "\"An answer,\" she says. \"I put a letter in a bottle when I was seven. Off the end of the mole. I said where I lived and would they write.\" She turns over a clump of weed. \"I've had a husband and four children and buried two of them since. But I did ask, you see. It seems rude to stop looking.\" You think of a beach of grey shingle under a black cliff, four hundred miles north, and a bottle frozen into it. You open your mouth. You do not know yet whether to tell her is kinder, or to bring it." },
      } },
    { name = "a tree with its roots on",
      description = "Stranded at the high water mark: a whole birch, stripped white, on its way somewhere. The current runs north along this shore. A tree that goes in at the Mumblewood's river mouth passes here in a month, and after that the fishermen do not know. It is lying with its roots towards the sea, like something that has only stopped to rest." },
  },

  exits = {
    { to = "cliff_road", label = "The cliff steps",
      description = "Up the steps cut in the cliff. The rope handrail starts a little after you need it." },
    { to = "saltwick_harbour", description = "Round the point to the quay." },
    { to = "wreck_hold", label = "The hatch",
      description = "Up the ribs and in through the hatch, into the ship's own dark.",
      requires = flag "tide_out", hidden = true },
    { to = "second_cove",
      description = "Round the far headland, over rocks that are under water more often than not.",
      requires = flag "tide_out",
      locked = "the sea is standing in the way" },
  },
}

space {
  id = "wreck_hold",
  region = "saltwick",
  secret = true,
  name = "Inside the Unsinkable",
  description = "The hold of a ship lying on her side, so that one wall is the floor and the deck is a wall. Green light comes through the planking in stripes. Everything that was not nailed down is in a heap in the low corner, and has been for a hundred years.",
  palette = { bg = "#08100e", text = "#bccabc", dim = "#56695c", accent = "#8fc79a", border = "#2a463a" },
  ambience = {
    drip { glyphs = "⠁⠂⠄⡀", color = "#5f9a84", rate = 0.4 },
    dust { glyphs = "·˙", color = "#4a6a58", rate = 0.3, speed = 0.3 },
  },

  things = {
    { name = "the cargo",
      description = "Crates, burst and barnacled, every one stencilled the same.",
      things = {
        { name = "a crate", description = "{i}LIFEBELTS, CORK, 200{/}. It is empty. They are all empty. The lifebelts, at least, got away." },
        { name = "the manifest", description = "In a tin frame: {i}Lifebelts. Lifeboats (crated). Anchors, spare, 40.{/} She carried nothing but precautions." },
      } },
    { name = "the captain's table",
      description = "Bolted to what was the floor, so that it now juts from the wall at head height, chair, captain and all.",
      things = {
        { name = "the captain",
          icon = "☠",
          description = "A skeleton in a good coat, sitting at a right angle to the world, held in his chair by the table. One hand rests on the log. {danger}He looks as if he might turn his head.{/} He does not. He is waiting to be proved right.",
          actions = {
            { "Salute", say "You salute. A crab comes out of his collar, looks at you, and goes back in. You decide that counts." },
          } },
        { name = "the ship's log", description = "The last page: {i}Struck sand, 2 bells. Am informed by the mate that sand does not count. Remaining aboard on principle.{/}" },
        { name = "a brass telescope", description = "Screwed to the table. You put your eye to it. It is trained, through a gap in the planks, on a bench at the top of the cliff." },
      } },
    { name = "the ship's bell",
      wonder = true,
      description = "It hangs from what is now the wall, and it hangs sideways: straight out, level, mouth towards the sea. Everything else aboard fell over when the ship did. {magic}The bell has not been told.{/}",
      actions = {
        { "Ring it", fx "shake",
          say "One note, sideways. Far out on the wet sand, the white line of the sea stops for a moment, as a dog does when it hears its name." },
      } },
    { name = "the heap in the low corner",
      description = "Everything loose aboard, slid to the bottom of the tilt a century ago and settled: a drift of crockery, boots, hammocks and brass, cemented together with sand and small shells.",
      things = {
        { name = "the spare anchors", description = "Forty, as the manifest said, in a rusted tangle. She carried forty anchors and went aground with every one of them still below. Nobody thought to drop one. They were for emergencies." },
        { name = "a harmonium", description = "On its back, keys up, with barnacles on the black notes. You press one. It gives a long wet wheeze in a minor key, and something that was living in the bellows leaves by the back." },
        { name = "the crew's boots", description = "Thirty pairs, sea boots, in a heap. They took them off to swim. They need not have. The mate was right: it was sand, and they walked ashore, and then stood on the beach in their socks looking at her." },
        { name = "a crate of signal rockets", description = "{i}DISTRESS, RED, 100.{/} Unopened. The captain would not have it said that the {i}Unsinkable{/} was in distress. He had the mate write {i}mild inconvenience{/} in the log and went down to dinner." },
      },
      actions = {
        { "Dig in it", say "You shift a plate, a ladle and a boot. Under them: another plate, another ladle, and the other boot. A hermit crab comes out of a teapot, carrying the teapot, and moves it somewhere you are not." },
      } },
    { name = "the galley",
      description = "A cupboard of a kitchen, forward, lying on its side with the stove on the wall. The pans have hung on their hooks through everything and point, like the bell, at an angle of their own.",
      things = {
        { name = "the stove", description = "Iron, cold, with its door hanging open and a conger eel's head in the firebox, looking out. {danger}It has a great many teeth, and they all slope backward.{/} It has lived in the stove since it was small. It watches you with the calm of a cook in his own kitchen.",
          actions = {
            { "Shut the stove door", say "You push it to, gently, with your foot. From inside comes a single thump, not angry, more in the nature of a cough. You open it again. Everyone is happier." },
          } },
        { name = "a soup tureen", description = "Silver plate, lid on, wedged in a rack built for it. The last dinner. You lift the lid. A century of sea has been in and out and left it full of clear water, one winkle and a soup spoon." },
        { name = "the bill of fare", description = "Chalked on a slate that has never been wiped, the tide notwithstanding: {i}Soup. Fish (if any). Duff. No second helpings pending outcome.{/}" },
      } },
    { name = "the hammocks",
      description = "A row of canvas hammocks slung from the beams, hanging now in long drooping loops like washing. Each has a number, and a small private thing left in it.",
      things = {
        { name = "hammock nine", description = "A wooden whistle on a string, a pack of cards swollen to a brick, and a letter that is now only a soft grey rectangle with {i}Dear{/} on it." },
        { name = "hammock thirty", description = "Nothing in it but a cork lifebelt, worn, tied on with a careful knot. One man aboard did not altogether trust the name. He was the ship's carpenter. He knew what she was made of." },
      } },
    { name = "the mast",
      description = "It comes down through the deck, which is a wall, and crosses the hold level, like a beam: a tree trunk bound in iron hoops, green with weed.",
      things = {
        { name = "the mast step", description = "Where its foot sits in the keel there is a coin, set under it when she was built, for luck. You can see the edge. It is gold. The owner did not stint on luck. He simply bought the wrong kind." },
        { name = "a carved tally", description = "Cut in the mast with a knife: seven upright strokes. Her days at sea. The seventh has a wave drawn through it." },
      } },
    { name = "the barnacles",
      description = "On everything, edge to edge, like a pavement: small white volcanoes, shut tight in the air.",
      things = {
        { name = "one barnacle", description = "You watch it. After a long time the lid opens a hair and a tiny hand comes out, combs the air once for a sea that is not there, and goes back in. It will try again in a minute. It has been trying since the tide went." },
      } },
    { name = "the crated lifeboats",
      description = "Four, in the stern, each in a pine case stencilled {i}LIFEBOAT. DO NOT OPEN UNTIL NEEDED.{/} The cases are nailed shut. The nails have never been drawn. One case has been broken open from the outside, by the sea, in irritation.",
      things = {
        { name = "the broken case", description = "Inside is a lifeboat, perfect, white, with her oars lashed in and a tin of biscuit under the thwart. She has never touched water except by being sunk in it. On her bow, in gold: {i}UNSINKABLE No. 3{/}." },
      } },
    { name = "a brass-bound door",
      key = "stateroom door",
      description = "Aft, beyond the captain's table, in what is now the floor: a door of teak with brass corners and a brass plate reading {b}OWNER{/}. It is shut, and has swollen in its frame, and there is weed growing out of the keyhole.",
      variants = {
        { when = flag "sw_stateroom",
          name = "a hole where a door was",
          description = "The owner's door has gone down into the room below it, hinges and all, and there is a square of dry dark in the floor with a smell of cedar coming up. You could lower yourself through by the frame." },
      },
      things = {
        { name = "the brass plate", description = "{b}OWNER{/}. Not a name. He had the plate made before he had decided what to call the ship, and never saw a reason to be more specific." },
      },
      actions = {
        { "Jump on it", when = no(flag "sw_stateroom"), set "sw_stateroom", fx "shake",
          say "You stand on the owner's door and jump. Nothing. You jump again. The captain, at his table on the wall, seems to be watching, and you feel he would not have sanctioned it. On the third jump the frame lets go and the whole door drops away under you. You catch the sill by your elbows, which is not in the ballads either." },
      } },
    { name = "the ship's clock",
      description = "A brass bulkhead clock, screwed to what is now the ceiling, green with a hundred years of sea. The glass is whole. Behind it the hands stand at nineteen minutes past three.",
      things = {
        { name = "the maker's name", description = "On the dial, under the weed: {i}FUSEE, TICKOVER{/}. And below, very small: {i}set four minutes behind at owner's request. He said he wished to arrive before he was expected.{/}" },
        { name = "a limpet on the winding hole", description = "It has sat there so long that the brass has taken its shape. If you prised it off, the clock would have a keyhole the shape of a limpet, and you would need a limpet to wind it." },
      },
      actions = {
        { "Tap the glass", say "The second hand moves. One second. Then it stops again, exactly where it was, as if it had only wanted to show you that it could." },
      } },
    { name = "the passenger list",
      description = "A board screwed to the bulkhead with brass slots for name cards. The cards are pulp. One slot was engraved, not carded, and can still be read.",
      things = {
        { name = "the engraved slot", description = "{i}STATEROOM: THE OWNER.{/} No name. He did not think that anybody aboard would need telling." },
        { name = "the last slot", description = "{i}STEERAGE, BERTH 40.{/} Scratched into the brass with a nail, where the card would go: {i}Wilf{/}. And then, scratched out again, by the same nail, and under it: {i}got off at the harbour mouth, did not like the look of it.{/}" },
      } },
    { name = "a crate of sea boots",
      description = "Burst open in the low corner: forty pairs of new boots, tallowed, laced together by the pair, never worn. Hermit crabs have taken every left one.",
      actions = {
        { "Try a right one", say "It fits. It fits better than your own. You stand in the hold of a wreck with one good boot on, working out what a single boot is worth to a man who came with two bad ones. A hermit crab watches from the matching left with its claws folded. You put the boot back." },
      } },
    { name = "a crate stencilled BLOWHARD",
      description = "Wedged under the fallen deck beam, burst at one corner. {i}BLOWHARD WHALING CO. TRY POT FURNITURE. THIS SIDE UP.{/} The {i}Unsinkable{/} was carrying stores for a whaling station that was going to make her owner's second fortune.",
      things = {
        { name = "an iron ladle", description = "Three feet long, with a bowl like a bucket, for skimming boiling oil. Never used. It is the same pattern, you would bet, as one that is at this moment serving soup, a long way north of here, to people who thought better of it." },
        { name = "a packing note", description = "Still legible under the tar. {i}Sirs: herewith the remainder of the pots' gear. The Station writes that the ground is promising. I confess I do not altogether like the tone of the letter. Yrs, the Agent.{/}" },
      },
      actions = {
        { "Lift the ladle", say "It is as heavy as an oar. You hold it over an imaginary pot and skim. It occurs to you that if this ship had not gone down, and that crate had arrived, the men at the other end would have had one more piece of gear to find a blameless use for. They would have managed. You put it back." },
      } },
    { name = "a child's sledge",
      description = "Painted red, with iron runners, lashed to a rib of the hold as deck cargo and still there. Nobody in Saltwick has ever needed a sledge. It was going north, to somebody small, from somebody who had been told there was snow. The rope has rotted. The paint, under the weed, is as bright as a berry." },
  },

  exits = {
    { to = "long_strand", label = "The hatch", description = "Out through the hatch and down the ribs to the sand." },
    { to = "owners_cabin", label = "The hole in the floor",
      description = "Down through the door frame into the stateroom underneath, which the sea never got into.",
      requires = flag "sw_stateroom", hidden = true },
  },
}

space {
  id = "owners_cabin",
  region = "saltwick",
  secret = true,
  name = "The Owner's Stateroom",
  description = "The door was so well made that for a hundred years it kept the sea out. The room is dry. It lies on its side with the rest of the ship, so you are standing on a wall of buttoned green leather, with a carpet rising beside you like a cliff and a bed overhead. Everything is of the best. It smells of cedar and cigars, and a little of pride.",
  palette = { bg = "#0c0f0c", text = "#d0ccb4", dim = "#6c6a54", accent = "#e0c060", border = "#40422c" },
  ambience = {
    dust { glyphs = "·˙", color = "#6a643c", rate = 0.3, speed = 0.2 },
    shimmer { color = "#e0c060", strength = 0.1 },
  },

  things = {
    { name = "the portrait",
      description = "Bolted to what was the wall and is now the ceiling, so that he looks straight down on you: a stout man in a fur collar, with one hand on a globe and the other pointing out of the frame. Sir Barnaby Stoat, shipowner. The painter has caught him in the act of being certain.",
      things = {
        { name = "the globe in the portrait", description = "Painted with the kingdom on it and nothing else. The rest is plain blue. He has his hand over most of the blue, as if it were already spoken for." },
        { name = "the little brass label", description = "{i}\"She cannot sink. I have paid for her not to.\"{/}" },
      },
      actions = {
        { "Look him in the eye", say "He looks back down his nose, which from this angle is most of him. You have been in this room for one minute and already feel that you owe him money." },
      } },
    { name = "the bed",
      description = "A four-poster in mahogany, screwed to the deck, which puts it flat against the wall above your head with its curtains hanging sideways. The sheets are still tucked in. Nothing has ever been slept in so little.",
      things = {
        { name = "a nightcap on the pillow", description = "Silk, with a tassel, held to the pillow by a hatpin. He was not aboard. He never sailed in her. He sent the nightcap, to show confidence." },
      } },
    { name = "the wardrobe",
      description = "Built in, with louvred doors, now underfoot. You open one like a cellar flap.",
      things = {
        { name = "twelve identical coats", description = "Black broadcloth, fur collar, laid flat in a row like sleepers. He had one for each month. They have never been worn, and the moth has never got in. Nothing got into this room. That was the point of it." },
        { name = "a cork waistcoat", description = "At the very back, under the coats, wrapped in brown paper: a lifebelt, tailored, with silk lining and his initials. So he did have one made. He simply had it hidden." },
      } },
    { name = "the writing desk",
      description = "A roll-top, bolted down, hanging off the carpet-cliff with its drawers fallen open like tongues.",
      things = {
        { name = "the insurance policy",
          description = "Forty pages on vellum, with nine seals. {i}The vessel Unsinkable is hereby insured against fire, piracy, lightning, whale and act of gods.{/} You read to the end. She is insured against everything in the world.",
          things = {
            { name = "the excluded risks", description = "One line, on the last page, in the smallest hand the clerk could manage: {i}Not covered: sinking. (Not applicable.){/}" },
          } },
        { name = "a letter to the captain", description = "Never sent, since the ship left first: {i}Sir. Should you at any time believe that the vessel is sinking, you are mistaken, and are to continue as normal. Yrs, Stoat.{/} The captain, you reflect, did not need telling." },
        { name = "a box of cigars", description = "Cedar, sealed, the band still on. A hundred years in a dry room at the bottom of the sea. They are, you suspect, the best cigars in the kingdom, and you do not smoke." },
      } },
    { name = "the chandelier",
      description = "Crystal, forty candles, hanging from the true ceiling, which is a wall. So it sticks straight out into the room, sideways, level, every drop of glass pointing at the opposite wall. It and the ship's bell are of one mind.",
      actions = {
        { "Flick a crystal", say "It rings, a high clear note, and swings out and back along a line that has nothing to do with down. The others take it up. For a moment the room is full of small bright sounds, all agreed about a direction that is not the one you are standing in." },
      } },
    { name = "the porthole",
      description = "Brass, a foot across, in the floor by your boots. It looks out on packed sand, an inch from the glass.",
      things = {
        { name = "the view", description = "Sand, and in it, pressed against the pane, the pale underside of a flatfish that settled here long ago and found the glass warm. It has been looking into this room for most of its life. You are the first thing in it that has ever moved." },
      },
      actions = {
        { "Tap on the glass", say "The flatfish shifts, a fin's width, and resettles. You have been its whole entertainment for a century and it does not want you to stop on its account." },
      } },
    { name = "the strongbox",
      key = "strongbox",
      description = "An iron safe the size of a tea chest, bolted to the deck beside the desk, with a wheel on the door and a brass dial. The dial has four rings of letters. Above it, engraved, in case he forgot: {i}THE WORD IS THE SHIP'S OWN.{/}",
      variants = {
        { when = flag "sw_safe_open",
          description = "An iron safe the size of a tea chest, standing open. The dial reads {b}SINK{/}. He did not trust himself to remember anything he did not say twenty times a day, and he would never, ever say that." },
      },
      things = {
        { name = "the dial", description = "Four rings, each with the alphabet. At present they read {b}NEVR{/}. It was his first guess too, by the wear on those letters, the day he forgot." },
        { name = "the compass in its case",
          visible_if = all { flag "sw_safe_open", no(item "compass_second_opinions") },
          description = "On the one shelf, alone, in a nest of blue velvet: a sea compass in a case of gold and whalebone. The needle is swinging. It has been swinging in the dark for a hundred years, pointing at the door, and the hatch, and the shore.",
          actions = {
            { "Take the compass", once = true, give "compass_second_opinions", fx "sparkle",
              say "It is warm from the velvet and heavier than gold alone. The moment it is in your hand the needle leaves the door and points, with great firmness, at the safe you have just taken it out of. {gold}The Compass of Second Opinions.{/} It saved three fleets. It could have saved this ship, had anybody aboard been willing to look at it." },
          } },
        { name = "a bag of sovereigns",
          visible_if = flag "sw_safe_open",
          description = "Canvas, tied, the size of a cabbage, and stamped {i}SALVAGE FUND{/}. Money set aside to raise her if she sank. It has never been touched, since by the owner's reckoning she has not. You heft it. It is the most gold you have ever lifted. You set it back; the captain is just overhead, and he is the kind who would know." },
      },
      actions = {
        { "Try UNSINKABLE", when = no(flag "sw_safe_open"), say "Four rings. The word has ten letters. You get as far as {b}UNSI{/} and the wheel does not move. You suspect a great many men have got as far as {b}UNSI{/}." },
        { "Try SINK", when = no(flag "sw_safe_open"), set "sw_safe_open", fx "shake",
          say "{b}S. I. N. K.{/} It is right there in the middle of her name, where he never once looked. The wheel turns as if it had been oiled yesterday, and the door swings out along the wall. Somewhere overhead a skeleton in a good coat is proved right, at last, about something." },
      } },
    { name = "a decanter",
      description = "Cut glass, stoppered, in a rack on the wall, a third full of something the colour of old gold. Because of the tilt the liquid lies along the side of the bottle. There is a bubble in it, and the bubble is level.",
      actions = {
        { "Unstopper it", say "The smell that comes out is a hundred years of brandy improving in the dark with nobody to interrupt it. You stopper it again, carefully. There are smugglers along this coast who would weep." },
      } },
    { name = "the carpet",
      description = "Turkey red, wall to wall, nailed down, and therefore now a wall. Things have slid down it over the years and left tracks in the pile: a chair, a footstool, a spittoon.",
      things = {
        { name = "the spittoon", description = "Brass, at the bottom of its track, on its side. Clean. Nobody ever used this room for anything. It is a hundred years old and it is still new." },
      } },
    { name = "the speaking tube",
      description = "A silver mouthpiece on a hose beside the bed, labelled {i}BRIDGE{/}. It runs up through the wall, which is the ceiling now, to a wheelhouse that came off on the rocks a century ago.",
      actions = {
        { "Blow down it", say "A whistle sounds at the far end, which is in the open air somewhere, or in the sea. You put your ear to it. Gulls. Water. Then, close, the puzzled breathing of a seal who has had a whistle go off beside him." },
      } },
    { name = "the bell pull",
      description = "A tasselled rope of crimson silk, for summoning the steward. It hangs sideways across the room, since down is somewhere else now, and the tassel points at the door.",
      things = {
        { name = "the tassel", description = "Gold thread, and inside it, when you squeeze, something hard. The owner kept a spare key to everything he had. This one is for a clock." },
      },
      actions = {
        { "Pull it", say "Far off in the wreck a bell goes, small and wet. Nothing comes. You wait a little, out of manners, and because in that portrait he has the look of a man who expects to be waited for." },
      } },
    { name = "a share certificate",
      description = "In the desk's second drawer, engraved, with a border of ropes and spouting whales: {i}THE BLOWHARD WHALING COMPANY. One Thousand Shares.{/} He owned the lot. It was to pay for the ship, and the ship was to carry the oil, and neither of them did.",
      things = {
        { name = "the dividend column", description = "Ruled for forty years. Every space is empty but the first, where a clerk has written, in a hopeful hand, {i}nil (first season){/}. After that even the clerk gave up." },
        { name = "a letter clipped to it", description = "{i}Sir: I have the honour to report a full season and no fish. The men are well. The whales are very fine. We do not find, on acquaintance, that we can. I enclose the accounts, which are short. Yr obedt servt, J. Flense.{/} Across it, in the owner's furious scrawl: {i}ON ACQUAINTANCE?{/}" },
      },
      actions = {
        { "Read the owner's reply", say "There is a draft under the letter, in the same scrawl, blotted. {i}Flense: you are dismissed. The Station is closed. You will return the Company's property forthwith.{/} It was never sent. The ship that would have carried it is the one you are standing in. So the Station was never told, and went on, and is there yet. You fold the draft back. Some letters do most good at the bottom of the sea." },
      } },
    { name = "a fur-lined boot, left foot",
      description = "In the wardrobe, on the floor, by itself: sealskin, lined with white fur, a size too large for the man in the portrait. He had them made for a visit of inspection to his Station. He did not go. There is no right boot. The left has a mouse in it, in great comfort." },
  },

  exits = {
    { to = "wreck_hold", label = "The door frame", description = "Up through the hole, by the brass corners, into the green stripes of the hold." },
  },
}
