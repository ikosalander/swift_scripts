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
NOOB_MEAT = inventory:itemCount(16663)


function move()
	if NOOB_MEAT < 100 then
	global:printSuccess("go drop viande intangible	")
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
		{map = "-2,-3", path = "top|bottom|right", fight = true},
		{map = "-2,-2", path = "top|bottom|right", fight = true},
		{map = "-2,-1", path = "top|bottom", fight = true},
		{map = "-2,0", path = "top|right", fight = true},
		{map = "-1,0", path = "left", fight = true},
		{map = "-1,-2", path = "left|right", fight = true},
		{map = "0,-2", path = "top|left|right", fight = true},
		{map = "-1,-3", path = "top|bottom|left|right", fight = true},
		{map = "0,-3", path = "top|bottom|left|right", fight = true},
		{map = "1,-3", path = "top|bottom|left|right", fight = true},
		{map = "0,-4", path = "top|bottom|left|right", fight = true},
		{map = "-1,-4", path = "top|bottom|left|right", fight = true},
		{map = "1,-4", path = "top|bottom|left|right", fight = true},
		{map = "2,-4", path = "top|bottom|left|right", fight = true},
		{map = "1,-2", path = "top|bottom|left|right", fight = true},
		{map = "2,-2", path = "top|bottom|left|right", fight = true},
		{map = "2,-3", path = "top|bottom|left|right", fight = true},
		{map = "3,-4", path = "top|bottom|left|right", fight = true},
		{map = "4,-4", path = "bottom|left", fight = true},
		{map = "4,-3", path = "top|left", fight = true},
		{map = "3,-3", path = "top|left|right", fight = true},
		{map = "3,-2", path = "top|left", fight = true},
		{map = "2,-1", path = "top|left", fight = true},
		{map = "1,-1", path = "top|right", fight = true},
		{map = "0,-5", path = "bottom", fight = true},
		{map = "-1,-5", path = "bottom", fight = true},
		{map = "-2,-4", path = "bottom|right", fight = true},
	}
end
	if NOOB_MEAT >= 100 then
		global:printSuccess("viande intangible fois 100 drop, go craft")
		return{
		{map = "-2,-3", path = "right"},
		{map = "-1,-3", path = "right"},
		{map = "0,-3", path = "right"},
		{map = "1,-3", path = "right"},
		{map = "2,-3", path = "right"},
		{map = "3,-3", path = "right"},
		{map = "-1,0", path = "left"},
		{map = "-2,0", path = "top"},
		{map = "-2,-1", path = "top"},
		{map = "-2,-2", path = "top"},
		{map = "-1,-2", path = "top"},
		{map = "0,-2", path = "top"},
		{map = "1,-2", path = "top"},
		{map = "1,-1", path = "top"},
		{map = "2,-1", path = "top"},
		{map = "2,-2", path = "top"},
		{map = "3,-2", path = "top"},
		{map = "-2,-4", path = "right"},
		{map = "0,-4", path = "bottom"},
		{map = "1,-4", path = "bottom"},
		{map = "2,-4", path = "bottom"},
		{map = "3,-4", path = "bottom"},
		{map = "4,-4", path = "bottom"},


	}
	end
end

function bank()
	return {
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
