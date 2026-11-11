-- The Quiet Pint: the only chimney in Erstwhile with smoke coming out of it.

space {
  id = "er_inn",
  region = "erstwhile",
  name = "The Quiet Pint",
  description = "An inn on the Processional Way with a mended roof, glass in the windows and a fire. After the city it is like coming indoors out of a painting. The room is full: grey men on every bench, grey elbows on the bar, a grey game of dominoes in the corner. Behind the bar a living man in an apron is drying a real mug with a real cloth. He looks up, sees your colour, and stops.",
  palette = { bg = "#14100c", text = "#dcd0bc", dim = "#7c6c58", accent = "#e8b060", border = "#4e3c28" },
  ambience = {
    flicker { color = "#ffb060", strength = 0.2 },
    embers { glyphs = "·˙", color = "#c08030", rate = 0.1 },
  },

  things = {
    { name = "the landlord",
      icon = "☺",
      description = "Mr Ambrose Lull: fifty, bald, soft-spoken, with the hands of a cook. He was potman at the loudest house on the Aldmoor market for twenty years. Then one night he walked out during a chorus, kept walking, and found a city where six hundred regulars had never once raised their voices. He has been here eleven years. He says that he has not had to say \"gentlemen, please\" in all that time and does not miss it.",
      things = {
        { name = "his apron", description = "Blue stripe, clean on. He changes it daily for customers who would not know the difference. He would know." },
        { name = "his ledger", description = "Under the bar. Every pint he has poured in eleven years, with the name, and against every one: {i}on the slate{/}. The slate is the back wall of the cellar. It is full, and he has started on the ceiling." },
        { name = "a letter from his sister", description = "Propped by the till. {i}Tolly says the Regulations has not been the same and will you come back. I told her he is in a town full of dead people and she said so are we, of a Monday.{/}" },
      },
      actions = {
        { "Order a drink", say "He looks at you as a man looks at a letter from home. \"A drinker,\" he says. \"One that it goes down.\" He draws a pint of something brown and slow, sets it on the bar, and then stands and watches you drink the whole of it. \"Eleven years,\" he says, when you have finished. \"I pour two hundred a night. I had forgotten what the glass looks like after.\" He takes it from you, empty, and holds it up to the fire." },
        { "Ask why he stays", say "\"Listen,\" he says. You listen. Dominoes. The fire. A hundred conversations going on at the level of a hand passed over cloth. \"They say please. They go at closing. Nobody has ever been sick in the fireplace.\" He wipes the bar. \"And they need somewhere. It was shut when I came. They were all standing in the street outside it, at six, in the rain, being patient.\"" },
        { "Ask about the Thursday", say "He stops wiping. \"I only know what I hear across the bar, and they talk about it as a thing that is coming. Himself is to hear petitions Thursday. Himself is in a rare mood.\" He lowers his voice, from habit, though nothing in the room could be quieter. \"Up at the palace there is a set of doors with a seal on. I do not go up. But I will tell you this. On a still evening I have stood in my yard and heard cheering.\"" },
      } },
    { name = "the bar",
      description = "Elm, with a brass rail. Two hundred pints stand along it and on every table, full, untouched, each with a grey hand round it. He pours them at six. At midnight he carries them back, one tray at a time, and tips them into the cask they came from. It is the same beer. It has been drawn, on a rough count, eight hundred thousand times.",
      things = {
        { name = "the row of mugs",
          description = "Pewter and horn, on hooks, each with a name scratched under. He found them hanging here when he took the place, and found that each of them was reached for at the same hour every night by a hand that could not lift it. So he takes them down himself.",
          things = {
            { name = "a mug marked Garrick", description = "Polished. It has not been filled in eleven years. \"Sentry at the gate,\" says the landlord. \"Never off duty. I keep it shined against the day.\"" },
            { name = "a mug marked Mumm", description = "The prompter's, with a nick in the rim. It is filled every night and nobody comes for it. He is, they tell the landlord, held up at the theatre.",
              variants = {
                { when = flag "er_line_given", description = "The prompter's, with a nick in the rim. Tonight, the landlord tells you, a small grey man came in at ten past six, looking like a person let out of prison, sat down in front of it, and wept. \"I topped it up,\" he says. \"It seemed the thing.\"" },
              } },
            { name = "a horn cup with a lion", description = "On the top hook, by itself. No name. The regulars tell him it was kept for a gentleman who used to come in by the back door in a plain coat, and stand his round, and listen. He has never taken it down. It is the only one that nobody reaches for." },
            { name = "a new mug", description = "Earthenware, glazed brown, with a real chip. {i}A. LULL{/}. His own. And beside it another, the same, with nothing scratched on it yet. He bought two. A man lives in hope." },
          } },
        { name = "the pumps", description = "Two. {i}Ordinary{/}, and {i}The Other{/}. He brews both himself, in the back, from barley that the shepherd's cousin brings to the fifth milestone and leaves there." },
        { name = "the till", description = "A wooden drawer with a bell. It is full of grey coins that are there until you look straight at them. And one compartment of real ones, a handful, hawthorn-polished: every living soul who has drunk here in eleven years. He could tell you their names." },
        { name = "a jar of pickled walnuts", description = "Real, black, and his own. Nobody eats them. He puts a saucer of them on the bar every evening and takes it away again every night, for the look of the thing." },
      } },
    { name = "the regulars",
      description = "The Quiet Pint holds a hundred seated and they are all in. A room full of men that you can see the far wall through, drinking nothing, slowly, with every sign of enjoyment.",
      things = {
        { name = "the domino school",
          description = "Four old grey men at the corner table, and a set of real bone dominoes, laid out in a line that turns two corners. They cannot move the tiles. So they call their moves, and the landlord comes over between pints and lays them. It is the slowest game in the kingdom and he has not once been allowed an opinion.",
          actions = {
            { "Lay a tile for them", say "\"Double four, to the left,\" says a voice like a drawer closing. You find the double four and set it down. Four grey faces study it. \"Other left,\" says the voice. You move it. There is a long, contented silence. You have been of use, and nobody says so, and it is the nicest thing that has happened all day." },
          } },
        { name = "a man telling a story", description = "By the fire, to five others. It is about a pike. His hands are a yard apart. From their faces it has been a yard for ninety years, and each night they give him the benefit of the doubt once more." },
        { name = "a clerk in the settle corner", description = "Thin, inky, grey, sitting very upright by himself with a pint he looks at as a man looks at a holiday. He has the stoop of forty years at a desk. He has come home.",
          things = {
            { name = "his ink-stained fingers", description = "The right hand. The first two fingers and the thumb are black to the knuckle, and the hand is cramped half shut, as if round a pen it wrote four thousand lines with in one afternoon." },
          },
          actions = {
            { "Ask what he does", say "\"I was Clerk of Petitions,\" he says. He has a small, exact voice. \"I entered them. One a week, in a good year. And then on my last day I entered four thousand and nine.\" He looks at his pint. \"The last was my own. I asked to go home. He wrote it in himself.\" He looks up at you, and his whole thin face is lit. \"I had never asked for anything. I did not know one could.\"" },
          } },
        { name = "a carter named Dobbs", description = "Big, grey, pleased with himself. He tells anybody who will listen that the mile between the Bell and the bridge is to be mended at last, that he has it in writing, and that he was first in the line.",
          actions = {
            { "Ask if it was mended", say "\"Will be,\" he says comfortably. \"These things take time. It is in writing.\" He pats his coat. You walked that mile this morning, round the back of the castle hill. There is a bridge, and a hollow where an inn stood, and between them the smoothest stretch of the whole old road, under the turf. Somebody mended it. You tell him so. \"Ah,\" he says. \"Told you.\"" },
          } },
      } },
    { name = "the fire",
      description = "A basket of logs, burning. It is the only fire in the city and the dead sit as near to it as they can get, with their hands out. It does not warm them. They say that it is the sound.",
      things = {
        { name = "the mantel", description = "A clock, going. He winds it. It is the only clock in Erstwhile that agrees with the sun, and nobody in the room has ever looked at it." },
        { name = "the settle", description = "High-backed, black oak. A real ginger cat is asleep on it, in a space left by five ghosts who are sitting closer together than they would like so as not to disturb her." },
        { name = "the fire irons", description = "Tongs, a shovel and a poker with a lion's head. The poker is bent. \"Was like that,\" says the landlord. \"They tell me the Chancellor did it. Thursday night, here, in this room, by himself, on the hearthstone. Then he ordered a brandy and said that it had never happened.\"" },
      },
      actions = {
        { "Warm your hands", say "You hold them out between two pairs of grey ones. Yours go pink. Theirs do not. An old man next to you watches your hands for a while, and then, very politely, moves a little to give you more of it." },
      } },
    { name = "the kitchen",
      description = "Through a door behind the bar: a range, a scrubbed table and a row of copper pans. He cooks for himself, and for the cat, and on Wednesdays he bakes.",
      things = {
        { name = "the range", description = "Black-leaded, hot, with a kettle singing on it. After the baths it is the warmest thing in Erstwhile." },
        { name = "a pie cooling", description = "Pork, raised crust, on a wire tray by the window. One. He makes one every Wednesday and takes it over to the market, to a tin tray that goes about on a ghost's head. \"The man cries pies all day and has not had a pie on him since before I was born,\" he says. \"It was getting on my nerves.\"" },
        { name = "the towels", description = "A stack of them, folded, with name tapes. For the baths. The keeper there hands them out. He collects them of a Sunday, wringing wet, from customers who have not been wet for ninety years, and has decided not to think about it." },
        { name = "the larder", description = "A ham, a sack of flour, a crock of dripping, onions on a string.",
          things = {
            { name = "the onions", description = "From Greenhollow. You would know that disapproving look anywhere. They come up the old road with the barley." },
            { name = "a shelf of jars", description = "Pickled walnuts, forty jars, dated by year. He makes them every autumn from the tree in the palace garden and there is nobody to eat them. It has become a sort of calendar." },
          } },
        { name = "a second place at the table", description = "Knife, fork, plate, and a chair pulled out. He lays two. On a good night, he says, one of the regulars comes through and sits with him while he eats, and tells him what the food used to be like." },
      } },
    { name = "the cellar door",
      description = "A flap behind the bar, with a rope handle worn black.",
      things = {
        { name = "the cellar", description = "Brick vaults, older than the inn. One cask in use, and forty that came with the house.",
          things = {
            barrel { name = "the cask in use", description = "The Ordinary. Drawn at six, returned at midnight. The landlord says it has not improved with travel but that it has acquired a certain patience." },
            barrel { name = "a cask chalked with a lion", description = "At the back, bunged and sealed, with ninety years of web over it. {i}H.M., for Thursday night. ON NO ACCOUNT.{/} It was laid down for a royal visit. He has not broached it. \"It is not mine,\" he says, \"and the gentleman may still want it.\"" },
            { name = "the slate", description = "The back wall, whitewashed, and covered from floor to vault in chalked tallies under two hundred names. What Erstwhile owes the Quiet Pint. At the foot he has done a sum, once, and rubbed it out, and written: {i}never mind.{/}" },
            rat { description = "Real, brown, fat on barley. It is the only customer in the house that pays nothing and takes something, and he respects it for that." },
          } },
      } },
    { name = "the stairs",
      description = "Up to a gallery and four rooms. He sleeps in one. The others are let.",
      things = {
        { name = "the front room", description = "A bed, a chair and a window on the Processional Way. Let, permanently, to a grey commercial gentleman in lace who came for the Thursday audience and is waiting it out. He leaves his shoes outside the door every night. They are not there. The landlord cleans them.",
          actions = {
            { "Knock", say "\"Is it Thursday?\" says a voice from inside, eager. You say that you believe it is Wednesday. \"Ah,\" says the voice. \"Then I shall have a lie down.\"" },
          } },
        { name = "the back room", description = "Yours, if you want it: a real bed with real sheets and a jug of water. On the pillow there is a sprig of rosemary. He has been making this bed up every week for eleven years, for the next living person through the door.",
          actions = {
            { "Lie down", say "The sheets are cold and smell of the line. Below you the inn goes on, a hundred voices at the pitch of rain on thatch. You have slept in barns, in a ditch, and once in a boat. You have never had a lullaby from two hundred people at once. You are asleep before you have your boots off." },
          } },
        { name = "the landlord's room", description = "The door is ajar. A bed, a trunk from Aldmoor with the label still on, and on the wall a framed licence for {i}Music, Singing and Dancing{/}, with a neat black line ruled through each word." },
        { name = "the gallery rail", description = "You can look down from it on the whole room: the fire, the grey heads, the two hundred full glasses catching the light. From up here it is any inn anywhere at about nine on a good night, with the sound turned down." },
      } },
    { name = "the yard",
      description = "Behind: a pump, a brewhouse, a stable with no horses and a mounting block.",
      things = {
        { name = "the brewhouse", description = "A copper, a mash tun and a smell of malt. He brews on Mondays. The dead come and stand in the doorway to breathe it." },
        { name = "the stable", description = "Six stalls. In the end one stands a grey horse, saddled, patient, tied to a ring. Some gentleman rode in on a Wednesday night and meant to ride out in the morning. The landlord forks real hay into the rack. It goes down, a little. He cannot explain that either." },
        { name = "the back door", description = "Low, with a latch worn bright on the outside only. It gives on a lane that runs up behind the houses to the palace kitchens. It was, for some years, the most important door in the kingdom, and it is a size six and a half." },
      },
      actions = {
        { "Stand in the yard and listen", say "Wind in the palace oaks. A rook. The pump dripping. And then, when you have stopped expecting anything, from up the hill, very faint and shut in, like a fair heard from inside a house: a lot of people shouting for joy." },
      } },
    { name = "the sign",
      description = "A tankard, on a board, and under it a finger laid across a pair of lips. It was The King's Head for four hundred years. The head was painted out on a Friday, by order, and the landlord of the day had to put up something by Saturday." },
    { name = "the window",
      description = "Small panes, real glass, the only whole window on the street. From outside, after dark, it is a square of yellow in a grey city, and the dead come down the Processional Way towards it from every side as moths would." },
    { name = "the closing bell",
      description = "Brass, over the bar. He has never rung it. At midnight he puts down his cloth and says, in an ordinary voice, \"Time, gentlemen, if you would be so good.\" And two hundred men get up and thank him and go out through the wall." },
  },

  exits = {
    { to = "er_high_street", description = "Out into the grey of the street." },
  },
}
