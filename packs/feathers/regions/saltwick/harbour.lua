space {
  id = "saltwick_harbour",
  region = "saltwick",
  name = "Saltwick Harbour",
  description = "A stone quay, a dozen boats, nets drying on everything that stands still, and gulls supervising. Saltwick catches fish, sells fish, and smells of the difference.",
  variants = {
    { when = flag "tide_out",
      description = "A stone quay standing over a wide floor of shining mud. A dozen boats lie on their sides in it, where they were put down. The gulls are walking where they used to float, and plainly feel it is beneath them." },
  },
  backdrop = {
    "        │           │         ",
    "       ╱│╲         ╱│╲        ",
    "   ▄▄▄▄▄█▄▄▄▄   ▄▄▄▄█▄▄▄▄▄    ",
    "≈≈≈≈▀▀▀▀▀▀▀▀≈≈≈≈≈▀▀▀▀▀▀▀▀≈≈≈≈≈",
  },

  things = {
    { name = "the fishing boats",
      description = "Tubby, tarred, and nudging the quay on a slow swell. Each has a name on the bow and a different opinion of it on the stern.",
      variants = {
        { when = flag "tide_out",
          description = "Tubby, tarred, and lying in the mud at the end of slack ropes. From up here you can see their keels, which they would rather you did not." },
      },
      things = {
        { name = "the Hopeful", description = "Painted blue. Named in a good year." },
        { name = "the Realistic", description = "Painted grey. Named the year after." },
      } },
    { name = "Hesper Coddle, fishwife",
      icon = "☻",
      description = "She guts a herring in one motion without looking at it. She is looking at you, and you find you are standing up straighter.",
      things = {
        { name = "her knife", description = "Worn to a sliver by forty years of sharpening. It has opened more fish than there are people in Aldmoor." },
      },
      actions = {
        { "Talk", say "\"Herring,\" she says. \"Or mackerel, if you want to pay for the stripes.\"" },
        { "Ask about the lighthouse", say "\"Old Wim? Lets nobody up, and hasn't left the place in years. Waiting on a letter. By sea, he says.\" She flicks a fish head to a gull. \"The sea doesn't write. It'd have told me.\"" },
        { "Ask about the tide", when = no(flag "tide_out"),
          say "\"Goes out when the Office signs it out. Hasn't been signed since the clerk lost his stamp.\" The knife stops for a moment. \"You don't leave things lying near gulls.\"" },
        { "Ask about the tide", when = flag "tide_out",
          say "\"Out, since the clerk got his stamp back, and no one to sign it in again.\" She looks at the mud, and at her boat lying in it. \"I'd be cross. But the cockles are grand.\"" },
      } },
    { name = "a gull",
      icon = "v",
      description = "It stands on a bollard and looks at your pockets.",
      things = {
        { name = "its eye", description = "Yellow, round, and working out what you would fetch." },
      },
      actions = {
        { "Stare it down", say "You stare. It stares. You remember something you had to do elsewhere." },
      } },
    { name = "the nets",
      description = "Hung on poles, rails, a handcart, and one old man who sat down too long.",
      things = {
        { name = "the old man under the net", description = "Asleep. The net has been mended around him twice." },
      } },
    barrel { name = "a barrel of herring",
             description = "In stories there is always something in the barrel. Here it is herring. It is always herring." },
  },

  exits = {
    { to = "cliff_road", description = "Up the switchbacks, to the top of the cliff and the wind that lives there." },
    { to = "tide_office" },
    { to = "saltwick_light", description = "Along the mole to the white tower at the end of it." },
    { to = "long_strand", description = "Past the last cottage and round the point, where the quay gives up and the sand begins." },
  },
}
