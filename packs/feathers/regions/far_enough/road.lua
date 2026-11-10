space {
  id = "deep_road",
  region = "far_enough",
  name = "The Low Road",
  description = "Behind the shift door the tunnel runs level and straight for a mile, lit every forty paces by a lamp that somebody trims. The dwarves walked this at the end of the last shift, a thousand years ago. By the standards of the road, that was this morning.",
  palette = { bg = "#0d0a08", text = "#cfc6b6", dim = "#6c6052", accent = "#d89848", border = "#40301f" },
  ambience = {
    flicker { color = "#d89848", strength = 0.1 },
    dust { glyphs = "·˙", color = "#564a3c", rate = 0.15, speed = 0.15 },
  },

  things = {
    { name = "the shift door",
      description = "Iron, a hand thick, hung so well that it closed behind you with a sigh. On this side it has a handle. On the mine side it has a bell. A dwarf door is polite in one direction.",
      things = {
        { name = "the handle", description = "At dwarf height, which is the height of your knee. It is worn bright by a thousand years of nobody, having been polished weekly all the same." },
        { name = "a slate on a hook", description = "A tally of everyone through the door this shift. There is one mark on it. Somebody made it very carefully, went back, and made it taller." },
      } },
    { name = "the milestones",
      description = "Every hundred paces, a square stone with a rune. They count down.",
      things = {
        { name = "the first milestone", description = "A rune with many strokes. Under it somebody has scratched, small, in tall-folk letters: {i}long way yet{/}. It is not a dwarf's hand. Somebody tall has been down this road before you." },
        { name = "a milestone halfway", description = "It has a second, smaller stone beside it, with a seat cut in. Halfway is where a dwarf is allowed to sit, once." },
        { name = "the last milestone", description = "It carries the same rune as the plank at the bottom of the mine. Here somebody has carved under it, for travellers: {b}FAR ENOUGH.{/}" },
      } },
    { name = "a lamp-trimmer",
      icon = "☺",
      description = "A dwarf with a ladder, a can of oil, and his beard tucked into his belt. He does the mile out in the morning and the mile back at night. He has met nobody on it in his lifetime, and he is taking you very well.",
      things = {
        { name = "his ladder", description = "Four rungs. It is the tallest ladder on the Low Road and he has a licence for it." },
        { name = "his oil can", description = "Copper, with a spout as fine as a quill. He lets one drop fall into each lamp and counts to three. The lamp, you would swear, counts with him." },
        { name = "his beard", description = "Grey, plaited, and tucked in so that it stays out of the wicks. There is a singed inch at the end from before he learned." },
      },
      actions = {
        { "Say good morning", say "\"Is it?\" he says. He looks at his lamp, then at you. \"Tall,\" he says, having thought about what to open with. He goes back up the ladder. For the road, that was a long conversation." },
        { "Ask how far it is", say "He points at the nearest milestone. Then, seeing that you cannot read it, he holds up some fingers, thinks, and holds up different fingers. \"Far enough,\" he says, and for the first time in your hearing a dwarf nearly smiles." },
        { "Offer to hold the ladder", say "He looks at you, then at the ladder, which is four rungs high and has never been held. He lets you. You hold it. It is the most useful you have been all week." },
      } },
    { name = "the lamps",
      description = "Brass, glass and a steady yellow flame, one every forty paces, as far as you can see in both directions. Not one is out.",
      things = {
        { name = "a lamp, close to", description = "The glass is clean inside and out. On the base, a number and the trimmer's mark. He has signed eleven hundred lamps and can tell you which one this is with his eyes shut." },
        { name = "the lamp niches", description = "Each lamp sits in a niche cut to fit it. The niches were cut first, and the lamps made to the niches, and when you think about that it tells you most of what you need to know about the people ahead." },
      },
      actions = {
        { "Count them", say "You get to sixty and lose your place. Up the tunnel, the trimmer says \"sixty-one\" without turning round." },
      } },
    { name = "the rails",
      description = "The same gauge as in the mine, bright on top. A cart still goes up once a year, to see that the gate sign says {i}BACK SOON{/} and that it is hung straight.",
      things = {
        { name = "the sleepers", description = "Stone, not wood. Each one is numbered. You are not surprised any more." },
        { name = "a points lever", description = "For a siding that was never built. The lever was fitted in case. It is oiled." },
      } },
    { name = "an alcove with a bench",
      description = "For resting. It is cut to the dwarf pattern: you sit, and your knees come up level with your ears.",
      things = {
        { name = "a tin cup on a chain", description = "Under a spring that drips once every nine seconds. The cup is full. It is always full, having been emptied by nobody." },
        { name = "a carved line on the wall", description = "At the height of a dwarf's shoulder: the mark of how deep the bench-cutter's guild thinks a traveller should be allowed to slump." },
      },
      actions = {
        { "Sit", say "You fold yourself onto it. You can see nothing but your own knees. It is surprisingly restful, and you have to be very firm with yourself to get up." },
        { "Drink from the cup", say "Cold, and tasting of the inside of a mountain: stone, iron, and a great deal of patience." },
      } },
    { name = "the walls",
      description = "Dressed stone, every block the same, each with a mason's mark in the corner.",
      things = {
        { name = "a block marked twice", description = "One in each hundred. It was done wrong, and done again, and they left the first mark on so that the mason would have to walk past it." },
        { name = "a seam of white", description = "A vein of quartz crosses the tunnel at a slant, the one thing in a mile that is not square. The masons have cut every block to follow it, exactly, without comment." },
      } },
    { name = "a cave cricket",
      icon = "c",
      description = "White, long-legged, on the wall beside a lamp. It rubs its legs together once every forty paces' worth of time. The trimmer says they set the lamps by it, and you cannot tell if that was a joke.",
      actions = {
        { "Listen to it", say "{i}Tk.{/} A long wait. {i}Tk.{/} It is keeping something, and it is not a tune." },
      } },
    { name = "the far end",
      description = "A long way down the tunnel the lamps stop being a line and become a glow, low and red, with a sound in it that you take at first for your own pulse. It is hammers.",
      variants = {
        { when = visited "plumb_square",
          description = "A long way down the tunnel the lamps become a red glow, with the beat of the Great Forge in it. You know the beat now. You catch your feet keeping it." },
      } },
    { name = "the draught",
      description = "It moves toward the city at walking pace, carrying the smell of the mine one way and, when it turns at shift change, hot iron and frying mushrooms the other." },
  },

  exits = {
    { to = "old_mine", label = "The shift door", description = "Back through the iron door to the Longshift, the cage and the tools on their pegs." },
    { to = "dwarf_gate", description = "A level mile, counting down, to where the glow is." },
  },
}

space {
  id = "dwarf_gate",
  region = "far_enough",
  name = "The Gates of Far Enough",
  description = "Two doors of black iron, sixty feet high, in a wall of living rock. They are for show, and have not been opened since they were hung. Everybody uses the small door in the left one, which is four feet tall.",

  things = {
    { name = "the gatewarden",
      icon = "♜",
      description = "Sergeant Bolla Underkettle, in mail, behind a stone desk, with a visitors' book. The book is open at the first page. She has been on this gate for a hundred and ten years and has been ready for you the whole time.",
      variants = {
        { when = item "hard_hat",
          description = "Sergeant Bolla Underkettle, in mail, behind a stone desk. She keeps looking at the helmet on your head, to see that it is still level. It is not. She has decided to bear it." },
      },
      things = {
        { name = "her mail", description = "Every ring closed with a rivet the size of a poppy seed. She made it herself, as every warden does. It took her nine years and she failed the first one." },
        { name = "her beard", description = "Red going grey, in two plaits, with an iron ring on each. It is a sergeant's beard and it has seen off recruits." },
        { name = "her axe", description = "Leaning on the desk. The edge is in a leather cover with a buckle, and the buckle has rusted shut, which she regards as a good record." },
      },
      actions = {
        { "Sign the visitors' book", once = true, give "hard_hat",
          say "You write your name under the three. She blots it and reads it twice. Then she goes to a cupboard, blows the dust off something, and puts it on your head. It is {gold}a helmet{/}, the largest they have, kept for visitors, and it has been waiting some centuries for one. \"There's a mountain up there,\" she says, pointing at the roof. \"Bits come off.\"" },
        { "Explain that you are an adventurer", say "\"We had one,\" she says. \"He went up to see what was there. He came back and opened a shop.\" She looks at you without unkindness. \"Good shop.\"" },
        { "Ask about the great doors", say "\"They open,\" she says, a little sharply. \"They'd open. They've never needed to.\" She looks up at sixty feet of iron. \"Nobody's come that was that big.\"" },
        { "Ask why the city is called Far Enough", say "\"Because it is.\" You wait. So does she. Dwarves, you are learning, do not think an answer improves by being longer." },
      } },
    { name = "the visitors' book",
      description = "Bound in grey leather with iron corners, on a stand of its own. It was begun when the gates were hung. There are three names in it.",
      variants = {
        { when = item "hard_hat",
          description = "Bound in grey leather with iron corners. There are four names in it now. Yours is the fourth, and the only one that slopes." },
      },
      things = {
        { name = "the first name", description = "A king of the tall folk, six hundred years back. Under {i}purpose of visit{/} he wrote {i}conquest{/}. Under {i}remarks{/}, in a different ink and a looser hand: {i}lovely beer{/}." },
        { name = "the second name", description = "A troll, in a small neat hand: {i}Enquiring after a bridge. Told to come back when I had a river.{/}" },
        { name = "the third name", description = "{i}M. Pargeter. To see how it's done properly.{/} Under {i}remarks{/}: {i}It is. Thank you for the kettle.{/}" },
        { name = "the column for complaints", description = "Ruled, headed, and empty all the way down. The Sergeant shows it to you twice." },
      } },
    { name = "the great doors",
      description = "Black iron in forty panels, each showing a scene from the digging of the city. You have to stand well back to see the top ones, and then you cannot make them out.",
      things = {
        { name = "the first panel", description = "One dwarf, one pick, and a mountain. The mountain has been given an expression. It is not pleased." },
        { name = "a panel halfway up", description = "A great cavern, and dwarves measuring it with a rod, a line and a level. One of them is holding up a hand: enough." },
        { name = "the last panel", description = "The dwarves are putting down their tools. They are not looking at whatever is in front of them. The panel after it has been left smooth." },
        { name = "the hinges", description = "Each one is the size of a cart. They have never turned, and they are greased on the first of every month by a dwarf on a rope, who says they are ready." },
      },
      actions = {
        { "Push them", say "You lean on sixty feet of iron. The Sergeant watches with interest. \"There's a bar,\" she says, after a fair interval. \"On the other side. It takes forty.\"" },
      } },
    { name = "the small door",
      description = "Four feet tall, set in the foot of the left-hand great door, with a brass knocker in the shape of a fist. This is the gate of Far Enough. The other sixty feet is the frame.",
      things = {
        { name = "the knocker", description = "Polished by use. It knocks back, once, a moment after you do. That is the latch. You jumped anyway." },
        { name = "the threshold", description = "Worn into a dip by a city going in and out to work. You will have to bend. The helmet, you now see, is for that as well." },
      } },
    { name = "the height gauge",
      description = "A brass rule on the door post with a line and the words {b}YOU MUST BE NO TALLER THAN THIS{/}. Somebody has added a second line, much higher, labelled {i}or mind your head{/}.",
      actions = {
        { "Stand against it", say "You are taller than the first line, the second line, and the gauge. The Sergeant makes a mark on the rock above it, with chalk, on tiptoe, and writes the date." },
      } },
    { name = "the cupboard",
      key = "visitor cupboard",
      description = "Stone, with an iron door, behind the Sergeant's desk. A label: {i}VISITORS, EQUIPMENT FOR{/}.",
      things = {
        { name = "an empty peg", visible_if = item "hard_hat",
          description = "Where the helmet hung. It left a clean ring in the dust, and the Sergeant has already dusted the ring." },
        { name = "a pair of visitor's boots", description = "Iron-shod and enormous by local standards. They would fit a child of nine. They have been tried, the Sergeant says, on the troll." },
        { name = "a folded map of the city", description = "Carved on a slate, so it does not fold. The label says it folds. Nobody has had cause to find out." },
        { name = "a phrase book", description = "{i}Useful Sayings for the Tall.{/} Page one: {i}Mind your head. Not there. Yes, that is load-bearing. Mind your head.{/}" },
      } },
    { name = "two gate guards",
      icon = "♜",
      description = "One each side of the small door, in mail, with axes grounded. They are the same height to the width of a hair. It is a condition of the post.",
      things = {
        { name = "the left guard", description = "He is looking straight ahead, which puts his eyes on your belt buckle. He is giving it his full attention." },
        { name = "the right guard", description = "She is the taller of the two, by the hair. She has had her boots thinned." },
      },
      actions = {
        { "Salute", say "They bring their axes up together, with one sound, and ground them with one sound. The Sergeant listens, and nods, and writes something down. It was a test, and not of you." },
      } },
    { name = "the tradesmen's door",
      description = "A plain door in the rock beside the gates, with a boot scraper. It comes out, the Sergeant says, on the pass, round the back of a troll. \"He's all right. He takes the post.\"",
      things = {
        { name = "the boot scraper", description = "Iron, in the shape of a small mountain. You scrape. It feels like winning." },
        { name = "a post box", description = "A slot in the rock with a brass flap: {i}UP{/}. Under it a second slot: {i}DOWN{/}. A sack hangs under the second one. It has a letter in it, addressed in thick pencil to {i}the Dwarves, Underneath{/}." },
      } },
    { name = "the wall of living rock",
      description = "The mountain itself, dressed flat for a hundred feet each side of the doors and then allowed to be a cave again. The join between the two is ruled.",
      things = {
        { name = "an arrow slit", description = "One, high up, the regulation width. Behind it, the Sergeant says, there is a room, a stool, and a crossbow. The post has been filled every shift since the founding. It is considered restful." },
        { name = "a patch of glowmoss", description = "Green-gold, on the undressed rock, giving a light you could read large print by. It is not allowed on the dressed part. It has stopped at the ruled line, exactly, by itself." },
      } },
    { name = "a bat",
      icon = "v",
      description = "Hanging from the lintel of the great doors, sixty feet up, the only creature ever to use them at their full height. It has been entered in the book of residents under {i}doorkeeper, upper{/}.",
      actions = {
        { "Wave at it", say "It unfolds one wing, looks at you with the side of its face, and folds the wing again. You have been admitted." },
      } },
  },

  exits = {
    { to = "deep_road", description = "Back along the level mile to the shift door and the mine." },
    { to = "plumb_square",
      description = "Through the four-foot door, bending, into lamplight and the sound of hammers.",
      requires = item "hard_hat",
      locked = "\"No hat, no city. There is a mountain on top of it.\"" },
    { to = "toll_pass", label = "The tradesmen's door",
      say "A long stair, cut for shorter legs, and then daylight and the back of a troll's head. He does not turn round. \"Post?\" he says.",
      description = "Up a long stair and out onto the pass, behind the troll." },
  },
}
