space {
  id = "village_square",
  region = "greenhollow",
  name = "Village Square",
  description = "A muddy square, a well, and a notice board nobody reads. This is where adventures begin, according to the notice board.",
  variants = {
    { when = flag "rope_pulled",
      description = "A muddy square, a well, and a notice board nobody reads. Everyone is looking towards the chapel, where a bell has just, very loudly, not rung." },
  },
  backdrop = {
    "                        ▲            ",
    "       ⌂        ▄█▄    ▲▲▲     ⌂     ",
    "  ⌂   ▄█▄  ⌂   █████   ███    ▄█▄  ⌂ ",
  },

  on_enter = function(ctx)
    if not ctx:visited("village_square") then
      ctx:say("You have arrived: one adventurer, lightly equipped, heavily optimistic. A goose regards you.")
    end
  end,

  actions = {
    { "Shout \"Adventure!\"", say "A shutter closes. Then another. Somewhere, a door is quietly barred." },
    { "Take stock of your equipment", say "Boots: two. Sword: pending. Destiny: unconfirmed." },
  },

  things = {
    { name = "the old well",
      description = "Deeper than the village's patience. Someone has carved {whisper}no wishes{/} on the rim.",
      things = {
        { name = "a bucket",
          description = "It has seen things. Mostly water.",
          actions = {
            { "Haul it up", once = true, give "copper_coin",
              say "Water, a frog with a grievance, and at the very bottom, a {gold}bent copper coin{/}. Your first treasure." },
            { "Haul it up", say "Water. The frog has moved on with its life." },
          } },
        { name = "the carving",
          description = "Under {whisper}no wishes{/}, in smaller letters: {whisper}we mean it, Gerald{/}." },
      },
      actions = {
        { "Make a wish", say "You wish for glory. The well gives you an echo, slightly sarcastic." },
        { "Drop a stone in", say "You count to nine. The splash, when it comes, sounds offended." },
      } },

    { name = "the notice board",
      description = "The beating heart of local adventure. It has not been updated since the last heart stopped.",
      things = {
        { name = "a quest notice",
          description = "{b}HEROES WANTED.{/} Rats in cellar. Reward: the rats." },
        { name = "an older quest notice",
          description = "{b}HEROES WANTED.{/} Previous heroes missing. Reward: their boots, if found." },
        { name = "a lost-goose notice",
          description = "{b}LOST: ONE GOOSE.{/} Answers to nothing. Do not approach. Do not {i}be{/} approached." },
        { name = "a very small notice", key = "small notice",
          visible_if = flag "heard_about_baroness",
          description = "Tucked behind the others: {whisper}the Baroness's study is not where the Baroness says it is{/}." },
      },
      actions = {
        { "Look for your name", say "It isn't there. Yet, you tell yourself. The board has heard that before." },
      } },

    { name = "Old Marta",
      icon = "☺",
      description = "She sells onions and judgement. The onions cost a smile; the judgement is free.",
      variants = {
        { when = item "onion",
          description = "She sells onions and judgement. You have had one of each." },
      },
      things = {
        { name = "her onion cart", description = "A wheelbarrow with ambitions. Every onion in it is the best one." },
        { name = "her opinion of you", description = "Being formed. Check back." },
      },
      actions = {
        { "Talk", say "\"Adventurer, are you? We get one a month. The boots usually come back.\"" },
        { "Smile at her", once = true, give "onion",
          say "It comes out wrong, but she has seen worse, and presses an {gold}onion{/} into your hand like a verdict." },
        { "Ask about the Baroness", once = true, set "heard_about_baroness",
          say "\"Up in Aldmoor? All hedge and no garden, that one. Keeps a study nobody's allowed in. So they say on the board.\" She nods at it, and something small flutters there." },
        { "Tell a joke", say "She has heard it. She was there when it was invented. She did not laugh then either." },
      } },

    { name = "a goose",
      icon = "γ",
      description = "White, composed, and built entirely out of grudges. It has not blinked since you arrived.",
      variants = {
        { when = flag "goose_respects_you",
          description = "White, composed, and built entirely out of grudges. It has blinked once, slowly. Among geese, this is a treaty." },
      },
      actions = {
        { "Stare back", when = no(flag "goose_respects_you"), set "goose_respects_you",
          say "You hold its gaze for one full minute. Villagers have retired on less.", fx "flash" },
        { "Stare back", say "No need. You and the goose understand one another now, which is worse." },
        { "Pet it", say "You reach out. You think better of it. The goose notes that you thought better of it." },
      } },
  },

  exits = {
    { to = "tipsy_griffon" },
    { to = "mill_lane" },
    { to = "chapel" },
    { to = "barley_road", description = "The way out of the village: fields, sky, and the firm promise of a town." },
  },
}
