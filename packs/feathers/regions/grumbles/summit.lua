space {
  id = "summit",
  region = "grumbles",
  wonder = true,
  name = "The Top of Old Grumble",
  description = "A flat place the size of a tablecloth, with the whole sky round it and nothing above. The wind has stopped, as if this were as far as it had leave to go. Under your boots the mountain is making its noise, and up here you can feel what the noise is.",
  palette = { bg = "#0b0f18", text = "#d4dae6", dim = "#68748c", accent = "#e6eaf6", border = "#3a4868" },
  ambience = {
    stars { color = "#c8d2ea", rate = 0.3 },
    snow { glyphs = "·˙", color = "#8a96b0", rate = 0.2, speed = 0.3 },
  },

  things = {
    { name = "Old Grumble",
      key = "old grumble",
      wonder = true,
      icon = "▲",
      description = "You put your hand flat on the rock. The noise comes up your arm: one syllable, begun before there was a kingdom and not finished yet. {magic}It is not grumbling. It is partway through saying something{/} to the other four, who are waiting, with every appearance of interest, for it to reach the end.",
      actions = {
        { "Listen with your whole hand", say "It is somewhere in the middle of a vowel. You stay for what feels like a long time. By the mountain's reckoning you were never here." },
        { "Say something back", say "You say hello. It will reach him, at his speed, in about nine hundred years. You hope the conversation has got to a place where it fits." },
      } },
    { name = "the other four",
      description = "Lower, grey, leaning in. One has a cloud on it, like a hat it has forgotten it is wearing." },
    { name = "a flag",
      description = "On a bamboo pole wedged in a crack: the banner of some earlier expedition, faded to the colour of the sky behind it. The motto can still be read. {i}BECAUSE IT WAS IN THE WAY.{/}" },
    { name = "the visitors' book",
      description = "In a tin box under a stone. Eleven entries in three hundred years.",
      things = {
        { name = "the first entry", description = "{i}First! Sir Odric the Bold.{/}" },
        { name = "the second entry", description = "{i}Sir Odric left his iron ring in the rock. Thank you, Sir Odric. W.{/}" },
        { name = "the latest entry", description = "{i}Came up to be alone. Mountain talking. Typical. Scree.{/}" },
      },
      actions = {
        { "Sign it", once = true,
          say "You write your name, and after it, since there is a column for it, your profession. {i}Adventurer.{/} It looks all right, written down. It looks nearly true." },
      } },
    { name = "the sky",
      description = "There is more of it than you were told. It goes on down behind the mountains for as far as you can lean.",
      variants = {
        { when = visited "sky_seam",
          description = "There is more of it than you were told. It goes on down behind the mountains for as far as you can lean, and you know now that it does not stop there." },
      } },
  },

  exits = {
    { to = "high_col", label = "The rope down", description = "Hand over hand, not looking at the view, which has done enough for one day." },
  },
}
