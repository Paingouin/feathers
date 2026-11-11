-- The heaven of the goddess of what very nearly happened.

space {
  id = "sh_almost",
  region = "small_heavens",
  secret = true,
  wonder = true,
  name = "Very Nearly",
  description = "{glow}Your fingers stop a hair short of the statue that is not there, and the Street goes thin, like a held note.{/} You are standing in a garden at the hour just before dawn. Everything in it is about to. The roses are in bud and the bud is splitting. A fountain has thrown its water up and the water has not yet started down. On a bench a man is drawing breath to say a thing to a woman who has turned her head to hear it. This is the heaven of Almost, and it is where everything went that very nearly happened. It is all still here. It is all still just about to.",
  palette = { bg = "#100e16", text = "#dcd6e4", dim = "#766e8a", accent = "#d0a8e8", border = "#40365a" },
  ambience = { shimmer { color = "#d0a8e8", strength = 0.2 }, fireflies { glyphs = "·˙∙", color = "#b890d8", rate = 0.2 } },

  things = {
    { name = "Almost",
      icon = "◇",
      description = "You cannot quite see her. She is in the corner of your eye whichever way you turn: a tall goddess, grey eyed, with her hand a little raised, as if she were about to speak or had just decided not to. She is the youngest god on the Street and the most prayed to. Every {i}please{/}, every {i}if only{/}, every held breath at a bedside goes to her. She grants none of them. She is not able to. She can only bring a thing to the very edge of happening, and hold it there, and love it.",
      things = {
        { name = "her hand", description = "Half lifted. It has been half lifted since she was first believed in. If she ever finished the gesture, you understand, the garden would happen, all at once, the whole of it, and be over." },
        { name = "her face", description = "You nearly see it. It is nearly the face of somebody you knew." },
        { name = "her voice", description = "She does not speak. But you have the sense, all the time, of a sentence that has got as far as the first word." },
      },
      actions = {
        { "Ask her why she grants nothing", say "She turns her head, almost. You do not hear an answer. You find that you know one, as if you had just been about to think of it. A thing that happens is finished. It is one thing, and it goes into Ledger's book, and is ruled off. A thing that nearly happens can be anything, still. She keeps them. She is the only one who does. Nobody else in the heavens has any use for what did not occur, and it is most of what there is." },
        { "Thank her for the adventure you nearly had", set "sh_almost_thanked", say "The garden holds its breath, which it was doing anyway. Then, for the first time, something here completes: one petal, on one rose, lets go and comes all the way down, and lies on the path. She looks at it. You have the impression of somebody very young being given a present and not knowing what to do with her hands." },
        { "Ask who made the world", say "She looks at you fully, for once, and you see her, and then you cannot remember what you saw. You know that she nearly told you. It was on the tip of the whole garden. The fountain shivered. The man on the bench almost looked round. And then it was held, like everything else here, with great tenderness, a hair short. You are left with a word on the tip of your tongue, and no idea what language it was in." },
      } },
    { name = "the fountain",
      wonder = true,
      description = "A plain stone basin. {shimmer}The jet has gone up twelve feet and stopped, at the top, where water hangs for the instant before it turns.{/} It is not frozen. It is perfectly wet, and trembling, every drop round and separate with the grey sky in it. It has been at the top of its leap since the garden was made. You have seen a fountain run uphill, in Aldmoor. This one has merely not yet come down.",
      things = {
        { name = "the top of the jet", description = "A crown of drops, open like a hand. One of them is a little lower than the rest. It is the one that will fall first. It has been about to for longer than there has been an Aldmoor." },
        { name = "the basin", description = "Dry. The stone is pale and has never been splashed. A leaf lies in it, waiting to float." },
      },
      actions = {
        { "Hold your hand under it", say "You stand with your palm out under twelve feet of hanging water. Nothing comes down. But your hand is certain, in every nerve, that it is about to be wet. You have never been so entirely about to be anything. After a while you take the hand away, dry, and it tingles for an hour." },
      } },
    { name = "the bench",
      description = "Iron, under a lilac that is one warm morning short of flowering. A man and a woman sit on it, not touching.",
      things = {
        { name = "the man", description = "Young, in a carter's coat, with his mouth a little open and his hand an inch from hers. He had it all ready. Then a cart went by, and the moment went with it, and he drove the Saltwick road for forty years. He is still here, at twenty, about to say it." },
        { name = "the woman", description = "She has turned her head to listen. She knew what he was going to say. She had her answer ready too. She married a chandler. She sits here in a blue dress with the answer still in her face, and it is yes." },
        { name = "the inch", description = "Between his hand and hers on the iron. You could put a finger in it. It is the widest thing in the garden." },
      },
      actions = {
        { "Cough politely", say "Neither moves. But you have an idea, a mad one, that two carters in an inn in Aldmoor, who have argued about the Saltwick road for nine years, have both this moment stopped in mid sentence and looked at the door, without knowing why." },
      } },
    { name = "the roses",
      description = "A bed of them, all in bud, every bud split to show a line of red. The scent is the scent of roses a moment before there are any. It is stronger than the real thing. It is nearly unbearable.",
      things = {
        { name = "the petal on the path", visible_if = flag "sh_almost_thanked", description = "One. Red, a little curled, lying on the gravel. It is the only thing in this heaven that has finished. She has not moved it. She has, very slightly, moved the path." },
      } },
    { name = "the things that nearly happened",
      description = "They stand about the garden like statues, on the lawns, down the walks. Each is a moment at its edge. You could spend a life walking among them, and you have the uneasy feeling that some people do.",
      things = {
        { name = "an arrow in the air", description = "Hanging over the long walk, a yard from a king's back. A gust took it. He never knew. He reigned thirty years and built the Survey. There is the arrow, a yard short, with the wind already on it." },
        { name = "a ship in the gate", description = "At the end of the lime walk the garden opens on a harbour, and in the harbour mouth a ship is coming in, with her name on the bow, {i}Unsinkable{/}, and every soul aboard at the rail. She very nearly made it. She has been in the gate, on that last wave, since the night she did not." },
        { name = "a letter on a salver", description = "Sealed, on a table under the yew. {i}W., The Light, Saltwick.{/} It was very nearly posted. It still very nearly is. You look at it for some time and then, firmly, at something else." },
        { name = "a dragon", description = "On the lower lawn, the size of a church, with its wings half open. The kingdom was within a morning of having one. It overslept. It is superb, and it is not looking at you, and it will go on not looking at you for ever, which is exactly the kind of dragon you had hoped for." },
        { name = "a statue of the goddess", description = "On a plinth by the gate. Finished, in white stone, perfect. It is the one that is not on her altar. The sculptor died with his hand out for the last chisel. So it is here, where it is nearly on the Street, and the air on the Street is the shape of it." },
      },
      actions = {
        { "Walk among them", say "A cup that did not break. A word that was bitten back, hanging in the air like breath. A baby, laughing, in the arms of nobody. A whole army on a hill, at the instant before the order, with the sun on the spears and the order not given. You go slowly. None of it is sad. It is all so very close." },
      } },
    { name = "the sky",
      description = "Grey, with a line of clear along the east the colour of a pearl. It is the minute before sunrise. You can feel the sun there, under the edge, the whole weight of it. The birds have drawn breath. It has been about to be morning here since she came, and every created thing in the garden is leaning that way.",
      actions = {
        { "Wait for the dawn", say "You wait. The light along the east gets no brighter and no less. But the waiting itself is a thing: clean, enormous, with your whole chest in it. You remember it. It is how the night before you left home felt. You had thought that feeling was the start of something. It seems it was a place, and this is it." },
      } },
    { name = "a plinth with a crown on it",
      key = "sh_crown_plinth",
      description = "Down a side walk, in a ring of clipped box: a low stone, and on the stone a plain gold circlet, a little dented. There is a card.",
      variants = {
        { when = flag "sh_crown_taken", description = "A low stone in a ring of clipped box, with a card. The stone is bare. In the moss on top there is a ring where something sat for exactly as long as you have been alive." },
      },
      things = {
        { name = "the card", description = "{i}Yours, very nearly.{/} And the name, with a number after it. It is in the hand of the offerings on her altar: unsent, soft at the folds." },
      },
      actions = {
        { "Take the crown", when = no(flag "sh_crown_taken"), set "sh_crown_taken", give "sh_almost_crown",
          say "You reach for it and expect your hand to stop a hair short, like everything here. It does not. The gold is cold and has weight and comes up off the stone into your hands. Nothing in this garden can be had. But this was only ever yours, and you only ever nearly had it, and it seems she has been keeping it until you came by. In the corner of your eye a hand, half lifted, lifts a little more.", fx "sparkle" },
      } },
    { name = "the garden gate",
      description = "Wrought iron, in the wall, standing an inch open. It is the gate you came in by. Through the inch you can see the Street of Small Gods, and the altar, and the air above the plinth, and a pilgrim with his hand out who has stopped a hair short." },
    { name = "a sundial",
      description = "Bronze, on a baluster. No shadow: there is no sun yet. The motto round the rim reads {i}IT IS LATER THAN{/}, and the founder ran out of rim." },
    { name = "a gardener",
      description = "Old, in a sacking apron, on one knee by the border with a trowel. He is the only one here who moves. He is planting bulbs. He has no reason to think they will ever come up, in this garden, and he plants them an exact hand apart.",
      actions = {
        { "Ask him why he bothers", say "He sits back on his heel. \"She's young,\" he says. \"She's not always going to be the goddess of Almost. One of these days somebody's going to pray to her and she'll forget herself and {i}do{/} it.\" He firms the soil with his thumb. \"And then it'll be morning, and all this'll want to have been planted.\" He looks at the east. \"I was a sexton. I'm used to taking the long view.\"" },
      } },
    { name = "the held breath",
      description = "That is the sound of the place. Not silence. The opposite: everything on the point of making a noise. The fountain, the birds, the man on the bench, the army on the hill. You find you are holding yours. It seems rude not to." },
  },

  exits = {
    { to = "temple_quarter", label = "The garden gate", description = "An inch open. You go through sideways, and it is afternoon, and somebody is selling candles." },
  },
}
