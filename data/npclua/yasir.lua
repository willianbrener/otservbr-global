local internalNpcName = "Yasir"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = internalNpcName
npcConfig.description = internalNpcName

npcConfig.health = 150
npcConfig.maxHealth = npcConfig.health
npcConfig.walkInterval = 2000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 146,
	lookHead = 85,
	lookBody = 7,
	lookLegs = 12,
	lookFeet = 19,
	lookAddons = 2
}

npcConfig.flags = {
	floorchange = false
}

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)

npcType.onThink = function(npc, interval)
	npcHandler:onThink(npc, interval)
end

npcType.onAppear = function(npc, creature)
	npcHandler:onAppear(npc, creature)
end

npcType.onDisappear = function(npc, creature)
	npcHandler:onDisappear(npc, creature)
end

npcType.onMove = function(npc, creature, fromPosition, toPosition)
	npcHandler:onMove(npc, creature, fromPosition, toPosition)
end

npcType.onSay = function(npc, creature, type, message)
	npcHandler:onSay(npc, creature, type, message)
end

npcType.onCloseChannel = function(npc, creature)
	npcHandler:onCloseChannel(npc, creature)
end

npcConfig.shop = {
	-- Sellable items
	{ itemName = "acorn", clientId = 10296, sell = 10 },
	{ itemName = "alptramun's toothbrush", clientId = 29943, sell = 270000 },
	{ itemName = "ancient belt buckle", clientId = 24384, sell = 260 },
	{ itemName = "ancient liche bone", clientId = 31588, sell = 28000 },
	{ itemName = "angel figurine", clientId = 32589, sell = 36000 },
	{ itemName = "antlers", clientId = 10297, sell = 50 },
	{ itemName = "ape fur", clientId = 5883, sell = 120 },
	{ itemName = "apron", clientId = 33933, sell = 1300 },
	{ itemName = "badger fur", clientId = 903, sell = 15 },
	{ itemName = "bamboo stick", clientId = 11445, sell = 30 },
	{ itemName = "banana sash", clientId = 11511, sell = 55 },
	{ itemName = "basalt fetish", clientId = 17856, sell = 210 },
	{ itemName = "basalt figurine", clientId = 17857, sell = 160 },
	{ itemName = "bat decoration", clientId = 6491, sell = 2000 },
	{ itemName = "bat wing", clientId = 5894, sell = 50 },
	{ itemName = "bear paw", clientId = 5896, sell = 100 },
	{ itemName = "beast's nightmare-cushion", clientId = 29946, sell = 630000 },
	{ itemName = "bed of nails", clientId = 25743, sell = 500 },
	{ itemName = "beer tap", clientId = 32114, sell = 50 },
	{ itemName = "beetle carapace", clientId = 24381, sell = 200 },
	{ itemName = "behemoth claw", clientId = 5930, sell = 2000 },
	{ itemName = "black hood", clientId = 9645, sell = 190 },
	{ itemName = "black wool", clientId = 11448, sell = 300 },
	{ itemName = "blazing bone", clientId = 16131, sell = 610 },
	{ itemName = "blood preservation", clientId = 11449, sell = 320 },
	{ itemName = "blood tincture in a vial", clientId = 18928, sell = 360 },
	{ itemName = "bloody dwarven beard", clientId = 17827, sell = 110 },
	{ itemName = "bloody pincers", clientId = 9633, sell = 100 },
	{ itemName = "bloody tears", clientId = 32594, sell = 70000 },
	{ itemName = "blue glass plate", clientId = 29345, sell = 60 },
	{ itemName = "blue goanna scale", clientId = 31559, sell = 230 },
	{ itemName = "blue piece of cloth", clientId = 5912, sell = 200 },
	{ itemName = "boggy dreads", clientId = 9667, sell = 200 },
	{ itemName = "bola", clientId = 17809, sell = 35 },
	{ itemName = "bone fetish", clientId = 17831, sell = 150 },
	{ itemName = "bone shoulderplate", clientId = 10404, sell = 150 },
	{ itemName = "bone toothpick", clientId = 24380, sell = 150 },
	{ itemName = "bonecarving knife", clientId = 17830, sell = 190 },
	{ itemName = "bonelord eye", clientId = 5898, sell = 80 },
	{ itemName = "bones of zorvorax", clientId = 24942, sell = 10000 },
	{ itemName = "bony tail", clientId = 10277, sell = 210 },
	{ itemName = "book of necromantic rituals", clientId = 10320, sell = 180 },
	{ itemName = "book of prayers", clientId = 9646, sell = 120 },
	{ itemName = "book page", clientId = 28569, sell = 640 },
	{ itemName = "bowl of terror sweat", clientId = 20204, sell = 500 },
	{ itemName = "brain head's giant neuron", clientId = 32578, sell = 100000 },
	{ itemName = "brain head's left hemisphere", clientId = 32579, sell = 90000 },
	{ itemName = "brain head's right hemisphere", clientId = 32580, sell = 50000 },
	{ itemName = "bright bell", clientId = 30324, sell = 220 },
	{ itemName = "brimstone fangs", clientId = 11702, sell = 380 },
	{ itemName = "brimstone shell", clientId = 11703, sell = 210 },
	{ itemName = "broken bell", clientId = 30185, sell = 150 },
	{ itemName = "broken crossbow", clientId = 11451, sell = 30 },
	{ itemName = "broken draken mail", clientId = 11660, sell = 340 },
	{ itemName = "broken halberd", clientId = 10418, sell = 100 },
	{ itemName = "broken helmet", clientId = 11453, sell = 20 },
	{ itemName = "broken key ring", clientId = 11652, sell = 8000 },
	{ itemName = "broken longbow", clientId = 34161, sell = 130 },
	{ itemName = "broken ring of ending", clientId = 12737, sell = 4000 },
	{ itemName = "broken shamanic staff", clientId = 11452, sell = 35 },
	{ itemName = "broken slicer", clientId = 11661, sell = 120 },
	{ itemName = "broken throwing axe", clientId = 17851, sell = 230 },
	{ itemName = "broken visor", clientId = 20184, sell = 1900 },
	{ itemName = "brooch of embracement", clientId = 34023, sell = 14000 },
	{ itemName = "brown piece of cloth", clientId = 5913, sell = 100 },
	{ itemName = "bunch of troll hair", clientId = 9689, sell = 30 },
	{ itemName = "bundle of cursed straw", clientId = 9688, sell = 800 },
	{ itemName = "capricious heart", clientId = 34138, sell = 2100 },
	{ itemName = "capricious robe", clientId = 34145, sell = 1200 },
	{ itemName = "carniphila seeds", clientId = 10300, sell = 50 },
	{ itemName = "carrion worm fang", clientId = 10275, sell = 35 },
	{ itemName = "cat's paw", clientId = 5479, sell = 2000 },
	{ itemName = "cave devourer eyes", clientId = 27599, sell = 550 },
	{ itemName = "cave devourer legs", clientId = 27601, sell = 350 },
	{ itemName = "cave devourer maw", clientId = 27600, sell = 600 },
	{ itemName = "centipede leg", clientId = 10301, sell = 28 },
	{ itemName = "chasm spawn abdomen", clientId = 27603, sell = 240 },
	{ itemName = "chasm spawn head", clientId = 27602, sell = 850 },
	{ itemName = "chasm spawn tail", clientId = 27604, sell = 120 },
	{ itemName = "cheese cutter", clientId = 17817, sell = 50 },
	{ itemName = "cheesy figurine", clientId = 17818, sell = 150 },
	{ itemName = "cheesy membership card", clientId = 35614, sell = 120000 },
	{ itemName = "chicken feather", clientId = 5890, sell = 30 },
	{ itemName = "chitinous mouth", clientId = 27622, sell = 10000 },
	{ itemName = "chitinous mouth", clientId = 27626, sell = 10000 },
	{ itemName = "cliff strider claw", clientId = 16134, sell = 800 },
	{ itemName = "cobra crest", clientId = 31678, sell = 650 },
	{ itemName = "cobra tongue", clientId = 9634, sell = 15 },
	{ itemName = "colourful feather", clientId = 11514, sell = 110 },
	{ itemName = "colourful feathers", clientId = 25089, sell = 400 },
	{ itemName = "colourful snail shell", clientId = 25696, sell = 250 },
	{ itemName = "compass", clientId = 10302, sell = 45 },
	{ itemName = "compound eye", clientId = 14083, sell = 150 },
	{ itemName = "condensed energy", clientId = 23501, sell = 260 },
	{ itemName = "corrupted flag", clientId = 10409, sell = 700 },
	{ itemName = "countess sorrow's frozen tear", clientId = 6536, sell = 50000 },
	{ itemName = "cow bell", clientId = 32012, sell = 120 },
	{ itemName = "crab pincers", clientId = 10272, sell = 35 },
	{ itemName = "cracked alabaster vase", clientId = 24385, sell = 180 },
	{ itemName = "crawler head plating", clientId = 14079, sell = 210 },
	{ itemName = "crawler's essence", clientId = 33982, sell = 3700 },
	{ itemName = "crown", clientId = 33935, sell = 2700 },
	{ itemName = "cruelty's chest", clientId = 33923, sell = 720000 },
	{ itemName = "cruelty's claw", clientId = 33922, sell = 640000 },
	{ itemName = "crystal bone", clientId = 23521, sell = 250 },
	{ itemName = "crystallized anger", clientId = 23507, sell = 400 },
	{ itemName = "cultish mask", clientId = 9638, sell = 280 },
	{ itemName = "cultish robe", clientId = 9639, sell = 150 },
	{ itemName = "cultish symbol", clientId = 11455, sell = 500 },
	{ itemName = "curious matter", clientId = 23511, sell = 430 },
	{ itemName = "cursed bone", clientId = 32774, sell = 6000 },
	{ itemName = "cursed shoulder spikes", clientId = 10410, sell = 320 },
	{ itemName = "cyclops toe", clientId = 9657, sell = 55 },
	{ itemName = "damaged armor plates", clientId = 28822, sell = 280 },
	{ itemName = "damaged worm head", clientId = 27620, sell = 8000 },
	{ itemName = "damselfly eye", clientId = 17463, sell = 25 },
	{ itemName = "damselfly wing", clientId = 17458, sell = 20 },
	{ itemName = "dandelion seeds", clientId = 25695, sell = 200 },
	{ itemName = "dangerous proto matter", clientId = 23515, sell = 300 },
	{ itemName = "dark bell", clientId = 30325, sell = 250 },
	{ itemName = "dark bell", clientId = 32596, sell = 310000 },
	{ itemName = "dark rosary", clientId = 10303, sell = 48 },
	{ itemName = "dead weight", clientId = 20202, sell = 450 },
	{ itemName = "deepling breaktime snack", clientId = 14011, sell = 90 },
	{ itemName = "deepling claw", clientId = 14044, sell = 430 },
	{ itemName = "deepling guard belt buckle", clientId = 14010, sell = 230 },
	{ itemName = "deepling ridge", clientId = 14041, sell = 360 },
	{ itemName = "deepling scales", clientId = 14017, sell = 80 },
	{ itemName = "deepling warts", clientId = 14012, sell = 180 },
	{ itemName = "deeptags", clientId = 14013, sell = 290 },
	{ itemName = "deepworm jaws", clientId = 27594, sell = 500 },
	{ itemName = "deepworm spike roots", clientId = 27593, sell = 650 },
	{ itemName = "deepworm spikes", clientId = 27592, sell = 800 },
	{ itemName = "demon dust", clientId = 5526, sell = 300 },
	{ itemName = "demon horn", clientId = 5954, sell = 1000 },
	{ itemName = "demonic finger", clientId = 12541, sell = 1000 },
	{ itemName = "demonic skeletal hand", clientId = 9647, sell = 80 },
	{ itemName = "diabolic skull", clientId = 34025, sell = 19000 },
	{ itemName = "diremaw brainpan", clientId = 27597, sell = 350 },
	{ itemName = "diremaw legs", clientId = 27598, sell = 270 },
	{ itemName = "dirty turban", clientId = 11456, sell = 120 },
	{ itemName = "distorted heart", clientId = 34142, sell = 2100 },
	{ itemName = "distorted robe", clientId = 34149, sell = 1200 },
	{ itemName = "downy feather", clientId = 11684, sell = 20 },
	{ itemName = "dowser", clientId = 19110, sell = 35 },
	{ itemName = "dracola's eye", clientId = 6546, sell = 50000 },
	{ itemName = "dracoyle statue", clientId = 9034, sell = 5000 },
	{ itemName = "dragon blood", clientId = 24937, sell = 700 },
	{ itemName = "dragon claw", clientId = 5919, sell = 8000 },
	{ itemName = "dragon priest's wandtip", clientId = 10444, sell = 175 },
	{ itemName = "dragon tongue", clientId = 24938, sell = 550 },
	{ itemName = "dragon's tail", clientId = 11457, sell = 100 },
	{ itemName = "draken sulphur", clientId = 11658, sell = 550 },
	{ itemName = "draken wristbands", clientId = 11659, sell = 430 },
	{ itemName = "dream essence egg", clientId = 30005, sell = 205 },
	{ itemName = "dung ball", clientId = 14225, sell = 130 },
	{ itemName = "earflap", clientId = 17819, sell = 40 },
	{ itemName = "elder bonelord tentacle", clientId = 10276, sell = 150 },
	{ itemName = "elven astral observer", clientId = 11465, sell = 90 },
	{ itemName = "elven hoof", clientId = 18994, sell = 115 },
	{ itemName = "elven scouting glass", clientId = 11464, sell = 50 },
	{ itemName = "elvish talisman", clientId = 9635, sell = 45 },
	{ itemName = "empty honey glass", clientId = 31331, sell = 270 },
	{ itemName = "enchanted chicken wing", clientId = 5891, sell = 20000 },
	{ itemName = "energy ball", clientId = 23523, sell = 300 },
	{ itemName = "energy vein", clientId = 23508, sell = 270 },
	{ itemName = "ensouled essence", clientId = 32698, sell = 820 },
	{ itemName = "essence of a bad dream", clientId = 10306, sell = 360 },
	{ itemName = "eye of a deepling", clientId = 12730, sell = 150 },
	{ itemName = "eye of a weeper", clientId = 16132, sell = 650 },
	{ itemName = "eye of corruption", clientId = 11671, sell = 390 },
	{ itemName = "fafnar symbol", clientId = 31443, sell = 950 },
	{ itemName = "fairy wings", clientId = 25694, sell = 200 },
	{ itemName = "falcon crest", clientId = 28823, sell = 650 },
	{ itemName = "fern", clientId = 3737, sell = 20 },
	{ itemName = "fiery heart", clientId = 9636, sell = 375 },
	{ itemName = "fig leaf", clientId = 25742, sell = 200 },
	{ itemName = "figurine of cruelty", clientId = 34019, sell = 3100000 },
	{ itemName = "figurine of greed", clientId = 34021, sell = 2900000 },
	{ itemName = "figurine of hatred", clientId = 34020, sell = 2700000 },
	{ itemName = "figurine of malice", clientId = 34018, sell = 2800000 },
	{ itemName = "figurine of megalomania", clientId = 33953, sell = 5000000 },
	{ itemName = "figurine of spite", clientId = 33952, sell = 3000000 },
	{ itemName = "fir cone", clientId = 19111, sell = 25 },
	{ itemName = "fish fin", clientId = 5895, sell = 150 },
	{ itemName = "flask of embalming fluid", clientId = 11466, sell = 30 },
	{ itemName = "flask of warrior's sweat", clientId = 5885, sell = 10000 },
	{ itemName = "fox paw", clientId = 27462, sell = 100 },
	{ itemName = "frazzle skin", clientId = 20199, sell = 400 },
	{ itemName = "frazzle tongue", clientId = 20198, sell = 700 },
	{ itemName = "frost giant pelt", clientId = 9658, sell = 160 },
	{ itemName = "frosty ear of a troll", clientId = 9648, sell = 30 },
	{ itemName = "frosty heart", clientId = 9661, sell = 280 },
	{ itemName = "frozen lightning", clientId = 23519, sell = 270 },
	{ itemName = "fur shred", clientId = 34164, sell = 200 },
	{ itemName = "gauze bandage", clientId = 9649, sell = 90 },
	{ itemName = "geomancer's robe", clientId = 11458, sell = 80 },
	{ itemName = "geomancer's staff", clientId = 11463, sell = 120 },
	{ itemName = "ghastly dragon head", clientId = 10449, sell = 700 },
	{ itemName = "ghostly tissue", clientId = 9690, sell = 90 },
	{ itemName = "ghoul snack", clientId = 11467, sell = 60 },
	{ itemName = "giant eye", clientId = 10280, sell = 380 },
	{ itemName = "giant tentacle", clientId = 27619, sell = 10000 },
	{ itemName = "girlish hair decoration", clientId = 11443, sell = 30 },
	{ itemName = "gland", clientId = 8143, sell = 500 },
	{ itemName = "glistening bone", clientId = 23522, sell = 250 },
	{ itemName = "glob of acid slime", clientId = 9054, sell = 25 },
	{ itemName = "glob of mercury", clientId = 9053, sell = 20 },
	{ itemName = "glob of tar", clientId = 9055, sell = 30 },
	{ itemName = "gloom wolf fur", clientId = 22007, sell = 70 },
	{ itemName = "glowing rune", clientId = 28570, sell = 350 },
	{ itemName = "goanna claw", clientId = 31561, sell = 260 },
	{ itemName = "goanna meat", clientId = 31560, sell = 190 },
	{ itemName = "goblet of gloom", clientId = 34022, sell = 12000 },
	{ itemName = "goblin ear", clientId = 11539, sell = 20 },
	{ itemName = "golden brush", clientId = 25689, sell = 250 },
	{ itemName = "golden cheese wedge", clientId = 35581, sell = 6000 },
	{ itemName = "golden dustbin", clientId = 35579, sell = 7000 },
	{ itemName = "golden lotus brooch", clientId = 21974, sell = 270 },
	{ itemName = "golden mask", clientId = 31324, sell = 38000 },
	{ itemName = "golden skull", clientId = 35580, sell = 9000 },
	{ itemName = "goosebump leather", clientId = 20205, sell = 650 },
	{ itemName = "grant of arms", clientId = 28824, sell = 950 },
	{ itemName = "grappling hook", clientId = 35588, sell = 150 },
	{ itemName = "greed's arm", clientId = 33924, sell = 950000 },
	{ itemName = "green bandage", clientId = 25697, sell = 180 },
	{ itemName = "green dragon leather", clientId = 5877, sell = 100 },
	{ itemName = "green dragon scale", clientId = 5920, sell = 100 },
	{ itemName = "green glass plate", clientId = 29346, sell = 180 },
	{ itemName = "green piece of cloth", clientId = 5910, sell = 200 },
	{ itemName = "grimace", clientId = 32593, sell = 120000 },
	{ itemName = "gruesome fan", clientId = 34024, sell = 15000 },
	{ itemName = "guidebook", clientId = 25745, sell = 200 },
	{ itemName = "hair of a banshee", clientId = 11446, sell = 350 },
	{ itemName = "half-digested piece of meat", clientId = 10283, sell = 55 },
	{ itemName = "half-digested stones", clientId = 27369, sell = 40 },
	{ itemName = "half-eaten brain", clientId = 9659, sell = 85 },
	{ itemName = "hand", clientId = 33936, sell = 1450 },
	{ itemName = "hardened bone", clientId = 5925, sell = 70 },
	{ itemName = "harpoon of a giant snail", clientId = 27625, sell = 15000 },
	{ itemName = "hatched rorc egg", clientId = 18997, sell = 30 },
	{ itemName = "haunted piece of wood", clientId = 9683, sell = 115 },
	{ itemName = "hazardous heart", clientId = 34140, sell = 5000 },
	{ itemName = "hazardous robe", clientId = 34147, sell = 3000 },
	{ itemName = "head", clientId = 33932, sell = 3200 },
	{ itemName = "head", clientId = 33937, sell = 3500 },
	{ itemName = "heaven blossom", clientId = 3657, sell = 50 },
	{ itemName = "hellhound slobber", clientId = 9637, sell = 500 },
	{ itemName = "hellspawn tail", clientId = 10304, sell = 475 },
	{ itemName = "hemp rope", clientId = 20206, sell = 350 },
	{ itemName = "hideous chunk", clientId = 16140, sell = 510 },
	{ itemName = "high guard flag", clientId = 10415, sell = 550 },
	{ itemName = "high guard shoulderplates", clientId = 10416, sell = 130 },
	{ itemName = "holy ash", clientId = 17850, sell = 160 },
	{ itemName = "holy orchid", clientId = 5922, sell = 90 },
	{ itemName = "honeycomb", clientId = 5902, sell = 40 },
	{ itemName = "horn of kalyassa", clientId = 24941, sell = 10000 },
	{ itemName = "horoscope", clientId = 18926, sell = 40 },
	{ itemName = "huge shell", clientId = 27621, sell = 15000 },
	{ itemName = "huge spiky snail shell", clientId = 27627, sell = 8000 },
	{ itemName = "humongous chunk", clientId = 16139, sell = 540 },
	{ itemName = "hunter's quiver", clientId = 11469, sell = 80 },
	{ itemName = "hydra head", clientId = 10282, sell = 600 },
	{ itemName = "ice flower", clientId = 30058, sell = 370 },
	{ itemName = "incantation notes", clientId = 18929, sell = 90 },
	{ itemName = "infernal heart", clientId = 34139, sell = 2100 },
	{ itemName = "infernal robe", clientId = 34146, sell = 1200 },
	{ itemName = "inkwell", clientId = 28568, sell = 720 },
	{ itemName = "instable proto matter", clientId = 23516, sell = 300 },
	{ itemName = "iron ore", clientId = 5880, sell = 500 },
	{ itemName = "ivory carving", clientId = 33945, sell = 300 },
	{ itemName = "ivory comb", clientId = 32773, sell = 8000 },
	{ itemName = "izcandar's snow globe", clientId = 29944, sell = 180000 },
	{ itemName = "izcandar's sundial", clientId = 29945, sell = 225000 },
	{ itemName = "jagged sickle", clientId = 32595, sell = 150000 },
	{ itemName = "jaws", clientId = 34014, sell = 3900 },
	{ itemName = "jewelled belt", clientId = 11470, sell = 180 },
	{ itemName = "katex' blood", clientId = 34100, sell = 210 },
	{ itemName = "key to the drowned library", clientId = 14009, sell = 330 },
	{ itemName = "kollos shell", clientId = 14077, sell = 420 },
	{ itemName = "kongra's shoulderpad", clientId = 11471, sell = 100 },
	{ itemName = "lamassu hoof", clientId = 31441, sell = 330 },
	{ itemName = "lamassu horn", clientId = 31442, sell = 240 },
	{ itemName = "lancer beetle shell", clientId = 10455, sell = 80 },
	{ itemName = "lancet", clientId = 18925, sell = 90 },
	{ itemName = "legionnaire flags", clientId = 10417, sell = 500 },
	{ itemName = "lion cloak patch", clientId = 34162, sell = 190 },
	{ itemName = "lion crest", clientId = 34160, sell = 270 },
	{ itemName = "lion seal", clientId = 34163, sell = 210 },
	{ itemName = "lion's mane", clientId = 9691, sell = 60 },
	{ itemName = "little bowl of myrrh", clientId = 25697, sell = 500 },
	{ itemName = "lizard essence", clientId = 11680, sell = 300 },
	{ itemName = "lizard heart", clientId = 31340, sell = 530 },
	{ itemName = "lizard leather", clientId = 5876, sell = 150 },
	{ itemName = "lizard scale", clientId = 5881, sell = 120 },
	{ itemName = "longing eyes", clientId = 27624, sell = 8000 },
	{ itemName = "lost basher's spike", clientId = 17826, sell = 280 },
	{ itemName = "lost bracers", clientId = 17853, sell = 140 },
	{ itemName = "lost husher's staff", clientId = 17848, sell = 250 },
	{ itemName = "lost soul", clientId = 32227, sell = 120 },
	{ itemName = "luminescent crystal pickaxe", clientId = 32711, sell = 50 },
	{ itemName = "luminous orb", clientId = 11454, sell = 1000 },
	{ itemName = "lump of dirt", clientId = 9692, sell = 10 },
	{ itemName = "lump of earth", clientId = 10305, sell = 130 },
	{ itemName = "mad froth", clientId = 17854, sell = 80 },
	{ itemName = "magic sulphur", clientId = 5904, sell = 8000 },
	{ itemName = "malice's horn", clientId = 33920, sell = 620000 },
	{ itemName = "malice's spine", clientId = 33921, sell = 850000 },
	{ itemName = "malofur's lunchbox", clientId = 30088, sell = 240000 },
	{ itemName = "mammoth tusk", clientId = 10321, sell = 100 },
	{ itemName = "mantassin tail", clientId = 11489, sell = 280 },
	{ itemName = "manticore ear", clientId = 31440, sell = 310 },
	{ itemName = "manticore tail", clientId = 31439, sell = 220 },
	{ itemName = "marsh stalker beak", clientId = 17461, sell = 65 },
	{ itemName = "marsh stalker feather", clientId = 17462, sell = 50 },
	{ itemName = "maxxenius head", clientId = 29942, sell = 500000 },
	{ itemName = "meat hammer", clientId = 32093, sell = 60 },
	{ itemName = "medal of valiance", clientId = 31591, sell = 410000 },
	{ itemName = "megalomania's essence", clientId = 33928, sell = 1900000 },
	{ itemName = "megalomania's skull", clientId = 33925, sell = 1500000 },
	{ itemName = "milk churn", clientId = 32011, sell = 100 },
	{ itemName = "minotaur horn", clientId = 11472, sell = 75 },
	{ itemName = "minotaur leather", clientId = 5878, sell = 80 },
	{ itemName = "miraculum", clientId = 11474, sell = 60 },
	{ itemName = "morbid tapestry", clientId = 34170, sell = 30000 },
	{ itemName = "mould heart", clientId = 34141, sell = 2100 },
	{ itemName = "mould robe", clientId = 34148, sell = 1200 },
	{ itemName = "mouldy powder", clientId = 35596, sell = 200 },
	{ itemName = "mr. punish's handcuffs", clientId = 6537, sell = 50000 },
	{ itemName = "mutated bat ear", clientId = 9662, sell = 420 },
	{ itemName = "mutated flesh", clientId = 10308, sell = 50 },
	{ itemName = "mutated rat tail", clientId = 9668, sell = 150 },
	{ itemName = "mystical hourglass", clientId = 9660, sell = 700 },
	{ itemName = "necromantic robe", clientId = 11475, sell = 250 },
	{ itemName = "nettle blossom", clientId = 10314, sell = 75 },
	{ itemName = "nettle spit", clientId = 11476, sell = 25 },
	{ itemName = "noble amulet", clientId = 31595, sell = 430000 },
	{ itemName = "noble cape", clientId = 31593, sell = 425000 },
	{ itemName = "noble turban", clientId = 11486, sell = 430 },
	{ itemName = "nose ring", clientId = 5804, sell = 2000 },
	{ itemName = "odd organ", clientId = 23510, sell = 410 },
	{ itemName = "ogre ear stud", clientId = 22188, sell = 180 },
	{ itemName = "ogre nose ring", clientId = 22189, sell = 210 },
	{ itemName = "orc leather", clientId = 11479, sell = 30 },
	{ itemName = "orc tooth", clientId = 10196, sell = 150 },
	{ itemName = "orcish gear", clientId = 11477, sell = 85 },
	{ itemName = "pair of hellflayer horns", clientId = 22729, sell = 1300 },
	{ itemName = "pair of old bracers", clientId = 32705, sell = 500 },
	{ itemName = "pale worm's scalp", clientId = 32598, sell = 489000 },
	{ itemName = "patch of fine cloth", clientId = 28821, sell = 1350 },
	{ itemName = "peacock feather fan", clientId = 21975, sell = 350 },
	{ itemName = "pelvis bone", clientId = 11481, sell = 30 },
	{ itemName = "percht horns", clientId = 30186, sell = 200 },
	{ itemName = "perfect behemoth fang", clientId = 5893, sell = 250 },
	{ itemName = "petrified scream", clientId = 10420, sell = 250 },
	{ itemName = "phantasmal hair", clientId = 32704, sell = 500 },
	{ itemName = "piece of archer armor", clientId = 11483, sell = 20 },
	{ itemName = "piece of crocodile leather", clientId = 10279, sell = 15 },
	{ itemName = "piece of dead brain", clientId = 9663, sell = 420 },
	{ itemName = "piece of massacre's shell", clientId = 6540, sell = 50000 },
	{ itemName = "piece of scarab shell", clientId = 9641, sell = 45 },
	{ itemName = "piece of swampling wood", clientId = 17823, sell = 30 },
	{ itemName = "piece of warrior armor", clientId = 11482, sell = 50 },
	{ itemName = "pieces of magic chalk", clientId = 18930, sell = 210 },
	{ itemName = "pig foot", clientId = 9693, sell = 10 },
	{ itemName = "pile of grave earth", clientId = 11484, sell = 25 },
	{ itemName = "pirate coin", clientId = 35572, sell = 110 },
	{ itemName = "pirat's tail", clientId = 35573, sell = 180 },
	{ itemName = "plagueroot offshoot", clientId = 30087, sell = 280000 },
	{ itemName = "plasma pearls", clientId = 23506, sell = 250 },
	{ itemName = "plasmatic lightning", clientId = 23520, sell = 270 },
	{ itemName = "poison gland", clientId = 29348, sell = 210 },
	{ itemName = "poison spider shell", clientId = 11485, sell = 10 },
	{ itemName = "poisonous slime", clientId = 9640, sell = 50 },
	{ itemName = "polar bear paw", clientId = 9650, sell = 30 },
	{ itemName = "pool of chitinous glue", clientId = 20207, sell = 480 },
	{ itemName = "porcelain mask", clientId = 25088, sell = 2000 },
	{ itemName = "powder herb", clientId = 3739, sell = 10 },
	{ itemName = "pristine worm head", clientId = 27618, sell = 15000 },
	{ itemName = "protective charm", clientId = 11444, sell = 60 },
	{ itemName = "purified soul", clientId = 32228, sell = 260 },
	{ itemName = "purple robe", clientId = 11473, sell = 110 },
	{ itemName = "quara bone", clientId = 11491, sell = 500 },
	{ itemName = "quara eye", clientId = 11488, sell = 350 },
	{ itemName = "quara pincers", clientId = 11490, sell = 410 },
	{ itemName = "quara tentacle", clientId = 11487, sell = 140 },
	{ itemName = "quill", clientId = 28567, sell = 1100 },
	{ itemName = "rare earth", clientId = 27301, sell = 80 },
	{ itemName = "ratmiral's hat", clientId = 35613, sell = 150000 },
	{ itemName = "ravenous circlet", clientId = 32597, sell = 220000 },
	{ itemName = "red dragon leather", clientId = 5948, sell = 200 },
	{ itemName = "red dragon scale", clientId = 5882, sell = 200 },
	{ itemName = "red goanna scale", clientId = 31558, sell = 270 },
	{ itemName = "red hair dye", clientId = 17855, sell = 40 },
	{ itemName = "red piece of cloth", clientId = 5911, sell = 300 },
	{ itemName = "rhino hide", clientId = 24388, sell = 175 },
	{ itemName = "rhino horn carving", clientId = 24386, sell = 300 },
	{ itemName = "rhino horn", clientId = 24389, sell = 265 },
	{ itemName = "rod", clientId = 33929, sell = 2200 },
	{ itemName = "roots", clientId = 33938, sell = 1200 },
	{ itemName = "rope belt", clientId = 11492, sell = 66 },
	{ itemName = "rorc egg", clientId = 18996, sell = 120 },
	{ itemName = "rorc feather", clientId = 18993, sell = 70 },
	{ itemName = "rotten heart", clientId = 31589, sell = 74000 },
	{ itemName = "rotten piece of cloth", clientId = 10291, sell = 30 },
	{ itemName = "sabretooth", clientId = 10311, sell = 400 },
	{ itemName = "safety pin", clientId = 11493, sell = 120 },
	{ itemName = "sample of monster blood", clientId = 27874, sell = 250 },
	{ itemName = "sandcrawler shell", clientId = 10456, sell = 20 },
	{ itemName = "scale of corruption", clientId = 11673, sell = 680 },
	{ itemName = "scale of gelidrazah", clientId = 24939, sell = 10000 },
	{ itemName = "scarab pincers", clientId = 9631, sell = 280 },
	{ itemName = "scorpion tail", clientId = 9651, sell = 25 },
	{ itemName = "scroll of heroic deeds", clientId = 11510, sell = 230 },
	{ itemName = "scythe leg", clientId = 10312, sell = 450 },
	{ itemName = "sea horse figurine", clientId = 31323, sell = 42000 },
	{ itemName = "sea serpent scale", clientId = 9666, sell = 520 },
	{ itemName = "seeds", clientId = 647, sell = 150 },
	{ itemName = "shaggy tail", clientId = 10407, sell = 25 },
	{ itemName = "shamanic hood", clientId = 11478, sell = 45 },
	{ itemName = "shamanic talisman", clientId = 22184, sell = 200 },
	{ itemName = "shark fins", clientId = 35574, sell = 250 },
	{ itemName = "shimmering beetles", clientId = 25686, sell = 150 },
	{ itemName = "sight of surrender's eye", clientId = 20183, sell = 3000 },
	{ itemName = "signet ring", clientId = 31592, sell = 480000 },
	{ itemName = "silencer claws", clientId = 20200, sell = 390 },
	{ itemName = "silencer resonating chamber", clientId = 20201, sell = 600 },
	{ itemName = "silken bookmark", clientId = 28566, sell = 1300 },
	{ itemName = "silky fur", clientId = 10292, sell = 35 },
	{ itemName = "silver hand mirror", clientId = 32772, sell = 10000 },
	{ itemName = "single human eye", clientId = 25696, sell = 1000 },
	{ itemName = "skeleton decoration", clientId = 6525, sell = 3000 },
	{ itemName = "skull belt", clientId = 11480, sell = 80 },
	{ itemName = "skull fetish", clientId = 22191, sell = 250 },
	{ itemName = "skull shatterer", clientId = 17849, sell = 170 },
	{ itemName = "skunk tail", clientId = 10274, sell = 50 },
	{ itemName = "slimy leg", clientId = 27623, sell = 4500 },
	{ itemName = "small energy ball", clientId = 23524, sell = 250 },
	{ itemName = "small flask of eyedrops", clientId = 11512, sell = 95 },
	{ itemName = "small notebook", clientId = 11450, sell = 480 },
	{ itemName = "small oil lamp", clientId = 2933, sell = 150 },
	{ itemName = "small pitchfork", clientId = 11513, sell = 70 },
	{ itemName = "small treasure chest", clientId = 35571, sell = 500 },
	{ itemName = "snake skin", clientId = 9694, sell = 400 },
	{ itemName = "sniper gloves", clientId = 5875, sell = 2000 },
	{ itemName = "solid rage", clientId = 23517, sell = 310 },
	{ itemName = "some grimeleech wings", clientId = 22730, sell = 1200 },
	{ itemName = "soul stone", clientId = 5809, sell = 6000 },
	{ itemName = "spark sphere", clientId = 23518, sell = 350 },
	{ itemName = "sparkion claw", clientId = 23502, sell = 290 },
	{ itemName = "sparkion legs", clientId = 23504, sell = 310 },
	{ itemName = "sparkion stings", clientId = 23505, sell = 280 },
	{ itemName = "sparkion tail", clientId = 23503, sell = 300 },
	{ itemName = "spectral gold nugget", clientId = 32724, sell = 500 },
	{ itemName = "spectral silver nugget", clientId = 32725, sell = 250 },
	{ itemName = "spellsinger's seal", clientId = 14008, sell = 280 },
	{ itemName = "sphinx feather", clientId = 31437, sell = 470 },
	{ itemName = "sphinx tiara", clientId = 31438, sell = 360 },
	{ itemName = "spider fangs", clientId = 8031, sell = 10 },
	{ itemName = "spider silk", clientId = 5879, sell = 100 },
	{ itemName = "spidris mandible", clientId = 14082, sell = 450 },
	{ itemName = "spiked iron ball", clientId = 10408, sell = 100 },
	{ itemName = "spirit container", clientId = 5884, sell = 40000 },
	{ itemName = "spite's spirit", clientId = 33926, sell = 840000 },
	{ itemName = "spitter nose", clientId = 14078, sell = 340 },
	{ itemName = "spooky blue eye", clientId = 9642, sell = 95 },
	{ itemName = "srezz' eye", clientId = 34103, sell = 300 },
	{ itemName = "star herb", clientId = 3736, sell = 15 },
	{ itemName = "stone herb", clientId = 3735, sell = 20 },
	{ itemName = "stone wing", clientId = 10278, sell = 120 },
	{ itemName = "stonerefiner's skull", clientId = 27606, sell = 100 },
	{ itemName = "strand of medusa hair", clientId = 10309, sell = 600 },
	{ itemName = "strange proto matter", clientId = 23513, sell = 300 },
	{ itemName = "strange symbol", clientId = 3058, sell = 200 },
	{ itemName = "striped fur", clientId = 10293, sell = 50 },
	{ itemName = "swamp grass", clientId = 9686, sell = 20 },
	{ itemName = "swampling moss", clientId = 17822, sell = 20 },
	{ itemName = "swarmer antenna", clientId = 14076, sell = 130 },
	{ itemName = "tail of corruption", clientId = 11672, sell = 240 },
	{ itemName = "tarantula egg", clientId = 10281, sell = 80 },
	{ itemName = "tarnished rhino figurine", clientId = 24387, sell = 320 },
	{ itemName = "tattered piece of robe", clientId = 9684, sell = 120 },
	{ itemName = "telescope eye", clientId = 33934, sell = 1600 },
	{ itemName = "tentacle of tentugly", clientId = 35611, sell = 27000 },
	{ itemName = "tentacle piece", clientId = 11666, sell = 5000 },
	{ itemName = "tentugly's eye", clientId = 35610, sell = 52000 },
	{ itemName = "tentugly's jaws", clientId = 35612, sell = 80000 },
	{ itemName = "terramite eggs", clientId = 10453, sell = 50 },
	{ itemName = "terramite legs", clientId = 10454, sell = 60 },
	{ itemName = "terramite shell", clientId = 10452, sell = 170 },
	{ itemName = "terrorbird beak", clientId = 10273, sell = 95 },
	{ itemName = "the handmaiden's protector", clientId = 6539, sell = 50000 },
	{ itemName = "the imperor's trident", clientId = 6534, sell = 50000 },
	{ itemName = "the plasmother's remains", clientId = 6535, sell = 50000 },
	{ itemName = "thick fur", clientId = 10307, sell = 150 },
	{ itemName = "thorn", clientId = 9643, sell = 100 },
	{ itemName = "tiara", clientId = 35578, sell = 11000 },
	{ itemName = "token of love", clientId = 31594, sell = 440000 },
	{ itemName = "tooth file", clientId = 18924, sell = 60 },
	{ itemName = "tooth of tazhadur", clientId = 24940, sell = 10000 },
	{ itemName = "torn shirt", clientId = 25744, sell = 250 },
	{ itemName = "trapped bad dream monster", clientId = 20203, sell = 900 },
	{ itemName = "troll green", clientId = 3741, sell = 25 },
	{ itemName = "trollroot", clientId = 11515, sell = 50 },
	{ itemName = "tunnel tyrant head", clientId = 27595, sell = 500 },
	{ itemName = "tunnel tyrant shell", clientId = 27596, sell = 700 },
	{ itemName = "turtle shell", clientId = 5899, sell = 90 },
	{ itemName = "tusk", clientId = 3044, sell = 100 },
	{ itemName = "undead heart", clientId = 10450, sell = 200 },
	{ itemName = "unholy bone", clientId = 10316, sell = 480 },
	{ itemName = "urmahlullus mane", clientId = 31623, sell = 490000 },
	{ itemName = "urmahlullus paws", clientId = 31624, sell = 245000 },
	{ itemName = "urmahlullus tail", clientId = 31622, sell = 210000 },
	{ itemName = "utua's poison", clientId = 34101, sell = 230 },
	{ itemName = "vampire dust", clientId = 5905, sell = 100 },
	{ itemName = "vampire teeth", clientId = 9685, sell = 275 },
	{ itemName = "vampire's cape chain", clientId = 18927, sell = 150 },
	{ itemName = "veal", clientId = 32009, sell = 40 },
	{ itemName = "venison", clientId = 18995, sell = 55 },
	{ itemName = "vexclaw talon", clientId = 22728, sell = 1100 },
	{ itemName = "vial of hatred", clientId = 33927, sell = 737000 },
	{ itemName = "vibrant heart", clientId = 34143, sell = 2100 },
	{ itemName = "vibrant robe", clientId = 34144, sell = 1200 },
	{ itemName = "violet glass plate", clientId = 29347, sell = 2150 },
	{ itemName = "volatile proto matter", clientId = 23514, sell = 300 },
	{ itemName = "warmaster's wristguards", clientId = 10405, sell = 200 },
	{ itemName = "warwolf fur", clientId = 10318, sell = 30 },
	{ itemName = "waspoid claw", clientId = 14080, sell = 320 },
	{ itemName = "waspoid wing", clientId = 14081, sell = 190 },
	{ itemName = "weaver's wandtip", clientId = 10397, sell = 250 },
	{ itemName = "werebadger claws", clientId = 22051, sell = 160 },
	{ itemName = "werebadger skull", clientId = 22055, sell = 185 },
	{ itemName = "werebear fur", clientId = 22057, sell = 85 },
	{ itemName = "werebear skull", clientId = 22056, sell = 195 },
	{ itemName = "wereboar hooves", clientId = 22053, sell = 175 },
	{ itemName = "wereboar tusks", clientId = 22054, sell = 165 },
	{ itemName = "werefox tail", clientId = 27463, sell = 200 },
	{ itemName = "werehyaena nose", clientId = 33943, sell = 220 },
	{ itemName = "werehyaena talisman", clientId = 33944, sell = 350 },
	{ itemName = "werewolf fangs", clientId = 22052, sell = 180 },
	{ itemName = "werewolf fur", clientId = 10317, sell = 380 },
	{ itemName = "white piece of cloth", clientId = 5909, sell = 100 },
	{ itemName = "widow's mandibles", clientId = 10411, sell = 110 },
	{ itemName = "wild flowers", clientId = 25684, sell = 120 },
	{ itemName = "wimp tooth chain", clientId = 17847, sell = 120 },
	{ itemName = "winged tail", clientId = 10313, sell = 800 },
	{ itemName = "winter wolf fur", clientId = 10295, sell = 20 },
	{ itemName = "witch broom", clientId = 9652, sell = 60 },
	{ itemName = "withered pauldrons", clientId = 27607, sell = 850 },
	{ itemName = "withered scalp", clientId = 27608, sell = 900 },
	{ itemName = "wolf paw", clientId = 5897, sell = 70 },
	{ itemName = "wood", clientId = 5901, sell = 5 },
	{ itemName = "wool", clientId = 10319, sell = 15 },
	{ itemName = "writhing brain", clientId = 32600, sell = 370000 },
	{ itemName = "writhing heart", clientId = 32599, sell = 185000 },
	{ itemName = "wyrm scale", clientId = 9665, sell = 400 },
	{ itemName = "wyvern talisman", clientId = 9644, sell = 265 },
	{ itemName = "yellow piece of cloth", clientId = 5914, sell = 150 },
	{ itemName = "yielowax", clientId = 12742, sell = 600 },
	{ itemName = "yirkas' egg", clientId = 34102, sell = 280 },
	{ itemName = "young lich worm", clientId = 31590, sell = 25000 },
	{ itemName = "zaogun flag", clientId = 10413, sell = 600 },
	{ itemName = "zaogun shoulderplates", clientId = 10414, sell = 150 }
}
-- On buy npc shop message
npcType.onBuyItem = function(npc, player, itemId, subType, amount, inBackpacks, name, totalCost)
	npc:sellItem(player, itemId, amount, subType, true, inBackpacks, 2854)
	npc:talk(player, string.format("You've bought %i %s for %i %s.", amount, name, totalCost, ItemType(npc:getCurrency()):getPluralName():lower()))
end
-- On sell npc shop message
npcType.onSellItem = function(npc, player, clientId, subtype, amount, name, totalCost)
	npc:talk(player, string.format("You've sold %i %s for %i gold coins.", amount, name, totalCost))
end
-- On check npc shop message (look item)
npcType.onCheckItem = function(npc, player, clientId, subType)
end

local function creatureSayCallback(npc, creature, type, message)
	local player = Player(creature)
	local playerId = player:getId()

	if not npcHandler:checkInteraction(npc, creature) then
		return false
	end
	local playerId = creature:getId()
	if msgcontains(message, "name") then
		return npcHandler:say("Me Yasir.", npc, creature)
	elseif msgcontains(message, "job") then
		return npcHandler:say("Tje hari ku ne finjala. {Ariki}?", npc, creature)
	elseif msgcontains(message, "passage") then
		return npcHandler:say("Soso yana. <shakes his head>", npc, creature)
	end
	return true
end

npcHandler:setMessage(MESSAGE_FAREWELL, "Si, jema ze harun. <waves>")
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())

npcType:register(npcConfig)
