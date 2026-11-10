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
  },

  exits = {
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
  },

  exits = {
    { to = "goat_track", description = "Out by the summer door." },
  },
}
