---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
items_paysan = {
    {itemid = 11109, minimal = 0, lot = 100, price = 0, edit = 0}, -- Frostiz
    {itemid = 16456, minimal = 0, lot = 100, price = 0, edit = 0}, -- Millet
    {itemid = 16454, minimal = 0, lot = 100, price = 0, edit = 0}, -- Maïs
    {itemid = 425, minimal = 0, lot = 100, price = 0, edit = 0}, -- Chanvre
    {itemid = 405, minimal = 0, lot = 100, price = 0, edit = 0}, -- Malt
    {itemid = 7018, minimal = 0, lot = 100, price = 0, edit = 0}, -- Riz
    {itemid = 532, minimal = 0, lot = 100, price = 0, edit = 0}, -- Seigle
    {itemid = 423, minimal = 0, lot = 100, price = 0, edit = 0}, -- Lin
    {itemid = 401, minimal = 0, lot = 100, price = 0, edit = 0}, -- Houblon
    {itemid = 533, minimal = 0, lot = 100, price = 0, edit = 0}, -- Avoine
    {itemid = 400, minimal = 0, lot = 100, price = 0, edit = 0}, -- Orge
    {itemid = 289, minimal = 0, lot = 100, price = 0, edit = 0} -- Blé
}
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

temps_en_deux_vente = 600000

stopbank = true

hdv_paysan = true

deco = false

gosell = false
gobank = true

onsale = 2000

zaapi_paysan = "zaapi(145716)"
hdvpaysan = "145716"

function lotselecter(lot)
    if lot == 100 then
        return 3
    elseif lot == 10 then
        return 2
    elseif lot == 1 then
        return 1
    end
end

function whilequant(lot)
    if lot == 100 then
        return 99
    elseif lot == 10 then
        return 9
    elseif lot == 1 then
        return 0
    end
end

function saleupdate(npcid, item_to_sell)
    npc:npc(npcid, 5)
    for i, item in ipairs(item_to_sell) do
        for var = 1, sale:ItemsOnSale() do
            if sale:GetItemGID(var) == item.itemid then
                if item.price == 0 and sale:GetItemPrice(var) ~= sale:GetpriceItem(item.itemid, lotselecter(item.lot)) then
                    item.price = math.max(sale:GetpriceItem(item.itemid, lotselecter(item.lot)) - 1, item.minimal)
                elseif item.price ~= sale:GetpriceItem(item.itemid, lotselecter(item.lot)) then
                    item.price = math.max(sale:GetpriceItem(item.itemid, lotselecter(item.lot)) - 1, item.minimal)
                else
                    item.price = math.max(sale:GetpriceItem(item.itemid, lotselecter(item.lot)), item.minimal)
                end
                if
                    sale:GetItemPrice(var) ~= item.minimal and
                        sale:GetItemPrice(var) ~= sale:GetpriceItem(item.itemid, lotselecter(item.lot))
                 then
                    item.edit = sale:GetItemGUID(var)
                    sale:EditPrice(item.edit, item.price, item.lot)
                    global:printSuccess(
                        "[Vente] Actualisation du prix de l'item : [" ..
                            inventory:itemNameId(sale:GetItemGID(var)) ..
                                "] GUID : " .. item.edit .. " à " .. item.price .. " K."
                    )
                else
                    item.edit = sale:GetItemGUID(var)
                    global:printSuccess(
                        "[Vente] Actualisation du prix de l'item : [" ..
                            inventory:itemNameId(sale:GetItemGID(var)) ..
                                "] GUID : " .. item.edit .. " n'est pas nécessaire."
                    )
                end
            end
        end
        if item.price == 0 then
            item.price = math.max(sale:GetpriceItem(item.itemid, lotselecter(item.lot)) - 1, item.minimal)
        end
        if onsale == 0 then
            onsale = sale:ItemsOnSale()
        end
        while (inventory:itemCount(item.itemid) > whilequant(item.lot)) and (sale:AvailableSpace() > 0) do
            sale:SellItem(item.itemid, item.lot, item.price)
            global:printSuccess(
                "[Vente] Mise en vente de l'item : [" ..
                    inventory:itemNameId(item.itemid) .. "] GID : " .. item.itemid .. " à " .. item.price .. " K."
            )
            onsale = onsale + 1
        end
    end
    global:printSuccess("[Vente] Slot HDV : " .. onsale .. " / " .. character:level())
    onsale = 0
    npc:leaveDialog()
end

function selling(npcid, item_to_sell) --selling(stopbank_chasseur, 580, ITEMS_TO_SELL_CHASSEUR, prices_chasseur, MINIMAL_PRICES_CHASSEUR, hdv_chasseur_edit)
    if gosell and stopbank then
        gosell = false
        global:printSuccess("[Vente] Mise en vente & Actualisation.")
        saleupdate(npcid, item_to_sell)
        global:printSuccess("[Vente] Actualisation fini.")
        if sale:AvailableSpace() == 0 then
            global:printSuccess(
                "[Vente] HDV plein on attend " .. temps_en_deux_vente / 60000 .. " min et on recommence."
            )
            global:delay(temps_en_deux_vente)
        end
    elseif not stopbank then
        global:printSuccess("[Vente] Banque vide, Mise en vente & Actualisation.")
        saleupdate(npcid, item_to_sell)
        global:printSuccess("[Vente] Banque vide on attend 10 min et on recommence.")
        global:delay(temps_en_deux_vente)
    end
    return {
        {map = map:currentMap(), path = "zaapi(147254)"}
    }
end

function takeitem(item_to_sell)
    npc:npcBank(-1)
    exchange:putAllItems()
    inventaire = inventory:podsP()
    gosell = true
    ------------------------------------------- --------------------------------------------------------------------------------------------------------------------------------------------
    for i, item in ipairs(item_to_sell) do
        quant =
            math.floor(
            math.min(
                ((inventory:podsMax() - 200) - (inventory:pods())) / inventory:itemWeight(item.itemid),
                exchange:storageItemQuantity(item.itemid)
            ) / item.lot
        ) * item.lot
        if quant ~= 0 then
            exchange:getItem(item.itemid, quant)
        end
    end
    ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    if inventaire == inventory:podsP() then
        global:printSuccess("[Vente] Banque vide.")
        stopbank = false
    end
    global:leaveDialog()
    return {
        {map = map:currentMap(), path = "424"}
    }
end

function main(npcid, item_to_sell, hdv, zaapi)
    if gosell then -- Condition validée quand on a plus de 10% de pods
        if map:onMap(hdv) then
            return selling(npcid, item_to_sell)
        else
            return {
                {map = "147254", path = zaapi} -- extérieur banque
            }
        end
    elseif gobank then -- Condition validée quand on a moins de 10% de pods et qu'il y a encore des item a prendre en banque (sous entendu on a des items à aller vendre)
        if map:onMap("2885641") then
            return takeitem(item_to_sell)
        else
            return {
                {map = "147254", door = "383"} -- extérieur banque
            }
        end
    end
end

function move()
    if not deco and not map:onMap("2885641") and not map:onMap("147254") then
        map:changeMap("zaapi(147254)")
    else
        deco = true
    end
    if hdv_paysan then
        return main(576, items_paysan, hdvpaysan, zaapi_paysan)
    end
end

function bank()
    global:printError("WTF are u doing there ?!")
    global:printError("[Vente] Tu a oublier de mettre 101%")
end

-- function phenix()
--     global:printError("WTF are u doing there ?!")
--     global:printError("[Vente] Mais comment tu a réussi a crever dans un script de vente ?!")
-- end
