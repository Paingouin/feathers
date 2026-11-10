space {
  id = "royal_apartments",
  region = "castle",
  name = "The Royal Apartments",
  description = "The King's own rooms, at the top of the broad stair: a bedchamber the size of a barn, hung with blue damask, with a bed in it that has its own roof. Everything is aired, warmed and laid out. The household comes in every morning and gets the King up. It has learned to manage without him for that.",
  palette = { bg = "#0c0e16", text = "#d0d0d8", dim = "#6a6e80", accent = "#8fa4d8", border = "#343c5c" },
  ambience = {
    dust { glyphs = "·˙", color = "#585e78", rate = 0.2, speed = 0.2 },
    flicker { color = "#e0b870", strength = 0.08 },
  },

  things = {
    { name = "the state bed",
      description = "Four posts, a canopy, curtains of blue and silver, and steps to get into it. It is made with the sheet turned down at one corner. There is a shape in it.",
      things = {
        { name = "the shape in the bed",
          description = "A bolster, lengthways, with a nightcap on the end. The household needed something to draw the curtains on. It has been bowed to for two years and has started to get its own post.",
          things = {
            { name = "the nightcap", description = "Silk, with a tassel and the royal cipher. It is changed daily. The bolster is said to prefer the blue." },
          },
          actions = {
            { "Wish it good morning", say "A footman by the door says \"His Majesty slept well,\" without moving his lips. It is the response. You have taken part in a ceremony." },
          } },
        { name = "the canopy", description = "On the underside, where only the occupant can see it, somebody long ago had the night sky painted. And somebody since has added, in pencil, in a round careful hand, a small list: {i}beans in by May. Ask Cook re: straw.{/}" },
        { name = "the bed steps", description = "Three, carpeted. The top one lifts. Inside is a pair of boots, old, cracked, and caked to the ankle. They are the only thing in the room that has been anywhere." },
        { name = "the warming pan", description = "Brass, on a long handle, filled with coals at nine each night and run over the sheets. The bolster is kept at a steady temperature." },
      } },
    { name = "the Groom of the Bedchamber",
      key = "groom",
      description = "Lord Peverell Ash, an elderly peer in a powdered wig, whose duty and privilege it is to hand the King his shirt. He has handed a shirt to the air above a bolster, every morning, seven hundred times. He does it beautifully.",
      things = {
        { name = "his wig", description = "It is slightly to one side. Nobody of sufficient rank is present to tell him." },
      },
      actions = {
        { "Ask where the King really is", say "\"His Majesty is in a meeting.\" He says it to a point over your shoulder. Then, lower, to you: \"I have handed him his shirt for thirty years. I know when a man wishes not to be found. One hands the shirt.\"" },
        { "Ask about the wardrobe", say "\"His late Majesty's father had it built. He used to go into it for hours. We assumed robes.\" He adjusts a cuff. \"Kings in this house have always had somewhere to go. It is how we have kept them.\"" },
      } },
    { name = "the great wardrobe",
      key = "wardrobe",
      description = "Walnut, the width of the wall, with four doors and a carved cornice. It holds the state robes of six reigns, in camphor.",
      variants = {
        { when = flag "ca_closet_open",
          description = "Walnut, the width of the wall. The third door stands ajar, and behind the robes there is no back to it: there is a doorway, panelled, and a smell of old paper and cold tea." },
      },
      things = {
        { name = "the robes", description = "Velvet, miniver, cloth of gold, hanging so thick that you could lean on them. They are brushed weekly, by a man with a list." },
        { name = "the shoe rack", description = "Forty pairs, buckled, heeled, never out of doors. The soles are as clean as the uppers." },
        { name = "the third door",
          description = "The hinges on this one are oiled, and not by the man with the list. There is a thumb mark of dry earth on the edge.",
          actions = {
            { "Feel along the back", when = no(flag "ca_closet_open"), set "ca_closet_open",
              say "You push in among the robes, up to the shoulder, feeling for the back of the wardrobe, and there is none. Your hand finds a doorframe, and a latch worn smooth. Behind you Lord Peverell begins, with great attention, to fold a shirt." },
          } },
      } },
    { name = "the dressing table",
      description = "Silver brushes, a looking glass, a razor laid on a towel, and a bowl of water that is brought hot and taken away cold.",
      things = {
        { name = "the looking glass", description = "It shows you, in a king's bedroom, in your travelling clothes. It has seen grander. It has not, lately, seen anyone." },
        { name = "the royal razor", description = "Stropped every morning by the royal barber, who then shaves, with full ceremony, a patch of air. He is said to have nicked it once and apologised." },
        { name = "a miniature in a frame",
          description = "A small oval portrait of a young woman in a straw hat, laughing at whoever is painting her. The late Queen. She is holding a trowel. The glass over her is the only glass in the room with fingermarks on it." },
      } },
    { name = "the breakfast",
      description = "On a table by the window: eggs under a silver cover, toast in a rack, a pot of chocolate. It is brought at eight and taken away at nine.",
      things = {
        { name = "the eggs", description = "Coddled. They go back down to the kitchen, where Mistress Dobbin looks at them, says \"He had his on the step,\" and gives them to the turnspit dogs." },
        { name = "the toast", description = "One slice has a bite out of it. The footman by the door is looking very steadily at the wall." },
      },
      actions = {
        { "Lift the silver cover", say "Steam, and two eggs looking up at you. You put the cover back. You have a feeling of having opened somebody's letter." },
      } },
    { name = "the despatch boxes",
      description = "Red leather, stamped with a crown, stacked against the wall in a pile taller than you. The business of the kingdom, sent up for signature.",
      things = {
        { name = "the top box", description = "This morning's. It is locked, and the key is on the King's watch chain, wherever the watch chain is." },
        { name = "the bottom box", description = "It has been pressed flat by the others. A corner of paper sticks out: {i}...and therefore beg Your Majesty to decide at once, as the matter cannot wait beyond{/} and then the fold." },
      } },
    { name = "the window",
      description = "Tall, with a seat. It looks west over Aldmoor to the Grumbles.",
      things = {
        { name = "the east window", description = "There was one, on the kitchen side. It has been bricked up and papered over, quite recently, and a tallboy stood in front of it. The order came down signed and nobody asked." },
      } },
    { name = "the close stool",
      description = "A velvet box with a lid, behind a screen. There is a Groom of the Stool, a duke, who attends it. The post carries four hundred a year and a house.",
      actions = {
        { "Look behind the screen", say "The duke is there, on a small chair, with a book. He looks up, sees that you are not the King, and looks down again. He is two thirds of the way through a history of drains." },
      } },
    { name = "the bell pull",
      description = "A tasselled rope by the bed, to summon the household.",
      actions = {
        { "Pull the bell", say "Somewhere below, a bell. Within the minute there are eleven people in the room, with towels, a shirt, a tray and a basin, all looking at the bed. The bed does nothing. After a decent interval they bow to it and go. Nobody has looked at you once." },
      } },
    { name = "the mantel clock",
      description = "Gilt, under a dome, with a little enamel king who comes out on the hour and raises his sceptre. He is the most punctual member of the royal family and the only one currently discharging his duties." },
    { name = "a footman by the door",
      description = "At attention, in blue and silver. There is a crumb on his lapel.",
      actions = {
        { "Mention the crumb", say "His eyes close briefly. \"I have a wife and four children,\" he says, without moving his lips. You brush it off for him. You are friends for life." },
      } },
  },

  exits = {
    { to = "great_hall", description = "Down the broad stair, past a gentleman on a step." },
    { to = "kings_closet", label = "The back of the wardrobe",
      description = "In among six reigns of velvet, and out the other side.",
      requires = flag "ca_closet_open", hidden = true },
  },
}

space {
  id = "kings_closet",
  region = "castle",
  secret = true,
  name = "The Kings' Closet",
  description = "A small panelled room with one chair, one lamp and one shelf running all the way round it. No servant has ever been in here. Every king of this house has had the key in his turn, and each has left on the shelf the thing he did not want tidied.",
  palette = { bg = "#100e0c", text = "#d4ccc0", dim = "#74685c", accent = "#d8a868", border = "#463a2c" },
  ambience = {
    flicker { color = "#ffc070", strength = 0.2 },
    dust { glyphs = "·", color = "#544a3e", rate = 0.2, speed = 0.1 },
  },

  things = {
    { name = "the shelf",
      description = "Oak, a hand deep, at the height of the eye. The things on it are in order of reign, left to right from the door. There is no dust on any of them. Each king has dusted for the ones before.",
      things = {
        { name = "a wooden horse",
          description = "The oldest thing here: a toy, carved with a knife, with three legs and a peg. It belonged to the first king, when he was nobody's king, on a hill farm. He kept it all his life and was ashamed of it, and could not throw it away." },
        { name = "a bundle of letters",
          description = "Tied in green ribbon, in a woman's hand. They are to a king who married, for reasons of state, somebody else.",
          actions = {
            { "Leave them tied", say "You leave them tied. Six kings have stood here with the same ribbon in their fingers, and it has never been undone. You are in good company." },
          } },
        { name = "a fishing rod",
          description = "Split cane, very fine, with a brass reel and a float painted red. So he did fish. Next to it is a notebook of catches, forty years of them, and every line is the same: {i}Nothing. Lovely day.{/} Except the last.",
          things = {
            { name = "the last line", description = "{i}Got him.{/} Underlined three times. And then a drawing, taking the whole page, of a carp with an expression." },
          } },
        { name = "Godric's little book",
          key = "godric book",
          description = "A pocket book in a tight small hand, bound in the cheapest calf. The private accounts of Godric the Careful. Every page is ruled, and every page says the same: {i}got{/}, a sum, and {i}kept{/}, the same sum.",
          things = {
            { name = "a pressed penny", description = "Flat, between two pages, as other people press a flower. The first one he ever did not spend." },
          },
          actions = {
            { "Read the last page", when = no(flag "ca_knows_hoard"), set "ca_knows_hoard",
              say "The hand is shaky here. {i}They will want it when I am gone. They will have a roof off it in a week and a war in a month. I have had the masons in, by night, and paid them, God help me, in coin. It is under me. I shall lie on it. Let them try the purse.{/} You read the last line again. You think about the chapel, and what is under chapels." },
            { "Read the last page", when = flag "ca_knows_hoard",
              say "{i}It is under me. I shall lie on it. Let them try the purse.{/} It is the only joke he ever made, and he had to die to make it." },
          } },
        { name = "a jar of boiled sweets", description = "The old King's. Lemon. There are four left. Humbert, you gather, has been making them last." },
        { name = "a stack of seed catalogues",
          description = "The newest things on the shelf, thumbed soft. {i}Marrows, Prize and Other. Beans of Merit.{/} The margins are full of notes in a round hand.",
          things = {
            { name = "a note in the margin", description = "{i}Try the striped one against the south wall. If it takes, tell nobody.{/}" },
          } },
        { name = "a gap on the shelf", description = "Between the fishing rod and the letters there is a space the width of a hand, with nothing in it. It has been dusted like the rest." },
      } },
    { name = "the horn cup",
      key = "horn cup",
      icon = "u",
      description = "At the end of the shelf, by itself: a plain drinking horn, cut short and footed in silver, such as a herdsman might own. It is brim full of water. This is {gold}the Cup of Plenty{/}, given to the house by somebody it once sheltered, and it has never been empty.",
      variants = {
        { when = item "cup_plenty",
          name = "a ring on the shelf",
          description = "A pale wet ring on the oak, where a cup stood for six hundred years. It is not drying." },
      },
      things = {
        { name = "the water", description = "Clear, and not quite cold. You tip a little out on the floor. The cup is full. You tip out a little more. The cup has no views on this. It is full." },
      },
      actions = {
        { "Taste it", when = no(item "cup_plenty"),
          say "Water. Lukewarm, with a faint taste of horn. That is all it has ever given: as much as anyone could want of something nobody asks for twice. No king of this house has ever gone thirsty, and none has ever been glad of it." },
        { "Take the cup", when = no(item "cup_plenty"), once = true, give "cup_plenty",
          say "You pick it up, carefully, so as not to spill, and then less carefully, since it makes no difference. {gold}The Cup of Plenty{/} goes into your pack upright. Your pack will be damp from now on. Nobody has been in this room but kings for six hundred years, and the next one to come will be thinking about beans." },
      } },
    { name = "the chair",
      description = "A plain wooden armchair with a rush seat, sagging. Kings have sat here to be nobody for an hour. The arms are dark from their hands.",
      actions = {
        { "Sit in it", say "It is the most comfortable chair in the castle. You sit in it and nothing is expected of you, and you understand in your bones why a man with a throne would want one of these." },
      } },
    { name = "the door frame",
      key = "height marks",
      wonder = true,
      description = "The inside of the door frame is covered with small cuts, each with a name and an age beside it, from knee height to the height of your shoulder. {magic}Every heir to this kingdom was brought in here as a child, stood against the wood, and measured by a parent with a penknife.{/} Six centuries of them. {i}Osbert, 4. Godric, 7 (would not stand still). Maud, 5.{/} For this one thing, on this one day each year, they were only somebody's child being told to stand up straight.",
      things = {
        { name = "the lowest mark", description = "{i}Humbert, 3.{/} And beside it, in the same hand, a little later: {i}Humbert, 3, on tiptoe. Does not count.{/}" },
        { name = "a name scratched out", description = "Halfway up, a row of marks where the name has been cut away with the same knife that made it. The heights are left. A child grew, here, from the knee to the shoulder." },
      },
      actions = {
        { "Measure yourself", say "You stand against it. You come out a little taller than the tallest king, and a great deal shorter than you had hoped." },
      } },
    { name = "a cold cup of tea",
      description = "On the floor by the chair, with a skin on it. This morning's. He has been up, then, by the wardrobe, while the household was bowing to a bolster ten feet away." },
    { name = "the spyhole",
      description = "A knot in the panelling that slides. It gives onto the bedchamber.",
      actions = {
        { "Look through the spyhole", say "Lord Peverell, folding a shirt. He looks straight at the knot, and inclines his head half an inch. He has always known where the hole was. One hands the shirt." },
      } },
    candle { name = "the lamp", description = "A single oil lamp on a bracket, trimmed and full. Somebody keeps it so, and it is not the household." },
  },

  exits = {
    { to = "royal_apartments", label = "The wardrobe", description = "Back through the velvet, into the smell of camphor." },
  },
}

space {
  id = "muniment_room",
  region = "castle",
  name = "The Muniment Room",
  description = "The records of the Crown: a tall cold room of pigeonholes, chests and rolled parchment, with a gallery and a ladder on wheels. Every charter, every grant, every law the kingdom has ever passed is here, and can be produced, given notice, a docket, and the remainder of your life.",
  palette = { bg = "#0e0e10", text = "#d2cec4", dim = "#706c64", accent = "#c8b888", border = "#444034" },
  ambience = {
    dust { glyphs = "·˙", color = "#5e5a50", rate = 0.4, speed = 0.2 },
  },

  things = {
    { name = "the Keeper of the Rolls",
      key = "keeper",
      description = "Master Ambrose Fenn, very old and very deaf, at a sloping desk under the one window. He is copying a document that has faded, onto a parchment that will. He has not noticed you. He did not notice the last three kings.",
      things = {
        { name = "his ear trumpet", description = "Brass, on a hook, with a cobweb across the bell. He hears what he needs to, he says, and it is all written down." },
        { name = "his quill", description = "Goose. There is a jar of two hundred more, cut and ready. He goes through one a day. The geese of the kingdom have this against the Crown as well." },
      },
      actions = {
        { "Shout a question", say "\"WHAT?\" he says. You shout it again. He considers. \"Fourteenth of the month,\" he says, \"under D,\" and goes back to his copying. You do not know what he heard. It may well be under D." },
      } },
    { name = "the docket desk",
      description = "A counter by the door, with a pad of printed slips, a pen on a string, and a spike. {i}No record will be produced without a docket. No docket will be accepted unless complete.{/}",
      things = {
        { name = "the spike", description = "Dockets, impaled, to a depth of a foot. The bottom ones are for records that have since been lost, by people who have since died. They remain in hand." },
        { name = "the pad of slips",
          description = "{i}Name. Rank. Record sought. Reason. Reason for reason.{/}",
          actions = {
            { "Fill in a docket", when = no(flag "ca_docket"), set "ca_docket",
              say "Name: you give it. Rank: you leave a dash. Record sought: you think of the alphabet, and of the middle of it, and write {i}K{/}. Reason: {i}adventurer{/}. Reason for reason: you write {i}see reason{/}, which you have learned in this castle. You put it on the spike. Nothing happens. But along the wall of drawers, one, in the middle, has come unlatched with a small click, as a thing does that has been waiting for the paperwork." },
          } },
      } },
    { name = "the wall of drawers",
      description = "Twenty-six oak drawers, each a yard wide, lettered in brass from A to Z. Things that are not documents are filed here, under what they are.",
      things = {
        { name = "the drawer marked A", description = "An axe, a wax apple, and an apology, in a sealed envelope, from one king to another. It was never sent. It is filed." },
        { name = "the drawer marked F", description = "You expect a fish. There is a card: {i}Fish: see King.{/}" },
        { name = "the drawer marked K",
          key = "drawer k",
          description = "Stiff, latched, and heavier than the others. The brass K is worn nearly flat by fingers, though the drawer does not seem to have been opened in living memory. People have wanted to.",
          variants = {
            { when = item "kingdom_key",
              description = "Open, and empty but for a shape in the green baize: a key the length of your forearm. The Keeper has walked past it twice without looking in. A drawer is filed whether or not there is anything in it." },
            { when = flag "ca_docket",
              description = "Unlatched, and standing open an inch. Green baize, and on it something long and gold." },
          },
          actions = {
            { "Open drawer K", when = all { flag "ca_docket", no(item "kingdom_key") }, once = true, give "kingdom_key",
              say "It slides out on its runners with a sigh. On the baize lies a key, gold, as long as your forearm, with a bow in the shape of a crown and wards cut like a small city. A label on a silk string: {i}Key, Kingdom, of the. 1.{/} You lift it out. {gold}The Key of the Kingdom{/} is real, and solid, and plainly made to open something. Master Fenn turns a page. You have a docket. It is all in order." },
            { "Try the drawer", when = no(flag "ca_docket"),
              say "Latched. It does not so much as rattle. A small enamel plate on the front says {i}DOCKET{/}." },
          } },
        { name = "the drawer marked T", description = "A row of labelled spaces: {i}Tuesday (spare). Treaty (broken, 2 pieces).{/} One space is labelled {i}Thursday{/} and has a slip in it: {i}Removed by order. Do not enquire.{/}" },
        { name = "the drawer marked Z", description = "Empty, and lined with fresh paper. The Keeper renews it every year. \"It's the end,\" he says. \"Something will come.\"" },
      } },
    { name = "the charter chests",
      description = "Iron-bound, along the north wall, each with the seal of a reign.",
      things = {
        { name = "the Great Charter",
          description = "Under glass on the lid of the oldest chest: the liberties of the kingdom, granted by a king with nine barons standing behind him. The barons' seals hang from it on ribbons.",
          things = {
            { name = "the first liberty", description = "{i}No free man shall be made to wait, save in a line.{/}" },
            { name = "the ninth seal", description = "A thumbprint in wax. The ninth baron had forgotten his seal and the others would not let him go home for it." },
          } },
        { name = "the Statute of Hats", description = "Two hundred years old, with penalties. The preamble runs to four pages and the word {i}bell{/} appears in it thirty times, each time more bitterly." },
        { name = "a treaty with the dwarves", description = "Carved, not written, on a slate the size of a door. It grants them the underneath of the Grumbles for as long as they want it. Their side is signed with a chisel. Ours is signed in chalk and has mostly rubbed off." },
      } },
    { name = "the burial register",
      key = "burial register",
      description = "A black book on a stand of its own, with a ribbon. Every king and queen of the house, the day of the funeral, and where they were laid.",
      things = {
        { name = "the ribbon", description = "It marks the last entry, a queen, eleven years ago. The page has been opened here so often that the book falls to it." },
      },
      actions = {
        { "Read the burial register", when = no(flag "ca_knows_crypt"), set "ca_knows_crypt",
          say "They are all in one place: {i}laid in the vault under the Chapel Royal{/}, entry after entry, back to the first. And at the front, on the flyleaf, a note for whoever keeps the book: {i}The way down is by the brass of King Osbert, in the chancel floor. The verger is to press the eye of the fish. If there is no verger, do not tell the chaplain. He will want to hold a service.{/}" },
        { "Read the burial register", when = flag "ca_knows_crypt",
          say "{i}Under the Chapel Royal. By the brass of King Osbert. Press the eye of the fish.{/} You have it by heart." },
      } },
    { name = "the Roll of Names",
      key = "roll of names",
      wonder = true,
      description = "A parchment roll as thick as a tree, on a windlass, with a handle to turn it. Every subject of the Crown is entered here at birth: name, parish, and a column for what became of them. The Keeper says that he has not written in it for thirty years. He has not had the time. {magic}It is up to date.{/}",
      things = {
        { name = "the newest entries", description = "The ink is wet. A child, this morning, in Saltwick. A name, a parish, and the last column blank, with all that room in it." },
      },
      actions = {
        { "Find your own name", fx "sparkle",
          say "You wind the handle for some time. There you are: your name, your village, in a clerk's hand from the year you were born. In the last column he put a dash. The dash has been altered since. Somebody, in ink that is not quite dry, has turned it into a word: {i}adventurer{/}. And after it, in brackets, smaller: {i}(prob.){/}" },
      } },
    { name = "the pigeonholes",
      description = "Ten thousand of them, floor to gallery, each with a roll and a tag.",
      things = {
        { name = "a roll of pedigrees", description = "The descent of every noble house. The Vaux-Pimbletons begin, in the first line, with a man described as {i}Pim, a bailiff, who was owed{/}." },
        { name = "the petitions, answered", description = "One pigeonhole. One roll. One petition, about a goose, granted in the old King's time. It is shown to visitors." },
        { name = "the petitions, pending", description = "The gallery." },
      } },
    { name = "the ladder on wheels",
      description = "Twenty feet of it, on a rail, for reaching the upper pigeonholes.",
      actions = {
        { "Ride the ladder", say "You push off. It rolls the length of the room with a noise like distant thunder and stops against the end wall. Master Fenn does not look up. A single roll falls from the gallery and lands in the correct chest." },
      } },
    { name = "the muniment cat",
      icon = "c",
      description = "Grey, thin, serious. She is employed against mice, who eat charters. She sits on the Great Charter itself, on the glass, where the lamp is warmest. Liberty has to be kept by somebody." },
    { name = "a bookworm",
      description = "In the binding of a volume of tax returns, working steadily through the reign of the king with the fish. It has eaten a hole through every page in the same place. Nobody will ever know now what he paid for it." },
  },

  exits = {
    { to = "great_hall", description = "Out by the small door, under the gallery." },
  },
}
