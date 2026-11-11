-- The King's Gardens, gone to forest, and what is at the middle of the maze.

space {
  id = "er_gardens",
  region = "erstwhile",
  name = "The King's Gardens",
  description = "They were the wonder of the kingdom: a mile of walks and water laid out with a ruler, every tree clipped into a ball or a cone or a bird. Nobody has clipped anything for ninety years. The balls have become oaks. The hedges are forty feet high and meet overhead. It is a forest now, with the bones of a garden showing through it: a straight line of trunks where an avenue was, a statue up to its neck in bramble, a fountain basin with a full-grown willow standing in it.",
  palette = { bg = "#0a100c", text = "#ccd8c8", dim = "#5c705c", accent = "#98d088", border = "#2c4430" },
  ambience = {
    fireflies { color = "#a0d890", rate = 0.12 },
    dust { glyphs = "·˙", color = "#48603c", rate = 0.25, speed = 0.2 },
  },

  things = {
    { name = "the avenue",
      description = "Two rows of limes running straight from the garden front to a far gate. They were pleached, once: trained flat on frames, like a hedge on stilts. The frames rotted. The trees remembered, for about ten years, and then put their arms up. They are ninety feet tall and each one still has, low on the trunk, a kink at right angles where it was told what to do.",
      things = {
        { name = "the kinks", description = "All at the same height, all pointing the same way, like a hundred elbows. A gardener bent them when they were as thick as a thumb. You can put your hand on the place." },
        { name = "the gravel", description = "Under a foot of leaf mould. You scrape down to it with your heel. Pale, sharp, raked. There are rake marks. Nothing has walked on this for ninety years to rub them out." },
        { name = "a wheelbarrow", description = "Halfway down, on its side, with a young ash growing up through the spokes of the wheel. The handles are polished. He set it down to go and see what the noise was at the palace, on a Thursday, and by Friday there was nobody to tell him to pick it up." },
      } },
    { name = "the topiary",
      description = "A lawn of clipped yews: peacocks, chessmen, a ship in sail. That was the idea. Each has gone on growing from whatever shape it was, so that the peacock is now a great dark tree with a suggestion of a tail, and the ship has become a larger and vaguer ship, low in the water, going down by the head.",
      things = {
        { name = "the chessmen", description = "Sixteen a side, across a lawn that is now a wood. They have grown together where they stood. The two kings have never moved. The pawns in the middle have met and merged, and you cannot tell any longer who was winning." },
        { name = "a yew lion", description = "By the path. Somebody has been clipping this one. Not well, and not lately, but within the year: the mane is squared off and there are brown cut ends. You look about for shears. They are hung in the lion's mouth, real, with a drop of oil on the pivot.",
          actions = {
            { "Take a snip", say "You take down the shears and trim one sprig off the lion's left ear, where it was getting ahead of the right. It is surprisingly satisfying. You hang them back in his mouth. Whoever comes to do this, once a year, by themselves, in a forest that used to be theirs, will find the ears level and will stand for some time wondering." },
          } },
        { name = "the yew ship", description = "You can make out three masts. A pair of wood pigeons has taken the crow's nest. She is forty feet long and has been sinking for ninety years, and is, you would say, about half an hour from going down." },
      } },
    { name = "the great fountain",
      description = "A basin sixty feet across with a group in the middle: a sea king in a shell, drawn by horses. The conduit still feeds it. But a willow seeded in the shell, and the roots have filled the pipes, so the water comes out now wherever the tree lets it, in a dozen quiet places, and the sea king sits in a green shade being rained on by his own fountain.",
      things = {
        { name = "the sea king", description = "Bronze, bearded, with a trident. A branch has grown through the crook of his arm and lifted it, over the years, so that he is no longer commanding the waves. He is holding back the hair from somebody's face." },
        { name = "the basin", description = "Lily pads from rim to rim, and under them the slow orange shapes of carp. Big ones. They were stocked by a king and have had ninety years with nobody to catch them. The largest comes up under your shadow, looks at you with one eye and opens its mouth, as a thing does that used to be fed at this hour.",
          actions = {
            { "Feed the carp", say "You have half a crust. You break it over the water. The basin boils. Forty mouths the size of teacups come up through the lilies, and for a moment the fountain is going again, the old way, in every direction at once. Then it is flat and green, and the big one is still looking at you. It has remembered what people are for." },
          } },
        { name = "the bronze horses", description = "Four, rearing out of the water with their nostrils piped for jets. One still works. Every few minutes it clears its nose, a single snort of spray, and a wagtail that lives on its head goes up and comes down again." },
      } },
    { name = "the walnut tree",
      wonder = true,
      description = "It stands by the kitchen wall where the cook could reach it: the only tree in the garden that was let grow as it liked, on a king's order, because he was fond of the pickle. It was old then. It is immense now, grey and furrowed, with a spread you could hold a fair under, and the ground beneath is black with ninety years of husks. Nothing else in the garden is tended. This is. The low boughs are propped with new oak crutches. The dead wood has been sawn out clean. And at the foot, against the trunk, somebody has left a ladder, a basket and a pair of stained gloves, as a person does who is coming back tomorrow.",
      things = {
        { name = "the props", description = "Oak, forked at the top, with a pad of sacking where they meet the bark. The sacking is dry and this year's. Somebody thought about whether it would chafe." },
        { name = "the stained gloves", description = "White kid, once. Black to the wrist with walnut juice, which does not come out. They are a ten. The left has writing across the palm, gone brown, that you cannot read for the stain. The right is very finely stitched, all but the last finger, which has been finished off by somebody else, later, with cobbler's thread." },
        { name = "the basket", description = "Half full of green walnuts, picked for pickling, before the shell hardens. They are fresh. You press one with your nail and the juice runs, and your thumb will be brown for a week." },
      },
      actions = {
        { "Look up into it", say "You stand with your back to the trunk and look up. Green on green on green, and the light coming down through it in coins. High up, where the big limbs part, somebody has nailed a plank across for a seat. It is a boy's thing to do. The plank is grey with age. The nails are bright." },
      } },
    { name = "the orangery",
      description = "A long glass house against the south wall. Most of the panes are out. The orange trees were left in their tubs, and nine of them have burst the tubs, gone down through the floor, and up through the roof. They are in fruit. Small, bitter, bright as lamps, in the middle of a ruin.",
      things = {
        { name = "the tubs", description = "Oak, bound with iron, split open like eggs. Each has a brass label. {i}Gift of the Sweltering, with compliments.{/} It was a long way to send a tree." },
        { name = "an orange", description = "The size of a walnut and sour enough to straighten your hair. You eat it all the same, standing in broken glass. Nobody else is going to." },
        { name = "the stove", description = "Iron, with a pipe, for keeping the frost off. A grey garden boy sits beside it, feeding it sticks that are not there. The trees have not had a fire in ninety years and have not died. He takes the credit, and you let him." },
      } },
    { name = "the head gardener",
      icon = "☺",
      description = "Grey, bent, in a sacking apron, with a pruning knife on a string. He walks the old paths between trunks four feet thick, looking up at what his hedges have done, with the expression of a man who went out of the room for one minute.",
      actions = {
        { "Ask about the hedges", say "\"They want cutting,\" he says. \"I have told them at the palace. I am to have six men Friday.\" He looks at a hornbeam that was a hedge and is now a row of forest trees with their roots in a line. \"It has come on,\" he admits. \"It has come on a good deal this week.\"" },
        { "Ask about the bare path", say "\"I don't touch that,\" he says at once. \"I never laid it. It is not on the plan.\" He points with his knife, without looking, towards the dark middle of the garden. \"It went in of a Thursday evening. A man walked from the garden door to the maze without his shoes on, straight across my beds, and nothing has come up where he trod. I have dug it. I have dunged it. I leave it be now. Some people, you cannot get a thing to grow after.\" He thinks. \"Or you can't get it to stop.\"" },
      } },
    { name = "the bare path",
      key = "er_bare_path",
      description = "From the garden door of the palace, a line runs straight out across what were the flower beds: a strip of bare brown earth a foot wide, through bramble, under hazel, between the yews. Nothing grows on it. Not a weed, not moss. On either side the forest stands back from it by a hand. It goes to the old maze, and in.",
      variants = {
        { when = flag "er_path_followed",
          description = "A strip of bare brown earth a foot wide, straight from the garden door to the maze. Your own prints are in it now, going in and coming out, beside the others. Yours are boots. The others are bare, and a good deal broader, and only go the one way." },
      },
      things = {
        { name = "the footprints", description = "You crouch. They are there, pressed into the earth as if into dough, and never rained out: a man's bare feet, heavy, unhurried. The stride is long. He was not running from anything. He was walking as a man walks home from a good day's work with his boots in his hand." },
        { name = "a pair of shoes", description = "On the palace step, where the path begins. Court shoes, red heels, gold buckles gone green, placed side by side with the toes pointing out. He took them off here. They have filled with rain and each has a frog in it." },
      },
      actions = {
        { "Follow the bare path", when = no(flag "er_path_followed"), set "er_path_followed",
          say "You set your boot beside the first print and walk where he walked. Across the rose beds. Through the middle of the topiary, between two chessmen. The forest leans in over you and does not touch the path. At the maze the hedge is forty feet high and solid as a wall, and the bare strip goes up to it and through, by a gap just the width of a big man's shoulders. He did not solve the maze. He went through it, straight, and the yew has never closed behind him." },
      } },
    { name = "the maze",
      description = "An acre of yew, planted in rings. From the top windows of the palace it was a pattern. From the ground it was a morning's amusement for ambassadors. Now the walls have grown together and the lanes have filled, and it is a single black hill of yew with rooks on it. There is no way in at all, that you can see, except by one.",
      things = {
        { name = "the entrance", description = "An arch cut in the hedge, with a stone bench beside it and a notice: {i}Visitors are advised to keep the left hand on the hedge.{/} The arch has grown shut. You could not get a ferret through it." },
        { name = "a ball of twine", description = "On the bench, real, grey, tied to the bench leg at one end. The other end goes into the closed arch and is grown into the wood. Some ambassador went in with a clue on a Wednesday. The twine is pulled taut." },
      } },
    { name = "the kitchen garden",
      description = "Walled, behind the palace. The walls kept the forest out. So the beds are still beds, in a way: asparagus gone to a jungle of fern, artichokes ten feet high with purple heads the size of your own, and rhubarb you could shelter under.",
      things = {
        { name = "the bean row", description = "One row is hoed. Canes, twine, scarlet runners coming up. The twine is tied in a knot you have seen on a bean row somewhere else, in a walled garden on a hill. It may only be the knot that gardeners use." },
        { name = "the dipping well", description = "A round stone trough let into the ground, for filling cans. It is full and clear. A real tin mug hangs on a nail beside it. The rim of the mug is wet." },
      } },
    { name = "the sundial lawn",
      description = "A circle of turf with a pillar in the middle, and round it, where the hours were cut in box, twelve trees. They throw so much shade that the dial has not seen the sun since your grandfather's day. It says, by default, that it is always a little after six." },
    { name = "the garden front",
      description = "The back of the palace: a long terrace with urns, and steps down, and tall doors. One door stands open. It is the only door in the building that was opened from inside, by hand, by a man going out, and not by servants with a wedge.",
      things = {
        { name = "the open door", description = "The handle is brass and worn bright on the inner side. There is a thumb mark in ink on the paint beside it, shoulder high, where he steadied himself to take his shoes off." },
        { name = "the urns", description = "Stone, a dozen, along the balustrade. Eleven hold a dead stick. The twelfth holds a geranium in flower, scarlet, watered. You have seen its cousin in a murder hole." },
      } },
    { name = "a statue in the brambles",
      description = "A marble nymph, up to her chin in thorn, with one arm raised above it. A blackbird sings from her hand every evening. She was carved as Solitude. She has not had a minute to herself in ninety years." },
    { name = "the far gate",
      description = "At the end of the avenue: iron, twenty feet high, wrought into lions and roses. It is shut and chained. Beyond it is a road going over a hill. The chain is on the outside. The bare path does not come this way. Whoever went out of this garden did not go by the gate." },
  },

  exits = {
    { to = "er_palace", description = "Up the terrace steps and in at the open door." },
    { to = "er_garden_heart", label = "Along the bare path",
      description = "Through the gap in the yew that a man walked once and that never closed.",
      requires = flag "er_path_followed", hidden = true },
  },
}

space {
  id = "er_garden_heart",
  region = "erstwhile",
  secret = true,
  wonder = true,
  name = "The Middle of the Maze",
  description = "The gap lets you through sixteen walls of yew in a straight line, and you come out in the middle. It is a round lawn, thirty paces across, open to the sky, with the black hedge standing forty feet high all about it like the inside of a well. {glow}The grass is cut.{/} It is as short and green as a bowling green. In the centre is a stone bench, and a young walnut tree, and the end of the bare path. The path comes to the bench. It does not go on from it. You walk all the way round the lawn, twice, looking. There are prints coming in. There are none going out.",
  palette = { bg = "#08100a", text = "#d4e0cc", dim = "#607860", accent = "#c8e890", border = "#30502c" },
  ambience = {
    fireflies { color = "#d0f090", rate = 0.2 },
    stars { color = "#607858", rate = 0.1 },
  },

  things = {
    { name = "the bench",
      description = "Grey stone, curved, with a lion's paw at each end, the twin of one you sat on by the old road. One end is hollowed. On the other end, folded, lies a coat.",
      things = {
        { name = "the coat", description = "Crimson velvet, with gold lace, and a star on the breast in tarnished silver. A king's coat. It has lain here ninety years in the weather and has not rotted, quite. Moss has come up through the velvet in a green nap, so that it is the same coat, in the same folds, in a different stuff. One sleeve wants a yard of red ribbon. It was pulled off at the seam." },
        { name = "the hollow", description = "You sit in it. It fits a larger person. From here you see what he saw: the ring of hedge, a round of sky, and a rook going over. There is nothing in the middle of the maze. Ambassadors used to be very put out. It turns out to be the only place in the kingdom where, for certain, nobody will ask you for anything." },
        { name = "a mug on the arm", description = "Horn, with a lion. It is the twin of one on the top hook at the Quiet Pint that nobody reaches for. There is a brown ring in the bottom. You tip it. One drop runs out. It is not ninety years old." },
      },
      actions = {
        { "Sit a while", say "You sit on a king's bench in the middle of a maze with the day going over. It is very quiet. After a time you understand that the quiet is not empty. It is the kind that is in a room when somebody has just gone out of it to fetch something and has left the door on the latch. You do not look round. It seems the polite thing." },
      } },
    { name = "the young walnut",
      wonder = true,
      description = "It grows at the end of the bare path, one stride past the last footprint, where the next would have fallen. It is a walnut, straight, about ninety years old: a young tree, as walnuts go. Its bark is smooth and grey. Its roots have come up through the turf on one side in two long ridges, close together, with five small knuckles at the end of each. You look at them for some time. You look at the last print in the path, and the stride of it. Then you look up into the tree, which is in full leaf, and bearing, and which leans a little to one side, as a person does to hear.",
      things = {
        { name = "the two roots", description = "You do not measure them against the footprints. You are not that kind of adventurer. They are about a ten." },
        { name = "the lean", description = "To the left. It is not the wind. The hedge keeps the wind off. It is how the tree has chosen to stand, and the branches on that side come lower, as if to be in reach." },
        { name = "a green walnut", description = "On a low twig, right at the height of your hand, hung out further than the rest. It comes away at a touch. The tree cannot mean anything by it. You say thank you all the same, out loud, and feel a fool, and do not take it back." },
      },
      actions = {
        { "Ask it something", say "You have never asked a tree for anything and are not sure of the form. You say that you would like, if it is not a trouble, to find what you are looking for, even though you have not worked out what that is. Nothing happens. The leaves move, in an enclosed place without wind, all at once and then not. It sounds like a word. It is quite a short word. You have heard it four thousand times today, through a pair of doors." },
      } },
    { name = "the cut grass",
      description = "An inch high, even, striped. Striped: somebody takes a scythe across it one way and then the other. There is no gap in the hedge wide enough for a scythe but the one you came by, and no prints in that path but a king's and your own. You find the scythe. It is hung in the yew, real, with a whetstone. The blade is wet with green.",
      actions = {
        { "Look for the mower", say "Nobody. You go round the foot of the hedge and find, in the yew itself, low down, the opening of a run: a tunnel of the size that a badger makes, or a boy, or a very old gardener on his knees. It goes off through the roots towards the kitchen garden. The earth in it is patted smooth. Whoever keeps the grass does not use the King's path. He would not think it right." },
      } },
    { name = "the hedge from inside",
      description = "A wall of black-green forty feet high, in a perfect ring. Sixteen hedges deep. From in here it is one thing. You cannot hear the city. You cannot hear the rooks. You can hear, if you hold your breath, the conduit under the lawn, going by, on its way to a fountain." },
    { name = "the round of sky",
      description = "A disc of it, pale blue, the size of the lawn. Swifts cross it. A cloud comes over one edge and takes ten minutes to reach the other. You have not looked at the sky for ten minutes together since you were small. You see why he came here to think." },
    { name = "the end of the path",
      description = "The bare earth comes across the lawn as straight as a ruled line and stops at the bench. One print before the bench is turned, where he sat down. Then two more beyond it, side by side, going nowhere, in front of the tree. He stood up again. He stood there. And that is all the path there is.",
      actions = {
        { "Stand in the last prints", say "You take your boots off, since it seems wrong not to, and put your feet where his were. The earth is warm. It is a good deal warmer than the grass. You stand there with a walnut tree at your back and the whole of a kingdom somewhere outside the hedge, asking for things, and you think: he gave it all away in an afternoon and walked out here to see if it took. And you look down at your own feet, in his, with the grass cut close all round them and kept so for ninety years by somebody on his knees. It took." },
      } },
    { name = "a ring of husks",
      description = "Under the walnut, black, a few years deep. No more than that. Every autumn somebody gathers the fall. There are forty jars a year in a larder at the Quiet Pint, made from the tree in the palace garden. The landlord did not say which tree." },
    { name = "a sundial",
      description = "A small one, bronze, on the back of the bench. The maze was planted so that the sun reaches the middle for one hour in the afternoon. The gnomon has only ever needed four numbers. Its shadow is lying, now, a little past the four." },
    { name = "a dog's grave",
      description = "By the bench: a low mound, turfed, with a flat stone. {i}CHANCELLOR. He answered.{/} The stone is ninety years old, less the life of a spaniel. Somebody was here, then, some years after the Thursday, with a chisel and a small heavy bundle. There is a child's shoe on the stone, with a strap. It is the fellow of one on the throne room floor." },
    { name = "a robin",
      icon = "v",
      description = "On the back of the bench, with its head on one side. It is waiting for you to dig. Somebody here does, regularly, and turns up worms, and it has learned to take anything on two legs for the staff." },
    { name = "the way back",
      description = "The gap in the yew, as straight as a corridor, with the garden door of the palace small and bright at the far end of it. Sixteen hedges were planted to keep people out of this lawn. One man walked through them once, and it has stayed open behind him for ninety years." },
  },

  exits = {
    { to = "er_gardens", label = "Back along the bare path", description = "Out through the sixteen hedges into the forest that was a garden." },
  },
}
