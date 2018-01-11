itemID = 289 -- ID de l'objet
nbL = 3 -- Numéro du lots (1=1; 2=10; 3=100)
prixB = 2000 -- Prix de base si aucun exemplaire en vente

function move()
	quantity()
	if itemInInventory() == true then
		return {
			{ map = "83887104", path = "396" },
			{ map = "84674566", path = "left" },
			{ map = "84674054", path = "top" },
			{ map = "84674053", custom = sellItems },
		}
	else
		return {
			{ map = "84674053", path = "bottom" },
			{ map = "84674054", path = "right" },
			{ map = "84674566", door = "303" },
			{ map = "83887104", custom = takeItemToSell },
		}
	end
end

function sellItems()
	npc:npc(551,5)
	if sale:AvailableSpace() == 0 then
		global:printMessage("Plus de place dans l'HDV")
		global:finishScript()
	end
	itemP = sale:GetpriceItem(itemID,nbL)
	if itemP == nil then
		while (inventory:itemCount(itemID) > itemQ-1) and (sale:AvailableSpace() > 0) do
			sale:SellItem(itemID, itemQ, prixB)
		end
	else
		while (inventory:itemCount(itemID) > itemQ-1) and (sale:AvailableSpace() > 0) do
			sale:SellItem(itemID, itemQ, itemP)
		end
	end
	global:leaveDialog()
	while map:onMap("84674053") == true do
		global:delay(500)
		map:changeMap("bottom")
	end
end

function takeItemToSell()
	npc:npcBank(-1)
	if exchange:storageItemQuantity(itemID) < itemQ then
		global:printMessage("Il n'y a plus rien a vendre")
		global:finishScript()
	end
	while (exchange:storageItemQuantity(itemID) > itemQ-1) and ((inventory:podsMax() - inventory:pods()) > (inventory:itemWeight(itemID) * itemQ)) do
		exchange:getItem(itemID,itemQ)
	end
	global:leaveDialog()
	while map:onMap("83887104") == true do
		global:delay(500)
		map:moveToCell(396)
	end
end

function itemInInventory()
	if inventory:itemCount(itemID) > itemQ-1 then
		return true
	else
		return false
	end
end

function quantity()
	if nbL == 1 then
		itemQ = 1
		return true
	end
	if nbL == 2 then
		itemQ = 10
		return true
	end
	if nbL == 3 then
		itemQ = 100
		return true
	end
	global:printError("La variable nbL est incorrect")
	global:finishScript()
end
