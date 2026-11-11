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
        { name = "a notice about a star",
          description = "{b}SEEN: ONE STAR, FALLING.{/} Eleven nights back, north over Hobmoor. Anyone finding same is asked to return it. Added below in another hand: {whisper}it's on Holloway's turnips, penny a look{/}." },
        { name = "a notice from the sexton",
          description = "{b}ADVENTURERS{/} are asked to leave their height with A. Clay at the chapel before setting out. {whisper}It saves time.{/}" },
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

    { name = "the mud",
      description = "The square's oldest resident. It was here before the village, and the village was built round it out of respect.",
      things = {
        { name = "a boot, stuck",
          description = "A left boot, upright, laced. Its owner walked on, the story goes, and was three streets into Aldmoor before he noticed.",
          actions = {
            { "Pull it out", say "The mud lets you have it as far as the ankle and then takes it back. That was a courtesy." },
          } },
        { name = "a plank walkway",
          description = "Laid from the tavern towards the well by popular demand. It stops a yard short of the well, where the money did." },
      } },

    { name = "the stocks",
      description = "Oak, two holes for the wrists and one for the head. Unused in forty years, except by children and, on Sundays, the tavern cat.",
      things = {
        { name = "a carved tally",
          description = "The last occupant marked his days on the beam. Three strokes, then {i}it's not so bad{/}, then a small drawing of a pie that somebody brought him." },
      },
      actions = {
        { "Try them for size", say "You fit. The village watches you get your head out again, which takes rather longer." },
      } },

    { name = "the market cross",
      description = "A stone pillar on three steps, where a market would be held if anyone here had anything the others did not also have.",
      things = {
        { name = "the sundial on top",
          description = "It reads a quarter past something. The pointer was borrowed to fix a gate." },
        { name = "the steps",
          description = "Worn hollow by four centuries of people sitting down to wait for a market." },
      } },

    { name = "two old men on a bench",
      description = "Jeb and Old Jeb, no relation. They have sat here every day since they were Young Jeb and Jeb, watching adventurers leave.",
      things = {
        { name = "their draughts board",
          description = "A game in progress, played with buttons and bottle tops. Neither has moved since the spring. Each is waiting for the other to make a mistake, or die." },
        { name = "Old Jeb's hat",
          description = "Felt, shapeless, older than Jeb. He recommends hats to everybody. Nobody has ever seen him take this one off, so it may be less of a recommendation than a warning." },
      },
      actions = {
        { "Ask for advice", say "\"Don't,\" says Jeb. \"Take a hat,\" says Old Jeb. They look at each other. It is the nearest they have come to a quarrel in sixty years." },
        { "Ask what they have seen", say "\"One a month, going out,\" says Jeb. \"Boots, coming back,\" says Old Jeb. \"Not always the same boots,\" says Jeb, to be fair." },
      } },

    { name = "the chestnut tree",
      description = "It shades a third of the square and drops conkers on the rest.",
      things = {
        { name = "a rook's nest",
          description = "High up, untidy, occupied. The rook looks down at you and says one word. It sounded like an estimate." },
        { name = "initials in the bark",
          description = "Hearts, arrows, and forty years of who loved whom. One pair has been scratched out and recarved three times. It is the same two sets of initials each time." },
        { name = "a conker",
          description = "Glossy, brown, perfect. In your pocket it would be dull by tomorrow. You leave it its day." },
      },
      actions = {
        { "Climb it", say "You get to the first branch. The view is of the square, from slightly higher. A child on the branch above tells you that you are doing it wrong." },
      } },

    { name = "the cottages",
      description = "Thatch, whitewash, and curtains that move when you look at them.",
      things = {
        { name = "a window box",
          description = "Geraniums, red, fiercely kept. A card stuck in the soil says {i}I KNOW HOW MANY THERE ARE{/}." },
        { name = "a door with a horseshoe",
          description = "Nailed points down. The luck has been running out onto the step for years, which makes the step the luckiest place in Greenhollow. A cat sleeps on it." },
        { name = "a twitching curtain",
          description = "Somebody is watching you.",
          actions = {
            { "Wave", say "The curtain goes still, in an embarrassed way. Three doors down, another one starts." },
          } },
      } },

    { name = "the big puddle",
      wonder = true,
      icon = "≈",
      description = "By the cross. It has never dried, not even in the drought year. {magic}It shows the square as it was this morning.{/} You can see yourself in it, arriving, looking pleased.",
      actions = {
        { "Step in it", say "Your boot goes in to the lace. In the puddle, this morning's you walks on, dry, not having learned yet." },
      } },

    { name = "the duck pond",
      description = "Green at the edges, with six ducks and a rule.",
      things = {
        { name = "the ducks",
          description = "Six. They keep to the far side from the goose. There is a line across the water that you cannot see and they can." },
        { name = "a toy boat",
          description = "Becalmed in the middle. A small boy on the bank has been waiting for it since breakfast, with a patience you find humbling.",
          actions = {
            { "Rescue the boat", say "You wade in. The pond is deeper than a pond that size has any right to be. You return the boat. The boy thanks you and puts it straight back." },
          } },
        { name = "a dragonfly",
          description = "Blue, a finger long, parked on a reed. It is the most dangerous thing in Greenhollow, if you are a gnat." },
      } },

    { name = "the horse trough",
      description = "Stone, mossy, full. A carthorse is drinking from it and taking his time.",
      things = {
        { name = "the carthorse",
          description = "Brown, vast, and called Captain. He pulls the miller's cart and regards everything else as none of his business.",
          actions = {
            { "Pat him", say "He allows it. A hoof the size of a plate shifts an inch nearer your foot, for your information." },
          } },
        { name = "a newt",
          description = "In the trough, under the weed, hanging in the water with its legs out. It has the whole thing to itself and knows it." },
      } },

    { name = "the crier's post",
      description = "An oak post with a hand bell on a hook. Greenhollow has a town crier, by an old charter, and has never had the news to go with him.",
      things = {
        { name = "Ned Peal, crier",
          description = "In a coat that was red, with a bell he has been told not to ring before nine. He cries the news each noon. Yesterday's was that the news would be cried today.",
          things = {
            { name = "his scroll", description = "Blank, and held at arm's length, for the dignity. He knows the news by heart. It is the weather, the price of onions, and the goose." },
            { name = "his hat", description = "Three corners. One has been bitten. He does not go near the pond." },
          },
          actions = {
            { "Ask for the news", say "He rings the bell, though you are a yard away. \"OYEZ. An adventurer has arrived.\" He looks at you. \"That is you. It is fine today. Onions are a smile each.\" He lowers the scroll. \"There is nothing about the goose,\" he says, more quietly. \"There is nothing I am {i}allowed{/} to say about the goose.\"" },
            { "Ask him to cry your name", say "He takes a breath that lifts him onto his toes, and lets it go. \"Not without a deed,\" he says kindly. \"Come back when you have done a deed. Even a small one. I did a man last year for finding a sheep.\"" },
          } },
        { name = "the hand bell", description = "Brass, with a crack. It says {i}clank{/}. In a village where the chapel bell rings yesterday, a bell that only rings badly is thought rather a good one." },
        { name = "the charter, in a frame", description = "Nailed to the post under a square of horn. A king, long ago, granted Greenhollow the right to a crier, a market and a gallows. They took the crier. They are still thinking about the market." },
      } },
    { name = "a hopscotch",
      description = "Scratched in the dry patch by the cross with a stick. The squares go up to nine, and the tenth is labelled {i}HOME{/}.",
      things = {
        { name = "the pebble", description = "Flat, grey, kept in the crook of the chestnut between games. It is the same pebble their mothers used. It knows the way." },
        { name = "a square with a puddle in it", description = "Number six. You have to hop it. Everyone's left sock in Greenhollow is a slightly different colour from the right." },
      },
      actions = {
        { "Have a go", say "One, two, three, four, five. You clear the puddle. Seven, eight, nine, {i}HOME{/}. It is the first quest you have completed. A small girl tells you that you trod on a line at four, and that it does not count." },
      } },
    { name = "the lamp post",
      description = "Greenhollow has one street lamp, bought by subscription, and nobody to light it. It is lit all the same, every dusk, by whoever is passing with a taper and a conscience.",
      things = {
        { name = "the glass", description = "Four panes, one cracked, one replaced with the bottom of a jam jar. At night the lamp throws a ring of jam-coloured light on the mud, and moths queue for it." },
        { name = "a moth, early", description = "Brown, furry, asleep on the iron, with its wings shut like hands. It has come hours before time to be sure of a place." },
      } },
    { name = "the smell of bread",
      description = "It comes round the corner from the back of the tavern at this hour and crosses the square like a person. Jeb and Old Jeb turn their heads to watch it go by." },
    { name = "a pair of very long stockings on the cross",
      description = "Draped over one arm of the market cross to dry: grey wool, knitted in the round, long enough to reach a tall man's hip. They are not Greenhollow stockings. There is a tide mark at the knee and another at the thigh.",
      things = {
        { name = "their owner", description = "On the step of the cross, barefoot, with his feet in the sun and a look of great peace: a long thin man with a bucket-headed mallet beside him. He has come in from the west for stone. He says he comes every year, and sits here an hour first, to get used to ground that stays." },
        { name = "a cut stone in his barrow", description = "Grey, squared, a foot across, with a small fish chiselled on the top. He gets nine a trip from the old quarry behind the mill. He does not say what he is building. He says it is a thing you would walk on, with luck." },
      },
      actions = {
        { "Ask how the building goes", say "\"Finished Tuesday week,\" says the long man, and wriggles his toes. \"Then it was Wednesday.\" He looks round the square, the well, the mud, the goose, with deep admiration. \"You don't know what you've got here,\" he says. \"You could put a thing down and find it there in the morning.\"" },
      } },
    { name = "house martins at the big puddle",
      description = "A dozen small blue-black birds with white rumps, down at the edge of the puddle, taking mud. Each gets a beakful and goes up under the eaves of the cottages, where there is a row of half-built cups. They need a thousand beakfuls a nest. The village would have filled in that puddle years ago, except that every May somebody says, wait till the martins have done.",
      actions = { { "Watch the building", say "One comes in, lays its pellet on the rim, shivers it into place with its chin, and is gone. Another. The wall rises by the width of a grain. It is slow, exact, and wholly cheerful, and it is being done with the worst mud in the kingdom. You look at the puddle with more respect." } } },
  },

  exits = {
    { to = "tipsy_griffon" },
    { to = "cabbage_row", description = "Round the back of the cottages, where the village keeps its other street." },
    { to = "mill_lane" },
    { to = "chapel" },
    { to = "barley_road", description = "The way out of the village: fields, sky, and the firm promise of a town." },
  },
}
