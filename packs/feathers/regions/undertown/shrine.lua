space {
  id = "buried_shrine",
  region = "undertown",
  secret = true,
  wonder = true,
  name = "The Shrine Under Everything",
  description = "The door opens inward without a sound, and closes behind you the same way. A round room, older than the Cistern, older than arches. Nobody has swept here and there is no dust. It is very quiet, and the quiet is not empty.",
  palette = { bg = "#08080f", text = "#c4c2d6", dim = "#5c5a78", accent = "#b9a4f0", border = "#34305a" },
  ambience = {
    fireflies { glyphs = "✧·∙", color = "#b9a4f0", rate = 0.5 },
    stars { glyphs = "·˙", color = "#6a64a0", rate = 0.4 },
  },

  on_enter = function(ctx)
    if not ctx:visited("buried_shrine") then
      ctx:say("The ring is warm now. You had not noticed it change.")
      ctx:fx("wash", "#b9a4f0")
    end
  end,

  things = {
    { name = "the murals",
      description = "They run right round the wall, worn smooth as river stones. Hills, perhaps. A sea. A town that might be any town. You follow them round and arrive back where you began without finding where the picture starts.",
      things = {
        { name = "a figure in the mural",
          description = "In one place the wearing-away has left a shape: something large, folded, with its head tucked down. Asleep, or the damp wants you to think so. Everything else in the mural is drawn as though seen from where it lies." },
        { name = "a handprint", description = "Pressed into the plaster at the very beginning, or the very end. Small. Not a workman's. You do not put your hand to it." },
      } },
    { name = "the lamp",
      wonder = true,
      icon = "☼",
      description = "A plain clay lamp on a plain stone shelf. It has {glow}never been lit, and it has never gone out{/}. It gives the room its light and casts no shadows at all, not even yours.",
      actions = {
        { "Warm your hands", say "No heat. But the cold you brought down from the Cistern goes out of you all the same." },
        { "Look for your shadow", say "You turn right round. You have not got one, in here. You find you do not miss it." },
      } },
    { name = "the empty plinth",
      description = "At the centre of the room, a low round stone with a shallow dish worn into its top. The dish is the size and curve of a nest. There is nothing in it. It does not look as though anything has been taken; it looks as though something is expected.",
      actions = {
        { "Sit beside it", say "You sit. Nothing happens, and goes on happening, gently, for some time. When you stand, your boots feel like the boots of someone who has been somewhere." },
      } },
    { name = "the stone bench",
      description = "It runs round the wall and would seat forty. The stone is worn in one place only." },
    { name = "the floor",
      description = "One stone, dished by feet. The dish runs round the plinth and never to it. People walked round." },
    { name = "the dome",
      description = "Unpainted and smooth. Sound goes up into it and does not come down. Your breathing and your boots are taken, and kept." },
    { name = "a moth",
      description = "Pale, on the lamp shelf, with its wings open. It does not go to the light. It sits beside it, as you would sit beside a friend." },

    { name = "the niches",
      description = "A ring of small recesses in the wall, at every height from the ankle to above the head. Each holds something that was left. Nobody has ever taken anything from one, in all the time there has been.",
      things = {
        { name = "a child's shoe", description = "Leather, gone hard, at the height a child could reach. It was left full of flowers. The flowers are a brown dust, and the dust has kept the shape." },
        { name = "a chisel", description = "Short, square, of dark metal, at the height of a dwarf's hand. It has been sharpened and then given up, which for a dwarf is a great deal to give." },
        { name = "a cobble of river pearl", description = "In the lowest niche of all, a hand above the floor. It is the size of a pea and has been polished by walking. Somebody very small brought a piece of their own street." },
        { name = "an empty niche",
          description = "At about the height of your chest. It is clean, like the rest, and it is the only one with nothing in it.",
          actions = {
            { "Leave something", say "You go through your pockets. The coin you will need. The lace you have only just got back. In the end you leave a button, the good one, off your cuff. It looks very small in there. It looks, all the same, as if it had been allowed for." },
          } },
      } },
    { name = "the doorway, from inside",
      description = "No latch, no hinge that you can find, no keyhole. The stone of the jamb is worn at shoulder height on both sides, at a great many different heights of shoulder." },
    { name = "the warmth",
      description = "It is not cold in here. It ought to be: you are under a cistern, under a drain, under a town. The stone gives back a little heat to the hand, the way a wall does in the evening after a fine day." },
  },

  exits = {
    { to = "cistern", description = "The bronze door, which from this side has a handle." },
  },
}
