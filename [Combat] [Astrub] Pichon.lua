---------------------------------------------
-- Cr�ateur : Azeras
-- Type : Combats
-- Zone : Astrub Pichon
---------------------------------------------
MIN_MONSTERS = 1
MAX_MONSTERS = 8

function move()
	return {
		{ map="4,-17", path = "top" },
		{ map="4,-18", path = "top" },
		{ map="4,-19", path = "top" },
		{ map="4,-20", path = "top" },
		{ map="4,-21", path = "top" },
		{ map="4,-22", path = "right" },
		{ map="10,-25", fight = true, path = "top|right" },
		{ map="9,-25", path = "top" },
		{ map="8,-25", path = "right" },
		{ map="7,-25", path = "right" },
		{ map="6,-25", path = "right" },
		{ map="5,-25", path = "right" },
		{ map="5,-23", path = "top" },
		{ map="5,-24", path = "top" },
		{ map="5,-22", path = "top" },
		{ map="10,-26", fight = true, path = "right|left|bottom|top" },
		{ map="9,-26", fight = true, path = "top|right" },
		{ map="8,-27", fight = true, path = "right|top" },
		{ map="8,-28", fight = true, path = "right|bottom|top" },
		{ map="8,-29", fight = true, path = "right|bottom" },
		{ map="9,-27", fight = true, path = "right|left|bottom|top" },
		{ map="9,-28", fight = true, path = "right|left|bottom|top" },
		{ map="9,-29", fight = true, path = "bottom|left|right" },
		{ map="11,-28", fight = true, path = "bottom|left|right" },
		{ map="11,-27", fight = true, path = "right|left|bottom|top" },
		{ map="11,-26", fight = true, path = "right|left|bottom|top" },
		{ map="11,-25", fight = true, path = "right|left|bottom|top" },
		{ map="12,-28", fight = true, path = "bottom|left|right" },
		{ map="12,-27", fight = true, path = "left|bottom|right|top" },
		{ map="12,-26", fight = true, path = "bottom|left|top" },
		{ map="12,-25", fight = true, path = "bottom|left|top" },
		{ map="13,-28", fight = true, path = "left|bottom" },
		{ map="13,-27", fight = true, path = "left|top" },
		{ map="10,-29", fight = true, path = "bottom|left" },
		{ map="10,-28", fight = true, path = "right|left|bottom|top" },
		{ map="10,-27", fight = true, path = "right|left|bottom|top" },
		{ map="11,-24", fight = true, path = "top|right" },
		{ map="12,-24", fight = true, path = "top|left" },
		{ map="12,-23", fight = true, path = "top" },
		{ map = "84674566", path = "top" },
		{ map = "83887104", path = "396" },
	}
end

function bank()
	return {
		{ map="4,-17", path = "bottom" },
		{ map="4,-18", path = "bottom" },
		{ map="4,-19", path = "bottom" },
		{ map="4,-20", path = "bottom" },
		{ map="4,-21", path = "bottom" },
		{ map="4,-22", path = "bottom" },
		{ map="10,-25", path = "left" },
		{ map="9,-25", path = "left" },
		{ map="8,-25", path = "left" },
		{ map="7,-25", path = "left" },
		{ map="6,-25", path = "left" },
		{ map="5,-25", path = "bottom" },
		{ map="5,-23", path = "bottom" },
		{ map="5,-24", path = "bottom" },
		{ map="5,-22", path = "left" },
		{ map="10,-26", path = "bottom" },
		{ map="9,-26", path = "right" },
		{ map="8,-27", path = "right" },
		{ map="8,-28", path = "right" },
		{ map="8,-29", path = "right" },
		{ map="9,-27", path = "right" },
		{ map="9,-28", path = "right" },
		{ map="9,-29", path = "right" },
		{ map="11,-28", path = "left" },
		{ map="11,-27", path = "left" },
		{ map="11,-26", path = "left" },
		{ map="11,-25", path = "left" },
		{ map="12,-28", path = "left" },
		{ map="12,-27", path = "left" },
		{ map="12,-26", path = "left" },
		{ map="12,-25", path = "left" },
		{ map="13,-28", path = "left" },
		{ map="13,-27", path = "left" },
		{ map="10,-29", path = "bottom" },
		{ map="10,-28", path = "bottom" },
		{ map="10,-27", path = "bottom" },
		{ map="11,-24", path = "top" },
		{ map="12,-24", path = "top" },
		{ map="12,-23", path = "top" },
		{ map = "84674566", door = "303" },
		{ map = "83887104", npcBank = true, path = "396" },
	}
end