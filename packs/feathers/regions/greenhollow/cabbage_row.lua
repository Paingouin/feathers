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
  },

  exits = {
    { to = "village_square" },
    { to = "mill_lane", description = "Down the path between the garden walls to the stream." },
    { to = "graveyard", description = "Through the lychgate at the top of the row." },
  },
}
