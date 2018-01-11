pods_libre = inventory:podsMax() - inventory:pods()
nbcraftbank = pods_libre / 8
nbcraft = inventory:itemCount(289) / 4
BLE = 289
ALAMBIC_CELL = 312

function talktobank()
    npc:npcBank(-1)
    exchange:getItem(ble, nbcraft)
    global:leaveDialog()
end

function crafting()
	global:delay(2000)
	map:door(ALAMBIC_CELL)
    global:delay(2000) -- Délais obligatoires ou le serveur vous éjecte à cause de votre rapidité !
    craft:PutItem(BLE, 4) -- On pose les items
    global:delay(2000)
    craft:ChangeQuantityToCraft(nbcraft) -- On change la quantité
    global:delay(2000) 
    craft:Ready() -- On valide le craft
    global:printMessage("craft reussit" .. nbcraft .. "pains debile cree")
    global:delay(2000)
    global:leaveDialog() -- On quitte l'atelier
end

function move()
    if inventory:podsP() < 3 then -- En dessous de 3% -> Direction la banque
        return {
            { map="4,-19", path = "bottom" },
            { map="4,-18", path = "bottom" },
            { map="4,-17", path = "bottom" },
            { map = "84674566", door = "303" },
            { map = "83887104", custom = talktobank, path = "396" },
        }
    end
    if inventory:podsP() > 2 then -- Au dessus de 2% -> Direction l'artisanat
        return {
            { map="4,-19", path = "bottom" },
            { map="4,-18", path = "bottom" },
            { map="4,-17", path = "bottom" },
            { map="4,-16", path = "left" },
            { map="3,-16", path = "left" },
            { map="2,-16", door = "256" },

            --bonta craft   
		    { map = "6291461", custom = crafting, path = "396" },

	}
    end
end