-- The Kirk of the Ninth Wave, and the customs post on the point with what it holds.

space {
  id = "is_chapel",
  region = "afterthoughts",
  name = "The Kirk of the Ninth Wave",
  description = "A small grey building on the highest ground of the island, which is not high, with walls four feet thick and a roof held down by chains. Every ninth wave is bigger than the eight before it. The islanders have always known this, and thought it wise to stay on good terms. A minister was sent from the mainland thirty years ago to put a stop to that. They have reached an understanding. He has Sundays.",
  palette = { bg = "#0a0f12", text = "#ccd2d4", dim = "#606c72", accent = "#a8c8e0", border = "#2e424c" },
  ambience = {
    dust { glyphs = "·˙", color = "#5a6a74", rate = 0.3, speed = 0.2 },
    shimmer { color = "#4a6878", strength = 0.2 },
  },

  things = {
    { name = "the fleet in the roof",
      wonder = true,
      icon = "╧",
      description = "Hung from the rafters on threads of net twine, all down the length of the kirk: ships. A model of every boat that ever fished out of Muckle, whittled by the man who built the boat, on the winter it was launched. There are more than two hundred. They hang at different heights, bows all to the east, turning a little in the draught, like a harbour seen from underneath. {magic}When a boat is on its way home, its model swings round by itself to face the door.{/} The women come up here in bad weather and stand looking at the roof.",
      things = {
        { name = "the ships facing the door", description = "Six, at present. That is every boat that is out. You count them twice, as everyone does." },
        { name = "a ship facing the wall", description = "One, high up, in the corner, turned full away to the west. She has hung like that for sixty years. Nobody takes her down. It would be saying something." },
        { name = "the smallest ship", description = "A hide boat, no longer than a mussel shell, sewn from a scrap of skin over three bent twigs. It hangs nearest the wave stone. It is the first, and it is brittle as a leaf, and it is facing the door. It has always faced the door. Whoever is in that boat is still on the way." },
        { name = "the ferry", description = "The {i}Presently{/}, in larch, with a sail of red flannel. She swings to the door and back again all day, door and back, like a weathercock in a street." },
      },
      actions = {
        { "Stand under the fleet", say "Two hundred keels over your head, turning by a hair's width, each on its thread. A draught comes in under the door. One of the boats swings slowly round to face you, and stops. A woman at the back of the kirk gets up without a word and goes out, quickly, down towards the slip." },
      } },
    { name = "the wave stone",
      description = "Where another church would have an altar there is a single boulder of green stone, taller than you, which the sea has hollowed and curled over at the top until it is the exact shape of a wave about to break. They did not carve it. They found it on the shore the morning after the old kirk went under, and understood it as a receipt.",
      things = {
        { name = "the hollow of the wave", description = "Smooth as the inside of a spoon. It holds about a bucket of rain. They baptise the babies in it, and the babies do not cry. This is put down to the stone. The minister puts it down to the water being warmer than it has any reason to be." },
        { name = "the offerings", description = "Along the foot: a row of the ninth of things. The ninth herring of a catch, dried. The ninth egg. The ninth row of somebody's knitting, cut out and laid here, and the jersey sewn up again shorter." },
      },
      actions = {
        { "Count to nine", say "You count the sound of the sea through the wall. Seven. Eight. The ninth comes, and the chains on the roof shift, and every model overhead lifts a little and settles. Nobody looks up. It is only being polite back." },
      } },
    { name = "the minister",
      icon = "☺",
      description = "Mr Gilfillan, thin, earnest, sent out from the Temple Quarter of Aldmoor at twenty-five to bring the islands round. He is fifty-five. He has not brought them round. He has been brought some distance himself, and is no longer certain which of them is in the other's parish.",
      things = {
        { name = "his collar", description = "Starched by the widow Tolmie every Saturday. It is the only starch on the islands. It gives him, she says, something to hold his head up with." },
        { name = "his hands", description = "Scratched and red. It is his day on the rota. The Cow has explained her position." },
        { name = "a cake, in a parcel", description = "On the pew beside him, just delivered, unshaken. It is from his mother in Aldmoor. She sends one each month and a letter asking when he is coming home. He eats the cake. He answers the letter with a description of the weather." },
      },
      actions = {
        { "Ask about the Ninth Wave", say "\"Superstition,\" he says firmly. The sea hits the island. \"Seven,\" he says, without seeming to know that he has. \"It is a superstition, and I preach against it every Sunday, and they agree with every word.\" Eight. \"And then they leave the ninth of everything on that stone.\" The ninth comes. He has, you notice, taken hold of the pew." },
        { "Ask about the old kirk", say "\"Out there.\" He nods at the west window. \"There was more island once. The first kirk stood on the low ground and went under in a night, bell and all. Three hundred years ago. They built this one up here and never hung another bell.\" He hesitates. \"They say there was no need. They say the old one still does the work. I have lived here thirty years and I have not heard it.\" He looks at his hands. \"I have not been lost, of course.\"" },
      } },
    { name = "the pews",
      description = "Eight on each side, built of ship's timber. Each pew is the wreck it came from, and is called by its name.",
      things = {
        { name = "the Good Intent", description = "Front left. Teak, with a row of bolt holes. The family that sits in her has done so for five generations, and the youngest are told to mind the splinter." },
        { name = "the Prudence", description = "Third on the right. She went down in a calm, in daylight, in sight of land, for no reason anybody ever found. People sit in her lightly." },
        { name = "a pew with a porthole", description = "The pew end is a whole piece of a ship's side, with the brass port still in it. The children look through it during the sermon. It gives on to the pew in front, and they pretend otherwise." },
        { name = "the back pew", description = "Plain deal, no name. For visitors, and for Dod Larkin, who says he will sit in a wreck when he has made one." },
      } },
    { name = "the pulpit",
      description = "The bow of a ship's boat, stood on end, with steps up the back. The minister preaches from the place the lookout would stand. The name is still on the strake: {i}PERSEVERE{/}.",
      actions = {
        { "Stand in it", say "You climb up and put your hands on the gunwale. The kirk lies before you like a small sea. You have a strong wish to tell it something. You have nothing whatever to tell it. You get down, with a new respect for Mr Gilfillan, who has managed fifteen hundred Sundays." },
      } },
    { name = "the empty bell cote",
      description = "A stone arch on the west gable, made for a bell, with the iron pins set ready. It has been empty since it was built. A rope hangs down from it all the same, through a hole in the roof, to a hand's reach from the floor.",
      things = {
        { name = "the bell rope", description = "New hemp. It is replaced every nine years by the net wives, whether it wants it or not. The end is bound in red wool and has never been pulled dirty.",
          actions = {
            { "Pull the rope", say "It comes down a foot, with nothing on the end of it, and goes back up. There is no sound at all. You stand for a moment in the no sound. Then the widow Tolmie, three pews off, says, \"It'll have gone where it was meant,\" and returns to her knitting." },
          } },
      } },
    { name = "the book of the sea",
      description = "On a stand by the door, under a square of glass: a ledger with a cover of sealskin. Every islander taken by the sea is written in it, with the date and the weather. It is not kept by the minister. It is kept by whoever was nearest of kin.",
      things = {
        { name = "the open page", description = "Two names, brothers, and one date. {i}Wind NW, rising. They had been told.{/} It is all in a woman's hand, very steady, until the last word." },
        { name = "a ribbon marker", description = "Blue. It is put in at the page of whoever was lost on this day of the year, any year. It is moved every morning. There is no day when it has nothing to mark." },
        { name = "the first page", description = "No name. A drawing of a hide boat with one figure in it, and beside it, in the oldest writing in the book: {i}the man. He was no use, but he was ours.{/}" },
      } },
    { name = "the hymn board",
      description = "Four slots for the numbers of the hymns. The first three have hymns in. The fourth, by long custom, has the time of high water." },
    { name = "the harmonium",
      description = "Sent out with the minister, thirty years ago, as a gift from the Temple. The salt had it within the year. It will play one note now, a low wheeze, when a wave strikes the island. They sing without it, in eight parts. It joins in on the ninth.",
      actions = {
        { "Press a key", say "It sinks under your finger and stays down, like a foot in mud. No sound. Far below you a wave comes in, and the harmonium breathes out, once, by itself, a low grey note. The minister does not turn round. \"Thank you,\" he says. \"It has been told.\"" },
      } },
    { name = "the collection shell",
      description = "A scallop the size of a dinner plate, passed along the pews on Sundays. It comes back with fish hooks, buttons, a twist of tea and, once a year, when the herring money is in, one gold coin that everybody has put a little towards.",
      things = {
        { name = "a button", description = "Horn, four holes. It has been in the collection every week for a year. The minister takes it out each Monday and gives it back to old Hector, who thanks him, and puts it in again on Sunday." },
      } },
    { name = "the west window",
      description = "Plain glass in small leaded squares, clouded white with salt on the outside. It is washed every Saturday. By the Sunday it is white again. Through it the sea is a brightness with no edge.",
      variants = {
        { when = flag "tide_out",
          description = "Plain glass, clouded with salt. Through it the sea is a brightness, a long way off. Between here and there, where it was water yesterday, something low and green is lying out on the sand. The minister has turned his chair so as not to face it." },
      } },
    { name = "the kirkyard",
      description = "Round the kirk, inside a wall: a hundred stones of the same grey slate, all set facing the sea so that those under them can keep an eye on it.",
      things = {
        { name = "the empty graves", description = "One stone in three has nobody under it. They are for those the sea kept. The grave is dug the same, and filled the same, and the name cut the same, with {i}AWAY{/} where another stone would have a second date." },
        { name = "a stone with a ship on it", description = "A captain. The ship is cut very fine, every rope. Under it: {i}He found the harbour. This is not it.{/}" },
        { name = "thrift", description = "Sea pinks, in cushions along the foot of the wall. It is the one flower the wind allows. The schoolmistress has been told this, kindly, for thirty years." },
        { name = "a new stone, blank", description = "Leaning against the wall, cut and squared, with no name on it yet. Old Hector had it made at eighty, to save trouble. He comes up on fine days to see how it is weathering." },
      } },
    { name = "the roof chains",
      description = "Four, of ship's anchor chain, going over the ridge and down to rings in the rock at either side. In the great gale of his grandfather's time, Erchie says, the kirk lifted the length of a link and sat down again. You can see the link. It is brighter than the rest." },
    { name = "a lamp in the east window",
      description = "A small oil lamp with a red glass, lit at dusk every night by the last person to leave. It cannot be seen from the sea. It is not for the sea. It is so that the fleet in the roof will know which end of the kirk is home." },
  },

  exits = {
    { to = "is_landing", label = "The Landing", description = "Down the one path, with the wind behind you, helping." },
  },
}

space {
  id = "is_customs",
  region = "afterthoughts",
  name = "His Majesty's Customs, Afterthoughts Station",
  description = "A whitewashed hut on the end of the point, with a flagstaff, a brass plate, a painted line across the path and a small man in a blue coat. The Crown has kept an officer here for two hundred years to tax the trade of the islands. In all that time the islands have declared no trade. The officer has a great deal of time, and has spent it getting everything ready.",
  palette = { bg = "#0a1014", text = "#d0d6da", dim = "#62707a", accent = "#e8d078", border = "#30444e" },

  things = {
    { name = "the customs officer",
      icon = "♜",
      description = "Mr Prewitt Lamb, Preventive Officer, Third Class. He is small and pink and anxious to help. He was posted here at twenty-two as a first step. He is forty-one. He has never made a seizure, levied a duty, or been spoken to sharply by anyone on the islands, and all of these worry him.",
      variants = {
        { when = flag "is_declared",
          description = "Mr Prewitt Lamb, Preventive Officer, Third Class. He is pink and shining and cannot stop looking at Form 1. He has had a declaration. It is the first in the history of the station. He keeps taking it out of the drawer to see that it has not got away." },
      },
      things = {
        { name = "his badge", description = "A crown over an anchor, in brass, polished to the point where the crown is going. He wears it on his hat, where everybody can see it coming." },
        { name = "his blue coat", description = "Regulation, with eight buttons. He has sewn every one of them back on himself, several times. Nobody on the island would do it for him, he says, quite without complaint. They were all too busy with the kippers." },
        { name = "his telescope", description = "Brass, Crown issue. He watches the boats through it. They are always carrying kippers. He has come to feel that he knows the kipper trade as well as any man living." },
      },
      actions = {
        { "Declare something", when = no(flag "is_declared"), set "is_declared", fx "sparkle",
          say "You say that you have something to declare. He goes white, and then red. He gets out Form 1, which has yellowed, and a pen, which he has to wet. \"Nature of goods?\" One pair of boots, you say, worn, and at present on. \"Value?\" Sentimental. He writes {i}sentimental{/}. \"Duty on boots in use is nil,\" he whispers, \"but it is {i}declared{/}.\" He stamps it. He stamps the copy. He stamps the blotter, for the joy of the thing. Then he takes a key from round his neck. \"A declarant,\" he says, \"is entitled under section nine to inspect the bonded store. Nobody ever has. Would you? Please?\"" },
        { "Declare something", say "\"You have declared,\" he says, tenderly. \"It is on file. I should not like to wear it out.\"" },
        { "Ask about smuggling", say "\"On the Afterthoughts?\" He is shocked. \"There is nothing {i}to{/} smuggle. They make kippers. I have searched every boat for nineteen years and found kippers. Sixty barrels a month.\" He frowns a little. \"From a very modest catch. They are wonderfully thrifty people.\"" },
        { "Ask if he is lonely", say "\"Oh, no. They are very kind. They wave. Somebody leaves a bottle on the step each new year, from a shop in Saltwick. I have never found out who.\" He straightens the inkwell. \"I do sometimes think they stop talking when I come in. But I expect that is the hat.\"" },
      } },
    { name = "the painted line",
      description = "A white stripe across the path, twenty yards short of the hut, with {b}CUSTOMS{/} lettered on the near side and {b}THANK YOU{/} on the far. He repaints it every spring. To cross it with goods is to enter the King's notice. The islanders walk round the end of it, which is three feet away, on the grass.",
      things = {
        { name = "the path round the end", description = "Worn to the bare rock by two hundred years of feet. It is a good deal wider than the path." },
      },
      actions = {
        { "Step over the line", say "You step over. A bell on a spring goes {i}ting{/} in the hut. Mr Lamb comes out with his hat on, sees that you are empty handed, and stands there holding his hope in both hands like a cup." },
      } },
    { name = "the counter",
      description = "A deal board with a flap, scrubbed white. Laid out on it, square to the edge: ink, pens, a stamp, a pad, sealing wax, a candle to melt it and a pair of brass scales. Every item is dusted daily. Not one has ever been used in anger.",
      things = {
        { name = "Form 1, Declaration Inward",
          description = "A pile of them a foot high, printed two reigns ago. The top one is yellow and curled. The one under it is as white as the day it came.",
          variants = {
            { when = flag "is_declared",
              description = "A pile of them a foot high. The top one is gone. The new top one, white as milk, is seeing daylight for the first time in ninety years." },
          } },
        { name = "the stamp", description = "{b}PASSED{/}. The rubber is perfect. There is a second stamp, {b}SEIZED{/}, still in its paper." },
        { name = "the brass scales", description = "For weighing dutiable goods. A spider has slung a web from one pan to the other, and he has not had the heart. Its catch balances exactly." },
        candle { description = "For the sealing wax. It has been lit once a year, on the King's birthday, for two hundred years, and is nearly a third gone." },
      } },
    { name = "the tariff",
      description = "A printed sheet, framed, as tall as the wall, giving the duty on everything that might be landed. {i}Silk. Tea. Brandy. Lace. Tobacco. Playing cards. Wind (bagged). Mermaids (live). Mermaids (other).{/} At the bottom: {i}Kippers: exempt.{/}",
      things = {
        { name = "the line about kippers", description = "Added by hand, two hundred years ago, in the first week of the station, at the particular request of the islanders. The officer of the day could see no harm in it." },
        { name = "the line about wind", description = "{i}Wind, bagged or bottled, per quarter: one penny.{/} It is the only line with a tick beside it. The tick is very old." },
      } },
    { name = "the day book",
      description = "Two hundred years of daily entries, in forty volumes, on a shelf. Each officer has kept it faithfully.",
      things = {
        { name = "the first volume", description = "{i}Day 1. Arrived. Nothing declared. Day 2. Nothing declared.{/} By the foot of the page he is writing only {i}N.D.{/}" },
        { name = "the present volume", description = "Mr Lamb's. {i}N.D. N.D. N.D. Saw a whale. N.D.{/} And at the end, if he has had his declaration, one line in red ink, underlined three times, with a small drawing of a boot.",
          variants = {
            { when = no(flag "is_declared"), description = "Mr Lamb's. {i}N.D. N.D. N.D. Saw a whale. N.D. N.D. A boy waved. N.D.{/} The whale has a page to itself." },
          } },
        { name = "a volume with one entry different", description = "Two hundred years back, near the beginning. {i}Seized on the quay: one bag, containing a wind, the property of Capt. Odlin, for want of duty one penny. Capt. Odlin gone to the mainland for the penny. Bag placed in bond.{/} The next day: {i}N.D.{/} And the next." },
      },
      actions = {
        { "Ask about the one seizure", say "\"Before my time. Before anybody's.\" He lowers his voice. \"A Captain Odlin. He had bought a fair wind from a weather-wife to get home for a christening, and he had not a penny on him, having spent it on the wind. He went for the penny. He was becalmed.\" Mr Lamb looks at the door at the back. \"The child was christened without him. It is all still in there. Section nine says it is to be held until claimed or until the next declaration, whichever is the sooner. Neither has ever looked like occurring.\"" },
      } },
    { name = "the flagstaff",
      description = "A ship's topmast, stayed with wire, flying the Crown's ensign. He raises it at dawn and lowers it at dusk and salutes both times, alone, in all weathers.",
      things = {
        { name = "the ensign", description = "It lasts about four months in this wind. He writes for a new one. What comes is always the wrong size. He hems it." },
        { name = "a second halyard", description = "For signal flags. He has the full set, in a locker, rolled. He knows them all by heart. The nearest station that could read them is Saltwick, which is over the horizon." },
      } },
    { name = "the revenue boat",
      description = "A grey gig on a cradle, with {b}H.M.C.{/} on the bow and four oars. The regulations provide a crew of four. The Crown provides Mr Lamb. He rows out to search the fishing boats with one pair of oars, going round in a slow curve, and they wait for him.",
      things = {
        { name = "the boarding hook", description = "For grappling a smuggler. The fishermen take hold of it and pull him alongside, and give him a hand up, and ask after his chest." },
      } },
    { name = "the bed",
      description = "A cot behind a curtain, made tight enough to bounce a coin. Above it, a shelf with three books: the Customs Consolidation Act, the Tariff, and a novel about a revenue officer who catches a great many smugglers and marries an admiral's daughter. The novel is falling apart." },
    { name = "the vegetable patch",
      description = "In the lee of the hut, inside a wall of beach stones: six kale plants and a row of onions, staked against the wind. He grows his own. It is not that the islanders would not sell to him. They give him things, and he cannot bear it, because he has to work out the duty.",
      things = {
        { name = "the kale", description = "Bent flat to the east, all six, like men walking into a gale." },
      } },
    { name = "a door at the back",
      description = "Iron bound, with three locks and a lead seal across the jamb, and a board: {b}BONDED STORE. HIS MAJESTY'S LOCKS.{/} It is the strongest door on the islands. Dust lies along the bottom of it in a drift.",
      variants = {
        { when = flag "is_declared",
          description = "Iron bound, with three locks. The lead seal is broken and the drift of dust has been swept into a small neat heap. The door stands a hand's width open. Mr Lamb is being very careful not to look at it." },
      } },
    { name = "the brass plate",
      description = "By the door: {b}H.M. CUSTOMS. HOURS OF BUSINESS: SUNRISE TO SUNSET.{/} Screwed on beneath, smaller: {i}Please knock. Please.{/}" },
    { name = "a gull on the flagstaff",
      description = "Great black-backed, the size of a goose. It sits on the truck of the mast with its feet over the ensign. Mr Lamb has written to head office about it. Head office replied that gulls are not dutiable." },
  },

  exits = {
    { to = "is_landing", label = "The Landing", description = "Back along the point. He will wave until you are out of sight, and for a while after." },
    { to = "is_bonded_store", label = "The bonded store",
      description = "Through the iron door at the back, which has not been opened in two hundred years, to see what the King has been keeping.",
      requires = flag "is_declared", hidden = true },
  },
}

space {
  id = "is_bonded_store",
  region = "afterthoughts",
  secret = true,
  name = "The Bonded Store",
  description = "A stone room without a window, built to hold the seized cargoes of a whole archipelago. It has racks to the ceiling for casks, bins for tea, hooks for bales of silk. All of it is empty, and has always been empty, and is clean, because nothing has ever been in here to make it otherwise. In the middle of the floor, on a pallet, by itself, there is one grey sack. Your hair lifts as you come in. There is a draught, and it is not coming from the door.",
  palette = { bg = "#0b0e12", text = "#c8ced6", dim = "#5c6672", accent = "#b0d0f0", border = "#2c3848" },
  ambience = {
    dust { glyphs = "·˙∙'", color = "#6a7888", rate = 0.9, speed = 1.6 },
    fog { color = "#182028", speed = 0.9, strength = 0.3 },
  },

  things = {
    { name = "the grey sack",
      key = "is_sack",
      icon = "§",
      visible_if = no(item "is_bagged_wind"),
      description = "Sealskin, tied at the neck, with a lead seal and a docket. It lies on its pallet in the middle of the floor and it will not lie still. One side bulges, and then another. The dust all round it has been swept into a perfect ring, as if by a very small and patient broom. {magic}There has been a north-easter shut in this bag for two hundred years.{/}",
      things = {
        { name = "the ring in the dust", description = "A circle six feet across with the sack at the centre and not a grain inside it. Outside it the dust is two centuries deep. The edge is as sharp as if it had been cut." },
        { name = "the docket", description = "{i}One (1) wind, NE, fresh to strong. Seized of Capt. J. Odlin. Duty owing: one penny. Held pending.{/}" },
      },
      actions = {
        { "Claim the wind", give "is_bagged_wind", fx "wash",
          say "Mr Lamb reads you section nine from the doorway, all of it, with his hat off. Goods held in bond, unclaimed, pass on the next lawful declaration to the declarant, duty remitted. He has you sign in three places. Then you pick up the sack. It is light as a pillow and it leans, hard, toward the north-east corner of the room. Your coat streams out behind you. In the hut, every Form 1 in the pile goes up to the ceiling and comes down in order. You have the Fair Wind in Bond. \"Do not,\" says Mr Lamb, holding on to the door, \"under any circumstances, undo it in a boat.\"" },
        { "Prod it", say "It prods back. A cold breath goes up your sleeve to the elbow and comes down again with a button." },
      } },
    { name = "the empty pallet",
      visible_if = item "is_bagged_wind",
      description = "A square of boards in a ring of clean floor. The ring is already beginning to blur at the edge. In a few years this will be an ordinary empty room, and Mr Lamb will have nothing in bond at all, which he says will be a weight off." },
    { name = "the cask racks",
      description = "Oak, pegged, to hold four hundred casks of brandy. They hold none. The chocks are all still in a neat pile at the end, each one numbered.",
      things = {
        { name = "chock number one", description = "It has a pencil note on it, in the hand of the first officer: {i}any day now{/}." },
        { name = "a cobweb", description = "Across the bottom rack. It streams out sideways in the draught, and the spider is hanging on in the middle of it like a man in rigging." },
      } },
    { name = "the tea bins",
      description = "Lined with lead, lidded, labelled {i}BOHEA{/}, {i}CONGOU{/}, {i}GUNPOWDER{/}. You lift a lid. The lead inside is as bright as a mirror, and has only ever reflected the lid.",
      actions = {
        { "Smell inside", say "Nothing. It is the cleanest smell you have ever met. It is what tea smells like to someone who has only read of it." },
      } },
    { name = "the silk hooks",
      description = "A row of brass hooks for hanging bales. On the last one somebody has hung a single glove. It is Mr Lamb's. He found it on the shore, and no owner, and it seemed wrong to keep it and wrong to throw it away, so he seized it. It is the only thing he has ever seized, and he is not sure it was legal." },
    { name = "the register of bond",
      description = "A great book chained to a desk by the door. Columns for date, goods, owner, duty, and released. One line is written in it. The rest of the book is ruled, numbered and blank, four hundred pages, ready.",
      things = {
        { name = "the one line", description = "{i}One wind. Odlin. 1d.{/} The column headed {i}released{/} is empty.",
          variants = {
            { when = item "is_bagged_wind", description = "{i}One wind. Odlin. 1d.{/} Under {i}released{/}, in fresh ink, in Mr Lamb's best hand: {i}to a declarant, per s. 9, with thanks{/}. He has blotted it four times." },
          } },
      } },
    { name = "a penny on the desk",
      description = "Copper, green, lying by itself in the middle of the desk on a square of paper. The paper says: {i}From Capt. Odlin, by the hand of his grandson, with apologies for the delay.{/} It came a hundred and forty years too late for the christening, and a week after the officer who could have taken it had died. Nobody since has known which book to enter it in. So it has stayed on the desk, and the wind has stayed in the bag, an arm's length apart.",
      actions = {
        { "Push the penny toward the register", say "It will not go. It slides back across the desk to where it was, slowly, by itself, away from the north-east. The wind has been pushing at it for a hundred and forty years. They have worn a small groove." },
      } },
    { name = "the draught",
      description = "It goes round the room the way the sun goes, steadily, at about the height of your knee. It smells of open sea and cold rope, and of a morning two hundred years ago with a christening at the far end of it.",
      actions = {
        { "Stand in it", say "It parts round your legs like a cat. You find you have turned, without meaning to, to face the south-west, as a ship would, with this behind her. For a moment you are making very good time." },
      } },
    { name = "the weathercock",
      description = "A small tin cockerel on a spike, set on top of the cask racks by some officer with a sense of humour. Indoors, in a sealed room, it points north-east. It has never once swung.",
      variants = {
        { when = item "is_bagged_wind", description = "A small tin cockerel on a spike on top of the cask racks. It is pointing at you. As you move toward the door, it follows." },
      } },
    { name = "the three locks",
      description = "On the inside of the door: one for the officer, one for the Collector at Saltwick, and one for the King. The Collector's key and the King's were never sent. Mr Lamb opened those two with a bent kale stake and a great deal of apology." },
    { name = "the walls",
      description = "Dressed stone, two feet thick, built to keep a kingdom's revenue in. They are sweating slightly. On the north-east side the mortar has been scoured out of the joints to the depth of a finger, from within." },
  },

  exits = {
    { to = "is_customs", label = "Back to the counter", description = "Out past the three locks, to where Mr Lamb is pretending to file something." },
  },
}
