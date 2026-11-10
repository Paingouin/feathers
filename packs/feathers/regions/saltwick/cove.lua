space {
  id = "second_cove",
  region = "saltwick",
  name = "The Cove of Second Thoughts",
  description = "A notch in the cliffs with a floor of wet shingle that is not usually a floor. The rock is green to twice your height, which is how deep you would be standing on any other day. It is very quiet. The sea is a long way off, and you keep checking.",

  things = {
    { name = "the high-water mark",
      description = "A line on the cliff well over your head: weed below, bare rock above. Somebody has cut a notch at it, and a date. Higher up there is a second notch, and the words {whisper}spring tide, and what a day{/}." },
    { name = "a mooring ring",
      description = "Iron, set in the rock eight feet up, and bright where a rope has run through it. Recently. Fishing boats do not come here." },
    { name = "the weed",
      key = "weed curtain",
      description = "A fall of bladderwrack down the back wall of the cove, thick as a carpet. When the air moves, the rest of the weed in the cove swings out. This swings {i}in{/}.",
      variants = {
        { when = flag "weed_parted",
          name = "a gap in the weed",
          description = "Held aside on a hook somebody fixed there for the purpose. Behind it: a cave mouth, a draught, and a smell of tar and brandy." },
      },
      actions = {
        { "Part the weed", when = no(flag "weed_parted"), set "weed_parted",
          say "Wet, heavy, and there is no rock behind it. There is a hook to hold it back. People have gone to some trouble here." },
      } },
    { name = "the limpets",
      description = "Each on its own worn spot. They have been told the sea is coming back, and are prepared to wait." },
    { name = "a stranded jellyfish",
      description = "A clear dome on the shingle with four purple rings. {danger}It stings{/}, says every instinct you have. At present it is busy being a puddle.",
      actions = {
        { "Poke it with a stick", say "It wobbles. Nothing else. You have menaced a pudding." },
      } },
    { name = "the rock pools",
      description = "Left all over the floor of the cove in every hollow: small clear seas, each with its own weather and its own tyrant.",
      things = {
        { name = "the big pool",
          description = "Knee deep, a yard across, floored with pink weed. It has a population and, evidently, a government.",
          things = {
            { name = "a hermit crab", icon = "c",
              description = "In a whelk shell two sizes too big, dragging it along the bottom with enormous effort. It stops at an empty shell, a size smaller, and measures it carefully with both claws. It looks at its own. It walks on. Nobody likes to move house.",
              actions = {
                { "Put a better shell in its way", say "You find a neat one and set it down in its path. It stops. It measures. In one movement it is out of the old and into the new, and for an instant you saw the soft pink curl of what it really is. It walks off faster. You have housed a crab, and it is the most useful you have been all day." },
              } },
            { name = "a blenny", description = "A small mottled fish propped on its front fins in a crack, with eyes that swivel one at a time. It is looking at you with one and at a shrimp with the other, and is in two minds." },
            { name = "a beadlet anemone", description = "A blob of dark red jelly on the rock. In the water beside it, another, open: a ring of soft arms waving. A shrimp walks into them. The arms close, very gently, like a hand round a coin." },
          } },
        { name = "a pool the size of a saucer", description = "One periwinkle, one strand of green weed, and a pebble. It is the whole world to the periwinkle, which has been all the way round it twice and found it satisfactory." },
        { name = "a starfish", description = "Orange, upside down on the shingle where a wave dropped it. It is righting itself by walking two of its arms underneath the rest. It has been at it for an hour. It has no head to lose, and has not lost it." },
      } },
    { name = "the shingle",
      description = "Pebbles, wet, every colour that grey can be. They click under your boots and go on clicking for a moment after you stop.",
      things = {
        { name = "sea glass", description = "Green, brown, a white piece with a letter on it. Bottles, once. Mostly brandy, on this stretch. The sea has taken the edges off and handed them back as jewels, with no hard feelings." },
        { name = "a mermaid's purse", description = "A black leathery pouch with a horn at each corner, dry and light. An egg case; the fish hatched and left. The name is prettier than the fact, as on most of this coast." },
        { name = "a cart rut", description = "Two grooves, fresh, across the shingle from the weed curtain toward the Strand. A handcart, loaded going one way and light going the other. Somebody has found the walk worth making.",
          },
      } },
    { name = "iron rungs in the cliff",
      description = "A ladder of them, set in the rock, going up the back wall of the cove from above the tide mark. They pass the mooring ring and keep going. At forty feet they stop, at a blank face, under nothing.",
      things = {
        { name = "the top rung", description = "Bright on its upper side. Somebody stands on it, often, and does something up there with both hands that leaves no mark on the rock. A signal, perhaps, to a boat. Or the cliff has a door that is better made than the weed." },
      },
      actions = {
        { "Climb them", say "You go up twelve and look down, and come down eleven rather quickly and one very slowly." },
      } },
    { name = "a cormorant",
      icon = "v",
      description = "On a rock at the mouth of the cove: a black bird like an umbrella somebody has left open to dry. It holds its wings out and turns slowly to catch the wind. Its fishing ground went out with the tide. It is airing itself anyway, from habit.",
      actions = {
        { "Spread your arms too", say "You stand on the next rock with your coat held open. The wind goes through you. The cormorant turns its head, takes you in, and shuffles a foot further away along its rock, as from a man who has sat down too close on an empty bench." },
      } },
    { name = "a spring in the cliff",
      description = "A thread of fresh water comes out of a crack at shoulder height and runs down the green rock into the shingle. On any other day it runs into the sea, eight feet under, and nobody has ever tasted it.",
      things = {
        { name = "the fern at the crack", description = "One small fern, growing where the fresh water starts, bright green against the brown weed. Twice a day the sea covers it and twice a day it comes up alive. It has not been told that ferns cannot do that." },
      },
      actions = {
        { "Drink", say "Cold, sweet, with a taste of stone. You are the first person ever to drink from it. It is a small enough thing to be first at, and you are pleased for the rest of the hour." },
      } },
    { name = "a wrecked lobster pot",
      description = "Withy and twine, stove in on one side, half buried. A lobster walked out of it through the hole some time ago and has not been back to complain.",
      things = {
        { name = "the bait", description = "A fish head, still wired in the middle, entirely untouched. Whatever lives here now has better taste." },
      } },
    { name = "a seal pup",
      icon = "s",
      description = "White, fat, the shape of a bolster, lying on the shingle with its eyes shut. It was left here on the high tide to wait for its mother, and the tide did not come back. {danger}It opens its mouth at you and shows a pink throat and a set of small new teeth.{/} Then it sneezes.",
      things = {
        { name = "its eyes", description = "Black, round, and brimming. They always look like that. It is not crying. You tell yourself this several times." },
        { name = "a trail in the shingle", description = "A wide smooth furrow from the far white sea all the way up to the pup, and back again, and up again. The mother has been making the journey overland, a mile each way, on her stomach. The pup is fed. It is merely bored." },
      },
      actions = {
        { "Keep it company", say "You sit down on the shingle a little way off. After a time it humps itself across the gap, one wobble at a time, and goes to sleep against your boot. You stay much longer than you meant to. Adventure can wait; it has so far." },
      } },
    { name = "the fulmars",
      description = "Grey and white birds on nests in the cliff, stiff-winged, tube-nosed, looking down at you with their heads on one side.",
      things = {
        { name = "the nearest nest", description = "One white egg on bare rock, and a bird on it that is rocking back, slowly, and opening its beak. You have a moment to wonder why." },
      },
      actions = {
        { "Climb up for a closer look", say "It spits. A jet of warm yellow oil, accurately, from six feet. It smells of every fish that has ever died. The fulmar settles back on its egg with the satisfaction of honest work. You will not get this out of your coat. You will be telling people about this coat." },
      } },
    { name = "a rusted anchor",
      description = "Small, one fluke gone, wedged between two rocks with a length of chain. It is not a wreck's. It was put here. The chain runs back under the weed curtain, taut.",
      things = {
        { name = "the chain", description = "New links spliced into old. Somebody maintains this. Tug it, and far back in the cliff something wooden knocks twice." },
      },
      actions = {
        { "Tug the chain", say "Two knocks, from inside the rock. Then a pause. Then, a good deal fainter, a man's voice saying, \"Not now, Kev.\"" },
      } },
  },

  exits = {
    { to = "long_strand", description = "Back over the rocks, with an eye on the horizon." },
    { to = "sea_cave", label = "Behind the weed",
      description = "Through the gap, into the dark and the smell of tar.",
      requires = flag "weed_parted", hidden = true },
  },
}

space {
  id = "sea_cave",
  region = "saltwick",
  secret = true,
  name = "The Smugglers' Hole",
  description = "A sea cave, dry at the back, with a shelf of rock for a quay and a rowing boat hauled up on it. Kegs, bales, a lantern, a rota. Somebody runs a quiet business out of the sea here, and keeps it tidy.",
  variants = {
    { when = visited "smugglers_vault",
      description = "A sea cave, dry at the back, with a shelf of rock for a quay and a rowing boat hauled up on it. Kegs, bales, a lantern, a rota. The vault under Aldmoor turns out to have a seaside branch." },
  },
  palette = { bg = "#0a0e10", text = "#c0c8c4", dim = "#5a6864", accent = "#e0b060", border = "#3a4640" },
  ambience = {
    drip { glyphs = "⠁⠂⠄⡀", color = "#4f7f8a", rate = 0.4 },
    flicker { color = "#e0b060", strength = 0.15 },
  },

  things = {
    { name = "the boat",
      description = "Black, tarred, the oars wrapped in rag to keep them quiet. The old name has been painted out and a new one painted over it: {i}Nothing To Declare{/}." },
    barrel { name = "a keg", description = "Chalked {i}VINEGAR{/}. A second hand has added {i}(the good){/}." },
    { name = "the rota",
      description = "Pinned to a bale. {i}Mon: Dob. Tues: Dob. Weds: Dob (Kev poorly). Thurs: Kev, with Dob.{/} At the bottom, {i}No landings till the tide is fixed{/} has been crossed out, and under it, in a hurry: {i}It is OUT. We can walk it. Bring the cart.{/}" },
    { name = "the lantern",
      description = "Shuttered on three sides, so that it shines only out to sea. Lighthouses are for people with nothing to hide." },
    { name = "an old carving",
      description = "Above the tunnel mouth, older than tar and brandy: a row of small curved marks, cut deep. Waves, or wings. They run along the wall at the exact height of the highest tide.",
      variants = {
        { when = visited "great_drain",
          description = "Above the tunnel mouth, older than tar and brandy: a row of small curved marks, cut deep. The same marks run the length of the Great Drain, at the height of a raised hand. Here they keep to the height of the highest tide. Whoever cut them walked from there to here, or the other way." },
      } },
    { name = "the tunnel",
      description = "A passage cut into the back of the cave, climbing inland, with a rope along the wall and cart ruts in the floor." },
    { name = "Dob",
      icon = "☻",
      description = "A large mild man in a jersey, asleep on a bale with his cap over his face and a ledger open on his chest. He is, by the rota, the whole of the night shift, the day shift and the management. He wakes when you look at him, lifts the cap, and is not at all alarmed. Revenue men knock.",
      things = {
        { name = "his ledger", description = "Double entry, in a beautiful hand. {i}Vinegar (the good), 40 kegs. Tea, 9 chests. Lace, 1 bale (for Mother).{/} He is the most honest book-keeper on the coast. Every penny of duty that has not been paid is recorded here to the farthing." },
        { name = "his cap", description = "Knitted, with a bobble. His mother made it. She thinks he is in fish." },
      },
      actions = {
        { "Explain that you are not the Revenue", say "\"No,\" he agrees. \"He's up on the cliff. Lovely man. We send him sandwiches.\" He looks at your boots, your pack, the general state of you. \"Adventurer?\" You say yes. \"Thought so. You came in by the front. Customers come by the back.\"" },
        { "Ask about the business", say "\"It's not smuggling,\" he says, hurt. \"Smuggling's when you sneak. We just bring things in at a time when the Revenue isn't looking, which is all the time, because he looks at Aldmoor.\" He thinks. \"It's more of a delivery.\"" },
        { "Ask about Kev", say "\"Poorly,\" says Dob. \"He's been poorly since we found out you could walk it. He liked the boat. He says pushing a cart across a beach isn't a profession, it's a chore.\"" },
      } },
    { name = "the bales",
      description = "Stacked to the roof along the dry wall, sewn in oilcloth, each with a chalk mark only Dob can read.",
      things = {
        { name = "a bale of lace", description = "One corner has come unstitched. Inside is something white and fine as frost, yards of it, made by women across the water who will never know it ended up on a baroness in Aldmoor at three times the price." },
        { name = "a chest of tea", description = "Lead-lined, stamped with a mark like a small tree. The smell coming off it is the smell of somewhere warm and very far away. The gate sergeant at Aldmoor drinks this. He believes it is nettle." },
        { name = "a bale marked FOR THE PALACE", description = "Set apart, with a ribbon on it. You do not ask. Dob does not say. But it is the best oilcloth, and he dusts it." },
      } },
    { name = "the long table",
      description = "A door on two kegs, with a lantern, a pack of cards, two mugs and a great many small heaps of things, sorted.",
      things = {
        { name = "the card game", description = "Two hands, laid face down, mid-game. The stakes are in the middle: nine buttons, a fish hook and a note reading {i}I.O.U. one turn at the oars. K.{/} The game has been waiting since Kev was taken poorly." },
        { name = "the bribe tin",
          description = "A biscuit tin, labelled {i}SUNDRY EXPENSES{/}. Inside, in paper twists, each with a name.",
          things = {
            { name = "a twist marked REVENUE", description = "Sandwich money. It is the smallest twist in the tin. The officer has never asked for anything, so they budget for bread." },
            { name = "a twist marked GULLS", description = "Empty. \"You can't bribe a gull,\" says Dob. \"We tried. It took the money and told everyone.\"" },
          } },
        { name = "a tide table", description = "Printed by the Tide Office, {i}one penny{/}. Somebody has drawn a line through all of it and written across the page, with great joy: {b}OUT{/}." },
      } },
    { name = "the strongbox",
      key = "smugglers box",
      description = "An iron-bound chest under the table, with a padlock the size of a fist. The key is hanging on a nail directly above it, with a label: {i}KEY{/}.",
      variants = {
        { when = flag "sw_box_open",
          description = "An iron-bound chest under the table, open. It is full to the brim with gold coin, and every coin is the same. Dob watched you open it with the comfortable look of a man whose joke is about to land." },
      },
      things = {
        { name = "the gold",
          visible_if = flag "sw_box_open",
          description = "Hundreds of them, bright, heavy, stamped with the King's head. You bite one. It is chocolate. \"From over the water,\" says Dob. \"They do them at midwinter. Duty on sweets is ruinous.\" You have never in your life seen so much treasure, and it is all going to be eaten by children.",
          actions = {
            { "Eat one", say "The King's head comes off in gold paper. Underneath he is dark, bitter and very good. It is the first time you have got anything out of the Crown." },
          } },
      },
      actions = {
        { "Open it", when = no(flag "sw_box_open"), set "sw_box_open",
          say "You take the key off its nail. Dob does not stop you. The padlock opens, the lid goes back, and the lantern lights up more gold than you knew there was. Your heart goes like a drum. Dob waits, kindly, until you have had the moment. \"Have one,\" he says. \"Mind the paper.\"" },
      } },
    { name = "a parrot",
      icon = "v",
      description = "Green and red, on a perch made from a boathook, with one foot tucked up. It came off a foreign ship in payment of a debt. It knows forty words, all of them learned in this cave.",
      actions = {
        { "Say hello to it", say "\"NOTHING TO DECLARE,\" it says. \"NOTHING TO DECLARE. IT'S VINEGAR. IT'S VINEGAR, OFFICER.\" Then, in a different voice, lower, exactly Dob's: \"Oh, not again, Kev.\"" },
      } },
    { name = "the cart",
      description = "A fish barrow with the wheels bound in sacking, standing ready at the cave mouth. Since the tide went, the whole trade crosses the cove on this. Kev's opinion of it has been carved into the handle, briefly.",
      things = {
        { name = "the carved word", description = "{i}CHORE.{/}" },
      } },
    { name = "the winch",
      description = "A wooden windlass at the top of the rock quay, for hauling the boat up. The rope on it is new. The drum is black oak, and very old, and has hauled up a great many boats that were never written down anywhere.",
    },
    { name = "the pool at the back",
      description = "Where the cave floor dips: a basin of black water, quite still, that the tide used to refill and now does not. It is going down by an inch a day.",
      things = {
        { name = "the cave shrimps", description = "Clear as glass, eyeless, walking on the bottom with their feelers out. You can see what each one last ate. They have never needed to hide anything from anyone and are built accordingly." },
        { name = "a bottle on the bottom", description = "Flat, corked, full. One of Dob's, dropped. He says he is leaving it. \"For the shrimps. It gets dull down there.\"" },
      } },
    { name = "the bats",
      description = "In the roof, in a crack: a few dozen, hanging, wrapped in themselves. At dusk they go out through the weed curtain in a stream, and Dob takes his cap off to them, he says, since they are the only colleagues who keep the same hours.",
    },
    { name = "a row of hooks",
      description = "Iron, in the wall by the tunnel: oilskins, a coil of rope, a dark lantern from Brine's, and a child's kite.",
      things = {
        { name = "the kite", description = "Red paper on a split-cane frame, with a long tail of knotted rag. Dob flies it off the headland on fine evenings. It is not a signal. People assume it is a signal, and he has stopped correcting them, since the truth sounded worse." },
      } },
  },

  exits = {
    { to = "second_cove", description = "Out past the weed, into the light." },
    { to = "smugglers_vault", label = "The tunnel", set "sea_tunnel",
      description = "Up and inland by the cart ruts, a long dark mile, to wherever the brandy goes." },
  },
}
