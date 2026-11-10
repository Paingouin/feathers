space {
  id = "old_sluice",
  region = "undertown",
  name = "The Old Sluice",
  description = "The upstream end of the Drain: a round brick chamber where five tunnels meet, with an iron wheel as tall as a man in the middle of it and a hut built against the wall. Somebody lives down here. There is a doormat.",
  ambience = {
    drip { glyphs = "⠁⠂⠄⡀", color = "#4f8f7a", rate = 0.4 },
    steam { glyphs = "∙°˙", color = "#5a7068", rate = 0.2 },
  },

  things = {
    { name = "the Inspector",
      icon = "☺",
      description = "Mr Ambrose Culvert, Inspector of Drains to the Aldmoor Corporation, in waders and a wing collar. He came down to inspect forty years ago and has not finished. He files a report every quarter, upward, through a pipe.",
      things = {
        { name = "his waders", description = "Patched at both knees with pieces of other waders. He is on his fifth pair and counts them as one, for the accounts." },
        { name = "his notebook", description = "Waterproof covers, a pencil on a string. The current page is headed {i}Damp, continued{/}." },
      },
      actions = {
        { "Ask how the inspection is going", say "\"Well,\" he says. \"Well. One has reached the letter D.\" D for drain? \"D for {i}damp{/}. It is the general heading.\"" },
        { "Ask about the wheel", when = no(flag "ut_wheel_known"), set "ut_wheel_known",
          say "\"The great valve. It empties the lower basin into the Cistern. One has never turned it. It is not on the schedule until the letter V.\" He looks at it wistfully. \"If a member of the public were to turn it, one would be obliged to note that in the report. One would not be obliged to stop them.\" He coughs. \"It goes left.\"" },
        { "Ask about the wheel", say "\"Left,\" he says, looking carefully at something else." },
      } },

    { name = "the wheel",
      key = "sluice wheel",
      description = "Cast iron, six spokes, green with damp, with an arrow on the rim and a word in letters older than Aldmoor's.",
      variants = {
        { when = flag "ut_basin_drained",
          description = "It has gone round three times and stopped against a peg. Under the walkway the basin is a pit of wet stone, steaming slightly." },
      },
      things = {
        { name = "the snails",
          description = "A colony, on the spokes. The Inspector has numbered them in white paint. Number 14 is the adventurous one, and is three feet up." },
      },
      actions = {
        { "Try the wheel", when = no(flag "ut_wheel_known"),
          say "You heave. Nothing. It is seized, or you are pushing the wrong way, or both. The Inspector watches with professional interest and writes something down." },
        { "Turn the wheel", when = all { flag "ut_wheel_known", no(flag "ut_basin_drained") }, set "ut_basin_drained", fx "shake",
          say "Left. It does not move, and then it has always been moving. Three turns. Under your feet something very large opens its throat. The black water in the basin begins to go round, and down, and is gone, with a noise that the Inspector takes down phonetically." },
      } },

    { name = "the lower basin",
      key = "lower basin",
      description = "A square pool below the walkway, black, deep and railed. When the lantern swings, things glint at the bottom. It has been collecting since before the town.",
      things = {
        { name = "the glints", description = "Green, mostly. One long one. One round one. You could not say how far down." },
      },
      variants = {
        { when = flag "ut_basin_drained",
          name = "the drained basin",
          description = "A stone pit ten feet deep, with a stair down the side. Its floor is paved with four centuries of what sank. In the far wall, level with where the surface was, there is a niche that the water kept shut.",
          things = {
            { name = "a sheet of green coins",
              description = "Aldmoor coppers, fused together. Every king nobody liked, face down." },
            { name = "an anchor",
              description = "Iron, for a ship. You are three miles from the sea and a hundred feet under a market. Somebody had a day." },
            { name = "a drowned bell",
              description = "Bronze, on its side, full of silt. The Inspector says the Temple Quarter reported it stolen in his first year, and he filed it under D, for {i}down here somewhere{/}." },
            { name = "a niche in the wall",
              key = "horn niche",
              description = "Arched, dry inside, lined with lead. Something lies in it on a rotted cushion: curved, pale, banded with dark metal.",
              variants = {
                { when = item "muster_horn",
                  description = "Arched, dry inside, lined with lead. A rotted cushion, with a curve pressed into it." },
              },
              actions = {
                { "Take what is in the niche", once = true, give "muster_horn", fx "flash",
                  say "A horn. Ivory, or something older than ivory, bound in black iron, with a mouthpiece worn by lips. There are letters cut round the bell, and the Inspector reads them out without being asked: {i}BLOW, AND THEY WILL COME.{/} \"The Horn of the Last Muster,\" he says. \"It is in the D's. Under {i}do not{/}.\" {gold}It is yours.{/} It is very light. You carry it as you would carry a full cup." },
              } },
          } },
      } },

    { name = "the Inspector's hut",
      description = "Tarred planks, a stovepipe, and a window box of something white that grows without light.",
      things = {
        { name = "the doormat", description = "{i}WIPE{/}." },
        { name = "his reports",
          description = "Forty years of quarterly reports, in carbon copy, shelved by year. Each one ends: {i}Inspection continues.{/}" },
        { name = "the speaking pipe",
          description = "Lead, going up through the roof to the Corporation offices. He posts his reports up it. Once, in his second year, something came down: a memorandum asking him to use less paper." },
        { name = "a toasting fork",
          description = "By the stove, with a slice on it. That accounts for the smell. The bread comes down the Market main on Wednesdays, he says, and does not explain." },
        { name = "the window box",
          description = "Cave cress, white and crisp. He says it is very good with eel." },
      } },

    { name = "the five tunnels",
      description = "They come in round the chamber like the spokes of the wheel, each with an enamel plate.",
      things = {
        { name = "the Nobles' Row main", description = "It runs clear and smells of lavender water." },
        { name = "the Market main", description = "It runs brown, with peel." },
        { name = "the Temple main", description = "It runs slowly and is carrying, today, a single sock, which is travelling with purpose." },
        { name = "the Castle main", description = "Dry, but for a trickle. Every so often it delivers, with a rush, something from the garderobe. The Inspector notes the time." },
        { name = "the fifth tunnel",
          description = "It has no plate. It comes in from below, under the others, and nothing has ever come out of it but slow cold air. The Inspector has it under D." },
      } },

    { name = "a brass depth gauge",
      description = "A dial on the wall with a float chain. It has three positions: {i}SCANT{/}, {i}AMPLE{/}, and {i}RUN{/}.",
      variants = {
        { when = flag "ut_basin_drained",
          description = "A dial on the wall with a float chain. The needle has gone past {i}SCANT{/}, off the scale, and is resting on the maker's name." },
      } },

    { name = "the walkway",
      description = "Iron grating round the basin, with a rail. The rail is polished on top by forty years of one man's left hand, going round, clockwise, every morning." },

    { name = "an eel trap",
      description = "Wicker, on a rope, in the outflow. Supper. He checks it on the hour and enters the result." },

    { name = "a lantern on a pole",
      description = "For looking up the tunnels. The glass is green, so that he can tell his own light from anything else's. He does not say what else's." },
  },

  exits = {
    { to = "great_drain", description = "Downstream, with the water, back to the main tunnel." },
  },
}
