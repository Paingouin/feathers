-- The Old Royal Library, and the shelf it does not have.

space {
  id = "er_library",
  region = "erstwhile",
  name = "The Old Royal Library",
  description = "A long room with a barrel ceiling and bays of oak shelving down both sides, each bay with its own ladder and its own window. They left the books. Books are heavy, and nobody at four in the morning could say which ones mattered. Ninety years of weather have come in at the windows since, and the library has done what paper does: the bays nearest the garden have gone to a brown felt with ferns in, and the bays nearest the door are as dry as the day they were dusted. A grey librarian is at the desk, mending a spine that is not there.",
  palette = { bg = "#100e0a", text = "#d8d0c0", dim = "#74684e", accent = "#d0b070", border = "#443a24" },
  ambience = {
    dust { glyphs = "·˙", color = "#6e6040", rate = 0.3, speed = 0.08 },
  },

  things = {
    { name = "the librarian",
      key = "er_librarian",
      icon = "☺",
      description = "Master Quire: small, grey, round-shouldered, with spectacles pushed up into hair that is no longer attached to anything. He was Keeper of the King's Books for fifty-one years. He stayed when the court went, since somebody had to see that things were returned. He is the only one of the dead you have met who looks you over and knows exactly what you are. He does not mention it. A reader is a reader.",
      things = {
        { name = "his spectacles", description = "On his forehead. He has been looking for them since the old King's father's time. Nobody has told him. It is the nearest thing he has to a hobby." },
        { name = "the mending", description = "A pot of paste, real, dried to a brick. A bone folder. He works the folder down a hinge of air with total care. In the bay behind him you can see which books he has done: they are the ones that have not fallen apart." },
        { name = "the ticket drawer", description = "A long box of slips, one for every book out. Eleven hundred, in the hands of eleven hundred courtiers, and every one of them dated the same week. He goes through them every evening. He says that they will all come back at once and he wants to be ready." },
      },
      actions = {
        { "Ask for a book", say "\"On what subject?\" You say adventure. He looks at your boots. \"Bay nine, lower shelves. Travels, Voyages and Narrow Escapes. They are mostly lies. The true ones are in bay ten, under Misfortunes.\" He pushes a slip across the desk for you to sign. It is real paper. You sign it. He files it, with satisfaction, in front of eleven hundred others." },
        { "Ask for the Thursday volume", when = no(flag "er_shelf_open"), set "er_shelf_open",
          say "The folder stops. He takes his spectacles off his forehead, finds them with surprise, and puts them on to look at you. \"The Court Journal is bound by the week,\" he says. \"That week was bound without it. I was sent an order. {i}Struck. Do not shelve.{/}\" He folds his hands. \"I have never in fifty-one years destroyed a book, and an order not to shelve is not an order to burn. So I did not shelve it. I put it on the shelf we do not have.\" He nods down the room. \"Bay seven is between six and eight. You will not see it from the front. Go round.\"" },
        { "Ask what he thinks happened", when = flag "er_shelf_open",
          say "\"I think that a man did his job for one afternoon,\" says Master Quire, \"and that it turned out the job could not survive being done.\" He picks up his folder. \"I do not blame the Council. I catalogued their reasons myself, and they are good ones. I only say that I was not ordered to forget it, and that if I had been, I should have misfiled the order.\"" },
      } },
    { name = "the dry bays",
      description = "One to five, nearest the door. Calf and vellum, in ranks, with gilt on the spines. They want dusting and nothing else. You could take one down and read it by the window, and a moth would get up from the page, and that would be all the damage of ninety years.",
      things = {
        { name = "the histories", description = "Bay one. A set in thirty volumes, {i}The Chronicle of the Kingdom from the Beginning{/}, one volume to a reign, lettered on the spine with a name. You run a finger along. Near the end one volume has a plain spine. It is the same thickness as its neighbours. It is not blank inside: you look. It is the reign, in full, year by year, in a careful hand, with the name left out wherever it comes, and a small neat space where it was.",
          things = {
            { name = "the first volume", description = "It begins: {i}In the second year the King built a wall.{/} You turn back a leaf, and there is the title page, and before that the board. The chronicle of the kingdom from the beginning starts in the second year. Master Quire, when you ask, says that it is a complete copy, and that he has always supposed the first year was very quiet." },
            { name = "the plain-backed volume", description = "You read here and there. He mended roads. He was fond of pickled walnuts. He was found twice in the town in a plain coat and was spoken to about it by his Council. In the last chapter the writing goes on to a Wednesday and stops at the foot of a page, and the next page is a Friday, in a different hand, beginning: {i}Good order being restored.{/}",
              actions = {
                { "Look at the gutter", say "You open the book flat at the join between Wednesday and Friday and look down into the fold. A stub. One leaf has been cut out with a knife, very close, by somebody with a steady hand who loved books and hated doing it. It is a big chronicle. The leaf would be about the size of a door." },
              } },
          } },
        { name = "the laws", description = "Bay two. The Statutes at Large, in order. They get thicker by the reign. The last volume on the shelf is the thinnest of the set and holds one statute: {i}That a certain day be accounted not to have been.{/} It is four lines long and has nine signatures." },
        { name = "the sermons", description = "Bay three. Six hundred volumes. Nobody took a single one of them out in the last week, and nobody has since, and they are in beautiful condition." },
        { name = "the poets", description = "Bay four. Thumbed, loose in their bindings, with ribbons and pressed flowers at the places. One has a ring mark from a mug on the cover and a note inside: {i}H.M.'s copy. He WILL read in the bath.{/}" },
      } },
    { name = "the wet bays",
      description = "Eight to twelve, by the garden windows. The shelves have bowed and let go. The books have slumped into one another and grown together, and what is there now is a bank of soft brown stuff with the gilt still glinting in it, like a cliff with fossils. Harts-tongue fern grows out of Natural Philosophy.",
      things = {
        { name = "the book cliff", description = "You press a hand to it. It gives, like a mattress. Titles come out of it at angles: {i}...of Navigation. A Treatise on the... Whether the Moon be...{/} Somewhere inside are the answers to a great many questions. Things are living in them." },
        { name = "a bookworm", description = "Not a figure of speech: a small white grub in a gallery of its own making, halfway through a herbal. It has eaten the entry on itself. It did not seem to recognise it." },
        { name = "a wren's nest", description = "In a hollow of the cliff, lined with shredded vellum. You can read a word on one strip, woven in: {i}everlasting{/}." },
        { name = "bay nine", description = "Travels, Voyages and Narrow Escapes. The lower shelves are sound. You take one down. {i}How I Was Nearly Eaten, by a Gentleman.{/} It has a map. The map is of somewhere that you have been, and has it wrong, and you find that you are indignant." },
      } },
    { name = "the bay numbers",
      key = "er_bay_numbers",
      description = "Painted on a board at the end of each bay, in gold. One, two, three, four, five, six. Eight. You count the bays again from the door. There are twelve bays on this side and they are numbered to thirteen.",
      variants = {
        { when = flag "er_shelf_open",
          description = "Painted on a board at the end of each bay, in gold. Six, and then eight. Now that you know to go round, it is plain enough: bay six is a foot deeper than it has any right to be, and between its back and the back of bay eight there is a slot, the width of a narrow man with a book." },
      } },
    { name = "the reading desks",
      description = "Down the middle of the room, six sloped desks with a bench to each and a brass rod to hold a book open. A grey scholar sits at the third with his head on his arms.",
      things = {
        { name = "the sleeping scholar", description = "He came in on a Wednesday to verify a date. He found that the date depended on another date. He is, Master Quire says, the most thorough reader the library ever had, and will not be woken until the bell, which went with the court." },
        { name = "a chained book", description = "On the first desk, on four feet of chain. It is the catalogue. The dead cannot turn its pages, and so it lies open for ever at the letter T, and anybody who wants a book beginning with another letter has to ask." },
        { name = "the open page", description = "{i}Taxes. Tides. Time, the measurement of. Thursdays: see{/}, and the rest of the line has been inked out with a ruler. Under it Master Quire has written, in pencil, in a hand you can only see by tilting the page: {i}ask.{/}" },
      } },
    { name = "the globe",
      description = "A terrestrial globe in a frame, four feet across, gone green. It shows the kingdom very large, in the middle, and a number of other places round the edges, pale, with question marks. The mapmaker has been honest about the back: it is blank, with a note saying {i}it is thought to continue{/}.",
      actions = {
        { "Spin it", say "It turns with a groan. The kingdom goes away round the side, and you look at the blank back for a while, going past, and then here is the kingdom again. It is a relief. You see how the mapmaker felt." },
      } },
    { name = "the barrel ceiling",
      description = "Plaster, painted with the Nine Arts as women with instruments. Rain has got at the far end, and History has come down altogether, in a heap on the floor. The rest are looking the other way." },
    { name = "the owl",
      description = "A real one, tawny, asleep on top of bay five with her face turned to the wall. There is an owl carved over the door outside. She took it for a sign that the tenancy was open. Master Quire calls her the Under-Keeper and says that the mice in Divinity are a good deal down." },
    { name = "the returns shelf",
      description = "By the desk, labelled {i}RETURNED{/}. One book is on it. Real, damp, tied with string, with a note under the string.",
      things = {
        { name = "the book", description = "{i}The Compleat Pickler, with Receipts for Walnuts.{/} It was eighty-nine years overdue. It came back a year ago, left on the step." },
        { name = "the note", description = "{i}With apologies for the delay. I have been travelling. The receipt on page 40 wants more salt.{/} There is no signature. The hand is broad and loose, and you have seen it on a slate and on a window pane." },
      },
      actions = {
        { "Ask who returned it", say "Master Quire looks at the book and then, carefully, at nothing. \"The ticket was in a name I am ordered not to hold,\" he says. \"So I cannot say whose book it was. I can say that the fine was waived.\" He straightens the string. \"By whom, I cannot say either. I found it written in.\"" },
      } },
    { name = "a brazier",
      description = "Iron, on three legs, in the middle of the floor. Cold. A librarian permits one fire and watches it. This one has a little grey ash in the bottom and the corner of a burned paper, and you understand that Master Quire was made to burn something after all, and chose what: it is the order." },
    { name = "the windows",
      description = "One to a bay, with a seat in each. From the dry ones you look out over the roofs of the city. From the wet ones you look into leaves. A branch of the garden has come in at bay eleven and is reading." },
    { name = "a ladder on a rail",
      description = "Oak, on brass wheels, running the length of the dry bays. You give it a push. It rolls sweetly all the way to bay five and stops against the owl's shelf, and she opens one eye, and you feel that you have been noted in a ledger." },
  },

  exits = {
    { to = "er_palace", description = "Out under the owl to the gallery." },
    { to = "er_struck_shelf", label = "Round the back of bay six",
      description = "The slot between six and eight, where a bay has been built that is not on the plan.",
      requires = flag "er_shelf_open", hidden = true },
  },
}

space {
  id = "er_struck_shelf",
  region = "erstwhile",
  secret = true,
  name = "The Struck Shelf",
  description = "Bay seven: a closet the width of your shoulders between the backs of two bookcases, lit by a slit of window, with one shelf at each side and a stool. It is dry. It has been dusted. Here Master Quire has put everything he was ordered not to keep, and since he was not ordered to keep it badly, it is in order, and labelled.",
  palette = { bg = "#0e0c08", text = "#dcd2bc", dim = "#786a4a", accent = "#e8c070", border = "#4a3e22" },
  ambience = {
    dust { glyphs = "·", color = "#7a6838", rate = 0.2, speed = 0.05 },
  },

  things = {
    { name = "the green ledger",
      key = "er_ledger_shelf",
      description = "On the left-hand shelf by itself, lying flat, since it is too thick to stand: a ledger bound in green, with ink on the fore-edge where a wet thumb turned four thousand leaves in a hurry. The label on the shelf says only {i}Thursday{/}.",
      variants = {
        { when = flag "er_grants_taken",
          description = "The left-hand shelf is empty. There is a clean oblong in the dust the size of a doorstep, and the label, {i}Thursday{/}. Master Quire will see the gap this evening. You have an idea that he will fill in a slip." },
      },
      actions = {
        { "Take the ledger", when = no(flag "er_grants_taken"), set "er_grants_taken", give "er_book_of_grants", fx "sparkle",
          say "It takes both arms. You open it on the stool. {i}Number. Petitioner. Prayer. Granted.{/} A carter. A widow. A man who wants his brother let out. A parish that wants a bridge. Granted, granted, granted, in one broad loose hand, four thousand and nine times, and not a single one of them refused or put off or referred. You sit in a closet behind a bookcase and read what a kingdom asks for when it thinks that somebody is listening. It is mostly small. Then you shut the book and take it with you, since it has been ninety years on a shelf that is not there, and that seems long enough." },
      } },
    { name = "the Council's minute",
      key = "er_minute",
      description = "On the right-hand shelf, in a folder tied with black tape: nine sheets, fair-copied, sealed at the foot. {i}Minute of the Council in Emergency, sitting through the night of Thursday.{/}",
      things = {
        { name = "the seals", description = "Nine, in a row. A key, a scale, a tower, a sheaf, a bell, an anchor, a lamp, a plough, a pair of hands. There is no royal seal. A minute of the Council is not law without one. They knew that. It is why they did the rest." },
      },
      actions = {
        { "Read the minute", set "er_knows_thursday",
          say "{i}That His Majesty has this day, in open court, in the hearing of four thousand, granted every prayer put to him, to the number of four thousand and nine. That the grants together exceed the whole substance of the Crown. That they were made freely, in his right mind, and cheerfully.{/} You turn the sheet. {i}That they cannot be honoured. That they cannot be refused, a king's word being law. That therefore there must have been no word. Resolved: that the day be struck from the calendar; that the hand that signed be a hand unknown to law, and to that end the name be taken from every stone, coin, roll and book; that the Court remove to Stillstanding; and that petitions be heard hereafter one in each year. The Audience Court to be sealed as it stands.{/} And at the foot, in the Chancellor's own hand: {i}He was asked to recant and would not. He was asked to remain and would not. He was asked where he would go, and said, \"To see if it took.\"{/}" },
        { "Read the dissent", when = flag "er_knows_thursday",
          say "Pinned to the last sheet, a half page in a different ink. {i}The ninth member desires it recorded that he threw an inkwell, and that he is not sorry. He desires it recorded that a king who says yes to all is no worse than nine men who say no to all, and a great deal rarer. He signs under protest, for the sake of the hundred thousand who were not in the line. He asks that the room be sealed as it stands and not cleared, so that it may be known, if it is ever opened, that they were happy.{/}" },
      } },
    { name = "a box of name plates",
      description = "A deal box on the floor, labelled {i}From the frames, doors, pews, etc.{/} It is full of brass: labels, plaques, the lids of snuffboxes, a dog collar. Each has been unscrewed from something. Each has had a name on it, and each has been rubbed down with a stone until it is as blank as a spoon.",
      things = {
        { name = "the portrait label", description = "An oblong with four screw holes. You saw the four holes it came out of, at the top of the great stair. Rubbed flat, like the rest. Master Quire did not do the rubbing. He only would not let them be melted." },
        { name = "the dog collar", description = "Small, with a buckle. The plate says, where the owner's name should be, nothing, and under that, still perfectly clear, since nobody thought it mattered: {i}CHANCELLOR.{/}" },
        { name = "a snuffbox lid", description = "Silver. The inscription has gone but the engraver's border is there, and inside the border a line that was too shallow for the stone to reach: {i}from his loving subjects of the Wednesday Market.{/}" },
      },
      actions = {
        { "Tip the box to the light", say "You tilt it under the slit of window and look across forty rubbed plates at a low angle, hoping. They did the work well. Not a letter. But brass remembers being struck, and on one, the oldest and softest, you can see that the name was short. Whatever they called him, it did not take long to say." },
      } },
    { name = "a calendar",
      description = "A printed almanac for the year, hung on a nail, open to the spring. The week runs Monday, Tuesday, Wednesday, Friday, Saturday. It was not altered. It was printed so. The printer was given new blocks on the Friday morning and had the whole edition out by Sunday.",
      things = {
        { name = "the Wednesday", description = "It has the usual things under it: a saint, the moon, {i}market at Erstwhile{/}." },
        { name = "the Friday", description = "Under it, where the saint goes, the printer has put, since he had to put something: {i}Removal.{/}" },
        { name = "the gap", description = "There is not one. The columns have been closed up. Only if you lay a ruler across the page do you find that the week in question is a seventh narrower than all the others, and that the year, down the right-hand side, comes out a day short." },
      } },
    { name = "a bundle of handbills",
      description = "Tied with string: the papers that people were told to bring in to be burned. Not many did. These are the ones that Master Quire got to before the brazier.",
      things = {
        { name = "a grant on a bill of fare", description = "{i}To Wm. Dobbs: the mile between the Bell and the bridge.{/} The King ran out of paper at about three and wrote on what the kitchen sent up. On the back: {i}carp, a raised pie of venison{/}." },
        { name = "a grant on a glove", description = "White kid, the left hand, written across the palm. {i}To Jno. Fettle, glover: payment of the account, in full, with thanks. I am sorry it was so long.{/} The right hand was never finished. You have seen it, with the needle in." },
        { name = "a grant to nobody", description = "A sheet with only the one word on it and the signature rubbed out. Somebody came up to the table and could not speak, and he wrote it anyway, and gave it to them to fill in later." },
      } },
    { name = "the stool",
      description = "Three legs, worn, with a cushion. Master Quire sits here, some evenings. There is a candle end on the shelf, real, and a tinderbox, and you wonder how a man who cannot turn a page reads. Then you see that the green ledger was lying open, and that the book has a ribbon, and the ribbon was at a different entry every day.",
      wonder = true },
    { name = "the slit window",
      description = "A hand wide. It looks down into the gardens, straight along a path that nothing grows on, to a dark mass of yew in the middle. You had not noticed the path from below. From up here it is as plain as a parting in hair." },
    { name = "a framed square of plaster",
      description = "Cut from a wall, the size of a tile, and hung on the shelf end. On it, in a child's charcoal: a man with a big nose and a crown, a dog, and a girl with one shoe. All three are smiling in the way that only charcoal people smile. Underneath, a grown hand has written the date, and then scratched it out, and then, since it was a Thursday, written it in again." },
    { name = "a jar of pickled walnuts",
      description = "On the floor in the corner, sealed with wax, with a paper cover. {i}H.M.'s own receipt. Not to be opened till he is back.{/} It is in the cook's hand. Master Quire has no reason to keep a jar of walnuts in a library. He has given it its own label all the same: {i}Evidence.{/}" },
    { name = "the way out",
      description = "The slot, back between the bookcases. From in here you can read what is written on the back of bay six in chalk, where no reader would ever see it: {i}Not struck. Kept.{/}" },
  },

  exits = {
    { to = "er_library", label = "Back between the bays", description = "Out into the long room, where the librarian does not look up." },
  },
}
