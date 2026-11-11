-- The ring of giants, the Tall Tree, and a tower that is there.

space {
  id = "jg_clearing",
  region = "sweltering",
  name = "The Ring of Giants",
  description = "The forest opens. Round a lawn of moss a hundred paces across stand trees so large that you take the first for a cliff, and in the middle, alone, is one more, to which the rest are a hedge. The light comes down here in whole columns. It is the only place in the Sweltering where you can see the sky from the ground and stand back far enough to look at a tree.",
  palette = { bg = "#0a140c", text = "#dce8cc", dim = "#66805e", accent = "#e8d060", border = "#345c34" },
  ambience = {
    dust { glyphs = "·˙∙", color = "#a0b060", rate = 0.5, speed = 0.4 },
    fireflies { color = "#d8e878", rate = 0.15 },
    shimmer { color = "#e8f0a8", strength = 0.15 },
  },

  things = {
    { name = "the Tall Tree",
      wonder = true,
      icon = "♣",
      description = "You walk round it. It takes ninety paces. The bark is grey and folded like the hide of something patient, and the roots come out from it in fins higher than a house wall, with rooms between them. Then the trunk goes up, without a branch, without a taper, {glow}up through the light, further than you can make sense of{/}, and at a height where you would expect cloud it opens a crown as wide as Greenhollow. Whole trees are growing on its boughs. There is weather in it. It was old when the temple was built, and by the temple's account that should not be possible.",
      things = {
        { name = "the buttress roots", description = "Fins of living wood, ten yards long and thin as a door. Rap on one and it booms. The river people signal on them, village to village. This one has a note so low that you feel it in the moss.",
          actions = {
            { "Knock on a root", say "You hit it with the heel of your hand. A deep soft boom goes out through the forest and does not seem to stop. Some time later, very far off, another answers. You have said something to somebody. You hope that it was polite." },
          } },
        { name = "a room between two roots", description = "Roofed with bark, floored with dry leaves, as big as the chapel at home. Somebody has lived here. There is a shelf cut in the wood, a ring of hearth stones, and marks on the wall at heights from knee to shoulder with a sign beside each. Children, measured. The lowest mark is a hand's breadth under where it was cut, as the tree has grown since. So are all the others." },
        { name = "the bark", description = "Each fold is a ledge with a garden on it: moss, a fern, a beetle like a drop of brass. You could spend a year on the first six feet, and Podge very nearly has." },
        { name = "the crown", description = "You lie on your back to see it. A green country, upside down, with its own hills. Things are flying about in it that from here are specks. A cloud snags on one bough, tears, and goes on in two pieces." },
        { name = "a fallen bough", description = "It came down in some storm before anybody now living, and lies across the moss like a wrecked ship, itself bigger than any tree at home. Seedlings grow along the top of it in a row. One day they will be a line of giants, dead straight, and somebody will wonder who planted an avenue here." },
      },
      actions = {
        { "Put your hand on it", say "Cool, even in this heat, and not still. There is a movement in it far too slow to be called one, the lean of a thing that has stood up to ten thousand winds and is at this moment standing up to another, a hundred yards over your head. You take your hand away. For a while afterwards you walk carefully, as one does in a house where somebody very old is asleep." },
        { "Try to climb it", say "There is nothing to climb. The first branch is a furlong up. You jump, to show willing, and touch bark at about seven feet. A spider monkey, watching, puts both hands over its face." },
      } },
    { name = "the ring",
      description = "Twelve giants in a circle, evenly, as if they had been set out. Nobody set them. Dr Mimms holds that they are the Tall Tree's own seedlings, sprung up at the edge of its shade, where the light begins. That would make them its children, standing round it, each one a thousand years old.",
      things = {
        { name = "the widest gap", description = "On the east side two of the twelve stand further apart, and through the space between them you can see the red top of the temple, half a mile off, over the lower trees." },
        { name = "a giant with a door in it", description = "Hollow at the base, with an opening you can walk through upright. Inside it is a round room open to the sky a long way up, like the bottom of a well. Bats hang in it by the thousand. The floor is deep in what bats leave, and from that grows a single white flower." },
        { name = "a lightning scar", description = "Down one trunk from crown to root, a groove you could lie in, healed over at the edges in great rolled lips. The tree did not fall. It kept the scar, as some men keep one, and has grown twice as many flowers on that side since." },
      } },
    { name = "the moss lawn",
      description = "Ankle deep, even, and so green that it seems to give off light. Nothing else will grow in the shade of the Tall Tree. It keeps a lawn, like a house that has come down in the world but still has the grass cut.",
      things = {
        { name = "your footprints", description = "They fill slowly behind you, the moss coming up again like a held breath let go. In an hour there will be no sign that you were here. You find you do not mind." },
        { name = "a ring of pale mushrooms", description = "Nine paces across, perfect. At home that would be fairies. Here Podge has put a label on it, and under the label, in pencil, in a smaller hand: {i}the Aunts say: do not sleep inside. They do not say why. I did not.{/}" },
        { name = "deer", description = "Three, no bigger than hares, with legs like twigs, grazing the moss at the far side. They look up all together. They have never seen a person hurry, since nobody here does, and they are not afraid of you until you sneeze." },
      } },
    { name = "the columns of light",
      description = "Where the crown leaves a gap the sun comes down in a shaft you could put your arms round, and it stands on the moss like a pillar of a hall. Dust and small flies turn in it, gold. There are seven or eight in the clearing, and they move across the lawn as the day goes round, like the hands of a clock that nobody reads.",
      actions = {
        { "Stand in one", say "Warm, and so bright that the rest of the clearing goes dark. Things drift past your face shining: a seed on a parachute, a thread of spider silk, a gnat. You hold out your hands and they are full of light to the wrists. Then the shaft moves on, a foot or so, in the time it takes to notice, and leaves you standing in the ordinary green." },
      } },
    { name = "the creepers",
      key = "jg_creepers",
      description = "On the north side of the ring they hang from the giants in a curtain a hundred feet high, and it has a gap in it. Not a tear. A neat, upright space, about the width of a house, where no creeper hangs, though there are boughs above it for them to hang from. They come down on either side and stop at an edge as straight as a wall.",
      variants = {
        { when = flag "jg_tower_found",
          name = "the gap in the creepers",
          description = "A neat, upright space in the curtain of vines, the width of a house, with edges as straight as a wall, since that is what they are growing against. You have your bearings now. There is a door about here. You find it each time by walking into it." },
      },
      things = {
        { name = "the edge of the gap", description = "The vines on each side are pressed flat on the side that faces the space, as ivy is when you pull it off a building. A tendril has started across. It goes along in mid air, feeling its way, quite level, as if on a ledge." },
        { name = "the birds", description = "Six green parrots in a row, about forty feet up, in the middle of the gap, sitting on nothing. They preen. One sidles along and another makes room. A seventh comes in to land beside them and puts its feet down on the empty air with complete assurance.",
          actions = {
            { "Clap your hands", say "They go up, shouting. For a moment the gap is empty. Then, one by one, they come back and settle in a row on the same nothing, at the same height, and look down at you as people look down from a window ledge." },
          } },
        { name = "the rain shadow", description = "The moss at the foot of the gap is drier than the rest, in a patch that is exactly round. When the four o'clock rain comes it falls everywhere in the clearing but here. Above this spot it runs down something, in sheets, and comes off at the bottom in a ring." },
      },
      actions = {
        { "Walk into the gap", when = no(flag "jg_tower_found"), set "jg_tower_found", fx "shake",
          say "You put your hand out in front of you like a man in a dark cellar and walk forward. Four paces. Five. At the sixth, your nose arrives before your hand. It is stone. You can feel courses, and mortar, and, a little to the left, a door, with an iron ring, and a small brass plate at eye level. You read the plate with your fingers. It says: {i}NULL. No hawkers. Knock and WAIT.{/}" },
      } },
    { name = "a tapir path",
      description = "A tunnel through the undergrowth at the height of your waist, trodden hard, coming in from the camp side and going out towards the temple. It bends round the north side of the clearing in a neat half circle, as a path bends round a building." },
    { name = "the survey post",
      description = "A stake with a Collegium flag, driven into the moss at the foot of the Tall Tree, and a label: {i}Brandish's Oak.{/} It is not an oak. The stake has put out two leaves." },
    { name = "the sky",
      description = "A round piece of it, blue, a long way up, with the crown of the Tall Tree across the middle. It is the first you have seen from the ground since the Landing. A hawk is turning in it. You had forgotten how far up things can be.",
      things = {
        { name = "the top of the Tall Tree, against the sky", description = "One bare bough stands out above the rest of the crown like a mast. There is a bleached rope end hanging from it, very old. Somebody, at some time, tied up to that." },
      } },
    { name = "the fruit fall",
      description = "Under the western giant, the moss is covered with figs, and every animal within a mile knows it. They come in shifts.",
      things = {
        { name = "an agouti", description = "A brown thing between a rabbit and a pig, sitting up with a fig in both hands. It eats half. It buries the other half and pats the moss down. It will not remember where. That is how the western giant got here in the first place." },
        { name = "the pigs", description = "A dozen, bristly, with white collars. They arrive in a line, eat in a line, and leave in a line, without a word to anybody. The deer make way. So do you." },
      } },
    { name = "a hunter's shelter",
      description = "Four sticks and a roof of leaves, against one of the twelve. The river people overnight here on the way to the temple side. A gourd of water is left full for whoever is next, and a bundle of dry tinder, and you are expected to leave them as you found them." },
    { name = "the foot of the sloping bridge",
      description = "Where the High Walk comes to ground: the last span, tied off to a root, with a notice in Podge's writing. {i}To Camp, by air. Do not feed the howlers. They remember.{/}" },
    { name = "the hush",
      description = "The clearing has a sound that is not silence. Leaves are always coming down from the crown, from so high that they take a minute to arrive, turning, and each lands on the moss with a tick. All over the lawn, slowly, tick. Tick.",
      actions = {
        { "Catch a falling leaf", say "You pick one, high up, and walk under it with your hands out. It slides off the air to the left. You follow. It slides back. You are dancing with a leaf in a clearing at the end of the world, alone but for three small deer. It lands on your head." },
      } },
  },

  exits = {
    { to = "jg_canopy", label = "Up the sloping bridge",
      description = "Tree by tree, back into the air." },
    { to = "jg_temple", label = "Through the widest gap",
      description = "East, by the tapir path, towards the red stone over the trees." },
    { to = "jg_tower", label = "The door you cannot see",
      description = "Six paces into the gap, hand out, a little to the left.",
      requires = flag "jg_tower_found", hidden = true },
  },
}

space {
  id = "jg_tower",
  region = "sweltering",
  secret = true,
  wonder = true,
  name = "The Tower of Magister Null",
  description = "The door opens inward, by itself, rather crossly. Inside is a round study, and a stair going up, and the forest. All of it, on every side: the tower is as clear from within as from without. You are standing on a carpet that seems to float six feet above the moss. There are books in rows on shelves of air. Higher up, where the next floor is, a bed and a wash stand hang in the sky, and above those a row of parrots sits on the roof, seen from underneath.",
  palette = { bg = "#0b1210", text = "#dce4d8", dim = "#6a7c74", accent = "#b98cf0", border = "#3a5450" },
  ambience = {
    shimmer { color = "#c8b0f0", strength = 0.25 },
    dust { glyphs = "·˙", color = "#8a90a8", rate = 0.3 },
  },

  things = {
    { name = "the Magister",
      key = "jg_null",
      icon = "°",
      description = "A pair of spectacles, at about the height of a short man's face, and below them ten inky fingerprints working a pen. That is all of him there is to see. Ignatius Null, a porter's son, sometime Reader in Occlusion at the Collegium and the last Reader there who could do what he lectured on, made himself and his tower invisible forty years ago so as to get some work done without interruption. You are the first interruption. He seems to have been keeping count.",
      things = {
        { name = "his spectacles", description = "Steel, round, hanging in the air. He did the spell with them off, and has regretted it since, as they are the one thing callers can find. They turn towards you. Behind the lenses there is the room, slightly enlarged." },
        { name = "his fingerprints", description = "Black, ten, and moving. He ran out of invisible ink in the second year. Everything he has touched since then has prints on it: the pen, the cup, the banister all the way up. You could follow his whole day round the tower by them, and it is a short walk." },
        { name = "his voice", description = "Dry, quick, and from a little to the left of where you were looking. He has not used it on anyone in forty years, and it has a good deal saved up." },
      },
      actions = {
        { "Apologise for disturbing him", say "\"Forty years!\" say the spectacles. \"Forty years without one knock. No students. No Bursar. No {i}could I have a moment, Magister{/}. I have had every moment. I have had them all.\" The fingerprints drum on the desk. \"Do you know how much work I have done?\" You say that it must be a great deal. There is a pause. \"Sit down,\" he says, in a different voice. \"There's a chair. It's behind you. Feel about.\"" },
        { "Ask about his work", say "He shows you. The fingerprints lift a sheet of paper off a stack three feet high. It is a title page: {i}A Complete Theory of Everything. Vol. I: Preliminaries.{/} The next sheet is the same title page, in a slightly better hand. So is the next. \"One must begin correctly,\" he says. \"It turns out that with nobody at the door there is no reason to begin today in particular. I had not foreseen that. I had thought it was the knocking that stopped me.\"" },
        { "Ask how he eats", say "\"I had an arrangement with the village. A basket, weekly, left at the door.\" The spectacles droop. \"They could not find the door. For a time they left it where they thought the door might be, and the pigs had it. I live on figs. I am very tired of figs. If you should pass Stilts, it is six paces in and a little to the left. Tell them {i}left{/}.\"" },
        { "Ask for the cloak", when = no(flag "jg_cloak_given"), set "jg_cloak_given", give "jg_unseen_cloak", fx "wash",
          say "You ask whether it is true that he wove a cloak. The fingerprints stop. \"The Cloak of Unseeing. Yes. My masterwork. Kings sent for it. It is on that hook.\" You look. There is a hook. \"Or it was. I hung it up the day I finished it, and I have not been able to find it since. I found the hood once, by sitting on it.\" He goes round the room, patting the air. Something is put in your arms that weighs about as much as a held breath and makes your hands go dim to the wrist. \"Take it. Take it away. I made a thing that nobody can find, and I am the one who has to live with it. You, at least, will lose it somewhere else.\"" },
      } },
    { name = "the walls",
      wonder = true,
      description = "There are none to see. The forest stands all round at the distance of an arm, each leaf sharp, and nothing between you and it but a slight bending of the light, as over a hot road. You put out a hand and it stops on cold stone. A parrot is sitting in the air a foot from your face, on what must be a window sill. It looks straight through you at another parrot. {shimmer}You are standing inside a building in the middle of the open air{/}, dry, in the four o'clock rain, and the rain is running down nothing on every side like a bell of glass.",
      things = {
        { name = "the rain on the walls", description = "It shows you the shape at last, for twenty minutes each day: a round tower, five floors, with a pointed roof and a crooked chimney, drawn in running water. Then it dries and is gone. He says that it is his favourite time. He says that he likes to see the old place." },
        { name = "a window", description = "You find it by the draught. It has a catch. You open it, and the sound of the forest comes in louder through a square hole in nothing." },
        { name = "moss on the outside", description = "It has begun, in forty years, at the foot: a faint green ring, a hand high, the outline of the tower on the ground. He is furious about it. It can be seen. He goes out at night and scrubs." },
      },
      actions = {
        { "Lean on the wall", say "You lean, carefully, on the view. It holds. You are propped at an angle against the whole forest, with your shoulder on a tree that is forty yards away. A deer in the clearing looks up at where you would be, and looks away, and the back of your neck goes cold in a way that is not unpleasant." },
      } },
    { name = "the desk",
      description = "You can see this: he did not do the furniture. An oak desk, standing in mid air on a carpet, with three feet of manuscript, an inkstand and a tray.",
      things = {
        { name = "the manuscript", description = "Eleven thousand title pages. He numbers them. The handwriting improves steadily for twenty years and is, in the later ones, very fine." },
        { name = "the in tray", description = "Empty, and has been for forty years. Dusted. The fingerprints on the rim are thickest of anywhere in the room. He has looked in it a great deal." },
        { name = "the out tray", description = "One letter, sealed and addressed to the Bursar of the Collegium, forty years old. {i}Sir, I shall not require my rooms. Do NOT forward post.{/} He never sent it, there being nobody to take it. His rooms, he supposes, are waiting. He asks you whether the Bursar is still Parfitt. You do not know. He seems to have hoped that you would." },
        { name = "an hourglass", description = "The sand is invisible. He did that by accident. You can hear it running. Neither of you can tell how much is left." },
      } },
    { name = "the bookshelves",
      description = "Three hundred books in ranks on the air, with the trees showing between them.",
      things = {
        { name = "the works on Occlusion", description = "{i}On Not Being Seen. On Not Being Seen, A Reply. Invisibility for the Busy Man.{/} The last is by him. The Collegium has no copy. He delivered it, as he thought, by hand, and the Librarian did not notice." },
        { name = "a book that is not there", description = "A gap in the row. You put your fingers into the gap and they close on a spine. You draw it out and open it. Nothing: your own two hands, held apart. But you can hear the pages turn.",
          actions = {
            { "Read it", say "You run a finger down the page that is not there and you can feel the print. It is slow going. You make out {i}Chap. IV{/} and something that is either {i}the nature of light{/} or {i}the nature of lunch{/}. He says that it is his best book and he has never been able to check the proofs." },
          } },
        { name = "a shelf of novels", description = "At the back, where he thought they would not show: forty years of romances, sent out from Aldmoor before the baskets stopped. They are much thumbed, with fingerprints at all the best places." },
      } },
    { name = "the stair",
      description = "It goes up round the inside of the wall, and you can see none of it. What you can see is forty years of black fingerprints on a banister, winding up into the sky like a flight of small birds.",
      actions = {
        { "Go up a few steps", say "You find the first step with your shin. You go up six, holding the fingerprints. Now you are standing in the air twice your own height above a carpet, with nothing under you that your eyes will agree to. Your knees make a decision of their own. You come down on your seat, a stair at a time, as children do. \"Everybody does that,\" says the Magister. \"I did it myself for the first three years.\"" },
      } },
    { name = "the floors above",
      description = "Since the floors cannot be seen, the rooms are stacked up over your head in plain view, furniture on nothing.",
      things = {
        { name = "the bedroom", description = "An iron bed, made, hanging thirty feet up. A night shirt on a hook. A chamber pot, discreetly, in mid air. He asks you not to look, and you have, and you both let it go." },
        { name = "the laboratory", description = "A bench of glassware at the height of the tree tops, catching the sun. One flask has something in it that you cannot see, and it is boiling, to go by the lid." },
        { name = "the roof", description = "The parrots, from below: six pairs of grey feet gripping a ridge, and six green stomachs. Now and then one looks down between its own toes at the two of you, and says in the Magister's voice, quite clearly, {i}\"Where did I put it?\"{/}" },
      } },
    { name = "the chair",
      description = "Behind you. You find it by feel: horsehair, with arms. He did the chair along with himself, by mistake, as he was sitting in it at the time.",
      actions = {
        { "Sit down", say "You lower yourself on to nothing, trusting to your hands, and it takes you. You are seated in mid air in a wood. It is a very comfortable chair. You cross your legs, to carry it off, and a passing agouti outside stops dead and stares at a northerner reclining on the breeze." },
      } },
    { name = "the kettle",
      description = "Visible, copper, on a hob you cannot see over a fire you cannot see, which you can feel on your shins. It boils. He makes tea in a cup with fingerprints on, and after some hunting finds you a second cup that has none, as nobody has ever used it.",
      actions = {
        { "Take tea with him", say "It is fig-leaf tea. It is not good. He watches you drink it, or the spectacles do, with an attention that is hard to bear. \"I used to tell them at the Collegium,\" he says, \"that company was the enemy of thought.\" He pours you another. \"I had the wrong enemy. Stay for a third cup. I'll tell you about the nature of light. Or lunch. I forget which I settled on.\"" },
      } },
    { name = "the fig basket",
      description = "By the door. Figs. Under the figs, more figs. He picks them off the roof, where the parrots drop them." },
    { name = "the door plate, from inside",
      description = "On the back of the door there is a second brass plate, which only he ever sees. It has been engraved, crossed through with a nail, and engraved again beneath: {i}DO NOT DISTURB{/}, and under that, smaller, newer, {i}unless you would like to{/}." },
    { name = "the calendar",
      description = "Forty of them, one above another on a nail, the newest on top. He has had no way to get them, so he has drawn each himself, and by now he is out by some weeks. He asks you the date. You tell him. He is quiet, and then he says: \"So I missed my birthday. Again. Well. I could not have had anybody round.\"" },
    { name = "the looking glass",
      description = "On the wall by the stair, in a gilt frame, hanging in the trees. You look into it and see the forest behind you, and the desk, and no northerner. The tower does it to guests, a little, while they are in. You hold up a hand. It is there, but you can see a parrot through it.",
      actions = {
        { "Make a face", say "You make a terrible one. The glass shows the room. Nobody will ever know. It is the freest you have felt since you left home, and you can see how a man might mean to do it for an afternoon and look up to find that forty years had gone." },
      } },
  },

  exits = {
    { to = "jg_clearing", label = "Out by the door",
      description = "Feel for the iron ring. Mind the step, which is there." },
  },
}
