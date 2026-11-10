return {
  id = "feathers",
  name = "Feathers",
  version = "0.6.0",
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
    -- Mighty, legendary, and no use to anyone: collected, never used.
    { name = "Artifacts", items = {
        "griffonsbane", "unfalling_staff", "rat_crown", "muster_horn",
        "saints_hand", "archmage_staff", "iron_gauntlet",
        "founders_spoon", "helpful_grimoire",
        "axe_unswung", "upstream_cup", "pending_acorn", "horn_of_evening", "parting_comb",
        "compass_second_opinions", "sea_kings_horn",
        "winter_crown", "hammer_enough", "last_word",
        "true_level", "perfect_hinge", "mountain_reply", "pawned_crown", "garden_lens",
        "sword_wilful", "kingdom_key", "cup_plenty", "golden_fish", "old_crown",
        "glass_turnip", "unlanded_pebble", "poker_sword",
    } },
  },
}
