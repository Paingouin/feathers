-- The Rose and Remainder: a play that has been in its third act for ninety years.

space {
  id = "er_theatre",
  region = "erstwhile",
  name = "The Rose and Remainder",
  description = "A round wooden playhouse, open to the sky, with three galleries and a stage that juts into the yard. The thatch is gone and half the galleries with it. The house is full. Six hundred of the dead stand in the yard and sit in the air where the benches were, all facing the stage, where a king in a paper crown has his mouth open and nothing is coming out.",
  palette = { bg = "#120d12", text = "#d8ccd4", dim = "#74606c", accent = "#e0a0b0", border = "#4a3040" },
  ambience = {
    dust { glyphs = "·˙", color = "#6c5868", rate = 0.25, speed = 0.1 },
    flicker { color = "#e0b0a0", strength = 0.08 },
  },

  things = {
    { name = "the stage",
      description = "Bare boards on trestles, with two pillars, a painted heaven overhead and a curtained space at the back. Four actors are on it, grey, in the middle of a scene. Nobody is moving. It is the kind of stillness you get when a cart has stopped on a level crossing.",
      things = {
        { name = "the Player King",
          key = "er_player_king",
          description = "A large grey actor in a robe and a paper crown, downstage centre, with one arm flung out. He has been about to speak for ninety years. He knows the gesture. He does not know the line. You can see it in his eyes, which are the only part of him moving, and which keep going to the left.",
          variants = {
            { when = flag "er_line_given",
              description = "A large grey actor in a robe and a paper crown, downstage centre. He is speaking. It rolls out of him like barrels down a ramp, a great speech, the one about the crown that never fitted, and six hundred of the dead are leaning in to it. He has forgiven the prompter. He has not forgiven the author for making it so long." },
          },
          actions = {
            { "Call out a line", when = no(flag "er_line_given"),
              say "\"Alas,\" you offer, since plays have that in. Six hundred grey heads turn. The Player King's eyes close in pain. A woman in the yard says \"He has said alas, dear. Twice,\" and somebody shushes her, and somebody shushes them, and it goes round the galleries like wind in a chimney." },
          } },
        { name = "the other actors", description = "A queen with her hands clasped, a lord with a letter, and a boy as a page. They are holding their positions. The page is on one leg. He has developed, over ninety years, a great deal of balance and a private opinion of the Player King." },
        { name = "the painted heaven", description = "The underside of the stage roof: a blue sky with gold stars and a sun with a face. The weather has had most of it. One patch is left, the size of a tablecloth, directly over the Player King, and from the yard it looks as if it is the only thing he is afraid of." },
        { name = "the pillars", description = "Wood, painted as marble. A woodpecker has been at the left one. The audience takes the knocking for a messenger and has been waiting for him to enter." },
      } },
    { name = "the prompt corner",
      key = "er_prompt_corner",
      description = "A stool in the wings, stage left, behind a canvas flat. On the stool sits the prompter, a small grey man with the book open on his knee and his chin on his chest. He is asleep. A prompter has one duty, and for ninety years this one has been doing the other thing.",
      variants = {
        { when = flag "er_line_given",
          description = "A stool in the wings, stage left. The prompter is wide awake, following the speech with one finger and mouthing every word a beat ahead. Beside his stool there is a trap in the floor with an iron ring. His foot was on it. He has moved his foot." },
      },
      things = {
        { name = "the prompt book", description = "{i}The Tragedy of King Somebody, in Five Acts.{/} It is open at Act Three, Scene Two. A grey finger rests on the line. You lean close and read it: {i}Then take the thing. It never fitted me.{/}" },
        { name = "the prompter", description = "Mr Mumm. Forty years in the corner and never missed a cue until the afternoon of a certain Wednesday, when it was warm, and the play was long, and he had heard it before." },
        { name = "the trap", visible_if = flag "er_line_given",
          description = "A square of boards with a ring. It leads under the stage, where the devils come up from and the properties are kept. He nods at it without taking his eyes off the book. You have earned a look." },
      },
      actions = {
        { "Wake the prompter", when = no(flag "er_line_given"),
          say "You shake his shoulder, and your hand goes through to the stool. You cough. You say \"Mr Mumm.\" He sleeps on. Out on the stage the Player King's eyes roll towards you, wild, and he moves two fingers of the outflung hand: {i}you. You do it.{/}" },
        { "Give him the line", when = no(flag "er_line_given"), set "er_line_given", fx "sparkle",
          say "You read it off the page in a carrying whisper, as you have heard it done. \"{i}Then take the thing.{/}\" The Player King breathes in. It is the first breath on that stage in ninety years. \"{b}Then take the thing!{/}\" he cries, in a voice like an organ, and his hand goes to the paper crown. \"{b}It never fitted me!{/}\" The house lets go of itself with one sigh. The page puts his other foot down. The prompter starts awake, finds his place and looks at you with awful gratitude, and shifts his boot off a ring in the floor." },
      } },
    { name = "the groundlings",
      description = "Four hundred in the yard, standing, packed, the grey of rain. Apprentices, carters, a nurse with a child. They have stood through ninety winters with their faces up. Not one of them has asked for a penny back.",
      things = {
        { name = "a nut seller", description = "Working the yard with a basket, sideways, as they do. She sells a pennyworth of nothing to a man who cracks them in his fingers and drops the shells, and there are shells on the ground. Real. Hazel grows through the gallery now and drops its own." },
        { name = "a cutpurse", description = "A thin grey youth with his hand in a merchant's pocket. He has had it there since Act Two. The purse is long gone to dust and so is the pocket, and he is too proud of the lift to let go.",
          actions = {
            { "Clear your throat at him", say "He looks round, sees a stranger, and gives you a slow wink. Then he looks at your own pockets, professionally, and you watch him decide against it. That is the most wounding thing that has happened to you in this city." },
          } },
        { name = "the nurse and child", description = "The child is asleep on her shoulder. She is rocking from foot to foot. Whatever happens in Act Four, the child will have missed it, and will be told." },
      } },
    { name = "the galleries",
      description = "Three tiers, or the posts of them. The floors have gone and the audience has not: rows of the better sort sit in the air at three levels, on benches they remember, the ladies fanning. Rooks nest in the top tier among the twopenny seats.",
      things = {
        { name = "the lords' room", description = "A box beside the stage, hung once with tapestry. It is empty. A real chair stands in it, gilt, with the cane seat fallen through. The playbill says {i}By Command{/}. He was to have come on the Thursday night." },
        { name = "a lady with a fan", description = "First gallery, front row. She has been whispering to her neighbour through the entire pause. She is explaining the plot. She has it wrong." },
        { name = "the rooks", description = "Forty nests. At the big speeches they all go up at once, shouting, and come down again. The actors used to wait for them. They are, the playhouse holds, the only critics it ever had that came back." },
      } },
    { name = "the playbill",
      description = "Pasted on the door post. {i}This WEDNESDAY, and by COMMAND on THURSDAY: The Tragedy of KING SOMEBODY. With Thunder, a Ghost, and a real Crown, the same being lent by a Gentleman.{/}",
      things = {
        { name = "the small print", description = "{i}Persons are desired not to throw things at the Ghost, he being a married man.{/}" },
        { name = "a strip pasted across", description = "{i}THURSDAY'S PERFORMANCE{/}, and then the strip stops. Somebody was sent to cancel it, got as far as the first two words, and could not find a way to say what had happened to the day." },
      } },
    { name = "the tiring house",
      description = "Behind the stage: a room of pegs and paint pots where the actors dress. A grey boy is being laced into a gown to play a princess in Act Four. He has been half laced for ninety years and is not complaining, since the gown is tight.",
      things = {
        { name = "the costume pegs", description = "Robes, armour of painted leather, a bear's head. Moth has had the real ones. What hangs there now is what the actors remember, and they remember them as rather better than they were." },
        { name = "a mirror", description = "Cracked across, real. It shows you, and the room, and no boy and no gown. You look away from it sooner than you meant to." },
        { name = "the thunder", description = "A cannonball in a wooden trough on the floor above, for rolling. It rolled to one end when the building settled, in about the fortieth year, and the audience applauded. It was the only effect in the whole pause." },
      } },
    { name = "the flag",
      description = "On a pole over the tiring house: a strip of bleached silk with a rose on it, flying to show that a play is on. It has flown without a break for ninety years. It is the longest run in the history of the stage, and the company has not been paid for any of it." },
    { name = "the doorkeeper",
      icon = "☺",
      description = "A grey man with a box on a strap, at the yard door. A penny to stand, two to sit, three for a cushion.",
      actions = {
        { "Offer your copper", say "He holds out the box. Your coin drops through it and rings on the stones. He looks at the coin, and at the box, and at you. \"Go in,\" he says heavily. \"It's the interval, near enough. It has been the interval since I was a young man, and I was not one for long.\"" },
        { "Ask how the play ends", say "\"Badly, for him,\" he says, nodding at the stage. \"They take the crown off him. He gives it up with his own hand, and then he is sorry.\" He turns his box over. \"It was thought a strong piece. And then the same week, well. People said the author must have known something. He did not. He had only met kings.\"" },
      } },
    { name = "the yard floor",
      description = "Ash, hazel shells and four hundred years of dropped pennies trodden in. Green things come up through it now and the groundlings stand among them up to the knee, and a blackbird hunts about between their legs for worms." },
    { name = "a sign over the stage door",
      description = "{i}THE ROSE AND REMAINDER. Licensed by the Master of the Revels for Tragedies, Comedies, Histories, and the Remainder.{/} Nobody at the Revels office was ever able to say what the remainder covered. The company took it to mean everything else, and has." },
  },

  exits = {
    { to = "er_high_street", description = "Out by the yard door, past the man with the box." },
    { to = "er_under_stage", label = "Down the trap",
      description = "Under the boards, where the devils come up from.",
      requires = flag "er_line_given", hidden = true },
  },
}

space {
  id = "er_under_stage",
  region = "erstwhile",
  secret = true,
  name = "Under the Stage",
  description = "A low dark place the size of the stage above it, floored with earth, walled with trestles. They call it the hell. Daylight comes down in bars between the boards, and through the bars comes the Player King's great voice, muffled, and the creak of six hundred people listening. Everything a theatre needs and does not want seen is kept here.",
  palette = { bg = "#0c090c", text = "#ccc0c8", dim = "#6a5a64", accent = "#e0c060", border = "#40303a" },
  ambience = {
    dust { glyphs = "·˙", color = "#806c50", rate = 0.35, speed = 0.08 },
  },

  things = {
    { name = "the property table",
      description = "A long bench with a place chalked for each thing and a label. {i}Dagger (blunt). Dagger (sharp, NOT for Act Two). Skull. Letter. Poison.{/} Most of the things have gone to dust inside their chalk outlines. A few are still there.",
      things = {
        { name = "the skull", description = "Real. It always was. It was left to the company by a clown in his will, so that he could go on working. There is a pencilled note inside the jaw: {i}laugh on line 4, not before.{/}" },
        { name = "the poison", description = "A green bottle with a death's head. You pull the cork. Cold tea, ninety years old, with a skin on it. The death's head is very well drawn." },
        { name = "the letter", description = "The one the lord carries on in Act Three. It is the same sheet at every performance, so the actors wrote on it to pass the time. Forty years of remarks about the audience, in six hands. {i}Thin house. Fat man, front, asleep. HE is in tonight, laughed in the right place.{/}" },
        { name = "an outline with nothing in it", description = "A ring chalked on the bench, labelled {i}Crown (real, lent, RETURN){/}. It is empty. The Player King is wearing paper." },
      } },
    { name = "the crown basket",
      key = "er_crown_basket",
      description = "A hamper under the bench, with the lid tied down. A label on the handle says {i}CROWNS, various{/}. You untie it. Tin ones, a wicker one for a king of the fairies, and at the bottom, in a nest of straw, one of pasteboard and gold paint with sugar jewels.",
      variants = {
        { when = flag "er_crown_taken",
          description = "A hamper under the bench with the lid open. Tin crowns, a wicker one for a king of the fairies, and at the bottom a round nest in the straw where the pasteboard one lay through three coronations and ninety years." },
      },
      things = {
        { name = "a tin crown", description = "Cut from a biscuit box. You can read {i}BEST ASSORTED{/} on the inside." },
        { name = "the wicker crown", description = "Woven for a comedy. A wren has finished the job and lives in it." },
        { name = "the property master's note", description = "Tied to the pasteboard one with a ribbon. {i}This is the one they borrow. Palace sends a footman, says the gold one is at the mender's, and may they. Three times now. Third time I said to the footman, why not have ours for good and we will take the gold. He did not laugh. It was a fair offer.{/}" },
      },
      actions = {
        { "Take the pasteboard crown", when = no(flag "er_crown_taken"), set "er_crown_taken", give "er_pasteboard_crown", fx "sparkle",
          say "You lift it out of the straw. It weighs what a hat weighs. Over your head the Player King is giving up his crown, at length, in verse, to a full house. You hold the real one up to a bar of daylight and the sugar jewels light red and green. It crowned three kings. Then you put it under your arm, since nobody else is coming for it." },
      } },
    { name = "the devil's lift",
      description = "A square platform on ropes under the main trap, for sending a demon up through the stage in smoke. A grey stagehand stands at the windlass with both hands on the bar, waiting for a cue in Act Five.",
      things = {
        { name = "the stagehand", description = "He has his ear cocked to the boards. He has heard the first three acts some four hundred times and has never seen any of it. He knows the play by its feet." },
        { name = "the smoke pan", description = "An iron dish of rosin and a slow match, long cold. A toad lives under it." },
      },
      actions = {
        { "Stand on the lift", say "You step on. The stagehand looks you up and down. \"You're not him,\" he says. \"He's taller, and red.\" He thinks. \"You'd do for a matinee.\" He does not turn the windlass. You are not in the book." },
      } },
    { name = "the costume hampers",
      description = "Six wicker trunks, labelled {i}KINGS. QUEENS. ROMANS. RUSTICS. DEVILS. MISC.{/} The moth has been through all of them and left only what it could not eat.",
      things = {
        { name = "the hamper of kings", description = "Gold thread, in tangles, and glass rubies, and the wire frames of ruffs. Everything of a king that is not cloth." },
        { name = "the hamper of devils", description = "Horns, in pairs, and a tail with a wire in it, and one red glove. The moth did not touch any of it. You do not know what to make of that." },
        { name = "the hamper marked Misc.", description = "A lion's mask. A wooden leg. A baby made of rags that has been in more tragedies than any living actor. It has a darn in its head and a name: {i}Little Perdita{/}." },
      } },
    { name = "the underside of the stage",
      wonder = true,
      description = "You look up. The boards are a foot above your head, with the light coming between them in long bright slats, and the dust turning in every one. Along each joist, in chalk and knife cuts and candle smoke, the stagehands have written the play. It is not the words. It is the feet. {i}K. crosses here. Q. kneels. Three knocks, wait, he falls.{/} Four hundred years of plays are written on the underside of that floor by people who never saw one. And over it all, through the slats, a king's shadow goes to and fro, giving a speech.",
      actions = {
        { "Follow the speech by its feet", say "You find the place. {i}K. sits, centre.{/} A weight comes down on the boards over your head and the dust jumps. {i}Long. Do not move the lift.{/} It is long. {i}K. rises on 'crown'.{/} The boards ease. You have followed a tragedy from underneath, as you might follow a ship from the sea bed, and you find that your eyes are wet, and that it is not only the dust." },
      } },
    { name = "a ghost's sheet",
      description = "Hung on a nail: a real bedsheet with two eyeholes, for the Ghost in Act One. It is the only thing down here that the dead leave alone. They think it in poor taste.",
      actions = {
        { "Put it on", say "You put it over your head and look out through the holes. From the lift, the stagehand says, without heat, \"Married man, are you?\" You take it off again." },
      } },
    { name = "the trap ladder",
      description = "Six rungs up to the square of daylight in the prompt corner. Mr Mumm's boot is beside the hole. It taps, very slightly, on the stresses." },
    { name = "a cask of stage blood",
      description = "A small barrel with a spigot, labelled {i}GORE{/}. Vinegar and brick dust. It has separated. The brick dust has all gone to the bottom and the top is quite a decent vinegar.",
      actions = {
        { "Try the spigot", say "A thread of pink comes out and stops. The company used a pint a night in the histories. It was the biggest expense after candles, and the author was asked more than once whether fewer people could not simply be banished." },
      } },
    { name = "the thunder run",
      description = "The end of the wooden trough, coming down through the ceiling from the tiring house. The cannonball sits in the bottom of it, where it rolled in the fortieth year. Somebody has chalked a face on it." },
    { name = "the earth floor",
      description = "Beaten hard, with the prints of bare feet and hobnails, and a channel worn from the ladder to the lift by demons hurrying. In one corner a single mushroom has come up, white, in the dark. It has an audience of woodlice." },
  },

  exits = {
    { to = "er_theatre", label = "Up the ladder", description = "Back to the prompt corner and the daylight." },
  },
}
