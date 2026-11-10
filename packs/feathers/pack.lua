return {
  id = "feathers",
  name = "Feathers",
  version = "0.4.0",
  author = "Paingouin",
  api = 1,
  description = "A small kingdom with large opinions, and a great deal underneath it.",
  start = "village_square",

  theme = {
    gold    = "#e6c14c",
    magic   = "#b98cf0",
    danger  = "#d9534a",
    whisper = "#7d8a8f",
    place   = "#8fc7a0",
  },

  trackers = {
    { name = "Places",  count = "spaces" },
    { name = "Secrets", count = "secrets" },
    { name = "Wonders", count = "wonders" },
  },
}
