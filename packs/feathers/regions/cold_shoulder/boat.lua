-- The way north: the mail boat, and the whaling station where she lands.

space {
  id = "cs_mail_boat",
  region = "cold_shoulder",
  name = "The Regardless",
  description = "The northern mail: a tubby black ketch with a tan mainsail, a stove pipe sticking out of the deckhouse, and a bow sheathed in iron for the ice. She sails from Muckle on the first of the month, regardless, which is how she came by the name. The deck is all mailbags, coal and one goat. North of the Stack the wind changes its mind about you, and you put on everything you own.",
  palette = { bg = "#070d14", text = "#ccd8e4", dim = "#5a6c80", accent = "#e8b060", border = "#2a4058" },
  ambience = {
    snow { glyphs = "·˙", color = "#8a96b0", rate = 0.2, speed = 0.5 },
    fog { color = "#101c28", speed = 0.4, strength = 0.3 },
  },
  backdrop = {
    "            |\\                 ",
    "            | \\      ˙         ",
    "    ·       |  \\               ",
    "        ▄▄▄▄█▄▄▄▄▄▄▄▄          ",
    "≈≈≈≈≈≈≈≈▀███████████▀≈≈≈≈≈≈≈≈≈≈",
  },

  things = {
    { name = "the skipper",
      icon = "☺",
      description = "Captain Agnes Thole, in a sealskin coat that goes down to the deck and a hat with flaps. She has made this run three hundred and six times and been late for none of them, having never told anybody when to expect her.",
      things = {
        { name = "her pipe", description = "Clay, short, upside down, so the snow does not put it out. She talks round it. It has not been lit since the Stack." },
        { name = "her mittens", description = "Three pairs, worn all at once, each knitted by a different widow up the coast. She wears them in strict order of who is watching from the quay." },
        { name = "her almanac", description = "Hung on a nail by the tiller. Every page has the same thing written on it in ink: {i}Went anyway.{/}" },
      },
      actions = {
        { "Ask how far north she goes", say "\"Far as the Station. Then the ice does the rest, or you do.\" She looks at the horizon as one looks at a relation. \"I've been asked to go further. I say show me a quay and I'll tie up to it. Nobody's shown me a quay.\"" },
        { "Ask about the weather", say "\"It's not weather up here,\" she says. \"Weather goes away. This is just what it's like.\"" },
      } },
    { name = "the mate",
      description = "Young Ib, who is fifty, and was named when there was an Old Ib to tell him from. He is sorting bags with a list in his teeth.",
      actions = {
        { "Help with the mailbag", when = no(flag "cs_mail_helped"), set "cs_mail_helped", give "cs_mail_token",
          say "You take one end of the Drift bag. It is the weight of a small pony, on account of the newspapers, which are a year's worth and are read up there one a day, in order, so as to have news every morning. You get it to the rail between you. Ib hands you a slip of whalebone with notches in it. \"You've carried the mail,\" he says. \"That's you landed. They'll not let a stranger off, but they'll let off the post.\"" },
        { "Help with the mailbag", when = flag "cs_mail_helped",
          say "\"You've done your bag,\" says Ib. \"Don't spoil them. They'll want it every month.\"" },
      } },
    { name = "the mailbags",
      description = "Canvas, tarred, with a brass label each. Nine of them, lashed round the mast.",
      things = {
        { name = "the bag for the Station", description = "Mostly knitting patterns and seed catalogues. The whalers are great gardeners. Nothing grows. They read the catalogues aloud to one another and argue about beans." },
        { name = "the bag for Drift", description = "A year of the {i}Aldmoor Intelligencer{/}, bundled by month, and a great many letters addressed to streets. Up there the street is what moves. The postman knows where each one went." },
        { name = "the bag for the ship", description = "Labelled {i}H.M.S. PERSEVERANCE, in the ice{/}. Thin. Pay warrants, forty years of them, each cancelling the one before, and one scented letter every month in the same violet hand." },
        { name = "a very small bag", description = "A leather pouch, sealed with a crown. {i}To the Moot.{/} It is carried every month. Ib says it is always the same single sheet, a new one each time, from the Crown, and that it always says {i}nothing to report, with respect{/}. The bears expect it." },
        { name = "a bag with no label", description = "Flat, and empty, and carried all the same, out and home. \"For the letters from further on,\" says Ib. There have not been any. \"Yet,\" says Ib." },
      } },
    { name = "the goat",
      icon = "g",
      description = "Tethered to the windlass, in a knitted coat. She is going north to Mother Skerry, who ordered a goat by letter four years ago and will have forgotten. The goat has eaten the label that said so.",
      actions = {
        { "Scratch her head", say "She leans on you with her whole weight, for the warmth, and eats your glove while you are being touched by it." },
      } },
    { name = "the deckhouse",
      description = "A box the size of a wardrobe with a stove in it, a bench, and a window that shows you the bow going up and coming down.",
      things = {
        { name = "the stove", icon = "♨", description = "A pot-bellied iron thing called the Bishop, red at the waist. It burns Tickover coal and anything else. Everybody aboard takes a turn sitting next to it by a rota that is the nearest thing the ship has to a religion." },
        { name = "the kettle", description = "It has not been off the stove since the boat was launched. The tea in it is not so much made as kept going, like a family business." },
        { name = "the bench", description = "Worn into three hollows. You fit the middle one, which is the one for whoever the others have not made up their minds about." },
        { name = "a chart on the wall", description = "The coast north of the Stack, in the skipper's own hand, with soundings. It is very good as far as the Station. Past that the pencil line goes on a little way, gets lighter, and stops in the middle of nothing. It has not been rubbed out there. She simply had no more to put." },
      },
      actions = {
        { "Sit by the stove", say "You sit. Your front cooks. Your back does not hear about it. After ten minutes Ib taps the bench with his boot and you move along, and a deckhand you had not seen until now takes the warm place without a word, shuts his eyes, and smiles." },
      } },
    { name = "the iron bow",
      description = "Plated like a flat iron as far back as the foremast, and dented all over.",
      things = {
        { name = "the dents", description = "Each one is a floe she did not go round. The skipper says going round is how you get to like it." },
        { name = "the figurehead", description = "A wooden hand, life size, held up flat, palm forward. It is either a greeting or a refusal. Up here that is the same gesture." },
      },
      actions = {
        { "Stand in the bow", say "The first ice comes down to meet you in plates the size of tables, turning slowly. She puts her iron nose into one and it parts with a long sound like cloth tearing. The pieces close behind. You look back. There is no road where you came." },
      } },
    { name = "the first ice",
      wonder = true,
      description = "It begins all at once. One hour the sea is grey water with a white edge to the north, and the next you are among it: pans and plates and slow white islands, each one riding with nine parts of itself held under, each one {magic}blue inside{/} where it has cracked, a blue you had thought belonged only to stained glass. They knock together, softly, with a sound like a great many people putting down cups. Nothing up here is in a hurry. You had not noticed, till now, how much hurry there was in you.",
      actions = {
        { "Touch a floe as it passes", say "You reach over the rail. It is rougher than you expected, like sugar, and it is not as cold as the air. It carries your handprint away south at a walking pace, towards a sea where it will be gone by Tuesday." },
      } },
    { name = "the deck cargo",
      description = "Everything a place needs that cannot grow anything: coal, flour, lamp oil, onions, needles, and a crate of window glass with {i}DRIFT. WITH CARE. AGAIN.{/} on it.",
      things = {
        barrel { name = "a barrel of pickled cabbage", description = "Greenhollow cabbage, by the brand. Up here it is medicine. A spoonful a day keeps the teeth in, and they take it like men taking the oath." },
        { name = "a sack of onions", description = "Marta's. Even frozen solid they look as if they had expected better." },
        { name = "a crated harmonium", description = "For the Station chapel, which has been singing unaccompanied for a hundred years and has drifted, as a congregation, about a tone and a half flat. The harmonium is going to cause a schism." },
      } },
    { name = "a passenger in the lee of the boat",
      description = "A thin man wrapped in a horse blanket, sitting on a coil of rope, writing in a notebook with his glove off. He is from the Survey. He is going up to relieve the man in the Last Hut, as he does every third year.",
      actions = {
        { "Ask what he surveys", say "\"The north sheet,\" he says. \"Ninety-one.\" You ask how it is coming on. He blows on his fingers. \"It's very consistent,\" he says." },
      } },
    { name = "the wake",
      description = "A black lane of open water behind you, closing as you watch. Far back along it, small and already unlikely, is the top of the Stack with its smoke of birds." },
    { name = "the bell",
      description = "A small brass bell on the mast. It is rung once for each whale sighted, as a courtesy, so that the Station knows who is in.",
      actions = {
        { "Ring it", say "You reach for the lanyard. Ib's hand is on your wrist before you have touched it. \"Only if you've seen one,\" he says. \"They'd come out to say good morning, and it'd be you with nothing to say.\"" },
      } },
  },

  exits = {
    { to = "is_landing", label = "South, to Muckle",
      description = "She goes back on the turn of the month, with the empty bags and the full one. Or now, if you ask, as she was going anyway." },
    { to = "cs_station", label = "Ashore at the Station",
      description = "Over the side on to a quay made of whale ribs that nobody had to die for, they were found.",
      requires = flag "cs_mail_helped",
      locked = "\"Strangers don't land,\" says the mate. \"The post lands.\" He looks at the bags, and then at you" },
  },
}

space {
  id = "cs_station",
  region = "cold_shoulder",
  name = "Blowhard Station",
  description = "A whaling station, built in a great hurry a hundred and ten years ago by men who meant to be rich by autumn. There is a quay, a slipway, a boiling house with three iron pots as big as rooms, a row of tarred huts, and a flagpole. Everything is in excellent repair and none of it has ever been used. Out in the bay, in the black water the tide keeps open, the whales are coming up to breathe, one after another, quite close in, like neighbours looking over a fence.",
  palette = { bg = "#060c12", text = "#d0dae4", dim = "#5c6c7c", accent = "#9ad8e8", border = "#28424e" },
  ambience = {
    snow { glyphs = "·˙", color = "#8a9ab0", rate = 0.15, speed = 0.3 },
    steam { glyphs = "˙·'", color = "#7888a0", rate = 0.2 },
  },

  things = {
    { name = "the bay",
      description = "A mile of open black water in a white country, kept from freezing by a current nobody has traced. The Station was built here for it. So, a good deal earlier, was the arrangement with the whales.",
      things = {
        { name = "the whales",
          wonder = true,
          icon = "∩",
          description = "There are eleven in the bay this morning. A back comes up, black and long and shining, longer than the mail boat, and goes on coming up when you thought it had finished. Then the breath: a great soft {magic}whoosh{/} and a tree of white vapour thirty feet high that hangs in the cold and drifts over the Station and comes down on your face as fine rain. It smells of fish and of somewhere very deep. Then the back rolls on and under, and the water closes, flat, as if it had been asked to keep a secret. They come in every day to look at the Station. The Station comes down every day to look at them. Neither side has ever grown tired of it.",
          actions = {
            { "Listen to the whales", when = no(flag "cs_heard_whales"), set "cs_heard_whales",
              say "The Station master shows you how. You lie down on the quay and put your ear to the end of an oar, with the blade in the water. At first, nothing. Then, from a long way down, a sound like a door the size of a hill being opened, slowly, in another room. It rises. It breaks into three notes and a click. Another one answers from across the bay, lower, and they go on like that, turn and turn about, and you understand without being told that it is a conversation and that it is not about you. When you get up your ear is frozen to the oar and your face is wet. \"Aye,\" says the Station master, looking somewhere else, to be kind. \"It takes everybody so. That's why the harpoon's at the inn.\"", fx "wash" },
            { "Listen to the whales", when = flag "cs_heard_whales",
              say "You lie down with the oar again. They are still at it. The low one says a long thing and the others are quiet until it is done." },
          } },
        { name = "a calf", description = "Grey, and small, which is to say the size of a cart. It has come right up to the quay to look at the goat. The goat is looking at the calf. Each of them has plainly been told about the other and did not believe it." },
        { name = "the old cow", description = "The whalers call her the Dowager. She has a white scar across her back in the shape of a hook and is the first in the bay each spring. The Station's log has her in it on the first page. The man who wrote that page is in the graveyard on the hill, and she comes in under it and blows, once, every year." },
      } },
    { name = "the Station master",
      icon = "☺",
      description = "Mr Josiah Flense, the fourth of the name, in oilskins and a muffler. His great-grandfather came north to kill whales, and the family has been explaining ever since.",
      things = {
        { name = "his telescope", description = "Brass, for spotting whales. He uses it to see which is which. He knows all of them by the notches in their tails and can tell you who is whose aunt." },
        { name = "his returns", description = "The form the Crown sends every year. {i}Whales taken: ____. Oil rendered: ____. Bone: ____.{/} He fills it in truthfully, with noughts, and adds a page on how everybody is keeping. The Crown has renewed the licence a hundred and nine times. Mr Flense thinks nobody down there has ever read past the address." },
      },
      actions = {
        { "Ask why they never caught one", say "\"First morning, first boat,\" he says. \"My great-grandfather's in the bow with the iron. Up she comes, right alongside, and rolls over, and looks at him. With the eye. He said it was like being looked at by a church.\" He rubs his nose. \"He sat down. They all rowed home. Next morning they went out to try again and she'd brought the others to see. Well. You can't, after that. Not when you've been {i}introduced{/}.\"" },
        { "Ask what the Station does, then", say "\"We keep the bay,\" he says. \"We count them in and count them out. If a net drifts in, we cut it. If one's sick we sit up with it. Hetty reads to them, Sundays.\" He thinks. \"And we fish, and we mend. It's a full day.\"" },
      } },
    { name = "the flagpole",
      description = "A ship's mast, stepped in a cairn at the end of the quay, eighty feet high and stayed with chain. It was put up for signalling to a whaling fleet that never came. There is an iron ring at the top the size of a cartwheel, which Mr Flense's grandfather added because a traveller once told him that a tall thing ought to have something to tie up to.",
      things = {
        { name = "the flag", description = "A white whale on a blue ground. It is frozen stiff and stands straight out in no wind at all, like a signboard." },
        { name = "the iron ring", description = "It has never been used. It is greased every autumn. They are a people who keep things ready." },
        { name = "the halyard", description = "Furred with frost to the thickness of your arm. A boy is sent up to knock it clear each morning and is given a boiled sweet." },
      },
      actions = {
        { "Look up it", say "It goes up into the falling snow and you lose the top. If something came down out of that sky on a rope, you think, this is where it would come." },
      } },
    { name = "the quay",
      description = "Built of whale ribs, set upright like a fence and filled with stone. The ribs were found, on a beach to the east, already old. The whalers are particular that you should know that.",
      things = {
        { name = "the six whaleboats", description = "On chocks, bottom up, painted every spring: white, with a blue stripe. Not one of them has a scratch below the waterline that was not put there by a rock." },
        { name = "the bollards", description = "Three, each made from the knuckle of something's backbone. The {i}Regardless{/} is fast to the middle one. A cormorant is drying itself on the far one with the look of a man holding up a coat." },
        { name = "the tally post", description = "A baulk of timber with a knife cut for every whale {i}seen{/}. It is the fourth post. The first three are kept in the chapel. This one is cut nearly to the top." },
      } },
    { name = "the boiling house",
      description = "A long shed with three try pots set in brick, each big enough to boil down a whale's worth of blubber. They have been found other work.",
      things = {
        { name = "the first pot", icon = "♨", description = "Soup. It has been going since the founding. It is skimmed, fed and never emptied, and contains by now a little of every fish in the northern sea. A ladle hangs beside it and you are expected to." ,
          actions = { { "Have a ladle of soup", say "Grey, thick, scalding, and the best thing that has ever happened to you. A man you have not met hands you a heel of bread without looking up from his net. That is the entire ceremony." } } },
        { name = "the second pot", description = "The Station's bath, Saturdays, by families. There is a wooden step and a rail and a notice: {i}NO SOAP IN THE SOUP POT. YOU KNOW WHO YOU ARE.{/}" },
        { name = "the third pot", description = "Dry, scrubbed, and full of children, who have a rope swing in it. Their shouting comes out of the top with an echo on it, like a bell being pleased." },
        { name = "the furnace mouths", description = "Three iron doors, for fires that were to be fed with scraps of the catch. They burn driftwood, and peat from the hill, and once a year the Crown's returns form, after it has been copied." },
      } },
    { name = "the flensing deck",
      description = "A great sloping floor of planks at the head of the slipway, where the whales were to be cut up. It is the only flat dry ground for a mile. It is used for dances.",
      things = {
        { name = "the flensing knives", description = "In a rack on the wall: blades like oars, on six-foot handles. They are used for cutting peat, and at weddings to cut the cake, which is traditional and takes two men." },
        { name = "chalk marks on the planks", description = "The figures of a reel, numbered, with arrows. Somebody has drawn a whale in the middle of the set, as the thing you go round." },
        { name = "the winch", description = "A capstan with bars, to haul a whale up the slip. It hauls the boats up, and once a year the harmonium out of the mail boat, with the whole Station singing to keep time." },
      },
      actions = {
        { "Try a step", say "You try the first figure on the chalk marks. A woman going by with a creel stops, watches, puts down the creel, turns you round the other way by the shoulders, and goes on. You try again. It is a good deal better." },
      } },
    { name = "the huts",
      description = "Eleven, in a row, tarred black, each with a turf roof and a smoking chimney and a whale's jawbone for a door arch.",
      things = {
        { name = "a window box", description = "On every sill. Earth carried up from the south by the bagful, and in it nothing, with a label: {i}Sweet Peas (hopeful){/}. One box has a single green shoot the length of a fingernail under an upturned glass. The whole Station visits it." },
        { name = "Hetty's hut", description = "Hers has a bench outside facing the water and a shelf of books under oilcloth. Sundays she reads to the bay. The whales come in close for it. She has been through the whole of the {i}Lives of the Saints{/} and is now on a seed catalogue, which she says they like better." },
        { name = "the smallest hut", description = "The chapel. It holds twenty, standing. The hymn board says {i}As Usual{/}." },
      } },
    { name = "the log",
      description = "On a slope desk in the Station office, under a lamp: a ledger as thick as a doorstep, open at today.",
      things = {
        { name = "today's entry", description = "{i}Dowager, Old Notch, the Twins, Barnacle, Mrs Barnacle, five others not close enough. Calf well. Wind N. Soup good.{/}" },
        { name = "the first page", description = "A hundred and ten years back, in a hand that had started out bold. {i}Lowered at dawn. Fast to nothing. Came home. I do not know what I shall write to the owners.{/} And the next day: {i}Wrote to the owners. Said the ground was promising.{/}" },
        { name = "a page with a visitor's hand", description = "Not long ago, between two days of whales, somebody not of the Station has been allowed to make an entry, in a small clerk's hand. {i}Tide here: not kept. Comes and goes unsigned. Made enquiries. Was directed north.{/} It is initialled {i}H.P.{/}" },
      },
      actions = {
        { "Turn back through it", say "A hundred and ten years of the same eleven or twelve names, and the weather, and the soup. Now and then {i}a new calf{/}, in red. Now and then a name that simply stops appearing, and the next day's entry is shorter and nobody has drawn attention to it." },
      } },
    { name = "the lookout",
      description = "A barrel on a pole, with a ladder. A boy sits in it all day to cry the whales. He cries them by name.",
      actions = {
        { "Climb up", say "Forty rungs. From the barrel you can see the whole bay, and the ice beyond it going north without a mark on it, and to the east a thread of smoke that must be a town. The boy points at a back rolling under. \"That's Barnacle,\" he says. \"He's shy.\"" },
      } },
    { name = "the graveyard on the hill",
      description = "A dozen whalebone crosses above the Station, facing the water. The ground is too hard to dig. They are under cairns.",
      things = {
        { name = "the first Flense", description = "{i}JOSIAH FLENSE. HARPOONER. HE THOUGHT BETTER OF IT.{/} Somebody has to explain to every visitor that it is meant as praise." },
      } },
    { name = "the sledge road",
      description = "A line of poles going off east across the ice, each with a rag on it. Between the poles the snow is packed flat by runners. It is the road to Drift, when Drift is where it was." },
  },

  exits = {
    { to = "cs_mail_boat", label = "The mail boat", description = "Back aboard the {i}Regardless{/}, by the rib quay." },
    { to = "cs_town", label = "The sledge road to Drift",
      description = "East along the poles, behind six dogs and a man who steers by shouting at them, to the town on the ice." },
  },
}
