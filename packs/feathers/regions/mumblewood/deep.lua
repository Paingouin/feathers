space {
  id = "deep_wood",
  region = "mumblewood",
  name = "The Thick of It",
  description = "Off the path the wood stops making allowances. The trunks are as wide as doors, then as wide as carts. The light comes down green and in small amounts. The mumbling is lower here, and slower, and you have the feeling of having walked into the back of a meeting.",
  palette = { bg = "#080e09", text = "#bcc6ac", dim = "#56644f", accent = "#8fbf5a", border = "#263c26" },
  ambience = {
    dust { glyphs = "·∙˙", color = "#3f5a30", rate = 0.4, speed = 0.3 },
    fog { color = "#101a10", speed = 0.1, strength = 0.4 },
    fireflies { glyphs = "✧·", color = "#a8d878", rate = 0.2 },
  },

  things = {
    { name = "the Old King",
      key = "old king",
      icon = "╪",
      description = "A fallen oak, the largest tree you have ever seen in either direction. It came down a century ago and lies the length of a street, higher than your head, green with moss from end to end. It is still mumbling. Trees take a long time over everything, and this one has not finished falling asleep.",
      things = {
        { name = "the trunk",
          description = "You could drive a wagon along the top of it. Somebody has: there are two ruts in the moss, very old, and at the end of them a wagon wheel with a birch tree growing through the spokes.",
          things = {
            { name = "a row of seedlings", description = "Along the whole length of the trunk, in the rotted bark: young oaks, rowans, a holly, hundreds, each no higher than your knee. It fell, and became a nursery, and seems easier in its mind for it." },
            { name = "a stag beetle", description = "Black and chestnut, as long as your thumb, with antlers. It is walking the length of the Old King from crown to root. It set out in the spring. {danger}It rears at you{/}, antlers wide, and then has to sit down, having overbalanced." },
          } },
        { name = "the root plate",
          key = "root plate",
          description = "Where it tore out of the ground: a wall of roots and earth twenty feet high, standing on edge. Below it is the pit the roots came out of, brambled over, and deeper than a pit left by a tree ought to be.",
          variants = {
            { when = flag "mw_roots_seen",
              description = "A wall of roots and earth twenty feet high, standing on edge. Under it, where you pulled the brambles aside, the pit goes down to a lintel of dressed stone and a doorway with no door. The oak grew on top of something, and when it fell, it lifted the lid." },
          },
          things = {
            { name = "a hanging root", description = "As thick as your waist, with a flat face on one side where it grew against something square for five hundred years. Roots do not make corners on their own." },
          },
          actions = {
            { "Look under the roots", when = no(flag "mw_roots_seen"), set "mw_roots_seen", fx "shake",
              say "You pull back an armful of bramble, and pay for it, and there is cut stone under the earth: a lintel, two uprights, and steps going down. A badger comes out of the dark, looks at you with great weariness, and goes back in. It is evidently used as a front door." },
          } },
        { name = "the crown", description = "A hundred paces off, a thicket of dead branches each the size of a tree. An owl roosts there by day. The gap the Old King left in the roof of the wood has still not closed, and one long bar of sun comes down through it and lies along him." },
      },
      actions = {
        { "Listen to it", say "Very slow, very deep. {whisper}...and another thing...{/} A pause of about a minute. {whisper}...no. It has gone.{/} It has been losing the thread of that sentence for a hundred years, and the trees round about are too polite to finish it." },
        { "Climb onto it", say "It takes three tries and a root. From the top you can see along it both ways, a green road through the wood, going nowhere, very grandly." },
      } },
    { name = "the standing oaks",
      description = "His court, still upright, in a rough ring. Each is older than Aldmoor. They lean in a little over the fallen one, like relatives round a bed.",
      things = {
        { name = "the widest oak", description = "Eleven adventurers holding hands could not get round it. You know this because eleven sets of initials are carved in a band at chest height, with gaps between them the length of two arms." },
        { name = "a wild bees' nest", description = "In a split thirty feet up: a dark slot with a gold shine inside and a steady traffic in and out. The comb goes down inside the trunk further than anyone has ever dared to find out." },
        { name = "the mistletoe", description = "A green ball of it in a high fork, the only thing here that keeps its leaves all winter. The other trees regard it as showing off." },
      },
      actions = {
        { "Listen in", say "{whisper}...he was always going to go that way... leaning for years... I said so at the time...{/} They are talking about the Old King, in front of him, as people do." },
      } },
    { name = "a stump with a seat cut in it",
      description = "An old stump at the edge of the ring, squared off into a rough chair, facing the fallen oak. The moss on the seat is thinner than on the arms. Somebody sat here for a long time, with a great tree in front of him, and did not cut it.",
      things = {
        { name = "the arm of the seat", description = "A groove worn in the wood, long and shallow, where the haft of something was laid across it, day after day." },
      },
      actions = {
        { "Sit in it", say "You sit. It is a seat for looking at a tree from. You look at the tree. It is very hard, from here, to imagine wanting it to be anything else." },
      } },
    { name = "a tired wolf",
      icon = "w",
      description = "Grey, gaunt, yellow-eyed, lying across a root with its chin on its paws. {danger}It lifts its lip and shows you every tooth it has.{/} Then it sighs through its nose and puts its chin back down. It has been the terror of this wood for nine years and it is, frankly, worn out. Nobody ever comes this far in to be terrified.",
      things = {
        { name = "its teeth", description = "All present. It went to the trouble of showing them, and you feel you should say something. \"Very good,\" you say. Its tail moves once." },
        { name = "a burr behind its ear", description = "Large, old, and evidently beyond the reach of a hind leg. It has been there some weeks. It is making the wolf's life a misery in a small way." },
      },
      actions = {
        { "Back away slowly", say "You back away slowly. It watches you do it with the mild disappointment of a host whose guest is leaving early." },
        { "Pick the burr out", say "You do it at arm's length with your eyes half shut. The wolf goes rigid, then limp, then makes a noise you would not have thought a wolf kept. It does not thank you. It moves along the root to make room, which is the same thing." },
      } },
    { name = "the fern sea",
      description = "Bracken to your chest in every direction, with the trunks standing in it like the piers of a harbour. Things move under it. You see only the wake.",
      things = {
        { name = "a roe deer", icon = "d",
          description = "A head and two ears above the ferns, twenty paces off, quite still, looking at you. Then there is only a white tail going away in long arcs, and then there are only ferns.",
          actions = {
            { "Keep still and wait", say "After a time the ears come up again, further off. Then a second pair, smaller, beside them. You are being shown to somebody as an example of what to watch out for." },
          } },
        { name = "a fawn's bed", description = "A hollow pressed in the bracken, warm, the size of a washing basket. Whatever lay here left a minute ago and took care not to break a single stem." },
        { name = "a pheasant", description = "It goes up from under your feet with a noise like a dropped tray. It had been sitting within a yard of you the whole time, relying on its nerve, and its nerve went." },
      } },
    { name = "the toadstools",
      description = "The deep wood grows them in every size and none of the colours you would choose for food.",
      things = {
        { name = "a red one with white spots", description = "The one from every picture book. It is exactly as red and exactly as spotted as the pictures. {danger}It is also exactly as poisonous as the small print.{/}" },
        { name = "a puffball", description = "White, round, the size of a loaf, sitting in the leaves. It is ripe.",
          actions = {
            { "Poke it", say "A soft cough, and a brown cloud rolls out and hangs in the still air. You have just scattered eleven million of something. The wood will be discussing you for generations." },
          } },
        { name = "a stinkhorn", description = "You smell it before you see it, and having seen it, you understand why the herbals describe it only in a dead language." },
        { name = "a fairy ring", description = "Forty paces across, pale caps in a great circle round the foot of the oldest oak. It has been growing outward a hand's breadth a year since before the kingdom. Nothing dances in it. The wolf sleeps in the middle on warm nights." },
      } },
    { name = "a badger path",
      description = "A trod through the bracken a foot wide, worn to bare earth, running dead straight from the root pit to a bank of sandy soil. It was a badger path when the Old King was standing and it has not moved an inch to go round him: it goes under.",
      things = {
        { name = "the sett", description = "A dozen holes in the bank, each with a spill of fresh sand and old bedding at its mouth. One of them has had hay carried in this morning, backwards, a bundle at a time." },
        { name = "a scratching tree", description = "An elder by the path, clawed to ribbons at badger height. It is where you stretch on the way out in the evening. There is a second set of marks a good deal higher up, which you decide are also a badger." },
      } },
    { name = "a woodcutter's camp",
      description = "The remains of one, very old: a ring of hearthstones sunk in the leaf mould, a whetstone worn to a saddle, and the rotted posts of a lean-to. He came in to cut and made a camp for a week. The ash in the hearth is forty years deep.",
      things = {
        { name = "the whetstone", description = "Grey slate, hollowed like a spoon. He sharpened every evening. Whatever he sharpened, he never once had to mend it." },
        { name = "a tally post", description = "A stake by the hearth with a notch for every tree marked for felling. There are thousands of notches. Beside each one is a second, smaller notch, crossing it out." },
      } },
    { name = "the owl in the crown",
      icon = "o",
      description = "A long-eared owl pressed against a dead branch, thin as a stick, with its ear tufts up. It is pretending to be part of the tree. It is doing very well and it knows that you can see it.",
      actions = {
        { "Pretend you have not seen it", say "You look carefully at the branch beside it. The owl relaxes by about a hair. You have both behaved very well." },
      } },
    { name = "the moss",
      description = "It is on everything: the fallen king, the roots, the stones, the north side of the wolf. Deep, wet and a green that hums slightly.",
      things = {
        { name = "a cup lichen", description = "Grey-green goblets a quarter of an inch high, in a crowd on a stump, each holding one drop of rain. A banquet, laid for forty, and nobody you know invited." },
      },
      actions = {
        { "Lie down on it", say "It takes your weight like a mattress and begins, very slowly, to take an interest. You get up while you still can." },
      } },

    { name = "a tree that fell and did not die",
      wonder = true,
      description = "A lime, enormous, lying full length on the forest floor where some storm put it before the kingdom had a name. It did not stop. Every branch on its upper side turned and grew straight up, and each is now a full-sized tree: thirty limes in a row, as straight as a street, rising from one horizontal trunk as long as a barn. The roots at one end are still in the ground. The leaves on the thirtieth tree are fed by the same sap as the first. You walk the length of it with your hand on the old trunk. It is not thirty trees. It is one, which was knocked down and reconsidered.",
      things = {
        { name = "the old trunk", description = "Moss a hand deep, and ferns growing on it, and a path worn along the top by foxes who use it as a road. Under the moss the bark is whole." },
        { name = "the thirtieth tree", description = "The youngest and tallest, at what was the crown. Up there it has got its head through the canopy into light. The whole fallen giant, flat on its back for a thousand years, has one hand out of the water." },
        { name = "the root plate", description = "A wall of earth and stone, tipped up on edge, twice your height. Half the roots are in the air and dead. The other half went back down. It only needed half." },
      },
      actions = {
        { "Walk along the trunk", say "You climb up by the roots and walk it like a bridge, thirty trees going past on your left like columns. The mumbling of the wood is different here. Lower. All thirty are saying the same thing, a moment apart, like a round." },
      } },

    { name = "a wild bees' nest",
      description = "In a split beech, twenty feet up: a dark slot with a coming and going. The comb hangs down inside in sheets, and the split has wept honey down the bark in a line that the ants have made a road of.",
      things = {
        { name = "the honey line", description = "Amber, sticky, a finger wide. You could. You look up at the slot, and at how many are using it, and you do not." },
        { name = "a claw mark", description = "Four grooves in the bark at the height of your chest, old. Something bigger than you thought the same as you, and tried. The grooves stop suddenly." },
      } },

    { name = "the dark between the trunks",
      description = "It is noon, and thirty paces off in any direction it is dusk. The dark here is not dangerous. It is only very old, and has not been disturbed, and looks at you as a full church looks at a latecomer.",
      actions = {
        { "Stand still until your eyes adjust", say "It takes a long while. Then the dusk comes apart into things: a fern, a stone, the white scut of something sitting quite still that has been watching you the entire time. It was never dark. It was only private." },
      } },
    { name = "a charm of goldfinches in a thistle clearing",
      description = "Where an oak came down years ago the light gets in, and thistles have taken the gap. A dozen small birds are working the heads, red-faced and gold-barred, tinkling like a dropped purse. They are the only bright thing for a mile and seem to know it.",
      things = {
        { name = "the thistledown", description = "It goes up in the one shaft of sun and hangs there, turning. Each seed has a parachute and no plan. Most of this wood was planted in exactly that way." },
        { name = "the fallen oak's root plate", description = "A wall of earth and root twelve feet high, tipped on edge. In the pit it left there is a pool, and in the pool a single yellow iris that cannot have got here by itself. Somebody walks in from the fen with wet boots, now and then." },
      },
      actions = { { "Stand in the sun", say "It is the first warmth on your face since the wood's edge. You shut your eyes. The mumbling goes on all round, low and slow, and for a moment it has the sound of people in the next room who are glad you have sat down." } } },
    { name = "a hollow way",
      description = "An old track sunk between banks higher than your head, roofed with holly, leading west. The floor is deep in leaves that nobody has disturbed. It was a road once, wide enough for a cart. The trees on its banks are four hundred years old, and they grew after it was given up.",
      things = {
        { name = "a cart rut, under the leaves", description = "You kick down to it: a groove in the clay as hard as pot. One wheel. Whatever made it went west heavy and did not come back light, or the other rut would be as deep." },
        { name = "a horseshoe on a holly", description = "Nailed to the trunk and half swallowed by the bark, so that only the two heels show. For luck, on the way out. The tree has kept it. Whether it kept the luck is the tree's business." },
      },
      actions = { { "Follow it a little", say "It runs straight for a furlong and then the banks sink, the holly thins, and it simply goes down into wet ground, and reeds begin. The road did not stop. The country it went to did. You come back with mud to the ankle and a new respect for staying put." } } },
  },

  exits = {
    { to = "forest_path", description = "Uphill to the path, which will be pleased, in its way, that you found it again." },
    { to = "root_barrow", label = "Under the roots of the Old King",
      description = "Down the pit and through the stone doorway, by the steps the badger uses.",
      requires = flag "mw_roots_seen", hidden = true },
  },
}

space {
  id = "root_barrow",
  region = "mumblewood",
  secret = true,
  name = "The Woodcutter's Barrow",
  description = "A round chamber of dry stone under the roots, roofed with slabs, floored with sand. The Old King grew over it for five hundred years and held it shut. A bar of green daylight comes down the steps and lies across a stone bier, and on the bier a man is lying in a leather jerkin, with his hands folded on an axe.",
  palette = { bg = "#0c0e0a", text = "#c8c8b0", dim = "#646652", accent = "#c8b060", border = "#3a3c28" },
  ambience = {
    dust { glyphs = "·˙", color = "#5a5c3c", rate = 0.25, speed = 0.2 },
    shimmer { color = "#a8a060", strength = 0.12 },
  },

  things = {
    { name = "the Last Woodcutter",
      key = "woodcutter",
      icon = "†",
      description = "He is bones in good boots, laid out straight, with a wreath of oak leaves on his chest that ought to be dust and is green. The Crown sent him to clear the Mumblewood for ploughland. He was the best there was. He walked in with the finest axe ever forged, and sat down in front of the first tree, and listened. {magic}The trees buried him themselves.{/} Nobody else knew where he was.",
      variants = {
        { when = item "axe_unswung",
          description = "He is bones in good boots, laid out straight, with a wreath of green oak leaves on his chest and his hands folded on nothing. He looks no different for it. He never used the thing. He only kept hold of it so that nobody else would." },
      },
      things = {
        { name = "the wreath", description = "Oak leaves, plaited, fresh as this morning. You look up. A thin root has come down through the roof slabs directly over him, and there is a leaf bud on the end of it. The wreath is renewed." },
        { name = "the axe on his chest",
          key = "barrow axe",
          visible_if = no(item "axe_unswung"),
          description = "Dark iron, pale ash, as long as your leg, and not a speck of rust on it. The edge throws a line of light on the roof. In all its years it has cut nothing, and it lies there with a kind of dreadful readiness.",
          actions = {
            { "Take the axe", once = true, give "axe_unswung", fx "sparkle",
              say "You lift his hands, which weigh nothing, and take it. You wait for the roof to come down. It does not. From the wood overhead comes a long mumble, passed from tree to tree, outward: not alarm. More the sound of a household told that the knife drawer has a new keeper. {gold}The Axe That Was Never Swung{/} is yours to go on not swinging." },
          } },
        { name = "his boots", description = "Nailed soles, hardly worn. He did not walk much, after he arrived." },
        { name = "a royal commission",
          description = "Folded in his jerkin, the seal still on it: {i}To fell, clear and make fit for the plough the whole of the forest called Mumblewood, and to take as payment one acre in every ten.{/} On the back, in pencil, forty years of sums working out how long it would take, each one longer than the last, and at the bottom: {i}Not in my time. Good.{/}" },
      },
      actions = {
        { "Take off your hat", say "You stand a moment with it in your hands. You are an adventurer, and he is a man who was sent to do a great thing and had the sense not to. You are not sure which of you the ballads have the wrong way round." },
      } },
    { name = "the grave goods",
      description = "Set round the bier in the sand, not by any priest. They are what a wood would think a man wanted.",
      things = {
        { name = "a heap of acorns", description = "A bushel of them at his feet, sound and brown. From the Bank, you would guess. It is the only withdrawal in the ledger that was never called in." },
        { name = "a bowl of honey", description = "A burr of oak hollowed into a bowl, full of dark comb. Bees do not come down here. It is full anyway." },
        { name = "a pile of antlers", description = "Shed ones, forty or fifty, laid in a ring with the points outward. Every stag that ever dropped his crown in the deep wood seems to have dropped it here." },
        { name = "a leather purse",
          description = "The one thing here he brought himself. It has split with age.",
          things = {
            { name = "the old coins", description = "Eleven silver pennies of a king nobody remembers, his advance on the job. He never spent them. There was nothing in the wood for sale that he had not already been given." },
          } },
      } },
    { name = "the roof",
      description = "Great slabs, corbelled in to a capstone, and through every joint the roots of the Old King have come down and spread across the stone like the veins on the back of a hand. They held this place together for five centuries. The tree is fallen and they are holding it still.",
      things = {
        { name = "the capstone", description = "A single flat rock with a spiral cut in it, far older than the woodcutter. He was not the first to be laid here. The trees knew of a good place and used it again." },
        { name = "a root with a bud", description = "Pale, thin, and alive. The Old King is down, but not all of him has been told." },
      } },
    { name = "the walls",
      description = "Dry stone, fitted without mortar, and scratched from floor to shoulder with claw marks: the badgers have been sharpening on them since the chamber was built.",
      things = {
        { name = "an older burial", description = "A niche at the back, low, with a clay pot in it and a flint blade. Whoever this was came before iron and before kings, and the wood buried that one too." },
        { name = "a tree, scratched in the stone", description = "Not by a claw. A child's drawing of a tree, a line and a cloud, done with the point of a knife beside the bier. He had a lot of evenings." },
      } },
    { name = "the badger",
      icon = "b",
      description = "Broad, grey, striped, sitting in the mouth of a tunnel in the far wall with its arms folded over its stomach. It keeps the place. It has swept the sand this morning; you can see the marks. It looks at your boots and then at the marks.",
      actions = {
        { "Wipe your feet", say "There is nothing to wipe them on. You do the motions anyway, on the bottom step. The badger unfolds its arms. It is the thought that counts, with badgers." },
      } },
    { name = "the bar of daylight",
      description = "It comes down the steps green from the wood and falls across the bier at the height of his folded hands. A century ago, when the Old King stood, it was pitch dark in here. The tree fell so that it would land like this. You are sure of it, and you could not say why.",
    },

    { name = "the sand floor",
      description = "Dry, pale, raked once and never walked on since. The rake lines are still there, five hundred years old, running in rings out from the bier.",
      things = {
        { name = "your footprints", description = "The only ones. They go from the steps to where you are standing and they look very loud." },
        { name = "a single leaf", description = "An oak leaf, on the sand, brown and perfect. It came down the steps with you. It is the first thing the Old King has sent in after him in all that time." },
      },
      actions = {
        { "Smooth your prints away", say "You back toward the steps, brushing with your sleeve. It is not the same. The rings are broken where you were. You leave the leaf where it fell, which seems to be what it came for." },
      } },

    { name = "a nest of dormice",
      description = "In a niche in the dry-stone wall, a ball of shredded bark the size of a fist. Three dormice are in it, asleep, each with its tail over its nose. They sleep seven months of the year, and have picked the one place in the Mumblewood that understands." },

    { name = "roots through the roof",
      description = "Between the slabs the Old King's roots come down, fine as hair, hundreds of them. None touches the bier. They have grown round it on every side and stopped an inch short, and hang there in a ring, like people standing back." },
    { name = "a niche with a clay lamp",
      description = "Cut in the wall by the steps, at the height of a hand. A lamp of grey clay sits in it, shaped like a shoe, with a black thumbprint of soot on the wall above. The soot is thick. It was lit a great many times before it was lit the last time.",
      things = {
        { name = "the wick", description = "A twist of moss, burnt to a curl. You touch it and it goes to powder. You are sorry at once. It had held that shape for five hundred years and you were the draught it was waiting for." },
        { name = "a thumbprint in the clay", description = "Under the handle, where the potter pinched it. A small thumb. A woman's or a boy's. It is the only signature in the barrow, and it is on the cheapest thing." },
      },
      actions = { { "Cup your hands round it", say "No light, no warmth. But for a moment you have the stance of everyone who ever carried it down these steps, bent a little, shielding nothing from a wind that is not blowing. It is a way of standing that the body seems to know." } } },
    { name = "the woodcutter's dog",
      description = "At the foot of the bier, under the sand, the shape of something curled: a low mound a yard long, with a flat stone at one end. Nobody would see it who was not looking down. He did not come in here alone.",
      things = {
        { name = "the flat stone", description = "Scratched with one line and a row of dots. It could be a spear and a count of game. It could be a tail and the number of years. Either way it was somebody's whole account of a friend." },
      } },
  },

  exits = {
    { to = "deep_wood", label = "The steps up", description = "Up through the roots into the green light, minding the brambles, which will not mind you." },
  },
}
