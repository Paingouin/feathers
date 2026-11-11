space {
  id = "silt_gallery",
  region = "undertown",
  name = "The Silt Gallery",
  description = "A side tunnel off the Drain, where the old builders made a settling pool and the town has been filling it ever since. Four centuries of everything Aldmoor dropped, lost or threw away lie here in a grey beach under a brick vault.",

  things = {
    { name = "the mudlark",
      icon = "☺",
      description = "Peg, about twelve, with a sieve, a sack, and her trousers rolled to the thigh. She works the silt for a living and knows the town by what it loses.",
      things = {
        { name = "her sieve", description = "A flour sieve, mended with wire. It has found more gold than any mine in the Grumbles this century, a grain at a time." },
        { name = "her sack", description = "It clinks, rattles and, in one corner, squelches." },
      },
      actions = {
        { "Ask what she finds", say "\"Buttons. Spoons. Teeth, there's money in teeth. Rings, Thursdays, after the dances.\" She holds up a sieve of grey mud, and something winks in it. \"You'd be surprised what people let go of.\"" },
        { "Ask about the rats", when = no(flag "ut_knows_court"), set "ut_knows_court",
          say "\"They've a king,\" she says, quite seriously. \"Down the low arch. I used to go in when I was six. They've a hall and all. He ought to have a crown on, only he keeps it in a box.\" She wipes her nose on her wrist. \"You'd fit, just, on your belly. The grille lifts out. They don't mind lookers. Be polite, and don't stand on anyone.\"" },
        { "Ask about the rats", say "\"Low arch. Lift the grille. Be polite.\" She looks at your boots. \"And slow.\"" },
      } },

    { name = "the silt beach",
      description = "Grey, fine, and sorted by the water according to weight.",
      things = {
        { name = "a drift of spoons",
          description = "Hundreds. Pewter, horn, one silver. Every kitchen in Aldmoor is short a spoon, and each one blames the maid." },
        { name = "a drift of buttons",
          description = "Bone here, brass there, pearl at the far end. The water has a tidier mind than the town." },
        { name = "a door",
          description = "Oak, whole, on its back in the mud, still shut and still locked. It came down in the flood year with its frame.",
          actions = {
            { "Knock on it", say "Nobody answers. You are relieved. Then, being an adventurer, you are a little let down." },
          } },
        { name = "a tide of small bones",
          description = "Fish, chicken, chop. The town's dinners, in order, going back. Peg says you can tell the lean years by the layer." },
      } },

    { name = "the sorting table",
      description = "A plank on two crates, with the day's take laid out in rows.",
      things = {
        { name = "a row of rings",
          description = "Seven. Two wedding, one with a stone, four brass. Each has a paper tag saying where it lay. She takes the wedding ones back, if there is a name inside. She says the look on people is worth more than the gold. She says the gold is also nice." },
        { name = "a row of clay pipes",
          description = "Forty bowls, each moulded as a face. She has them arranged as a town council and moves them about when she is bored." },
        { name = "a tin of teeth", description = "It rattles. Leave it." },
      } },

    { name = "the settling pool",
      description = "Grey water a hand deep, over mud a man deep.",
      actions = {
        { "Wade in", say "You are in to the knee at once. Peg throws you a rope without looking up. She keeps one coiled for the purpose. There is a price, which is your dignity, and you have already paid." },
      } },

    { name = "the low arch",
      key = "low arch",
      description = "At the back of the gallery, knee high, barred by an iron grille. The silt in front of it is covered in tiny tracks. They go in on the right and come out on the left.",
      variants = {
        { when = flag "ut_grille_lifted",
          description = "Knee high, with the grille propped beside it. The tracks go in on the right and come out on the left, and down the middle there is now the mark of your elbows." },
      },
      actions = {
        { "Peer through", say "Dark, then a bend. Round the bend, light: the yellow of a great many very small candles." },
        { "Lift the grille", when = all { flag "ut_knows_court", no(flag "ut_grille_lifted") }, set "ut_grille_lifted",
          say "It lifts out of its slots without a squeak. Somebody keeps it oiled, somebody with small hands. Warm air comes out, smelling of straw and cheese rind." },
      } },

    { name = "a bucket of eels",
      description = "Peg's supper, knotted. She catches them in the Drain. She says they taste of the Drain, and that you get to like it." },

    { name = "a wagtail",
      icon = "v",
      description = "Grey and yellow, bobbing along the edge of the silt. A bird of streams that came down a grating one day and found it had the place to itself." },

    { name = "the lip of the pool",
      description = "One long block of the old dark stone, with a groove cut in it for a gate that is gone. In the corner, the mason's square and dot." },

    { name = "a brass bedstead",
      description = "Half sunk in the silt, upright, and made up with a blanket. Peg sleeps on it when the weather upstairs is bad.",
      things = {
        { name = "under the pillow", description = "A rag doll with one button eye and one eye that is a pearl. Found, both of them, on different days." },
      } },

    { name = "a row of lanterns",
      description = "Jam jars with candle ends, strung on a wire along the wall. She lights one for every hour she means to stay. Three are burning." },

    { name = "the roof",
      description = "Aldmoor brick, black with damp, and hung with pale threads that turn out, close to, to be the roots of the market's one tree." },

    { name = "the outfall net",
      description = "The mudlark's, strung across the place where the pool spills over and goes on down. It catches what the silt does not. There is a square hole in one corner, cut with care and hemmed.",
      things = {
        { name = "the hemmed hole",
          description = "Too neat for a rat and too small for a thief. A tag is tied beside it with a hair: {i}Pardon. For articles in transit. We will mend it when the Market closes. The Market does not close.{/}" },
        { name = "what is in the net today",
          description = "A candle end, a draughts piece, and one cuff link with a crest. The mudlark is waiting a week for the other. In her experience they come down in pairs, and the second is thrown." },
      },
      actions = {
        { "Watch the hole", say "A thimble comes down the spill, turning. It reaches the net, hesitates, and goes through the hole of its own accord, like a dog through a gap in a hedge. It knew where it was going." },
      } },
    { name = "the shelf of unsellables",
      description = "A plank on two bricks, behind her stool, for what she will not part with.",
      things = {
        { name = "a tin soldier", description = "One leg. She has stood him at the end, facing the pool, on watch." },
        { name = "a spectacle lens, smoked", description = "Round, dark, and no bigger than a lentil. She thinks it is a bead. You hold it up to the lantern and the lantern becomes bearable." },
        { name = "a tooth on a ribbon", description = "A child's first, lost down a washhouse drain with the ribbon still on it. \"Somebody cried over that,\" she says. \"I'll not sell crying.\"" },
      } },
    { name = "the sound of the spill",
      description = "Where the settling pool goes over its lip the water drops out of the lantern light into a shaft, and you never hear it land. The mudlark dropped a plumb line down once. She will tell you how much line, and that it came up with a knot tied in the end which she had not put there." },
    { name = "a tray of forks",
      description = "On the sorting table, set apart from the buttons and teeth: forty silver forks, black with river, all of one pattern, with a crowned cipher on the handle. The mudlark has been finding them for thirty years, a few each spring.",
      things = {
        { name = "the cipher", description = "A crown over a flat place. The letter has been rubbed down on every one. \"Done before they was lost,\" she says. \"Somebody sat and did forty forks with a stone, and then lost the lot down a drain. That is a bad week.\"" },
        { name = "the price ticket", description = "{i}Not for sale. Waiting for the spoons.{/} She has principles about breaking a set." },
      },
      actions = {
        { "Ask where they come from", say "\"East pipe,\" she says, and jerks her head at a low arch. \"The dry one. Comes in from the old town. It sends down forks, and nutshells, and of an afternoon, if you stand by it, a noise.\" What noise? \"People,\" she says. \"Glad about something. I don't stand by it. It is not for the likes of me to be listening to.\"" },
      } },
    { name = "a walnut husk in the sieve",
      description = "Green, split, fresh, in among the grey. It has come down the dark from somewhere with a tree. The mudlark throws them back. She says that they stain the takings." },
  },

  exits = {
    { to = "great_drain", description = "Back along the slates to the main tunnel." },
    { to = "rat_court", label = "The low arch",
      description = "Through the low arch on your belly, round the bend, towards the candlelight.",
      requires = flag "ut_grille_lifted", hidden = true },
  },
}

space {
  id = "rat_court",
  region = "undertown",
  secret = true,
  name = "The Court of the Rat King",
  description = "You come out of the crawl on your elbows, into a hall. It is a rats' hall: an old brick culvert two yards high, lit by candle stubs on every ledge. Hundreds of rats line the walls in ranks. Nobody runs. At the far end, on a throne made of a boot, sits one more.",
  palette = { bg = "#100c08", text = "#d0c4a8", dim = "#70644c", accent = "#e0b050", border = "#46381e" },
  ambience = {
    flicker { color = "#ffc060", strength = 0.3 },
    embers { glyphs = "·˙", colors = { "#ffc060", "#c88020" }, rate = 0.15 },
  },

  things = {
    { name = "the Rat King",
      icon = "r",
      description = "A big grey rat, old, scarred across the nose, sitting upright on the tongue of the boot. He wears nothing on his head. He looks at you as a magistrate looks at a new sort of case.",
      variants = {
        { when = item "rat_crown",
          description = "He has gone back to the business of the court, which is a dispute about a rind. Now and then he looks at your pocket, and then, with something very like relief, away." },
      },
      things = {
        { name = "his scar", description = "Old, white, straight across the nose. A cat, they say. The cat is the one on the handkerchief." },
      },
      actions = {
        { "Bow", say "You bow, which in a hall two yards high is the only thing you can do. A murmur goes down the ranks. It is approval, or it is lunch." },
        { "Ask about the crown", when = no(item "rat_crown"),
          say "He looks at a small iron box beside the throne. Every rat in the hall looks at it. Then every rat looks away. You have seen people do that round a debt." },
      } },

    { name = "the throne",
      description = "A cavalry boot, very old, laid on its side on a dais of four bricks. It was a hero's. The rats do not say what became of the hero, and it is plain from their manner that he was well thought of." },

    { name = "the iron box",
      key = "crown box",
      description = "A tinderbox, shut, at the foot of the throne, with a brick on top of it. Every candle flame in the hall leans very slightly towards it.",
      variants = {
        { when = item "rat_crown",
          name = "an empty tinderbox",
          description = "Open, on its side. A young rat is asleep in the moss. The candle flames stand straight." },
      },
      actions = {
        { "Open the box", once = true, give "rat_crown", fx "sparkle",
          say "No rat stops you. Several shut their eyes. Inside, on a bed of moss, is a crown the size of a ring: seven gold points, each set with a stone you would need a lens to see. {gold}The Crown of the Rat King.{/} Whoever wears it, the story runs, is obeyed by every rat under every city in the world. The King looks at it, and then at you, and you understand. He keeps it in a box because he would rather be argued with. He pushes the box towards you with his nose. It will not fit any part of you. It is, you are almost sure, the mightiest thing you own." },
      } },

    { name = "the ranks",
      description = "Brown, black, piebald, one white. They stand in order of something, and it is not size.",
      things = {
        { name = "the white rat",
          description = "Small, pink-eyed, at the King's right hand, with a ledger of scratched slate. The census taker from the Drain reports to her." },
        { name = "the guard",
          description = "Twelve big ones with darning needles for pikes. They hold them as the town guard hold halberds: as something to lean on." },
        { name = "the pups",
          description = "Kept at the back. They have never seen a person. One has decided that you are a hill, and is on your boot.",
          actions = {
            { "Keep very still", say "It gets as far as your knee, looks out over the hall from this new height, and is fetched down by an aunt." },
          } },
      } },

    candle { name = "a court candle",
             description = "A stub the length of a thumb, one of several hundred. Untaxed, by the smell. The smugglers think it is the damp that gets at their stock." },

    { name = "the petitioners",
      description = "Two rats before the throne, each with a paw on the same rind. They have been heard. The King is thinking. One of them is his cousin and it is not helping her." },

    { name = "the larder",
      description = "An alcove of rinds, crusts and candle ends, stacked and counted.",
      things = {
        { name = "a filled vol-au-vent",
          description = "One of the Baroness's cases, filled with something better than the Baroness serves. It is kept for guests. A steward nudges it an inch towards you, and waits.",
          actions = {
            { "Accept it", say "Cheese, mostly, and a hazelnut, and care. It is the best thing you have eaten underground. The steward watches you finish, as a host should, and looks pleased." },
          } },
      } },

    { name = "the handkerchief",
      description = "Pinned to the brick behind the throne: a lady's pocket handkerchief, embroidered, by teeth, with a rat in a crown standing on a cat." },

    { name = "the scratched wall",
      description = "The bricks beside the throne are covered in marks, in rows. It is the rats' law.",
      things = {
        { name = "the first row",
          description = "Three marks, scratched deeper by every king in turn. Peg says it means {i}share{/}. She learned it at six, she says, before her letters." },
      } },

    { name = "the roof of the culvert",
      description = "Soot from four hundred years of small candles, in a stripe down the middle. Either side of the stripe, brick as clean as the day it was laid." },

    { name = "the recorder",
      icon = "r",
      description = "An old grey rat at a brick, with a nail for a pen. Every judgment of the Court is scratched into the mortar. The mortar of this culvert is, by now, mostly law.",
      things = {
        { name = "the precedents",
          description = "You can read three marks: {i}share{/}, {i}wait{/}, and one that is a rat lying on its back. The recorder taps the third and looks at you until you understand that it means costs." },
      },
      actions = {
        { "Ask to see your own entry", say "It finds the place: one mark, low down, set apart, with a second smaller mark beside it. The census rat's hand. The recorder looks from it to you, adds a third mark, very small, and blows away the dust. You are fairly sure it is an improvement." },
      } },
    { name = "the envoy's stool",
      description = "A cotton reel, set at the King's right hand, with a cushion on it the size of a postage stamp. No rat sits there. There is a card on the cushion.",
      things = {
        { name = "the card",
          description = "Grey, tiny, in a perfect hand. {i}Pardon. The Envoy from Below regrets. Detained by a draught. Will attend next century as usual.{/} The rats have not moved the stool in living memory. One does not, for neighbours." },
      } },
    { name = "the treasury of the Court",
      description = "A hole in the wall with a guard on it. Inside, by the shine: rinds.",
      things = {
        { name = "the great rind", description = "A whole heel of red cheese, wax on, dated by tooth marks to the reign before last. It is never eaten. It is brought out on feast days and looked at." },
        { name = "a silver thimble", description = "The King's cup, when he is being formal. It went missing from Nobles' Row forty years ago and a maid was dismissed for it." },
      } },
    { name = "a petition in the Rat King's paw",
      description = "A scrap of paper, chewed at the edges, which he consults and tucks away again. The court falls silent whenever it comes out. It is the oldest document in the rats' archive and they did not write it.",
      things = {
        { name = "what is on it", description = "A man's broad hand, in faded ink: {i}To the rats of the Great Drain: the freedom of it, for ever. Granted.{/} There is a blot, and a paw print in the blot, as of a witness." },
        { name = "the recorder's gloss", description = "Scratched on the wall beside the throne, in the court's small script, and translated for you by nobody: forty generations of rats have held this drain by charter from a king that the people upstairs say they never had." },
      },
      actions = {
        { "Ask who asked for it", say "The Rat King draws himself up. A rat asked. A rat went up, by the east pipe, seven miles, into a hall full of boots, and waited its turn in the line between a midwife and a goose. Nobody trod on it. And the man at the table looked down and said, \"And you?\" The court has told this story every night since. They do not embroider it. They have never needed to." },
      } },
    { name = "a silver thimble, as a font",
      description = "By the envoy's stool, on a pebble, filled with clean water. New kits are brought to it. The court does not say what for. The thimble has a crowned cipher, rubbed flat, and a dent where it was carried seven miles in somebody's teeth." },
  },

  exits = {
    { to = "silt_gallery", label = "The crawl", description = "Out on your elbows, the way you came, with an escort." },
  },
}
