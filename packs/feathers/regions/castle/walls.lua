space {
  id = "wall_walk",
  region = "castle",
  name = "The Wall Walk",
  description = "The top of the curtain wall: a stone path between battlements, with all of Aldmoor below it, roofs and smoke and the market spread out small. The wind up here has come a long way and has nothing to say for itself.",

  things = {
    { name = "a sentry",
      description = "He patrols with his back pressed to the inner parapet and his eyes shut. He was posted here because he is afraid of heights. The Captain believes in facing things.",
      actions = {
        { "Ask what he can see", say "\"Nothing,\" he says, with feeling. \"All quiet.\" He opens one eye, sees a roof a long way down, and shuts it. \"All quiet,\" he says, higher." },
      } },
    { name = "the cannon",
      description = "Bronze gone green, pointing at the town it is there to protect. It has been fired once, at a royal wedding, and hit it.",
      things = {
        { name = "the cannonball", description = "The only one. It was returned by the bride's family, with a note." },
      } },
    { name = "the royal standard",
      description = "A long banner on the tallest pole. By law it flies when the King is in residence and comes down when he is not. It has been tied halfway, with a firm knot." },
    { name = "the queue, from above",
      description = "You can see all of it from here, down the hill and round the bend. Somebody at the back waves. You wave. It goes up the line from hand to hand and takes four minutes to reach the gate." },
    { name = "the garderobe",
      description = "A stone closet built out over the wall, with a seat, a hole, and a long drop. A draught comes up through it with news of the Undertown.",
      actions = {
        { "Look down the hole", say "Dark, and a long way off the sound of moving water. It is, you realise, a way out of the castle that nobody guards. You consider why nobody guards it." },
      } },
  },

  exits = {
    { to = "castle_bailey", description = "Down the wall stair to the yard." },
    { to = "survey_tower", description = "Along the wall and up the tower that leans." },
    { to = "great_drain", label = "The garderobe", fx "shake",
      say "As an adventurer you have done things that will not go in the ballad. This goes at the top of that list. It is a long way, it is not clean, and the last part is water.",
      description = "Down the hole: the castle's one unguarded way out. It is unguarded for a reason." },
  },
}

space {
  id = "survey_tower",
  region = "castle",
  name = "The Survey Tower",
  description = "The round room at the top of the odd tower. This is the office of the Royal Survey, and its whole floor is one map. Clerks cross it in felt overshoes, carrying pens on long sticks.",
  palette = { bg = "#0c1014", text = "#d0d0c8", dim = "#6c7274", accent = "#8cc0b0", border = "#33504c" },

  things = {
    { name = "the Great Map",
      key = "great map",
      wonder = true,
      description = "The kingdom on oak boards, forty feet across, drawn so fine that the clerks work with lenses. Every lane. Every barn. It has been corrected daily for three hundred years, and some time in the second century it began to keep itself up. {magic}Where it is raining, the paint is wet.{/} A small grey bloom of weather is crossing the Mumblewood now, and a clerk steps round it without looking down.",
      things = {
        { name = "Greenhollow",
          description = "A square, a well, and a tavern the size of your thumbnail. If you kneel you can see the tavern sign move." },
        { name = "Lake Perhaps",
          description = "Blue, and labelled, and after the label three centuries of surveyors have each added a question mark in their own ink. The paint of the lake is never quite dry. The clerks do not walk on it." },
        { name = "the Grumbles",
          key = "map grumbles",
          description = "Five peaks in white lead. Across them, in the hand of every Surveyor-General since the first: {i}settling{/}.",
          variants = {
            { when = flag "survey_corrected",
              description = "Five peaks in white lead. Across them, three hundred years of {i}settling{/}, and the last one struck through in pencil. The space after it has been left." },
            { when = visited "summit",
              description = "Five peaks in white lead. Across them, in the hand of every Surveyor-General since the first: {i}settling{/}. On Old Grumble somebody has added a very small flag, in fresh ink. You look round. No clerk meets your eye." },
          } },
        { name = "the edges",
          description = "The map has no border. The rule of the Survey is that you draw what has been walked to, and nobody has walked to an edge. Three expeditions were sent. Each wrote back that it was a little further on." },
        { name = "a dot of paint",
          description = "On the roof of the odd tower of a castle one inch high, there is a dot that was not there when you came in. You move your arm. {magic}You are fairly sure that it does too.{/}" },
      },
      actions = {
        { "Find where you are", say "You find Aldmoor, then the hill, then the castle, then the tower. You get down on your knees with a borrowed lens. There is a round room. There is a floor in it, with something drawn on the floor. A clerk takes the lens away. \"We don't,\" she says. \"It doesn't help.\"" },
      } },
    { name = "Dame Ysolde Tack",
      key = "surveyor",
      description = "The Surveyor-General, in overshoes, with a pen on a six-foot stick and a pencil behind each ear. She has measured the kingdom for forty years, and she looks at you as she looks at everything: estimating.",
      actions = {
        { "Ask about the map", say "\"It's right,\" she says. \"That's all. It isn't magic, it's diligence. Check a thing every day for three hundred years and it gets into the habit.\" Behind her a painted cloud moves an inch. She does not turn round." },
        { "Ask why the tower leans", say "\"It doesn't. We surveyed it. This tower is true.\" She waits while you work out what that means for the other three, and the castle, and the hill. \"We leave that out of the reports,\" she says." },
        { "Report the Grumbles", when = all { visited "summit", no(flag "survey_corrected") }, set "survey_corrected",
          say "You tell her that Old Grumble is not settling. That it is saying something. She does not laugh. She takes the pencil from behind her left ear, walks out across the kingdom in her overshoes, and for the first time in three hundred years of the Survey she crosses out a word on the mountains. She does not write another in its place. \"When it's finished,\" she says." },
      } },
    { name = "the instrument rack",
      description = "Chains, rods, a brass theodolite, and a ball of string with a tag: {i}One league. Do not unwind indoors.{/}",
      actions = {
        { "Unwind it a little", say "A clerk is beside you before the second turn. She winds it back. She has done this for visitors before. There is a tally." },
      } },
    { name = "the west window",
      description = "It looks to the Grumbles, small and white on the edge of things. One of the survey stakes up there has a tent beside it. The tent has been there since spring. Dame Ysolde says the report is late." },
  },

  exits = {
    { to = "wall_walk", description = "Down the stair, which you now suspect is the only straight one in the castle." },
  },
}
