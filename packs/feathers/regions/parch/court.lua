-- Great Shade, continued: the baths, and the court of a very reasonable Sultana.

space {
  id = "pa_bath_house",
  region = "parch",
  name = "The Baths of Great Shade",
  description = "A low door, three steps down, and you are under a dome of stone pierced with a hundred small round holes, each one stopped with a bottle end of green or blue glass. The light comes down in rods through the steam. There is a sound of water falling into water, and of slapping, and of someone at a distance singing with the confidence that tiles give. A man with forearms like hams takes your pack, your boots, and, before you can discuss it, most of the rest.",
  palette = { bg = "#0c1213", text = "#d2e0dc", dim = "#688480", accent = "#7fd0c0", border = "#2f5a56" },
  ambience = {
    steam { glyphs = "˙·∙°", color = "#4f7068", rate = 0.6 },
    drip { glyphs = "⠁⠂⠄", color = "#5f9f90", rate = 0.2 },
  },

  things = {
    { name = "the bath master",
      icon = "☺",
      description = "Hesp, who has the forearms, a towel round his middle, and no hair anywhere on him. He has washed three sultanas, a number of saints, and every caravan master for forty years, and he will tell you that under the dirt they are all much the same and that he prefers the dirt, as showing character.",
      things = {
        { name = "his glove", description = "Woven of black goat hair, as rough as a file. With it he removes the road from a person, and then the skin that the road was on, and then, he says, the worst of their opinions." },
        { name = "his bucket", description = "Copper, with a wooden dipper. It is always full and it is always the temperature that you were not braced for." },
      },
      actions = {
        { "Be washed", when = no(flag "pa_bathed"), set "pa_bathed",
          say "He lays you on the hot slab like a fish. He looks at you for a while, as a mason does at a wall. Then the glove. You had thought that you were a brown sort of person. Grey rolls come off you like the rubbings of an eraser. He shows you one, with interest. \"Tickover,\" he says, \"and under that, a village. Onions.\" Buckets: hot, hotter, cold as a slap. You are stood up, pink, in a towel, with a glass of tea. You have not been so clean since you were christened, and on that occasion you had less to lose.",
          fx "wash" },
        { "Be washed again", when = flag "pa_bathed", say "Hesp turns your arm over and looks at it. \"There is nothing left to take,\" he says. \"Come back when you have done something.\"" },
        { "Ask what he has learned", say "\"That everybody has the same knees,\" says Hesp. \"And that a great man is known by how he takes the cold bucket. The last Sultan screamed. The Sultana says, thank you, Hesp, that will do.\" He wrings out the glove. \"The pillar hermit came in once. Forty years of dust. I took a week. Underneath he was quite a young man.\"" },
      } },
    { name = "the dome",
      wonder = true,
      icon = "°",
      description = "You lie on your back on the warm stone, and it is over you: grey, round, and pricked with its hundred eyes of glass, green and blue. {magic}The steam goes up, and each rod of light stands in it like a staff of coloured smoke, leaning, and through the afternoon the whole hundred of them walk slowly across the floor together like a herd.{/} The man on the next slab says that he has come here every week for sixty years and has never seen two of them touch.",
      things = {
        { name = "the glass eyes", description = "Bottle ends, set in the mortar by the builder, who was a bath man himself and wanted something to look at. One of them is red. There is only the one, low down toward the east. Nobody knows why, and for an hour each morning one bather is washed in a light the colour of wine. The place is taken in turns. There is a list." },
        { name = "a drop, forming", description = "The steam gathers on the stone, creeps to the lowest point, hangs, grows, and lets go. It falls forty feet on to your forehead. It is perfectly cold. Hesp says that the dome does it on purpose, to people who are getting too comfortable." },
      },
      actions = {
        { "Watch the light move", say "You pick one blue rod and keep your eye on it. It crosses a tile in about the time of two hundred breaths. You stop counting. When you look for it again it is on the far side of the drain and you have, at last, in the Parch, been cool and slow and in no pain for a whole hour together." },
      } },
    { name = "the hot slab",
      description = "A hexagon of marble in the middle of the floor, heated from below, big enough for eight, and worn to a gloss by backs.",
      things = {
        { name = "the bathers", description = "A judge, a porter, two brass beaters and a boy, lying in a star with their heads together and their eyes shut, arguing gently about a goat. In a towel there are no ranks. The judge is losing." },
        { name = "the hollows", description = "Eight, each the shape of a person lying down, worn half a finger deep in the stone. You fit yourself into one. Whoever made it was shorter and had had a better dinner." },
      } },
    { name = "the cold room",
      description = "Through an arch: a tank of dark water under a low vault, as still as a floor. It is fed from the tunnel, forty miles from the hills, and has not seen the sun since it was snow.",
      things = {
        { name = "the tank", description = "You look in. You can see the bottom, and a brass ring let into it, and your own face, looking as though it had been asked for money." },
        { name = "a row of men on the edge", description = "Sitting with their feet an inch above the water. They have been about to get in since noon. Now and then one of them says, \"Well,\" and the rest agree." },
      },
      actions = {
        { "Get in", say "You do not get in. You step off the edge by mistake while considering it. For a moment you cannot recall your name, or any names. Then you come up with a noise like a seal, and the row of men on the edge, who have not moved, give you a low murmur of respect. One of them says, \"Well.\"" },
      } },
    { name = "the steam room",
      description = "A cell with a bench, a door of wet planks, and a white heat that you breathe in sips. A voice in the fog says good afternoon. You do not find out whose.",
      things = {
        { name = "the voice in the fog", description = "It has been here some time. It talks, quite well, about the price of salt, and the Sultana's uncle, and a thing that it once saw at the dunes. You answer. When the steam thins a little you see that the bench opposite is empty and always was, and that the voice is coming out of a pipe from the women's side. It laughs at you very agreeably." },
        { name = "the hot stones", description = "In an iron basket. Hesp's boy throws a dipper of water on them and goes out fast and shuts the door." },
      } },
    { name = "the furnace",
      description = "Down a stair at the back, under the floor: a fire as long as a room, and a man feeding it with dried dung, date stones and the sweepings of the bazaar.",
      things = {
        { name = "the furnace man", description = "Black as his fire, with a white grin. He has never been in the bath above him. He says that he is too warm as it is." },
        { name = "the pot in the ashes", description = "A clay jar, sealed with dough, buried in the embers since last night. Beans. The whole quarter brings its pots here to cook in the bath's fire, and collects them in the morning, and that is why Great Shade smells of breakfast at dawn." },
        { name = "the flues", description = "Channels under the whole floor, where the hot air runs before it goes up the walls. A cat lives in them. Now and then a bather on the slab hears something walking about underneath him, purring." },
      } },
    { name = "the changing hall",
      description = "A square room with a fountain in the middle and raised benches round, with rugs, where you lie afterwards wrapped like a parcel and are brought tea.",
      things = {
        { name = "the towels", description = "Striped red and white, thin as paper, dried on the roof in a quarter of an hour. Hesp's wife folds them with a snap that can be heard in the street. You are given three: one for the middle, one for the shoulders, and one wound round your head in a way that makes you look as if you knew things." },
        { name = "the clogs", description = "Wooden, on two stilts a hand high, to keep your feet off the hot floor. You walk in them like a newborn calf. Everybody else walks in them like everybody else." },
        { name = "the pegs", description = "A hundred, numbered, with the clothes of the city hanging in a row: silk beside sacking. Your own are on the last peg. Hesp has had them beaten on a stone, and they hang quite differently, like the clothes of a more upright man." },
        { name = "the fountain", description = "A single jet, a foot high, falling back into a basin with a goldfish in it. It is the only fish in Great Shade and has a keeper, a pension, and a name, which is Enough." },
      },
      actions = {
        { "Lie down and take tea", say "You lie in three towels with a glass on your chest. Round the hall forty men are doing the same and nobody is talking. Somewhere a tap drips. You fall asleep, and when you wake the glass has been taken off your chest and a fourth towel laid over you by somebody who did not wake you to be thanked." },
      } },
    { name = "the barber",
      description = "In an alcove with a chair, a strop, and a razor that he does not so much sharpen as remind.",
      things = {
        { name = "his razor", description = "Thin as a leaf with stropping. He has shaved the same hundred chins for thirty years and says that he could do it blind, and on Fridays, when the queue is long, you suspect that he does." },
        { name = "his news", description = "All of it. Who is to marry, who is to be sued, what the Sultana said to her uncle. A barber in Great Shade is the gazette. It is against custom to answer while the razor is at your throat, and he gets a great deal said." },
      },
      actions = {
        { "Ask for a shave", say "He tilts your head back and looks. He looks for some time. \"I will come back,\" he says, \"when there is more to do.\" He gives you a hot towel anyway, on the face, and tells you three scandals through it, and you leave feeling that you have had the full service." },
      } },
    { name = "the soap",
      description = "Green brown blocks, stamped with a seal, smelling of olives and laurel. It is boiled once a year in a vat the size of a room and cut with a wire.",
      things = {
        { name = "the seal on the soap", description = "A small tree. The same that is on the tea chests. Whoever they are, they sell to everybody." },
      } },
    { name = "the rules on the wall",
      description = "Painted on a tile by the door. {i}No knives. No business. No singing above the second verse. The cold bucket is not optional.{/}",
      things = {
        { name = "an added rule", description = "At the bottom, in another hand: {i}The Sultana bathes on Wednesdays. On Wednesdays everybody else is a little cleaner than usual on Tuesday night.{/}" },
      } },
    { name = "the singer",
      description = "Somewhere in the steam, a bass. The song is about a well and a girl and is on its second verse. It has been on its second verse for as long as you have been here.",
      actions = {
        { "Join in", say "You do not know the words and supply some of your own, from the one about the miller's daughter. The bass stops. The whole bath stops. Then, from the fog, the bass takes up the miller's daughter, at the rude verse, word perfect. That song has been further than you have." },
      } },
    { name = "the door to the women's side",
      description = "Shut, with a curtain over it. From behind comes a good deal of laughter, and now and then one clear sentence that makes every man in the hall look carefully at his tea.",
    },
  },

  exits = {
    { to = "pa_bazaar", label = "Back to the streets", description = "Up the three steps, pink and upright, into the coloured dusk." },
  },
}

space {
  id = "pa_court",
  region = "parch",
  name = "The Court of the Reasonable Sultana",
  description = "There are no guards on the gate, and no gate to speak of: an arch, a courtyard of pale stone with a long pool in it, and at the far end, under one plain awning, a low platform with a rug. On the rug sits a woman of about fifty in a grey robe, with ink on her fingers, listening to two men who are both talking. This is Emmerat, fourth of the name, Sultana of Great Shade and the Parch, called the Reasonable. She has not had anybody's head off in a reign of twenty years. Her people speak of it with pride, and, on some days, with a sort of wistfulness.",
  palette = { bg = "#121310", text = "#e2dccb", dim = "#84806c", accent = "#c8b060", border = "#5c5636" },
  ambience = {
    shimmer { color = "#2e3040", strength = 0.12 },
    dust { glyphs = "·", color = "#5a563c", rate = 0.1, speed = 0.1 },
  },

  things = {
    { name = "the Sultana",
      icon = "♛",
      description = "Small, grey eyed, with her sleeves pushed up and a reed pen behind one ear. She listens with her whole face. When she has heard both sides she says nothing for a little, and the court holds its breath, since in other reigns the next words were about a sword. Then she says something sensible. It is always a disappointment to somebody, and never the same person twice.",
      things = {
        { name = "her ink stained fingers", description = "She writes her own judgments, and then writes them again shorter. A judgment of hers goes on one side of one sheet, with the reasons. The lawyers of Great Shade hate her like poison." },
        { name = "her crown", description = "It is on the rug beside her, where she has put it down to think. A plain band of gold with a dent. She uses it, now and then, as a paperweight." },
        { name = "her slippers", description = "Kicked off at the edge of the platform. One has a hole. A petitioner once offered her new ones, in jewels, before his case came on. She thanked him, wore them through the hearing, found against him, and sent them back with the hole darned in the old pair as a receipt." },
      },
      actions = {
        { "Bow", say "You bow very low, as in the stories. \"Do get up,\" says the Sultana. \"You will have the blood in your head, and then I shall not get any sense out of you. Sit. There is a cushion. Have they given you tea?\" They have not. She looks at a chamberlain. They have." },
        { "Present yourself as an adventurer", say "\"Yes, the baths sent word,\" she says. \"A village, onions, and nothing in the pockets.\" She considers you. \"We do not have adventurers. We have people who went out to see what was there and people who did not come back, and they are generally the same people a year apart. What do you want of me that I can give without regretting it?\"" },
        { "Ask about the pyramid", when = no(flag "pa_knows_error"), set "pa_knows_error",
          say "\"My ancestor. Tot the Exact.\" She almost smiles. \"He counted everything. He had the cost of his own tomb carved on the outside of it, to the last fig, so that nobody could say that he had been cheated. Forty thousand lines. And every scholar who has added it up has found it right.\" She leans forward. \"It is not right. He told his daughter and she told hers. There is one line that he got wrong, on purpose, a child could see it. He said that a man who was never once wrong would be past bearing, even dead. Find the line and you will find where he let himself off.\"" },
        { "Ask about the pyramid again", when = flag "pa_knows_error", say "\"One line,\" says the Sultana. \"Low down. He was not a tall man. And you need not be clever. He hid it from the clever. That was the point of it.\"" },
        { "Ask why she is called the Reasonable", say "\"My grandfather was the Magnificent. He built four palaces and we are still paying for the third. My mother was the Terrible, though only before breakfast.\" She takes the pen from behind her ear. \"I thought that I would try for a thing which people could stand for longer.\"" },
      } },
    { name = "the two men talking",
      description = "A brass beater and a slipper maker, neighbours, in dispute over an awning. The slipper maker's cloth has been dripping dye on to the brass beater's trays for eleven years. They have brought the trays. They have brought the cloth.",
      things = {
        { name = "the trays", description = "Brass, with a blue stain. It is, as a matter of fact, rather handsome. Three people in the crowd have already asked the price." },
        { name = "the awning in question", description = "Indigo, held up between the two of them, each with a corner, out of habit, so that the Sultana should sit in its shade while she hears them." },
      },
      actions = {
        { "Hear the judgment", say "She thinks. \"The brass beater shall sell blue trays, which nobody else has, at double. The slipper maker shall have a tenth, for the dye. And each shall mend the other's awning for a year, so that they may learn where it leaks.\" The two men look at each other. They had each of them hoped for the other's ruin. They go out together, already quarrelling about the tenth, as happy as they have ever been." },
      } },
    { name = "the long pool",
      description = "A strip of water down the middle of the court, a hand deep, tiled in blue. It reflects the awning, the sky, and the Sultana, upside down. It is there, she says, so that she may see what the court looks like from the other side.",
      things = {
        { name = "the reflection", description = "Everything in it is the same, and still. But the Sultana's reflection has its crown on." },
        { name = "a paper boat", description = "Floating half way along. Petitioners who cannot write, or dare not speak, fold their case into a boat and set it on the water at the gate end. The breeze takes it up the pool. By the time it comes to her feet she has seen who put it in and who tried to fish it out." },
      },
      actions = {
        { "Launch a petition", say "You fold a boat from a scrap in your pack and set it on the water with nothing written on it, there being nothing that you can think of to ask. It sails the length of the court. She picks it up, unfolds it, and reads both sides of the blank. \"That is the most reasonable one today,\" she says, and puts it in her sleeve." },
      } },
    { name = "the chamberlain",
      icon = "☺",
      description = "A tall, mournful man with a staff, who was trained under her mother to announce people and strike the floor and cry {i}Tremble!{/} He is not allowed to say Tremble. He says, \"The next, please,\" and you can see what it costs him.",
      things = {
        { name = "his staff", description = "Ebony, with a silver knob, for striking the floor three times. He is permitted once. He does the other two very softly, behind his back, on the carpet." },
        { name = "his list", description = "The cases for the day, with a column for {i}Outcome{/}. Under the old reign it had two entries to choose from. He has had to learn to spell {i}compromise{/}." },
      },
      actions = {
        { "Ask about the old days", say "His eyes go far off. \"The Terrible had a gong,\" he says. \"And a man with a sword who did nothing. He only stood. People confessed to things that they had not been accused of.\" He sighs. \"Now they come in and they sit down. They bring their children. One of them brought sandwiches.\"" },
      } },
    { name = "the executioner",
      description = "By a pillar, in a red hood, with a very large sword point down between his feet. The post is hereditary and cannot be abolished. He has not been called on in twenty years. He is knitting.",
      things = {
        { name = "the sword", description = "Two handed, curved, bright as a mirror, and used these days to cut the ribbon at the opening of wells. He keeps it sharp. He says that a blunt one would be a disgrace, and a danger at ribbons." },
        { name = "the knitting", description = "A sock, in grey, on four needles, coming along well. He does all the court's socks. The Sultana's are the only ones in the Parch without a hole and that is how the slipper story began." },
        { name = "his hood", description = "Red, with two eye holes, so that nobody should know who he is. Everybody knows who he is. He is Yon the sock man. Children run up and pull the tassel." },
      },
      actions = {
        { "Ask if he misses the work", say "\"Never did any,\" he says, through the hood. \"My father did one. A horse thief. He was sick for a week after and the thief's widow had to bring him soup.\" The needles click. \"If she ever does want it done, I shall do it properly. But I have the feeling that I should be told to think it over first, and so would she.\"" },
      } },
    { name = "the petitioners",
      description = "A crowd along the pool, sitting on their heels in the shade of the wall, with their cases in their laps: a goat, a deed, a broken jar, a daughter.",
      things = {
        { name = "a woman with a goat", description = "She says that the goat ate her neighbour's deed. The neighbour, next to her, says that the goat was put up to it. The goat has the look of a party who will say nothing without advice." },
        { name = "a boy with a broken jar", description = "He has come by himself, to give himself up. He broke it. Nobody saw. He has been waiting three days in the queue to say so and has been fed by the whole court." },
        { name = "a very old man", description = "At the front, always. He has no case. He comes every day to hear them, as another man might go to a play, and the Sultana asks his opinion now and then, since in forty years of listening he has never once been on anybody's side." },
        { name = "a lawyer", description = "The last in Great Shade. He stands at the back in a robe, ready to speak for anyone, at length. No one has taken him up since she began to ask people to say it in their own words. He is writing his memoirs and they are very bitter and extremely long." },
      } },
    { name = "the awning of state",
      description = "One sheet of undyed cotton on four poles. Her mother sat under cloth of gold, which was hot. This one lets the breeze through, and it was woven, a strip each, by every quarter of the city.",
      things = {
        { name = "the strips", description = "Forty, sewn edge to edge, each a little different in the weave. The strip from the street of birds has a row of tiny darns along it, where the finches pecked it on the loom." },
        { name = "the poles", description = "Palm trunks, plain. On one of them the heights of all the royal children are cut with a knife, back two hundred years. The Terrible was very small at six." },
      } },
    { name = "the uncle",
      description = "The Sultana's uncle, the Emir Bolo, on a great many cushions to one side, with a physician, a fan bearer, and a plate of something white. He was to have had the throne and has never quite got over being spared it.",
      things = {
        { name = "the plate of something white", description = "Rice, boiled, with the grey spice. He has a delicate inside. He eats it with an air of a man who is suffering for his country." },
        { name = "the physician", description = "She takes his pulse every quarter of an hour and writes down the same number. She has six children at school on that pulse." },
      },
      actions = {
        { "Ask after his health", say "He tells you. It takes some time and goes through him in order from the top. Half way down, the fan bearer catches your eye and, with great skill, without altering the rhythm of the fan, mimes hanging himself." },
      } },
    { name = "the treasury door",
      description = "In the wall behind the platform: iron, with a great lock, standing wide open. Inside you can see shelves, and on the shelves, ledgers.",
      things = {
        { name = "the ledgers", description = "The wealth of the Parch, which is a list of who owes water to whom. There is some gold, at the back, in a jar. The Magnificent spent the rest on a palace with a roof of glass, in a country where the sun shines every day. It lasted one summer and may be seen from the east wall, glittering, with nobody in it." },
        { name = "the lock", description = "Forged in Far Enough, by a master, with nine wards. The key was lost in her grandfather's time. She has never sent for another. \"If anybody wants the ledgers,\" she says, \"they may come and do the sums.\"" },
      } },
    { name = "the scribes",
      description = "Three, cross legged at the Sultana's left, each with a board. One writes what is said. One writes what was meant. The third is young, and is there to learn the difference.",
      actions = {
        { "Look over the second scribe's shoulder", say "{i}Petitioner says: an adventurer, seeking his fortune. Meaning: left home after a remark by his father. Has one copper. Kind to animals. Will not take advice but will remember it afterwards. Recommend tea.{/} The scribe looks up at you without embarrassment, and makes a small tick." },
      } },
    { name = "the doves in the court",
      description = "White, a dozen, walking about the pavement among the petitioners' feet as though they had cases of their own.",
    },
    { name = "the seat of judgment",
      description = "The rug. It is an ordinary rug, red, a good one, worn in the middle in the shape of a person sitting. There was a throne. It is in a storeroom. She says that from a throne one could see only the tops of people's heads.",
      actions = {
        { "Ask to see the throne", say "A chamberlain is sent. It comes out on a cart, under a sheet: gold, nine feet high, with lions for arms. The Sultana looks at it as you might at a hat that your aunt gave you. \"Sit in it, if you like,\" she says. You climb up. Your feet do not reach the step. From up there you can indeed see only the tops of people's heads, and all of them, you notice, have stopped smiling." },
      } },
  },

  exits = {
    { to = "pa_bazaar", label = "Back to the streets", description = "Out under the arch and down the wide street into the cloth and the noise." },
  },
}
