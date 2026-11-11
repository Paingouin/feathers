space {
  id = "castle_armoury",
  region = "castle",
  name = "The Armoury",
  description = "A long vault under the west tower, racked to the roof with everything a kingdom needs for a war: pikes, bows, mail, plate. All of it is bright. None of it is scratched. It is the best kept and least used room in the castle, and the armourer would like it to stay both.",
  palette = { bg = "#0c0e12", text = "#ccd2d8", dim = "#66707c", accent = "#a8c0d8", border = "#34445a" },
  ambience = {
    shimmer { color = "#a8c0d8", strength = 0.1 },
    dust { glyphs = "·˙", color = "#525c68", rate = 0.2, speed = 0.2 },
  },

  things = {
    { name = "the armourer",
      key = "armourer",
      description = "Master Tobias Rivet, in a leather apron, with a rag in each hand. He has kept the royal armoury for forty years and issued from it, in that time, one helmet, to prop the door.",
      things = {
        { name = "his rags", description = "One for oil, one for polish. He does not put them down to shake hands. He offers an elbow." },
        { name = "his ledger", description = "{i}Issued: 1 helmet (door). Returned: pending.{/} It is the only line on the page, and he looks at it the way other men look at a debt." },
      },
      actions = {
        { "Ask to borrow a sword", say "\"What for?\" Adventuring. He winces. \"You'd get it {i}dirty{/}.\" He turns one on the rack a quarter inch so that it catches the light. \"No. Look at them. Look how well they are.\"" },
        { "Ask about the war", say "\"Which?\" Any. \"There was the siege. We stood still. Before that there was a war with the king with the fish, but that was mostly owing.\" He breathes on a breastplate. \"We are very well prepared for the last one.\"" },
      } },
    { name = "the pike racks",
      description = "Four hundred pikes, upright, in ranks. They are dressed by the right. He checks them with a string.",
      things = {
        { name = "one pike, slightly short", description = "Third rank, ninth from the door. It was broken once, in a doorway, by a recruit turning round. It was mended, and the recruit is now the Captain, and neither has got over it." },
        { name = "the string", description = "Knotted at pike height. It hangs on a nail labelled {i}STRING, PIKE, DRESSING, 1{/}." },
      } },
    { name = "the suits of armour",
      description = "A row of them on stands along the north wall, one for each king, in order. You can walk down the centuries and watch the waistline.",
      things = {
        { name = "the oldest suit", description = "Mail, a plain helm, a nose guard. It is small. Kings were shorter then, or stood further away." },
        { name = "the suit with the fish", description = "Fluted plate, very fine, with a scaled pattern chased into every piece and a crest on the helm that is plainly a carp. The armourer will not be drawn. \"He paid for it,\" he says, \"which was unusual.\"" },
        { name = "a suit for a horse", description = "Full barding, gilt at the edges, with a small engraved plate: {i}Sir Reginald. Ceremonial.{/} It has been let out at the girth." },
        { name = "the newest suit",
          description = "King Humbert's. Parade armour, blued and gilded, made for the coronation and worn for an hour.",
          things = {
            { name = "the gauntlets", description = "Never flexed. There is a little dry earth in the left one, as if somebody had lately tried it for size as a trowel holder and thought better of it." },
            { name = "the knee pieces", description = "These, alone of the whole suit, are worn. Scuffed, dulled, the gilding gone. You look at the armourer. He looks at the ceiling. \"He borrows them,\" he says. \"For kneeling. I don't ask on what.\"" },
          } },
        { name = "an empty stand", description = "Between two kings, a stand with nothing on it and no label. It is dusted with the others." },
      },
      actions = {
        { "Knock on a breastplate", say "It rings, a long clean note. Down the row, one by one, the others pick it up. The armourer shuts his eyes until it is over. \"Every visitor,\" he says." },
      } },
    { name = "the bow wall",
      description = "Longbows unstrung on pegs, and a chest of strings in wax paper.",
      things = {
        { name = "a crossbow",
          description = "A siege piece with a winding handle. There is a card tied to the trigger.",
          things = {
            { name = "the card", description = "{i}Do not. This means you, Hollis.{/}" },
          } },
        { name = "a barrel of arrows", description = "Fletched with goose. The geese of the kingdom have never forgiven the Crown, and it accounts for a good deal." },
      } },
    { name = "the shield wall",
      description = "Shields of the great families, hung in rows by rank.",
      things = {
        { name = "the Vaux-Pimbleton shield", description = "A swan, argent. It has, you notice, the usual number of necks. The hedge on Nobles' Row is a later development." },
        { name = "a blank shield", description = "Kept for the questing knight in the yard. It has been ready for nine years. The armourer waxes it against the day." },
        { name = "a shield with a dent",
          wonder = true,
          description = "Low on the wall, plain oak and iron, with one dent in the boss. {magic}It is the only mark of use in the whole armoury.{/} The label says it was carried at the siege by a kitchen boy, who was hit by a sandwich, thrown in anger, on the ninth day. It is the kingdom's one wound. The armourer oils round it and has never tried to beat it out." },
      } },
    { name = "relics of the siege",
      description = "A glass case by the door, with a rope across it.",
      things = {
        { name = "an enemy ladder", description = "Ash, twenty rungs. It was left against the wall when they went home. The castle used it for the apples for sixty years before anyone thought to put it under glass." },
        { name = "a sandwich box", description = "Tin, foreign, empty. This is the cause of the victory. There is a wreath in front of it." },
        { name = "the flag of truce", description = "Ours. Made in advance, the first morning, from a tablecloth, and never needed. The gravy stain has been kept." },
      } },
    { name = "the powder store",
      description = "An iron door with a small grille. Behind it, on a stone shelf, one keg.",
      things = {
        { name = "the keg", description = "For the cannon on the wall. Half was used at the royal wedding. The other half has been waiting for a christening." },
      } },
    { name = "the helmet at the door",
      description = "A common pot helm, on its side, holding the door open. It is the armoury's entire contribution to the life of the castle and it is doing it well." },
    { name = "the sword in the block",
      key = "wilful",
      icon = "†",
      description = "At the end of the vault, alone, a great sword stands point down in a block of black oak. This is {gold}Wilful{/}, the sword of the first king. The legend says that it will come out for the rightful hand and no other. Forty generations of knights have put their backs into it. There are grooves in the floor from their heels.",
      variants = {
        { when = item "sword_wilful",
          name = "the empty block",
          description = "A block of black oak with a slot in the top, and grooves in the floor from forty generations of heels. The armourer has been past it twice. He has noted that it wants dusting." },
      },
      things = {
        { name = "the heel grooves", description = "Two, a shoulder's width apart, worn an inch into the flagstones. Every knight of the kingdom has stood here, once, on the morning he was dubbed, and gone red in the face." },
        { name = "the tally of attempts", description = "A slate on the wall. Chalk strokes in fives, by the thousand, and at the bottom, in the armourer's hand: {i}It can tell.{/}" },
      },
      actions = {
        { "Heave at it", when = no(flag "ca_sword_tried"), set "ca_sword_tried", fx "shake",
          say "You set your heels in the grooves, take the grip in both hands, and pull until the vault goes dark at the edges. Nothing. It is like pulling at the hill. \"Rightful hand,\" says the armourer, not looking up from his rag. \"They all think it might be them.\"" },
        { "Stop trying", when = all { flag "ca_sword_tried", no(item "sword_wilful") }, once = true, give "sword_wilful",
          say "You give up. You do it properly: you decide that it is not yours, and never was, and that this is fine. You put out a hand to steady yourself on the hilt as you turn to go, and the sword comes with you. No light. No music. It is simply in your hand, as a thing is that was only waiting to stop being pulled. {gold}Wilful{/} is lighter than it looks. The armourer is doing the pikes and has his back to you." },
      } },

    { name = "a rack of wooden swords",
      description = "By the door, low down: practice swords for the royal children, ash, with the grips bound in cord. Twelve pegs.",
      things = {
        { name = "the smallest sword", description = "The length of your forearm. The point has been chewed. Every heir has started on this one, and every heir, it seems, has had teeth coming." },
        { name = "an empty peg", description = "The twelfth. Master Rivet says one was left out on the wall walk in his grandfather's day and carried off by the jackdaws, for a perch. He has kept the peg clear. \"It's on the books,\" he says. \"It'll turn up.\"" },
      },
      actions = {
        { "Heft one", say "You take a wooden sword off its peg and try a cut. It is exactly the weight of the one you had at five. Master Rivet watches the cut, sucks his teeth, and for the first time puts down a rag. \"Elbow,\" he says, and shows you. Nobody ever had." },
      } },
    { name = "the armoury cat",
      description = "Asleep in an upturned helmet on the bench, exactly filling it, like a pudding in a basin. It is a tabby. The helmet is the Black Prince's.",
      actions = {
        { "Stroke it", say "It purrs, and the helmet takes up the note and rings with it, faintly, like a struck bowl. Master Rivet says it is the only war cry that has been raised in here in his time." },
      } },
    { name = "a siege ladder",
      description = "Hung along the wall on brackets: forty feet, oak, with iron hooks. It was made for storming the walls of an enemy. The kingdom has never found an enemy with walls shorter than forty-five." },
    { name = "a halberd with a ribbon",
      description = "On the end of the pike rack, set apart: a halberd of the old Gate Company pattern, with a black ribbon on the shaft. It is brought out once a year and stood by the gate for a night.",
      things = {
        { name = "the ribbon", description = "Renewed every year. The tag reads {i}Garrick. On detached duty.{/} The armourer says that the company never struck him off, since he never came back to be struck, and that his pay has been accruing for ninety years and would now buy the armoury." },
      },
      actions = {
        { "Ask where he is posted", say "\"East gate of the old town,\" says the armourer. \"Nobody relieved him. Nobody could, see, the order came down for a Thursday.\" He runs a thumb along the blade. \"The lads say that if you go and look, he is still there. I say, then somebody ought to take him his pay. Nobody volunteers.\"" },
      } },
    { name = "a crate of gate hinges",
      description = "Three iron pins as long as your arm, greased, wrapped in oilcloth, in a crate stencilled {i}KINGS' GATE: TO BE REHUNG{/}. They are duplicates. The originals, the armourer has heard, are on a windowsill somewhere, also greased. Everybody concerned meant to go back." },
  },

  exits = {
    { to = "castle_bailey", description = "Out past the helmet, into the yard." },
  },
}

space {
  id = "jewel_house",
  region = "castle",
  name = "The Jewel House",
  description = "The strong room at the top of the barred tower, where the regalia of the kingdom are shown to the public on feast days. Six glass cases on velvet, under six lamps. They are extremely well guarded. You go from one to the next, reading the cards.",
  palette = { bg = "#100e0c", text = "#d6cec0", dim = "#786e5c", accent = "#e6c14c", border = "#4a4026" },
  ambience = {
    shimmer { color = "#e6c14c", strength = 0.08 },
    flicker { color = "#e0b060", strength = 0.08 },
  },

  things = {
    { name = "the Yeoman of the Jewels",
      key = "yeoman",
      description = "Scarlet coat, ruff, a partisan nine feet long, and a face that has been told what not to say. He guards six cases. He has never been told what to say about what is in them.",
      things = {
        { name = "his partisan", description = "The blade is real and sharp. He has to leave it on the landing to get through the door." },
        { name = "his ruff", description = "Starched until it creaks. He cannot look down, which he says is a mercy in this room." },
      },
      actions = {
        { "Ask where the jewels are", say "\"The regalia are on display, as you see.\" You look at the nearest case. There is a card in it. \"As you see,\" he says again, a little louder." },
        { "Ask if anyone has ever robbed it", say "\"Once. In my father's day. A man got in by the roof, at night, with a sack.\" And? \"He left a shilling on the velvet and a note saying he was sorry for our trouble.\"" },
      } },
    { name = "the first case",
      description = "Velvet, with a dent the shape of a crown. A card, in copperplate: {i}The State Crown. Removed for cleaning.{/}",
      things = {
        { name = "the dent in the velvet", description = "The pile has stood back up round the edges. It has been cleaning for some time." },
      } },
    { name = "the second case",
      description = "A long dent. {i}The Sceptre. On loan to the Treasury.{/} You have seen what the Treasury has. It did seem very bright." },
    { name = "the third case",
      description = "A round dent. {i}The Orb. See Sceptre.{/}" },
    { name = "the fourth case",
      description = "No dent at all, and no card. A square of velvet a shade darker than the rest, the size of a man's two hands. The yeoman does not know what was there. It was gone before his grandfather, and it is in the inventory only as {i}the other one{/}." },
    { name = "the fifth case",
      description = "This one has something in it. A crown, gold, eight arches, with stones of every colour. You bend close.",
      things = {
        { name = "the stones", description = "Boiled sweets. Lemon, raspberry, one of the green ones. They have been set with great skill. The yeoman says a goldsmith made it for the present King's coronation, the real one being at the cleaner's, and that His Majesty asked especially that it should not be too heavy." },
        { name = "a gap in the setting", description = "One claw holds nothing. You look at the yeoman. \"The page boy,\" he says. \"He was dealt with. It was a blackcurrant.\"" },
      } },
    { name = "the sixth case",
      description = "Smaller than the rest, and older, in a corner where the lamp is poor. In it, on plain linen, lies a spoon.",
      things = {
        { name = "the Anointing Spoon",
          key = "anointing spoon",
          wonder = true,
          icon = "¡",
          description = "Silver gilt, the length of a hand, the bowl divided in two by a ridge for the archbishop's fingers. It is the one piece of the regalia that was never worth pawning, so it is the one piece that is here. {magic}Every king and queen of this country has been touched on the forehead with oil from this bowl.{/} All of them, the good and the dreadful, the one with the fish and the one whose name is gone. The gilt has worn through to the silver where the same two fingers always went.",
          things = {
            { name = "the bowl", description = "There is still a trace of oil in the join. It smells faintly of oranges, and of a large cold building with a great many people keeping quiet in it." },
          } },
      },
      actions = {
        { "Look at it for a while", say "The yeoman comes and stands beside you. \"That's the one I guard,\" he says, quietly, as if the others could hear. \"The rest is cards.\"" },
      } },
    { name = "the coronation robe",
      description = "On a wooden form behind a rope: crimson velvet and ermine, twelve feet of train.",
      things = {
        { name = "the ermine", description = "Rabbit, with the spots inked on. Some of the ink has run. It gives the rabbit an air of having been through something." },
        { name = "the hem", description = "Six inches of dried mud, never brushed out. Whoever wore it last walked it across a kitchen garden." },
        { name = "a moth", icon = "m",
          description = "In the folds, fat and unhurried. It is the best fed creature on the royal establishment and the only one whose living is secure." },
      } },
    { name = "the inventory",
      description = "A parchment roll on a lectern, kept up yearly. Each item has a column for {i}present{/} and a column for {i}accounted for{/}. The second column is full.",
      things = {
        { name = "the last entry", description = "{i}1 spoon. Present.{/} The clerk has underlined {i}present{/} twice, with what looks like feeling." },
      } },
    { name = "the barred window",
      description = "Three inches of iron every hand's breadth. Through it: the yard, the clerks, the top of the queue. Nobody out there is looking up. It is the safest room in the kingdom, for the usual reason.",
    },
    { name = "the visitors' rope",
      description = "Red plush on brass posts, worn pale along the top by hands. People stand at it and look at the cards. Some of them come every year. They say the cards are very fine.",
      actions = {
        { "Lean over it", say "The yeoman clears his throat. You lean back. There was nothing to lean towards, but the forms were observed, and you both feel better." },
      } },

    { name = "the cleaning cupboard",
      description = "A narrow door behind the Yeoman, ajar. It is the only part of the Jewel House not behind glass, and he would rather you had not noticed it.",
      things = {
        { name = "a pot of jeweller's rouge", description = "And a chamois, and a toothbrush with the royal cipher. The regalia is cleaned on the first Monday of the month, by the Yeoman, with his coat off, humming." },
        { name = "a crown made of tin",
          description = "On a hat peg. Paste stones, a little dented. It stands in the case on cleaning days so that visitors are not disappointed. In forty years nobody has remarked on the difference, and the Yeoman has begun to wonder about the other one." },
        { name = "a pair of carpet slippers", description = "His. Scarlet, to match the coat. After the doors are shut he guards the crown jewels of the kingdom in these, with a mug, and is a happier man." },
      } },
    { name = "a mousehole with a rope across it",
      description = "In the skirting under the sixth case. Somebody has put up a length of red thread on two pins in front of it, to match the visitors' rope. The Yeoman denies everything, with the look of one who has also made a tiny sign." },
    { name = "a seventh case, curtained",
      description = "At the end of the row, past the sixth, is a case with a green baize curtain drawn across the glass. The Yeoman does not include it in the tour. The visitors' rope stops a yard short of it.",
      things = {
        { name = "behind the curtain", description = "A velvet pad with a dent in it the shape of a crown, and a card. {i}The crown of the reign of{/}, and the rest has been cut away with scissors. It is not that the crown was stolen. It is at the mender's. It has been at the mender's for three coronations and one very long afternoon." },
        { name = "a second card", description = "Tucked under the pad, in a property master's scrawl: {i}Lent, one pasteboard ditto, the Rose and Remainder. They have not sent it back. Nor have we sent the bill.{/}" },
      },
      actions = {
        { "Ask the Yeoman about it", say "\"That case is resting,\" he says. He draws the curtain the last inch. \"Between ourselves, there have been three kings crowned in this country with something out of a theatre basket, and I am the only man alive who is paid to know it.\" He looks at you sharply. \"You have not seen a paper crown about, I suppose. No. Nobody has.\"" },
      } },
    { name = "a tray of unset stones",
      description = "In the cleaning cupboard, in a drawer: glass rubies, a sugar emerald gone cloudy, and a real diamond the size of a pea that nobody has ever been able to match to a setting. The inventory lists the tray as {i}Sundries, theatrical and otherwise{/}." },
  },

  exits = {
    { to = "castle_bailey", description = "Down the tower stair, past a partisan leaning on the landing." },
  },
}
