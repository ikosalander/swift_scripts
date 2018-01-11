---------------------------------------------
-- Créateur : Meteora
-- Type : Recolte/Artisanat
-- Zone : Astrub
---------------------------------------------

OPEN_BAGS = true

hasCrafted = false
tried = 0

DOOR_FROM_OUTSIDE = 411 -- Cell ID porte entrée alchi astrub : 411 
ALAMBIC_CELL = 284 -- Cell ID Alambic alchi astrub : 284 
ALAMBIC_ELEMENT = 463984 -- Element ID Alambic alchi astrub : 463984
DOOR_FROM_INSIDE = 396 -- Cell ID porte sortie alchi astrub : 396

GATHER = { 255 }
MIN_WATER_FOR_CRAFTING = 50

AUTO_DELETE = {  }

function beginAlchimist() -- Check si on a assez d'eau. Si oui, on craft, sinon, on repart!

	if inventory:itemCount(311) < MIN_WATER_FOR_CRAFTING then -- Continue la récolte 
		global:printError("Oops! On a pas encore assez récolté d'eau, on repart.")
		tried = 1
		map:moveToCell(DOOR_FROM_INSIDE)
	else
		global:printSuccess("On a assez d'eau, on va crafter " .. MIN_WATER_FOR_CRAFTING .. "x Potions de Rappel au minimum :)")
		beginCrafting()
	end
end

function beginCrafting() -- Fonction de craft
	if map:onMap("83628032") then
		if job:level(26) > 20 then
			map:door(ALAMBIC_CELL) -- On "allume" l'alambic
			craft:PutItem(428,4) -- on met 4 sauges
			craft:PutItem(311,1) -- on met 1 eau

			if math.floor(inventory:itemCount(428) / 4) > math.floor(inventory:itemCount(311) / 1) then -- Si l'eau est la qté limitante
				quantity = math.floor(inventory:itemCount(311) / 1)
			else -- Si la sauge est la qté limitante
				quantity = math.floor(inventory:itemCount(428) / 4)
			end

			craft:ChangeQuantityToCraft(quantity)
			quantityToStore = quantity
			craft:Ready()

			global:printMessage("[CRAFT] " ..  quantity .. " Potion(s) de Rappel crée(s).")
			hasCrafted = true
			global:leaveDialog()
			map:moveToCell(DOOR_FROM_INSIDE)
		end

	end	
end

function storePotions() -- Fonction qui parle au banquier et stocke les potions
	exchange:LaunchExchangeWithPlayer(551043137554)
	global:delay(1000)
	exchange:putAllItems()
	global:delay(1000)
	exchange:Ready()
	
	hasCrafted = false

	global:printSuccess("Potions stockée(s)!")
	map:moveToCell(396) -- Et on repart!
end

function puit() -- Fonction qui utilise les puits par rapport au map:onMap(X,Y)
	if map:onMap("0,-22") then
	map:door(382)
	elseif map:onMap("0,-17") then
	map:door(474)
	elseif map:onMap("1,-15") then
	map:door(467)
	elseif map:onMap("7,-19") then
	map:door(309)
	elseif map:onMap("7,-25") then
	map:door(453)
	elseif map:onMap("4,-27") then
	map:door(312)
	end
end

function right_special()
	tried = 0
	map:changeMap("right")
end

function move()
	--global:printMessage("Tried: " ..  tried)
	if ( map:onMap("84675074") or 
		map:onMap("5,-19") or
		map:onMap("5,-18") or 
		map:onMap("5,-17") or 
		map:onMap("5,-16") or 
		map:onMap("84674566") or 
		map:onMap("83887104")) and hasCrafted == true then -- Trajet pour aller vider ses crafts en banque 
		return {
			   { map="84675074", path = "bottom" },
		       { map="5,-19", path = "bottom" },
		       { map="5,-18", path = "bottom" },
		       { map="5,-17", path = "bottom" },
			   { map="5,-16", path = "left" },
			   { map="84674566", door = "303" },
			   { map="83887104", custom = storePotions },
		}
	elseif tried == 0 then
		return {
			{ map="4,-19", gather = true, path = "right" },
			{ map="5,-19", gather = true, path = "right" },
			{ map="6,-19", gather = true, path = "right" },
			{ map="7,-19", custom = puit, path = "right" },
			{ map="8,-19", gather = true, path = "bottom" },
			{ map="8,-18", gather = true, path = "bottom" },
			{ map="8,-17", gather = true, path = "bottom" },
			{ map="8,-16", gather = true, path = "bottom" },
			{ map="8,-15", gather = true, path = "right" },
			{ map="9,-15", gather = true, path = "right" },
			{ map="10,-15", gather = true, path = "top" },
			{ map="10,-16", gather = true, path = "right" },
			{ map="11,-16", gather = true, path = "top" },
			{ map="11,-17", gather = true, path = "top" },
			{ map="11,-18", gather = true, path = "left" },
			{ map="10,-18", gather = true, path = "top" },
			{ map="10,-19", gather = true, path = "top" },
			{ map="10,-20", gather = true, path = "top" },
			{ map="10,-21", gather = true, path = "top" },
			{ map="10,-22", gather = true, path = "left" },
			{ map="9,-22", gather = true, path = "bottom" },
			{ map="9,-21", gather = true, path = "left" },
			{ map="8,-21", gather = true, path = "top" },
			{ map="8,-22", gather = true, path = "left" },
			{ map="7,-22", gather = true, path = "top" },
			{ map="7,-23", gather = true, path = "top" },
			{ map="7,-24", gather = true, path = "left" },
			{ map="6,-24", gather = true, path = "left" },
			{ map="5,-24", gather = true, path = "left" },
			{ map="4,-24", gather = true, path = "top" },
			{ map="4,-25", gather = true, path = "right" },
			{ map="5,-25", gather = true, path = "top" },
			{ map="5,-26", gather = true, path = "right" },
			{ map="6,-26", gather = true, path = "top" },
			{ map="6,-27", gather = true, path = "top" },
			{ map="6,-28", gather = true, path = "top" },
			{ map="6,-29", gather = true, path = "top" },
			{ map="6,-30", gather = true, path = "left" },
			{ map="5,-30", gather = true, path = "bottom" },
			{ map="5,-29", gather = true, path = "left" },
			{ map="4,-29", gather = true, path = "bottom" },
			{ map="4,-28", gather = true, path = "bottom" },
			{ map="4,-27", custom = puit, path = "left" },
			{ map="3,-27", gather = true, path = "top" },
			{ map="3,-28", gather = true, path = "left" },
			{ map="2,-28", gather = true, path = "bottom" },
			{ map="2,-27", gather = true, path = "bottom" },
			{ map="2,-26", gather = true, path = "left" },
			{ map="1,-26", gather = true, path = "top" },
			{ map="1,-27", gather = true, path = "left" },
			{ map="0,-27", gather = true, path = "bottom" },
			{ map="0,-26", gather = true, path = "bottom" },
			{ map="0,-25", gather = true, path = "left" },
			{ map="-1,-25", gather = true, path = "bottom" },
			{ map="-1,-24", gather = true, path = "left" },
			{ map="-2,-24", gather = true, path = "bottom" },
			{ map="-2,-23", gather = true, path = "bottom" },
			{ map="-2,-22", gather = true, path = "bottom" },
			{ map="-2,-21", gather = true, path = "bottom" },
			{ map="-2,-20", gather = true, path = "bottom" },
			{ map="-2,-19", gather = true, path = "bottom" },
			{ map="-2,-18", gather = true, path = "left" },
			{ map="-3,-18", gather = true, path = "bottom" },
			{ map="-3,-17", gather = true, path = "bottom" },
			{ map="-3,-16", gather = true, path = "right" },
			{ map="-2,-16", gather = true, path = "bottom" },
			{ map="-2,-15", gather = true, path = "bottom" },
			{ map="-2,-14", gather = true, path = "right" },
			{ map="-1,-14", gather = true, path = "top" },
			{ map="-1,-15", gather = true, path = "right" },
			{ map="0,-15", gather = true, path = "right" },
			{ map="1,-15", custom = puit, path = "top" },
			{ map="1,-16", gather = true, path = "top" },
			{ map="1,-17", gather = true, path = "left" },
			{ map="0,-17", custom = puit, path = "left" },
			{ map="-1,-17", gather = true, path = "top" },
			{ map="-1,-18", gather = true, path = "top" },
			{ map="-1,-19", gather = true, path = "top" },
			{ map="-1,-20", gather = true, path = "top" },
			{ map="-1,-21", gather = true, path = "right" },
			{ map="0,-21", gather = true, path = "top" },
			{ map="0,-22", custom = puit, path = "right" },
			{ map="1,-22", gather = true, path = "right" },
			{ map="2,-22", gather = true, path = "bottom" },
			{ map="2,-21", gather = true, path = "bottom" },
			{ map="2,-20", gather = true, path = "bottom" },
			{ map="2,-19", gather = true, path = "bottom" },
			{ map="2,-18", gather = true, path = "right" },
			{ map="3,-18", gather = true, path = "right" },
			{ map="3,-18", gather = true, path = "right" },
			{ map="4,-18", path = "right" },
			{ map="5,-18", path = "top" },
			{ map="5,-19", path = "top" },
			{ map="84675074", door = "411"}, --alchi exté
			{ map="83628032", custom = beginAlchimist}, --alchi inté
			{ map = "83887104", path = "396" }, --banque
			{ map="4,-16", path = "right" },
			{ map="5,-16", path = "right" },
			{ map="6,-16", path = "top" },
			{ map="6,-17", path = "top" },
			{ map="6,-18", path = "top" },
			{ map="6,-20", path = "bottom" },
		}
	elseif tried == 1 then
		return {
			{ map="84675074", path = "bottom"}, --alchi exté
			{ map="5,-19", custom = right_special}, --alchi exté
		}
	end
end

function bank()
	return {
		{ map="4,-19", path = "bottom" },
		{ map="5,-19", path = "left" },
		{ map="6,-19", path = "left" },
		{ map="7,-19", path = "left" },
		{ map="8,-19", path = "left" },
		{ map="8,-18", path = "top" },
		{ map="8,-17", path = "top" },
		{ map="8,-16", path = "top" },
		{ map="8,-15", path = "top" },
		{ map="9,-15", path = "left" },
		{ map="10,-15", path = "left" },
		{ map="10,-16", path = "left" },
		{ map="11,-16", path = "left" },
		{ map="11,-17", path = "left" },
		{ map="11,-18", path = "left" },
		{ map="10,-18", path = "left" },
		{ map="10,-19", path = "left" },
		{ map="10,-20", path = "left" },
		{ map="10,-21", path = "left" },
		{ map="10,-22", path = "left" },
		{ map="9,-22", path = "left" },
		{ map="9,-21", path = "left" },
		{ map="8,-21", path = "bottom" },
		{ map="8,-22", path = "bottom" },
		{ map="7,-22", path = "left" },
		{ map="7,-23", path = "left" },
		{ map="7,-24", path = "left" },
		{ map="6,-24", path = "bottom" },
		{ map="5,-24", path = "bottom" },
		{ map="4,-24", path = "bottom" },
		{ map="4,-25", path = "bottom" },
		{ map="5,-25", path = "bottom" },
		{ map="5,-26", path = "bottom" },
		{ map="6,-26", path = "bottom" },
		{ map="6,-27", path = "bottom" },
		{ map="6,-28", path = "bottom" },
		{ map="6,-29", path = "bottom" },
		{ map="6,-30", path = "bottom" },
		{ map="5,-30", path = "bottom" },
		{ map="5,-29", path = "bottom" },
		{ map="4,-29", path = "bottom" },
		{ map="4,-28", path = "bottom" },
		{ map="4,-27", path = "bottom" },
		{ map="3,-27", path = "bottom" },
		{ map="3,-28", path = "bottom" },
		{ map="2,-28", path = "bottom" },
		{ map="2,-27", path = "bottom" },
		{ map="2,-26", path = "left" },
		{ map="1,-26", path = "top" },
		{ map="1,-27", path = "left" },
		{ map="0,-27", path = "bottom" },
		{ map="0,-26", path = "bottom" },
		{ map="0,-25", path = "left" },
		{ map="-1,-25", path = "bottom" },
		{ map="-1,-24", path = "left" },
		{ map="-2,-24", path = "bottom" },
		{ map="-2,-23", path = "bottom" },
		{ map="-2,-22", path = "bottom" },
		{ map="-2,-21", path = "bottom" },
		{ map="-2,-20", path = "bottom" },
		{ map="-2,-19", path = "bottom" },
		{ map="-2,-18", path = "left" },
		{ map="-3,-18", path = "bottom" },
		{ map="-3,-17", path = "bottom" },
		{ map="-3,-16", path = "right" },
		{ map="-2,-16", path = "bottom" },
		{ map="-2,-15", path = "bottom" },
		{ map="-2,-14", path = "right" },
		{ map="-1,-14", path = "top" },
		{ map="-1,-15", path = "right" },
		{ map="0,-15", path = "right" },
		{ map="1,-15", path = "top" },
		{ map="1,-16", path = "right" },
		{ map="1,-17", path = "left" },
		{ map="0,-17", path = "left" },
		{ map="-1,-17", path = "top" },
		{ map="-1,-18", path = "top" },
		{ map="-1,-19", path = "top" },
		{ map="-1,-20", path = "top" },
		{ map="-1,-21", path = "right" },
		{ map="0,-21", path = "top" },
		{ map="0,-22", path = "right" },
		{ map="1,-22", path = "right" },
		{ map="2,-22", path = "bottom" },
		{ map="2,-21", path = "bottom" },
		{ map="2,-20", path = "bottom" },
		{ map="2,-19", path = "bottom" },
		{ map="2,-18", path = "right" },
		{ map="3,-18", path = "right" },
		{ map="2,-16", path = "right" },
		{ map="3,-16", path = "right" },
		{ map="3,-26", path = "bottom" },
		{ map="3,-25", path = "bottom" },
		{ map="3,-24", path = "bottom" },
		{ map="4,-26", path = "bottom" },
		{ map="5,-28", path = "bottom" },
		{ map="5,-27", path = "bottom" },
		{ map="6,-25", path = "bottom" },
		{ map="6,-22", path = "top" },
		{ map="6,-23", path = "left" },
		{ map="4,-23", path = "right" },
		{ map="5,-23", path = "bottom" },
		{ map="5,-22", path = "left" },
		{ map="4,-22", path = "bottom" },
		{ map="4,-21", path = "bottom" },
		{ map="4,-20", path = "bottom" },
		{ map="4,-18", path = "bottom" },
		{ map="4,-17", path = "bottom" },
		{ map="9,-16", path = "left" },
		{ map="10,-17", path = "left" },
		{ map="9,-17", path = "left" },
		{ map="9,-18", path = "left" },
		{ map="9,-19", path = "left" },
		{ map="9,-20", path = "left" },
		{ map="8,-20", path = "bottom" },
		{ map = "84674566", door = "303" },
		{ map = "83887104", npcBank = true, path = "396"}, 
	}
end
