--*************************************--
-- Trajet par JoShMiQueL
-- Elevage Bouftous
--_____________________________________--

MAX_PODS = 80

MIN_MONSTERS = 1
MAX_MONSTERS = 2

DISPLAY_FIGHT_COUNT = true
DISPLAY_BANK_COUNT = true

function npctoastrub()
	npc:npc(2889,3)
	npc:reply(-1)
	npc:reply(-1)
end

function move()
	return {
        { map="4,-3", custom = npctoastrub },
		{ map="2,-22", path = "right" },
		{ map="2,-20", path = "right" },
		{ map="3,-22", path = "right" },
		{ map="3,-20", path = "right" },
		{ map="3,-19", path = "right" },
		{ map="3,-16", path = "right" },
		{ map="-1,-17", path = "right" },
		{ map="0,-17", path = "right" },
		{ map="1,-17", path = "right" },
		{ map="2,-17", path = "right" },
		{ map="3,-17", path = "right" },
		{ map="-1,-14", path = "bottom" },
		{ map="-1,-13", path = "right" },
		{ map="0,-13", path = "right" },
		{ map="1,-13", path = "right" },
		{ map="2,-13", path = "right" },
		{ map="3,-13", path = "right" },
		{ map="0,-19", path = "right" },
		{ map="1,-19", path = "right" },
		{ map="2,-19", path = "right" },
		{ map="5,-21", path = "left" },
		{ map="5,-19", path = "left" },
		{ map="6,-20", path = "left" },
		{ map="7,-21", path = "left" },
		{ map="6,-21", path = "left" },
		{ map="7,-17", path = "left" },
		{ map="6,-17", path = "left" },
		{ map="5,-17", path = "left" },
		{ map="6,-16", path = "left" },
		{ map="5,-16", path = "left" },
		{ map="7,-15", path = "left" },
		{ map="6,-15", path = "left" },
		{ map="5,-15", path = "left" },
		{ map="4,-22", path = "bottom" },
		{ map="4,-21", path = "bottom" },
		{ map="4,-20", path = "bottom" },
		{ map="4,-19", path = "bottom" },
		{ map="4,-18", path = "bottom" },
		{ map="4,-17", path = "bottom" },
		{ map = "84674566", path = "bottom" },
		{ map="4,-15", path = "bottom" },
		{ map="4,-14", path = "bottom" },
		{ map="4,-13", path = "bottom" },
		{ map="4,-12", path = "bottom" },
		{ map="4,-11", path = "bottom" },
		{ map="7,-10", path = "left" },
		{ map="6,-10", path = "left" },
		{ map="5,-10", path = "left" },
		{ map="4,-10", path = "left" },
		{ map="3,-10", path = "left" },
		{ map="2,-10", path = "bottom" },
		{ map="2,-9", fight = true, path = "bottom" },
		{ map="2,-8", fight = true, path = "right" },
		{ map="3,-8", fight = true, path = "top" },
		{ map="3,-9", fight = true, path = "right" },
		{ map="4,-9", fight = true, path = "right" },
		{ map="5,-9", fight = true, path = "right" },
		{ map="6,-9", fight = true, path = "right" },
		{ map="7,-9", fight = true, path = "top" },
		{ map = "83887104", path = "396" },
	}
end

function bank()
	return {
		{ map="4,-15", path = "top" },
		{ map="4,-14", path = "top" },
		{ map="4,-13", path = "top" },
		{ map="4,-12", path = "top" },
		{ map="4,-11", path = "top" },
		{ map="7,-10", path = "left" },
		{ map="6,-10", path = "left" },
		{ map="5,-10", path = "left" },
		{ map="4,-10", path = "top" },
		{ map="3,-10", path = "right" },
		{ map="2,-10", path = "right" },
		{ map="2,-9", path = "top" },
		{ map="2,-8", path = "top" },
		{ map="3,-8", path = "top" },
		{ map="3,-9", path = "top" },
		{ map="4,-9", path = "top" },
		{ map="5,-9", path = "top" },
		{ map="6,-9", path = "top" },
		{ map="7,-9", path = "top" },
		{ map = "84674566", door = "303" },
		{ map = "83887104", npcBank = true },
	}
end
