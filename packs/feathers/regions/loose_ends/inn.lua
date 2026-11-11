-- The Slow Spill: Tether's inn, built out over the edge.

space {
  id = "le_inn",
  region = "loose_ends",
  name = "The Slow Spill",
  description = "The inn stands on the lip of Tether and half of it stands on nothing: the taproom is built out over the edge on beams, with a floor of gratings so that the place can be swilled down. Anything spilt here goes through the floor and keeps going. The regulars lean over to watch. It is the house entertainment.",
  palette = { bg = "#120f0c", text = "#dcd0bc", dim = "#7c6c58", accent = "#e8b060", border = "#4e3c28" },
  ambience = { flicker { color = "#ffb060", strength = 0.2 }, drip { glyphs = "⠁⠂⠄⡀", color = "#b08a50", rate = 0.2 } },

  things = {
    { name = "the bar",
      description = "Elm, a foot thick, bolted to the rock end of the room. It has a brass rail at the foot and a second brass rail at the height of your belt, to hold on to when the island leans.",
      things = {
        { name = "Hob Plummet",
          icon = "☺",
          description = "The landlord: a square man with a level gaze who pours with his elbow tucked in. He has never spilled a drop in his own house. He says a landlord at this height cannot afford to start.",
          actions = {
            { "Order a drink", say "You show him your copper. \"Ground money,\" he says, not unkindly, and hangs it on a nail with others. He draws you a half of Thin, in a mug with a lid. \"First one's the house's. Keep the lid on till you're sat. Sip toward the rock.\"" },
            { "Ask about the name", say "\"My grandfather dropped a full quart off this bar the day they opened. Through the grating.\" He wipes a glass. \"It hit a shepherd on the Grumbles the Tuesday after. Fine spray by then. He thought it was a miracle and gave up drink.\"" },
            { "Ask for the news", say "\"Ship's due, when it's seen. The Clerk's got the forecast wrong again and says it's the weather that's out. And there's a fellow walked up the stones from the mountain.\" He looks at you. \"Nobody walks up the stones. They'll be wanting to know if you're all right.\"" },
          } },
        { name = "the mugs", description = "Pewter, on hooks, every one with a hinged lid and a chain to the hook long enough to reach the tables.",
          things = {
            { name = "a mug with three chains", description = "The schoolmistress's. She has only once let go of it, and the village decided never again." },
            { name = "the strangers' mug", description = "Lidded and chained like the rest, with a cork float on the handle. It has come back from further down than any other mug in the house. There are barnacles." },
            { name = "a tiny mug", description = "For the sky mouse that lives in the thatch. It has a lid. The lid has a hinge. Somebody in Tether has very small tools and long evenings." },
          } },
        { name = "the pumps", description = "Three handles: {i}Thin{/}, {i}Thinner{/}, and {i}Ballast{/}. Ballast is a stout. A pint of it, the regulars say, and you could walk home in a gale without your boots." },
        { name = "the slate", description = "Tabs in chalk. The Weather Office's is settled monthly, in rain: he gets first notice of a wet day and puts the tubs out. The slate does not say this. Everybody knows." },
        { name = "a jar of pickled cloud", description = "White, in vinegar, with a ladle. It is eaten on bread. It tastes of vinegar, and afterwards, for some time, of nothing at all, very strongly." },
        { name = "a speaking tube", description = "Lead, with a whistle plug, coming up through the floor behind the bar. Twice a day he draws a pint of Ballast, puts it in the basket for the well, and says {i}down{/} into the tube. The tube says {i}ta{/}." },
      } },
    { name = "the grating floor",
      description = "Iron bars a finger apart over the whole taproom. You walk on them. Under them is the weather. Newcomers cross the room like herons, and are bought a drink for it.",
      things = {
        { name = "the long spill",
          wonder = true,
          key = "le_long_spill",
          description = "A man by the window has knocked his elbow, and a pint of Thin has gone through the bars. The room falls quiet and leans. {magic}It goes down as one bright rope, and the rope draws out, and breaks into beads, and each bead catches the sun and is a lamp, a hundred lamps, falling in a line that never seems to get any shorter.{/} They watch it until it is too small to see and then for some time after, with their hats off. Then somebody says \"Good one,\" and the noise comes back. He is bought another. It is the custom. No drink in this house was ever wasted, because every one that was dropped was watched all the way.",
          actions = {
            { "Spill a little", say "You tip a spoonful through the bars, solemnly. Heads turn. It goes down amber and whole, and thins, and you follow it until your eyes water. \"Short,\" says an old man, \"but he held his nerve.\" You have, you gather, been admitted to something." },
          } },
        { name = "a dropped coin, caught", description = "A net of fine wire hangs a yard under the grating. It is for coins and wedding rings. Beer goes through it. Hob empties it on Sundays and puts the proceeds toward the roof." },
        { name = "the view between your boots", description = "Cloud, then a tear in the cloud, then a brown field with a plough team in it the size of an ant with a crumb. You lift one foot to see better and several people say \"Ah,\" approvingly." },
      } },
    { name = "the regulars",
      description = "Rope walkers, line menders, a shepherd in a damp coat. They sit with one arm through the wall straps and do not appear to know that they are doing it.",
      things = {
        { name = "the man who has been Below", description = "He went down to Aldmoor for a tooth, in his youth. He tells it every night. \"And you set your mug down,\" he says, \"anywhere. And it stops there.\" Nobody believes the bit about the mug." },
        { name = "two line menders", description = "Arguing about whether Upper Tether is further off than it was, or the rope has shrunk. The rope is in the corner, coiled. Neither will measure it. It would end the argument." },
        { name = "an off duty forecaster",
          key = "le_forecaster",
          icon = "☺",
          description = "A pale young clerk with the Weather Office's badge turned inside his lapel, drinking Ballast very fast. He has ink on his nose and the look of a man whose sums came out.",
          actions = {
            { "Ask what is wrong", say "\"Nothing's wrong. That's what's wrong.\" He looks round and drops his voice. \"We issue the weather. From the store. So much fine, so much wet, it's all in the ledger. And for a month there's been weather going over that we never issued. Somebody else's.\" He drinks. \"The Clerk says it's a rounding error.\"" },
            { "Ask about the store", once = true, set "le_knows_store",
              say "He goes white, then pink. \"There isn't a store.\" He drinks again. \"There's a door behind the big barometer and it isn't a store, it's a records room, and what's in the jars is records.\" He puts his head on the table. \"Ask him for yesterday. He can't refuse a member of the public yesterday. It's in the charter.\"" },
          } },
        { name = "a shepherd in a damp coat", description = "One of Nan Wether's lads, steaming. He has a wisp of something white caught in his collar, and it is trying, in a small way, to rain on his neck." },
        { name = "the fiddler", description = "In the corner, strapped to the wall, playing a slow air with long notes. Up here they like a tune that hangs. A jig, he says, shakes the beams, and the beams are all there is." },
      } },
    { name = "the fire",
      description = "On the rock side, in a stone hearth, burning hedge wood and old kite cane. The chimney draws like a pump. There is always a wind to help it.",
      things = {
        { name = "the settle", description = "High backed, bolted down, with a strap for each sitter. The straps are embroidered. One says {i}MOTHER{/}." },
        { name = "the inn cat", description = "Ginger, asleep on the hearth with all four feet hooked into a square of carpet that is nailed to the floor. It has learned." },
        { name = "the poker", description = "On a chain. Everything loose here is on a chain. The chain is a habit; the poker weighs four pounds and has never shown the least wish to leave." },
        { name = "the mantel", description = "A ship's clock, a stuffed sky mouse with its ears spread, and a quart pot, dented, on a little stand: the one the grandfather dropped. It came back. A pedlar brought it up forty years later, having been told whose it must be." },
      },
      actions = {
        { "Warm yourself", say "You hold out your hands. The heat is the first thing since the summit that has come at you from only one side. You stay until your shins complain." },
      } },
    { name = "the window seat",
      description = "At the far end, over the most nothing: a bench under a bay of small panes, where the old women sit with a half of Thin and the whole of the sky's business.",
      actions = {
        { "Listen in", say "Mrs Pegg lent a peg. To a stranger. The astronomer's had a letter from his Dr Vane and thrown a boot at the dome. Nan Wether's black faced cloud has lambed, a little one, pure white. They see you, and one moves her knitting so that you can sit, and they start again from the peg." },
      } },
    { name = "the kitchen",
      description = "Through a hatch on the rock side: a range, a table, a great many lids.",
      things = {
        { name = "the cook", description = "Mrs Plummet, who is as quick as he is steady. She cooks everything under a lid, with a brick on the lid. A souffle got away from her once, in her mother's time, and is spoken of." },
        { name = "the stew", description = "Mutton, from the hill sheep that are hauled up as lambs in a basket. And dumplings.",
          actions = {
            { "Ask for a bowl", say "It comes with a lid on, and a strap over the lid. The dumplings are the lightest you have ever eaten. She watches until you have one safely on the spoon. \"Suet and a bit of morning cloud,\" she says. \"You have to weigh them down in the pot or they're on the ceiling.\"" },
          } },
        { name = "the ceiling", description = "There are three dumplings on it, old ones, grey, in a row. They are left up as a warning to the kitchen maid." },
        { name = "the larder", description = "A cupboard on the outside wall with a slatted floor. It is the coldest place in the parish. The butter is kept in a net." },
        { name = "the kitchen maid", description = "Fourteen, shelling peas into a bowl with a lid, one pea at a time, lifting the lid for each. She has a rhythm." },
      } },
    { name = "the cellar",
      description = "There is no down to dig. The cellar is a cage of oak hung under the taproom on four chains, reached by a ladder through a flap in the grating.",
      things = {
        { name = "the hanging cellar", description = "It swings a little, as a ship's lamp does, and the beer stays level while the inn tips round it. He says it is why his ale is so quiet.",
          things = {
            barrel { name = "a barrel of Ballast", description = "Lashed to the cage in three places and chalked {i}STEADY{/}. It is the only thing in the Loose Ends that he trusts to stay where it is put." },
            { name = "a cask of something old", description = "Small, black, with a bung waxed over. {i}Laid down by the first families. For the day we come down.{/} Nobody means to open it. Nobody means to come down. It is kept dusted in case of either." },
            { name = "the four chains", description = "Each as thick as your wrist. He oils them on quarter days and counts them every night before bed, and has never yet got an answer he did not like." },
            rat { description = "Sleek, on a barrel, holding on with all four feet and its tail. It has the look of a creature that took a wrong turning as a young rat and has made the best of it." },
          } },
      } },
    { name = "the stairs",
      description = "Up, on the rock side, to three rooms. The banister is doubled.",
      things = {
        { name = "the front room", description = "Over the green. A bed with a lee board like a ship's bunk, a wash stand with a hole for the jug, a window that opens inward only.",
          things = {
            { name = "the bed", description = "With a strap. The notice on the wall says the strap is a courtesy and not a comment on the guest." },
            { name = "the notice", description = "{i}Guests are asked not to throw water from the window. It will be someone's weather.{/}" },
          } },
        { name = "the back room", description = "Built out over the edge, with a floor of boards and not grating. Guests from Below ask for it. Then they lie awake all night knowing what the boards are over, and ask to move." },
        { name = "the attic room", description = "Let to a painter, years back, who came up to paint clouds. He is still at the first one. It keeps changing, he says, and he is a conscientious man.",
          things = {
            { name = "the canvas", description = "Six feet by four, an inch thick with paint. It is white, and grey, and white again. It is a faithful likeness of four thousand clouds, one on top of another, and it is very nearly a likeness of the sky." },
            candle(),
          },
          actions = {
            { "Ask when it will be done", say "He does not turn round. \"When it holds still,\" he says. Through the skylight the cloud he is painting grows a tower. He sighs, and loads the brush with white." },
          } },
      } },
    { name = "the sign",
      description = "Outside, on an iron arm: a tankard, tipped, and under it a single painted drop on a wire, a yard long. In a wind the drop swings. It has been repainted more often than the tankard." },
    { name = "the wall straps",
      description = "Leather loops along every wall at elbow height, as in a coach. You put an arm through one. Nothing happens, and goes on not happening, and after a minute you see why people do it." },
    { name = "a dartboard",
      description = "On the rock wall. The darts are on strings. Behind the board, the wall is clean; behind the place where the board used to be, on the edge side, there is a patch of sky and a carpenter's repair.",
      actions = {
        { "Throw one", say "You miss the board. The dart reaches the end of its string and comes back, and a line mender catches it by your ear without looking. \"House rule,\" he says. \"You fetch your own.\"" },
      } },
    { name = "the visitors' shelf",
      description = "Things left behind by people from Below. A pair of spurs. A compass, sulking. A book, {i}One Hundred Walks in the Lower Grumbles{/}, with the last walk torn out.",
      things = {
        { name = "the torn stub", description = "You can read the heading. {i}Walk 100: the Summit, and{/}. Somebody took the rest with them, to follow." },
      } },
  },

  exits = {
    { to = "le_tether", label = "Out to the green", description = "Onto ground that is, at least, rock all the way down, for a given value of down." },
  },
}
