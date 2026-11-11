-- Head Office: the staff canteen, and Personnel, where Mr Brimley's career is kept.

space {
  id = "ho_canteen",
  region = "head_office",
  name = "The Staff Canteen",
  description = "A low hall of long tables and benches, with a counter down one side under a row of copper hoods. Steam. The clatter of four hundred trays. The smell of cabbage, which gets everywhere, even here. Devils of every grade sit elbow to elbow over their dinners, grumbling about management, and at the far end a clock says five past twelve. It has said five past twelve for as long as anyone has been eating. Nobody minds. It is the one hour of the day they like.",
  palette = { bg = "#100c08", text = "#e0d4bc", dim = "#807058", accent = "#e8b050", border = "#5c4424" },
  ambience = {
    steam { glyphs = "˙·∙", color = "#6a6050", rate = 0.4 },
    flicker { color = "#e8b050", strength = 0.12 },
  },

  things = {
    { name = "the counter",
      description = "Forty feet of hot plate, with a rail to slide your tray along and a devil behind each dish.",
      things = {
        { name = "the cook",
          key = "ho_cook",
          icon = "☻",
          description = "Mrs Griddle, in a white cap, with four arms and a ladle in each. She has fed Head Office since it opened and has never served anything hot enough to complain about or cold enough to send back.",
          actions = {
            { "Ask what is good", say "\"All of it's good.\" Four ladles point at you. \"It's the same as yesterday, and yesterday it was good. Stew, greens, duff. You'll have the stew.\" You have the stew. It is brown, hot, and tastes strongly of pepper and faintly of the bottom of the pan, and there is a great deal of it." },
            { "Ask for something devilled", say "A silence spreads outward from the counter, table by table. Mrs Griddle puts down all four ladles. \"We don't do that here,\" she says. \"It's a slur. Kidneys never did anything to us.\"" },
          } },
        { name = "the stew", description = "In a copper the size of a bath. It has been topped up, and never emptied, since the first dinner. Somewhere at the bottom of it is the original onion." },
        { name = "the greens", description = "Boiled until they have given up. They come from a garden nobody in a collar knows about. Mrs Griddle knows, and takes delivery by the back hatch, and says they are from a supplier." },
        { name = "the duff", description = "A suet roll as long as a bolster, cut in slices like paving stones, with a jug of yellow custard. A skin on the custard is considered a perquisite and goes by seniority." },
        { name = "the tea urns", description = "Three, of copper, fed from the furnaces by pipe. One is {i}Strong{/}. One is {i}Stronger{/}. The third has no label and a queue of stokers." },
      } },

    { name = "the trays",
      description = "A stack by the door, of black tin, dented, each stamped with the Firm's crest and {i}RETURN ME{/}.",
      things = {
        { name = "the cutlery", description = "Knife, spoon, and a fork with two prongs. Every fork in the building has two prongs. There was a three-pronged issue once and it was withdrawn, as open to misunderstanding." },
        { name = "the mugs", description = "White enamel with a black rim, on hooks, four hundred of them. Each has a number. A good many also have a name painted on in nail varnish, which is against the rules and is done by the same clerk who enforces them." },
        { name = "a mug with a red ribbon", description = "Hung apart from the rest, with a card: {i}Guest. Do not use.{/} It has been used eleven times. Mrs Griddle takes it down, looks at you, and fills it." },
      } },

    { name = "the long tables",
      description = "Scrubbed deal, twelve of them, with benches. Where you sit is not laid down anywhere and never varies.",
      things = {
        { name = "the clerks' table", description = "Sleeve garters and eyeshades, eating with one hand and ruling lines with the other. They are discussing a rumour that the Chairman has been seen. The rumour is ninety years old and comes round each spring." },
        { name = "the stokers' table", description = "The loudest. They eat with their caps on and their sleeves rolled. They have a jar of pickled tomatoes that is passed under the table and never appears on top of it." },
        { name = "the tempters' table", description = "Eleven places laid in a table for forty. They sit close together at one end. The very young one has been given the seat by the pipe." },
        { name = "the table by the door", description = "For the Directors, with a cloth. It is laid each day with silver and a cruet. No Director has eaten in the canteen within memory. The waiter stands by it with a napkin over his arm from twelve to two, and it is always twelve to two." },
      },
      actions = {
        { "Sit with the clerks", say "They make room. One passes you the salt without being asked. Within a minute you are being told, by four of them together, what is wrong with the filing system. It is the same thing that is wrong with every filing system. You nod. You have never felt so much at home anywhere you were so anxious to leave." },
      } },

    { name = "the regulars",
      description = "Faces you would come to know, if you ate here, which you will not.",
      things = {
        { name = "a devil doing the crossword", description = "In {i}The Tempter's Gazette{/}. He has one clue left. {i}What you get for nothing (5).{/} He has been stuck on it since the paper came. He will not be told." },
        { name = "two devils sharing a duff", description = "Old Works hands, long retired, with one plate and two spoons. They have had the same argument each dinner for a thousand years, about which of them left a furnace door open. They would be lost without it." },
        { name = "a devil eating alone", description = "From Audit. Grey suit, grey face, a tray with everything at right angles. The benches on either side of her are empty for six feet. She is reading a ledger over her greens and now and then she smiles, and somewhere in the building someone goes cold." },
        { name = "Old Scuttle's wife", description = "She brings his dinner down to the lift in a basin with a cloth over it, and has done since his accident. She stops to ask if you are the visitor. \"He'll have told you about the crossroads,\" she says. \"Don't mind him. He was happy as a sandboy up there. He only came down for me.\"" },
      } },

    { name = "the clock at five past twelve",
      wonder = true,
      description = "A plain round clock on the end wall, with a cracked face. It is going. You can hear it, and the second hand goes round. But the other two hands stand at five past twelve, and have stood there since the canteen opened, and in here it is five past twelve. The stew is always just served. The bench is always just sat on. Nobody has ever had to push back a tray and say well, I suppose. Somewhere in the making of the bad place, somebody with the power to do it took one good moment out of the day of the damned and made it last. No memorandum mentions it. No budget covers it. You watch four hundred devils at their dinners, grumbling contentedly, and you think that whoever is in charge down here is a good deal harder to hate than you were promised.",
      things = {
        { name = "the crack in the face", description = "It runs from the twelve to the centre. They say it happened the day the clock was hung, and that whoever hung it gave it a tap, there, with one knuckle, and said: that will do." },
        { name = "the second hand", description = "Round and round, sixty to the minute, and the minute never comes. It does not seem to mind either." },
      } },

    { name = "the kitchen",
      description = "Through the hatch behind the counter: ranges, coppers, a scullery, and a great deal of shouting, all of it about gravy.",
      things = {
        { name = "the range", description = "Black iron, twelve ovens, piped from the Works. A brass plate says it runs off furnace number nine. That is Auntie, and it is why everything tastes very slightly smoked." },
        { name = "the potato imps", description = "A row of them on upturned buckets, peeling. They peel in one long ribbon, as a point of honour, and hang the ribbons up. The record goes twice round the scullery." },
        { name = "the scullery",
          description = "Sinks like horse troughs, and a mountain of black tin trays.",
          things = {
            { name = "the washer-up", description = "One devil, up to the elbows. He was a Director. He is the only member of staff ever to be demoted, and it was at his own request. He whistles. Nobody has ever heard a Director whistle." },
            { name = "the plate rack", description = "Four hundred trays, drying. They will all be wanted again at five past twelve." },
          } },
        { name = "the larder",
          description = "A cold room, by local standards. That is to say, warm.",
          things = {
            barrel { name = "a barrel of pepper", description = "The Firm's one extravagance. It goes in everything. A great many of the stories about this place began with somebody upstairs tasting the food." },
            { name = "a crate from the Glowers", description = "Beetroot, earthy, with a card tucked in: {i}With compliments. R.{/} It comes down the tube every month, a root at a time, since the tube was built for cylinders." },
            { name = "a shelf of jars", description = "Pickled tomatoes, with no label. Mrs Griddle says they are from a supplier." },
          } },
      } },

    { name = "the notice board",
      description = "Green baize, by the tray stack, three layers deep in paper.",
      things = {
        { name = "the menu", description = "{i}Monday: Stew. Tuesday: Stew. Wednesday: Stew (see Monday).{/} It stops at Wednesday, with a note: {i}And so on.{/}" },
        { name = "a notice about the mugs", description = "{i}Staff are reminded that mugs are numbered and are not to be personalised.{/} Signed, with a flourish, in nail varnish." },
        { name = "a notice about a collection", description = "{i}For Mr Brimley, of Glowers branch, on the occasion of his three hundredth year Acting. Contributions to Personnel.{/} Pinned to it is a list of names that runs to the floor." },
        { name = "a card in the corner", description = "{i}Lost: one sense of purpose. Sentimental value. If found, return to Temptation, desk 212.{/}" },
      } },

    { name = "the suggestions book",
      description = "On a string by the door. Most of it is about the greens.",
      actions = {
        { "Write a suggestion", say "You think, and write: {i}More of the duff.{/} A clerk waiting behind you reads it over your arm, takes the pencil, and signs underneath. Then the one behind him. By the time you reach the door there is a queue." },
      } },

    { name = "the swing doors to the yard",
      description = "At the back, with round windows. Beyond them is a bricked-in court where the kitchen puts the bins and the staff go to smoke, which in their case needs no tobacco.",
      things = {
        { name = "the bins", description = "Peelings, tea leaves, ash. A stoker with a barrow collects them every shift, and is very particular about the peelings, and nobody has asked why." },
        { name = "a devil on his break", description = "Leaning on the wall with his eyes shut, letting a thin grey plume go up from each nostril. He opens one eye. \"Five minutes,\" he says. \"It's the only five minutes down here that ends.\"" },
      } },

    { name = "the canteen cat",
      description = "Black, naturally. It has the usual number of everything. It came down the tube in a mail sack some years ago and Mrs Griddle will not hear a word. It is asleep on the hot plate, at the cool end, between the greens and the duff.",
      actions = {
        { "Stroke the cat", say "It allows this. A row of clerks watch you with real envy. It does not let them. It says they have cold hands, which is the one thing nobody here has." },
      } },

    { name = "the grace",
      description = "Painted on the beam over the counter, in letters gone brown with steam: {i}FOR WHAT WE ARE ABOUT TO RECEIVE, MAY WE NOT BE BILLED.{/}" },
  },

  exits = {
    { to = "ho_lift", label = "The lift", description = "Out past the trays. Scuttle is having his dinner out of a basin." },
  },
}

space {
  id = "ho_personnel",
  region = "head_office",
  name = "Personnel",
  description = "A room of card indexes. Oak cabinets from floor to ceiling, each with a hundred small drawers, each drawer with a brass handle and a label, and on a ladder that runs along a rail a devil in a green visor goes slowly from one to the next. Here every servant of the Firm is a card: when taken on, where posted, what for, and how it is going. Promotions are made here. That is to say, they are drawn up here, and sent down for signature, and they wait.",
  palette = { bg = "#0c0c0a", text = "#d8d8c8", dim = "#74745e", accent = "#b8c860", border = "#444a26" },
  ambience = {
    dust { glyphs = "·", color = "#484a38", rate = 0.12, speed = 0.06 },
  },

  things = {
    { name = "the Personnel Officer",
      key = "ho_personnel_officer",
      icon = "☻",
      description = "Miss Tally, on the ladder: narrow, olive green, with pince-nez and a tail she uses to hold the drawer open while both hands are in it. She knows where everybody is and has been. She speaks of the staff as a shepherd would of sheep he has not seen for some time but could describe.",
      things = {
        { name = "her pince-nez", description = "On a black cord. When she lets them drop they swing exactly three times." },
        { name = "her ladder", description = "Oak, on brass wheels, running on a rail right round the room. She has not come down from it in living memory. Her tea goes up in a basket." },
        { name = "her tail", description = "It has a callus on it, the width of a drawer." },
      },
      actions = {
        { "Look up Mr Brimley", when = no(flag "ho_brimley_found"), set "ho_brimley_found",
          say "The ladder rolls half the length of the room and stops by itself. Her tail takes a drawer. \"Brimley, B. Taken on as office boy, ink and pencils. Junior clerk. Clerk. Posted Glowers branch as Sub-Assistant Tempter, Acting, on a Tuesday, for the afternoon.\" She turns a card. She turns it back. \"The afternoon has run three hundred years. Nobody has been in to sign him off it. His confirmation is drawn up. It's been drawn up nine times, the paper keeps going yellow.\" She puts the file on the counter where you can see it." },
        { "Look up Mr Brimley", when = flag "ho_brimley_found", say "\"It's on the counter,\" says Miss Tally. \"I've left it out. I like to see it out.\"" },
        { "Ask how one gets promoted", say "\"One is noticed.\" The pince-nez swing three times. \"Then one is drawn up. Then one is signed. The Firm is very good at the first two.\" She shuts a drawer with her tail. \"There are four thousand in this room drawn up and waiting. I dust them. I'd sign them myself if it would hold, but it has to be the one hand, and the one hand is out.\"" },
        { "Look yourself up", say "She laughs, a small dry cough of a laugh, and then sees you mean it, and rolls the ladder to the last cabinet out of courtesy. The drawer is labelled {i}Not Ours{/}. It is the biggest drawer in the room. It runs back into the wall further than her arm. \"You're in there somewhere,\" she says. \"With nearly everybody. I don't keep it in order. There seemed no call.\"" },
      } },

    { name = "Mr Brimley's file",
      key = "ho_brimley_file",
      visible_if = flag "ho_brimley_found",
      description = "A buff folder, fat as a loaf, tied with red tape. On the cover: {i}BRIMLEY, B. Glowers.{/} And a rubber stamp, repeated down the edge nine times in nine fading inks: {i}AWAITING SIGNATURE{/}.",
      things = {
        { name = "his first report", description = "From when he was office boy. {i}Fills the inkwells to the correct line. Has been seen to straighten the pencils of others. Would go far if anybody were looking.{/}" },
        { name = "three hundred years of quarterly returns", description = "Twelve hundred sheets, all alike. {i}Souls: nil. Expenses: nil. Remarks: nothing to report.{/} You leaf through them. In the two hundred and fortieth year, just once, under Remarks, he has written {i}Fine weather, I am told{/}, and then, the next quarter, apologised for it." },
        { name = "a letter of commendation", description = "From Mrs Scorch. {i}He has never closed a soul, lost a file, or been late. I do not know another of whom I could say two of the three.{/}" },
        { name = "the confirmation", description = "On top, the newest copy, crisp. {i}That Brimley, B., be confirmed in the rank of Sub-Assistant Tempter, and the word 'Acting' be struck from his door.{/} A ruled line, and under the line: {i}Chairman.{/} The line is empty." },
      },
      actions = {
        { "Take the confirmation down for signing", when = no(flag "ho_brimley_word"), set "ho_brimley_word",
          say "You say you are going down to the Executive Floor in any case. Miss Tally looks at you over the pince-nez for some time. \"He's out,\" she says. \"You know he's out.\" You say you know. She unties the tape, slides the top sheet into a cylinder, and lets it down to you in the tea basket. \"There's a stamp on his desk. It's as good as the hand, in law, and nobody below a Director may touch it.\" She coughs. \"A guest is not below a Director. A guest isn't anywhere. I looked it up once, in case.\"" },
      } },

    { name = "the card cabinets",
      description = "Oak, dark with handling. There are six hundred drawers to a wall and four walls.",
      things = {
        { name = "a drawer marked TEMPTERS, ACTIVE", description = "It slides out a long way. It has eleven cards in it, at the front, and then two feet of clean green felt." },
        { name = "a drawer marked GONE NATIVE", description = "Fuller. Devils who went up to a posting and stayed. One keeps bees. One married a miller's widow. One is listed simply as {i}Lower Wince: something in the church choir{/}. Their pensions are paid, and nothing is said." },
        { name = "a drawer marked ON LOAN", description = "A single card. {i}One imp, to Castle Regret, Tuesdays, shortbread.{/} Somebody has stamped it {i}UNAUTHORISED{/}, and somebody else has initialled the stamp, which makes it authorised." },
        { name = "a drawer with no label", description = "Top row, far corner. It is locked, and warm. Miss Tally does not roll the ladder that way. \"Directors,\" she says. \"They keep their own cards. One doesn't like to know.\"" },
      },
      actions = {
        { "Pull a drawer at random", say "You get {i}SCUTTLE, lift attendant{/}. Posted to a crossroads. Recalled at own request. Under Remarks: {i}Reason given, roof. Real reason, see wife.{/} You put it back quickly, feeling that you have read somebody's letters." },
      } },

    { name = "the long-service board",
      wonder = true,
      description = "A slab of black slate takes up the whole of one end wall, and it is cut with names in columns, small, from the top of the room to the floor. Every devil who has served the Firm a thousand years is put up here. There is no pay for it and no ceremony. You run a finger down. Stokers. Scriveners. A potato imp. Against each name there is a line of what they did, and you had expected a roll of horrors. {i}Kept number nine alight. Never lost a comma. Peeled.{/} Down at the bottom, where the mason has left room, the newest name is cut fresh and sharp: {i}Wrack. Stopped when told, and did not start again.{/} You stand in front of an honours board in the pit, reading the small faithful work of the wicked, and find you cannot make it come out as simply as you would like.",
      things = {
        { name = "the top of the board", description = "The first name has been worn away by nothing but time and dusting. Only its line is left. {i}Came down with the rest and asked what needed doing.{/}" },
        { name = "a space left blank", description = "Between two names in the third column, a gap the height of one line. Miss Tally says it is for Brimley. She had the mason leave it, in his two hundred and ninety-ninth year, which is not allowed. \"He's Acting,\" she says. \"Acting service doesn't count. So it's to be hoped somebody signs him before it's noticed.\"" },
      } },

    { name = "the counter",
      description = "A flap of oak across the door, with a grille, a bell and a chained pencil. Enquiries are made here. The floor on the visitors' side is very little worn.",
      things = {
        { name = "the grille", description = "Brass bars, with a small arched opening at the bottom for the passing of forms. Above the arch, on an ivory plate: {i}Position closed.{/} The plate is hinged. On the back it also says {i}Position closed.{/}" },
        { name = "a pad of leave forms", description = "{i}Application for leave of absence.{/} The pad is full. The top one is filled in, in pencil, by somebody in the Works who wanted a day to see the sea. It was approved. The date for it has not come round yet. It is in the sixth figure." },
      } },

    { name = "the vacancies board",
      description = "By the door, on felt. {i}Tempters (389). Proof reader's assistant (1). Chairman's diary secretary (1, temporary, since the Founding).{/} And at the bottom, on a newer card: {i}Customer Experience: a person who can smile. Training given.{/}" },

    { name = "the tea basket",
      description = "A wicker basket on a cord and pulley, by which things go up the ladder to Miss Tally and come down again. At present it holds a cup, a biscuit, and a card index drawer she is taking to bed." },

    { name = "the retirement clock",
      description = "A gilt carriage clock under a glass dome, on a shelf, with a plate: {i}To be presented on retirement.{/} It has never been presented. Nobody has retired. There is some doubt whether anybody can. It has been wound every day regardless and keeps excellent time." },

    { name = "the portrait of the staff",
      description = "A photograph in brown, six feet long, in a frame: the whole of Head Office in rows on the marble of Reception, by grade, with the stokers standing at the back. The front row is chairs. The middle chair is empty. Everybody else is looking at the camera, and the empty chair has come out sharper than any of them." },

    { name = "the stamp rack",
      description = "A carousel of rubber stamps on the counter. {i}TAKEN ON. POSTED. ACTING. NOTED. AWAITING SIGNATURE.{/} The last one has no rubber left on it. There is a hook for a stamp marked {i}CONFIRMED{/}, and on the hook hangs a cobweb, and in the cobweb a tag: {i}Held on Executive Floor.{/}" },
  },

  exits = {
    { to = "ho_lift", label = "The lift", description = "Back through the flap in the counter." },
  },
}
