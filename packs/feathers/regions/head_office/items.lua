-- Things of Head Office. One pass, which is a key. Four mighty things, which are no use at all.

item {
  id = "ho_visitor_pass",
  name = "a visitor's pass",
  icon = "▫",
  description = "A card on a loop of red tape, to be worn round the neck. It says {i}VISITOR{/} in letters of dull gold, and under that, smaller, {i}Unsold{/}. Every devil you meet reads the second word first and becomes, if anything, more polite.",
  things = {
    { name = "the red tape", description = "The real thing. It is cut from the same reel as all the rest of it, and the reel, you were told at the desk, has never yet run out." },
    { name = "the back of the pass", description = "{i}The bearer is a guest of the Firm. The bearer is to be offered tea. The bearer is not to be offered anything else without form 1, which see.{/}" },
  },
  actions = {
    { "Hold it up", say "You hold it up. A passing clerk stops, bows from the waist, and asks whether you are being looked after. You say yes. She makes a note of it, with the time." },
  },
}

item {
  id = "ho_full_stop",
  name = "the Last Full Stop",
  icon = "·",
  description = "A speck of black on a square of vellum, under a watch glass. It is the full stop at the end of the Standard Terms. The Small Print gets smaller the whole way down, and this is where it arrives: every clause the Firm has ever written, each a tenth the size of the one before, and the last of them all folded inside this dot. Whoever holds it holds the whole of the terms, and may read them at leisure, given a lens that has not been made.",
  things = {
    { name = "the watch glass", description = "Domed, and held down with a brass ring. Without it the Stop would be lost at the first sneeze. Nobody in Small Print has sneezed for nine hundred years, as a precaution." },
    { name = "the vellum", description = "Blank, apart from the one dot. In the corner, a clerk's pencil: {i}Proofread. No errors found. No errors findable.{/}" },
  },
  actions = {
    { "Try to read it", say "You hold it close to your eye. It is a dot. You hold it closer. It is a dot with, perhaps, an edge. Somewhere in there is the clause that would let everybody out, if there is one, and a great many clerks have gone blind on the question. You put the glass back on." },
  },
}

item {
  id = "ho_plain_no",
  name = "the Plain No",
  icon = "○",
  description = "A small box of grey horn with a lid that fits like a held breath. In it is the first refusal: the word {i}no{/}, as it was said to the Firm's first traveller, on the first day of trading, by a girl minding sheep, who was offered everything and went on minding sheep. No devil can stay in a room where the box is open. They cannot use it, cannot file it and cannot bring themselves to throw it away.",
  things = {
    { name = "the lid", description = "Worn pale at one corner, where for a very long time one thumb or another has rested on it and not quite lifted." },
    { name = "a tag on a thread", description = "{i}Refusal No. 1. Reason given: none. Follow-up visits: 4,000. Outcome: as before. Do not open on the premises.{/}" },
  },
  actions = {
    { "Open it a crack", say "You ease the lid. Nothing comes out that you can see. But the air in front of you goes clear and plain, like a morning with the washing out, and for a moment there is nothing at all that you want. You close it. The wanting comes back, one item at a time, a little sheepish." },
  },
}

item {
  id = "ho_binding_pen",
  name = "the Pen That Binds",
  icon = "/",
  description = "A black pen with a steel nib, heavy as a poker. Every great bargain in the archive was signed with it: the kings, the fiddlers, the men at crossroads. What it writes cannot be unwritten, argued with or lost. It has no ink of its own. It writes in whatever the signatory happens to have about them, and you have looked into that, and you are keeping yours.",
  things = {
    { name = "the nib", description = "Split, and stained a brown that is very nearly black. It is perfectly dry. It has been dry since the last signature, and it has the patience of a thing that knows what people are like." },
    { name = "the barrel", description = "Turned from something black, cold and very slightly too heavy, which is not wood, horn or stone. Nobody at Head Office knows where the pen came from. It was on the desk when the desk was delivered." },
    { name = "a tooth mark", description = "Near the top. Somebody chewed it while they thought. They thought, by the depth of the mark, for a long time, and then they signed." },
  },
  actions = {
    { "Write your name with it", say "You try it on the back of your hand. Nothing. You try it on your sleeve. Nothing. It will not write a name for practice. It leans a little in your fingers, towards a line that is not there, like a dog that has heard the gate." },
  },
}

item {
  id = "ho_first_fork",
  name = "the Original Pitchfork",
  icon = "Ψ",
  description = "Three tines of black iron on an ash shaft, taller than you are. This is the one in all the pictures: the fork that was carried at the head of the Host, that was shaken at saints, that the bad end of every sermon is drawn with. It is a hay fork. It was always a hay fork. The stokers have had it for six hundred years and say that nothing turns a compost heap like it.",
  things = {
    { name = "the tines", description = "Worn bright at the tips, and one of them slightly bent, from a stone in the tomato bed." },
    { name = "the shaft", description = "Replaced twice. The head has been replaced once. It is still, everybody agrees, the Original Pitchfork, and you are in no position to raise the point." },
    { name = "a twist of twine", description = "Tied round the neck of it, with a seed label: {i}Return to the Garden. Not to be used for brandishing.{/}" },
  },
  actions = {
    { "Brandish it", say "You brandish it. It is very good to brandish: the weight comes forward, the tines sing a little. A clod of earth falls off the middle one. You feel, for a moment, like the last page of a tract, and then like a person who is holding a garden tool indoors." },
  },
}
