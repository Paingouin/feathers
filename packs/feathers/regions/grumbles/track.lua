space {
  id = "goat_track",
  region = "grumbles",
  name = "The Goat Track",
  description = "Above the lake the pines give out and the path is handed over to goats, who have laid it out to suit themselves. It goes up by way of every ledge with a view. Ahead, the mountains are having a low conversation.",
  ambience = {
    dust { glyphs = "·˙", color = "#6a7484", rate = 0.3, speed = 0.9 },
  },

  things = {
    { name = "a goat",
      icon = "g",
      description = "It stands on a ledge the width of a book, chewing, and watches you use both hands.",
      things = {
        { name = "its bell", description = "Tin, on a leather strap. It makes the sound of somewhere further up." },
        { name = "its beard", description = "Longer than yours. It knows." },
      },
      actions = {
        { "Stare back", say "You lose. It was never in doubt, and the goat has the decency not to make anything of it." },
      } },
    { name = "a cairn",
      description = "A heap of stones built by travellers, each adding one for luck on the way up. Somebody has also left a note.",
      things = {
        { name = "the note", description = "Under the top stone: {i}Took one. Needed the luck. Will bring it back.{/} There is no sign that they did." },
      },
      actions = {
        { "Add a stone", say "You add a stone. You feel luckier at once, which is the whole mechanism." },
      } },
    { name = "a surveyor's stake",
      description = "Hammered in by the Royal Survey. The tag reads: {i}Mountain. Height: yes.{/}" },
    { name = "the mountains",
      description = "Five of them, grey and close together, like aldermen. The tall one in the middle is Old Grumble. Now and then one of them makes a long low noise, and after a decent interval another answers.",
      actions = {
        { "Listen", say "A long low noise, as of furniture being moved three valleys off. The goat does not look up. Whatever is being said, it is not news." },
      } },
    { name = "the path",
      description = "A hand wide, trodden pale, and never once straight. It was not made for getting anywhere. It was made for visiting every tuft worth eating between here and the snow, in order of preference.",
      things = {
        { name = "a hoofprint", description = "Two neat toes pressed in the mud at the very edge, over the drop, where there was a perfectly good middle. The goat chose the edge. It was showing the mountain who was in charge." },
        { name = "a bootprint", description = "Yours, from a moment ago, in the perfectly good middle. Beside the hoofprint it looks enormous and apologetic." },
        { name = "a switchback", description = "The path doubles back on itself so tightly that for three steps you are walking towards the lake. A goat looks down from the next loop up. It took the direct way, which was a wall." },
      } },
    { name = "the last pine",
      description = "One tree standing by itself above the others, bent over to the east like a man holding his hat on. Nothing taller than a goat grows past this. The pine has the look of a thing that went too far on a dare.",
      things = {
        { name = "the trunk", description = "Wrung like a wet cloth. Every winter the wind gives it another quarter turn. The herders say that in a few hundred years it will have come round to where it started." },
        { name = "a bead of resin", description = "Gold, slow, and catching the light. A fly got into it some years back and has had time to regret the decision.",
          actions = {
            { "Smell your fingers", say "Pine. For the rest of the day everything you touch will be, faintly, a forest." },
          } },
        { name = "a crossbill", description = "A small brick-red bird at work on a cone, with a beak that crosses over at the tip like bad scissors. It prises a scale, takes the seed and drops the husk on you. It is nothing personal. You are merely underneath." },
      } },
    { name = "a spring",
      description = "Water coming out of a crack in the rock in a rope as thick as your thumb. Somebody long ago set a slate under it to make a spout, and somebody after that chained a tin cup to the slate.",
      things = {
        { name = "the tin cup", description = "Dented all over, and on the bottom a set of initials punched with a nail, and beneath them another set, and another. It is the visitors' book for people who could not write." },
        { name = "a clump of butterwort", description = "Pale leaves laid flat in a star on the wet rock, with one violet flower on a stalk. The leaves are sticky. Three gnats have found this out. It is the only plant on the mountain that eats meat, and it has the modest look of all really dangerous things." },
      },
      actions = {
        { "Drink", say "Cold enough to feel all the way down, like swallowing a short icicle. You have a second cup. The goat watches you use the cup, and drinks from the spout." },
      } },
    { name = "a lichened boulder",
      description = "A grey rock the size of a cottage, patched all over with colours a rock has no right to: sulphur yellow, rust, a green like old bronze, and black in rings.",
      things = {
        { name = "the map lichen", description = "Yellow-green, cracked into little countries with black borders. It grows the width of a fingernail in a hundred years. The patch in front of you is as big as a table. You do the sum, and take your hand off it." },
        { name = "a waymark", description = "A stripe of red paint and a stripe of white, daubed by the Council to show that this is the official path. Ten yards on there is another, on a different path. The goats have been moving them." },
        { name = "the sheltered side", description = "Out of the wind, a hollow worn in the turf to the size and shape of one goat. It is still warm." },
      } },
    { name = "a marmot",
      icon = "m",
      description = "A stout brown animal sitting bolt upright on a rock with its hands folded, like an alderman waiting to be asked. It is the lookout for a colony further up, posted down here because it talks too much.",
      actions = {
        { "Wave", say "It shrieks. One note, like a tin whistle trodden on. From up the slope come three more, and then silence, and you understand that the whole mountain now knows where you are, how big, and how slow." },
      } },
    { name = "a patch of old snow",
      description = "The lowest of the year, grey, in the lee of a rock, shrinking by the day. It has the pitted look of a thing that knows it is not staying.",
      things = {
        { name = "a very large footprint", description = "Pressed deep in the crust, pointing downhill: three toes, each the size of a loaf, and a heel like a paving slab. Whoever made it was walking carefully, so as not to damage the path. Beside it lies one dropped envelope, addressed in runes." },
        { name = "a line of small tracks", description = "A stoat, by the look, going straight across in bounds. Halfway over the pattern changes to a long smear. It lay down and slid the rest. There was no reason for this except the obvious one." },
      } },
    { name = "a milestone",
      description = "Council granite, sunk at a lean. One face reads {place}ALDMOOR{/}, {i}9 leagues{/}. The other reads {i}UP{/} and then, after some thought by the mason, {i}some{/}." },
    { name = "a dropped glove",
      description = "Leather, left hand, stiff with weather, lying palm up on a ledge just out of reach. It belonged to an adventurer. You can tell by the quality, which is poor, and the position, which is the last place a sensible person would have been.",
      actions = {
        { "Reach for it", say "You lean out. You lean further. At the point where the glove's owner evidently stopped being able to hold on, you have a clear and useful thought about gloves, and lean back in." },
      } },
    { name = "an ibex, far up",
      icon = "Y",
      description = "A speck on a cliff face on the far side of the valley, where there is no ledge. Then the speck moves, sideways, and you see horns. It is licking the rock. It has gone up eight hundred feet of nothing for a taste of salt, and is taking its time over it." },
    { name = "the view back",
      description = "Below you the pines close over the path, and through a gap in them lies the lake, grey and quite still, no bigger than a coin. The fisherman's boat is a crumb on it. You came up all that way on your own legs, and you allow yourself a moment about it." },
    { name = "the sound of bells",
      description = "Tin, a dozen of them, all at different heights on the mountain, none in time. Each is a goat. Ma Scree can tell from the hut door which is which, who is missing, and who is somewhere she was told not to go." },
  },

  exits = {
    { to = "marmot_meadow", description = "Off the path and up, over a shoulder of turf, to where the shrieking came from." },
    { to = "lake_shore", description = "Down to the pines and the careful water." },
    { to = "goatherd_hut", description = "A turf roof up among the first snow, with smoke coming out of it sideways." },
    { to = "toll_pass", description = "Up, to the notch between two mountains where the road goes through. Something large is sitting in it." },
  },
}

space {
  id = "goatherd_hut",
  region = "grumbles",
  name = "The Hut at the Snow Line",
  description = "One room of piled stone under a turf roof, built exactly where the snow starts, so that the front step is in summer and the back wall is in winter. It smells of goat, smoke and cheese, in rotation.",
  palette = { bg = "#120e0a", text = "#d6cbb8", dim = "#7a6c58", accent = "#e0a860", border = "#4a3a28" },
  ambience = {
    flicker { color = "#e0a860", strength = 0.15 },
    embers { glyphs = "∙·˙", color = "#e08a40", rate = 0.1 },
  },

  things = {
    { name = "Ma Scree",
      icon = "☻",
      description = "A goatherd worn by the wind into something low and hard to shift. She is knitting, and there is a goat beside her, and the wool goes straight from one to the other without the usual steps.",
      things = {
        { name = "her knitting", description = "It is going to be a sock or a goat cosy. She will decide when she sees who needs it." },
      },
      actions = {
        { "Talk", say "\"You'll be going up,\" she says. \"They all go up. Then they come down and want soup.\" She looks you over. \"You've a soup face.\"" },
        { "Ask about the troll", say "\"Gruff? Harmless. Asks his riddle. Same one, forty years. The council sent him a book of them and he never got past the first.\" She nods at the table. \"He gave me the spare. It's come in.\"" },
        { "Ask about the noise", say "\"The mountains talk. Slow, mind. The big one started a sentence when my gran was a girl.\" She counts stitches. \"We think it's going to be about the weather.\"" },
      } },
    { name = "the table",
      description = "Three good legs and a short one. The short one stands on a book.",
      things = {
        { name = "the book under the leg",
          key = "riddle handbook",
          description = "{i}Riddles for Use at Tolls, Bridges and Similar. Third edition. Issued by the Council of Aldmoor to licensed trolls.{/} It is holding up a table, and doing it well.",
          actions = {
            { "Read it", when = no(flag "knows_riddle"), set "knows_riddle",
              say "You lift the table with one hand and read with the other. Riddle the first: {i}What goes up the mountain, and down the mountain, and never moves?{/} The answers are at the back. {i}1. A road.{/} You put the table down. The soup has not spilled. Ma Scree says nothing, approvingly." },
            { "Read it", say "Riddle the second concerns an egg. You have the feeling it is being saved for somebody, and put the table back." },
          } },
        { name = "a bowl of soup", description = "Goat's milk, onion, something green. It is the temperature of the room, and the room is the temperature of the mountain." },
      } },
    { name = "the cheeses",
      description = "A shelf of rounds the size of cartwheels, each with a date chalked on the rind. The oldest has a name as well.",
      things = {
        { name = "the oldest cheese",
          description = "{i}Gerald.{/} The chalk date is older than the hut. The rind is like a castle wall. {danger}Since you came in it has, very slightly, turned to face the door.{/}",
          actions = {
            { "Knock on it", say "Solid. From inside, nothing. You find you had been expecting something, and are relieved." },
          } },
      } },
    { name = "a kid",
      icon = "g",
      description = "Asleep in the kindling box, with its legs folded up like a camp stool.",
      actions = {
        { "Tuck it in", say "There is nothing to tuck. You move a stick. It sighs. You have helped." },
      } },
    { name = "the back window",
      description = "It looks out on snow, from a distance of no inches. In forty winters the view has not changed, and Ma Scree keeps the glass clean anyway." },
    { name = "the stove",
      description = "An iron box on four legs with a pipe that goes out through the turf. It burns goat dung and juniper, and has not been out in forty years. Everything in the hut is arranged by how much it needs to be near it.",
      things = {
        { name = "the stockpot",
          description = "Black, lidded, at the back of the stove, where it has been since she was married. Things go in. The soup comes out. Between the two is a matter she does not discuss.",
          actions = {
            { "Have some soup", say "She fills a bowl without being asked and without looking up. It is hot, at least, from this pot. Goat's milk, onion, something green, and under those a flavour that has been building since before you were born. You finish it. \"Soup face,\" she says, with satisfaction." },
          } },
        { name = "the kettle", description = "It sings on one note when it boils, and the goat nearest the stove sings the same note back. Ma Scree says this is how she knows the tea is ready, since she stopped hearing the kettle years ago." },
        { name = "a row of drying socks", description = "On a string above the stovepipe, steaming. Grey, thick, all different lengths. Not one has a pair, because she knits them to the foot, and nobody up here has two feet the same after the first winter." },
        { name = "the fuel basket", description = "Dried dung, in neat cakes, each with the print of the hand that patted it flat. It burns with a blue flame and a smell you stop noticing, which is worse than noticing it." },
      } },
    { name = "the goats",
      icon = "g",
      description = "Five of them are indoors, on the grounds that they asked. They stand about the room like guests at a party who have run out of things to say but do not want to be the first to leave.",
      things = {
        { name = "Bishop",
          description = "The billy. A beard to his knees, horns like the handles of a wheelbarrow, and yellow eyes with the pupil on its side. He has eaten three hats, a prayer book and the leg of a stool. He is looking at your pack.",
          actions = {
            { "Guard your pack", say "You move it to your other shoulder. He takes one step, casually, in that direction. You move it back. He takes one step back. You are both going to be here for some time, and only one of you has a strategy." },
          } },
        { name = "Duchess", description = "White, long in the face, and carried like a tray of glasses. She will not walk through a puddle. Ma Scree lays a plank for her, and says nothing about it, and nor does Duchess." },
        { name = "the Other Duchess", description = "Also white, also long in the face. The two of them have not looked at one another directly since the spring. Something was said over a thistle." },
        { name = "Nettle", description = "Small, brown, and standing on the table. She was not on the table a moment ago. You did not see her get up, and she does not seem to know how it happened either.",
          actions = {
            { "Lift her down", say "You set her on the floor. You turn to say something to Ma Scree. Nettle is on the shelf with the cheeses. \"She's a climber,\" says Ma Scree. \"Leave her. She comes down for meals.\"" },
          } },
        { name = "the one with no name", description = "Grey, with one white ear, born at the turn of the year. \"Not named yet,\" says Ma Scree. \"I wait till they've done something.\" The goat looks at you as if considering what." },
      } },
    { name = "the shelves",
      description = "Three planks on pegs driven between the stones. Everything she owns that is not a goat or a cheese is on them, and she can find any of it in the dark.",
      things = {
        { name = "a row of bells", description = "A dozen spare, tin and brass, each a different note. Every goat is belled to its own. On a foggy night she stands at the door and listens to the chord, and knows from the hole in it who has not come home." },
        { name = "a jar of salve", description = "Green, thick, smelling of pine and something sharper. For udders, hooves, chapped hands and, she says, most sorrows. The label is a drawing of a goat looking relieved.",
          actions = {
            { "Try a little", say "You rub some into a blister. It stings like an insult and then stops hurting altogether. So does the other foot, which you did not put any on. You decide not to ask." },
          } },
        { name = "an almanac", description = "The Council's, twelve years out of date. She has corrected it throughout in pencil. Every forecast, for every day, in every month, has been struck out and replaced with the same word: {i}snow{/}. In July she has added a question mark, to be fair." },
        { name = "a tin of buttons", description = "Horn, every one, cut from the tip of something that used to charge her. She can tell you which button was which goat. They are sewn on her coat in order of how much trouble they gave." },
        { name = "a letter from the Council", description = "Opened, read and propped behind the salve. {i}Madam. You are required to furnish a census of your goats. Yours, etc.{/} On the back, her draft reply, in pencil: {i}Sirs. They will not stand still. Come up and try. Scree.{/}" },
      } },
    { name = "the box bed",
      description = "A cupboard in the wall with a door on it, which is where she sleeps. With the door shut and a goat on her feet she says it is warmer than Aldmoor, and she has been to Aldmoor, once, and did not think much of it.",
      things = {
        { name = "the blankets", description = "Nine, knitted, each the natural colour of a different goat. You could stock a small hillside from this bed." },
        { name = "a hot stone", description = "A river cobble that lives on the stove by day and in the bed by night, wrapped in a sock. It has a name. She will not tell you what it is. The stone has earned some privacy." },
      } },
    { name = "the cheese press",
      description = "Two boards, a stone the size of a pig, and a screw of black oak that she turns a quarter each morning. Whey runs down a groove into a bucket.",
      things = {
        { name = "the round in the press", description = "Pale and sweating under its cloth. In a month it will go on the shelf. In ten years it will be fit to eat. She makes them for people who are not born yet, and does not expect to be thanked." },
        { name = "the whey bucket", description = "Thin, blue-white, sour. The kid in the kindling box gets it, warmed. So, on Fridays, does a troll, in a churn left at the door." },
      } },
    { name = "the rafters",
      description = "Low enough to remind you of them with your forehead. Everything that must be kept from the goats hangs up here, and the goats spend their evenings looking at it.",
      things = {
        { name = "bunches of herbs", description = "Yarrow, thyme, and a grey woolly thing she calls {i}old man's vest{/}. Dry as paper. When the stove draws they turn slowly, all the same way." },
        { name = "a swallow's nest", description = "A cup of mud stuck to a beam, lined with goat hair. Empty for now. They come back to it every May through a gap under the turf, and she leaves the gap." },
        { name = "a ham", description = "Do not ask of what. She will tell you, and tell you its name, and what it did." },
      } },
    { name = "the storm horn",
      description = "A goat's horn a yard long, bound with tin, hung by the door. When the weather turns she blows it from the step and every bell on the mountain starts moving downhill.",
      actions = {
        { "Blow it", say "You get a noise like a cow falling downstairs. Outside, a dozen bells begin to descend. Ma Scree looks out at a clear blue sky, and then at you. \"They'll not believe me next time,\" she says. \"That's on your head. When it comes.\"" },
      } },
    { name = "the cold store",
      description = "In the back wall, which is in winter, she has taken out one stone. Behind it is a hole dug straight into the drift, with a shelf of ice.",
      things = {
        { name = "a crock of butter", description = "White, hard as a brick, with the print of a thistle pressed in the top. It has been in there since last summer and will be exactly as good next summer." },
        { name = "a jug of milk", description = "Frozen solid, with the cream standing up out of the neck in a column, like a small pale hat." },
        { name = "the back of the hole", description = "Blue snow, packed. You can see the marks of her spoon, year on year, going deeper. In forty winters she has dug about an arm's length into the mountain. She says she is in no rush to get through." },
      } },
    { name = "a spinning wheel",
      description = "In the corner, under a cobweb. She has not needed it since she and the goats worked out how to do without the middle part. A spider has taken over the business and is making a fair go of it." },
    { name = "the summer door",
      description = "Planks and a leather hinge, standing open on grass and sun. A row of crooks leans beside it, and a pair of boots.",
      things = {
        { name = "the crooks", description = "Hazel, one for each year, the hook carved as a goat's head. She retires a crook when the goat it was carved after dies. The oldest ones are worn so smooth that they have no faces." },
        { name = "her boots", description = "Nailed, tarred, and standing to attention. The left is a full size larger than the right. After the first winter, nobody up here has two feet the same." },
      } },
  },

  exits = {
    { to = "goat_track", description = "Out by the summer door." },
  },
}
