-- Generated On Dofus-Map with Drigtime's SwiftPath Script Maker --
GATHER = {
} -- Les éléments à récolter
OPEN_BAGS = true -- Ouvrir les sacs de ressources au fur et à mesure
AUTO_DELETE = { } -- Les éléments à supprimer

MAX_MONSTERS = 8 -- Le nombre maximum de monstres dans un groupe à combattre.
MIN_MONSTERS = 1 -- Le nombre minimum de monstres dans un groupe à combattre.

FORBIDDEN_MONSTERS = { } -- Monstres interdits
FORCE_MONSTERS = { } -- Monstres obligatoires

MAX_COMBAT = 800 -- Nombre de combats maximum

MAP_ACTUELLE = map:currentMap()

STUFF = 1

function stuff()
	inventory:equipItem(1934)
	inventory:equipItem(18668)
end

function move()
	if STUFF == 1 then
		STUFF = 0
		global:printSuccess("perso stuff")
		return{
		{map = MAP_ACTUELLE, custom = stuff}
	}
	end

if STUFF == 0 then
	return {
		{map = "83887104", path = "396"}, --Interieur banque Astrub vers Sortie--
		{map = "54534165", path = "424"}, --Interieur banque Frigost vers Sortie--
		{map = "2885641", path = "424"}, --Interieur banque Bonta vers Sortie--
		{map = "99095051", path = "410"}, --Interieur banque Amakna vers Sortie--
		{map = "8912911", path = "424"}, --Interieur banque Brakmar vers Sortie--
		{map = "91753985", path = "396"}, --Interieur banque Sufokia vers Sortie (Non fait)--
		{map = "86511105", door = "452"}, --Interieur banque Ottomaï vers Sortie--
		{map = "8129542", path = "409"}, --Interieur banque Pandala vers Sortie--
		{map = "84935175", path = "425"}, --Interieur banque Montagne Koalak vers Sortie--
		{map = "4,-17", path = "bottom"},
		{map = "4,-16", path = "bottom"},
		{map = "4,-15", path = "bottom"},
		{map = "4,-14", path = "bottom"},
		{map = "2,-11", path = "top|bottom|right", fight = true},
		{map = "2,-12", path = "top|bottom|right", fight = true},
		{map = "2,-13", path = "bottom|right", fight = true},
		{map = "2,-10", path = "top|right", fight = true},
		{map = "3,-10", path = "top|left|right", fight = true},
		{map = "4,-10", path = "top|left|right", fight = true},
		{map = "5,-10", path = "top|left|right", fight = true},
		{map = "3,-11", path = "top|bottom|left|right", fight = true},
		{map = "4,-11", path = "top|bottom|left|right", fight = true},
		{map = "5,-11", path = "top|bottom|left|right", fight = true},
		{map = "4,-12", path = "top|bottom|left|right", fight = true},
		{map = "3,-12", path = "top|bottom|left|right", fight = true},
		{map = "5,-12", path = "top|bottom|left|right", fight = true},
		{map = "3,-13", path = "bottom|left|right", fight = true},
		{map = "4,-13", path = "bottom|left|right", fight = true},
		{map = "5,-13", path = "bottom|left|right", fight = true},
		{map = "6,-13", path = "bottom|left", fight = true},
		{map = "6,-10", path = "top|left", fight = true},
		{map = "6,-12", path = "top|bottom|left", fight = true},
		{map = "6,-11", path = "top|bottom|left", fight = true},
		{map = "7,-21", path = "bottom"},
		{map = "7,-20", path = "bottom"},
		{map = "7,-19", path = "bottom"},
		{map = "7,-18", path = "bottom"},
		{map = "7,-17", path = "bottom"},
		{map = "6,-17", path = "bottom"},
		{map = "6,-18", path = "bottom"},
		{map = "6,-19", path = "bottom"},
		{map = "6,-20", path = "bottom"},
		{map = "5,-20", path = "bottom"},
		{map = "5,-21", path = "bottom"},
		{map = "5,-22", path = "bottom"},
		{map = "4,-21", path = "bottom"},
		{map = "4,-22", path = "bottom"},
		{map = "4,-20", path = "bottom"},
		{map = "4,-19", path = "bottom"},
		{map = "5,-19", path = "bottom"},
		{map = "5,-18", path = "bottom"},
		{map = "4,-18", path = "bottom"},
		{map = "5,-17", path = "bottom"},
		{map = "3,-18", path = "bottom"},
		{map = "3,-17", path = "bottom"},
		{map = "3,-19", path = "bottom"},
		{map = "3,-20", path = "bottom"},
		{map = "3,-21", path = "bottom"},
		{map = "3,-22", path = "bottom"},
		{map = "2,-21", path = "bottom"},
		{map = "2,-22", path = "bottom"},
		{map = "1,-21", path = "bottom"},
		{map = "1,-22", path = "bottom"},
		{map = "0,-21", path = "bottom"},
		{map = "0,-22", path = "bottom"},
		{map = "-1,-21", path = "bottom"},
		{map = "-1,-20", path = "bottom"},
		{map = "-1,-19", path = "bottom"},
		{map = "0,-19", path = "bottom"},
		{map = "0,-20", path = "bottom"},
		{map = "-1,-18", path = "bottom"},
		{map = "-1,-17", path = "bottom"},
		{map = "0,-17", path = "bottom"},
		{map = "0,-18", path = "bottom"},
		{map = "-1,-16", path = "bottom"},
		{map = "0,-16", path = "bottom"},
		{map = "-1,-15", path = "bottom"},
		{map = "0,-15", path = "bottom"},
		{map = "1,-15", path = "bottom"},
		{map = "1,-16", path = "bottom"},
		{map = "1,-20", path = "bottom"},
		{map = "2,-20", path = "bottom"},
		{map = "2,-19", path = "bottom"},
		{map = "1,-19", path = "bottom"},
		{map = "1,-18", path = "right"},
		{map = "2,-18", path = "right"},
		{map = "-1,-14", path = "right"},
		{map = "0,-14", path = "right"},
		{map = "1,-14", path = "right"},
		{map = "2,-14", path = "right"},
		{map = "2,-15", path = "right"},
		{map = "2,-16", path = "right"},
		{map = "3,-16", path = "right"},
		{map = "3,-14", path = "top"},
		{map = "5,-15", path = "left"},
		{map = "6,-15", path = "left"},
		{map = "7,-15", path = "left"},
		{map = "6,-16", path = "left"},
		{map = "7,-16", path = "left"},
		{map = "5,-16", path = "left"},
		{map = "1,-17", path = "right"},
		{map = "2,-17", path = "right"},
	}
end
end

function bank()
	return {
		{map = "2,-10", path = "top"},
		{map = "2,-11", path = "top"},
		{map = "2,-12", path = "top"},
		{map = "2,-13", path = "right"},
		{map = "3,-13", path = "right"},
		{map = "4,-13", path = "top"},
		{map = "4,-15", path = "top"},
		{map = "3,-10", path = "top"},
		{map = "3,-11", path = "top"},
		{map = "3,-12", path = "top"},
		{map = "4,-10", path = "top"},
		{map = "4,-11", path = "top"},
		{map = "4,-12", path = "top"},
		{map = "5,-10", path = "top"},
		{map = "5,-11", path = "top"},
		{map = "5,-12", path = "top"},
		{map = "6,-10", path = "top"},
		{map = "6,-11", path = "top"},
		{map = "6,-12", path = "top"},
		{map = "6,-13", path = "left"},
		{map = "5,-13", path = "left"},
		{map = "4,-14", path = "top"},
		{map = "84674566", door = "303"}, --Devant banque Astrub--
		{map = "83887104", path = "396", npcBank = true}, --Banque Astrub--
		{map = "54172457", door = "358"}, --Devant banque Frigost--
		{map = "54534165", path = "424", npcBank = true}, --Banque Frigost--
		{map = "147254", door = "383"}, --Devant banque Bonta--
		{map = "2885641", path = "424", npcBank = true}, --Banque Bonta--
		{map = "88081177", door = "216"}, --Devant banque Amakna--
		{map = "99095051", path = "410", npcBank = true}, --Banque Amakna--
		{map = "144931", door = "248"}, --Devant banque Brakmar--
		{map = "8912911", path = "424", npcBank = true}, --Banque Brakmar--
		{map = "90703872", door = "248"}, --Devant banque Sufokia (Non fait)--
		{map = "91753985", path = "396", npcBank = true}, --Banque Sufokia--
		{map = "155157", door = "355"}, --Devant banque Ottomaï--
		{map = "86511105", door = "452", npcBank = true}, --Banque Ottomaï--
		{map = "12580", door = "284"}, --Devant banque Pandala--
		{map = "8129542", path = "409", npcBank = true}, --Banque Pandala--
		{map = "73400323", door = "330"}, --Devant banque Montagne Koalak--
		{map = "84935175", path = "425", npcBank = true}, --Banque Montagne Koalak--
	}
end
