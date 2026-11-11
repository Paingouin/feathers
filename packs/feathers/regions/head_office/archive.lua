-- Head Office: the Archive of every bargain, and the room of the ones who said no.

space {
  id = "ho_archive",
  region = "head_office",
  name = "The Archive",
  description = "Stacks. Iron shelves in ranks, a narrow aisle between each pair, a lamp on a chain every twenty yards, and on the shelves the deeds: every bargain the Firm has ever struck, rolled, sealed, tagged and laid in its pigeonhole. The air is dry and still, and it smells of sealing wax. You had imagined a sea of them. You walk a little way in. The first aisle is full. The second is about half full. After that the shelves are bare iron, rank beyond rank, built for a trade that never came.",
  palette = { bg = "#0c0a0c", text = "#d8d0d4", dim = "#766a70", accent = "#c85050", border = "#4a2c34" },
  ambience = {
    dust { glyphs = "·˙", color = "#463c42", rate = 0.15, speed = 0.05 },
    flicker { color = "#c85050", strength = 0.08 },
  },

  things = {
    { name = "the Archivist",
      key = "ho_archivist",
      icon = "☻",
      description = "Mr Docket, a stooped grey devil in felt slippers, with a bunch of tags round his wrist and a lamp of his own on a pole. He can find any deed in the stacks in the time it takes to walk to it. He is seldom asked, and he walks to them anyway, to keep them company.",
      things = {
        { name = "his slippers", description = "Felt, so as not to wake the deeds. He says this quite seriously. Some of the older ones, he says, turn over." },
        { name = "his tags", description = "Blank ones, on strings, ready. He started the day with twenty. He has started every day with the same twenty for a hundred and six years." },
        { name = "his lamp", description = "A candle in a horn lantern on a pole. He will not have the gas near the parchment." },
      },
      actions = {
        { "Ask how many there are", say "\"Deeds? Nine hundred and four.\" He sees your face. \"Since the beginning. Yes. I know what they say upstairs. Legions.\" He lifts the lamp at the empty iron. \"They built for legions. We get one in a generation, and half of those come in on a technicality and go out on another.\"" },
        { "Ask for the Count's file", say "He leads you to the second aisle without looking at a tag. \"Regret, R. Glowers. Two-one-two.\" He does not take it down. \"You may look. The soul itself is held at branch. It will not travel. We sent for it four times. It was back on Brimley's shelf by the morning, each time, with the cylinder still sealed.\"" },
        { "Ask for the ones that got away", when = no(flag "ho_refusals_open"), set "ho_refusals_open",
          say "Mr Docket goes very still, and the tags on his wrist stop clicking. \"The Refusals,\" he says. \"We're not to show those. It lowers morale.\" He looks back down the aisle, where there is nobody, and has been nobody for a century. \"I go in there at night,\" he says. \"With the lamp. I don't know why I'm telling you.\" He walks you to the far end of the second aisle, puts his shoulder against a stack that looks like all the others, and it rolls aside on a rail." },
        { "Ask for the ones that got away", when = flag "ho_refusals_open", say "\"It's open,\" says Mr Docket. \"Mind the lamp. And go quietly in there. I'd take my boots off, if I were you, though I can't say why I should.\"" },
      } },

    { name = "the first aisle",
      description = "The old trade: kings, mostly, and people who wanted to be.",
      things = {
        { name = "a deed with nine seals", description = "A king who asked for a crown that would never leave his line. Tag: {i}Delivered. Line now consists of one elderly cousin and the crown. See Exhibit.{/}" },
        { name = "a deed on a clay tablet", description = "The oldest thing in the stacks. A man pressed his thumb into it, for a good harvest. Mr Docket has worked out, from the marks, that it was a good harvest. \"It would have been anyway,\" he says. \"That year. We looked it up after.\"" },
        { name = "a deed gnawed at one end", description = "The signatory kept mice. They came with him. They have a pigeonhole of their own now, lined with the corner of his contract, and are not on the books." },
        { name = "a row of fiddlers", description = "Eleven deeds in a row, all in the one form, with a little fiddle drawn in the margin of each by the scrivener. Eleven men who wanted to play better than anyone alive. They all do. Not one of them, says the tag, can stand to listen to the other ten." },
      },
      actions = {
        { "Unroll a deed", say "Mr Docket takes one down for you and holds the ends. There is the first page, in red, an inch high. {i}THE PRICE IS YOU.{/} There is a signature at the foot, large, firm and rather pleased with itself. Between the two there is the whole deed, in good plain words, and you can tell from the creases that it has only ever been opened at the last page." },
      } },

    { name = "the second aisle",
      description = "The later trade, and thinner. The pigeonholes are numbered in white paint.",
      things = {
        { name = "pigeonhole 211", description = "{i}Cray, Alderman. Deed drawn. Not yet signed. Party is reading.{/} A scroll, tied but unsealed. Beside it a second scroll, and a third, and a fourth: the Alderman's written queries on the first, of which there are so far nine hundred." },
        { name = "pigeonhole 212",
          key = "ho_count_file",
          description = "A slim roll with one black seal, a rose pressed into the wax. {i}Regret, R., of Castle Regret. One soul. Consideration: that she should live.{/} And she lived. That is all there is of it. It is the shortest deed in the Archive, and the only one in which the signatory asked nothing for himself.",
          things = {
            { name = "the tag", description = "{i}Soul held at Glowers branch, shelf 212. Will not stay filed. Refund available on personal application: see Small Print. Party has not applied. Party has perhaps not been told.{/}" },
            { name = "a note in pencil", description = "In Mr Docket's hand, and not for the file. {i}She went south. She is well. She writes to him. I had it from the imp with the shortbread, and I do not see why the file should not know.{/}" },
          } },
        { name = "pigeonhole 213", description = "Empty, and dusted. It was got ready three hundred years ago for whoever came next." },
      } },

    { name = "the empty stacks",
      wonder = true,
      description = "You take Mr Docket's lamp and walk on, past the second aisle, into the iron. It goes on for an hour. Shelf after shelf, numbered, ruled, waiting, every pigeonhole swept, and nothing in any of them. This is the most enormous room you have ever been in and it is a room for holding other people's ruin, and it is empty. You had not known how many people there were until you saw the place laid ready for them, and understood that nearly all of them, in a field, at a crossroads, on an ordinary bad day, with nobody watching and every reason, had looked at the offer and gone home to their dinners. You stop and hold the lamp up. Bare iron, into the dark. It is the best thing you have seen in your life.",
      things = {
        { name = "the numbers on the shelves", description = "Painted in white, in sequence. They reach nine hundred and four and go on climbing, quite calmly, into the millions, each waiting for somebody who did not come." },
        { name = "a duster on a nail", description = "A bundle of rags on a stick. Mr Docket dusts the whole of the empty stacks, a rank a day. It takes him eleven years to get round. Then the first rank wants doing." },
        { name = "an echo", description = "You say {i}no{/}, quite softly, to try it. It goes down the iron and does not die. It seems to find others like it, further in, and settle among them." },
      } },

    { name = "the Exhibit",
      description = "A glass case at the head of the first aisle, where the Firm keeps what has come back to it under the terms.",
      things = {
        { name = "a crown", description = "Gold, heavy, and dented on one side. The line it could never leave has shrunk to a cousin in a boarding house, who uses it to prop the window." },
        { name = "a fiddle with no strings", description = "Its owner took them off himself, in the end, and went for a carter. He was the only one of the eleven the others could bear." },
        { name = "a wishing ring, worn thin", description = "It grants three. The first two were used in a single afternoon. The third was never made. She kept it by her for sixty years, says the tag, and found she liked having it more than she could like any one thing it would have turned into." },
      } },

    { name = "the sealing bench",
      description = "A table by the door with a spirit lamp, sticks of wax in black and red, and the great seal of the Firm on a chain.",
      things = {
        { name = "the great seal", description = "Bronze, as big as a saucer: a pair of scales, dead level, with nothing in either pan. Under them the Firm's motto, in a ribbon: {i}AS AGREED.{/}" },
        { name = "a stick of white wax", description = "One, never lit, in a drawer by itself. For cancellations. The wick of the lamp is clean on that side." },
      },
      actions = {
        { "Press the seal in the wax", say "Mr Docket melts you a drop of red on a scrap. You press. The scales come up sharp and level. \"There,\" he says. \"That's lawful, that is. That's an agreement about nothing, between you and nobody. Keep it. It's the only kind we've never had a complaint about.\"" },
      } },

    { name = "the catalogue",
      description = "A book on a stand, cross-indexed by name, by date, and by what was asked for.",
      things = {
        { name = "the index of things asked for", description = "It is short. {i}Gold. Crown. Her. Him. To be right. To be young. To play.{/} And one entry in a different ink, with a single reference beside it: {i}For somebody else. 212.{/}" },
        { name = "the index of things got", description = "The same list. Opposite every entry is written {i}exactly{/}." },
      } },

    { name = "the reading desk",
      description = "A sloped desk with a green lamp and a hard chair, for consulting the deeds. A register hangs beside it for readers to sign. The last signature is Mr Docket's. So is the one before." },

    { name = "the moth",
      description = "One grey moth, going from lamp to lamp. It is on the establishment. It has never touched a deed. Mr Docket leaves it a square of old flannel each new year, in pigeonhole nought." },

    { name = "the rolling stack",
      key = "ho_rolling_stack",
      description = "At the far end of the second aisle the shelving runs right up to the rock. One bay has a rail under it, bright with use, though by the tags nothing on it has been touched for an age.",
      variants = {
        { when = flag "ho_refusals_open", description = "At the far end of the second aisle one bay of shelving has been rolled aside on its rail. Behind it there is an archway in the rock, and through the archway a light that is not the red of the lamps." },
      } },
  },

  exits = {
    { to = "ho_lift", label = "The lift", description = "Back down the first aisle to the doors." },
    { to = "ho_refusals", label = "Behind the rolling stack",
      description = "Through the archway in the rock, quietly.",
      requires = flag "ho_refusals_open", hidden = true },
  },
}

space {
  id = "ho_refusals",
  region = "head_office",
  secret = true,
  wonder = true,
  name = "The Refusals",
  description = "A round room cut in the living rock, and round the whole wall, floor to dome, small square niches, close as the cells of a comb. There is a slip of paper in each one. That is all. Each is a report from a tempter, come back empty-handed: a name where they had it, a place, the offer made, and what the person said. The room is full, and a stair winds on up past where the lamp shows, and that is full too. A plain white light comes down from somewhere high in the dome, and falls on the paper, and it is as quiet as snow.",
  palette = { bg = "#0c0e10", text = "#dee2e4", dim = "#76808a", accent = "#f4f0dc", border = "#3a444e" },
  ambience = {
    dust { glyphs = "·˙", color = "#565e66", rate = 0.12, speed = 0.04 },
    shimmer { color = "#262e36", strength = 0.3 },
  },

  things = {
    { name = "the niches",
      description = "You could not count them. Each is the size of a hand and each holds one slip, standing on edge.",
      things = {
        { name = "a slip from Greenhollow", description = "{i}Subject: an old woman selling onions. Offered: youth, beauty, the baron's ruin. Subject said: 'Do I look like I've the time?' Subject then sold our representative two pounds of onions.{/}" },
        { name = "a slip from Saltwick", description = "{i}Subject: lighthouse keeper. Offered: the letter he waits for, today. Subject said he would sooner have it when it comes. Representative withdrew. Representative remarks that it was a fine evening.{/}" },
        { name = "a slip from the mountains", description = "{i}Subject: a goatherd, female. Offered: anything. Subject said: 'What would I do with it up here?' Representative was unable to think of a reply and has not thought of one since.{/}" },
        { name = "a slip with a child's drawing on it", description = "{i}Subject: a boy, about six. Offered: never to have to go to bed.{/} The space for the reply holds a drawing of a dog, and the tempter has written underneath: {i}He wanted to show me this. I stayed to tea.{/}" },
        { name = "a slip in a shaking hand", description = "{i}Subject: a man whose wife was dying. Offered: her life. Subject asked what it would cost. Told him. Subject sat a long time. Subject said: 'She'd never forgive me.' I did not press. I could not have pressed. I ask to be taken off the road.{/} It is signed: {i}Scuttle{/}." },
      },
      actions = {
        { "Read one at random", say "You reach into a niche at shoulder height. {i}Subject: a would-be adventurer on the Barley Road, asleep in a ditch. Offered: nothing. Representative looked at subject for some time, decided it would be like robbing a scarecrow, and left his own sandwich.{/} You remember the sandwich. You had thought it was a miracle. You put the slip back, very carefully, on its edge." },
      } },

    { name = "the first niche",
      key = "ho_first_niche",
      description = "At the foot of the wall, by the door, lower than the rest and larger, with a little stone sill. There is no slip in it. There is a box.",
      things = {
        { name = "the sill", description = "Worn into a hollow, like a church step. Devils have knelt here. You would not have said that they could." },
        { name = "a slip laid under the box", description = "{i}Day one. First approach. Subject: a girl with sheep. Offered: everything; it was all we had worked out. Subject said: 'No.' Asked subject to give a reason. Subject looked at the sheep.{/}" },
      },
      actions = {
        { "Take the No", when = no(item "ho_plain_no"), give "ho_plain_no", fx "sparkle",
          say "The box is grey horn and fits your palm. You look round for Mr Docket. He is in the archway with his lamp held low. \"Take it out of here,\" he says. \"Please. We can't use it and we can't burn it and there's not one of us can stay in the room when the lid's up. It's the strongest thing in the building and it's no good to us at all.\" He wipes his eyes on a tag. \"It ought to go back upstairs. It was only ever lent.\"" },
      },
      variants = {
        { when = item "ho_plain_no", description = "At the foot of the wall, by the door, lower than the rest and larger, with a little stone sill. It is empty. The slip that lay under the box is still there, on the bare stone, and somebody has already set a candle end beside it." },
      } },

    { name = "the winding stair",
      description = "Iron, narrow, going up round the wall past rank after rank of niches into the dome.",
      things = {
        { name = "the higher niches", description = "The same. Every one is filled. Around the hundredth turn the slips are newer and whiter, and you notice that the handwriting has got fewer: the same eleven hands, over and over, and then, near the top, a twelfth that is round and young." },
        { name = "the newest slip", description = "In the last filled niche. {i}Subject: old lady, Lower Wince. Offered: sample case. Subject offered bun. Accepted bun.{/} The ink is hardly dry. Under it there is a postscript: {i}Is this what is supposed to happen?{/}" },
      },
      actions = {
        { "Climb the stair", say "You climb until your legs shake, and stop, and look down the well of the room. Niche under niche, slip beside slip, round and round to the floor. Every one a person. Every one a day when somebody was tired and poor and was offered the earth. You sit down on an iron step, in the white light, among ten million of the word {i}no{/}, and have to wait a little before you can see to go down." },
      } },

    { name = "the white light",
      description = "It falls from the top of the dome, where there is a round opening no bigger than a plate. It is not lamp light and not fire. Mr Docket has asked the Works, who say there is no shaft there, and never was, and would he please stop asking.",
      things = {
        { name = "the opening", description = "Too high to see into. Nothing comes down it but the light. A slip dropped from the top of the stair, he says, takes a very long time to fall, and lands the right way up." },
      } },

    { name = "the tempter's stool",
      description = "A three-legged stool in the middle of the floor, and a writing board. When a tempter comes home with nothing, this is where the report is written up, and whoever writes it then gets up and files it with their own hands.",
      things = {
        { name = "the writing board", description = "Scored with the ghosts of a great many slips. You can read them one over another, in a slant of the light: {i}said no. said no. laughed. said no. asked if I was cold.{/}" },
        { name = "a pen left on the board", description = "An ordinary steel nib in a wooden holder, bitten at the end. Whoever was last here stopped in the middle of a word and went out." },
      },
      actions = {
        { "Sit on the stool", say "You sit where they sit. You look up at the wall. From here you see what a tempter sees, home late, with wet boots and an empty case: the whole height of all the times it did not work. You had thought it would look like failure. It looks like a wall of lit windows." },
      } },

    { name = "the floor",
      description = "Bare rock, and in the middle of it a ring worn smooth, where the stool has been moved a little, each time, to face the niche that was wanted." },

    { name = "a second lamp",
      description = "A horn lantern like Mr Docket's, on a hook inside the arch, with a fresh candle. So he is not the only one who comes. The hook beside it is empty and the hook beyond that has a pillbox hat on it." },

    { name = "a bunch of dried flowers",
      description = "Tucked into a niche near the floor, behind the slip. Sweet peas, gone brown, tied with a twist of green garden twine. The slip in front of them is one of the old ones, from the department that was closed. {i}Subject was put to the question for nine days. Subject said no.{/}" },

    { name = "the notice inside the arch",
      description = "A small enamel plate. {i}UNSUCCESSFUL APPROACHES. Staff are not to linger.{/} Beneath it someone has scratched a tally of visits with a claw. It goes round the arch and a little way along the wall." },

    { name = "the quiet",
      description = "There are no tubes in here and no clock. The paper does not stir. You find you are breathing through your mouth, as you would in a church, and that Mr Docket, in his felt slippers, is doing the same." },
  },

  exits = {
    { to = "ho_archive", label = "The archway", description = "Out past the rolling stack, into the red light again." },
  },
}
