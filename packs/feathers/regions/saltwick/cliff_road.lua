space {
  id = "cliff_road",
  region = "saltwick",
  name = "The Cliff Road",
  description = "The road leaves Aldmoor's walls, climbs for a mile out of habit, and then runs out of country. On the left, sheep. On the right, a great deal of air, and at the bottom of it, the sea.",

  things = {
    { name = "the sea",
      wonder = true,
      icon = "≈",
      description = "Grey-green, moving, and far too much of it. It goes out until it becomes sky, and there is no seam. Every map you have seen drew this as a blue edge with a fish in it. {magic}The maps left out that it breathes.{/}",
      things = {
        { name = "the horizon", description = "Flat, and exactly level with your eyes. You climb a rock to look down on it. It comes up with you." },
      },
      actions = {
        { "Shout at it", say "The wind takes your shout back inland, where somebody else will have to deal with it." },
      } },
    { name = "a signpost",
      description = "Three arms, pointing three ways with equal confidence.",
      things = {
        { name = "the first arm", description = "{place}ALDMOOR{/}, 1 mile. Uphill in both directions, according to the farmers." },
        { name = "the second arm", description = "{place}SALTWICK{/}, down." },
        { name = "the third arm", description = "{place}THE EDGE{/}, here. Somebody has added, in chalk, {whisper}mind it{/}." },
      } },
    { name = "the sheep",
      description = "Cliff sheep. They graze at angles that would make a goat reconsider.",
      things = {
        { name = "a sheep on a ledge",
          description = "Forty feet down the face, on a ledge the width of a plank, chewing. There is no way down to it and no way up from it. It was not born there. It is in no hurry to explain." },
      },
      actions = {
        { "Count them", say "Eleven. Then twelve. The twelfth is the one on the ledge, and you would rather not have looked." },
      } },
    { name = "a bench",
      description = "Facing the sea, grey with salt, with a brass plate on the back.",
      things = {
        { name = "the brass plate", description = "{i}In memory of Odo Pell, who sat here every day and never did find out what was over there.{/}" },
      },
      actions = {
        { "Sit", say "You sit. The wind goes through your coat, has a look round, and leaves." },
      } },
    { name = "the wind",
      description = "It comes off the sea in one piece and goes inland to trouble Aldmoor. Everything on the cliff top has made its arrangements: the thorn trees grow sideways, the sheep graze facing it, and the signpost has been re-set four times.",
      things = {
        { name = "a thorn tree", description = "It grew upward for a foot, met the wind, and has gone inland ever since, level with the ground, for five yards. There is a nest in it, also sideways, with a linnet sitting in it at an angle." },
        { name = "somebody's hat", description = "Going past, at head height, in the direction of Aldmoor. It is the third today. There is a hedge a mile inland where they all fetch up, and a man who sells them back." },
      },
      actions = {
        { "Spit into it", say "You are a quick learner. It only takes the once." },
      } },
    { name = "the gorse",
      description = "Banks of it along the landward side: green spikes and yellow flowers that smell, improbably, of coconut. It is in bloom. It is always in bloom. The saying here is that when the gorse is out of flower, kissing is out of season.",
      things = {
        { name = "a stonechat", description = "A small bird with a black head on the topmost spike, making a noise like two pebbles knocked together. It is telling you that this is its bush. It told the last sheep the same." },
        { name = "a tuft of wool on the thorns", description = "The gorse takes a little off every sheep that passes. By midsummer there is nearly a whole one in here, in instalments." },
      } },
    { name = "the cliff edge",
      description = "Turf, then a lip of crumbling earth, then nothing for two hundred feet. A row of white stones marks where the edge is. A second row, further out and lower down, marks where it used to be.",
      things = {
        { name = "the sea pinks", description = "Thrift, in round cushions, growing right on the lip with their roots in air. They nod over the drop like people looking for something they dropped." },
        { name = "the ledges below",
          description = "A city of sea birds, storey upon storey, every ledge let. The noise comes up like a market.",
          things = {
            { name = "the guillemots", description = "Hundreds, upright, shoulder to shoulder in black and white, each with one egg on bare rock between its feet. The egg is pointed, so that it rolls in a circle. It is the only precaution on the whole cliff." },
            { name = "a puffin", description = "It stands at the mouth of a burrow with nine small fish laid crosswise in its beak, all facing alternate ways, and looks at you as a man looks who is carrying too many plates." },
          } },
      },
      actions = {
        { "Look over", say "You lie down first, which is the only sensible thing you have done today, and put your chin over. Birds. Rock. A long way down, the sea, working at the foot of it. A sheep looks up at you from its ledge without interest." },
      } },
    { name = "the Preventive man",
      icon = "♜",
      description = "An officer of the Crown's Revenue in a blue coat, sitting on a shooting stick with a telescope to his eye. He is here to watch for smugglers. The telescope is trained, with great steadiness, on Aldmoor.",
      things = {
        { name = "his telescope", description = "Brass, three draws, the property of the Revenue. \"They never come from the sea,\" he says. \"That is what they want you to think. I have been watching that town gate for six years.\" Behind him, below the cliff, a lantern shows once and is covered." },
        { name = "his notebook", description = "{i}Day 2,190. Nothing. They are clever.{/} Every page is the same. On the cover he has written {i}EVIDENCE{/}." },
        { name = "his sandwiches", description = "Wrapped in a cloth and, you notice, smelling very strongly of good brandy. \"A fisherman gives them to me,\" he says. \"Out of respect for the service.\"" },
      },
      actions = {
        { "Ask about smugglers", say "\"None,\" he says, with satisfaction. \"Not one, in six years. I think they know I'm here.\" He takes a bite of his sandwich. His eyes water slightly." },
        { "Point at the sea", say "He turns the telescope round, looks at the sea for the length of a breath, and turns it back. \"Water,\" he says. \"You'll get nothing in by water. It's all wet.\"" },
      } },
    { name = "an iron beacon",
      description = "A fire basket on a pole at the highest point of the road, rusted through in the bottom. It was lit to warn ships off the rocks, before the Light. Some years it was lit to bring them on.",
      things = {
        { name = "the basket", description = "A rook has built in it. Sticks, wool, and one strand of red silk ribbon that never came from a sheep." },
        { name = "a brass plate on the pole", description = "{i}This beacon was kept by the Pell family for nine generations. They are sorry about the eighth.{/}" },
      } },
    { name = "a milestone",
      description = "Square, lichened, sunk to its shoulders in the turf. One face says {place}ALDMOOR 1{/}. The other says {place}SALTWICK ½{/}, and under that, added by a mason with a conscience: {i}(down){/}.",
      things = {
        { name = "the lichen", description = "Orange and grey in rings, spreading a hair a year. It has got as far as the top of the {b}A{/}. By the time it reaches the {b}R{/} the road will have fallen into the sea, and the stone will be accurate about nothing." },
      } },
    { name = "a kestrel",
      icon = "v",
      description = "Hanging on the wind just beyond the edge, at the level of your eyes, tail spread, wings shivering, head as still as if it were nailed to the sky. It is looking at one square foot of turf beside your boot.",
      actions = {
        { "Look where it is looking", say "A vole, flat in the grass, an inch from your toe, eyes shut. You move your boot so that your shadow covers it. The kestrel slides away down the wind. You have made an enemy and a friend, and neither will remember." },
      } },
    { name = "a seaweed cart",
      description = "A two-wheeled cart loaded with wet brown wrack, stopped halfway up from the harbour while the pony gets its breath. The carter is asleep on the shafts. The pony is eating the load.",
      things = {
        { name = "the pony", description = "Shaggy, sea-coloured, and in no doubt about who is in charge of this cart. It gives you a long look over a mouthful of kelp. You do not wake the carter." },
        { name = "something in the weed", description = "A glint among the wrack: the neck of a small flat bottle, corked. Then another. Then you see that under a thin layer of seaweed the cart is carrying a great deal of something else, and that the carter has one eye open." },
      },
      actions = {
        { "Ask what the seaweed is for", say "\"Fields,\" says the carter, without moving. \"Very good for fields.\" The cart clinks. \"Glass is good for fields too,\" he says. \"Drainage.\"" },
      } },
    { name = "a turf maze",
      wonder = true,
      description = "Cut into the grass on the landward side: a ring of narrow paths, coil within coil, no wider than a foot. The fishermen's wives walk it when a boat is late. {magic}You cannot get lost in it.{/} There is one path and no choices, and however you walk it you come out facing the sea. They say it has never failed to bring a boat home, and they say it quietly, and they keep the turf cut.",
      things = {
        { name = "the centre", description = "A flat stone with a hollow worn in it, and in the hollow a few small things left for luck: a net needle, a baby's shoe, a herring scale as bright as a coin." },
      },
      actions = {
        { "Walk it", say "It takes longer than it looks. Round, back, round the other way, nearly to the middle and then all the way out to the rim again. Then the stone. You stand on it and look up, and you are facing the sea, and far out there is one sail that you would swear was not there before." },
      } },
    { name = "a fourth arm on the signpost",
      description = "Newer than the other three, iron where they are wood, and bolted on dead level with a spirit gauge still attached. {place}TICKOVER{/}, 3 miles. Under it, on an enamel plate: {i}Allow four minutes.{/}",
      things = {
        { name = "the spirit gauge", description = "A little glass tube with a bubble. The arm was true when they fitted it. The post has since leaned with the wind, and the bubble has gone to one end and stayed there, like a man who has stopped arguing." },
        { name = "a smudge of smoke inland", description = "Follow the arm and there it is, over the fields: a low brown cloud that goes up in puffs, evenly, as if somebody were signalling and had only the one thing to say." },
      } },
    { name = "a pair of rails in the grass",
      description = "Two lines of rusty iron, a yard apart, beginning at a wooden buffer in the middle of the sheep and going off inland as straight as a rule. The sheep step over them without looking. One lamb is walking along a rail with great care, and has clearly done it before.",
      things = {
        { name = "the buffer", description = "Tarred timber, facing the sea. A brass plate: {i}PHASE ONE. TICKOVER MUNICIPAL TRAMWAYS REGRET THAT THE SEA IS NOT YET SERVED.{/}" },
        { name = "a daisy between the sleepers", description = "One, in the cinders, with a neat hole cut in the turf beside it. Somebody comes out from the city each day and takes one, and each day leaves the next." },
      },
      actions = {
        { "Balance on a rail", say "You get nine paces. The lamb, on the other rail, gets fourteen and looks back at you." },
      } },
    { name = "a shepherd's hut on wheels",
      description = "A tarred box with a tin chimney and a half door, hauled up here for the lambing and never hauled back. It has a stove, a bunk, and a window on the sea side that somebody put in afterward, crooked, with a knife.",
      things = {
        { name = "the shepherd", description = "A long silent woman called Hesper, knitting a sock from wool she pulled off the gorse. She counts the sheep at dusk by letting them count themselves: they go through a gap one at a time and she listens for the wrong sort of quiet.",
          actions = {
            { "Ask about the sheep on the ledge", say "\"Nettle. She goes down in spring and comes up at shearing. I've never seen her do either.\" She turns the heel. \"I asked her once how. She looked at me as if I'd asked how to chew.\"" },
          } },
        { name = "a crook by the door", description = "Hazel, with a ram's horn handle, polished by one hand. Notched down the shaft: lambs, by year. One year has a notch on the wrong side. That was the puffin she raised by mistake." },
        { name = "the stove pipe", description = "The wind has bent the smoke over at a right angle an inch above the tin. It goes inland with the hats." },
      } },
    { name = "a house with violet curtains",
      description = "Set back from the road on the seaward side, alone, white, with a slate roof and a little glazed lookout on top that faces north. The curtains are violet and are drawn back. There is a brass telescope in the lookout, on a stand, and somebody sitting beside it.",
      things = {
        { name = "the lookout", description = "A box of glass no bigger than a pulpit. An old lady in a lace cap sits in it every forenoon with her hands in her lap. She does not use the telescope. She says that when there is something to see she will not need it." },
        { name = "the garden gate", description = "Painted every spring, white, and oiled, and never latched. A gate that has been left on the latch for sixty-two years, the carrier says, so that a gentleman coming home from sea should not have to fumble with it." },
        { name = "the letter box", description = "Brass, polished thin. The postman calls on the first of the month, both ways: one in, one out. He has done the round thirty years and says it is the only house on it where he wipes his feet to deliver." },
      },
      actions = {
        { "Raise your hat to the window", say "The lace cap inclines. A hand, very small, lifts from the lap and comes down again. You walk on up the road feeling that you have been received, and that it was done properly, by someone who has kept in practice." },
      } },
    { name = "a milestone with a later hand",
      description = "The old stone says {i}SALTWICK 1{/}. On the back, facing the sea, someone has cut with a chisel, much more recently and with some humour: {i}DRIFT 400. MIND THE ICE.{/}" },
  },

  exits = {
    { to = "aldmoor_gate", description = "Back inland, to the walls and the queue." },
    { to = "saltwick_harbour", description = "Down the switchbacks to roofs, masts, and a smell of fish that has come up to meet you." },
    { to = "long_strand", label = "The cliff steps",
      description = "Steps cut in the cliff, down to a long grey beach. A rope handrail has been provided for most of them." },
    { to = "tk_gate", label = "The branch road",
      description = "A side road going inland past an iron buffer, with rails in it, toward a smudge of smoke that goes up in puffs." },
  },
}
