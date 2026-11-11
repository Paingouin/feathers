-- Things carried out of Tickover: one ticket, one slip, and four artifacts that no guild could use.

item {
  id = "tk_ticket",
  name = "a platform ticket",
  icon = "▪",
  description = "A rectangle of stiff buff card, punched with a small brass star. {i}TICKOVER MUNICIPAL. ADMIT ONE TO ALL PLATFORMS, QUAYS AND PLACES OF DEPARTURE. NOT VALID FOR ARRIVING.{/}",
  things = {
    { name = "the punch mark", description = "A five pointed star, clean through. The clerk has a different punch for every day of the year and has never used the same one twice on the same person." },
    { name = "the small print", description = "{i}The holder is deemed to be four minutes late. No claim will be entertained in respect of the said four minutes.{/}" },
  },
  actions = {
    { "Check the time on it", say "The ticket is stamped with the time of issue, to the second. It was wrong when it was stamped, and by the same amount as everything else." },
  },
}

item {
  id = "tk_rejection_slip",
  name = "a rejection slip",
  icon = "▫",
  description = "A printed form from the Patent Office with your name written in a gap that was not quite long enough for it. {i}The Examiner regrets that your device (a stick, pointed) is anticipated by prior art, to wit: every other stick.{/}",
  things = {
    { name = "the stamp", description = "{danger}REJECTED{/}, in red, slightly crooked. Under it, smaller, in violet: {i}Appeals to the Vault, down the stair, mind your head.{/}" },
    { name = "the reverse", description = "A list of the grounds on which a patent may be refused. There are sixty. Number sixty is {i}Because{/}." },
  },
  actions = {
    { "Frame it, mentally", say "It is the first official opinion anybody has ever given of your work. You decide that it is a start." },
  },
}

item {
  id = "tk_winding_key",
  name = "the Winding Key of Tickover",
  icon = "¶",
  description = "A key of black iron as long as your forearm, with a bow like a clover leaf and a square socket worn round. The Great Clock was wound with it once, on the first day, by the whole Guild pulling on a rope. {gold}It has never needed winding since.{/} The Guild keeps a Winder all the same, and pays him, and none of them will say what for.",
  things = {
    { name = "the bow", description = "Three loops, each big enough for two hands. The iron inside the loops is polished bright. The outside is as the forge left it." },
    { name = "the socket", description = "Square once. Whatever it turned was very large and did not want to go round." },
    { name = "a tag on a string",
      description = "Brown card. {i}Property of the Guild of Winders. If found, do not wind anything.{/}",
      things = {
        { name = "the other side", description = "In pencil, by a later hand: {i}We have looked everywhere for the hole it fits. There is not one on the clock.{/}" },
      } },
  },
  actions = {
    { "Wind something", say "You try it on your pocket, a door, and the air. It turns in the air, a quarter turn, with a click like a knuckle, and then will not go further. You put it away. You do not know what you have tightened." },
    { "Weigh it", say "Heavier than it should be. It has the weight of a thing that was used once for something important and has been resting on that ever since." },
  },
}

item {
  id = "tk_fourth_minute",
  name = "the Fourth Minute",
  icon = "◦",
  description = "A stoppered bottle of thick green glass, sealed with lead, and inside it nothing you can see. Tickover is four minutes late because four minutes were taken out of it, long ago, for safe keeping. Three were spent. {gold}This is the last one.{/} Hold it to your ear and you hear a street: wheels, a whistle, somebody calling a name, sixty seconds of an ordinary morning, going round and round.",
  things = {
    { name = "the lead seal", description = "Stamped with a clock face that has no hands. Nobody has broken it. The Guild meets every ten years to decide whether today is the emergency, and every ten years decides it is probably next time." },
    { name = "the label",
      description = "Copperplate, brown with age. {i}One (1) minute. Keep upright. Do not shake.{/}",
      things = {
        { name = "a line added below", description = "{whisper}Spent so far: one on the Fire, one on the Flood, one by mistake.{/}" },
      } },
    { name = "the sound inside", description = "The somebody calls the name again. You nearly have it. It is not your name. You are almost sure it is not your name." },
  },
  actions = {
    { "Shake it", say "You do not shake it. You read the label, and you are, for once, a person who does what the label says." },
    { "Listen to it", say "Wheels on cobbles. A whistle. A woman calls a name and a child answers, and a door bangs. Then the wheels again. It has been that morning in there for three hundred years, and nobody in it is late." },
  },
}

item {
  id = "tk_perpetual_engine",
  name = "the Perpetual Engine of Ignatius Brass",
  icon = "¤",
  description = "A brass engine no bigger than a loaf, with one flywheel, one piston and no boiler. It is running. It has been running since Ignatius Brass let go of the wheel, and the Patent Office refused it forty one times, on the ground that it is impossible. {gold}It is.{/} It goes round anyway, quite gently, and is slightly warm.",
  things = {
    { name = "the flywheel", description = "Eight spokes. It turns once a second, near enough. The Guild of Winders timed it against the Great Clock, got a different answer, and stopped timing it." },
    { name = "the maker's plate",
      description = "{i}I. BRASS FECIT. It is not difficult. You have only to not stop it.{/}",
      things = {
        { name = "the forty one notches", description = "Filed in the edge of the plate, one for each refusal. The last is deeper than the others, and has a small smiling face scratched beside it." },
      } },
    { name = "where the fuel goes", description = "You look all over it. There is a little door. Behind the little door is a brass plate engraved with the words {i}NICE TRY{/}." },
  },
  actions = {
    { "Stop the wheel", say "You put a finger on the rim. The wheel stops. So does the piston. So, you notice, does the dust in the air, and a drip from the ceiling, halfway. You take your finger away rather fast. Everything goes on. The engine ticks over as if nothing had happened, and you agree with it that nothing did." },
    { "Find out what it drives", say "There is no belt and no shaft. It is not connected to anything. It does no work at all, and that may be how it gets away with it." },
  },
}

item {
  id = "tk_storm_governor",
  name = "the Governor of Storms",
  icon = "♀",
  description = "A spinning governor from a ship's engine: two brass balls on arms, a spindle, a collar. It was made for the first airship that ever went over the weather and came back. {gold}While it spun, no storm could come within a mile of her.{/} The balls are dented all over, from outside, as if by hail, or by something that wanted in.",
  things = {
    { name = "the two brass balls", description = "Each the size of an apple and pocked like the moon. One has a tooth mark in it. You hold your own teeth up to it for scale and feel better about your life." },
    { name = "the spindle", description = "Steel, blued, and bent a hair off true. It took that bend on the day it stopped, and the day it stopped is why there is only one airship now." },
    { name = "the collar",
      description = "Engraved round the rim in letters worn nearly flat.",
      things = {
        { name = "the engraving", description = "{i}FAIR ENOUGH{/}. It was the name of the ship. It was also, they say, the last thing her captain said." },
      } },
  },
  actions = {
    { "Spin it", say "You give the arms a flick. They go round twice, the balls lift a finger's width, and for those two turns the draught in your collar stops and the air stands quite still about you, as a room does when someone important has come in. Then it wobbles and falls over. It wants an engine, and a ship, and a sky." },
    { "Hold it up to the wind", say "The wind goes round it. Not past it: round it, with a little margin, the way people go round a dog they have met before." },
  },
}
