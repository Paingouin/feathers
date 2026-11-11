-- Things of the Glowers. Two tickets, which are keys. Four mighty things, which are no use at all.

item {
  id = "gl_ticket",
  name = "a numbered ticket",
  icon = "▫",
  description = "A slip of grey card from the dispenser in the waiting room under Castle Regret. It says {i}7,000,412{/}, and under that, {i}Please retain. Your custom is of infernal importance to us.{/}",
  things = {
    { name = "the small print", description = "{i}The Office accepts no liability for ageing while waiting. Tickets are not transferable, except by gift, theft, inheritance or wager, which see.{/}" },
  },
  actions = {
    { "Work out the wait", say "They are serving number 211. They have been serving number 211 since before the ticket was printed. You divide one by the other and get an answer with no units a person could live through." },
  },
}

item {
  id = "gl_old_ticket",
  name = "the Count's ticket",
  icon = "▪",
  description = "A slip of card gone the brown of weak tea, soft at the corners, kept flat in a pocketbook for three hundred years. It says {i}212{/}. The Count took it in person, sat down to wait his turn, and was called up to dinner.",
  things = {
    { name = "the back of it", description = "In a very fine hand, in pencil: {i}Ask whether it may be had back. Be civil. Do not sign anything further.{/} It is a note to himself. He never went down again to read it." },
  },
  actions = {
    { "Compare it with yours", when = item "gl_ticket", say "Same card, same printer, same promise about your custom. Seven million numbers apart. You hold the one that is next." },
  },
}

item {
  id = "gl_stake_unused",
  name = "the Stake of Saint Orrin",
  icon = "↓",
  description = "A stake of white ash a cubit long, cut from the tree under which Saint Orrin stared down the Night Host, pointed by a bishop and blessed by three more. It is the surest weapon against the undead ever made. In four hundred years it has not been within a mile of one. The Vigilant Society kept it in a velvet case and brought it out on feast days to be admired.",
  things = {
    { name = "the point", description = "Sharp as the day it was cut. Somebody has put a cork on it." },
    { name = "the blessing", description = "Burned along the shaft in letters of gold: {i}Strike once, in certainty.{/} The Society discussed the word {i}certainty{/} at every meeting for three centuries and were never quite there." },
  },
  actions = {
    { "Brandish it", say "You brandish. A moth leaves the room. The stake has a balance to it, a lean towards the door, as of a thing that would still like to be taken up the hill. You consider the Count, his table, his beetroot. You put the cork back on." },
  },
}

item {
  id = "gl_cape_entrances",
  name = "the Cape of Entrances",
  icon = "▼",
  description = "A black cape lined with red, cut for the first Count of Regret by a tailor who was paid in years. Whoever wears it cannot enter a room unnoticed: doors swing wide, candles lean, conversation stops, and somewhere a chord is struck on an organ that is not there. It has no other power. It has never needed one.",
  things = {
    { name = "the lining", description = "Red silk, the red of the inside of a mouth. It never creases and it never quite hangs still." },
    { name = "the clasp", description = "Silver, a bat with its wings folded. On the back the tailor's mark, and {i}Dry clean only. Not that kind of dry.{/}" },
  },
  actions = {
    { "Put it on and make an entrance", say "There is no door to hand. You walk round a corner instead. The wind drops. A crow stops in the middle of a word. From nowhere at all comes a low chord, held. You stand there in the hush with your gate copper and your second-best boots, magnificent, and with nothing whatever to say." },
  },
}

item {
  id = "gl_patient_mirror",
  name = "the Patient Mirror",
  icon = "◊",
  description = "A hand glass in a frame of black pear wood, made by a glazier of the old country for those whom no other mirror will show. It gives a reflection to anyone who has not got one. To everyone else it shows the room, very clearly, with a gap in it the shape of the person looking.",
  things = {
    { name = "the glass", description = "You look. A hillside, a sky, and a neat absence where you ought to be, your height, your slouch. It is the first time you have seen exactly how much room you take up. It is less than you thought and you would still like it back." },
    { name = "the back", description = "Scratched in the wood with a fingernail, over and over, three hundred years of the same test: {i}Still here.{/}" },
  },
  actions = {
    { "Wave at it", say "The gap does not wave. But a moment later, far back in the glass, at a window you had not noticed, somebody thin lifts a hand." },
  },
}

item {
  id = "gl_contract_unsigned",
  name = "the Fair Contract",
  icon = "§",
  description = "One sheet of vellum, drawn up in the first week of the Lower Office by a junior devil who had not yet been told how it was done. It offers a soul's exact worth for a soul, with no small print, a cooling-off period, and the soul back on request. In all the ages since, nobody has signed it: nobody ever believed it. Below, it is kept as the most dangerous document there is. You found it in a box marked {i}Misc.{/}",
  things = {
    { name = "the terms", description = "You read them twice, then a third time with your thumb under each line. There is no catch. There is a clause saying so, and a clause saying that the clause saying so is not the catch either." },
    { name = "the space for a signature", description = "Blank. A little worn, from pens that hovered." },
  },
  actions = {
    { "Look for the catch", say "You hold it to the light, turn it over, sniff it. Honest ink on honest skin. You fold it and put it away, quickly, in an inside pocket. It is a perfectly fair bargain and you do not trust it an inch." },
  },
}
