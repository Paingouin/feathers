-- The Halls of Thrum: a very large heaven with nobody in it but the caretaker.

space {
  id = "sh_marble_heaven",
  region = "small_heavens",
  wonder = true,
  name = "The Halls of Thrum",
  description = "{glow}The little door in the bronze opens and there is no ceiling.{/} White marble, veined in gold, goes away from you in every direction: a floor like a frozen lake, columns as thick as mill chimneys, stairs that a man would climb in a day. It was built for Thrum, Lord of All, when half the world shouted his name. It was built to hold all of them, after. Nobody came. The last believer died nine hundred years ago. There is one mop bucket in the middle of the floor, very small, and a long way off somebody is dusting.",
  palette = { bg = "#101014", text = "#e4e2dc", dim = "#7c7a80", accent = "#e8d48c", border = "#4a4854" },
  ambience = { dust { glyphs = "·˙", color = "#8c8670", rate = 0.12, speed = 0.1 }, shimmer { color = "#e8d48c", strength = 0.14 } },

  things = {
    { name = "Vesper, the caretaker",
      icon = "☺",
      description = "A seraph, third class, thin as a rake and nearly as old as the halls, in a brown overall, with a lambswool duster on a cane. He was posted here as doorkeeper on the first day. Nobody has relieved him. He dusts a column a day, and there are enough columns that when he gets to the end the first ones want doing again, and he regards this as a kindness on somebody's part.",
      variants = {
        { when = flag "sh_dusted", description = "A seraph, third class, in a brown overall. He has let you dust a column, which he has not let anybody do in nine hundred years, and he has stood back and looked at it afterwards with his head on one side, and has not done it again himself. You gather that this is very high praise." },
      },
      things = {
        { name = "his overall", description = "Brown drill, pressed. In the top pocket, a row of pencils and a folded card: the one prayer that came for Thrum in sixty years, by mistake. He has not framed it. He carries it." },
        { name = "the duster", description = "Lambswool, on a ten foot cane, the wool gone grey. It is the fourth head on the third cane. He regards it as the same duster, and theologically he is on firm ground." },
        { name = "his keys", description = "A ring the size of a cartwheel, on his belt. One key for the bronze doors. One for the cubby. The rest are for rooms he has never had cause to open, and he oils them on the first of the month." },
      },
      actions = {
        { "Ask where everybody is", say "\"There's nobody due,\" he says. He does not stop dusting. \"It was built for the multitude. They'd been promised. Then the kings changed, and the kings' gods with them, and the multitude went where it was told.\" He does the top of a plinth. \"I don't blame them. They were never asked. But the floor's ready, if they change their minds.\"" },
        { "Ask where Thrum is", say "He looks down the hall, towards the far end, where the throne is, and then he does not look that way again. \"He's about,\" he says. \"He doesn't sit. He says he's not entitled, with nobody to sit for.\" The duster goes on. \"He walks. You'll hear him, some nights, a long way off. I leave a bowl out. Stock sends it. It's always empty in the morning, and he's never once said thank you, and I've never once minded.\"" },
        { "Help him dust", when = no(flag "sh_dusted"), set "sh_dusted",
          say "He considers you for a long time. Then he gives you a cloth, and a column. It takes you the afternoon. It is forty feet round and you can reach perhaps a tenth of it, and you do that tenth as well as you have ever done anything. He inspects it. He says nothing. He goes to the cubby under the stairs, puts the kettle on, and leaves the door open behind him, which is a thing he has not done before for anyone." },
        { "Ask who made the world", say "\"He used to say he did.\" Vesper folds the cloth. \"In the old hymns. {i}Thrum who laid the floor of the sea.{/} I asked him once. Late, it was, he'd come by for his bowl.\" He is quiet. \"He said: Vesper, I said it because they wanted it said. I came when the first man looked up in a storm and was afraid. The storm was there.\" He picks up the bucket. \"He's an honest god. It's what did for him.\"" },
      } },
    { name = "the floor",
      description = "White, polished, gold in the veins. You can see yourself in it, and under yourself, the columns going down. Your footsteps come back from the far wall a full breath after you make them.",
      things = {
        { name = "the mop bucket", description = "Galvanised. It is the one from the corridor. In all this marble it looks like a thimble left on a ballroom floor, and it is the only thing in the place that has been used." },
        { name = "a track in the polish", description = "A line, a little duller, from the bronze doors to the far end and back. Not Vesper's: he keeps to the sides. Something very large walks this, slowly, with a bare foot and a sandal." },
        { name = "your reflection", description = "Small, travel stained, holding its hat. It is the first worshipper's reflection this floor has had in nine hundred years. The floor, you feel, is making the most of it." },
      },
      actions = {
        { "Shout", say "You shout hello. It goes out. It hits a column, and another, and the far wall, and the wall behind that. It comes back as a whole congregation, thousands, saying hello, hello, in a great soft roar: the one sound these halls were built for. Far off, Vesper has stopped dusting. He stands quite still until it has died away. Then he bows to you, from the waist, and goes on." },
      } },
    { name = "the columns",
      description = "A forest of them, fluted, each cut from one stone. The capitals are carved with the things Thrum was lord of, which was everything, and so there are a great many.",
      things = {
        { name = "a capital of wheat and thunder", description = "Ears of corn with lightning between them. The corn is so finely cut that Vesper dusts it with a paintbrush." },
        { name = "a capital left rough", description = "The last one, by the doors. Blocked out and never finished. The mason's marks are still on it in red chalk. He put down his chisel on the day the news came, and a god cannot very well ask." },
        { name = "the column you dusted", visible_if = flag "sh_dusted", description = "A band of it, at the height of your arms, shines a little more than the rest. Vesper has not gone over it. He says he will, when it wants doing. He has moved his chair to where he can see it." },
      } },
    { name = "the benches of the blessed",
      description = "Tier on tier, up both sides, marble, with a number cut on every seat. They go up into the gold dusk under where a roof would be. A hundred thousand places, each dusted, each with a small folded card.",
      things = {
        { name = "a card", description = "{i}Reserved.{/} They all say that. Vesper wrote them, in copperplate, a tier a year. He was told to expect them and nobody has told him otherwise." },
        { name = "seat number one", description = "Front row, on the aisle. There is a hollow in it. One person has sat here: the last believer, an old woman from a hill village, who came up alone nine hundred years ago, looked round, said it was very nice, and asked if there was a smaller room. Vesper found her one. He does not say where. He visits." },
      },
      actions = {
        { "Sit down", say "You take a seat, about the middle. The marble is cold and then it is not. For as long as you sit there the halls have a congregation, and you feel the whole enormous place lean in, column and stair and tier, to hear what you will ask for. You have nothing to ask. You say that it is a very fine floor. Something a long way off stops walking." },
      } },
    { name = "the great stair",
      description = "At the far end: a flight of two hundred steps, each as high as your knee, up to a dais. It was built for a god's stride. Vesper goes up it on Mondays, with the bucket, one step at a time, sitting down.",
      things = {
        { name = "the throne", description = "On the dais, white, the size of a house. The seat is dustier than anything else in the halls. That is deliberate. Vesper will not dust it, on the ground that it is not empty, it is merely not being sat in, and you do not tidy a god's chair when he has only stepped out." },
        { name = "a sandal on the bottom step", description = "One. Leather, the length of a rowing boat, the strap chewed through. Its fellow is on a hat stand in another room. He kicked this one off here. Nobody has moved it." },
      } },
    { name = "the cubby under the stair",
      key = "sh_cubby",
      description = "A deal door in the side of the great stair, with a padlock. It is where a caretaker keeps what a caretaker keeps.",
      variants = {
        { when = flag "sh_dusted", description = "A deal door in the side of the great stair, standing open. Inside: a camp bed, a shelf, a small iron stove with the kettle on, and a chair with a cushion. It is the size of the airing cupboard. Of all these halls it is the only part that looks like anybody's heaven." },
      },
      things = {
        { name = "the stove", visible_if = flag "sh_dusted", description = "Pot bellied, black leaded, drawing well. He burns the dust. Nine hundred years of it, off gold veined marble: it goes up the flue with a small bright crackle." },
        { name = "the poker", key = "sh_poker", visible_if = all(flag "sh_dusted", no(flag "sh_bolt_taken")),
          description = "Leaning by the stove door: three feet of forked bronze, green in the creases, with gold wire on the grip. It is not a poker. You know what it is. It is on every capital in the hall, in a carved fist, among the wheat." },
        { name = "the camp bed", visible_if = flag "sh_dusted", description = "Canvas, army pattern, the blanket squared. A seraph does not sleep. He lies down for an hour, he says, to be civil to the night." },
        { name = "the shelf", visible_if = flag "sh_dusted", description = "A mug. A tin of polish. A book of hymns to Thrum with the music, open at one he says nobody ever cared for, and which he sings, doing the stairs." },
      },
      actions = {
        { "Ask about the poker", when = all(flag "sh_dusted", no(flag "sh_bolt_taken")), set "sh_bolt_taken", give "sh_thunderbolt",
          say "\"That? He left it in the umbrella stand. The day he stopped.\" Vesper takes it up and rakes the stove with it, expertly. \"It's a good poker. It never gets too hot to hold.\" He looks at it. He looks at you, and at the column. \"I've a proper one somewhere. Take it. He'll not ask. It ought to be carried by somebody who's going about, and I'm not going about.\" He wipes the soot off the fork with his sleeve before he hands it to you.", fx "flash" },
      } },
    { name = "the bronze doors, from within",
      description = "Twenty feet high, cast with the whole history of the world as Thrum's priests told it. From this side you can see where the deal door was cut through, across the panel of the Third Triumph, and neatly hinged.",
      things = {
        { name = "the first panel", description = "The making of everything. Thrum, very large, with his arms out. It is the least convincing panel on the doors. The sculptor has done the god superbly, and the sea, and the mountains under his hands. But he has left the mountains weathered, with scree on them, as if they had been standing some time." },
        { name = "the last panel", description = "Blank bronze, never cast. It was kept for the end of the world, which Thrum was to preside at. It has not been needed, and Vesper keeps it polished so that it shows the hall behind you, very small and gold." },
      } },
    { name = "the light",
      description = "It comes from nowhere and falls like late afternoon, at a slant, with the dust in it. There are no windows. It is merely what was put in to see the glory by, and it has been left on.",
      actions = {
        { "Stand in it", say "It is warm on your face, like sun through a west window. You hold out your hand and the dust goes round your fingers. Nine hundred years of a lit and empty room. It is not sad, exactly. It is ready." },
      } },
    { name = "a bowl on the floor",
      description = "By the bottom of the great stair. Earthenware, with a cloth over it. Soup, from down the corridor. It is still hot.",
      things = {
        { name = "the cloth", description = "A tea towel. {i}A PRESENT FROM SALTWICK.{/} Vesper has never been to Saltwick. It came up with a prayer, he says, wrapped round a loaf, and it seemed a waste." },
      } },
    { name = "the echo",
      description = "It never quite stops. A footfall from this morning is still going about under the far tiers. If you hold your breath there are older ones under it: a hymn, very faint, from the day the doors were opened, and one woman's voice saying that it is very nice." },
    { name = "the offering table",
      description = "Marble, forty feet long, by the doors. It was to have been heaped with the first fruits of a continent. There is one thing on it.",
      things = {
        { name = "an apple", description = "A small red one, wizened, nine hundred years old and not rotten. She brought it up with her, in her apron. It was what she had. Vesper turns it, each morning, so that it keeps its shape." },
      } },
  },

  exits = {
    { to = "sh_staff_corridor", label = "The little door in the bronze", description = "Back to the linoleum." },
  },
}
