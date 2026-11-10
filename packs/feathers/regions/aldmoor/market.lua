space {
  id = "market",
  region = "aldmoor",
  name = "Aldmoor Market",
  description = "Everything is for sale here, and most of it was somebody else's this morning.",

  on_enter = function(ctx)
    if not ctx:visited("market") then
      ctx:say("The sergeant takes your coin, bites it, nods, and hands it back. \"Just checking you had one.\"")
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
        { name = "Gribbert", description = "An alchemist in the sense that he owns bottles.",
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
  },

  exits = {
    { to = "aldmoor_gate" },
    { to = "nobles_row" },
    { to = "temple_quarter" },
    { to = "great_drain", label = "The grate",
      description = "Down through the grate, by rungs that someone has kept suspiciously free of rust.",
      requires = item "crowbar",
      locked = "the grate is rusted shut" },
  },
}
