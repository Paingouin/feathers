space {
  id = "wood_edge",
  region = "mumblewood",
  name = "The Edge of the Mumblewood",
  description = "The fields stop here and the trees start, all at once, like a crowd that has decided. The millstream goes in ahead of you, uphill, not waiting.",

  things = {
    { name = "a warning sign",
      description = "{b}BEWARE.{/} Below that, the list of what to beware of has been eaten. By something on the list, you assume.",
      things = {
        { name = "the tooth marks", description = "Small, numerous and thorough. A committee." },
      },
      actions = {
        { "Read the back", say "On the back: {whisper}BEWARE OF THE FRONT{/}." },
      } },
    { name = "the first tree",
      description = "An ash, standing a little forward of the others. It was pushed.",
      things = {
        { name = "its bark", description = "Furrowed, in the way of a brow." },
      },
      actions = {
        { "Listen to it", say "A long low mutter. You catch {whisper}...told them it would rain...{/} and then it notices you and becomes, pointedly, wind." },
      } },
    { name = "a stile",
      description = "Three planks over a fence that ended years ago on both sides. People climb it anyway. It would be rude not to.",
      actions = {
        { "Climb over it", say "You climb over. You are now on the other side of nothing, and feel you have done it properly." },
        { "Walk around it", say "You walk around. A blackbird stops singing. You go back and climb." },
      } },
    { name = "the brambles",
      description = "Blackberries, at exactly the height of your face, guarded at exactly the height of everything else.",
      things = {
        { name = "a snagged scrap of cloak", description = "Good red wool, torn off somebody in a hurry. A hero's cloak. The brambles have kept it as a reference." },
      },
      actions = {
        { "Pick a blackberry", say "Sweet, warm, and paid for in full by your sleeve." },
      } },
    { name = "the millstream",
      icon = "≈",
      description = "It comes down from the village and goes up into the wood, and at this point on its journey nobody has yet explained to it which of those is unusual.",
      things = {
        { name = "a stickleback", description = "An inch of fish with three spines and a temper, holding its place against the current by swimming downhill as hard as it can." },
        { name = "a paper boat",
          description = "Folded from a page of sums and launched by some child in Greenhollow. It is sailing steadily uphill into the trees. The sums on it were wrong, which may be why.",
          actions = {
            { "Blow on it", say "You give it a breath of wind. It does not need it. It goes on up the stream at its own pace and round a root, out of sight, on business." },
          } },
        { name = "the stepping stones", description = "Five, flat, and each a little further apart than the last. Whoever laid them was losing patience." },
      },
      actions = {
        { "Drink from it", say "Cold, sweet, and faintly floury. It turned a mill wheel on the way here and has not got over it." },
      } },
    { name = "the second tree",
      description = "A beech, a pace behind the ash, keeping well out of it.",
      things = {
        { name = "a hole at the foot",
          description = "Round, dry, and lined with moss.",
          things = {
            { name = "a hedgehog", icon = "h",
              description = "Asleep in a ball, breathing slowly. One eye opens, takes you in, and shuts. It has seen adventurers before. They go in. Some of them come out.",
              actions = {
                { "Apologise for waking it", say "It was not awake. It is now. It says nothing, in a way that carries." },
              } },
          } },
        { name = "beech mast", description = "Last year's husks, ankle deep, each one opened in four like a small wooden flower. Something has been through them all and found them wanting." },
      } },
    { name = "a returning adventurer",
      icon = "☺",
      description = "A man of about your age sits on a log, picking burrs out of his hose one at a time and laying them in a row. He went in yesterday, with a sword and a plan. He has come out with neither, and seems lighter for it.",
      things = {
        { name = "the row of burrs", description = "Forty-one so far. He is treating it as a count of the wood's opinions of him." },
        { name = "his empty scabbard", description = "\"I lent it to a hermit,\" he says. \"To cut bread. He talked for three hours and I left without it. I would do the same again.\"" },
        { name = "his plan",
          description = "A sheet of paper, much folded. {i}1. Enter wood. 2. Find treasure. 3. Leave wood.{/} He has crossed out the second line and written {i}be found by it{/}, and then crossed that out too." },
      },
      actions = {
        { "Ask what is in there", say "\"Trees,\" he says. \"A great many. They talk about you. It is not unkind, mostly.\" He pulls a burr. \"There is a lake. Do not look in the lake if you are happy with how things are.\"" },
        { "Ask for advice", say "\"Take the stile,\" he says. \"I walked round it, going in. I think that is where it started to go wrong.\"" },
      } },
    { name = "a patch of nettles",
      description = "Waist high and in excellent health, on both sides of the path, leaning in.",
      things = {
        { name = "a dock leaf", description = "Growing right beside the nettles, as dock always does. It is the one arrangement in the Mumblewood that is entirely on your side." },
        { name = "a red admiral", description = "A butterfly, basking on the worst of the nettles with its wings open, unstung. It knows something you do not." },
      },
      actions = {
        { "Brush past carefully", say "You are very careful. It makes no difference at all. You take the dock leaf, and the dock leaf, to its credit, helps." },
      } },
    { name = "a boundary stone",
      description = "Knee high, mossed over, with a letter cut on each face. On the field side: {b}G{/}, for Greenhollow. On the wood side the mason started a letter, stopped, and went home.",
      things = {
        { name = "the unfinished letter", description = "One upright stroke and the start of a curve. He was going to carve whose wood this was. It occurred to him partway through that he did not know, and that something might." },
        { name = "a snail", description = "Halfway up the stone, on the field side, heading for the top. At its present speed it will change parishes on Thursday." },
      } },
    { name = "the foxgloves",
      description = "A stand of them along the fence that isn't there: tall purple spires, every bell spotted inside like a throat.",
      things = {
        { name = "a bumblebee", description = "It backs out of a bell, dusted yellow, and goes straight into the next one up. It is working the spire floor by floor, like a rent collector." },
      },
      actions = {
        { "Put a bell on your finger", say "It fits. You have a small purple hat on one finger. You make it bow to the bee. The bee does not acknowledge it, and you take it off again, having had the best minute of your day." },
      } },
    { name = "a cuckoo",
      icon = "v",
      description = "Somewhere in the first trees, saying its own name, over and over, in the voice of somebody who has forgotten what they came into the room for.",
      actions = {
        { "Answer it", say "\"Cuckoo,\" you say. A silence. Then, from further in, a second cuckoo, and a third. You have started something, and you walk on before you find out what." },
      } },
    { name = "a woodcutter's notice",
      description = "A board on a post, in the Council's lettering: {b}NO FELLING, BY ORDER.{/} Below it, in chalk, in a countryman's hand: {i}They heard you the first time.{/}",
      things = {
        { name = "an old stump beside the post", description = "The only stump at the edge of the wood, grey and soft with age. Whoever cut it did not cut a second." },
      } },
    { name = "a rabbit warren",
      description = "A bank full of holes under the hawthorn, and the sense of a great many ears just out of sight.",
      things = {
        { name = "a sentry rabbit", description = "Upright at the highest hole. It thumps once when you look at it. Somewhere below, a hundred and forty rabbits stop what they are doing." },
        { name = "the hawthorn", description = "Bent double by the wind off the fields, with a thrush's nest in the crook, and one white blossom out of season that nobody has told." },
      } },

    { name = "a charcoal burner's clamp",
      description = "A dome of turf the size of a haystack, just inside the trees, smoking from a dozen small holes. It has to be watched for five days and nights without sleep. The man watching it is asleep.",
      things = {
        { name = "the charcoal burner", description = "On a one-legged stool, so that if he nods off he falls over and wakes. He has learned to sleep balanced. His dog watches the clamp for him and nudges the stool at need." },
        { name = "the smoke holes", description = "Blue smoke means well. White means too fast. One of them is giving out a thin green, and the dog is looking at it with its head on one side." },
        { name = "a sack of charcoal", description = "Last week's. Black, light, ringing like glass when the pieces touch. Each stick still has the grain of the branch it was, and the knots, and where a bird sat." },
      },
      actions = {
        { "Nudge the stool", say "He goes over like a felled tree, rolls, and is on his feet with a spade before his eyes are open. He looks at the clamp. He looks at you. \"Green,\" he says, and plugs the hole with a turf. \"Wood's talking again. It gets in the smoke.\" He sits back down and is asleep before the stool has stopped rocking." },
      } },

    { name = "a gate with no fence",
      description = "A five-barred gate standing alone at the wood's edge, shut and latched, with open grass on either side of it. A path leads to it and goes on beyond.",
      things = {
        { name = "the latch", description = "Iron, oiled, and worn bright. Everybody opens the gate and goes through and closes it after them. Nobody walks round. You ask a passing farmer why. He looks at you as if you had asked why he wears his hat on his head." },
        { name = "the top bar", description = "Carved with initials, in pairs, with hearts. It is where Greenhollow does its courting, there being nowhere else that feels like going through something." },
      },
      actions = {
        { "Walk round it", say "You step off the path and go round the post. Nothing happens. The wood mumbles. But for the next hundred paces you have the distinct sense of having come in without knocking." },
      } },

    { name = "a tree with a face",
      description = "An ash, a little way in, with two knots and a split that make a face if you want one. The village children call it Old Disapproval and dare each other to touch its nose.",
      actions = {
        { "Touch its nose", say "Rough bark, a little damp. You have done it. Somewhere behind you a small voice says \"He did it,\" with awe, and there is a noise of several people running away through bracken." },
      } },
  },

  exits = {
    { to = "mill_lane", description = "Downstream, which here means downhill, back to flour and a cat." },
    { to = "forest_path" },
  },
}
