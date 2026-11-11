space {
  id = "reed_beds",
  region = "mumblewood",
  name = "The Reed Beds",
  description = "The west end of Lake Perhaps, where it cannot decide whether to be water or land and has settled on mud. Reeds stand twice your height on either side of a plank walk, hissing in a wind you cannot feel. Everything here is either wading, hiding or singing.",
  palette = { bg = "#0a100e", text = "#c4ccb8", dim = "#606c58", accent = "#b8c860", border = "#30402c" },
  ambience = {
    fog { color = "#182420", speed = 0.15, strength = 0.5 },
    fireflies { glyphs = "✧·", color = "#d8e088", rate = 0.3 },
    dust { glyphs = "·˙", color = "#56684a", rate = 0.3, speed = 0.5 },
  },

  things = {
    { name = "the reeds",
      description = "Ten thousand grey-gold stems with tasselled heads, all leaning one way, then all the other. They whisper, as the trees mumble, but faster and with less to say.",
      things = {
        { name = "a reed warbler's nest", description = "A deep cup woven round three stems, swaying a yard above the water. Inside it one enormous chick fills the whole nest, with a small anxious bird standing on its head to feed it. The cuckoo at the wood's edge has a great deal to answer for." },
        { name = "a harvest mouse", icon = "m",
          description = "No bigger than a walnut, climbing a reed head with its tail wound round the stem like a fifth hand. It reaches the seeds, eats one, and rides the stem as it bends, quite unconcerned, like a man on a ladder who trusts the ladder.",
          actions = {
            { "Hold out a finger", say "It considers the finger, steps onto it, finds it is not a reed, and steps off again with no hard feelings. It weighed nothing. You look at the finger for some time." },
          } },
        { name = "a bittern",
          description = "Brown, streaked, standing among the stems with its beak pointed straight up, swaying when the reeds sway. You looked directly at it twice before you saw it. Then it booms: a sound like blowing over the neck of a very large jug, which you feel in your chest. It is the loudest secret in the wood." },
      },
      actions = {
        { "Listen to them", say "{whisper}...sss... is it... sss... is it... is it...{/} They never finish. You suspect that if you waited for a still day, you would find they had nothing to add." },
      } },
    { name = "the plank walk",
      description = "Boards laid end to end on stakes, a hand above the mud, greened over and sprung. They go into the reeds, turn twice, and come to the angler's shed. Every seventh board is missing. Whoever built it could count, and had a sense of humour.",
      things = {
        { name = "a missing board", description = "A gap, a stride wide, over mud the colour and texture of gravy. There is one boot print in the mud, deep, and a second beside it, deeper, and then the marks of somebody getting out by a method they did not afterwards discuss." },
      },
      actions = {
        { "Jump a gap", say "You clear it, land on the next board, and the far end of that board comes up and looks at you. You stand very still until it goes down again." },
      } },
    { name = "the frog chorus",
      icon = "f",
      description = "Hundreds, unseen, on every side: a steady creaking like a gate that goes on for miles. It stops, all of it, at the same instant when you take a step, and starts again, all of it, a breath after you stand still.",
      things = {
        { name = "the conductor", description = "One large frog on a tussock, a little apart, with its throat blown out like a bubble. It croaks alone, once, and the whole marsh comes in on the next beat. You would swear it glanced at the back row." },
        { name = "the spawn", description = "Clouds of clear jelly in the shallows, each bead with a black comma in it. Some of the commas are wriggling. In a month this will be several thousand more voices and no more parts to sing." },
      },
      actions = {
        { "Join in", say "You give them your best croak. The silence is total. Then one frog, somewhere near your foot, does it back to you, exactly, including the crack in the middle. The chorus resumes, and you are fairly sure you have been taken up as a comic turn." },
      } },
    { name = "a stranded punt",
      description = "A flat grey boat nose-down in the reeds, with a pole standing upright in the mud beside it. It has been here long enough for a willow herb to flower on the back seat.",
      things = {
        { name = "the punt pole", description = "Ash, twelve feet, stuck fast. A wagtail uses the top as a lookout. Carved near the grip: {i}IF FOUND, I AM STILL ON THE END OF IT.{/} He is not. You check." },
        { name = "a duck's nest in the bow", description = "Down, grass and nine green eggs, tucked under the fore-deck. The duck sits tight and looks at you along her bill. The punt is not stranded. The punt is spoken for." },
        { name = "the name on the stern", description = "{i}SHORTLY{/}, in the same flaking paint as the rowing boat on the shingle. Somebody once kept a small and optimistic fleet." },
      } },
    { name = "the angler's shed",
      key = "angler shed",
      description = "Tarred boards on stilts at the end of the walk, with a padlock on the door that is not locked, only hung there. This is where he keeps thirty years of tackle that has never been wet.",
      things = {
        { name = "the rod rack", description = "Eleven rods, greenheart and cane, oiled, perfect. He takes one down each morning in strict turn, so that none of them will feel it has been passed over." },
        { name = "the fly drawer",
          description = "A shallow drawer lined with cork, with forty flies pinned in rows, each one tied by him on a winter evening.",
          things = {
            { name = "a fly with the hook cut off", description = "Red hackle, gold body, a beautiful thing, and below the body a clean snip. They are all like this. He ties them to look at. He says a fly with a hook is a lie told to a fish." },
          } },
        { name = "the record book",
          wonder = true,
          description = "A ledger, thick as a brick, ruled in columns: {i}date, weather, caught{/}. Eleven thousand days, and in the third column, every day, in the same steady hand, a small neat nought. {magic}It is the most patient thing you have ever held.{/} Now and then there is a note in the margin. They are worth the reading.",
          things = {
            { name = "a note in the margin", description = "{i}Something took an interest today. I reeled in at once. We looked at each other. I think we understand one another.{/}" },
            { name = "another note", description = "{i}Rowed out to the island. Lifted the stone. Went down. Have decided to fish from the shore from now on, and not to use a hook, in case I catch the sky.{/}" },
            { name = "today's line", description = "The date, {i}fog, clearing{/}, and the column for the catch still empty. He fills it in at dusk. He does not like to presume." },
          },
          actions = {
            { "Add up the noughts", say "You turn pages for a while, carrying nothing. The total is nought. He has written it at the foot of every page, and underlined it, and you begin to see that it is a score." },
          } },
        { name = "a stuffed pike in a case", description = "Four feet long, glass-eyed, on the back wall. The brass plate says: {i}NOT CAUGHT by Alder Finch, at Lake Perhaps, on eleven thousand consecutive days.{/} It is carved from limewood and painted. He made it himself, from memory, of the one he sees underneath." },
      },
      actions = {
        { "Try the door", say "The padlock comes off in your hand. Inside it smells of tar, linseed and tea. Nothing is out of its place. You hang the padlock back on exactly as it was, since he would know." },
      } },
    { name = "an otter",
      icon = "o",
      description = "Brown, sleek, lying on its back in a channel between the reeds with a fish on its chest, eating it from the head down and humming. It sees you and does not stop. It has never in its life been short of anything, and it shows.",
      things = {
        { name = "its slide", description = "A chute of polished mud down the bank into the channel, with wet prints leading back up to the top. It is not for getting anywhere. The otter climbs up and comes down it again while you watch, twice, for no reason but the one." },
      },
      actions = {
        { "Watch it play", say "It goes down the slide a third time, on its back, with its paws folded, and looks at you from the water as if to ask what exactly it is that you do for fun. You do not have a good answer ready." },
      } },
    { name = "a marsh light",
      wonder = true,
      icon = "°",
      description = "Out among the reeds where there is no path, a small pale flame, blue at the heart, standing a foot above the mud. Everybody knows about these. They lead travellers off into the bog. This one, when it sees you looking, {magic}comes over to the plank walk and waits by your foot{/}.",
      actions = {
        { "Follow it", fx "sparkle",
          say "It goes ahead of you along the boards at walking pace, pausing at each missing plank until you are over. It leads you round the two turns, past the shed, and back to exactly where you started. Then it bobs once and goes out. It has been leading people safely nowhere for a thousand years. Nobody told it what the others do." },
        { "Ask where it goes in the day", say "It dims, a little, and drifts off toward the old punt. There is a jar under the seat with the lid off. It is the first you have heard of a will-o'-the-wisp with lodgings." },
      } },
    { name = "the marsh flowers",
      description = "On the firmer mud, in the gaps: gold, pink and a purple that has gone further than it needed to.",
      things = {
        { name = "the marsh marigolds", description = "Fat yellow cups on hollow stems, so bright in the fog that they look lit. Kingcups, the village calls them. No king ever drank out of anything this good." },
        { name = "a sundew", description = "A rosette of red leaves no bigger than a coin, every leaf beaded with glue. A gnat is stuck to one. {danger}The leaf is closing.{/} It is closing at a speed that will take until tomorrow, and the gnat has stopped struggling out of boredom." },
        { name = "the bog cotton", description = "White tufts on thin stalks, nodding, like a field of very small old men all agreeing with each other." },
      } },
    { name = "an eel trap",
      description = "A long basket of withies with a funnel mouth, staked in a channel. Not the angler's. His conscience would not carry it.",
      things = {
        { name = "the eel", description = "One, thick as your wrist, coiled in the bottom of the basket. It is not trapped. The funnel is wide enough to leave by and it has been in and out all morning. It simply likes the basket. The tide of its life has brought it a house." },
      },
      actions = {
        { "Lift it out of the water", say "The eel pours out through the funnel with no change of expression, goes round in a circle, and is back inside before you have set the basket down again." },
      } },
    { name = "a heron's fishing place",
      description = "A flat stone at the edge of open water, white with droppings and scattered with scales. The heron from the island comes here to eat. It is on the island to think.",
      things = {
        { name = "a pile of fish bones", description = "Stacked, not scattered: small spines laid across each other like kindling. It is a tidy bird. There is something about a neat heap of bones that makes you count your own." },
      } },
    { name = "the open water",
      description = "Beyond the last reeds, the lake again, grey and level, showing its other weather. A line of ducks crosses it. A line of ducks crosses under them, feet to feet.",
      things = {
        { name = "a great crested grebe", description = "A slim bird with a ruff and two black horns, shaking its head at another exactly like it. They rise up breast to breast with weed in their beaks and paddle on the spot. It is a dance. It is going on, at the same time, upside down beneath them, and that pair is slightly out of step." },
        { name = "the ripples", description = "Something large turned over out there a moment ago. The rings are still spreading. They reach the reeds, and the reeds stop whispering until the last one has gone through." },
      } },

    { name = "a bittern",
      icon = "v",
      description = "Somewhere in the reeds, ten feet from you, there is a bird the size of a goose. You will not see it. It stands with its beak up, striped like reed and swaying with the reed, and it has not been spotted since the old king's time. You know it is there because it booms.",
      actions = {
        { "Wait for the boom", say "It comes at dusk: a low hollow note, like a man blowing across a jug in an empty hall. You feel it more than hear it. It is the lowest sound any bird makes, and for a second it is in step with the mumbling of the wood behind you, and the two agree." },
        { "Look for it", say "You stare into the reeds until they swim. One of them blinks. You look straight at where it was. Reeds." },
      } },

    { name = "a duck decoy",
      description = "A tunnel of hoops and netting leading off a pool, narrowing to a bag. It was built to catch duck for the Baron's table and has not caught one in thirty years.",
      things = {
        { name = "the netting", description = "Rotten, full of holes the size of a duck. The decoy man patches it every spring in a way that leaves the holes." },
        { name = "the decoy dog's kennel", description = "A barrel on its side. The dog was meant to lure the birds up the pipe. It lies in the barrel with its chin on its paws and watches them paddle past the entrance, and they nod to it." },
      } },

    { name = "a dragonfly", icon = "ʚ",
      description = "As long as your hand, blue-green, on a reed. It has eyes like two helmets and sees every direction at once. It takes off, hangs, darts, hangs: a creature that goes about the air in straight lines and makes all its turnings square." },
  },

  exits = {
    { to = "lake_shore", description = "Back along the boards to the shingle, the stool, and solid ground." },
  },
}
