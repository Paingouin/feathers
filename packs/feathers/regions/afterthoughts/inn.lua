-- The And Another Thing: the island inn, with everything an inn has in it.

space {
  id = "is_inn",
  region = "afterthoughts",
  name = "The And Another Thing",
  description = "The island's inn: one long low room under a turf roof, with a peat fire in the middle of the floor and the smoke finding its own way out. It is named for what is said here at closing time, every night, by everyone, with a finger raised. Closing time is a matter of record. Nobody has yet reached it.",
  palette = { bg = "#120e0a", text = "#d6cab4", dim = "#786a56", accent = "#e0a458", border = "#4a3826" },
  ambience = {
    flicker { color = "#ff9a50", strength = 0.3 },
    steam { glyphs = "˙·∙", color = "#6a6258", rate = 0.4 },
  },

  things = {
    { name = "the landlord",
      icon = "☻",
      description = "Erchie Mowat, broad, slow and red in the face from sixty years of leaning over a peat fire. He has never been heard to end a sentence. He leaves them open, in case.",
      things = {
        { name = "his apron", description = "Sailcloth, from the same bolt as the ferry's sail. There is a patch of red flannel on it. Nobody remarks on that either." },
        { name = "his finger", description = "The first one of the right hand, slightly raised at all times, like a man about to make a point. It has been ready since before you were born." },
      },
      actions = {
        { "Order a drink", say "\"There's the ale. And there's the ordinary. And then again...\" He looks at the unlabelled bottle and does not go on. You get the ale. It is black, sweet and tastes of heather, and comes in a cup made of horn." },
        { "Ask what the ordinary is", set "is_knows_still",
          say "The room goes quiet in the way a room does when everyone is suddenly very interested in the fire. Erchie pours you a thimble of something clear. It goes down like a lit string. \"It's herring,\" he says. \"In a sense. It comes from the smokehouse. A lot comes from the smokehouse. If a body went round the back of the kipper racks and knocked twice, and was not wearing a hat with a badge on it...\" He does not end the sentence. He has never needed to." },
        { "Ask for the news", say "\"The ferry came. You were on it. That's the news.\" He considers. \"And another thing...\" You wait. So does everyone. It will come to him." },
      } },
    { name = "the bar",
      description = "A ship's hatch cover on two herring barrels. It still has its ring bolts, and the regulars hook a finger through them on rough nights, from habit.",
      things = {
        { name = "the horn cups",
          description = "A row of them on pegs, each from a different beast, each with its owner's mark burned in the base.",
          things = {
            { name = "old Hector's cup", description = "Ram's horn, black with age, mended with a silver band. He is ninety-one. The band was put on for his eightieth, so that the cup would see him out. It has begun to look worried." },
            { name = "the minister's cup", description = "Small, pale, kept at the far end. He takes one cup on a Saturday, to know what he is preaching against." },
            { name = "a cup with a hole in it", description = "Drilled through the bottom, for a man who swore he would never drink another full cup. He has kept his word nightly for twenty years, with his thumb." },
            { name = "the stranger's cup", description = "Cow horn, plain, unmarked. It is the Cow's own mother's. Yours, for now." },
          } },
        { name = "the ale cask", description = "One, on a cradle, tapped. Heather ale, brewed by Erchie's wife from a receipt that she will pass to one daughter on her deathbed and has, so far, declined to die." },
        { name = "the unlabelled bottle",
          description = "Square, green, full of something as clear as a window. It has no label, no stamp, no seal and no name. It is called {i}the ordinary{/}. The level in it never changes, though it is poured from all night.",
          variants = {
            { when = flag "is_knows_still", description = "Square, green, full of the ordinary. You know now why the level never changes. There is a great deal more where that came from, and where that comes from is behind the kippers." },
          } },
        { name = "the slate", description = "No tabs. Debts on Muckle are kept in the head, and settled in fish, and forgiven at funerals." },
        { name = "a jar of whelks", description = "Pickled, grey, curled like questions. They are free, and there is a reason." },
      } },
    { name = "the fire",
      description = "Peat, on a flat stone in the middle of the floor, with no chimney. It was lit when the house was built and has been carried over from one night to the next ever since, banked under its own ash. If it went out, they say, the island would have to be started again.",
      things = {
        { name = "the smoke hole", description = "A gap in the turf overhead with a square of grey sky in it. Rain comes in, hisses, and is thought no more of." },
        { name = "the pot chain", description = "Hanging from a beam, black with three hundred years of soot, with a kettle on the hook. The kettle is always nearly boiling. That is also policy." },
        { name = "a stool by the fire", description = "Three legs, sat hollow. The seat nearest the fire goes to the oldest in the room. At present that is a dog." },
        { name = "the old dog", description = "A collie, white in the face, asleep with its nose an inch from the peats. It herded the men home from here every night for fourteen years. Now the young one does it, and this one has been allowed to stay past closing." },
      },
      actions = {
        { "Put a peat on", say "You lay it on the way you would lay a log. Six men wince. Erchie comes round, turns it on its edge, leans it against its neighbour, and pats your arm. You have been forgiven something serious." },
      } },
    { name = "the regulars",
      description = "The same five men who were leaning on the Lee Wall. This is where they lean in the evenings. Indoors they talk, at a rate of about one remark each per hour.",
      things = {
        { name = "Mr Flett",
          description = "A long sad man with a set of bagpipes under his chair, like a goose asleep. He is the island piper. He has been asked, by a vote, to play only at funerals, and looks round the room now and then in a hopeful way.",
          actions = {
            { "Ask him to play", say "He has the bag under his arm before you have finished. Five hands come down on his shoulders. \"The gentleman was joking,\" says Erchie. Mr Flett lets the air out, slowly. It sounds the way he looks." },
          } },
        { name = "two brothers not speaking", description = "Rab and Wull Isbister. They fell out over a boat forty years ago, and have sat at the same table every night since so as not to be thought to be avoiding each other. They pass the salt through a third party." },
        { name = "a man mending a creel", description = "He brings his work with him. His fingers go on by themselves while he listens. By the end of the night he has a lobster pot and a full knowledge of everybody's affairs." },
        { name = "a game of merrils", description = "Nine holes scratched in the table top and a handful of limpet shells. It has been going since last winter. The players are different, the game is the same one." },
      },
      actions = {
        { "Tell them where you are from", say "\"Greenhollow.\" They turn it over. \"Is that an island?\" No. \"Ah.\" They are sorry for you, and it is meant kindly, and one of them pushes the whelks your way." },
      } },
    { name = "the tables",
      description = "Three, made from the deck of something that came ashore. The caulking still shows between the planks.",
      things = {
        { name = "the long table", description = "For weddings and wakes. There is a burn at one end from a candle at a wake that became a wedding. The islands are small, and things overlap." },
        { name = "a table with a brass plate", description = "Screwed to the wood: {i}CAPTAIN'S TABLE{/}. It came with the planks. Whoever sits here has to carve." },
        { name = "the window table", description = "It looks down the slip to the sea. A plate and a knife are laid at it each night and cleared away each morning, unused. Erchie's father started that. Nobody has asked who for." },
      } },
    { name = "the kitchen",
      description = "Behind a curtain made of an old sail: a second fire, a girdle, and Erchie's wife, who does finish her sentences and has several ready.",
      things = {
        { name = "Mistress Mowat", description = "Small, quick, floury to the elbow. She runs the inn. Erchie stands in it.",
          actions = {
            { "Ask what there is to eat", say "\"Fish.\" She looks at you. \"Or there's fish.\" You say you will have the fish. \"He'll have the fish,\" she tells the fire, and to you: \"Sit. You're thin. Is nobody feeding you over there?\"" },
          } },
        { name = "the soup pot", description = "White fish, milk, potato and a whole onion, simmering. It is called Tuesday's. It is called that all week.",
          actions = {
            { "Taste the soup", say "You stop talking. You go on not talking until the bowl is clean and you have wiped it with a bannock. Mistress Mowat watches the whole time with her arms folded, like a woman being proved right." },
          } },
        { name = "the girdle", description = "An iron plate hung over the peats, with bannocks browning on it. She turns them with her fingers. She has no feeling left in those fingers, she says, and has never missed it." },
        { name = "a string of dried fish", description = "Split whiting, hard as roof slates. The children chew them like toffee. You try a corner and understand that island children are not like other children." },
        { name = "a crock of butter", description = "The Cow's. Pale, salty, and stamped with a thistle. There is never quite enough, and it is given out by merit." },
        { name = "the kitchen cat", description = "Tortoiseshell, on the meal chest, with one paw in the cream. She takes the paw out when looked at. She puts it back." },
      } },
    { name = "the cellar hatch",
      description = "A square of boards in the floor by the seaward wall, with a rope handle.",
      things = {
        { name = "the cellar",
          description = "Cut down into the rock, and cold. At spring tides the sea comes up through the floor of it to the second step and goes down again, and the ale is all the better.",
          things = {
            barrel { name = "a cask on a shelf", description = "Kept above the tide line. The lower shelf has a row of pale rings on it, each a little higher than the last. They are the high tides of bad years, and each has a date." },
            { name = "a lobster in a rock pool", description = "The pool is in the cellar floor and fills from below. The lobster came up with a tide ten years back and has not seen a reason to leave. It is blue and huge and is known as the cellarman." },
            { name = "bottles in the wet", description = "Stood in the pool to keep cool. No labels. You begin to see how things are done here." },
          } },
      } },
    { name = "the box beds",
      description = "Along the back wall: three cupboards with sliding doors, each with a bed inside it. You shut yourself in like the good plates. They are the inn's rooms.",
      things = {
        { name = "the first box bed",
          description = "For guests. A straw mattress, four blankets and a shelf for your boots. With the doors shut it is black dark and warm as a pocket.",
          actions = {
            { "Try the bed", say "You climb in and slide the door. The inn goes away. You can hear the fire, and the sea under it, and your own heart, which sounds pleased. It is the best bed you have met. You could not, however, stand up in it to save your life." },
          } },
        { name = "the second box bed",
          description = "Erchie's mother's. She is ninety-six and comes out for weddings.",
          actions = {
            { "Knock politely", say "The door slides open a hand's width. One bright eye looks you up and down. \"Too thin,\" says a voice. The door slides shut." },
          } },
        { name = "the third box bed",
          description = "Let by the year to a gentleman from the mainland. There is a slate hung on the door. It says, in a small exact hand: {i}OUT. BACK AT{/} and then nothing.",
          things = {
            { name = "inside the third bed", description = "The blankets are squared to the edge. A spare collar lies on the shelf, and a tide table with every entry ticked in pencil up to one date. After that date the columns are clean." },
            { name = "a cup on the shelf", description = "With a saucer over it, to keep the dust out. Mistress Mowat fills it each morning and empties it each night. \"He takes it without milk,\" she says. \"He never got it, here, but he takes it.\"" },
            { name = "a pair of indoor shoes", description = "Black, small, polished, side by side under the bed. Wherever he went, he went in his outdoor ones, and meant to come back and change." },
          },
          actions = {
            { "Ask about the gentleman", say "\"Mr Pargeter.\" Erchie rubs his neck. \"Came over for three days. On a matter, he said. Went out along the back strand of an evening with a stool under his arm, the way a man goes to his work. Pays his rent yet. It comes in by the ferry every quarter day, in a wet envelope...\" He leaves it there, where he leaves everything." },
          } },
      } },
    { name = "the board over the door",
      description = "Driftwood, lettered with a hot poker: {b}THE AND ANOTHER THING{/}. Whoever did it ran short of board, and {i}THING{/} goes round the corner and down the side." },
    { name = "a fiddle on the wall",
      description = "Hung by its neck on a nail over the bar, with a bow beside it. It is anybody's. Whoever feels a tune coming takes it down.",
      actions = {
        { "Take it down", say "You tuck it under your chin. You do not play the fiddle. The room waits, with great courtesy, while you find this out, and applauds when you hang it up again." },
      } },
    { name = "the lamp",
      description = "A cruisie, burning fish oil with a rush wick. It gives a small yellow light and a strong opinion of where it came from." },
    { name = "the window",
      description = "One, facing the sea, with glass as thick as a bottle. Through it the world is green and has a bend in it.",
      things = {
        { name = "the sill", description = "A row of things the sea has brought: a glass float, a doll's arm, a brick with a word on it in no language Erchie knows, and a coconut. Nobody here is sure what the coconut is. They keep it in case it hatches." },
      } },
  },

  exits = {
    { to = "is_landing", label = "The Landing", description = "Out under the board, into the wind and the smell of peat." },
  },
}
