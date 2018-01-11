PODS_LIBRES = inventory:podsMax() - inventory:pods()

function getting(what, nbcraft)
    npc:npcBank(-1)
    exchange:getItem(what, nbcraft)
    global:leavedialog()
end

function crafting(what, quantity)
	global:delay(2000)
	map:door(ALAMBIC_CELL)
    global:delay(2000) -- Délais obligatoires ou le serveur vous éjecte à cause de votre rapidité !
    craft:PutItem(what, quantity) -- On pose les items
    global:delay(2000)
   craft:ChangeQuantityToCraft(nbcraft) -- On change la quantité
    global:delay(2000) 
    craft:Ready() -- On valide le craft
    global:printMessage("craft reussit" .. nbcraft .. "pains debiles crees")
    global:delay(2000)
    global:leavedialog() -- On quitte l'atelier
end

function move()

if job:level(36) < 100 then
	what = 1782
	quantity = 4

	nbcraft = PODS_LIBRES / 4
	nbcraft = nbcraft * 2
end

end

function bank()
	return{

}
end