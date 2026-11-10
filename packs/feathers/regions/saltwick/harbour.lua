space {
  id = "saltwick_harbour",
  region = "saltwick",
  name = "Saltwick Harbour",
  description = "A stone quay, a dozen boats, nets drying on everything that stands still, and gulls supervising. Saltwick catches fish, sells fish, and smells of the difference.",
  variants = {
    { when = flag "tide_out",
      description = "A stone quay standing over a wide floor of shining mud. A dozen boats lie on their sides in it, where they were put down. The gulls are walking where they used to float, and plainly feel it is beneath them." },
  },
  backdrop = {
    "        │           │         ",
    "       ╱│╲         ╱│╲        ",
    "   ▄▄▄▄▄█▄▄▄▄   ▄▄▄▄█▄▄▄▄▄    ",
    "≈≈≈≈▀▀▀▀▀▀▀▀≈≈≈≈≈▀▀▀▀▀▀▀▀≈≈≈≈≈",
  },

  things = {
    { name = "the fishing boats",
      description = "Tubby, tarred, and nudging the quay on a slow swell. Each has a name on the bow and a different opinion of it on the stern.",
      variants = {
        { when = flag "tide_out",
          description = "Tubby, tarred, and lying in the mud at the end of slack ropes. From up here you can see their keels, which they would rather you did not." },
      },
      things = {
        { name = "the Hopeful", description = "Painted blue. Named in a good year." },
        { name = "the Realistic", description = "Painted grey. Named the year after." },
      } },
    { name = "Hesper Coddle, fishwife",
      icon = "☻",
      description = "She guts a herring in one motion without looking at it. She is looking at you, and you find you are standing up straighter.",
      things = {
        { name = "her knife", description = "Worn to a sliver by forty years of sharpening. It has opened more fish than there are people in Aldmoor." },
      },
      actions = {
        { "Talk", say "\"Herring,\" she says. \"Or mackerel, if you want to pay for the stripes.\"" },
        { "Ask about the lighthouse", say "\"Old Wim? Lets nobody up, and hasn't left the place in years. Waiting on a letter. By sea, he says.\" She flicks a fish head to a gull. \"The sea doesn't write. It'd have told me.\"" },
        { "Ask about the tide", when = no(flag "tide_out"),
          say "\"Goes out when the Office signs it out. Hasn't been signed since the clerk lost his stamp.\" The knife stops for a moment. \"You don't leave things lying near gulls.\"" },
        { "Ask about the tide", when = flag "tide_out",
          say "\"Out, since the clerk got his stamp back, and no one to sign it in again.\" She looks at the mud, and at her boat lying in it. \"I'd be cross. But the cockles are grand.\"" },
      } },
    { name = "a gull",
      icon = "v",
      description = "It stands on a bollard and looks at your pockets.",
      things = {
        { name = "its eye", description = "Yellow, round, and working out what you would fetch." },
      },
      actions = {
        { "Stare it down", say "You stare. It stares. You remember something you had to do elsewhere." },
      } },
    { name = "the nets",
      description = "Hung on poles, rails, a handcart, and one old man who sat down too long.",
      things = {
        { name = "the old man under the net", description = "Asleep. The net has been mended around him twice." },
      } },
    barrel { name = "a barrel of herring",
             description = "In stories there is always something in the barrel. Here it is herring. It is always herring." },
    { name = "the Persistent",
      key = "persistent",
      icon = "╧",
      description = "The biggest boat in the harbour, a herring drifter with two masts and a brown sail furled on the fore. She is alongside the quay with a plank down, and nobody has told you not to.",
      variants = {
        { when = flag "tide_out",
          description = "The biggest boat in the harbour, a herring drifter with two masts, sitting upright in the mud on legs her crew have lashed to her sides. She is the only boat that kept her dignity. The plank from the quay now goes steeply down." },
      },
      things = {
        { name = "the deck",
          description = "Scrubbed pale, sticky with scales, and laid out so that a man can find anything on it in the dark with a sea coming over.",
          things = {
            { name = "the tiller", description = "Oak, as long as you are, the grip worn to the shape of a hand. Not any hand. The skipper's father's, and his father's. The present skipper has had to grow into it." },
            { name = "the capstan", description = "An iron drum for hauling nets, with four bars. It takes four men. The crew is three. The fourth bar is pushed by whoever is nearest when they come in, which is how you know not to stand on the quay at dusk." },
            { name = "a coil of rope", description = "Flaked down so neatly that it looks drawn. Somebody did that with cold hands at four in the morning and took pride in it." },
          } },
        { name = "the hold",
          description = "Down a ladder: a dark box smelling of salt and fifty years of fish. It is divided into pounds by loose boards.",
          things = {
            { name = "a pound of herring", description = "Silver, packed in salt, every eye open. There is something about several thousand fish all looking the same way that makes you check behind you." },
            { name = "the bilge", description = "An inch of black water under the bottom boards, and living in it, by long arrangement, one crab. The crew call it the Mate. It is fed on Sundays." },
          } },
        { name = "the crew",
          description = "Three men mending a net on the foredeck without speaking. They have worked this boat together for thirty years and used up everything they had to say in the first two.",
          things = {
            { name = "the skipper", description = "Josse Varr, grey, square, with a pipe he has not lit since the Tide Office banned smoking near the forms. He looks at the sky the way other men read a letter.",
              actions = {
                { "Ask about the fishing", when = no(flag "tide_out"), say "\"There's fish,\" he says. A long pause. \"Out there.\" A longer one. \"We're in here.\" He has, by his standards, been talking all afternoon." },
                { "Ask about the fishing", when = flag "tide_out", say "He looks over the side at the mud. He looks at you. \"Cockles,\" he says, in the voice of a man reading his own sentence." },
              } },
            { name = "the boy", description = "Forty if he is a day. He was the boy when he signed on, and nobody has joined since." },
            { name = "the one who sings", description = "Not at present. He sings when they haul, one verse a fathom, and has a verse for every fathom of every ground between here and the edge of the chart. Past that, he says, he would have to make them up." },
          } },
        { name = "the cabin",
          description = "A cupboard in the stern with three bunks, a stove the size of a hat, and a kettle chained to it.",
          things = {
            { name = "the top bunk", description = "The boy's. He has carved a calendar on the beam above his face, and thirty years of tally marks, and a very small picture of a cow. He has never said why." },
            { name = "a tin mug",
              description = "One of three on hooks, dented, with a letter punched in the bottom so each man knows his own. There is a fourth hook. It has a mug on it with no letter, kept clean.",
              things = {
                { name = "the fourth mug", description = "For whoever they pull out of the water. It has been used eleven times. There are eleven scratches on the handle, and room for more." },
              } },
          } },
      },
      actions = {
        { "Go aboard", say "You walk the plank, which bends, and step down onto the deck, which moves. Three men look up from a net, look at your boots, and look down again. Nobody objects. A boat in harbour is common ground, like a churchyard." },
      } },
    { name = "the fish market",
      description = "A slate-roofed shed open on the seaward side, with stone slabs in rows and water running down the middle. The catch is sold here at dawn in about nine minutes. The rest of the day is for arguing about it.",
      things = {
        { name = "the auctioneer",
          description = "A small man on an upturned box with a bell. He sells fish faster than anyone can hear, in a language that is four parts number and one part cough. People buy things by scratching their noses. Visitors are warned.",
          actions = {
            { "Scratch your nose", say "The bell rings. You are told that you now own a stone of whiting. You explain that you have no money. The bell rings again and you do not own it. It was the fastest you have ever been rich and poor." },
          } },
        { name = "the crab stall",
          description = "A slab of live brown crabs, claws tied with rush, walking slowly over one another toward the edge.",
          things = {
            { name = "an escaping crab", description = "It has got one claw free, the string trailing, and has reached the gutter. The stallholder watches it go. \"Every day one gets as far as the steps,\" she says. \"I let it. Gives the others something to hope for.\"" },
          } },
        { name = "the eel man",
          description = "He sells them alive, out of a tub, by the length. He holds one up to show you. It ties itself in a knot round his wrist and he goes on talking.",
          things = {
            { name = "the tub", description = "Black water that will not keep still. You count the eels and get a different number each time, and none of the numbers is small." },
          } },
        { name = "the slabs", description = "Cod, ling, gurnard red as a scald, and a flatfish with both eyes on one side, looking up at you as if you were the odd one." },
        { name = "the market cat", description = "Enormous, grey, and asleep on the scales. Everything in Saltwick has been weighed with this cat on it since she was a kitten, and prices have been adjusted to suit." },
      } },
    { name = "the quay",
      description = "Great blocks of grey stone fitted without mortar, older than the town that stands on them. Iron rings, stone bollards, weed below the tide line and barnacles below that.",
      things = {
        { name = "the harbour steps", description = "A flight cut into the quay face, slick and green, going down into the water. The bottom steps are worn hollow. Nobody alive has stood on them.",
          variants = {
            { when = flag "tide_out",
              description = "A flight cut into the quay face, slick and green, going all the way down to the mud. There are forty of them. The harbour had only ever admitted to nineteen." },
          } },
        { name = "a bollard", description = "Granite, waist high, with a groove round it worn by nine hundred years of rope. A gull has the top. It is always the same gull." },
        { name = "the names on the wall",
          wonder = true,
          description = "Along the inner face of the quay, cut small, one under another: the name of every Saltwick boat that did not come home. {i}Good Hope. Mary Ellen. Trust. Two Brothers.{/} There are a great many. {magic}The newest name is at the top, and the stone above it has already been smoothed ready.{/} Everybody who passes touches the wall. The line where the hands go is polished like glass.",
          actions = {
            { "Touch the wall", say "Cold, and smooth, and damp. You did not know any of them. You find you have taken your hat off, as everyone here does, without being told." },
          } },
      } },
    { name = "the cottages",
      description = "A row of them along the back of the quay, whitewashed, low, with doors in every colour a boat has ever been painted. They used up the ends of the tins.",
      things = {
        { name = "a window with a ship in a bottle", description = "A full-rigged ship in a green bottle, sails set. It is the {i}Unsinkable{/}. The label says {i}made by her carpenter, from memory, afterwards{/}. She is on an even keel in there, which is more than she managed outside it." },
        { name = "a doorstep", description = "Scrubbed white every morning and chalked with a pattern of loops to keep bad luck from crossing it. The cat steps over. The postman steps over. You would step over." },
        { name = "a row of drying fish", description = "Split, salted and pegged on a line under the eaves, stiff as boards. A gull walks along the roof above them with the look of somebody checking a door handle." },
      } },
    { name = "the lobster pots",
      description = "Stacked five high against the sea wall: cages of withy and tarred twine, each with a funnel door that is easy to enter and impossible to leave.",
      things = {
        { name = "a lobster in a pot", icon = "c",
          description = "Blue-black, very large, left in to keep till market. {danger}It raises both claws at you{/} and you take a step back. The claws are pegged shut with wooden wedges. It knows this. It raises them anyway, on principle.",
          actions = {
            { "Apologise to it", say "It lowers the claws a little. It is the most reasonable response you have had from anything in a shell." },
          } },
      } },
    { name = "the smokehouse",
      description = "A tall black shed with no windows and a roof that leaks blue smoke at every seam. Herring go in silver and come out the colour of a violin.",
      things = {
        { name = "the kippers", description = "Hundreds, split and hung by the tail on rods, row above row into the dark, turning brown and gold. The smell alone would keep you alive for a week." },
        { name = "the oak chips", description = "Smouldering in a trench in the floor, never allowed to flame. The smoker damps them with seawater from a can and watches them like a man with a sleeping child." },
      },
      actions = {
        { "Breathe in", say "You will smell of this for a month. Dogs will follow you. You regret nothing." },
      } },
    { name = "the harbourmaster",
      icon = "♜",
      description = "Captain Ivo Brack, retired, in a coat with brass buttons, standing at the head of the quay with a slate. He records every boat in and every boat out. The slate is blank, and he is holding the chalk very tight.",
      variants = {
        { when = flag "tide_out",
          description = "Captain Ivo Brack, retired, in a coat with brass buttons, standing at the head of the quay with a slate. He has drawn a line across the middle of it and written, under the line, {i}NO WATER{/}. He seems almost relieved. It is at least an entry." },
      },
      actions = {
        { "Ask about the boats", when = no(flag "tide_out"), say "\"None out. Tide's not signed. I have written to the Office.\" He shows you the letter. He has written it on the slate. \"They have not replied.\"" },
        { "Ask about the boats", when = flag "tide_out", say "\"None out, none in, none afloat.\" He looks at the mud with a professional eye. \"I have been master of this harbour for nineteen years and this is the first time I have seen the bottom of it. It wants sweeping.\"" },
      } },
    { name = "children crabbing",
      description = "Three of them lying on their stomachs on the quay edge with a line, a bacon rind and a bucket.",
      variants = {
        { when = flag "tide_out",
          description = "Three of them, down on the mud, with a bucket, picking crabs up by hand. They have decided that this is cheating and are doing it anyway." },
      },
      things = {
        { name = "the bucket", description = "Eleven small green crabs, climbing over each other. At the end of the day they will be counted, named and tipped back in. Some of these crabs have been caught every summer for years and know the bucket." },
      },
      actions = {
        { "Ask how many", say "\"Eleven,\" says the smallest. \"That one's Gerald. He always comes.\"" },
      } },
    { name = "the inn sign",
      description = "A board swinging over a door at the landward end of the quay: a painted sea, perfectly flat, with a boat sitting on it doing nothing. {b}THE SLACK WATER{/}. There is light in the windows and a noise of mugs." },
    { name = "the chandler's window",
      description = "Small panes, salt-fogged, crammed with rope, lamps, brass and one stuffed puffin. Over the door: {b}BRINE & DAUGHTER, SHIP CHANDLERS. EVERYTHING FOR THE SEA EXCEPT THE SEA.{/}" },
  },

  exits = {
    { to = "cliff_road", description = "Up the switchbacks, to the top of the cliff and the wind that lives there." },
    { to = "slack_water_inn", description = "Under the swinging sign, into warmth, smoke and the smell of chowder." },
    { to = "chandlery", description = "Through the door with the bell on it, into a shop with more rope than floor." },
    { to = "harbour_floor", label = "The harbour steps",
      description = "Down forty green steps to the mud, where the boats are lying and the gulls are walking.",
      requires = flag "tide_out",
      locked = "the steps go down into the harbour, and at present so does the harbour" },
    { to = "tide_office" },
    { to = "saltwick_light", description = "Along the mole to the white tower at the end of it." },
    { to = "long_strand", description = "Past the last cottage and round the point, where the quay gives up and the sand begins." },
  },
}
