space {
  id = "glacier",
  region = "grumbles",
  name = "The Slow River",
  description = "Between Old Grumble and the next mountain along lies a river of ice a mile wide, grey on top, blue in the cracks, coming down from the high snow at the rate of one foot a year. It creaks. It has been on its way to the valley since before there was a valley, and it will get there.",
  palette = { bg = "#0a0e14", text = "#d0dae4", dim = "#62728a", accent = "#8ecbf0", border = "#2e4a68" },
  ambience = {
    snow { glyphs = "·∙˙", color = "#8fa2b8", rate = 0.4, speed = 0.4 },
    shimmer { color = "#8ecbf0", strength = 0.12 },
  },

  things = {
    { name = "the ice",
      description = "Rough and dirty on the surface, like old bread. Then you look into a crack and it is another substance: clear, deep and blue, with the light going down into it and not coming back.",
      things = {
        { name = "the layers",
          description = "In the wall of a crack you can see them, thin as pages, a winter each. Some are thick. Some are grey with dust from a dry year. You count back with a finger until your finger is cold, and you are still nowhere near anything.",
          things = {
            { name = "a black line", description = "One layer, as thin as a pencil stroke, runs dark through the whole glacier at the height of your knee. A year when something burned, a long way off, and the smoke came this far. Nobody now knows what." },
            { name = "nine thick layers together", description = "Each as deep as your hand, one on another. Nine winters with no summer between them. Below those the pages go back to ordinary, as if nothing had happened." },
          } },
        { name = "a leaf in the ice", description = "An oak leaf, brown, a foot down, every vein of it clear. There are no oaks for three leagues. It blew up here on some autumn afternoon before Aldmoor had a wall, and has not been allowed to rot." },
        { name = "the blue",
          key = "glacier blue",
          wonder = true,
          description = "Down in the cracks, past where the surface light gives out, the ice is a colour you have not met before. It is not the blue of sky or water. {magic}It is what is left of daylight after it has gone through a thousand winters{/} and had everything else taken out. You look into it for longer than you meant to, and when you look up the whole world is briefly orange." },
      },
      actions = {
        { "Listen to it", say "A creak. A long ticking, as of a cooling stove. Then from far up the valley a single deep crack that you feel in the soles of your feet. The glacier has moved. You missed it. It was about the width of a hair." },
      } },
    { name = "a crevasse",
      key = "crevasse",
      description = "A crack across the ice as wide as a doorway, with clean blue walls going down to where they pinch together in the dark. Cold comes up out of it like breath.",
      variants = {
        { when = flag "gr_crevasse_found",
          description = "A crack across the ice as wide as a doorway. Now that you know to look, there is a ledge down the left wall, a sort of stair, and at the bottom a pale glow that is not daylight. Somebody, some time, cut those steps." },
      },
      actions = {
        { "Look down it", when = no(flag "gr_crevasse_found"), set "gr_crevasse_found",
          say "You lie on your front and put your head over. Blue walls. A long way down they narrow. And there, where it should be black, the ice is lit from underneath, a soft steady glow. Your eyes adjust, and you make out notches in the left-hand wall, regular, going down. They are worn. They are steps." },
        { "Drop a snowball", say "It falls for a satisfying while, hits a ledge, and breaks into a puff. The puff hangs in the blue, lit from below, and drifts off sideways down some passage you cannot see." },
      } },
    { name = "the Survey's stakes",
      description = "A row of numbered poles driven into the ice straight across the glacier, with a matching row on the rock at either side. The ones on the ice have drifted downhill, the middle furthest. The Survey measures the bend every spring.",
      things = {
        { name = "stake number 12", description = "Leaning. Its tag reads: {i}One foot per annum. Has been cautioned.{/}" },
        { name = "a summons, in a tin", description = "Nailed to the stake: a notice from the Council of Aldmoor requiring the glacier to appear and explain an obstruction of the upper valley. It is dated ninety years ago. A later hand has added {i}defendant on its way{/}." },
      } },
    { name = "a picnic in the ice",
      description = "Six feet down, laid out flat as it was left: a white cloth, a wicker hamper, a dark bottle on its side and a cake under a glass dome. An expedition stopped here for lunch two hundred years ago, and a storm came, and they went down in a hurry. The glacier closed over it and has been carrying it since.",
      things = {
        { name = "the cake", description = "Fruit, by the look, with a slice out of it. The knife is still in. You can read the maker's name on the dome. The shop is still trading, in Aldmoor, and has been told." },
        { name = "the bottle", description = "The cork is in. The Survey has worked out that the picnic will come out at the snout in forty-one years, and there is a waiting list in Nobles' Row for a glass." },
        { name = "a dropped fork", description = "A little way from the cloth, tines down. Whoever it was did not go back for it." },
      } },
    { name = "a boulder riding the ice",
      description = "A block of granite as big as a hay cart, sitting on a pedestal of ice it has shaded from the sun. It fell from the cliffs upstream some centuries back and has been travelling ever since, at no charge.",
      things = {
        { name = "a goat on the boulder", description = "One of Ma Scree's, standing on the very top with the air of a figurehead. It has no way up that you can see and no visible plan for getting down. It is content. It is going to the valley, eventually, and so is the rock." },
        { name = "the pedestal", description = "A stalk of ice, waist high, holding up several tons. It melts a little thinner every summer. One day the boulder will step down. The goat, you feel, will not be on it that day, and will not have hurried." },
      } },
    { name = "a moulin",
      description = "A round hole in the ice, smooth as the inside of a jug, with a stream of meltwater running across the surface and pouring into it. The water goes down turning. A sound comes back up.",
      things = {
        { name = "the sound", description = "A low wavering note, with the water's rhythm on top of it. Herders call these holes the glacier's flutes and say it plays a different one each summer. This year's is rather mournful, in three time." },
      },
      actions = {
        { "Hum along", say "You find the note. For a few bars the two of you have something going. Then the stream shifts a finger's width and the key changes under you, and you are left holding the old one alone." },
      } },
    { name = "the meltwater stream",
      description = "It runs in a blue groove it has melted for itself, with no bank, no bed and no mud, only ice. The water is the colour of thin milk from the rock flour in it.",
      things = {
        { name = "an ice flea", description = "A black speck on the wet ice, then a dozen, then you see that the grey of the surface is mostly them. They live on the glacier and nowhere else and are killed by the warmth of a hand. They hop. Up here it counts as wildlife." },
      } },
    { name = "the snout",
      description = "Downhill the glacier ends in a dirty wall of ice forty feet high, dripping, with a cave at the bottom and a grey river coming out of it. This is where it gives things back.",
      things = {
        { name = "the shelf of returns",
          description = "A plank on two stones, set up by the monks, for what the ice lets go of. Each object has a slate beside it.",
          things = {
            { name = "a hat", description = "Felt, three-cornered, a hundred and sixty years out of fashion. {i}Lost on the upper snowfield. Returned with the glacier's compliments.{/}" },
            { name = "an ice axe", description = "The shaft has gone. The head is bright. {i}Belongs to an expedition. The expedition is still expected, a piece at a time.{/}" },
            { name = "a love letter", description = "The ink has run to a blue cloud with one word left legible in the middle of it: {i}always{/}. The slate says only {i}Unclaimed{/}. The monks keep it out of the rain." },
          } },
        { name = "the moraine", description = "A bank of rubble the glacier has pushed ahead of itself like crumbs off a table. Every stone in it has been carried down from some particular place on the mountain, and a dwarf, they say, could tell you which." },
      } },
    { name = "a snow bridge",
      description = "A crust of old snow lying across a crack, looking exactly like the ground. A stick has been pushed into it with a rag on the end. The rag is the only thing that is a different colour.",
      actions = {
        { "Test it with a foot", say "It holds your toe. It holds your heel. It makes a small noise, like someone setting down a cup. You take the foot back, and thank the stick." },
      } },
    { name = "a ptarmigan",
      description = "A plump bird in a coat halfway between seasons, white with brown coming through. It is sitting on the ice, sure that you cannot see it. On snow you could not. On this particular patch of grey it shows up like a bun on a slate." },
    { name = "the high snow",
      description = "Up the valley the ice goes back and back, getting whiter, into a basin under the peaks where it is always snowing a little. That is where it is made. It takes four hundred years for a flake that lands up there to walk down to where you are standing." },
    { name = "a sledge",
      description = "On its side at the edge of the ice, runners up: ash, lashed with hide, with a dwarf rune burnt into the crossbar. It was a good sledge. One runner is split. It was left where it broke, by people who were not coming back for anything they could do without.",
      things = {
        { name = "the load", description = "Still lashed on. Lamp oil, in stone bottles, a dozen. And a crate of something packed in straw: you lift a corner. Glass chimneys, for lamps, each wrapped separately. They have ridden the ice for longer than you have been alive and not one is cracked." },
        { name = "the trace", description = "A leather harness for hauling, made for a short, wide chest. It has been bitten through and mended with wire, and bitten through again." },
      } },
    { name = "ice worms",
      description = "In a patch of old snow at the glacier's edge, black threads no longer than an eyelash, thousands of them, moving. They live in the ice and nowhere else. Warm one in your hand and it melts, entirely, like a snowflake.",
      actions = {
        { "Leave them be", say "You keep your hands in your pockets. They go on with whatever it is. It is a hard living, and they have a whole glacier to do it in, and you were never going to be any help." },
      } },
    { name = "a blue pool",
      description = "On the surface of the ice, a basin of meltwater a yard deep and so blue that it seems to be lit from below. The bottom is white. There is a single pebble in it, black, which has melted itself a neat round socket and is sitting in it.",
      things = {
        { name = "the pebble", description = "It takes the sun and warms, and sinks a little further every day. By your reckoning it will be through the glacier in four hundred years and out at the snout in four hundred more. It is the only thing on the ice that is going faster than the ice." },
      },
      actions = {
        { "Drink from it", say "You cup your hands. It is so cold that it has no taste at all for the first swallow and then tastes of the colour. Your teeth ring. You have drunk snow that fell on somebody's great grandfather." },
      } },
  },

  exits = {
    { to = "high_col", description = "Back along the rock to the saddle and the signpost." },
    { to = "ice_cave", label = "The steps in the crevasse",
      description = "Down the notches in the blue wall, towards the light that should not be there.",
      requires = flag "gr_crevasse_found", hidden = true },
  },
}

space {
  id = "ice_cave",
  region = "grumbles",
  secret = true,
  name = "Under the Ice",
  description = "The steps come out in a hall inside the glacier: a long vault of blue ice, smooth as glass, lit by the day coming down through a hundred feet of frozen winters. It is cold beyond anything on the surface, and perfectly still, and it has been furnished. There are pillars, a table and a seat. Something lived here for nine years and left it tidy.",
  palette = { bg = "#08101a", text = "#cfe0f0", dim = "#5a7090", accent = "#9ad8ff", border = "#284a70" },
  ambience = {
    shimmer { color = "#9ad8ff", strength = 0.25 },
    snow { glyphs = "·˙", color = "#8ab0d0", rate = 0.1, speed = 0.1 },
  },

  things = {
    { name = "the ice seat",
      key = "ice seat",
      icon = "♔",
      description = "A chair cut from one block, high-backed, with arms. No frost has formed on it, though it has formed on everything else. On the seat, where you would put down a hat on coming indoors, lies a crown.",
      variants = {
        { when = flag "gr_crown_taken",
          description = "A chair cut from one block, high-backed, with arms. On the seat there is a clear ring, the width of a head, where no frost has formed. You took what was lying there. The chair has not changed its expression. It is a chair made of ice. You find you are apologising to it anyway." },
      },
      things = {
        { name = "the crown on the seat",
          key = "crown in place",
          visible_if = no(flag "gr_crown_taken"),
          description = "A circlet of clear ice with nine points. The light in the hall bends towards it a little. This is the Crown of the Long Winter, which is in every nursery rhyme in the kingdom, usually rhymed with {i}splinter{/}. The rhymes say the winter wore it for nine years and then went away north. They do not say it left the crown behind, like a man leaving his keys.",
          actions = {
            { "Take the crown", once = true, give "winter_crown", set "gr_crown_taken", fx("flash", "#9ad8ff"),
              say "You wrap your sleeve round your hand and lift it. It weighs nothing. The cold goes through the sleeve, through the hand and up to the elbow, and stops there, as if told to. Every frost flower on the walls turns a little towards you. Then they turn back. {gold}The Crown of the Long Winter{/}. You are holding the weather of nine years, and you have nowhere to put it but your pack, next to the sandwiches." },
          } },
        { name = "the arms of the seat", description = "Worn smooth and slightly hollow, the way stone steps are. Ice does not wear. Something sat here, drumming its fingers, for a long time." },
      },
      actions = {
        { "Sit in it", say "You lower yourself an inch at a time. It is like sitting on the idea of January. You last for a count of four, which you believe is the record for anything with blood in it." },
      } },
    { name = "the frost flowers",
      key = "frost flowers",
      wonder = true,
      description = "The walls are covered in them: ferns, plumes of rime, stars with six arms and stars with twelve, grown out from the ice a crystal at a time in air that has never moved. {magic}There are nine years of them, and no two alike, and each one is finished.{/} Whatever sat in that seat had nothing to do and all the frost in the world to do it with, and did this.",
      things = {
        { name = "a fern as tall as you", description = "Every frond has fronds. You lean close and they have fronds as well. Your breath reaches it, and one tip, the very last and smallest, goes soft. You step back and hold your breath until it sets again." },
        { name = "a plain patch", description = "One square of wall with nothing on it but a single small six-armed star, a little crooked. It is the first one. You can tell. Whoever made the rest left this where it was." },
      } },
    { name = "the table of ice",
      description = "A slab on two blocks, set for one. A plate, a cup and a knife, all ice, all clear. Nothing has ever been on the plate.",
      things = {
        { name = "the cup", description = "There is a little water in it, liquid, though it is cold enough in here to split stone. It has a skin of frost across the top, with a hole in the middle the size of a lip." },
        { name = "the second chair", description = "There is not one. There is a place across the table where the floor is roughened, as if one had been started, several times, and smoothed away again." },
      } },
    { name = "the pillars",
      description = "Twelve, down both sides of the hall, where meltwater once fell from the roof and froze as it fell. Each is a waterfall standing still. You can see the current in them.",
      things = {
        { name = "a fish in a pillar", description = "A small trout, a yard up, head down, in the middle of a leap it began some centuries ago. Its eye is bright. You have the strong impression that it is merely waiting, and has not given up on the pool." },
      } },
    { name = "the roof",
      description = "A hundred feet of ice with the sun on top of it. The light comes through blue and without a source, so that nothing in here has a shadow, including you.",
      things = {
        { name = "the picnic, from below", description = "Up in the roof, dark against the glow: a square of cloth, a hamper, a bottle. You are looking at the underside of somebody's lunch. A fork is nearer to you than the rest, tines first." },
      } },
    { name = "the breaths",
      key = "old breaths",
      wonder = true,
      description = "Your breath comes out white and does not go away. It hangs in front of your face, a small cloud, and stays where you left it when you walk on. Then you notice the others. Further down the hall there are more, at about head height, quite still. {magic}Everyone who has ever stood in here has left their breathing behind them.{/} There are not many. One is very low, as of a child or a dwarf. One, near the seat, is long and thin, and looks like a sigh.",
      actions = {
        { "Walk through one", say "It is not cold. That is what surprises you. For a moment there is the smell of pipe smoke and wet wool, and the certainty of being somebody rather tired who has come a long way to see this. Then you are through. You look back. You have not disturbed it." },
      } },
    { name = "the floor",
      description = "Clear ice, and under it more ice, and a long way under that the dark shape of the rock. You are standing on a window. You slide one foot forward and it goes rather further than you asked.",
      actions = {
        { "Slide", say "You take a run. You go the length of the hall on your boots with your arms out, past the pillars and the table and the seat, in complete silence, and fetch up against the far wall. It is the most fun you have had as an adventurer, and it will not go in the ballad either." },
      } },
    { name = "a door of ice",
      description = "At the far end, an arch filled in with a single clear sheet. Behind it a passage goes on north, under the glacier, uphill. The sheet has no handle and no hinge. It froze shut behind whoever went out that way, and they did not come back for the crown." },
    { name = "a snowflake, falling",
      description = "One, in the middle of the hall, coming down from nowhere through air that has no weather in it. It takes about a minute to reach the floor. When it lands another starts, from the same place. You watch three. It may be a clock." },
    { name = "a frozen wave",
      description = "Along one wall the ice has been pushed up into a curl, twice your height, with a smooth blue hollow under the lip. It is a wave, caught at the top of its rise. It has been about to break for as long as there has been a cave.",
      actions = {
        { "Stand under it", say "You step into the hollow. The light comes through the curl green and blue and falls on you in bars. You hold your breath, which is foolish. It did not break for the winter that sat here nine years, and it is not going to break for you." },
      } },
    { name = "things in the ice",
      description = "Set in the walls like flies in amber, at different depths. The deeper, the older.",
      things = {
        { name = "a leaf", description = "A hand's breadth in: an oak leaf, green. It fell in a summer before the Long Winter and has not been told that summer ended." },
        { name = "a mitten", description = "An arm's length in. Red wool, child's size, the thumb sticking up. You have seen a red mitten, or will. They do seem to get about." },
        { name = "a shape, deep", description = "Far back, where the blue goes to black, something long and pale lies along the grain of the ice. It may be a fallen tree. It is the length of a tree. It has what might be a branch, bent, with smaller branches at the end of it, five." },
      },
      actions = {
        { "Breathe on the wall", say "Your breath freezes on the ice in a white flower and hides what is behind. By the time it clears you have decided that it was a tree." },
      } },
    { name = "an ice organ",
      description = "Where meltwater has dripped for centuries from the roof, a rank of icicles hangs, graded from the thickness of your wrist to that of a straw. The air moving through the cave draws a note from each. It is playing now, very quietly, a chord with no tune.",
      actions = {
        { "Tap the smallest", say "One clear high note, like a glass rung with a spoon. It goes off down the hall and does not come back. Somewhere under the ice it is still travelling. You have added a note to the winter's music and you tiptoe away from it." },
      } },
  },

  exits = {
    { to = "glacier", label = "The steps up", description = "Up the blue wall, a notch at a time, to wind and dirt and ordinary cold." },
  },
}
