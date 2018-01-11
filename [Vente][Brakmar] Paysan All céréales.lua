Priceitem_ble = 0
Priceitem_orge = 0
Priceitem_avoine = 0
Priceitem_houblon = 0
Priceitem_lin = 0
Priceitem_seigle = 0
Priceitem_riz = 0
Priceitem_malt = 0
Priceitem_chanvre = 0
Priceitem_mais = 0
Priceitem_millet = 0
Priceitem_frostiz = 0
Priceitem_quinsoa = 0

stopbank = true

zaapi_banque = "zaapi(144931)"
banque = "144931"

zaapi_paysan = "zaapi(143392)"
paysan = "143392"


function move()
if inventory:podsP() < 10 and stopbank == true then -- Condition validée quand on a moins de 10% de pods et qu'il y a encore des item a prendre en banque (sous entendu on a des items à aller vendre)
    return {
		{ map = "8912911", custom  = takeitem, path = "424" }, -- intérieur banque
		{ map = banque, door = "175" }, -- extérieur banque
		{ map = paysan, custom = zaapi_paysan, path = zaapi_banque },
	}
end
if inventory:podsP() < 10 and stopbank == false then -- Condition validée quand on a moins de 10% de pods et qu'il y a encore des item a prendre en banque (sous entendu on a des items à aller vendre)
    return {
		{ map = "8912911", path = "424" }, -- intérieur banque
		{ map = banque, path = zaapi_paysan }, -- extérieur banque
		{ map = paysan, custom = selling_paysan, path = zaapi_banque },
	}
end
if inventory:podsP() > 10 then -- Condition validée quand on a plus de 10% de pods
    return {
		{ map = "8912911", path = "424" }, -- intérieur banque
		{ map = banque, path = zaapi_paysan }, -- extérieur banque
		{ map = paysan, custom = selling_paysan, path = zaapi_banque },
	}
end
end


function takeitem()
npc:npcBank(-1)
exchange:putAllItems()
inventaire = inventory:podsP()
while (exchange:storageItemQuantity(289) > 99) and ((inventory:podsMax() - inventory:pods()) > (inventory:itemWeight(289) * 100)) do -- Blé
		exchange:getItem(289, 100)
end
while (exchange:storageItemQuantity(400) > 99) and ((inventory:podsMax() - inventory:pods()) > (inventory:itemWeight(400) * 100)) do -- orge
		exchange:getItem(400, 100)
end
while (exchange:storageItemQuantity(533) > 99) and ((inventory:podsMax() - inventory:pods()) > (inventory:itemWeight(533) * 100)) do -- Avoine
	   exchange:getItem(533, 100)
end
while (exchange:storageItemQuantity(401) > 99) and ((inventory:podsMax() - inventory:pods()) > (inventory:itemWeight(401) * 100)) do -- Houblon
		exchange:getItem(401, 100)
end
while (exchange:storageItemQuantity(423) > 99) and ((inventory:podsMax() - inventory:pods()) > (inventory:itemWeight(423) * 100)) do -- lin
		exchange:getItem(423, 100)
end
while (exchange:storageItemQuantity(532) > 99) and ((inventory:podsMax() - inventory:pods()) > (inventory:itemWeight(532) * 100)) do -- Seigle
		exchange:getItem(532, 100)
end
while (exchange:storageItemQuantity(7018) > 99) and ((inventory:podsMax() - inventory:pods()) > (inventory:itemWeight(7018) * 100)) do -- riz
		exchange:getItem(7018, 100)
end
while (exchange:storageItemQuantity(442) > 99) and ((inventory:podsMax() - inventory:pods()) > (inventory:itemWeight(442) * 100)) do -- Malt
		exchange:getItem(442, 100)
end
while (exchange:storageItemQuantity(425) > 99) and ((inventory:podsMax() - inventory:pods()) > (inventory:itemWeight(425) * 100)) do -- chanvre
		exchange:getItem(425, 100)
end
while (exchange:storageItemQuantity(16454) > 99) and ((inventory:podsMax() - inventory:pods()) > (inventory:itemWeight(16454) * 100)) do -- Mais
		exchange:getItem(16454, 100)
end
while (exchange:storageItemQuantity(16456) > 99) and ((inventory:podsMax() - inventory:pods()) > (inventory:itemWeight(16456) * 100)) do -- Millet
		exchange:getItem(16456, 100)
end
while (exchange:storageItemQuantity(11109) > 99) and ((inventory:podsMax() - inventory:pods()) > (inventory:itemWeight(11109) * 100)) do -- Frostiz
		exchange:getItem(11109, 100)
end
while (exchange:storageItemQuantity(17993) > 99) and ((inventory:podsMax() - inventory:pods()) > (inventory:itemWeight(17993) * 100)) do -- Quinsnoa
		exchange:getItem(17993, 100)
end
if inventaire == inventory:podsP() then
stopbank = false
end
global:leaveDialog()
end

function selling_paysan()
npc:npc(590,5)
while inventory:podsP() > 10 do
if sale:AvailableSpace() > 0 then
if Priceitem_ble == 0 then
	Priceitem_ble = sale:GetpriceItem(289, 3) -- ble
	while (inventory:itemCount(289) > 99) and (sale:AvailableSpace() > 0) do
		sale:SellItem(289, 100, Priceitem_ble -1)
	end
elseif Priceitem_ble == sale:GetpriceItem(289, 3) then
		while (inventory:itemCount(289) > 99) and (sale:AvailableSpace() > 0) do
		sale:SellItem(289, 100, Priceitem_ble)
		end
	else
		while (inventory:itemCount(289) > 99) and (sale:AvailableSpace() > 0) do
		sale:SellItem(289, 100, Priceitem_ble -1)
		end
 end

 if Priceitem_orge == 0 then
	Priceitem_orge = sale:GetpriceItem(400, 3) -- orge
	while (inventory:itemCount(400) > 99) and (sale:AvailableSpace() > 0) do
		sale:SellItem(400, 100, Priceitem_orge -1)
	end
elseif Priceitem_orge == sale:GetpriceItem(400, 3) then
		while (inventory:itemCount(400) > 99) and (sale:AvailableSpace() > 0) do
		sale:SellItem(400, 100, Priceitem_orge)
		end
	else
		while (inventory:itemCount(400) > 99) and (sale:AvailableSpace() > 0) do
		sale:SellItem(400, 100, Priceitem_orge -1)
		end
 end

 if Priceitem_avoine == 0 then
	Priceitem_avoine = sale:GetpriceItem(533, 3) -- avoine
	while (inventory:itemCount(533) > 99) and (sale:AvailableSpace() > 0) do
		sale:SellItem(533, 100, Priceitem_avoine -1)
	end
elseif Priceitem_avoine == sale:GetpriceItem(533, 3) then
		while (inventory:itemCount(533) > 99) and (sale:AvailableSpace() > 0) do
		sale:SellItem(533, 100, Priceitem_avoine)
		end
	else
		while (inventory:itemCount(533) > 99) and (sale:AvailableSpace() > 0) do
		sale:SellItem(533, 100, Priceitem_avoine -1)
		end
 end
 
 if Priceitem_houblon == 0 then
	Priceitem_houblon = sale:GetpriceItem(401, 3) -- houblon
	while (inventory:itemCount(401) > 99) and (sale:AvailableSpace() > 0) do
		sale:SellItem(401, 100, Priceitem_houblon -1)
	end
elseif Priceitem_houblon == sale:GetpriceItem(401, 3) then
		while (inventory:itemCount(401) > 99) and (sale:AvailableSpace() > 0) do
		sale:SellItem(401, 100, Priceitem_houblon)
		end
	else
		while (inventory:itemCount(401) > 99) and (sale:AvailableSpace() > 0) do
		sale:SellItem(401, 100, Priceitem_houblon -1)
		end
 end

 if Priceitem_lin == 0 then
	Priceitem_lin = sale:GetpriceItem(423, 3) -- lin
	while (inventory:itemCount(423) > 99) and (sale:AvailableSpace() > 0) do
		sale:SellItem(423, 100, Priceitem_lin -1)
	end
elseif Priceitem_lin == sale:GetpriceItem(423, 3) then
		while (inventory:itemCount(423) > 99) and (sale:AvailableSpace() > 0) do
		sale:SellItem(423, 100, Priceitem_lin)
		end
	else
		while (inventory:itemCount(423) > 99) and (sale:AvailableSpace() > 0) do
		sale:SellItem(423, 100, Priceitem_lin -1)
		end
 end

 if Priceitem_seigle == 0 then
	Priceitem_seigle = sale:GetpriceItem(532, 3) -- seigle
	while (inventory:itemCount(532) > 99) and (sale:AvailableSpace() > 0) do
		sale:SellItem(532, 100, Priceitem_seigle -1)
	end
elseif Priceitem_seigle == sale:GetpriceItem(532, 3) then
		while (inventory:itemCount(532) > 99) and (sale:AvailableSpace() > 0) do
		sale:SellItem(532, 100, Priceitem_seigle)
		end
	else
		while (inventory:itemCount(532) > 99) and (sale:AvailableSpace() > 0) do
		sale:SellItem(532, 100, Priceitem_seigle -1)
		end
 end

 if Priceitem_riz == 0 then
	Priceitem_riz = sale:GetpriceItem(7018, 3) -- riz
	while (inventory:itemCount(7018) > 99) and (sale:AvailableSpace() > 0) do
		sale:SellItem(7018, 100, Priceitem_riz -1)
	end
elseif Priceitem_riz == sale:GetpriceItem(7018, 3) then
		while (inventory:itemCount(7018) > 99) and (sale:AvailableSpace() > 0) do
		sale:SellItem(7018, 100, Priceitem_riz)
		end
	else
		while (inventory:itemCount(7018) > 99) and (sale:AvailableSpace() > 0) do
		sale:SellItem(7018, 100, Priceitem_riz -1)
		end
 end
 
 if Priceitem_malt == 0 then
	Priceitem_malt = sale:GetpriceItem(405, 3) -- malt
	while (inventory:itemCount(405) > 99) and (sale:AvailableSpace() > 0) do
		sale:SellItem(405, 100, Priceitem_malt -1)
	end
elseif Priceitem_malt == sale:GetpriceItem(405, 3) then
		while (inventory:itemCount(405) > 99) and (sale:AvailableSpace() > 0) do
		sale:SellItem(405, 100, Priceitem_malt)
		end
	else
		while (inventory:itemCount(405) > 99) and (sale:AvailableSpace() > 0) do
		sale:SellItem(405, 100, Priceitem_malt -1)
		end
 end

 if Priceitem_chanvre == 0 then
	Priceitem_chanvre = sale:GetpriceItem(425, 3) -- chanvre
	while (inventory:itemCount(425) > 99) and (sale:AvailableSpace() > 0) do
		sale:SellItem(425, 100, Priceitem_chanvre -1)
	end
elseif Priceitem_chanvre == sale:GetpriceItem(425, 3) then
		while (inventory:itemCount(425) > 99) and (sale:AvailableSpace() > 0) do
		sale:SellItem(425, 100, Priceitem_chanvre)
		end
	else
		while (inventory:itemCount(425) > 99) and (sale:AvailableSpace() > 0) do
		sale:SellItem(425, 100, Priceitem_chanvre -1)
		end
 end
 
 if Priceitem_mais == 0 then
	Priceitem_mais = sale:GetpriceItem(16454, 3) -- mais
	while (inventory:itemCount(16454) > 99) and (sale:AvailableSpace() > 0) do
		sale:SellItem(16454, 100, Priceitem_mais -1)
	end
elseif Priceitem_mais == sale:GetpriceItem(16454, 3) then
		while (inventory:itemCount(16454) > 99) and (sale:AvailableSpace() > 0) do
		sale:SellItem(16454, 100, Priceitem_mais)
		end
	else
		while (inventory:itemCount(16454) > 99) and (sale:AvailableSpace() > 0) do
		sale:SellItem(16454, 100, Priceitem_mais -1)
		end
 end

 if Priceitem_millet == 0 then
	Priceitem_millet = sale:GetpriceItem(16456, 3) -- millet
	while (inventory:itemCount(16456) > 99) and (sale:AvailableSpace() > 0) do
		sale:SellItem(16456, 100, Priceitem_millet -1)
	end
elseif Priceitem_millet == sale:GetpriceItem(16456, 3) then
		while (inventory:itemCount(16456) > 99) and (sale:AvailableSpace() > 0) do
		sale:SellItem(16456, 100, Priceitem_millet)
		end
	else
		while (inventory:itemCount(16456) > 99) and (sale:AvailableSpace() > 0) do
		sale:SellItem(16456, 100, Priceitem_millet -1)
		end
 end

 if Priceitem_frostiz == 0 then
	Priceitem_frostiz = sale:GetpriceItem(11109, 3) -- frostiz
	while (inventory:itemCount(11109) > 99) and (sale:AvailableSpace() > 0) do
		sale:SellItem(11109, 100, Priceitem_frostiz -1)
	end
elseif Priceitem_frostiz == sale:GetpriceItem(11109, 3) then
		while (inventory:itemCount(11109) > 99) and (sale:AvailableSpace() > 0) do
		sale:SellItem(11109, 100, Priceitem_frostiz)
		end
	else
		while (inventory:itemCount(11109) > 99) and (sale:AvailableSpace() > 0) do
		sale:SellItem(11109, 100, Priceitem_frostiz -1)
		end
 end

 if Priceitem_quinsoa == 0 then
	Priceitem_quinsoa = sale:GetpriceItem(17993, 3) -- quinsoa
	while (inventory:itemCount(17993) > 99) and (sale:AvailableSpace() > 0) do
		sale:SellItem(17993, 100, Priceitem_quinsoa -1)
	end
elseif Priceitem_quinsoa == sale:GetpriceItem(17993, 3) then
		while (inventory:itemCount(17993) > 99) and (sale:AvailableSpace() > 0) do
		sale:SellItem(17993, 100, Priceitem_quinsoa)
		end
	else
		while (inventory:itemCount(17993) > 99) and (sale:AvailableSpace() > 0) do
		sale:SellItem(17993, 100, Priceitem_quinsoa -1)
		end
 end
 
else
npc:leaveDialog()
while sale:AvailableSpace() == 0 do
npc:npc(590,5)
sale:UpdateAllItems()
npc:leaveDialog()
end
return selling_paysan()
end
end
while stopbank == false do
npc:npc(590,5)
sale:UpdateAllItems()
npc:leaveDialog()
end
npc:leaveDialog()
end
