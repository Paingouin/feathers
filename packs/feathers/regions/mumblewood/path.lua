space {
  id = "forest_path",
  region = "mumblewood",
  name = "The Path That Tries",
  description = "A path, or the intention of one. It goes around every tree it meets, apologises to the big ones, and somehow continues to exist.",

  things = {
    { name = "a ring of mushrooms",
      key = "mushroom ring",
      description = "Blue-capped, in a perfect circle with one gap, like a meeting waiting for a latecomer.",
      variants = {
        { when = flag "moon_cap_picked",
          description = "Blue-capped, in a circle with two gaps now. The meeting has noticed." },
      },
      things = {
        { name = "the gap", description = "Mushroom-sized. Nothing grows in it. The others lean very slightly away." },
      },
      actions = {
        { "Pick one", once = true, give "moon_cap", set "moon_cap_picked",
          say "It comes away with a small sigh, not necessarily its own. A {gold}moon-cap{/}, glowing faintly in your hand." },
        { "Pick one", say "No. One was a liberty. Two would be a harvest, and they would know." },
        { "Step into the ring", say "You step in. Nothing happens, in a way that feels like a decision made about you." },
      } },
    { name = "a fox",
      key = "fox",
      icon = "f",
      description = "Red, lean, and sitting in the middle of the path as if it had sent for you and you were late.",
      variants = {
        { when = flag "fox_followed",
          name = "a gap in the ferns",
          description = "Where the fox went. The ferns have not quite closed again. They are holding the door.",
          actions = {
            { "Peer through", say "Oak. A great deal of oak, and a door-shaped dark in the side of it." },
          } },
      },
      actions = {
        { "Follow it", set "fox_followed",
          say "It trots off the path, looks back once to check you are the kind of fool it took you for, and slips into the ferns. Behind them stands an oak as wide as a cottage, with a door-shaped dark in its side." },
        { "Talk to it", say "It listens with great courtesy, and when you have finished, it yawns." },
      } },
    { name = "the trees",
      description = "Oak, ash, and something with silver bark that nobody has named, because it never comes when called. All of them {whisper}mumbling{/}.",
      things = {
        { name = "a carved heart", description = "{i}T + L{/}, very old. Under it, later, in a different hand: {i}it didn't last{/}. Under that, in the bark's own slow lettering, a scar that could be read as {i}told you{/}." },
        { name = "a woodpecker", description = "Working on the silver tree with the air of someone taking minutes." },
      },
      actions = {
        { "Listen in", say "{whisper}...not what it was... the lake's been odd again... another one in boots...{/} That last part, you feel, was about you." },
      } },
    { name = "a boot",
      description = "One boot, upright in the path, laces tied. Adventurer's make. It is empty, and does not seem to mind.",
      things = {
        { name = "the inside of the boot", description = "A beetle has moved in and put up what look like shelves." },
      },
      actions = {
        { "Try it on", say "It is a left. You already have a left. The beetle watches you work this out." },
      } },
    { name = "a path-made signpost",
      description = "A stick the path has pushed up through the leaf mould, with a second stick across it. Scratched on the crosspiece, by no hand in particular: {i}THIS WAY (PROBABLY){/}.",
      actions = {
        { "Thank the path", say "The leaves ahead of you settle a little flatter. It is the first encouragement the path has had in years." },
      } },
    { name = "a fallen log",
      description = "A beech trunk across the path, soft with moss. The path goes over it by a worn dip, and so does everything else.",
      things = {
        { name = "the ant road",
          description = "A line of wood ants crossing the log in both directions, each one carrying something larger than itself and none of them dropping it.",
          things = {
            { name = "one ant", description = "It has a pine needle four times its length. It meets a twig, considers, goes round, and loses no ground. You have had worse days than this ant with less cargo." },
          },
          actions = {
            { "Lay a twig across the road", say "Traffic stops. There is a conference. Within a minute the twig has been moved aside, by forty of them, and laid parallel to the road, neatly. You feel that you have been tidied." },
          } },
        { name = "a bracket fungus", description = "A shelf of it up the side of the log, brown and banded, hard as a hoof. A beetle is using the lowest shelf as a porch." },
        { name = "a slow-worm", description = "Bronze, smooth, as long as your forearm, lying in the one patch of sun. It is not a snake. It would like that noted. It gets a lot of this." },
      },
      actions = {
        { "Sit on it", say "The moss is damp and you know it at once. You sit a moment longer anyway, for dignity." },
      } },
    { name = "a hazel thicket",
      description = "Thin grey stems, round leaves, and nuts in ragged green cups, nearly ripe.",
      things = {
        { name = "a dormouse", icon = "m",
          description = "Curled in a ball of grass in the fork of a stem, gold as a new coin, asleep. It sleeps seven months of the year and rests for the other five.",
          actions = {
            { "Watch it sleep", say "Its whiskers move. It is dreaming about a nut. You find that you have been standing quite still for some time, breathing slowly, and that you feel better." },
          } },
        { name = "a nut with a hole in it", description = "A neat round hole, a quarter the size of your fingernail, and nothing inside. Something small got in, ate the lot, and left by the front door." },
      },
      actions = {
        { "Pick a nut", say "Not ripe. Your teeth find this out on your behalf." },
      } },
    { name = "a spider's web",
      description = "Strung across the path at face height between two ferns, and hung with the morning's dew. You see it in time. Somebody before you did not: there is a hole in one corner the shape of a nose.",
      things = {
        { name = "the spider", description = "Small, brown, at the centre, with one leg on a thread, listening. She has already begun mending the corner. She does not hold grudges; she has not the time." },
        { name = "a dewdrop", description = "It holds the whole path upside down in it: the trees, the sky, and one very small adventurer hanging from the top by the boots." },
      },
      actions = {
        { "Duck under it", say "You go under on your knees. A strand catches your hat regardless. You carry it with you all day, and it is still there in the evening." },
      } },
    { name = "the bluebells",
      description = "A drift of them under the oaks, so thick that the ground is the colour of the sky an hour after sunset. They do not grow on the path. The path goes round.",
      actions = {
        { "Walk into them", say "You take one step and stop. The whole drift has gone quiet, the way a room does. You take the step back. A blackbird starts up again, relieved." },
        { "Smell them", say "Green, cool and faintly sweet, a smell with no kitchen in it at all. It has been a while since you smelled anything that nobody made." },
      } },
    { name = "a wild boar",
      icon = "b",
      description = "Black, bristled, the size of a wheelbarrow, standing across the path with its head down. {danger}Two tusks, yellow, and long enough.{/} It looks at you for some time. Then it goes back to turning over the leaf mould with its nose, slowly, having ranked you below acorns.",
      things = {
        { name = "its tusks", description = "Curved, chipped, and at present being used to lift a root so that a snout can get under it. They are gardening tools with a reputation." },
        { name = "a line of piglets", description = "Six, striped like humbugs, following in order of size. The last one stops to look at you, and is nudged on by nobody, and catches up at a run." },
      },
      actions = {
        { "Stand very still", say "You stand very still. It was not necessary, but the boar seems to take it as good manners, and leaves you the path when it has finished with it." },
      } },
    { name = "an ivy-grown trunk",
      description = "A dead oak, standing, wrapped to the top in ivy until there is more ivy than tree. It hums.",
      things = {
        { name = "a split in the bark",
          description = "High up, dark, the width of two fingers.",
          things = {
            { name = "the bats", description = "A dozen pipistrelles hanging in a row inside, like gloves put away. One stretches a wing, thin as a leaf, and folds it again. They are waiting for the day to be over, and are in no doubt that it will be." },
          } },
        { name = "the ivy flowers", description = "Green, plain, and covered in wasps, hoverflies and one late butterfly. It is the last tavern open before winter and everybody knows it." },
      } },
    { name = "the brook beside the path",
      description = "The millstream again, narrower here, going uphill over a bed of round stones with a sound like somebody counting under their breath.",
      things = {
        { name = "a water vole", description = "It sits on the bank holding a blade of grass in both hands and eating it from one end, like a clerk with a long report. At your shadow it drops into the water with a plop and swims upstream, with the current." },
        { name = "a deer slot", description = "Two neat toe-prints in the mud at the edge, sharp, a few minutes old. You look up. There is nothing there but a branch still moving." },
      } },
    { name = "a swept stretch of path",
      description = "North of the brook a side path leaves this one, and within three paces it has changed its ways. No leaves on it. No roots across it. The ferns on either side have been parted, and the stones at its edge are white, and have been washed.",
      things = {
        { name = "a white stone", description = "River-smooth and scrubbed. You pick it up. You feel, strongly, that you should put it back exactly where it was, and facing the same way." },
      },
      actions = {
        { "Step onto it", say "Your boots leave two muddy prints on it. You look at them. From somewhere ahead among the tall trees comes a very small, very distant sigh." },
      } },
  },

  exits = {
    { to = "wood_edge" },
    { to = "hermit_clearing" },
    { to = "deep_wood", description = "Off the path and downhill, where the trunks get wider and the light gets fewer." },
    { to = "elf_border", description = "By the side path that has been swept. It runs straight, between washed white stones, to where the trees stand taller and nothing mumbles. The Everwood, where the elves live. The path is very polite about it, and you can tell that it expects the same of you." },
    { to = "upward_falls", description = "Follow the stream, and the sound of water doing something it should not." },
    { to = "lake_shore", description = "Through the pines, where the mumbling thins out and stops." },
    { to = "hollow_oak", label = "The gap in the ferns",
      description = "Through the ferns, to an oak with a dark doorway and no door.",
      requires = flag "fox_followed", hidden = true },
  },
}
