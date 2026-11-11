-- Artifacts of the Afterthoughts. Mighty, storied, and of no practical use to you.

item {
  id = "is_bagged_wind",
  name = "the Fair Wind in Bond",
  icon = "§",
  description = "A sack of grey sealskin the size of a pillow, tied at the neck with a knot nobody living can name, and sealed with the lead seal of the Customs. Inside it is a wind: a north-easter, fresh, bought from a weather-wife two hundred years ago by a captain who wanted to be home for a christening. {gold}It was seized on the quay for want of one penny duty, and has been blowing in there ever since.{/} The sack is warm on one side and cold on the other, and never lies quite still.",
  things = {
    { name = "the knot", description = "Nine turns, tucked under itself in a way that hurts to follow. There is a rhyme for undoing it. The weather-wife took the rhyme with her, and she went upward." },
    { name = "the lead seal", description = "Stamped with a crown and an anchor and the words {i}HELD PENDING{/}. It has been pending for nine reigns." },
    { name = "the bulge", description = "It moves round the sack, slowly, like a cat under a blanket. When you put your ear to it you hear rigging." },
    { name = "the docket", description = "Tied on with twine. {i}One (1) wind, NE, fresh to strong. Duty owing: one penny. Owner: gone for the penny.{/}" },
  },
  actions = {
    { "Loosen the knot", say "You get a fingernail under the first turn. Your hat leaves your head, goes twice round the room and comes back. You take your fingernail out. The sack settles. That was the corner of it." },
    { "Squeeze it", say "It squeezes back, all down one side, and somewhere a long way off a door slams." },
  },
}

item {
  id = "is_seal_chart",
  name = "the Selkie Chart",
  icon = "≋",
  description = "A chart of the whole sea, drawn on the inside of a sealskin in brown ink that never quite dries. The coast is a bare line with nothing behind it, because nothing behind it mattered to the makers. The sea is full. {gold}Every wreck, every lost anchor, every ring that ever slipped off a cold finger is marked on it, each in its place, each with a small sign.{/} Kings have sent fleets to find this chart. It was in the one place a fleet cannot look.",
  things = {
    { name = "the signs",
      description = "Hundreds, no two alike: curls, hooks, dots in rows. It is written in seal. You do not read seal. Nobody does who was not born to it.",
      things = {
        { name = "a sign you nearly know", description = "Off Saltwick, under the Long Strand: a mark like a door standing open. You think of the {i}Unsinkable{/}, and of a cabin, and decide that seals have a sense of humour." },
        { name = "the newest sign", description = "Still glistening, a hand's width off the Afterthoughts: a small ring with a tail. It is where the ferry goes. Something of yours is on the bottom there. You count your buttons." },
      } },
    { name = "the edge of the chart",
      description = "Where a mapmaker would write that there are monsters, the seals have drawn one small thing and left the rest bare: a closed eye, with lashes. Past it the skin is blank and has been kept clean." },
    { name = "the fur side", description = "Grey, dappled, soft as breath. It is dry. It has been in a sea cave for longer than there have been kings and it is perfectly dry." },
  },
  actions = {
    { "Look for treasure", say "It is all treasure. That is the difficulty. You find a sign that might mean gold and might mean a boot, in forty fathoms, under a current. You roll the chart up with great respect for everything that is staying where it is." },
    { "Smell it", say "Salt, and cold, and something like a dog that has been swimming. You feel, for a breath, that you could hold yours for a very long time." },
  },
}

item {
  id = "is_bell_tongue",
  name = "the Tongue of the Drowned Bell",
  icon = "♪",
  description = "The clapper of the bell of Muckle Afterthought: a bar of sea-green bronze with a ball at the end, as long as your forearm and twice as heavy as it looks. The bell went down with the old chapel three hundred years ago. {gold}They say it has rung for every islander lost at sea since, once each, from the bottom, and that every one of them heard it and turned for home.{/} Not all of them arrived. They all turned.",
  things = {
    { name = "the ball", description = "Worn flat on two sides where it struck. The flats are bright. Nothing has grown on them, though everything else in that pool was furred with weed." },
    { name = "the eye", description = "The loop it hung by, with a rag of leather strap still in it, hard as horn." },
    { name = "a line of letters", description = "Cast down the shaft, the same as on the bell's lip: {i}RING SOFTLY{/}. It is an odd thing to cast into a bell. The founders must have had a reason, and did not cast that." },
  },
  actions = {
    { "Strike something with it", say "You tap it on a stone. The stone says {i}tock{/}. A tongue is no use without its bell, and its bell is under the sea, and that is the right place for both of them to be, more or less. You wrap it up again." },
    { "Hold it at arm's length", say "It hangs from your hand and, very slowly, begins to swing, though you are standing still. In time with something. You look at the sea. It is in time with that." },
  },
}

item {
  id = "is_first_drop",
  name = "the First Drop",
  icon = "δ",
  description = "A vial of thick green glass no longer than your thumb, stoppered with wax and lead, holding about a spoonful of something clear. It is the first spirit that ever came off the first still on the Afterthoughts, four hundred years ago, and it was put aside at once because of what it did to the spoon. {gold}Three kings have written to ask for it. Each was sent a polite letter and a bottle of the ordinary, and none wrote twice.{/}",
  things = {
    { name = "the wax", description = "Black, and stamped with a herring. Under the herring, in letters you need good light for: {i}NOT YET{/}." },
    { name = "the liquid", description = "Clear as nothing. When you tilt the vial it takes its time, like oil, and when you hold it up to the light the light bends a little going round." },
    { name = "a paper label", description = "Brown, in a round careful hand. {i}Do not drink. Do not spill. Do not leave near a flame, a cat, or the minister.{/}" },
  },
  actions = {
    { "Uncork it", say "You get your thumbnail to the wax. Your eyes begin to water from the idea alone. You put it away, having been drunk, briefly, on intention." },
    { "Hold it to the light", say "A small clear room, upside down, with you in it, looking wiser." },
  },
}
