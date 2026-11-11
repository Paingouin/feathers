space {
  id = "cabbage_row",
  region = "greenhollow",
  name = "Cabbage Row",
  description = "Behind the square is the village's other street, which is to say its street. A dozen cottages, a smithy, a shop, and gardens that are run with a seriousness the fields never get.",

  things = {
    { name = "the smithy",
      icon = "♨",
      description = "Open-fronted, black inside, with a fire at the back of it.",
      things = {
        { name = "the blacksmith",
          description = "Bess Hammond, with arms like a bridge, shoeing a pony. She makes nails, hinges and gate latches. Adventurers ask her for swords.",
          actions = {
            { "Ask for a sword", say "\"I can do you a billhook.\" She holds one up. It is a fine billhook. \"Swords are for people who know someone they want to hit. Who d'you want to hit?\" You think. Nobody comes to mind. \"There you are, then,\" she says." },
            { "Show her Griffonsbane", when = item "griffonsbane",
              say "She does not touch it. She looks at the edge for a long time with her hands behind her back. \"I couldn't make that,\" she says. \"Nobody I know could, nor whoever taught them. Put it away.\" She goes back to the shoe and misses a stroke, which she never does." },
          } },
        { name = "the anvil", description = "The face is grey. The horn is polished silver by forty years of shoes." },
        { name = "the bellows", description = "Ox hide and elm, worked by a rope. The rope goes out of the back and is tied to a goat, who walks away from things for a living." },
        { name = "a rack of horseshoes",
          description = "Every size from pony to Captain.",
          things = {
            { name = "a shoe with seven holes", description = "Kept on the wall. For luck, she says. For a horse with a spare nail." },
          } },
        { name = "the quench bucket", description = "Black water with a skin on it. It hisses when she looks at it." },
      } },

    { name = "the general shop",
      description = "{b}MRS POTTLE. GENERAL.{/} A bow window with one of everything in it.",
      things = {
        { name = "the window display",
          description = "A mousetrap, a bonnet, a tin of treacle, and a helmet.",
          things = {
            { name = "the helmet",
              description = "Second-hand, four coppers, with a card: {i}ADVENTURERS!{/} It is dented in the same place as the one on the scarecrow. There was, at some time, a doorway in this village that was lower than it looked." },
          } },
        { name = "Mrs Pottle",
          description = "Behind the counter, in an apron with one pocket for the pencil and one pocket for the other pencil.",
          actions = {
            { "Ask what an adventurer needs", say "She puts on the counter: a ball of string, a candle, a second pair of socks, an apple. \"Four coppers.\" You have, at most, one. She takes back the string, the candle and the socks. She looks at the apple, and at you, and takes back the apple. \"You can have the advice,\" she says. \"Socks.\"" },
          } },
        { name = "the sweet jars",
          description = "Humbugs, pear drops, and a jar of something black labelled {i}NOT FOR CHILDREN (they like it too much){/}." },
        { name = "the post shelf",
          description = "Greenhollow's post office is a shelf. Three letters are waiting on it.",
          things = {
            { name = "a letter for The Adventurer",
              description = "{i}The Adventurer, Greenhollow.{/} It is not for you. It has been here nineteen years. Mrs Pottle gives it a hopeful look every time one of you comes in, and then looks at the boots, and puts it back." },
          } },
      } },

    { name = "the cottage gardens",
      description = "Cabbages in ranks, leeks at attention, and beans up poles that have been measured.",
      things = {
        { name = "the biggest cabbage",
          description = "Under a net, with a lantern beside it for the night watch. The show is in three weeks. Its owner sleeps in a chair next to the bed." },
        { name = "a rival gardener",
          description = "Looking over the wall at the biggest cabbage, with a face like arithmetic." },
        { name = "a bee skep",
          description = "Straw, domed, loud. The bees work the bean flowers and come home heavy." },
        { name = "a cabbage white",
          description = "A butterfly, on the net, trying." },
      } },

    { name = "the herb-wife's door",
      description = "Bunches drying under the eave, a cat on the step, and a sign: {i}CURES. ALSO ADVICE, SAME PRICE.{/}",
      things = {
        { name = "Granny Tansy",
          description = "Small, brown, and bright in the eye. She has delivered everybody in the village and laid out most of their grandparents, and looks at you as part of a series.",
          actions = {
            { "Ask for a cure", say "\"For what?\" Adventuring, you say. She looks you over. \"There isn't one. It has to run its course.\" She gives you a peppermint." },
          } },
        { name = "her garden",
          description = "Foxglove, feverfew, comfrey, and one pot with a cloth over it.",
          things = {
            { name = "the pot with a cloth",
              description = "A mandrake. The cloth is so that it thinks it is night. From under it comes a very small snore." },
          } },
      } },

    { name = "the village pound",
      description = "A walled pen for strays. At present it holds one sheep and one horse.",
      things = {
        { name = "the horse",
          description = "A grey gelding, well kept, with a saddle on the rail. He belonged to an adventurer and has been unclaimed since the autumn. The pound fee has passed the value of the horse twice. The village has grown fond of him. He is called Boots, after what came back.",
          actions = {
            { "Offer him an apple", say "You have no apple. Mrs Pottle saw to that. He searches your pockets anyway, thoroughly, and forgives you." },
          } },
        { name = "the sheep", description = "Nobody's. She arrived in the spring and likes the company." },
      } },

    { name = "children playing heroes",
      description = "One is the hero. One is the dragon. Four are villagers, whose part is to say {i}don't go{/}.",
      actions = {
        { "Offer to be the hero", say "You are cast as the dragon. You are slain in about a minute, by a girl with a stick, and you have to admit it was fair." },
      } },

    { name = "a thatcher on a roof",
      description = "Up a ladder with a bundle of reed, combing a new ridge. He has done every roof in the village twice.",
      actions = {
        { "Call up to him", say "\"Griffon wants doing,\" he calls down. \"He won't let me in the roof. Says it hums.\" He spits a peg into his hand. \"Thatch don't hum.\"" },
      } },

    { name = "a sow",
      description = "In the sty at the end of the row: pink, vast, on her side, with nine piglets in a line, and the look of someone who has finally got everybody down.",
      actions = {
        { "Scratch her back", say "She grunts on a falling note. A piglet falls off. Order is restored without her opening an eye." },
      } },

    { name = "a row of washing",
      description = "Strung from cottage to cottage the whole length of the street. You can read the village on it: who has a baby, who has a new shirt, who is the sexton." },

    { name = "the pump",
      description = "Iron, with a long handle, for those who do not hold with the well. It delivers after seven strokes exactly.",
      actions = {
        { "Work the handle", say "Six strokes of nothing. You stop, sure it is dry. A woman passing with a pail gives it the seventh without breaking step, and gets the water." },
      } },

    { name = "the cobbler's window",
      description = "A low shop with a bench in the window and a man at the bench. {b}S. LAST. BOOTS MENDED.{/} In a village that adventurers leave from, and that their boots come back to, it is the one trade that never goes short.",
      things = {
        { name = "Sim Last, cobbler",
          description = "Bent, quick, with a mouth full of tacks. He talks round them. He can tell where a boot has been by the wear, and whether it enjoyed it.",
          actions = {
            { "Show him your boots", say "He turns one over without asking you to take it off, which involves a certain amount of hopping. \"New,\" he says, round the tacks. \"Never been further than the square. Soft in the heel. You walk like a man expecting applause.\" He lets go of your foot. \"Come back when there's a hole. I'll know all about you then.\"" },
            { "Ask about the boots that come back", say "\"One a month goes out. Boots come home, a while after, by carrier or by river. Sometimes the pair. Sometimes not.\" He taps in a tack. \"I mend them. Somebody might want them. Never the same somebody, but they fit, more often than you'd think. Feet are much of a muchness. It's what's above them that varies.\"" },
          } },
        { name = "the shelf of returned boots",
          description = "Thirty pairs and eleven odd ones, mended, polished, each with a paper ticket on a string.",
          things = {
            { name = "a ticket", description = "{i}Left Greenhollow in spring. Returned by a pedlar, from the Mumblewood, autumn. Left boot only. Resoled. Owner not yet called.{/}" },
            { name = "a very small pair", description = "A child's, red, with a buckle. The ticket says only {i}got as far as the mill{/}. Their owner is forty now, and keeps bees, and has never lived it down." },
            { name = "a boot with a bite out of it", description = "A crescent taken clean out of the toe. The ticket says {i}goose{/}. He has not mended that one. He keeps it as it is, by the door, as a public service." },
          } },
        { name = "the last", description = "An iron foot on a post, upside down, worn silver. Every boot in the village for sixty years has been hammered on it. It is, by now, the average foot of Greenhollow, and is a little flat." },
        candle { name = "a candle in a glass globe", description = "Set behind a round flask of water, which throws the light onto the bench in one bright coin. He moves the boot, never the light." },
      } },
    { name = "a goat on a roof",
      icon = "y",
      description = "On the ridge of the last cottage, chewing, with thatch in its beard. It is the blacksmith's bellows goat, off duty. Nobody knows how it gets up. It has been seen coming down, which it does by simply walking off the end.",
      actions = {
        { "Call it down", say "It looks at you along its nose. It takes a mouthful of roof. The thatcher, three cottages along, says without looking up that he has given that goat more of his work than he has given the parish." },
      } },
    { name = "the bread oven",
      description = "A stone dome in a lean-to at the end of the row, shared by all the cottages. It is fired on Tuesdays and Fridays. Each household marks its loaves before they go in.",
      things = {
        { name = "the loaf marks", description = "Cut in the dough with a knife: a cross, a ring, three dots, a fish. The Pottles use a P. The Furrows use a furrow. Granny Tansy's has a mark that nobody else can quite draw afterwards, and rises higher than the rest." },
        { name = "the peel rack", description = "Long wooden shovels, one to a family, the blades burned black. They are handed down. A girl gets her mother's peel on her wedding day, and her opinion with it." },
      },
      actions = {
        { "Warm your back against it", say "The stones hold Tuesday's heat until Thursday. You lean. A cat is already leaning, lower down. You stay as long as is polite, and then a little longer, in the cat's company." },
      } },
    { name = "a hole in the hedge",
      description = "Child high, worn smooth, between the row and the lane to the mill. It is the real road of Greenhollow. Everything under four feet tall goes by it, including, at dusk, a line of ducks." },
  },

  exits = {
    { to = "village_square" },
    { to = "mill_lane", description = "Down the path between the garden walls to the stream." },
    { to = "graveyard", description = "Through the lychgate at the top of the row." },
  },
}
