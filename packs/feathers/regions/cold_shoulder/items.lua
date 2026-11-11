-- Things brought back from the Cold Shoulder. Three keepsakes of the north and one piece of paper.

item {
  id = "cs_unthrown_harpoon",
  name = "the Unthrown Harpoon",
  icon = "↑",
  description = "Nine feet of ash and a head of black iron, forged for the first season of Blowhard Station and carried in the bow of the first boat on the first morning. The harpooner stood up with it. The whale came up beside the boat and looked at him. He sat down again. It has been carried out every season since, by his son and his son's daughter, and brought back dry. It is said that it cannot miss. Nobody is in a position to say.",
  things = {
    { name = "the head", description = "Barbed, and sharp enough to shave with, and never wet with anything but rain. It is oiled every Sunday. The oil is bought from a shop." },
    { name = "the shaft", description = "Worn pale in two places by three generations of hands, and nowhere near the balance point, since nobody has ever needed to find it." },
    { name = "the line", description = "Forty fathoms of the best hemp, coiled, never run out. There is a bowline in the end of it that the first harpooner tied. It has been admired by experts." },
    { name = "a notch on the butt", description = "One. You ask what it counts. It counts the day he sat down." },
  },
  actions = {
    { "Heft it", say "It comes up to your shoulder as if it had been waiting. Your arm goes back by itself. Everything in you that ever wanted to be an adventurer says {i}now{/}. You put it down, gently, and find you are rather out of breath. That is the feeling they have every season, in the bow, and they have never once given way to it." },
    { "Sight along it", say "You look down the shaft at the window, and through the window at the bay, and in the bay a grey back rolls up and blows and goes under. You lower the point. It seems only polite." },
  },
}

item {
  id = "cs_bear_writ",
  name = "the Writ of Standing",
  icon = "§",
  description = "A sheet of sealskin vellum as big as a table top, under which the white bears of the north were admitted, six reigns ago, to be {i}persons able to sue, be sued, hold land in common and give evidence{/}. A king signed it at the bottom. The bears signed it at the top, since they did not care to sign under anybody. It is the only charter in the kingdom's history that has never been broken by either side.",
  things = {
    { name = "the pawprint", description = "In lamp black, the size of a dinner plate, with five claws. The vellum is dented where it came down. The clerk who held the sheet steady wrote in the margin, small, {i}witnessed, and I should like it noted that I did not move{/}." },
    { name = "the King's signature", description = "A good deal shakier than it is on other documents of the reign." },
    { name = "the terms", description = "Four lines. The bears will not eat anyone who has been introduced. The kingdom will not call any part of the ice its own. Disputes go to the Moot. Fish found unattended are nobody's business. Lawyers have tried for two hundred years to find a fifth line in it and have gone home." },
    { name = "a later note", description = "On the back, in another hand: {i}Standing is not on the paper. Take it, if it is a comfort to them.{/} It is a translation. The original was a look." },
  },
  actions = {
    { "Read it aloud", say "You read the four lines. They take a quarter of a minute. You have signed things at the Aldmoor gate that were longer, to bring in an onion. You roll it up with the feeling of having held the only honest paper you ever met." },
  },
}

item {
  id = "cs_fallen_ribbon",
  name = "the Fallen Ribbon",
  icon = "~",
  description = "A hand's length of the northern lights, which came down. It lies in the old jam jar they gave you to carry it in, and does what the sky does: hangs, folds, goes from green to rose and back, and now and then runs all along itself like a shiver. It weighs nothing. It is cold to hold and gives no light to read by, only light to look at. There are kings who would give a county for it, and it would be a poor exchange for them.",
  things = {
    { name = "the jar", description = "Bilberry, by the label, and washed. The lid has three holes punched in it with a nail. You asked whether it needed air. \"We don't know what it needs,\" they said. \"It seemed rude not to.\"" },
    { name = "the fold", description = "It turns over on itself about once a minute, slowly, the way a sleeper turns over. When it does, the green goes pale at the edge and for a moment there is a colour there you have no name for, and then there is not." },
    { name = "the torn end", description = "One end is ragged. The other is cut clean, as straight as a ruled line. You would have expected it the other way about." },
  },
  actions = {
    { "Hold it up to the dark", say "You find a dark corner and hold the jar up. The ribbon stands on end and leans, very slightly, north. You turn the jar. It leans north again. It has not forgotten where it was.", fx "sparkle" },
    { "Open the lid a crack", say "It rises to the gap at once and puts one green corner through, like a cat at a door. You close the lid. You are not sure which of you would be sorrier." },
  },
}

item {
  id = "cs_last_sheet",
  name = "the Last Sheet",
  icon = "□",
  description = "Sheet ninety-one of the Royal Survey, Northern Series: the one that would join the rest of the kingdom to whatever comes next. It is linen-backed, squared in faint blue, and has a title, a scale, a border, a north arrow, and the signatures of every surveyor who has gone out to fill it in, forty-four of them down the right hand margin. The middle is white. They all came back. Each of them signed it, and none of them drew a line.",
  things = {
    { name = "the margin of signatures", description = "Forty-four names, the oldest in brown ink gone faint. Against each, a date out and a date back, and one word of report. The words are {i}White. White. White. Fair. White.{/} You look for the surveyor who wrote {i}Fair{/}. He went out again the next year and wrote {i}White{/}, and underlined it." },
    { name = "the white", description = "Clean paper, and yet you find you cannot look at the middle of it for long. Your eye slides to the border. Paper in a shop is blank. This has been left blank on purpose, by forty-four people, one after another, each of whom went and looked first." },
    { name = "the scale bar", description = "{i}One inch to the mile.{/} Somebody has added after it, in pencil, {i}if they are miles{/}." },
    { name = "one pencil dot", description = "Near the bottom edge, a single dot with a ring round it and the words {i}last peg{/}. It is the only mark on the sheet proper. You have stood on it." },
  },
  actions = {
    { "Try to draw on it", say "You have a pencil stub. You were there. You put the point to the paper to mark, at least, the way you walked. Nothing comes to mind. You remember going out and you remember coming back, and both are quite clear, and between them is a stretch you would have to call white. You put the pencil away. Forty-four signatures regard you with fellow feeling." },
  },
}

item {
  id = "cs_mail_token",
  name = "a mail tally",
  icon = "¤",
  description = "A slip of whalebone with a hole in one end and nine notches down the side, given you by the mate of the {i}Regardless{/} for helping with the bag. It means you have carried the King's mail and are owed a hot drink at any house north of the Stack. This is the law up here, and unlike most law it is observed.",
  actions = {
    { "Count the notches", say "Nine. One for each bag you are supposed to have carried. You carried half of one. The mate rounds up, on principle, for anybody who does not ask how heavy it is first." },
  },
}
