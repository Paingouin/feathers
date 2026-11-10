space {
  id = "quiet_monastery",
  region = "grumbles",
  name = "The Monastery of the Held Tongue",
  description = "A courtyard of grey stone hung on the side of the mountain, swept so clean that the snow seems embarrassed to land. Monks cross it in felt slippers. Nobody speaks. It is not a peaceful silence. It is forty men not saying something.",

  things = {
    { name = "Brother Porter",
      key = "porter",
      icon = "☻",
      description = "A round monk at a small desk, with a slate on a cord round his neck and a look of tremendous goodwill, firmly held in. He writes {b}WELCOME{/} on the slate, shows you, wipes it, and writes {b}SHHH{/}.",
      things = {
        { name = "his slate", description = "Grey with wiping. Under today's words you can make out years of others, all short, a good many of them {b}SHHH{/}." },
      },
      actions = {
        { "Talk", say "You say good morning. Forty heads turn. A dove leaves. Brother Porter writes, quite fast: {i}We heard you the first time. We hear everything.{/}" },
        { "Ask about the vow", say "He writes: {i}Silence, since the founding. The Founder said all that needed saying.{/} He wipes it, and adds, smaller: {i}Then he said some more. Then we took the vow.{/}" },
        { "Mention the gorge", when = all { flag "heard_monks", no(flag "knows_shouting_room") }, set "knows_shouting_room",
          say "You tell him what the echo said. Brother Porter goes pink from the collar upwards. He writes {b}NO{/}, wipes it, writes {b}WHO TOLD{/}, wipes that, and sits for a moment. Then, very small: {i}Thursdays. Under the refectory. Wipe your feet.{/}" },
      } },
    { name = "the lamp shelf",
      key = "lamp shelf",
      description = "A row of brass storm lanterns by the gate, for brothers who must go out after dark. A card: {i}Borrow freely. Return eventually. We will not say anything.{/}",
      variants = {
        { when = flag "lantern_taken",
          description = "A row of brass storm lanterns with a gap in it. The gap is being noticed." },
      },
      actions = {
        { "Borrow a lantern", when = no(flag "lantern_taken"), give "lantern", set "lantern_taken",
          say "You take one down. A passing monk looks at the gap, then at you, and nods. It is the loudest thing that has happened here today." },
      } },
    { name = "the great bell",
      description = "It hangs in the gate tower with no rope and no clapper. It was cast, blessed, and hauled up the mountain by forty men, and it has never been rung. The brothers are extremely proud of it.",
      actions = {
        { "Flick it", say "You get as far as raising a finger. Thirty-nine monks and one dove are looking at you. You scratch your ear instead." },
      } },
    { name = "the notice board",
      description = "Where nobody speaks, everything is written down. The board is three layers deep.",
      things = {
        { name = "a notice", description = "{i}To whoever is HUMMING in the east corridor: we know.{/}" },
        { name = "a reply", description = "Pinned across the first: {i}It is the wind.{/}" },
        { name = "a reply to the reply", description = "{i}The wind does not know the second verse.{/}" },
      } },
    { name = "a monk with a broom",
      description = "He is sweeping the snow off the courtyard. It is snowing. He is not hurrying, and he is not behind.",
      actions = {
        { "Watch", say "A flake lands. He sweeps it. A flake lands. You leave before you understand it, in case you do." },
      } },
  },

  exits = {
    { to = "high_col", description = "Out by the gate, where you may breathe as loudly as you like." },
    { to = "shouting_room", label = "The stair under the refectory",
      description = "Past the long tables and down, behind a door padded on the inside.",
      requires = flag "knows_shouting_room", hidden = true },
  },
}

space {
  id = "shouting_room",
  region = "grumbles",
  secret = true,
  name = "The Shouting Room",
  description = "A cellar cut deep in the rock and lined, floor, walls and ceiling, with straw mattresses. One lamp. One row of hooks for habits. It is the only room in the monastery where anything has ever been said, and all of it was said very loudly.",
  palette = { bg = "#12100a", text = "#d6ceb6", dim = "#787058", accent = "#e0c060", border = "#4a4226" },
  ambience = {
    flicker { color = "#e0c060", strength = 0.1 },
  },

  actions = {
    { "Shout", fx "shake",
      say "You shout. You shout about the bed, and the gate tax, and the goat that out-stared you. The mattresses take every word. You feel wonderful. Somewhere below, the gorge adds you to the list." },
  },

  things = {
    { name = "the mattresses",
      description = "Stitched edge to edge and stuffed tight. Put your ear to one and you hear nothing whatever. That is what they are for." },
    { name = "the schedule",
      description = "A slate by the door: {i}Thursdays, after compline. Novices, ten minutes. Brothers, twenty. The Abbot, as required.{/} Beside the Abbot's line somebody keeps a tally. It is a long tally." },
    { name = "a shelf",
      description = "Honey, a jug of water, and a tin of lozenges. The brothers look after their instruments." },
    { name = "a crack in the rock",
      wonder = true,
      description = "Behind a mattress that has slipped: a crack running back into the mountain, and a cold draught going down it. This is where the shouting gets out. {magic}Forty years of Thursdays have gone down that crack to the gorge{/}, which hands them back to strangers, one at a time, with no explanation.",
      actions = {
        { "Whisper into it", say "You whisper something you have not told anyone. The draught takes it. It will come out one day, down there, in your voice, to somebody who will not know what to do with it either." },
      } },
  },

  exits = {
    { to = "quiet_monastery", label = "The stair up", description = "Up, in borrowed quiet, saying nothing." },
  },
}
