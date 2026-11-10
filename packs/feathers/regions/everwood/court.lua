space {
  id = "elf_court",
  region = "everwood",
  name = "The Court of Leaves",
  description = "A ring of nine great oaks whose branches have been taught to meet overhead in a vault. Under it, on a seat grown out of a living root, sits the Lady of the Everwood. The court stands round her in silence. It is a perfect silence, and she has had enough of it.",

  things = {
    { name = "the Lady",
      key = "lady",
      icon = "♛",
      description = "The Lady Sennavel. She has ruled the Everwood for three thousand years and has not been surprised since the second. She has her chin on her hand. When your name is announced, something happens to her mouth that the court has not seen in an age, and is alarmed by.",
      variants = {
        { when = flag "ev_pool_granted",
          description = "The Lady Sennavel, on her root, with her chin on her hand. She is not looking at you. Every so often her shoulders move, once, and the whole court finds something to study in the leaves." },
      },
      things = {
        { name = "her crown", description = "Living ivy, which has to be trimmed. It is done at night, while she pretends to be thinking, by an elf from the Root with very small scissors." },
        { name = "her hands", description = "Long, still, and folded. On one finger, a ring of plain grass, plaited, green. It is replaced every morning before the dew is off. She has had it, by that reckoning, for a million mornings." },
        { name = "her cup",
          description = "Silver, on the arm of the seat, always full. She has never seen it filled and has never looked round to see how.",
          things = {
            { name = "what is in the cup", description = "Spring water with a flower in it, facing west. And under the flower, if you are standing where you are standing, the unmistakable colour of small beer." },
          } },
        { name = "her expression", description = "The one a person wears on the third day of a long visit from relations. She has worn it since before the kingdom had a name." },
      },
      actions = {
        { "Bow", say "You bow. Your pack swings round and hits you in the ear. Nobody in the court moves a muscle. The Lady makes a small sound, which she turns into a cough, which she has not needed to do in three thousand years and is not good at." },
        { "Ask a boon", when = no(flag "ev_pool_granted"), set "ev_pool_granted",
          say "\"A boon,\" she says. \"Nobody has asked me for anything since the dwarves wanted the hill back.\" She thinks. \"You have been stared at, named and stepped over. You may as well see something that is not for show.\" She tells you where: behind her seat, between the two oldest oaks, down. \"Do not tell them I laughed,\" she says, quite loudly. The court looks at the ceiling." },
        { "Tell her about the world", when = flag "ev_pool_granted",
          say "You tell her about a goose, a bed, a troll with a riddle. She listens to all of it. \"And nobody arranged any of this?\" she says. \"It simply occurred, one thing after another, in no order?\" You say that is about the size of it. She shuts her eyes. \"How restful,\" she says." },
      } },

    { name = "the living seat",
      description = "An oak root that came up out of the ground and made a chair, with arms, because it was asked. It took four hundred years. She says it is not comfortable and she has never had the heart to tell it.",
      things = {
        { name = "a new shoot", description = "On the left arm, two leaves, bright green. The seat is still trying to improve. Lately it has been attempting a cushion." },
        { name = "the footstool", description = "A second, smaller root, come up of its own accord a century after the first. Nobody asked for it. It is slightly too far away, and she stretches to reach it rather than say." },
      } },

    { name = "the court",
      description = "Forty lords and ladies in grey and silver, each standing exactly where their forebears stood. They are attending. It is a full day's work and they are very good at it.",
      things = {
        { name = "a herald",
          description = "He announced you. He got the name out without a tremor, all five syllables, and then had to go and stand behind a tree.",
          actions = {
            { "Ask him to announce you again", say "He draws breath. He gets as far as {i}Tal-u{/}. Behind the tree again." },
          } },
        { name = "the Lord of the Eastern Eaves", description = "He holds the hereditary office of standing third from the left. His father stood third from the left. There is a dip in the moss." },
        { name = "a lady with a fan",
          description = "A fan of a single beech leaf, moved one inch and back, once a minute. In the language of the court this is a furious outburst. It is directed at you.",
          things = {
            { name = "the beech-leaf fan", description = "Green. In autumn it would turn, so she holds court only in the mornings and spends her afternoons in the glade, where it cannot." },
          } },
        { name = "a courtier you have met", visible_if = visited "elf_mess",
          description = "Third row, very upright, eyes front. Last seen with his sleeves rolled, losing at cards and swearing. He knows you know. A bead of sweat makes its way down past one perfect ear." },
      } },

    { name = "the petition bowl",
      key = "petition bowl",
      description = "A silver bowl on a stump, for requests to the Lady. It holds one acorn. The acorn has been pending since before Aldmoor.",
      variants = {
        { when = item "pending_acorn",
          description = "A silver bowl on a stump, for requests to the Lady. It is empty, for the first time since it was set down. A clerk has been sent for, to record that the court's business is concluded. He is expected to cry." },
      },
      things = {
        { name = "the acorn in the bowl",
          visible_if = no(item "pending_acorn"),
          description = "Brown, glossy, with its cup on. It was laid here by the forest itself, the elves say, the autumn the court first met: a petition to become another forest, somewhere else. Thirty centuries of Ladies have promised it an answer.",
          actions = {
            { "Ask what it is waiting for", say "\"For a decision,\" says the nearest lord, \"as to where.\" And how long does a decision take? He looks at you with pity. \"It is not the deciding,\" he says. \"It is that somebody would then have to {i}go{/}.\"" },
            { "Offer to carry it", when = flag "ev_pool_granted", once = true, give "pending_acorn",
              say "A silence falls on top of the silence that was there already. Forty elves look at the Lady. The Lady looks at you: at the boots, the pack, the general air of somebody on the way to somewhere else. \"The petition,\" she says slowly, \"is granted. The bearer goes everywhere. Let it choose.\" She picks {gold}the Pending Acorn{/} out of the bowl herself and folds your fingers over it. \"It will tell you when,\" she says. \"I should not hold your breath. It is one of ours.\"" },
          } },
        { name = "the rim of the bowl", description = "Engraved: {i}All petitions are heard.{/} It does not say when." },
      } },

    { name = "the vault of branches",
      description = "Nine oaks, plaited. Not a leaf falls in here without leave. One is falling now, slowly, and a courtier is watching it with the face of someone who will have to write a report.",
      things = {
        { name = "the falling leaf", description = "Brown at one edge. It turns as it comes. Forty pairs of eyes follow it down without one head moving. It lands on the Lady's knee. She looks at it as if it were a letter from a friend." },
        { name = "a gap in the vault", description = "High up, where two boughs have never quite agreed to meet. A single ray comes through and lies on the moss. The court moves a pace to the east each hour so as not to stand in it. This is called the Progress and is their only exercise." },
        { name = "a jay", icon = "v", description = "Pink, with a blue flash on the wing, burying an acorn in the moss at the foot of the throne. It has not been announced. It buries a second. It has done more for the forest this morning than the court has since the spring." },
      } },

    { name = "the nine oaks",
      description = "Each has a name, a title, and a place in the order of precedence. They are older than the elves' memory of them, which the elves say is impossible.",
      things = {
        { name = "the two oldest", key = "oldest oaks",
          description = "Behind the seat, side by side, so thick and so close that their bark has grown together like clasped hands.",
          variants = {
            { when = flag "ev_pool_granted",
              description = "Behind the seat, side by side. Now that you have been told, you can see that the clasp is not quite closed. At the foot, between two roots, there is a dark the width of a person, and worn steps going down into it." },
          } },
        { name = "the youngest oak", description = "A mere two thousand years. It still drops the occasional twig, and is spoken of indulgently." },
      } },

    { name = "the moss floor",
      description = "Deep, green, and silent to walk on. It was chosen for that. You manage to make a noise on it anyway. You are not sure how. Nor are they.",
      things = {
        { name = "the dips in the moss", description = "Forty pairs, where forty pairs of feet have stood for three thousand years. Between the dips it is ankle deep. Nobody has ever stood anywhere else to find out." },
      } },

    { name = "a tapestry of leaves",
      description = "Behind the throne, hanging between two oaks: thousands of real leaves sewn edge to edge, green through gold, in the pattern of a wood in every season at once.",
      things = {
        { name = "the hem", description = "It is moving. There is a draught behind it, warm, and smelling of onions.", },
        { name = "a seam in the leaves", visible_if = visited "elf_mess",
          description = "Just the height of a door. As you watch, a bare forearm comes round the edge, tops up the Lady's cup from a brown jug, and goes back in. No one sees. No one has seen for three thousand years. It takes all forty of them." },
      } },

    { name = "the silence",
      description = "Complete. A thing of great age and polish, handed down. You can hear your own eyelids.",
      actions = {
        { "Clear your throat", fx "shake",
          say "It goes round the nine oaks and comes back. A lord sways. The lady with the fan moves it two inches, which you understand is the worst thing she has ever said. On the root seat, the Lady puts a hand over her mouth and looks hard at a leaf." },
      } },

    { name = "a white moth",
      description = "On the Lady's shoulder, where a brooch would be. It is not a brooch. It opens and shuts its wings in time with her breathing, and she has not noticed, or has." },
  },

  exits = {
    { to = "silver_glade", description = "Out between the rows of oaks, walking backwards for the first few paces, as shown." },
    { to = "night_pool", label = "Between the oldest oaks",
      description = "Behind the root seat, between the two oldest oaks, down worn steps into a dark that has no business here at this hour.",
      requires = flag "ev_pool_granted", hidden = true },
  },
}

space {
  id = "night_pool",
  region = "everwood",
  secret = true,
  wonder = true,
  name = "The Pool of the First Night",
  description = "Steps go down between the roots into a hollow where it is dark at any hour. There is a round pool, quite still, and no roof over it but leaves. It is full of stars. You look up to see where they come from. The leaves are solid. {magic}It is mid afternoon.{/}",
  palette = { bg = "#06080f", text = "#c4cce0", dim = "#525c7c", accent = "#9db4f0", border = "#242c50" },
  ambience = {
    stars { color = "#9db4f0", rate = 0.5 },
    shimmer { color = "#9db4f0", strength = 0.15 },
  },

  things = {
    { name = "the pool",
      key = "pool",
      wonder = true,
      icon = "◊",
      description = "Black water with the whole night in it: stars to the edges, sharp enough to count. They are not tonight's. The elves say the pool was looking up on the very first night there was, and liked it, and kept it.",
      things = {
        { name = "the stars in the water",
          description = "More than you have ever seen. They crowd. There is no dark patch among them anywhere, not one place where the eye can rest. You had not known, until now, that the sky you grew up under had room in it.",
          things = {
            { name = "a red star", description = "Low on the eastern rim of the pool, the colour of a coal. You do not think it is in your sky. You are not much of an astronomer. You find you are fairly sure all the same." },
            { name = "a close pair", description = "Two white stars so near together that they are almost one. You try to remember whether you have ever seen them. You think that you have seen one of them." },
          } },
        { name = "the moon in the water",
          description = "There isn't one. You look for a good while. On the first night it had not come up yet. The elves have waited four thousand years to see if it will." },
        { name = "your reflection",
          description = "It is not there either. The stars go on straight through where your face should be. The pool is looking at the first night and will not be distracted by you." },
        { name = "the rim of the pool",
          description = "A ring of one pale stone, without a join. Nobody cut it. It is worn in a shallow curve on the near side, where someone leans to look." },
      },
      actions = {
        { "Touch the water", fx "sparkle",
          say "One ring goes out across it, and every star rocks, and then is still again in exactly its place. The cold goes up your arm to the elbow and is not unpleasant. It is the cold of being out late." },
        { "Count the stars", say "You get to two hundred in a patch the size of your hand, and stop, and sit back on your heels. Whoever was first to look up at this had a great deal to take in." },
      } },

    { name = "the steps",
      description = "Eleven, cut in the roots, worn in the middle on one side only. One person comes here, often, alone.",
      things = {
        { name = "the third step", description = "Worn into a seat. There is a hollow for a heel on the step below and a place on the root beside it where a hand has rested, on and off, for three thousand years." },
      },
      actions = {
        { "Sit on the third step", say "You sit where she sits. From here the pool fills the whole of what you can see, and the court, the silence and the forty attending are all behind you and overhead and a very long way off. You understand the boon better. She has lent you her one room." },
      } },

    { name = "a silver cup",
      description = "On the rim. The Lady's, the twin of the one upstairs. There is a little pool water in the bottom of it with one star in.",
      things = {
        { name = "the star in the cup", description = "Small, white, perfectly round. It does not go out when you shade it with your hand. It lights your palm from below, faintly, and you take your hand away with care." },
      },
      actions = {
        { "Drink from it", say "You pick it up. The star slides to the edge and looks at you. You put the cup down again, exactly where it was, and turn it so the handle is right." },
      } },

    { name = "the leaves overhead",
      description = "Oak, thick, and green with daylight. A sunbeam comes through a gap and stops a yard above the water, as if it had been asked to wait outside.",
      things = {
        { name = "the waiting sunbeam", description = "Gold, with dust in it, ending in mid air in a clean edge. Below the edge it is night. A gnat flies down the beam, crosses the edge, and is lit by starlight on the other side." },
      } },

    { name = "the dark",
      description = "Not the dark of a cellar. The dark of out of doors, with distance in it. There is a hollow twenty feet across under a tree, and you can feel a horizon.",
      actions = {
        { "Listen", say "Nothing. No owl. No cricket. No wind. You realise why: on the first night, none of them had had a first night yet either. Everything was listening." },
      } },

    { name = "night-flowering stock",
      description = "White, small, growing round the rim where no day flower would. It is open, and scented, at four in the afternoon, and is the only plant in the Everwood that the elves did not have to ask." },

    { name = "a bat", icon = "ʌ",
      description = "One, very small, going round the hollow in silence. It lives in here and has never been out. It believes the world is twenty feet across and always night, and within its experience it is right." },

    { name = "moths over the water",
      description = "Three or four, pale, drawn to the stars in the pool. They come down to one, find it wet, and go up again, and try the next. They have been working through them in order." },

    { name = "a glow-worm", icon = "ι",
      description = "On a root, giving its small green light. Against what is in the pool it is not much. It has not been discouraged." },

    { name = "the cold air",
      description = "It lies in the hollow like water in a bowl, to about the height of your chest. Above that it is a warm afternoon. Your head is in one season and your feet in another, and your knees are undecided." },

    { name = "a ring of pale toadstools",
      description = "Round the far side, glowing a very little. You have seen their blue cousins in the Mumblewood. These are white, and when a star in the pool flickers, they flicker after it, a moment late, like someone learning a dance.",
    },
  },

  exits = {
    { to = "elf_court", description = "Up eleven steps, into the afternoon and the silence, with the cold still on your sleeves." },
  },
}
