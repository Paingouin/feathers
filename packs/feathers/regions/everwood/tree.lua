space {
  id = "remembering_tree",
  region = "everwood",
  wonder = true,
  name = "The Remembering Tree",
  description = "One tree in a clearing of its own: a beech so old that it has given up on shape. The elves forget nothing, and this is how. Every leaf on it is a day somebody wished to keep, and it does not drop them.",
  palette = { bg = "#0b100c", text = "#ccd4c0", dim = "#667060", accent = "#c8d878", border = "#34482c" },
  ambience = {
    shimmer { color = "#c8d878", strength = 0.12 },
    dust { glyphs = "·˙", color = "#5a6a48", rate = 0.2, speed = 0.2 },
  },

  things = {
    { name = "the leaves",
      key = "leaves",
      wonder = true,
      icon = "♣",
      description = "Hold one, and you have the day. {magic}Not the story of it. The day.{/} The elves come here to be sure of things. They are always sure of things. It has made them very hard to argue with.",
      things = {
        { name = "a low leaf",
          description = "Green, at the height of your shoulder, on a twig that many hands have bent down.",
          actions = {
            { "Hold it", fx("wash", "#c8d878"),
              say "A wet morning. A child's first bow, strung wrong. Somebody laughing, and a hand coming down to turn the bow the right way up. It is not your memory, and for a breath you miss it terribly." },
          } },
        { name = "a leaf gone gold",
          description = "Further in, the colour of the glade's light.",
          actions = {
            { "Hold it", say "A feast, eight hundred years back, under lamps. The poet is there, younger, on his feet with a cup, saying that he has an idea for a poem. Everybody cheers. You let go quickly. It seems unkind to stay." },
          } },
        { name = "a leaf with a hole in it",
          description = "A small round hole, clean-edged, near the tip.",
          actions = {
            { "Hold it", say "A midsummer hunt: horns, banners, the white hart going away through the birches. And then a gap, about as long as a sneeze, in which there is nothing at all, and then the hunt again. The moths, says the keeper. They eat the parts nobody visits." },
          } },
        { name = "a small plain leaf",
          description = "Low down, on the side away from the path, where you would not look.",
          actions = {
            { "Hold it", say "A kitchen under a root. Steam. A broad elf in an apron, much younger, being shown by his father how to bring the bone up and put it back. It is the only leaf you have found that was kept by somebody who works for a living. It is the warmest of the four." },
          } },
        { name = "the topmost leaf",
          description = "Too high to reach, at the very crown, pale against the sky. The keeper will tell you what is in it: a morning. The first one any elf has. The forest is already old in it, and the elves in it are already grown, and nobody in the memory finds that odd." },
        { name = "how many there are",
          description = "You try to guess. A tree this size, in full leaf, kept for four thousand years by a people who think most days worth keeping. The branches ought to have broken long ago. The keeper says a remembered day weighs nothing, which is the trouble with them." },
      } },

    { name = "the keeper of the tree",
      key = "keeper",
      description = "An elf so old that she has gone slightly transparent at the edges. She knows which leaf is which.",
      things = {
        { name = "her hands", description = "You can see the bark through them. She has touched every leaf on the tree, and something of each has stayed, so that there is rather less room in her now for herself." },
        { name = "her ladder", description = "Silver birch, forty rungs, leaning on the trunk. It reaches a third of the way up. Above that she climbs. Above that again, she says, she just goes, and does not look too closely at how." },
        { name = "her own leaf", description = "She will not say which it is. She kept one day, as a girl, and has spent four thousand years making sure that nobody holds it by mistake." },
      },
      actions = {
        { "Ask what came before the topmost leaf",
          say "\"Before?\" She thinks about it properly, which with her takes a while. \"I have looked,\" she says. \"There is bark above it, and then sky.\" She seems to find that a complete answer." },
        { "Ask to leave a day",
          say "\"Have you one worth keeping?\" You go through them. There was a morning with a goose in it. \"Come back,\" she says, not unkindly, \"when you have finished having it.\"" },
        { "Ask whether they ever forget", say "\"We cannot,\" she says. \"Have you a brother? Imagine that every foolish thing he ever said to you was hanging on a tree where you could go and hear it again, in his voice, whenever you were cross. Imagine that he had the same of you.\" She folds her transparent hands. \"That is why we are so polite.\"" },
      } },

    { name = "the fallen leaf",
      description = "One, on the moss, brown. The only leaf the tree has ever let go. Nobody will pick it up. Nobody will say whose it was, and from the way they do not say it, everybody knows.",
      things = {
        { name = "the moss around it", description = "Grown up in a little wall on every side, a finger high, leaving the leaf clear. The moss, at least, has decided how it feels." },
      },
      actions = {
        { "Reach for it", say "Your hand stops a foot above it. Nobody has stopped you. The keeper has not turned her head. It is only that you know, suddenly and completely, what it is to want a thing gone, and you find that you would rather not know whose." },
      } },

    { name = "the trunk",
      description = "Forty paces round, grey, folded and knuckled. There are names cut in it in the Old Tongue, each with the day its owner went into the West Wood.",
      things = {
        { name = "the names", description = "Hundreds, healed to silver scars. Under each, a twig with a single name tag of birch tied to it, turning. That is all that an elf leaves, in the end: the days, and a tag to say whose." },
        { name = "a carving, low down",
          description = "Near the ground, in the common tongue, with a penknife: {i}Wilf woz ere{/}. The bark round it is unhealed. The tree has kept it open. The keeper says it is the only thing on the trunk that makes her laugh, and that the tree knows it.",
          actions = {
            { "Ask about Wilf", say "\"A boy. Forty years ago, as you count. He came over the stones while the sentinel was looking at a pedlar, climbed to the second bough, and held a leaf.\" Which one? \"A wedding. Twelve hundred years old. He cried, wiped his nose on his sleeve, cut that in the bark, and ran away to sea.\" She smiles, and for a moment you cannot see the tree through her at all." },
          } },
        { name = "a hollow at the foot", description = "Big enough to sit in. It is lined with dry leaves of the ordinary sort, from other trees, blown in. The days stay on the branch; it is only the plain leaves that fall, and something has made a bed of them." },
      } },

    { name = "a grey moth", icon = "ж",
      description = "The size of your hand, on the bark, with a pattern on its wings like the bark. It moves when the keeper is not looking. She says they eat the days nobody visits.",
      things = {
        { name = "its wings", description = "Close to, the pattern is not bark. It is very small pictures. A face. A doorway. Half a lake. It is wearing what it ate." },
      },
      actions = {
        { "Shoo it", say "It goes up a branch, unhurried. \"Leave it,\" says the keeper. \"Some days ought to be eaten. Nobody will say so, and so we have the moths.\"" },
      } },

    { name = "the branches",
      description = "They go out level for thirty paces and come down to rest their elbows on the moss, and go up again. An old beech will do that. This one has done it so often that the clearing is a room with a dozen doors.",
      things = {
        { name = "the second bough", description = "A broad one, easy to reach. There is a scuff on it, forty years old, where a boot went up in a hurry." },
        { name = "a bare twig", description = "One, among the thousands. No leaf, no bud. The keeper says it is saved. She does not say for what, and she looks at the Court when she does not say it." },
      } },

    { name = "an elf holding a leaf",
      description = "A lord, by his silver, standing on tiptoe with a leaf between two fingers and his eyes shut. His face is doing something no elf's face does in company.",
      actions = {
        { "Wait for him", say "He lets go at last and sees you. In an instant he is marble again. \"I was verifying a date,\" he says. He walks away very straight. The leaf he was holding swings on its stalk: a small one, and old, and it has been held so often that it has gone soft, like a letter." },
      } },

    { name = "the clearing",
      description = "No other tree comes within fifty paces. They were not cut. The keeper says they moved back, over a few centuries, to give it room. You look at the nearest oaks. They are all leaning very slightly away, as people do from somebody who is listening." },

    { name = "the sound of the tree",
      description = "When the wind moves the leaves it is not a rustle. It is a murmur, very faint, of a great many rooms at once with their doors shut.",
      actions = {
        { "Listen", say "A laugh. A harp string. Somebody calling a child in, in the Old Tongue, by a name eleven syllables long. A door. Rain. You stand in it as you would stand in the hall of a large house in the evening, with the family all at home." },
      } },

    { name = "a tawny owl", icon = "v",
      description = "In a hole high in the trunk, eyes shut, the colour of the bark. It has lived in the Remembering Tree for nine years and hunts the grey moths at night. It is, the keeper says, the most forgetful creature in the forest, and she envies it." },

    { name = "beech mast",
      description = "Underfoot, the three-cornered nuts in their bristly cups, by the thousand. The tree keeps its leaves but still drops its seed every autumn. None has ever come up. The keeper thinks the ground is embarrassed to try." },

    { name = "a bench of living root",
      description = "Where the path comes in. For those who have held a leaf and need to sit down. It is long enough for six. In four thousand years no two elves have ever sat on it at the same time.",
      actions = {
        { "Sit", say "You sit. After a minute the lord who was verifying a date comes back, sees you, hesitates, and sits at the far end. Neither of you says anything. It is, by the standards of the Everwood, a riot." },
      } },
  },

  exits = {
    { to = "silver_glade", description = "Back along the moss, a little unsteady, to where it is still four o'clock." },
  },
}
