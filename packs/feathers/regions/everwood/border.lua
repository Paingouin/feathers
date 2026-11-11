space {
  id = "elf_border",
  region = "everwood",
  name = "The Border, Apparently",
  description = "The path stops at a line of white stones laid across it. On your side: brambles, mud, the Mumblewood muttering. On the other side the same forest has been combed. Up in a beech, with a bow across her knees, an elf is looking at you as you would look at a stain.",

  things = {
    { name = "the sentinel",
      key = "sentinel",
      icon = "♠",
      description = "Ilvaren of the Border: slender, grey-eyed, and beautiful in a way that takes work. She has guarded these stones for three hundred years. In that time four people have come. She was unimpressed by all four.",
      variants = {
        { when = flag "ev_named",
          description = "Ilvaren of the Border. Word of your name has come down the forest ahead of you. She is looking at a point above your head with great steadiness, and the branch she sits on is shaking very slightly." },
        { when = flag "ev_seen",
          description = "Ilvaren of the Border. She has gone back to looking at the middle distance. You have been seen, assessed and filed. It took a while. You suspect the file is thin." },
      },
      things = {
        { name = "her bow",
          description = "White wood, taller than she is, strung with something that shines. She has never loosed it at anyone. She has never needed to. She raises one eyebrow instead, and it has a longer range.",
          things = {
            { name = "the bowstring", description = "Spun, she says, from the hair of her grandmother, who offered. It hums when strangers come. It has been humming since you were at the mill." },
          } },
        { name = "her one arrow",
          description = "In a quiver made for thirty. She was issued one, on her first day, and told to make it last. The fletching has been renewed eleven times and the arrow has never left the quiver, so that on the whole it has seen less of the world than the fletching." },
        { name = "her cloak",
          description = "Grey-green, the colour of the bark behind it. When she is still you lose her, and find yourself explaining your business to a tree. She lets you get to the end before she moves." },
        { name = "her other eyebrow",
          description = "Held in reserve." },
      },
      actions = {
        { "State your business", when = no(flag "ev_seen"),
          say "You say you are an adventurer. \"Ah,\" she says. She says it slowly, over about four seconds, and gets a great deal into it." },
        { "Wait to be looked at", when = no(flag "ev_seen"), set "ev_seen",
          say "You stand. She looks. She starts at your boots, and it is clear that there is a lot to get through. A leaf falls. A second leaf falls. A spider begins and completes a web between your hat and a branch. \"You may pass,\" she says at last. \"Touch nothing. Admire everything. They like that.\"" },
        { "Ask about the four", when = flag "ev_seen",
          say "\"A pedlar. He sold me a ribbon and I have regretted nothing since. A king's messenger, who shouted. A woman in farm boots who looked at me exactly as long as I looked at her, and then said she had seen what she needed.\" She pauses. \"And a boy with a penknife. We do not speak of the boy.\"" },
        { "Ask if it gets dull", when = flag "ev_seen",
          say "\"I have watched this path for three hundred years,\" she says. \"I know every leaf on it. I named the puddle.\" A silence. \"Yes,\" she says." },
      } },

    { name = "the white stones",
      description = "River stones, each the size of a loaf, laid in a line a thousand years ago and scrubbed weekly. Not one has moss on it. Moss has tried.",
      things = {
        { name = "the middle stone", description = "Worn in a shallow dip, exactly one foot wide. Everybody who was ever let across stepped on this one. It would be rude to use another, and she would tell you so." },
        { name = "a scrubbing brush",
          description = "Tucked behind the end stone, bristles down, with a cake of grey soap. It is the least elven thing you have ever seen, and it has been hidden with care.",
          actions = {
            { "Pick it up", say "\"That,\" says the beech tree, in a level voice, \"is not there.\" You put down the thing that is not there." },
          } },
        { name = "the returned things",
          description = "On your side of the line, in a tidy heap: everything the forest has politely declined.",
          things = {
            { name = "a boot", description = "Left. Good leather. Its owner went on without it, which tells you how the conversation went." },
            { name = "a sandwich", description = "Cheese. Perhaps forty years old, and exactly as it was put down. Nothing in the Everwood would touch it and nothing in the Mumblewood dared come this close." },
            { name = "a pedlar's hat", description = "With a card in the band: {i}Ribbons, Notions, Buttons to Match.{/} He left without it and has, by the look of the dust, not felt the lack." },
            { name = "a king's proclamation", description = "Rolled, sealed, unopened. It was read aloud at the stones, at some volume, and handed back with the remark that the trees had heard it." },
          } },
      } },

    { name = "the two forests",
      description = "The same trees on both sides. On yours they grow as they like. On hers they have been spoken to. Not a twig crosses the line.",
      things = {
        { name = "a bramble with ambitions",
          description = "One long shoot has reached out across the stones. It has been tied back, gently, with a silk ribbon in a bow. You can tell that it will try again, and that the ribbon will be ready." },
        { name = "the last mumble",
          description = "Behind you the Mumblewood is muttering, as ever. At the stones it stops, in the middle of a sound, the way a man stops when he walks into a room and sees who is in it.",
          actions = {
            { "Listen across the line", say "On the far side: birdsong, in tune. A breeze, in moderation. You had not known a forest could have a best behaviour." },
          } },
        { name = "the combed side",
          description = "Leaf litter lying all one way. Ferns at even intervals. A fallen log, placed. It is extremely beautiful, and you want very much to kick something." },
      } },

    { name = "the sentinel's beech",
      description = "Grey, smooth, and enormous, with one bough grown out level over the path at the exact height for sitting and looking down on people.",
      things = {
        { name = "the sitting bough", description = "Polished along one yard of its length by three centuries of the same occupant. There is a cushion. It is bark-coloured and you were not meant to see it." },
        { name = "a tally in the bark",
          description = "Four small cuts, healed over silver, and beside them a fifth, fresh, still pale.",
          variants = {
            { when = no(flag "ev_seen"), description = "Four small cuts in the bark, healed over silver. There is room for a fifth. She has not yet decided whether you count." },
          } },
        { name = "a nuthatch", icon = "v",
          description = "Blue-grey, walking down the trunk head first, as they do. It goes round the sentinel as it would go round a knot in the wood." },
      } },

    { name = "a red squirrel", icon = "s",
      description = "On the border stones, eating a hazelnut. It crosses the line both ways as it pleases. The sentinel does not see it. On the far side it has been brushed.",
      actions = {
        { "Offer it a crumb", say "It takes the crumb over the border, eats it there, and comes back for another. You are now, technically, exporting." },
      } },

    { name = "the puddle",
      description = "In the path, on your side, a hand's breadth short of the stones. It has been there for three hundred years of wet weather and she has had nothing else to look at.",
      things = {
        { name = "its name", description = "She will not tell you. You gather that it is long, and in the Old Tongue, and affectionate." },
        { name = "a water beetle", description = "Rowing in circles. It is the most watched beetle in the kingdom, and the ninetieth of its line to hold the post." },
      },
      actions = {
        { "Step in it", say "Your boot is over it when the temperature of the afternoon drops. You look up. Both eyebrows. You step round." },
      } },

    { name = "a notice in the Old Tongue",
      description = "Carved on a white post, in letters that curl. Underneath, in the common tongue, much smaller, by a later and wearier hand: {i}It says no. At length.{/}" },

    { name = "the spider on your hat",
      visible_if = flag "ev_seen",
      description = "Small, brown, and pleased with the web. It has moved in. You find that you have crossed into the realm of the elves with a lodger.",
      actions = {
        { "Evict it", say "You offer it a twig. It considers the twig, and the hat, and stays with the hat. The hat has prospects." },
      } },

    { name = "wood anemones",
      description = "White stars in the leaf mould, on both sides of the line. On the far side they are in rows." },

    { name = "the path onward",
      description = "Beyond the stones it is raked gravel, pale, without a footprint on it. The gravel goes round a bend, in a curve somebody took a season to get right." },
    { name = "a milestone, combed",
      description = "On the far side of the stones, a white pillar. It gives no distance. It has a single line of the Old Tongue on it, and somebody has lately polished it. On your side lies its twin, fallen, green, with a snail on it and a number you can read.",
      things = {
        { name = "the fallen twin", description = "{i}MUMBLEWOOD 0.{/} You are standing in it. The stone thought you should know." },
        { name = "the line of the Old Tongue", description = "The sentinel translates, with her eyes on the middle distance. \"It says: {i}From here, it is all the same distance.{/}\" She waits. \"It is a great deal better in the original.\"" },
      } },
    { name = "the sentinel's lunch",
      description = "On the bough beside her, in a folded leaf: something small, pale and geometric, which she has not touched in your presence and will not. Under the bough, on your side of the line, where it has been dropped with great accuracy, is the heel of a Greenhollow loaf and a rind of cheese.",
      actions = {
        { "Look at the crust, then at her", say "She looks at a point above your head. The tips of her ears go faintly pink. \"A squirrel,\" she says, \"brings them.\" The squirrel, on the stones, stops chewing. It has been called a number of things but never before a baker." },
      } },
    { name = "a spider's web across the line",
      description = "Slung from a bramble on your side to a combed hazel on hers, with dew on it. It is the only thing at the border that belongs to both countries. Each morning an elf comes and looks at it, and cannot find a rule, and goes away.",
      actions = {
        { "Duck under it", say "You go under with care. A single thread touches your hat, stretches, and holds. You have not broken the one treaty in the place. From the bough comes the smallest sound of breath let out." },
      } },
    { name = "a goldcrest in the holly",
      description = "The smallest bird in the kingdom, olive, with a stripe of yellow on its head like a spill of paint, hanging upside down from a holly twig on your side of the stones. It crosses the line and back a dozen times a minute. Nobody looks at it. Nobody gives it a name. It weighs as much as a coin and is the only thing here with free passage.",
      actions = { { "Envy it", say "It lands on a white stone, flicks its wings, and looks at you with an eye like a bead. Then it goes over to the combed side, finds a spider, and comes back to the brambles to eat it. Even the birds, you notice, take their meals where nobody minds the crumbs." } } },
    { name = "a basket left at the line",
      description = "On your side of the white stones, set down square in the path: a round lidded basket of peeled willow, very finely made. The sentinel has not touched it. It has been there three days. Elves do not fetch.",
      things = {
        { name = "the weave", description = "So close it would hold water. The elves grow their houses and are proud of it. This was made by hands, quickly, by someone who never looked down, and it is as good as anything on the far side. The sentinel has noticed. That is why she has not touched it." },
        { name = "a tag", description = "{i}To the Lady. Leeks, from sea bottom. With the compliments of the Circle. A reply is not expected, having regard to last time.{/}" },
        { name = "under the lid", description = "A dozen leeks, fat, blue-green, with the earth still on. The Everwood has had four o'clock in early autumn for longer than anyone can say. It has not had a fresh leek in all that time. You begin to see why they are being left to sit." },
      },
      actions = { { "Offer to carry it over", say "\"It is not addressed to you,\" says the sentinel. She looks at the basket, and at the sky, and at her bow. \"If it were to be found on this side of the stones in the morning,\" she says, to nobody, \"I could hardly be said to have brought it.\" She looks away. You move it one pace west. Neither of you mentions it again." } } },
  },

  exits = {
    { to = "forest_path", description = "Back into the brambles and the muttering, where at least nothing is judging the brambles." },
    { to = "silver_glade",
      description = "Over the middle stone and along the raked path, into a light that looks later than it is.",
      requires = flag "ev_seen",
      locked = "the sentinel has not finished looking at you" },
  },
}
