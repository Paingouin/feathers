region {
  id = "collegium",
  name = "The Collegium",
  description = "The Royal Collegium of Hereditary Magic, behind its wall at the end of Elbow Lane. It admits the sons and daughters of the oldest families, on the theory that magic runs in the blood. Three hundred years of results have not disturbed the theory.",
  palette = { bg = "#0f0d15", text = "#d2ccd8", dim = "#6e687c", accent = "#b98cf0", border = "#3e3658" },
  ambience = {
    dust { glyphs = "·˙", color = "#5a5468", rate = 0.3, speed = 0.3 },
    shimmer { color = "#b98cf0", strength = 0.06 },
  },
}

item {
  id = "founders_spoon",
  name = "Mag Pargeter's Spoon",
  icon = "♀",
  description = "A wooden kitchen spoon, dark with use, scorched at the bowl. This is the wand of the Founder of the Collegium, the most powerful instrument of magic ever made in the kingdom. She stirred porridge with it most mornings and saw no reason to keep two.",
  things = {
    { name = "the scorch", description = "From the day she turned back the Grey Winter. Or from leaving it on the range. The accounts differ, and both are in her handwriting." },
    { name = "the handle", description = "Worn to the shape of one hand, a broad one. Your thumb goes where hers did, and for a moment you are entirely sure how to make a white sauce." },
  },
  actions = {
    { "Wave it", say "Nothing happens. Then you notice that everything in your pack has been put in order, largest at the bottom, and that your collar is straight." },
    { "Stir something", say "You stir the air. It thickens, slightly, and you stop before it catches." },
  },
}

item {
  id = "helpful_grimoire",
  name = "A Practical Course of Levitation",
  icon = "▯",
  description = "A grimoire bound in green leather with a broken chain on its spine. It is the only book on its subject that works, and it spent three centuries in the Restricted Stacks pulling towards the stairs. It does not ride in your pack. It follows at shoulder height, a little behind, and waits to be asked.",
  things = {
    { name = "the broken chain", description = "Four links, trailing. It keeps them, as some people keep a hospital bracelet." },
    { name = "chapter one", description = "{i}Do not look down. Do not look up. Look at something level, and think of it fondly.{/} There is a diagram of a teacup." },
    { name = "the last page", description = "A list of readers, by signature. One name, the Founder's, and under it, new, in the book's own neat print: {i}pending{/}." },
  },
  actions = {
    { "Ask it to lift you", say "It rises a foot, eagerly, opens itself at chapter one and holds the page in front of your face. It will not do it for you. It is a course." },
    { "Pat it", say "It bobs. You have never been liked by a book before and it is rather nice." },
  },
}
