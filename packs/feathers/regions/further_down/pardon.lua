-- Pardon: the city of the Murmurs, and its inn, which is open all day for sleeping.

space {
  id = "fd_pardon",
  region = "further_down",
  wonder = true,
  name = "Pardon",
  description = "A cavern the size of a valley, and in it a city that comes up to your waist. Streets, squares, steeples, bridges over a canal you could step across, ten thousand windows and a lamp in every one. {magic}From the edge of it you can see the whole place at once, lit, like a town laid out on a table for a child.{/} It is called Pardon, because that is the first thing anyone here says, and the visitors who named it never got as far as the second.",
  palette = { bg = "#0a0a12", text = "#c6c8d6", dim = "#5a5c78", accent = "#f0c070", border = "#343656" },
  ambience = {
    fireflies { glyphs = "·∙˙", colors = { "#f0c070", "#d8a050", "#f8e0a0" }, rate = 0.5, speed = 0.05 },
  },

  on_enter = function(ctx)
    if not ctx:visited("fd_pardon") then
      ctx:say("You stop at the first houses and work out where to put your feet. A bell rings, somewhere about your knee. All over the city, shutters open.")
    end
  end,

  things = {
    { name = "the Murmurs",
      description = "The people of Pardon: knee high, grey as a moleskin waistcoat, long fingered, in smoked spectacles and very good tailoring. They rise at dusk and go to bed at dawn and have never seen either. They speak in a murmur, and before anything else they say \"pardon\", in case they are about to be in your way.",
      things = {
        { name = "a lamplighter",
          description = "Going down the high street with a pole and a taper, lighting lamps the size of thimbles. He has four thousand to do. He reaches the end as it is time to put them out, and has never thought this a poor arrangement.",
          actions = {
            { "Offer your lantern", say "He looks up at it, a long way, with his hand over his spectacles. \"Pardon. Most kind. It is rather a lot, at once.\" He lights his taper from it, with ceremony, and for the rest of the night one street in Pardon burns with fire from Above, and people come to look." },
          } },
        { name = "a constable",
          description = "In a tall hat, with a truncheon like a matchstick, directing a traffic of handcarts and one snail. He has put up a sign for you: {i}LARGE VEHICLES THIS WAY{/}, and an arrow. You are the large vehicle.",
          actions = {
            { "Ask the way", say "\"Pardon. Inn, behind the clock. Market, down the steps where the lights are untidy. The Wall, straight on until there is no more straight on.\" He salutes. \"And the Dungeon, if you must, is through the Market. We signed a petition. Nobody would take it.\"" },
          } },
        { name = "a school, walking in pairs",
          description = "Twenty children no taller than a boot, hand in hand, behind a teacher with a flag. They have been brought out to see you. The teacher is explaining you. You hear the words \"harmless\" and \"mostly leg\".",
          actions = {
            { "Wave", say "Twenty hands wave back. One child, at the end, says \"pardon\" and then, very fast, \"is it true there is a ceiling you cannot touch,\" and is hushed. You say that it is true. They take it bravely." },
          } },
        { name = "Her Quietness the Mayor",
          icon = "☺",
          description = "An old Murmur in a chain of office made from one link of a real one. She has come out on to the town hall balcony, which puts her level with your belt, and she waits until you have noticed her before she bows.",
          actions = {
            { "Bow back", say "You bow, carefully, with the whole city under your nose. \"Pardon,\" says the Mayor. \"You are the fourth from Above in my time. One was a clerk who stayed on the river. One was looking for a cat. One never said, and we did not like to ask.\" She looks you over. \"You are the first who wiped his feet.\"" },
            { "Ask how long they have been here", say "\"Eleven hundred years, by the caps. We came down in an evening. It was only meant to be until things were settled up there.\" She folds her long hands. \"Are they settled?\" You think of the Council, and the King's meeting, and say: not yet. She nods, unsurprised. \"We shall give it a little longer.\"" },
          } },
      } },
    { name = "the high street",
      description = "Shops with bow windows, cobbles of river pearl, and a gutter down the middle with a boat race in it.",
      things = {
        { name = "a spectacle maker's", description = "Trays of smoked lenses in the window, round, oval, and one pair as big as saucers on a card: {i}FOR DAYLIGHT (THEORETICAL).{/}" },
        { name = "a hatter's", description = "Straw from gill, felt from moth. The fashion this year is tall. You can tell, because the hatter has raised his door." },
        { name = "a baker's", description = "Loaves like acorns, warm, on trays. This is the smell that came up the drain. They bake at dusk, for breakfast.",
          actions = {
            { "Buy a loaf", say "You have nothing they can use for money. The baker gives you six loaves anyway, in a twist of paper, and you eat them all in one mouthful, and they are the best bread in the kingdom. You tell him so. He has to sit down." },
          } },
        { name = "a shop that sells quiet", description = "An empty window, a closed door, and a sign: {i}OPEN.{/} People go in looking harassed and come out looking rested. You are too big for the door, and for the first time down here you mind." },
      } },
    { name = "the clock tower",
      description = "The tallest building in Pardon. The top of it is level with your eyes. The clock has one hand, and a dial marked only {i}DUSK{/} and {i}DAWN{/}.",
      things = {
        { name = "the hand",
          description = "It is a little past dusk. It was a little past dusk when you arrived. Time here is kept by agreement, and the agreement is that it is early yet." },
        { name = "the bell",
          description = "Hung in the open top, the size of a walnut. It is rung at dusk to get everyone up. The ringer has the most important job in the city and the worst hours.",
          actions = {
            { "Flick it, very gently", say "A note like a pin dropped in a glass. Every Murmur in the street looks at the clock, then at their own watches, then at you. You apologise to several hundred people. They say it is quite all right. They set their watches by it, to be on the safe side." },
          } },
      } },
    { name = "the canal",
      description = "A hand wide, lined with stone, running from the spring in the wood down through the middle of the city to the lake. There are barges on it loaded with mushrooms, drawn by water beetles on a towpath.",
      things = {
        { name = "a humped bridge", description = "You could wear it as a ring. A couple are leaning on the parapet, looking at the water, not talking. Some things are the same at every size." },
        { name = "a barge family", description = "Washing on a line, a geranium in a thimble, a dog the size of a bee asleep on the cabin roof." },
      } },
    { name = "the roofs",
      description = "Slated with flat brown mushrooms, row on row. You are the only person who has ever seen the city from above its own chimneys, and you can report that every one of them has been swept.",
      things = {
        { name = "a weathervane",
          description = "On the town hall: a gilt cockerel. There has never been wind in Pardon. It points, and has always pointed, up." },
        { name = "a roof garden",
          description = "Moss lawns, a pond in a shell, two chairs. Someone has left a book face down on one, to keep the place." },
      } },
    { name = "the town hall",
      description = "Columns, a pediment, a balcony. Carved over the door: {i}BY YOUR LEAVE.{/} It is the city's motto and the whole of its law.",
      things = {
        { name = "a notice board",
          description = "At ankle height. {i}Lost: one skylight (see Above). Found: nothing, we are sorry to say. Meeting: to discuss whether to have a meeting. All welcome. Pardon.{/}",
          things = {
            { name = "a notice about you",
              description = "The ink is wet. {i}A LARGE PERSON IS IN THE HIGH STREET. It is being very careful. Please do not stare for longer than is polite. The Closed Eye has raised its ceiling.{/}" },
          } },
        { name = "the petition",
          description = "A roll of paper as long as the street, with eight thousand signatures, each a dot. {i}That the Dungeon next door be asked, kindly, to keep the noise down.{/} There is no noise. That is the complaint: they have been braced for it for thirty years." },
      } },
    { name = "a statue in the square",
      description = "Bronze, on a plinth: a Murmur with a pack on her back and a lantern held up, shutter closed. {i}THE FIRST DOWN.{/} She is looking back over her shoulder, and the sculptor has caught it exactly, the look of someone who left a window open.",
      things = {
        { name = "the lantern in her hand", description = "The bronze round its shutter has been rubbed bright by generations of small fingers, for luck, or to check." },
      } },
    { name = "the ceiling of the cavern",
      description = "Out of reach of all the lamps together. The Murmurs call it Overhead, and do not think about it, in the way the people of Aldmoor do not think about the ground.",
      things = {
        { name = "a patch of mortar",
          description = "Directly above the main square, a hundred feet up, a round plug of Corporation brick where once there was a hole. Beside it a pipe comes through, and from the pipe, now and then, one drop. That is the market fountain. It goes up there. It comes down here." },
      } },
    { name = "a night watchman, going home",
      description = "Yawning, lantern out, boots in his hand so as not to wake anybody. Here the night watch keep an eye on things through the bright hours while the city is asleep, and are thought a little strange for it." },
    { name = "the edge of the city",
      description = "The houses thin out. One way, the lights get crowded and disorderly: stalls. Another, they stop altogether at something tall and dark that crosses the whole cavern from wall to wall." },
    { name = "your own feet",
      description = "Enormous. You had never thought about them before. A crossing sweeper is working round the left one with great tact.",
      actions = {
        { "Stand on one leg", say "You halve the problem. A small cheer goes up. A boy is sent out with a chalk to mark where the other one may be put down, and draws the outline of a boot in an empty yard, and writes in it {i}HERE, PARDON{/}." },
      } },
    { name = "the charter stone",
      description = "In the square, under the statue, set flat in the paving: a slab the size of a tea tray, cut with small neat letters and worn by small feet. It is why the city is called what it is called.",
      things = {
        { name = "the text", description = "{i}To the people under the ground, who did not ask, having not known that they might: pardon, for whatever it was, and the freedom of the dark. Granted.{/} There is no name. There was a line for one. It has been worn away, and not by a chisel: by ninety years of the Murmurs touching it for luck on the way to work." },
        { name = "a groove beside it", description = "A finger wide, polished. The children of Pardon run one finger along it going to school and the other coming back. Their grandparents did. There are two schools of thought about which hand, and a street named for each." },
      },
      actions = {
        { "Ask a Murmur who granted it", say "She stops, very politely, and thinks, and lowers her voice even further, which you had not thought possible. \"A big one,\" she says. \"From above. One of us went up with the rats, on the day the door was open, and stood in the line. We do not know what he asked. We think he did not ask anything. We think he was only seen.\" She touches the stone with her foot. \"It was enough to start a town on.\"" },
      } },
    { name = "a lamp that is never lit",
      description = "On the corner of the town hall, among the dim blue lamps of the city, one bracket holds a lantern of a different make: brass, full size, with a lion on the door. It has never been lit. It would blind half the street. The Murmurs polish it weekly and call it the Visitor's, and say that it is being kept for when he comes down to see how they got on." },
  },

  exits = {
    { to = "fd_pale_wood", description = "Back along the swept path, between the rows." },
    { to = "fd_closed_eye", description = "Behind the clock: the inn, which has raised its ceiling for you." },
    { to = "fd_lost_market", description = "Down the steps, where the lights are untidy." },
    { to = "fd_old_wall", description = "Straight on until there is no more straight on." },
  },
}

space {
  id = "fd_closed_eye",
  region = "further_down",
  name = "The Closed Eye",
  description = "The best inn in Pardon, where people come to sleep through the day. For you they have taken out the first floor: you sit on the carpet of the public room with your knees up and your head among the beams, and the bedrooms look at you from a gallery all round, like boxes at a theatre.",
  palette = { bg = "#100c0c", text = "#d6c8c0", dim = "#74625c", accent = "#e8a868", border = "#4a3430" },
  ambience = {
    flicker { color = "#e8a060", strength = 0.2 },
    dust { glyphs = "·", color = "#6a5a50", rate = 0.1, speed = 0.05 },
  },

  things = {
    { name = "the landlord",
      icon = "☺",
      description = "Mr Hem, in a nightcap and an apron, who keeps an inn where the trade is at its height when everyone is unconscious. He talks in a murmur even for a Murmur. He has not raised his voice since the fire of '06, and then only to say \"pardon, fire\".",
      things = {
        { name = "his nightcap", description = "Striped, with a bobble. It is his uniform. He owns a daytime hat, for funerals." },
        { name = "his ledger", description = "Guests are entered by how they slept. {i}Soundly. Soundly. Fitfully (cheese). Soundly.{/} There is a new line, with a ruler laid ready across it: {i}One Large. To be seen.{/}" },
      },
      actions = {
        { "Ask for a room", say "He looks at you, and at the rooms, and at you. \"Pardon. We have a stable.\" The stable is for beetles. You would fit your head and one arm in it. He offers you the public room carpet, a bolster made of forty pillows sewn together, and no charge, since you are, he says, an attraction." },
        { "Ask what there is to drink", say "\"Mushroom ale. Mushroom wine. Water, with a mushroom in it.\" He brings the ale in the inn's largest vessel, which is the fire bucket. It is brown, cool and tastes of walnuts, and there is about a wineglass of it." },
        { "Ask what you have lost", once = true, give "fd_claim_ticket",
          say "You had not meant to ask it. He nods as if everyone does. \"Pardon. Something came down for you, some while back. They send word round to the inns.\" He goes behind the bar, opens a drawer the size of a domino, and puts a grey ticket into your palm with both hands. \"Number one. I should go and see. They do not like to press.\"" },
      } },
    { name = "the bar",
      description = "Mahogany, as long as your forearm, with a brass rail and a row of handles like pins.",
      things = {
        { name = "the row of mugs",
          description = "Acorn cups, each with initials. The regulars' mugs hang on hooks and the hooks are fish bones.",
          things = {
            { name = "the Mayor's mug", description = "The same as all the others. She insisted. It is, however, on the first hook." },
            { name = "a mug with a chain on it", description = "Belonging to the night watchman. He drinks his in the morning, on the way to bed, while everyone else is on the way to work, and nobody will sit with him." },
            { name = "a thimble", description = "An actual thimble, steel, from Above, kept on the top shelf as the house tankard for giants. It has been waiting a long time for one. They have washed it for you." },
          } },
        { name = "the slate",
          description = "Tabs, in dots. One is so long it goes on to the wall. It is headed {i}FERRY{/} and is for thirty years of mushroom ale sent across to the jetty, and never once asked about." },
        { name = "a jar on the bar",
          description = "Pickled something, each the size of a pea. A label: {i}EGGS.{/} You do not ask of what." },
      } },
    { name = "the fire",
      description = "A grate you could cover with one hand, burning stalk charcoal with a small blue flame. Seven Murmurs sit round it on stools in complete silence. This is a lively evening.",
      things = {
        { name = "a domino game",
          description = "In progress since before you were born, by the dust on the early tiles. They play one tile each a night and then think about it.",
          actions = {
            { "Suggest a move", say "You point. Seven faces turn up to you. One of them takes off his spectacles, looks at the tile, looks at the board, and puts his spectacles back on. \"Pardon,\" he says. \"We shall take it under advisement.\" You understand that this will be several years." },
          } },
        { name = "a cricket on the hearth",
          description = "In a cage of straws, kept for the singing. It is the loudest thing in Pardon and is only allowed one song a night. It is saving it." },
        { name = "the poker", description = "A darning needle with a cork handle. You do not touch it. Pokers and you have an understanding." },
      } },
    { name = "the gallery of bedrooms",
      description = "Three sides of the room, at the height of your shoulder: a balcony and twelve doors, each with a number and a pair of boots outside.",
      things = {
        { name = "room one", description = "The door is ajar. A four-poster the size of a shoe, hangings of moth silk, and a commercial traveller in spectacle lenses fast asleep on his back with his sample case on his chest." },
        { name = "room four", description = "A sign on the handle: {i}DO NOT DISTURB UNTIL DUSK.{/} Under it, a second sign: {i}OR THEN.{/}" },
        { name = "room seven",
          description = "A light under the door, and the scratch of a pen. Somebody in there does not sleep in the day. The landlord says she is a poet, and says it kindly.",
          actions = {
            { "Listen at the door", say "You bring your ear down level. The pen stops. \"Pardon,\" says a voice. \"What is a horizon like?\" You tell her: a line, where the land stops and the sky goes on. Silence. Then the pen starts again, very fast." },
          } },
        { name = "the row of boots", description = "Twelve pairs, to be cleaned by dusk. The boot boy does them with a brush made from one bristle. He has got as far as five, and is asleep in the sixth." },
      } },
    { name = "the kitchen",
      description = "Through a hatch: a range like a jewel box, copper pans like coins, and a cook on a stool stirring a pot with a pin.",
      things = {
        { name = "the cook", description = "Mrs Hem. She has the only loud laugh in the city and has been asked, by letter, to keep it for the kitchen. The pans ring with it." },
        { name = "the stew",
          description = "Mushroom, with mushroom, in a mushroom gravy. Down here that is not a lack of imagination. There are four hundred kinds, and she is using eleven.",
          actions = {
            { "Ask for a bowl", say "It arrives in the washing-up basin, with a ladle for a spoon. Dark, hot, peppery, with something in it like chestnuts and something like the smell of a wood after rain. You scrape the basin. Mrs Hem laughs, and a glass rings on the bar." },
          } },
        { name = "the larder", description = "Strings of dried caps, a ham that was once the hind leg of a cricket, and a single strawberry from Above in a glass case, not for eating, paid for with a year's takings." },
      } },
    { name = "the cellar hatch",
      description = "A trap in the floor with a ring like a curtain ring.",
      things = {
        { name = "the cellar",
          description = "You lie down and look in. Casks like cotton reels, racked. A drip. A cool smell of walnuts.",
          things = {
            { name = "a cask chalked with a date", description = "{i}NOT YET.{/} It seems that every cellar in the kingdom has one. Here it has been not yet for two hundred years, and they are in no way concerned." },
            { name = "a woodlouse", description = "On a cask, washing. It has the manner of a rat, scaled down, and plainly has a seat." },
          } },
      } },
    { name = "the shutters",
      description = "Every window in the inn has them: thick, lined with felt, tight as a drum. Nothing gets in at noon. There is no noon. They are shut against it all the same, and the whole city sleeps better for knowing.",
      actions = {
        { "Ask what they are afraid of", say "Mr Hem thinks about it. \"Pardon. Not afraid. It is only that we remember it as very bright, and we were never sure it had finished.\"" },
      } },
    { name = "the sign",
      description = "Outside, over the door, where your elbow is: a painted eye, shut, with long lashes. It is a very peaceful eye. People stop under it and yawn." },
    { name = "the visitors' chair",
      description = "By the fire stands a full-sized chair. A real one, oak, from Above, with a worn rush seat. It must have come down a well, or a drain, in pieces, and been put together again by people who had to use scaffolding.",
      things = {
        { name = "a brass plate on the back", description = "{i}RESERVED.{/} It has been reserved for as long as the inn has stood. Mr Hem dusts it every dusk. He does not say for whom, and when you look at it he becomes busy with a glass." },
      },
      actions = {
        { "Sit in it", say "You ask. He hesitates. \"Pardon. It is kept for someone.\" Then, after a look at the door: \"They are a little late. I am sure they would not mind it being aired.\" You sit. It is the most comfortable chair you have ever sat in, and it is turned to face the door." },
      } },
    { name = "a bell pull",
      description = "A red thread hanging by the bar, for calling the boot boy. It is connected to nothing. He wakes for nothing. It gives the guests something to do." },
    { name = "a pint that was paid for",
      description = "On a shelf behind the bar, under a glass dome: a full-sized pewter mug, quite out of scale with the house, with an inch of something dark and long dried in the bottom. A card leans on it.",
      things = {
        { name = "the card", description = "{i}Stood by a gentleman from above, for the house, on a Thursday. He would not come in, being too large for the door. He drank his own on the step and said that it was the best beer under the kingdom.{/} Mr Hem's grandfather wrote it. Mr Hem says that it is the only review they have ever had." },
        { name = "the mug", description = "It has a lion on it, and a twin somewhere. The Hems fill thimbles from a cask all evening and have never once thought of putting anything in this. It is not for drinking from. It is a kind of licence." },
      },
      actions = {
        { "Ask if he came back", say "Mr Hem polishes a thimble for some time. \"The step is swept every night,\" he says. \"And some mornings there is a walnut on it.\" Mrs Hem, from the kitchen, says that he is not to go telling people that. \"I am only saying there is a walnut,\" says Mr Hem. \"I am not saying who.\"" },
      } },
    { name = "a slate of the house's debts",
      description = "By the cellar hatch, a slate the size of a playing card: what the Closed Eye owes. It has one entry. {i}To a gentleman: one round, his. Not yet returned.{/} The Hems are an honest house and it has been on their conscience for three generations." },
  },

  exits = {
    { to = "fd_pardon", description = "Out through the stable doors, the only ones that will take you, into the high street." },
  },
}
