---------------------------------------------
-- Script created with My HAND avec amour :).
---------------------------------------------
-- Créateur : Drigtime
-- Type : Récolte
-- Zone : Astrub
-- Métier : Mineur
-- Départ: zaap Astrub
---------------------------------------------

OPEN_BAGS = true
GATHER = {17, 53, 55}

function move()
    return {
        {map = map:currentMap(), custom = processMap, gather = true, fight = false}
    }
end

mapsWithChangeMap = {
    {map = "4,-19", changeMap = "right"},
    {map = "84674564", changeMap = "top"},
    {map = "4,-17", changeMap = "top"},
    {map = "84674566", changeMap = "top"},
    {map = "5,-19", changeMap = "right"},
    {map = "84675587", changeMapDoor = "291"},
    {map = "101716483", changeMap = "171"},
    {map = "101715459", changeMap = "226", nextMap = "501", doNextMap = "no"},
    {map = "101714435", changeMap = "117", nextMap = "555", doNextMap = "no"},
    {map = "101714433", changeMap = "543"}
}

function bank()
    return {
        {map = "101716483", path = "522"},
        {map = "101715459", path = "501"},
        {map = "101714435", path = "555"},
		{map = "101714433", path = "543"},
		{map = "84675587", path = "left"},
		{map = "5,-19", path = "left"},
		{map = "4,-19", path = "bottom"},
        {map = "84674564", path = "bottom"},
        {map = "4,-17", path = "bottom"},
        {map = "84674566", door = "303"}, -- Map extérieur de la banque
        {map = "83887104", path = "396", npcBank = true}
    }
end

------------------------------------------------------------------------------------------------------------------
function processMap()
    for index, actualMap in pairs(mapsWithChangeMap) do
        if (map:onMap(actualMap.map)) then
            if (actualMap.doNextMap) and (actualMap.doThirdMap) and (actualMap.doFourthMap) then
                if (actualMap.doFourthMap) == "yes" then
                    actualMap.doFourthMap = "no"
                    if (actualMap.fourthMapDoor) then
                        actualMap.fourthMapDoor = tonumber(actualMap.fourthMapDoor)
                        map:door(actualMap.fourthMapDoor)
                    elseif (actualMap.fourthMapCustom) then
                        return (actualMap.fourthMapCustom)()
                    else
                        map:changeMap(actualMap.fourthMap)
                    end
                elseif (actualMap.doThirdMap) == "yes" then
                    actualMap.doThirdMap = "no"
                    actualMap.doFourthMap = "yes"
                    if (actualMap.thirdMapDoor) then
                        actualMap.thirdMapDoor = tonumber(actualMap.thirdMapDoor)
                        map:door(actualMap.thirdMapDoor)
                    elseif (actualMap.thirdMapCustom) then
                        return (actualMap.thirdMapCustom)()
                    else
                        map:changeMap(actualMap.thirdMap)
                    end
                elseif (actualMap.doNextMap == "yes") then
                    actualMap.doNextMap = "no"
                    actualMap.doThirdMap = "yes"
                    if (actualMap.nextMapDoor) then
                        actualMap.nextMapDoor = tonumber(actualMap.nextMapDoor)
                        map:door(actualMap.nextMapDoor)
                    elseif (actualMap.nextMapCustom) then
                        return (actualMap.nextMapCustom)()
                    else
                        map:changeMap(actualMap.nextMap)
                    end
                elseif (actualMap.changeMapDoor) then
                    actualMap.doNextMap = "yes"
                    actualMap.changeMapDoor = tonumber(actualMap.changeMapDoor)
                    map:door(actualMap.changeMapDoor)
                elseif (actualMap.changeMapCustom) then
                    actualMap.doNextMap = "yes"
                    return (actualMap.changeMapCustom)()
                elseif (actualMap.changeMap) then
                    actualMap.doNextMap = "yes"
                    map:changeMap(actualMap.changeMap)
                end
            elseif (actualMap.doNextMap) and (actualMap.doThirdMap) then
                if (actualMap.doThirdMap) == "yes" then
                    actualMap.doThirdMap = "no"
                    if (actualMap.thirdMapDoor) then
                        actualMap.thirdMapDoor = tonumber(actualMap.thirdMapDoor)
                        map:door(actualMap.thirdMapDoor)
                    elseif (actualMap.thirdMapCustom) then
                        return (actualMap.thirdMapCustom)()
                    else
                        map:changeMap(actualMap.thirdMap)
                    end
                elseif (actualMap.doNextMap == "yes") then
                    actualMap.doNextMap = "no"
                    actualMap.doThirdMap = "yes"
                    if (actualMap.nextMapDoor) then
                        actualMap.nextMapDoor = tonumber(actualMap.nextMapDoor)
                        map:door(actualMap.nextMapDoor)
                    elseif (actualMap.nextMapCustom) then
                        return (actualMap.nextMapCustom)()
                    else
                        map:changeMap(actualMap.nextMap)
                    end
                elseif (actualMap.changeMapDoor) then
                    actualMap.doNextMap = "yes"
                    actualMap.changeMapDoor = tonumber(actualMap.changeMapDoor)
                    map:door(actualMap.changeMapDoor)
                elseif (actualMap.changeMapCustom) then
                    actualMap.doNextMap = "yes"
                    return (actualMap.changeMapCustom)()
                elseif (actualMap.changeMap) then
                    actualMap.doNextMap = "yes"
                    map:changeMap(actualMap.changeMap)
                end
            elseif (actualMap.doNextMap) then
                if (actualMap.doNextMap == "yes") then
                    actualMap.doNextMap = "no"
                    if (actualMap.nextMapDoor) then
                        actualMap.nextMapDoor = tonumber(actualMap.nextMapDoor)
                        map:door(actualMap.nextMapDoor)
                    elseif (actualMap.nextMapCustom) then
                        return (actualMap.nextMapCustom)()
                    else
                        map:changeMap(actualMap.nextMap)
                    end
                elseif (actualMap.changeMapDoor) then
                    actualMap.doNextMap = "yes"
                    actualMap.changeMapDoor = tonumber(actualMap.changeMapDoor)
                    map:door(actualMap.changeMapDoor)
                elseif (actualMap.changeMapCustom) then
                    actualMap.doNextMap = "yes"
                    return (actualMap.changeMapCustom)()
                elseif (actualMap.changeMap) then
                    actualMap.doNextMap = "yes"
                    map:changeMap(actualMap.changeMap)
                end
            elseif (actualMap.changeMapDoor) then
                actualMap.changeMapDoor = tonumber(actualMap.changeMapDoor)
                map:door(actualMap.changeMapDoor)
            elseif (actualMap.changeMapCustom) then
                return (actualMap.changeMapCustom)()
            elseif (actualMap.changeMap) then
                map:changeMap(actualMap.changeMap)
            end
        end
    end
end
