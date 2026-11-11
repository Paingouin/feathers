space {
  id = "castle_bailey",
  region = "castle",
  name = "The Bailey",
  description = "The castle yard: cobbles, a well, a mounting block, and a great many people walking quickly with one sheet of paper each. The kingdom is not being run from here. It is being forwarded.",

  things = {
    { name = "the practice yard",
      description = "Three knights and a straw dummy on a post. The dummy is ahead.",
      things = {
        { name = "the dummy",
          description = "Straw, sacking, a painted frown. Somebody has put up a small shelf beside it for its trophies.",
          things = {
            { name = "the trophy shelf",
              description = "Three cups and a rosette.",
              things = {
                { name = "the largest cup", description = "{i}Garrison Tourney, Champion.{/} Engraved under it, eleven years running, the one word: {i}DUMMY{/}." },
                { name = "the rosette", description = "{i}Best Turned Out.{/} The knights contested that one. It went to appeal." },
              } },
          },
          actions = {
            { "Hit it", say "It swings round on its post and hits you back, with the arm they hang the bucket on. The knights nod. It has a lovely action." },
          } },
        { name = "a knight",
          key = "questing knight",
          description = "In full plate, in the sun, by choice. He is waiting for a quest. There is a form for one. He has the form.",
          things = {
            { name = "the form", description = "{i}Application to Undertake a Quest (Form 9).{/} Nature of peril. Estimated duration. Next of kin. He has filled in the next of kin and is very proud of the handwriting." },
            { name = "his shield", description = "Blank. He is entitled to arms once he has done a deed. The painter comes by each spring, looks, and goes away." },
          },
          actions = {
            { "Ask about quests", when = no(visited "great_drain"),
              say "\"Dragon, ideally,\" he says. \"Would take a large rat.\" He lowers his voice. \"Is there a large rat?\"" },
            { "Ask about quests", when = visited "great_drain",
              say "You tell him about the Undertown. He writes {i}rats (several){/} on his form, very carefully, and thanks you with tears in his eyes." },
          } },
        { name = "a knight with a lance",
          description = "He is tilting at a ring on a string. He has not got it yet. The ring is the size of a cartwheel, and has been enlarged twice.",
          actions = {
            { "Hold the ring steady", say "You hold it. He gallops. At the last moment you find that you have, without deciding to, stepped a long way to the left. The lance goes through the ring. He is so happy that nobody mentions it." },
          } },
        { name = "an old knight on a bench",
          description = "Sir Osric Tranter, retired, with a rug over his knees. He fought in the siege, on the winning side, which was the inside. He will tell you about it.",
          actions = {
            { "Ask about the siege", say "\"Nine days,\" he says. \"They came up the hill with ladders, and we stood here. They shouted. We stood. On the ninth day they ran out of sandwiches and went home.\" He looks round the yard with love. \"We never moved an inch. It's on the flag.\"" },
          } },
      } },
    { name = "the well",
      description = "The castle well. A notice on the winch: {i}Wishes by appointment.{/}",
      things = {
        { name = "the winch", description = "Oak, with an iron handle worn bright. The rope goes down eleven turns and comes up ten, which has been reported." },
        { name = "the bucket",
          description = "Leather, stamped with a crown. There is a second, smaller bucket beside it marked {i}WISHES{/}.",
          things = {
            { name = "the wishes bucket", description = "Folded papers, in a clerk's hand, each docketed and dated. The top one reads: {i}Re your wish of the 4th. Under consideration.{/}" },
          } },
        { name = "the appointments book", description = "Chained to the wellhead. Next free wish: a Tuesday, in the autumn after next. Bring two witnesses." },
      },
      actions = {
        { "Make a wish", say "You have no coin to spare, so you wish on credit. Far below, something writes it down." },
      } },
    { name = "a messenger",
      description = "A boy with a sheet of paper, going from the Hall to the Kitchens. In a minute he will go from the Kitchens to the Hall, with the same sheet.",
      things = {
        { name = "his shoes", description = "The left is worn on the outside and the right on the inside. He has only ever gone round the yard one way." },
      },
      actions = {
        { "Read over his shoulder", say "{i}Re: yours of this morning. See mine of this morning.{/}" },
      } },
    { name = "the clerks",
      description = "Thirty or so, crossing the yard on thirty or so errands, each with one sheet. They do not collide. There is a system: they keep to the left of whoever is senior.",
      things = {
        { name = "a senior clerk", description = "You can tell by the paper. His sheet has a ribbon on it. Juniors flatten against the wall as it goes past." },
        { name = "a dropped sheet",
          description = "On the cobbles, with a boot mark on it. Nobody will pick it up, since that would make it theirs.",
          actions = {
            { "Read the dropped sheet", say "{i}URGENT. To whom it concerns. Please advise who it concerns.{/} It is dated four summers ago. You put it back in its boot mark." },
          } },
        { name = "the in-tray",
          description = "A stone horse trough by the Hall door, full of paper to the brim. This is where a document goes when everyone has seen it. In wet weather it settles." },
      } },
    { name = "the stables",
      description = "Twenty stalls, swept. One is in use. The brass plate on it says {b}SIR REGINALD{/}.",
      things = {
        { name = "Sir Reginald",
          description = "A grey horse, knighted in the last reign for services at a banquet. He outranks you. He knows.",
          things = {
            { name = "his spurs", description = "Gilt, on a nail by the manger. He cannot wear them, being what they are for. He has them where he can see them." },
            { name = "his nosebag", description = "Embroidered with his arms: a horse, looking at a smaller horse." },
          },
          actions = {
            { "Bow", say "He inclines his head by the exact amount due to a commoner. You have been put in your place by experts, but never before by a horse." },
          } },
        { name = "the empty stalls",
          description = "Nineteen, each with a name plate and clean straw.",
          things = {
            { name = "a name plate", description = "{i}THUNDER.{/} Sold, the groom says, to pay for the plates." },
          } },
        { name = "the groom",
          description = "A bow-legged man with a fork, mucking out a stall that has had nothing in it for years. \"You let one go,\" he says, \"and the rest get slack.\"",
          actions = {
            { "Ask about the royal coach", say "\"Gilt. Eight horses. Glass all round.\" Where is it? He leans on the fork. \"It went to be mended. Then the mender's went to be sold. It is somebody's summerhouse now, out Greenhollow way. They wave from it.\"" },
          } },
        { name = "the stable cat", icon = "c",
          description = "A big tabby, asleep on Sir Reginald's back. It is the only creature in the castle that he allows above him.",
          actions = {
            { "Stroke the cat", say "It opens one eye. So does the horse. You withdraw the hand under the gaze of two ranks of society." },
          } },
      } },
    { name = "the smithy",
      description = "A lean-to against the curtain wall with a forge, an anvil and a smith who has not shod a war horse since his apprenticeship. He does the hinges.",
      things = {
        { name = "the smith",
          description = "Big, burned about the forearms, and gentle. The castle has eleven hundred doors and they all stick.",
          actions = {
            { "Ask what he is making", say "\"Bolt for the dungeon door.\" Another? \"Tenth. Grist likes the sound of them going back. Says it gives the place tone.\"" },
          } },
        { name = "the anvil", description = "Scarred, sway-backed, and older than the keep. There is a horseshoe nailed to the block for luck. It is the wrong way up, and has been explained to him." },
        { name = "a bin of hinges", description = "Castle pattern, in three sizes: door, gate, and {i}other{/}. You pick up one of the others. You cannot think what it is for. Neither, he says, can he. They are on the list." },
        { name = "the quenching tub", description = "Black water with a skin of ash. A row of horseshoes hangs over it, one per stall, kept ready. Thunder's are there." },
      } },
    { name = "the barracks",
      description = "A long low building on the north side. Forty beds, made square, and a smell of polish and boiled cabbage.",
      things = {
        { name = "the beds",
          description = "Each with a folded blanket and a kit box.",
          things = {
            { name = "a kit box", description = "A spare tunic, a housewife of needles, a letter from somebody's mother. And a pair of carpet slippers, issued. The castle is draughty and has not been attacked." },
          } },
        { name = "the duty roster",
          description = "Chalked on a board: {i}Gate. Wall. Hall. Dungeon door (inside). Dungeon door (outside).{/}",
          things = {
            { name = "the last line", description = "{i}King's Bodyguard: stood down until further notice.{/} Somebody has chalked a small marrow beside it and somebody else has rubbed most of it out." },
          } },
        { name = "the garrison captain",
          description = "Captain Hollis Brand, at a table, cleaning a sword that has never needed it. He believes in facing things. He has posted a man who fears heights on the wall and a man who fears the dark at the dungeon door, and is waiting for someone who fears paperwork.",
          actions = {
            { "Ask what you fear", say "He looks you over. \"Being ordinary,\" he says. It is said without malice, as a doctor says it. \"I'd post you to a village. You'd be cured in a week.\"" },
          } },
        { name = "the garrison's trophy",
          description = "On a shelf, alone: a wooden spoon, mounted. {i}Queue v. Garrison.{/} They share it, year about, with the queue." },
      } },
    { name = "the mounting block",
      description = "Three stone steps to nowhere, for getting onto a horse in armour. The top step has two worn hollows in it, from a king who liked to stand there and be seen.",
      actions = {
        { "Stand on it", say "You stand in the hollows. For a moment the whole yard is arranged round you. A clerk bows from habit, catches himself, and is cross for the rest of the day." },
      } },
    { name = "the sundial",
      description = "Bronze, on a pillar in the middle of the yard, in the shadow of the fourth tower from ten until four. It is consulted at nine and at five, and the castle guesses between.",
      things = {
        { name = "the motto", description = "Round the rim: {i}IT IS LATER THAN IT WAS.{/}" },
      } },
    { name = "the dovecote",
      description = "A round stone tower the height of a man, full of pigeons. They carry the Crown's letters to the provinces.",
      things = {
        { name = "the pigeons", icon = "v",
          description = "Fat, grey, and at home. A message tube is tied to every leg. The birds were bred here, and when they are released they fly once round the yard and come back in for their dinner.",
          things = {
            { name = "a message tube", description = "{i}To the Sheriff of the Northern March: reply at once.{/} The pigeon has had it on for six years and uses it to scratch." },
          } },
        { name = "the pigeon master", description = "A patient woman in a spattered hat. \"They're very reliable,\" she says. \"You always know where they are.\"" },
      } },
    { name = "the laundry line",
      description = "Strung between the barracks and the chapel: tabards, hose, a row of nightshirts with the royal cipher.",
      things = {
        { name = "the royal nightshirts", description = "Seven, one for each day. They are washed weekly, ironed, laid out, and collected unworn. The laundress puts her nose to one, frowns, and says nothing. It smells of compost." },
      } },
    { name = "the chapel porch",
      description = "A pointed door on the east side, between two worn saints. One has lost his nose to the weather. The other has lost his to the first one's supporters." },
    { name = "the armoury door",
      description = "Studded oak, under the west tower, propped open with a helmet. From inside comes the sound of somebody polishing." },
    { name = "the Jewel Tower",
      description = "A squat tower in the corner of the yard with bars on every window and a yeoman at the foot of the stair. He is the most heavily armed man in the castle. He stands very straight, as a man does who has been told not to answer questions." },
    { name = "the dungeon door",
      description = "Iron, low, at the foot of the east tower. A slot opens in it when you knock. The slot is at eye level, for somebody.",
      things = {
        { name = "the bolts", description = "Nine, on the inside. You can count the brackets through the gap at the hinge. There is a bracket for a tenth." },
        { name = "the slot", description = "It is about the height of your belt. Somebody inside has a box to stand on, or does not need one." },
      },
      actions = {
        { "Knock", when = no(item "warrant"),
          say "The slot opens on a pair of eyes. \"Warrant,\" say the eyes. You say you only want to look. \"Everyone only wants to look,\" say the eyes. \"That's why there's warrants.\"" },
        { "Knock", when = item "warrant",
          say "The slot opens. You hold up the paper. The eyes read it, and widen, and the bolts go back one after another, all nine." },
      } },

    { name = "the kennels",
      description = "A lean-to against the curtain wall, with a half door and a great deal of tail.",
      things = {
        { name = "the royal hounds",
          description = "Eleven of them, long eared and sorrowful. They were bred to hunt the stag. The King does not hunt, so they are walked twice a day round the kitchen garden wall, at the heel of a small boy, and have become expert in compost." },
        { name = "the twelfth hook",
          description = "A collar hangs on it, empty, red leather, very old, with a gold tag. The kennel boy says there was a spaniel once who outranked the Chancellor. He has been told not to say where it is now." },
        { name = "the kennel boy",
          description = "About nine, with a whistle he cannot yet blow. The hounds obey him entirely. They have not been told he is nine.",
          actions = {
            { "Ask to pat one", say "\"That's Clarion. She'll lean.\" She leans. You are pinned to the kennel door by forty pounds of hound with its eyes shut. \"She does that to the Chamberlain,\" says the boy. \"He's had to be fetched.\"" },
          } },
      } },
    { name = "a cart of marrows",
      description = "By the kitchen door, heaped, with a clerk counting them into a ledger. They are, you gather, a payment. The clerk has ruled a column for them between {i}Gold{/} and {i}Silver{/}.",
      things = {
        { name = "the ledger column", description = "{i}Marrows (royal). Received of His Majesty in settlement: 14.{/} And a note: {i}rate of exchange to be fixed. Ask kitchen.{/}" },
      } },
    { name = "the bailey drain",
      description = "An iron grid in the cobbles, where the yard's rain goes. It is the one tidy thing in a tidy castle that nobody is responsible for.",
      things = {
        { name = "something on the grid",
          description = "A spur, a rowel off it, and a wax seal, lying on the bars as if set out for collection. As you look, the seal tips, and is gone." },
      },
      actions = {
        { "Listen at the grid", say "Water, going down. A long way down, a bell the size of a pea. You straighten up. A groom is watching you. \"Lost something?\" he says. \"You never get it back. But I'll tell you a queer thing. You never feel it was wasted.\"" },
      } },
  },

  exits = {
    { to = "castle_hill", description = "Out under the portcullis, to the head of the queue. They will want to know what it is like." },
    { to = "great_hall" },
    { to = "castle_kitchens" },
    { to = "castle_armoury", description = "Under the west tower, past the helmet holding the door." },
    { to = "castle_chapel", description = "Through the porch, between the two saints." },
    { to = "jewel_house", description = "Up the barred tower, under the eye of the yeoman." },
    { to = "wall_walk" },
    { to = "castle_dungeon", label = "The dungeon door",
      description = "Down, behind nine bolts.",
      requires = item "warrant",
      locked = "nobody goes down without a warrant, signed by the King" },
  },
}
