-- The red temple, which was old before it was built, and the room under it.

space {
  id = "jg_temple",
  region = "sweltering",
  name = "The Red Temple",
  description = "A stepped hill of red stone, as high as the trees and as wide as Greenhollow, with a fig as big as a church growing out of the top of it and roots coming down every side like wax down a candle. Terraces, stairs, a doorway with a face over it. No moss will grow on the stone. The jungle, which eats tents in a night, has come up to the lowest step of this and stopped.",
  palette = { bg = "#120c0a", text = "#e0d0c0", dim = "#806858", accent = "#e07848", border = "#583428" },
  ambience = {
    dust { glyphs = "·˙∙", color = "#8a5a40", rate = 0.3, speed = 0.4 },
    fireflies { color = "#e0b070", rate = 0.1 },
  },

  things = {
    { name = "the great fig",
      description = "It sits on the summit with its roots over the temple like a hand over a ball. Each root is thicker than a man. They go down across the terraces, in at one window and out at another, and into the ground at the bottom.",
      things = {
        { name = "a root through a wall", description = "It has split the stone and grown through, and the stone has shifted to let it: that is plain enough. Then you look at the blocks on either side. They are cut to a curve. They were shaped to go round the root, and mortared up to it, by masons who found it already there.",
          things = {
            { name = "Dr Mimms's chalk marks", description = "On the root: {i}900 rings (bored){/}. On the wall above: {i}older than root, since root broke it{/}. On the curved blocks: {i}younger than root, since cut to fit it{/}. Then a line drawn through all three, and one word, pressed so hard that the chalk broke: {i}WELL?{/}" },
          } },
        { name = "the crown", description = "Dark, shining, alive with pigeons and monkeys after the figs. It is the only green thing on the hill. Everything that eats in it is careful, you notice, to do its dropping somewhere else." },
        { name = "a root like a stair", description = "It comes down the east face in a series of knees, and people have used it as steps for so long that each knee is worn to a saucer. It is easier going than the stone stair beside it, which is cut for somebody with longer legs than you." },
      } },
    { name = "the east stair",
      key = "jg_east_stair",
      description = "Broad, steep, from the terrace down to the forest floor. Every tread is hollowed in the middle by feet. The river people say that their grandmothers' grandmothers found it worn like that, and that they themselves have never used it.",
      variants = {
        { when = flag "jg_stair_found",
          description = "Broad, steep, from the terrace down to the forest floor: nine worn steps, and a tenth below them which is not a step but the lid of something. The slab has been swung aside on a pivot. Under it a narrower stair goes on down, into the hill, and a cold air comes up out of it that smells of stone and of a very long time." },
      },
      things = {
        { name = "the hollows in the treads", description = "You put your foot in one. It fits. Not well: the foot that made it was broader and turned out a little more. A great many of them went up and down here, for an age, and then there were none, and then there was a forest." },
        { name = "the lowest step", visible_if = flag "jg_stair_found",
          description = "It is not worn at all. Nobody trod on it, since everybody knew that it was a door. There is a groove along one edge for the fingers. The pivot turned for you without a sound, and without a grain of dust falling, as if it had been used last week." },
      },
      actions = {
        { "Count the steps", when = no(flag "jg_stair_found"), set "jg_stair_found",
          say "You go down, counting aloud. Seven, eight, nine. Your foot comes down on a tenth. You go back up and count again. Nine, and one. The tenth is level with the ground, with leaves over it, and is not worn. You clear the leaves. There is a groove along the edge. You put your fingers in and lift, expecting nothing, and half a ton of red stone swings up and aside like a pot lid. Under it is a stair, and the dark." },
        { "Go down", when = all(flag "jg_stair_found", no(item "jg_glow_lamp"), no(flag "jg_under_open")),
          say "You go down four steps and the daylight gives out. You strike a light. It leans over flat, in the cold air coming up, and goes out. You try again. The same. Something down there has no use for fire. You climb back up, telling yourself that you were not hurrying." },
        { "Go down", when = all(flag "jg_stair_found", item "jg_glow_lamp", no(flag "jg_under_open")), set "jg_under_open",
          say "You hold up Auntie Mo's gourd. The glow-worms take one look at the dark and shine like anything. Green light goes down ahead of you over step after step, and the walls on both sides are carved, from top to bottom, with faces whose eyes are shut. You do not shout. They are sensitive." },
      } },
    { name = "the face over the doorway",
      wonder = true,
      icon = "☼",
      description = "Cut from a single block twenty feet across: a broad calm face with its eyes half shut and the corners of the mouth just lifted. It is the face on the post at Stilts. It is the face that Old Tamba cannot carve. Rain has run down it for longer than anybody can count and has not blurred a line, and the whole of the jungle has grown up in front of it and has not made it look anything but {glow}patient, and faintly entertained{/}. You stand in front of it and you feel that you are early for something, and that it does not at all mind.",
      things = {
        { name = "the eyes", description = "Half shut, as a cat's are in the sun. Under each lid a sliver of polished black stone has been let in, so that whichever way you move, a point of light moves under the lid, and the face is watching you through its lashes." },
        { name = "the mouth", description = "Dr Mimms measured the lift of the corners. A finger's breadth. She came back a year later with the same string. She has not told the Professor what she got. She has told Podge, and Podge has stopped coming here alone." },
      },
      actions = {
        { "Look it in the eye", say "You hold its gaze. It is like trying to stare down a hillside. After a time you are not sure which of you was looking first, or whether, by its reckoning, you have yet arrived. You nod to it. It would be wrong to say that it nods back. It would not be entirely wrong." },
      } },
    { name = "the doorway",
      description = "Tall, narrow at the top, and going back into the hill for six paces to a wall. It is not blocked. It was built as a doorway into six paces of passage and a wall. On the end wall, one carving.",
      things = {
        { name = "the carving on the end wall", description = "It shows a stepped hill with a great tree on top and roots down the sides. A forest stands round it. One corner of the terrace has fallen. It is this temple, as it is today, ruin, fig and all, and it is cut in the same stone by the same hands as the rest. Whoever built this place carved a picture of it overgrown before the first seed had landed on the roof.",
          things = {
            { name = "a figure in the carving", description = "Small, at the foot of the stair, with a pack on its back and a hand up to shade its eyes. Just the one. It is the size of your thumb. You look at it for a good while, and then at your own pack, and then you look for another visitor, and there is none." },
          } },
        { name = "the lintel", description = "A row of holes for something that hung here. Bells, by the wear. The river people have one of them, at Stilts, on the eldest Aunt's roof. It does not ring in wind. It has rung twice in her lifetime and she will not say what for." },
      } },
    { name = "the terraces",
      description = "Seven, one above another, each a shelf a few yards wide running round the hill, paved, and swept. Nobody sweeps them. Leaves come down from the fig and by morning they are not there.",
      things = {
        { name = "the pavement", description = "Red slabs, fitted so close that a knife will not go between. Each has a small mark cut in one corner, and no two marks are the same. Thousands. A name for every stone, or a mason for every stone, or a day." },
        { name = "a lizard", description = "Long, grey, with a crest, flat on a slab in the sun. It is the only thing you have seen on the stone that is at its ease. It has one eye shut and one half open, in what you now recognise as the style of the house." },
        { name = "stone bowls", description = "Along the edge of each terrace, a row, cut into the paving, each a hand across. After rain they hold water, and the sky. Seen from the top of the fig, Dr Mimms says, the whole hill is ringed with small blue eyes." },
      } },
    { name = "the south wall",
      description = "A hundred paces of carving, in bands, from the ground to above your reach: people, beasts, boats, trees. It reads from left to right like a book and nobody can read it.",
      things = {
        { name = "the band of beasts", description = "Tapir, monkey, crocodile, the dolphin of the river: all good, and quite recognisable. And among them, done with the same care by somebody who had plainly looked at one, a thing with a neck like a tree, and a thing with plates along its back, and a long jaw full of teeth, of which Old Tamba has one on a shelf." },
        { name = "the band of boats", description = "Canoes. Then larger, with sails. Then, near the right hand end, a long shape with no sails and no oars and a row of small round windows, riding above the water rather than on it. Then the band stops, at a clean edge, with plenty of wall left." },
        { name = "the band of people", description = "Walking, all one way, towards the east stair. Carrying jars, children, a bed. They go round the corner of the wall. On the next face the band continues, and it is empty: the ground line, cut ready, and nobody on it." },
      } },
    { name = "the count wall",
      description = "On the north side: no pictures. Marks. Small upright strokes in rows, cut neat and shallow, from one end of the hill to the other and from the paving to the top. Dr Mimms holds that it is a tally of days. If so, it is a great many more days than there ought to have been.",
      things = {
        { name = "the last mark", description = "Top right, at the end of the last full row. After it the stone is dressed and blank, and room has been left for more. The edges of the last stroke are as sharp as the first. Whoever stopped, stopped between one day and the next, and put the chisel down tidy." },
        { name = "the first mark", description = "Bottom left. You get down on your knees to see it. It is a stroke like the others. Before it, where the wall begins, somebody has cut a small plain circle, and that is all there is of any day before the first." },
        { name = "Podge's ladder", description = "Left against the wall with a tin of whitewash. He was set to number the rows. He got to row four hundred, which is knee height, did a sum on the wall beside it, and went back to camp to lie down." },
      } },
    { name = "the edge of the jungle",
      description = "A line, all the way round the hill, a pace from the bottom step. On one side, creeper, fern and root, in a tangle. On the other, red stone, bare. Not a tendril crosses. One vine has grown up to the line, turned, and gone along it for forty yards, looking for a way in.",
      actions = {
        { "Step across", say "From the leaf mould on to the stone. It is like coming indoors. The noise of the forest drops behind you by half, though there is no wall. The heat is the same. The stone under your boots is quite cool, and very slightly, steadily, humming, or you have a fever. Podge says everybody has that fever here and it goes when you step back." },
      } },
    { name = "offerings at the foot",
      description = "The river people will not go up. They leave things at the bottom step, on the jungle's side of the line: fruit, a fish, a flower, a button. By morning the fruit and the fish are gone, which is ants, and the button is gone too." },
    { name = "the fallen corner",
      description = "At the north-west, a piece of the third terrace has slid, and lies in a heap of blocks at the bottom, as in the carving. The broken faces are as fresh and red as a cut brick. No lichen, no weather. It might have come down this morning. It was down when the first canoe came.",
      things = {
        { name = "a block with a hollow in it", description = "Split in the fall. Inside the stone there is a neat round socket, lined with something green and hard, and it is empty. It is about the size of a loaf. Whatever sat sealed in the middle of that wall is not in it now." },
      } },
    { name = "the bats",
      description = "At dusk they come out of the doorway that leads to a wall. Thousands, for a quarter of an hour, in a stream as thick as smoke. Six paces of passage could not hold a tenth of them. Dr Mimms has stood in it at dusk with a lamp. She says that they come out of the carving." },
    { name = "the quiet on the top",
      description = "You climb to the seventh terrace, under the fig, and sit down on the root. The forest is all below you, steaming. The count wall is at your back. Nothing happens. It goes on not happening, calmly, in the manner of the face over the door.",
      actions = {
        { "Wait", say "You wait. A fig drops. A pigeon shifts. The shadow of the tree goes a hand's breadth across the paving. You could not say what you are waiting for, and it does not come, and when you get up it is with the feeling that you have kept an appointment all the same." },
      } },
  },

  exits = {
    { to = "jg_camp", label = "The cut path",
      description = "Half a mile back through the slot, to the tents." },
    { to = "jg_clearing", label = "The tapir path",
      description = "West, bent double, to the ring of giants." },
    { to = "jg_temple_under", label = "Under the tenth step",
      description = "Down the narrow stair, behind the green light, between the faces.",
      requires = flag "jg_under_open", hidden = true },
  },
}

space {
  id = "jg_temple_under",
  region = "sweltering",
  secret = true,
  name = "The Waiting Room",
  description = "A hundred steps down, the stair opens into a hall cut from the hill in one piece, round, domed, and quite plain. Stone benches run round the wall in three tiers. They face inward, to a low plinth in the middle, and something on it the size of a loaf. Nothing is broken. Nothing has fallen. There is no dust. It is a room in which a great many people sat and waited for something, and it is ready for them still.",
  palette = { bg = "#0a0e0a", text = "#c8dcc0", dim = "#587058", accent = "#78e088", border = "#284c2c" },
  ambience = {
    fireflies { color = "#78e088", rate = 0.15 },
    drip { glyphs = "⠁⠂", color = "#3c7048", rate = 0.1 },
  },

  things = {
    { name = "the plinth",
      key = "jg_plinth",
      description = "A drum of red stone, knee high. On it, in the green of your lamp, sits a figure in greener stone, with its hands on its knees and its eyes shut. All the benches face it. So, you find, do you.",
      variants = {
        { when = flag "jg_idol_taken",
          description = "A drum of red stone, knee high, with a circle on top that is paler than the rest and a little warm. All the benches face it. They do not seem put out. A room that has waited this long can wait for the centre of itself to be brought back." },
      },
      things = {
        { name = "the figure", visible_if = no(flag "jg_idol_taken"),
          description = "The face over the doorway, the size of your fist. Calm, broad, faintly amused. The left hand has one finger lifted from the knee by the thickness of a leaf. The stone has no tool marks at all, and is green right through, like the lining of the socket in the fallen wall." },
        { name = "the inscription round the drum", description = "One line, in the upright strokes of the count wall, going right round. You follow it with a finger. It has no beginning that you can find, and comes back to where your finger started without a gap." },
      },
      actions = {
        { "Take the idol", when = no(flag "jg_idol_taken"), set "jg_idol_taken", give "jg_patient_idol", fx "wash",
          say "You have no business to. You know that. You stand in front of it for some time. Then, since it is plain that nobody is coming, and that it has been sitting in the dark for longer than there has been a kingdom, you say \"Excuse me,\" and pick it up. It is heavy, and warm underneath. Nothing happens. No door grinds shut. No dart flies. The benches look on. If anything, the room has the air of having been asked at last, and of having said: yes, take it out, show it something." },
      } },
    { name = "the benches",
      description = "Three tiers, the whole way round, enough for a thousand. Every place is worn into a seat. Whoever they were, they came often, sat long, and kept to their own places.",
      things = {
        { name = "a seat on the lowest tier", description = "Worn deeper than its neighbours, with two more hollows in front, for heels. Somebody who fidgeted.",
          actions = {
            { "Sit in it", say "The stone is cut for a wider frame than yours. You sit all the same, and put your heels in the hollows, and face the plinth. The silence has a grain to it, as wood has. You have sat in chapels. This is not that. Nobody here was asking for anything. They were waiting, as you wait for a kettle, quite sure that it will boil." },
          } },
        { name = "a child's seat", description = "Between two large ones on the second tier: a small hollow, and beside it, scratched into the stone with something sharp, a row of little pictures. A fish. A boat. A face with its tongue out. The waiting was long for some." },
        { name = "the top tier", description = "Hardly worn. Latecomers, or the young, or those who were only there because their mothers said so." },
      } },
    { name = "the dome",
      wonder = true,
      description = "You lift the lamp. The roof goes up and up, a smooth bowl, and it is covered from rim to crown with small pieces of something set into the rock, and each one catches the green of the glow-worms and gives it back. {shimmer}Thousands of points.{/} You turn slowly on your heel. They are not scattered. There is the Plough, and the Hunter, and the Crown: it is the night sky, exact, as it stands over Greenhollow in the autumn, here, under a hill, in a jungle, where no northern star has ever shown. Whoever sat on the benches sat under your sky.",
      things = {
        { name = "the stones", description = "Each one is a chip of rock crystal, set in a drilled hole. Brighter stars have bigger chips. The faint ones are specks. There are more of them than you can see with the naked eye at home, and all, as far as you can tell, are in their right places." },
        { name = "a place with no stones", description = "North, and high. A patch of plain rock the width of your two hands held out, where nothing has been set. The holes have not been drilled. They knew every star in the sky to a speck, and they left that piece empty with great care." },
      },
      actions = {
        { "Find the star over Greenhollow", say "The one you steer home by, over the mill. It takes a minute. There: a chip no bigger than a grain of rice, a little to the left of the Plough's handle. You are three days by sea and four by river from the nearest person who would know it. You stand under it in the dark with your neck back for a long time. The glow-worms are very good about it." },
      } },
    { name = "the walls",
      description = "Above the benches: faces, in rows, cut in low relief, each a little different, all with their eyes shut. Not gods. They have the look of portraits. A broad one. A thin one with big ears. One who is trying not to laugh.",
      things = {
        { name = "the one trying not to laugh", description = "Third row, near the stair. The sculptor has caught it exactly: the pressed lips, the creased eyes. Somebody sat for that who could not keep a straight face in a holy place, and was loved enough to be put on the wall as they were." },
        { name = "a blank oval", description = "At the end of the lowest row there is a face that was begun and not gone on with. An outline, and the line of a brow. Then smooth stone. Beyond it there are no more ovals marked. That was the last, and they did not finish." },
      } },
    { name = "the second door",
      description = "Opposite the stair: a doorway of the same shape as the one outside, tall and narrowing. It is filled by a single slab without a handle, a hinge or a groove for the fingers. The figure on the plinth sits facing it. All the benches, when you come to look, are turned a little that way.",
      things = {
        { name = "the threshold", description = "Worn. As deep as the stair. People went through here in numbers, both ways, for an age, through a door that you cannot find the edge of with a knife." },
        { name = "the draught", description = "There is one, along the bottom, coming from the far side. It is not cold. It smells of nothing in the Sweltering: dry, and clean, and a little of dust in sun. The glow-worms all crawl round to that side of the gourd." },
      },
      actions = {
        { "Push it", say "You set your shoulder to it and push. It is like pushing the hill. You knock, then, feeling foolish. The knock goes away into the stone and nothing comes back. Not yet, says the room, in the manner of the room. Sit down." },
      } },
    { name = "the floor",
      description = "One piece with the walls, and polished by feet to a dull shine. From the stair to the benches the wear makes paths, as it does across a field, and they all go round the plinth and none of them over the spot directly in front of it." },
    { name = "the spring",
      description = "In a niche by the stair, water comes out of the rock into a basin and goes away again through a hole. It has cut a groove in the lip of the basin a hand deep. A dipper of green stone hangs beside it on a peg, and has not fallen.",
      actions = {
        { "Drink", say "Cold. The first cold thing you have met in the Sweltering apart from a bottle. It tastes of stone, and is the best water you have had. You hang the dipper back on its peg. It seems important to." },
      } },
    { name = "the lamp niches",
      description = "Round the wall at head height: a hundred small alcoves with nothing in them. No soot above. Whatever they burned here did not smoke, or they did not burn anything, and sat under their stars with some other light.",
      things = {
        { name = "one niche with something in it", description = "A gourd, old, cracked, with holes pricked in the side. A glow-worm lamp. Very long dry. So a river woman has been down here, once, with nine worms and her heart in her mouth, and left her lamp as you might leave a candle. Auntie Mo's hand went to a particular hook without looking." },
      } },
    { name = "the stair up",
      description = "A hundred steps, with the faces on either side. Going down you did not look. They are in order. At the bottom they are old. A little higher they are in their prime, and by the top they are children, and at the very top, each side of the slab, there are two with their eyes open." },
    { name = "the bats",
      description = "None. Not one, in a domed dark hall under a hill. They come out of the doorway above by the thousand, and they do not live in here, and there is nowhere else." },
    { name = "the silence",
      description = "It has been kept a long time and is in very good condition.",
      actions = {
        { "Say something", say "You cannot think what. In the end you say your name, quite low, and where you are from. The dome takes it round once and brings it back to you a little kinder than you said it. The glow-worms dim for a moment, and then, seeing that it was not a shout, come up again." },
      } },
  },

  exits = {
    { to = "jg_temple", label = "Up the hundred steps",
      description = "Between the faces, young ones last, to the daylight and the heat." },
  },
}
