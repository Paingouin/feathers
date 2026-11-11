space {
  id = "market",
  region = "aldmoor",
  name = "Aldmoor Market",
  description = "Everything is for sale here, and most of it was somebody else's this morning.",

  on_enter = function(ctx)
    if not ctx:visited("market") then
      ctx:say("Noise, awnings, elbows. Within ten paces you have been offered a potion, a relic, and a fight.")
    end
  end,

  things = {
    { name = "the fountain",
      wonder = true,
      icon = "≈",
      description = "Aldmoor's fountain {shimmer}flows upward{/}: out of the basin, into the stone dolphin's mouth, and away. The town is rather embarrassed about it and has put up a sign reading {whisper}UNDER REPAIR{/}, in a style of lettering four centuries old.",
      things = {
        { name = "the basin", description = "Always full, never filled. Coins thrown in rise gently and are not seen again. The Council taxes them anyway, on principle." },
        { name = "the stone dolphin", description = "It looks as surprised as you are." },
      },
      actions = {
        { "Throw in a wish", say "You mime it, having one coin and a use for it. The water goes up regardless. It is not doing this for you." },
        { "Put your hand in", say "The water climbs your fingers like something friendly and leaves them dry.", fx "sparkle" },
      } },
    { name = "a potion stall",
      icon = "¡",
      description = "\"Gribbert's Genuine Elixirs.\" The word Genuine has been painted over twice and reinstated once.",
      things = {
        { name = "a red potion", description = "Label: {danger}HEALING{/}. Smaller label: {whisper}or similar{/}." },
        { name = "a blue potion", description = "Label: {magic}MANA{/}. It is blueberry cordial. It is very good blueberry cordial." },
        { name = "a green potion", description = "Label: {whisper}do not{/}. Just that." },
        { name = "Gribbert", description = "An alchemist, on the grounds that he owns bottles.",
          actions = {
            { "Ask what's in them", say "\"Trade secrets,\" he says, with the confidence of a man who also doesn't know." },
            { "Ask for a free sample", say "He gives you a look instead. It is surprisingly restorative." },
          } },
      } },
    { name = "a relic stall",
      description = "\"Authentic Relics of the Saints.\" Fourteen of Saint Wobble's left hands, at various prices.",
      things = {
        { name = "a left hand of Saint Wobble", description = "The cheapest. It has six fingers. \"She was very holy,\" says the stallholder." },
        { name = "a jar of holy wobble", description = "You tilt it. It tilts back. You put it down." },
        { name = "the stallholder", description = "Brother Fennick, formerly of the temple, unfrocked for enterprise. He can do you a hand for sixpence or a whole saint by instalments.",
          actions = { { "Ask how many hands she had", say "\"The saint was a very giving woman,\" he says. \"She gave and she gave.\"" } } },
        { name = "the odd one out",
          key = "odd hand",
          description = "At the back, in a tarnished silver case, behind the fourteen lefts: a right hand. It is small, brown, and very plain, and it is the only thing on the stall that nobody has dusted.",
          variants = {
            { when = item "saints_hand",
              name = "a gap at the back of the stall",
              description = "Where the silver case was. Brother Fennick has moved a left hand into it. Trade has picked up. Something about the stall is less steady than it was." },
          },
          actions = {
            { "Ask about the odd one", once = true, give "saints_hand",
              say "He sighs. \"Came with the stock. It's a right. Nobody wants a right, they've all got the left at home and it doesn't match.\" He lowers his voice. \"Also it's real. Puts the customers off. You can feel it looking.\" He pushes the case across the stall with one finger. \"Take it. I'll not charge. I'd not dare.\" You are holding {gold}the Right Hand of Saint Wobble{/}, and the cobbles under you have gone remarkably firm." },
          } },
      } },
    { name = "the mouth of Elbow Lane",
      description = "Between the cheese stall and a wall, a gap just wide enough for a handcart. A painted hand on the corner points down it: {i}BOOKS. BOOTS. MAGIC. THE WATCH.{/} In that order." },
    { name = "a cheese stall",
      description = "Wheels, wedges, and a smell that has its own pitch fee.",
      things = {
        { name = "a Grumbles blue", description = "Goat's milk, from the hut on the snow line. It is veined like a map and is said to grumble back if you press it." },
        { name = "the cheesemonger", description = "A calm, wide woman with a wire. She cuts exactly what you ask for, to the ounce, and looks at you while she does it.",
          actions = { { "Ask for a taste", say "A sliver, on the wire. It is sharp, then sweet, then it mentions the mountain. You have no money. She knew. She wanted you to know what you are missing." } } },
        { name = "a cheese under a bell", description = "Kept apart. It is from Underrib, on the moor. It has been ripening since before the stall and has been offered a seat on the Council." },
      } },
    { name = "a fishwife from Saltwick",
      description = "With a barrow of herring on ice and a voice that reaches the castle.",
      variants = {
        { when = flag "tide_out",
          description = "With a barrow of herring and a voice that reaches the castle. The price has doubled. \"Tide's gone,\" she says. \"Some fool signed it out. The boats are sat on the mud like hens.\" You admire a herring very closely." },
      },
      things = {
        { name = "a herring", description = "Silver, bright-eyed, and fresher than anything else in Aldmoor, including the news." },
      } },
    { name = "a puppet show",
      description = "A striped booth with a crowd of children. The play is {i}The Adventurer and the Goose{/}. The adventurer is losing.",
      things = {
        { name = "the adventurer puppet", description = "A wooden head, a tin sword, a very hopeful expression. It has been mended a great many times." },
        { name = "the goose puppet", description = "White, with real feathers and a hinged beak. The children cheer for it. One small boy is in tears and has to be taken out." },
      },
      actions = {
        { "Watch to the end", say "The goose gets the sausages, the adventurer's hat, and, in an ending that seems to have been added by popular demand, the adventurer's house. The children go wild. You clap, for solidarity, slightly late." },
      } },
    { name = "the weigh house",
      description = "A little stone building in the middle of the market with the town's official weights inside it.",
      things = {
        { name = "the standard pound", description = "Brass, under glass. Every pound in Aldmoor is checked against it. It is slightly light, which is how the town was paid for." },
        { name = "the standard yard", description = "An iron bar, set in the wall. It is said to be the length of the first mayor's stride. He was running at the time." },
      } },
    { name = "the market cross",
      description = "A stone pillar on four steps. Proclamations are read from the top one. Fish is gutted on the bottom one.",
      things = {
        { name = "a carved face", description = "On the shaft, worn almost smooth: a man with his mouth open. People touch his nose for luck in a bargain. He has very little nose left, and the bargains are about the same." },
      } },
    { name = "a flower seller",
      description = "A girl with a basket of violets and one enormous sunflower that she will not sell, because it turns to follow the fountain and she finds that sad." },
    { name = "the pigeons",
      description = "Aldmoor grey, fat on crumbs. They walk between the stalls as if they had stalls of their own to get back to.",
      actions = {
        { "Scatter them", say "They go up all together with a noise like applause, circle the cross once, and come down in exactly the same places. One lands on you." },
      } },
    { name = "a scribe",
      description = "At a folding desk under an umbrella: letters written, forms filled, regulations explained by the hour.",
      actions = {
        { "Ask him to explain a regulation", say "\"Which?\" Any. He picks one. He is still going when the fishwife packs up. You come away knowing that it is forbidden, but not what." },
      } },
    { name = "a man in a hurry",
      icon = "¿",
      description = "Thin, quick, and looking at everyone's pockets the way a gardener looks at beds.",
      variants = {
        { when = item "invitation",
          name = "a man no longer in a hurry",
          description = "He is patting his coat with a growing sorrow. Something that was in it is not in it. He is new to the feeling." },
      },
      actions = {
        { "Bump into him", once = true, give "invitation",
          say "You collide. When you part, he has your dignity, and you, by some accident of sleeves, have {gold}an invitation{/} that was in his coat. For once the mathematics favours you." },
        { "Apologise", when = item "invitation", say "\"No harm done,\" he says, patting faster." },
      } },
    { name = "the grate",
      key = "grate",
      description = "An iron grate in the cobbles, rusted to its frame. From below comes a smell with a history, and the sound of water going somewhere on purpose.",
      variants = {
        { when = item "crowbar",
          description = "An iron grate in the cobbles. It was rusted shut. It has seen your crowbar, and is reconsidering." },
      },
      actions = {
        { "Peer down", say "Dark. Then, a long way off, something like a ripple of light on a ceiling. A big ceiling." },
      } },
    { name = "a tea stall",
      description = "A copper urn, six cups on hooks and a chest stamped with a small tree. The stallholder swears that it is nettle, grown locally. It is a penny a cup, and nobody in Aldmoor has ever seen a nettle that smelled of somewhere warm.",
      things = {
        { name = "the chest", description = "Lead-lined. The stamp has been scratched at, and a label pasted over: {i}PRODUCE OF GREENHOLLOW{/}. A corner of the label has lifted in the steam." },
        { name = "the urn", description = "It has a tap, a dent, and a small fire under it that the market wardens pretend not to see, there being a regulation." },
      },
      actions = {
        { "Ask where it comes from", say "\"Nettles,\" says the stallholder. You wait. \"From a man,\" she says. You wait. \"Who has it from a man with a barrow, who has it from the sea.\" She pours you a cup for nothing, the way people do when they would like the questions to stop. It is extremely good." },
      } },
    { name = "a hat stall with no hats",
      description = "A bare trestle, a mirror and a sign: {i}POMFRET & SON, HATTERS. Est. long since.{/} The son is behind it, aged seventy, with nothing to sell. His father took the stock abroad thirty years ago to find a market and writes that he has found one.",
      things = {
        { name = "a letter pinned to the trestle", description = "{i}Dear boy. Trade is brisk. Send every nightcap in the county. Do not ask why. Yr loving father, O. Pomfret. P.S. I have a veranda.{/}" },
        { name = "the mirror", description = "For trying on. You look into it bare-headed. It does what it can." },
      } },
    { name = "a knife grinder",
      description = "A man with a wheel on a barrow, and a treadle, sending up sparks. He will put an edge on anything. He has a waiting list for the Watch's halberds, which have not had one since they were issued.",
      actions = {
        { "Ask him to sharpen your sword", say "You have no sword. You offer him your pocket knife. He looks at it with pity, does it in four strokes, and tests it on a hair from his own arm. \"There,\" he says. \"Now it's dangerous. Mostly to you.\"" },
      } },
  },

  exits = {
    { to = "aldmoor_gate" },
    { to = "nobles_row" },
    { to = "temple_quarter" },
    { to = "elbow_lane", description = "Down the gap by the cheese stall, where the town keeps its shops and its people." },
    { to = "market_inn", description = "Under a sign of three scrolls, through a door that is never shut." },
    { to = "great_drain", label = "The grate",
      description = "Down through the grate, by iron rungs that nobody has trusted in years.",
      requires = item "crowbar",
      locked = "the grate is rusted shut" },
  },
}
