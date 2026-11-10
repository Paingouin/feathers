space {
  id = "castle_chapel",
  region = "castle",
  name = "The Chapel Royal",
  description = "A narrow, high chapel on the east side of the yard, all stone ribs and coloured light. Six gods are provided for, in rotation, by one chaplain. There is a service in progress. There is nearly always a service in progress: the chaplain is paid by the prayer.",
  palette = { bg = "#0c0c14", text = "#d0ccd8", dim = "#6a6680", accent = "#c0a0e0", border = "#383458" },
  ambience = {
    dust { glyphs = "·˙", color = "#6c6488", rate = 0.3, speed = 0.15 },
    flicker { color = "#e8c070", strength = 0.1 },
  },

  things = {
    { name = "the chaplain",
      key = "chaplain",
      description = "Father Anselm Pocket, a round short-sighted man in a cope too long for him, reading the office to the royal pew. He prays for the King by name four times a day and adds, on his own initiative, a short prayer for the meeting.",
      things = {
        { name = "his spectacles", description = "Pushed up on his forehead. He has been looking for them since matins and has prayed about it." },
        { name = "his cope", description = "Cloth of silver, made for a taller priest. The hem is black from the floor, and there are two small holes at the front where he has trodden on it going up the altar steps." },
      },
      actions = {
        { "Wait for the end of the service", say "You wait. He reaches the end, turns the page, and it is the beginning. \"Lauds,\" he explains, over his shoulder. \"Then prime. If you would care to stay for all of them there is a reduction.\"" },
        { "Ask whom he prays to", say "\"Whoever is on. Today is Saint Ledger until noon and the Lady of Lost Socks after.\" He lowers his voice. \"His Majesty never minded which. He said he liked the sitting down.\"" },
      } },
    { name = "the royal pew",
      description = "A carved box with a door, a canopy and a red cushion, facing the altar. It is where the King sits to be prayed at.",
      things = {
        { name = "the red cushion", description = "No dent. But on the kneeler below it there are two, deep ones, quite fresh, and a little soil. He comes, then. Not for the services." },
        { name = "the King's prayer book", description = "Ivory covers, a silk marker. It opens at the burial of the dead. A sweet pea has been pressed there, and is not yet brown." },
        { name = "a carving under the seat", description = "You have to kneel to see it. Some bored royal child, long ago, cut a row of little men along the underside, all standing in a line." },
      } },
    { name = "the choir",
      description = "Eight boys in ruffs, in two rows, singing a psalm as boys do who have sung it every day of their lives.",
      things = {
        { name = "the smallest chorister", description = "He is holding his book upside down and has the best voice of the eight. He cannot read. He has never been found out, because he has never been wrong." },
        { name = "the choirmaster", description = "A thin man who beats time with a rolled-up anthem and uses it, between verses, on the back row.",
          actions = {
            { "Sing along", say "You join in on what you take to be the tune. The choirmaster's head comes round slowly. He does not hit you with the anthem. He just holds it up, so that you can see it." },
          } },
        { name = "a paper dart", description = "In the rafters over the choir stalls, lodged in an angel's hair. It has been there since before these boys were born. Their fathers were choristers too." },
      } },
    { name = "the east window",
      key = "east window",
      wonder = true,
      icon = "◊",
      description = "Six hundred years old, and filling the whole end wall: saints, kings and a great deal of blue, with the sun behind it laying colours down the length of the floor. The glazier was the best the kingdom ever had. {magic}Low in one corner, at the height of a child's eyes, he set a single pane of clear glass.{/} Nobody told him to. Through it, among all the painted heavens, you can see a small square of the real sky, with a real cloud in it, going past.",
      things = {
        { name = "the clear pane", description = "It has a ripple in it, and one seed of a bubble. Every child ever brought to this chapel has found it within a minute and looked through it for the rest of the service." },
        { name = "the kings in the glass", description = "Shown as saints, with haloes, which is generous. One has a halo and a fish. One is a halo and a robe, and the face is a pane of plain red, leaded in later." },
        { name = "the colours on the floor", description = "Blue, ruby, a green like deep water. They move across the flagstones as the day goes. At this hour the blue lies exactly over a brass in the chancel." },
      },
      actions = {
        { "Kneel and look through the clear pane", fx("wash", "#a0c0f0"),
          say "You get down to the height it was meant for. There is the sky. A jackdaw crosses it. After all the gold and glory it is astonishingly plain, and you see why he put it there, and that it is the best thing he made." },
      } },
    { name = "the brasses in the chancel floor",
      description = "Flat figures of kings and queens, engraved in brass and let into the stone. They have been walked on for centuries and are worn as smooth as spoons.",
      things = {
        { name = "the brass of King Osbert",
          key = "osbert brass",
          description = "A cheerful king, full length, with a carp in his arms. The fish is the least worn part of the whole floor: people step round it. Its eye is a round stud, and brighter than the rest.",
          variants = {
            { when = flag "ca_crypt_open",
              description = "A cheerful king with a carp in his arms, and beside him a dark oblong in the floor where a slab has swung down, with steps. The chaplain is facing the altar. The choir has seen it, all eight, and is singing with great concentration." },
          },
          actions = {
            { "Press the eye of the fish", when = all { flag "ca_knows_crypt", no(flag "ca_crypt_open") }, set "ca_crypt_open", fx "shake",
              say "The stud goes in under your thumb with a click that you feel in your knees. A slab beside the brass drops an inch and swings away below the floor, as smoothly as the day it was hung. Cold air comes up, and a smell of stone and old flowers. Father Anselm, at the altar, raises his voice slightly for the response." },
            { "Rub the fish for luck", say "It is what people do. The brass is warm from the blue light. The carp looks as pleased as ever." },
          } },
        { name = "the brass of a queen", description = "She has a small dog at her feet, and the dog has a smaller dog. The engraver was paid by the figure." },
        { name = "a blank slab", description = "Among the brasses there is one stone with the shape of a figure cut into it, and the rivet holes, and no brass. The matrix is a king's, by the crown. It has been swept clean." },
      } },
    { name = "the organ",
      description = "A case of gilded pipes in the west gallery, with a keyboard and a boy at the bellows.",
      things = {
        { name = "the bellows boy", description = "He pumps for the whole of every service and has arms like a blacksmith. He is nine. When he stops for breath the hymn sags in the middle like a tent." },
        { name = "the longest pipe", description = "Sixteen feet. It has not sounded in ten years. Something is living in it, and the organist plays round that note out of courtesy." },
      },
      actions = {
        { "Press a key", say "A single note, loud, in the middle of the psalm. The choir goes up a tone to meet it, as one boy, and carries on. They are professionals." },
      } },
    { name = "the font",
      description = "A stone bowl on a stem, carved with eight kings being christened, each smaller and crosser than the last.",
      things = {
        { name = "the font cover", description = "Oak, on a pulley, shaped like a spire. It is kept on, since the pigeon master's birds discovered the water." },
      } },
    { name = "the hassocks",
      description = "Kneelers, one to a seat, embroidered by the ladies of the court over many reigns.",
      things = {
        { name = "a hassock with a lion", description = "The royal arms, in wool. The lion has been given a slight squint and is the more likeable for it." },
        { name = "a hassock with a marrow", description = "New. Green and striped, very well observed. The lady who worked it says that it is a cushion of state and that she does not know what you mean." },
      } },
    { name = "the reliquary",
      description = "A gilt box with a crystal front, on a bracket by the altar. Inside, on satin, a hand.",
      things = {
        { name = "the right hand of Saint Wobble", description = "The only one. It has five fingers. The chaplain says that the fourteen left hands for sale in the market are an abuse, and has written to say so, and that the saint was not, as far as the Church is aware, a centipede." },
      } },
    { name = "the collection plate",
      description = "Silver, on a table by the door.",
      things = {
        { name = "what is in it", description = "Two buttons, a ticket stub from the queue, and a slip beginning {i}I.O.U.{/} in a royal hand." },
      } },
    { name = "the hymn board",
      description = "Numbers on wooden slats: 4, 4, 4, and 4. The chaplain has a favourite." },
    { name = "the bell rope",
      description = "It hangs in the porch, with a woollen grip. The chapel bell is rung for services, and so has not stopped, in any sense that matters, for years.",
      actions = {
        { "Ring it", say "One pull, one stroke. Out in the yard thirty clerks stop, turn towards the chapel, decide that it is nothing new, and go on." },
      } },
    candle { name = "the altar candles", description = "Six, of beeswax, in silver sticks. One for each god on the rota. The sixth is shorter than the rest. Its god gets the early service." },
  },

  exits = {
    { to = "castle_bailey", description = "Out through the porch, between the two saints." },
    { to = "royal_crypt", label = "The steps by the brass",
      description = "Down through the chancel floor, while the chaplain has his back turned, which is always.",
      requires = flag "ca_crypt_open", hidden = true },
  },
}

space {
  id = "royal_crypt",
  region = "castle",
  secret = true,
  name = "The Royal Vault",
  description = "A long low vault under the chapel, with a rib of stone for every king and a tomb under every rib. They lie in order, in marble, with their hands together and their feet on small animals. The psalm comes down faintly through the floor. It is cold, and clean, and somebody has been here lately with flowers.",
  palette = { bg = "#0a0b10", text = "#c6c8d0", dim = "#5c6072", accent = "#a8b0d0", border = "#2e3248" },
  ambience = {
    dust { glyphs = "·", color = "#444a60", rate = 0.15, speed = 0.1 },
    drip { glyphs = "⠁⠂⠄", color = "#56607a", rate = 0.1 },
  },

  things = {
    { name = "the tomb of the first king",
      description = "The plainest of them: a slab, and on it a man in mail, roughly cut, by somebody who had seen him. He is not handsome. He looks as though he has just been asked to be king and is working out how to refuse.",
      variants = {
        { when = item "sword_wilful",
          description = "The plainest of them: a slab, and on it a man in mail, roughly cut. His right hand is open at his side, curled round nothing. You are carrying what it was curled round. He does not seem to mind. If anything, the stone face looks as it must have looked when he first put the thing down." },
      },
      things = {
        { name = "his open hand", description = "The other kings hold swords, in marble. His hand is empty, and always was. He said that he was done with it, and had it stuck in a block where it would be a nuisance to everyone equally." },
        { name = "the animal at his feet", description = "Kings have lions. He has a sheepdog, with one ear up." },
      } },
    { name = "the tomb of King Osbert",
      key = "osbert tomb",
      description = "A fat, merry king in alabaster, lying on his back and grinning at the roof. Where other kings clasp their hands in prayer he has his arms round a fish. The fish is not alabaster. It is {gold}gold{/}, a great carp two feet long, every scale cut, and it gleams in the grey light from the stair as if it had been landed this morning.",
      variants = {
        { when = item "golden_fish",
          description = "A fat, merry king in alabaster, grinning at the roof, with his arms curved round nothing at all. He does not look robbed. He looks like a man who has at last got somebody to hold it for a minute so that he can tell the story properly." },
      },
      things = {
        { name = "the inscription", description = "{i}OSBERT THE GLAD. Forty years he fished the castle moat, that had no fish in it. On the last day of his life he caught this. Do not ask how. He never stopped telling us.{/}" },
        { name = "the animal at his feet", key = "osbert animal", description = "A cat, in alabaster, looking at the fish." },
      },
      actions = {
        { "Take the fish", when = no(item "golden_fish"), once = true, give "golden_fish",
          say "You expect it to be fixed. It is not. It lifts out of his arms as easily as a loaf from a basket, and it is heavy, and cold, and for one moment, you would swear, it flexes. {gold}The Carp of King Osbert{/}. So this is what was on the banner, and the armour, and the brass. It was only ever that he was proud of it. You tuck it under your arm. The king goes on grinning." },
      } },
    { name = "the tomb of Godric the Careful",
      key = "godric tomb",
      description = "A thin king on a stone chest, lying on his side, facing the wall, with his knees drawn up as a man lies who is guarding something in his sleep. A stone purse hangs from his belt on a stone cord. It is the only tomb in the vault that sits directly on the floor, with no plinth.",
      variants = {
        { when = flag "ca_hoard_open",
          description = "A thin king on a stone chest, facing the wall. The whole tomb has turned a quarter circle on a pin, and where it stood there is a square hole with a stair in it, and coming up the stair, very faintly, a yellow light, where the grey of the vault has gone down and come back off something." },
      },
      things = {
        { name = "the stone purse", description = "Carved shut, with the cord pulled tight. The cord is not all stone. For the length of a hand, where it leaves the belt, it is iron, painted, and it has a little play in it." },
        { name = "his epitaph", description = "{i}GODRIC. He kept what he had.{/} It was meant unkindly by the son who put it up. The son then looked for what he had kept, for thirty years, and is two tombs along, facing this way." },
        { name = "the scuffs on the floor", description = "An arc, scraped in the flagstones, a quarter circle round one corner of the tomb. It is very old and has been swept over a thousand times. You would not see it unless you had read a certain book." },
      },
      actions = {
        { "Try the purse", when = all { flag "ca_knows_hoard", no(flag "ca_hoard_open") }, set "ca_hoard_open", fx "shake",
          say "{i}Let them try the purse.{/} You take hold of the stone purse and pull, as a cutpurse pulls. The cord gives a hand's breadth. Under the floor a weight drops, and the whole tomb, king and chest and all, swings aside on a pin with a long low grinding, as slowly and reluctantly as its owner ever parted with anything. There are steps. The psalm upstairs does not falter." },
        { "Pat his shoulder", say "Cold marble. He was, by every account, an unpleasant man. He lies as a child lies. You find that you have patted him twice." },
      } },
    { name = "the queens' side",
      description = "Along the south wall, the consorts, in a row.",
      things = {
        { name = "the newest tomb",
          description = "White marble, not yet gone grey. A woman of middle age with a broad kind face, carved wearing, at her own written request, a straw hat. On the slab, in a jam jar, there is a bunch of sweet peas. The water is fresh.",
          things = {
            { name = "the sweet peas", description = "Tied with garden twine, in a knot you have seen on a bean row. He comes down by the brass, then, early, before the chaplain. The meeting has one other member." },
            { name = "her inscription", description = "{i}MAUD. She said it wanted more compost.{/}" },
          },
          actions = {
            { "Straighten the jar", say "It was straight. You move it a hair, and move it back. It seemed wrong to do nothing." },
          } },
        { name = "a queen with a book", description = "She is carved reading, and has been given a real brass bookmark, which is moved forward one page at each coronation. She is on page nine." },
      } },
    { name = "a plinth with nothing on it",
      description = "Between two kings there is a plinth of the same marble as the rest, the same height, with the same moulding, and no tomb. The front, where the name goes, is smooth. It has not been chiselled. Nothing was ever cut there. Whoever he was, he is not here, and somebody saw to it that the space was kept." },
    { name = "the tomb in waiting",
      description = "At the far end, a slab with no figure yet, prepared for the present King. The mason has roughed out the feet.",
      things = {
        { name = "the animal at the feet", key = "waiting animal", description = "He was told to carve whatever His Majesty was fondest of. He asked in the kitchens. It is, unmistakably, a marrow." },
      } },
    { name = "the bats",
      icon = "v",
      description = "A dozen, hanging in the vaulting over the oldest kings, folded up small. They go out at dusk by a grating and come back at dawn. They are the only members of the household who keep regular hours.",
      actions = {
        { "Whistle at them", say "Twelve small faces screw themselves tighter shut. One stretches a wing, thinks better of the whole thing, and folds it again. You apologise, quietly." },
      } },
    { name = "the sexton's corner",
      description = "A broom, a bucket, a box of candle ends, and a stool. The office of Royal Sexton has been vacant for eleven years. The floor is swept all the same, in long careful strokes, by somebody who is used to a rake." },
  },

  exits = {
    { to = "castle_chapel", label = "The steps up", description = "Up into the chancel, into coloured light and the fourth psalm." },
    { to = "old_hoard", label = "The stair under Godric",
      description = "Down, under the miser, to where the light comes back yellow.",
      requires = flag "ca_hoard_open", hidden = true },
  },
}

space {
  id = "old_hoard",
  region = "castle",
  secret = true,
  wonder = true,
  name = "Godric's Hoard",
  description = "The stair ends in a chamber cut from the rock of the hill, and you stop on the last step, since there is nowhere to put your foot. {gold}Gold.{/} It is knee deep from wall to wall. Forty years of the revenue of a whole kingdom, unspent, and three hundred years of dust on top of it. Upstairs they are guarding one coin under a glass dome. This is what the coin fell out of.",
  palette = { bg = "#14110a", text = "#e0d6b8", dim = "#807450", accent = "#f0c850", border = "#5a4c20" },
  ambience = {
    shimmer { color = "#f0c850", strength = 0.25 },
    dust { glyphs = "·˙", color = "#7a6c3a", rate = 0.3, speed = 0.1 },
  },

  things = {
    { name = "the gold",
      key = "hoard gold",
      wonder = true,
      icon = "¢",
      description = "Coin. Not heaped: {shimmer}stacked{/}. He did not pour it in. He brought it down a bag at a time, by night, and set every piece on the last, in columns of a hundred, in rows of a hundred, with paths between for walking. It is the most orderly fortune in the world. What light comes down the stair goes out across the tops of the columns as it goes across a field of stubble, and comes back to you warm.",
      things = {
        { name = "a column of coins", description = "A hundred, exactly. You do not need to count. He did, every night, and you can feel that it is right." },
        { name = "the face on the coins", description = "A king with a sharp nose. The same king as on the Reserve, before four centuries of thumbs. So that is what he looked like." },
        { name = "the column that is short",
          description = "By the foot of the stair, one column stands at ninety-nine. Beside it on the floor is a slip of vellum under a pebble: {i}Borrowed, one, for the roof. To be put back.{/} It is the other half of a note you have seen upstairs. The coin went up, and was the first money the next king had ever had, and he put it under a dome." },
      },
      actions = {
        { "Run your hand over the tops", fx "sparkle",
          say "Cold, ridged, and going on for yards. A little dust comes up gold in the light. Nothing shifts. He built it to be leaned on." },
        { "Pocket a coin", say "You take one. You stand there holding it. The column you took it from is now at ninety-nine, and it is extraordinary how that looks: like a missing tooth in a child. You put it back. He would have known. So, it turns out, would you." },
        { "Think about telling the Chancellor", say "You picture it. The cheering. A new roof, a parade, a war by Michaelmas, and in ten years a vault with one coin in it under a slightly larger dome. You look at the columns. They have been safe for three centuries because nobody knew. You decide that the kingdom is better off rich than solvent." },
      } },
    { name = "the plate",
      description = "Along the back wall, on stone shelves, the things that would not stack.",
      things = {
        { name = "a gold dinner service", description = "For two hundred, with the royal arms. Upstairs they have the receipt. Godric took it out of use the week he was crowned, on the grounds that people were eating off it." },
        { name = "a gold ship", description = "A salt cellar in the shape of a ship, as long as your arm, with silk rigging gone to cobweb. It is the elder sister of the silver one in the Hall. There are tiny gold sailors on the deck. One has been posted in the crow's nest, looking out, for three hundred years, at a wall." },
        { name = "a chess army",
          description = "Sixteen pieces in gold and sixteen in silver, each a hand high, set out on a board of jet and ivory. A game is in progress. It is white to move.",
          things = {
            { name = "the gold king", description = "He has not moved from his square. Every other gold piece has been brought back and placed round him. Godric played both sides, and you can see which side he could not bear to risk." },
          },
          actions = {
            { "Make a move", say "You advance a silver pawn one square. It is the first thing to change down here since the last candle went out. It feels like a great liberty, and you leave the pawn where it is, as a present." },
          } },
        { name = "a casket of loose stones", description = "Rubies, mostly, the size of broad beans, in a box lined with wool. Real ones. You hold one up to the stair and it holds the light the way the glass one upstairs does not: all the way down." },
      } },
    { name = "the iron chest",
      key = "iron chest",
      description = "In the middle of the chamber, where the paths meet, a chest of black iron with no lock on it. He did not lock things down here. What would be the point. On the lid is a plain gold circlet, lying where a man might put down his hat.",
      variants = {
        { when = item "old_crown",
          description = "In the middle of the chamber, where the paths meet, a chest of black iron. There is a clean ring in the dust on the lid, where something lay for three hundred years." },
      },
      things = {
        { name = "inside the chest", description = "You lift the lid. Bags, sealed, each with a tag in his tight hand: {i}Tolls. Fines. Wool. Fines on wool.{/} And one, small, tagged {i}Mine{/}. It has four pennies in it and a toffee." },
      },
      actions = {
        { "Take the crown", when = no(item "old_crown"), once = true, give "old_crown",
          say "It is heavier than it looks, and it looks heavy. A band of dull gold three fingers wide, hammered, not cast, with eight rough stones and no arches, no velvet, no pearls. This is what was in the first case in the Jewel House, before the cleaner's, before the card. {gold}The Standing Crown{/}, made for the first king out of what the country had. Godric took it out of the regalia in case somebody wore it out. You lift it off the chest. The dust keeps the shape." },
      } },
    { name = "Godric's stool",
      description = "A three-legged stool at the end of the centre path, with a tin candlestick on the floor beside it. This is where he sat. Not on the gold. In front of it, a little way off, where he could see all of it at once.",
      things = {
        { name = "the candle end", description = "Burned down to a thumb of tallow. He would not have left a candle burning. He stopped coming, one night, and this was as far as it had got." },
        { name = "a tally on the wall", description = "Scratched with a nail, behind the stool, at sitting height: the count, corrected, night by night for forty years. At the bottom the last figure has been written, and then written again under it, the same, and then again, down to the floor. He was only checking." },
      },
      actions = {
        { "Sit on the stool", say "You sit where he sat. It is all there in front of you, row on row, and you wait to feel what he felt. What you feel is that the stool is low, and the room is cold, and that upstairs a man with nothing in the Treasury at all is kneeling in the sun beside a marrow. You get up." },
      } },
    { name = "the dust",
      description = "Thick, fine and even over everything, the colour of the gold beneath. There is one set of footprints in it. They are yours. You find that you are trying to step in them on the way back." },
    { name = "a spider",
      icon = "x",
      description = "It has spun between two columns of coin, and caught nothing in all its generations, since nothing flies down here. Its web is the only thing in the chamber that is not worth anything. It is very fine work.",
    },
    { name = "the ceiling",
      description = "Bare rock, close overhead, with the marks of picks. Somewhere above it is the vault, and above that the chapel, and the choir singing the fourth psalm over forty tons of money without the least idea." },
  },

  exits = {
    { to = "royal_crypt", label = "The stair up", description = "Up under the miser, stepping in your own footprints." },
  },
}
