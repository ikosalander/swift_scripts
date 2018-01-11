-------------------------------------------------------------------------------------------------------------------
-- Auteur : Drigtime
-------------------------------------------------------------------------------------------------------------------
--changeMap == direction sur la map (changer de map via un petit soleil par terre fonctionne avec ca) ex : changeMap = "98"
--nextMap == direction du prochain passage sur la map
-------------------------------------------------------------------------------------------------------------------
--changeMapDoor == utilisation d'une porte/objet intéractif
--nextMapDoor == utilisation d'une porte/objet intéractife au prochain passage sur la map
-------------------------------------------------------------------------------------------------------------------
--changeMapCustom == utilisation d'une fonction custom
--nextMapCustom == utilisation d'une fonction custom au prochain passage sur la map
-------------------------------------------------------------------------------------------------------------------
--Les fonction custom doivent être placé au tout début du script
-------------------------------------------------------------------------------------------------------------------
--exemple :
--ligne qui utilise un changement de direction : {map = "0,0", changeMap = "top", nextMap = "bottom", doNextMap = "no"},
--ligne qui n'utilise pas le changement de direction : {map = "0,0", changeMap = "top"},
-------------------------------------------------------------------------------------------------------------------

astrub = true

function movecell()
    map:moveToCell(168)
    map:changeMap("bottom")
end

function talkpnjincarnam()
    astrub = false
    npc:npc(2889, 3)
    npc:reply(-1)
    npc:reply(-1)
end

function pnjsaharach()
    npc:npc(3464, 3)
    npc:reply(-1)
end

function escalier()
    map:moveToCell(387)
    map:moveToCell(279)
    map:changeMap("right(279)")
end

function zaapi()
    map:moveToCell(210)
    map:changeMap("zaapi(95422468)")
end

function deco()
    global:printSuccess("l'exploration est terminé je me deconnecte")
    global:finishScript()
end

-------------------------------------------------------------------------------------------------------------------

function move()
    if not astrub and not map:onMap("84674563") then
        return {
            {map = "3,-19", path = "right"},
            {map = "2,-19", path = "right"},
            {map = "1,-19", path = "right"},
            {map = "0,-19", path = "right"},
            {map = "-1,-19", path = "right"},
            {map = "5,-19", path = "left"},
            {map = "7,-20", path = "left"},
            {map = "6,-20", path = "left"},
            {map = "5,-20", path = "left"},
            {map = "7,-21", path = "left"},
            {map = "6,-21", path = "left"},
            {map = "5,-21", path = "left"},
            {map = "4,-21", path = "bottom"},
            {map = "4,-20", path = "bottom"},
            {map = "5,-22", path = "left"},
            {map = "4,-22", path = "bottom"},
            {map = "3,-22", path = "right"},
            {map = "3,-21", path = "right"},
            {map = "3,-20", path = "right"},
            {map = "2,-20", path = "right"},
            {map = "1,-20", path = "right"},
            {map = "0,-20", path = "right"},
            {map = "-1,-20", path = "right"},
            {map = "2,-21", path = "right"},
            {map = "67371008", path = "465"}, -- Intérieur temple Roublard
            {map = "84673536", path = "right"}, -- Sortie temple Roublard
            {map = "1,-22", path = "right"},
            {map = "1,-21", path = "right"},
            {map = "0,-22", path = "right"},
            {map = "0,-21", path = "right"},
            {map = "-1,-21", path = "right"},
            {map = "-1,-18", path = "right"},
            {map = "0,-18", path = "right"},
            {map = "1,-18", path = "right"},
            {map = "2,-18", path = "right"},
            {map = "3,-18", path = "right"},
            {map = "4,-18", path = "top"},
            {map = "-1,-16", path = "right"},
            {map = "0,-16", path = "right"},
            {map = "1,-16", path = "right"},
            {map = "2,-16", path = "right"},
            {map = "3,-16", path = "right"},
            {map = "4,-16", path = "top"},
            {map = "0,-15", path = "right"},
            {map = "1,-15", path = "right"},
            {map = "-1,-15", path = "right"},
            {map = "-1,-14", path = "right"},
            {map = "0,-14", path = "right"},
            {map = "1,-14", path = "right"},
            {map = "2,-14", path = "right"},
            {map = "3,-14", path = "top"},
            {map = "2,-15", path = "right"},
            {map = "3,-15", path = "right"},
            {map = "4,-15", path = "top"},
            {map = "3,-17", path = "right"},
            {map = "4,-17", path = "top"},
            {map = "-1,-17", path = "right"},
            {map = "0,-17", path = "right"},
            {map = "1,-17", path = "right"},
            {map = "2,-17", path = "right"},
            {map = "7,-15", path = "left"},
            {map = "6,-15", path = "left"},
            {map = "5,-15", path = "left"},
            {map = "7,-16", path = "left"},
            {map = "6,-16", path = "left"},
            {map = "5,-16", path = "left"},
            {map = "7,-17", path = "left"},
            {map = "6,-17", path = "left"},
            {map = "5,-17", path = "left"},
            {map = "7,-18", path = "left"},
            {map = "6,-18", path = "left"},
            {map = "5,-18", path = "left"},
            {map = "7,-19", path = "left"},
            {map = "6,-19", path = "left"}
        }
    else
        astrub = true
        return {
            {map = map:currentMap(), custom = processMap, gather = false, fight = false}
        }
    end
end

mapsWithChangeMap = {
    {map = "5,-31", changeMapCustom = movecell},
    -- Incarnam
    {map = "153092354", changeMapDoor = "409"}, -- 1er map tuto
    {map = "-3,-3", changeMap = "right(531)"}, -- 2eme map tuto
    {map = "-2,-3", changeMap = "right"},
    {map = "-1,-3", changeMap = "top"},
    {map = "-1,-4", changeMap = "top"},
    {map = "-1,-5", changeMap = "right"},
    {map = "0,-5", changeMap = "right(503)"},
    {map = "1,-5", changeMap = "right"},
    {map = "2,-5", changeMap = "bottom"},
    {map = "153879812", changeMapDoor = "198", nextMap = "bottom", doNextMap = "no"},
    {map = "153358338", changeMapDoor = "376"},
    {map = "2,-3", changeMap = "left"},
    {map = "1,-3", changeMap = "left"},
    {map = "153878787", changeMapDoor = "326", nextMap = "bottom", doNextMap = "no"},
    {map = "153357316", changeMap = "411"},
    {map = "0,-2", changeMap = "right"},
    {map = "1,-2", changeMap = "right"},
    {map = "1,-2", changeMap = "right"},
    {map = "2,-2", changeMap = "bottom"},
    {map = "2,-1", changeMap = "bottom"},
    {map = "153879552", changeMap = "right"},
    {map = "153880064", changeMap = "top"},
    {map = "3,-1", changeMap = "top"},
    {map = "3,-2", changeMap = "top"},
    {map = "3,-3", changeMap = "right"},
    {map = "153880835", changeMapCustom = talkpnjincarnam}, -- Départ vers Astrub
    -- Astrub
    {map = "84675587", changeMapDoor = "291", nextMap = "right", doNextMap = "no"}, -- Entrée Mine Astrub
    {map = "101716483", changeMap = "171", nextMap = "522", doNextMap = "no"}, -- Entrée Mine Astrub
    {map = "101715459", changeMapDoor = "194", nextMap = "501", doNextMap = "no"}, -- Entrée Mine Astrub
    {map = "101715461", changeMap = "477", nextMapDoor = "189", doNextMap = "no"}, -- Entrée Mine Astrub
    {map = "101715463", changeMap = "135"}, -- Entrée Mine Astrub
    {map = "144700", changeMapDoor = "426", nextMap = "bottom", doNextMap = "no"},
    {map = "24908036", changeMap = "110"},
    {map = "141862", changeMapDoor = "92", nextMap = "top", doNextMap = "no"},
    {map = "28312578", changeMapDoor = "211"},
    {map = "84675078", changeMap = "top"}, -- Map de merde
    {map = "144699", changeMap = "bottom"}, -- Map de Merde Bonta
    {map = "-29,-54", changeMap = "bottom", nextMap = "right", doNextMap = "no"}, -- Map Bonta
    {map = "4,-13", changeMap = "left", nextMap = "bottom", doNextMap = "no"}, -- map en dessous de la banque
    {map = "-24,-57", changeMap = "right(279)", nextMap = "top", doNextMap = "no"}, -- cimetiére
    {map = "-23,-57", changeMap = "left(266)"},
    {map = "144419", changeMap = "zaap(84674563)"}, -- map en dessous de la banque
    {map = "-20,-47", changeMap = "left(420)"},
    {map = "-20,34", changeMap = "right", nextMap = "left", doNextMap = "no"},
    {map = "-18,35", changeMap = "bottom", nextMap = "top", doNextMap = "no"},
    {map = "-18,36", changeMap = "bottom", nextMap = "top", doNextMap = "no"},
    {map = "-18,37", changeMap = "bottom", nextMap = "top", doNextMap = "no"},
    {map = "-18,38", changeMap = "bottom", nextMap = "top", doNextMap = "no"},
    {map = "-18,39", changeMap = "right(335)", nextMap = "top", doNextMap = "no"},
    {map = "-26,41", changeMap = "bottom", nextMap = "right", doNextMap = "no"},
    {map = "-19,34", changeMap = "right", nextMapDoor = "327", doNextMap = "no"},
    {map = "-18,34", changeMap = "bottom", nextMap = "left", doNextMap = "no"},
    {map = "0,9", changeMap = "left", nextMap = "bottom", doNextMap = "no"},
    {map = "10,21", changeMap = "right", nextMap = "bottom", doNextMap = "no"},
    {map = "0,0", changeMap = "left"},
    {map = "4,-19", changeMap = "right", nextMap = "bottom", doNextMap = "no"},
    {map = "5,-19", changeMap = "right"},
    {map = "4,-18", changeMap = "bottom"},
    {map = "4,-17", changeMap = "bottom"},
    {map = "4,-16", changeMap = "bottom"},
    {map = "10,-25", changeMap = "right"},
    {map = "11,-25", changeMap = "right"},
    {map = "12,-25", changeMap = "bottom"},
    {map = "12,-24", changeMap = "bottom"},
    {map = "12,-23", changeMap = "bottom"},
    {map = "12,-22", changeMap = "left"},
    {map = "7,-12", changeMap = "bottom"},
    {map = "7,-11", changeMap = "bottom"},
    {map = "7,-10", changeMap = "bottom"},
    {map = "7,-9", changeMap = "left"},
    {map = "6,-9", changeMap = "top"},
    {map = "4,-9", changeMap = "bottom(558)"},
    {map = "4,-10", changeMap = "bottom"},
    {map = "4,-11", changeMap = "bottom"},
    {map = "4,-12", changeMap = "bottom"},
    {map = "3,-13", changeMap = "left"},
    {map = "2,-13", changeMap = "left"},
    {map = "1,-13", changeMap = "left"},
    {map = "0,-13", changeMap = "left"},
    {map = "-1,-13", changeMap = "left"},
    {map = "-2,-13", changeMap = "top"},
    {map = "-2,-14", changeMap = "top"},
    {map = "-2,-15", changeMap = "top"},
    {map = "-2,-16", changeMap = "top"},
    {map = "-2,-17", changeMap = "top"},
    {map = "-2,-18", changeMap = "top"},
    {map = "-2,-19", changeMap = "top"},
    {map = "-2,-20", changeMap = "top"},
    {map = "-2,-21", changeMap = "top"},
    {map = "-2,-22", changeMap = "top"},
    {map = "-2,-23", changeMap = "left"},
    {map = "6,-10", changeMap = "top"},
    {map = "6,-11", changeMap = "top"},
    {map = "6,-12", changeMap = "top"},
    {map = "6,-13", changeMap = "left"},
    {map = "5,-13", changeMap = "left"},
    {map = "-3,-23", changeMap = "left"},
    --------------------------------------------
    {map = "-4,-35", changeMap = "top", nextMap = "bottom", doNextMap = "no"},
    {map = "-4,-23", changeMap = "top", nextMap = "left", doNextMap = "no"},
    {map = "-4,-24", changeMap = "top", nextMap = "bottom", doNextMap = "no"},
    {map = "-4,-25", changeMap = "top", nextMap = "bottom", doNextMap = "no"},
    {map = "-4,-26", changeMap = "top", nextMap = "bottom", doNextMap = "no"},
    {map = "-4,-27", changeMap = "top", nextMap = "bottom", doNextMap = "no"},
    {map = "-4,-28", changeMap = "top", nextMap = "bottom", doNextMap = "no"},
    {map = "-4,-29", changeMap = "top", nextMap = "bottom", doNextMap = "no"},
    {map = "-4,-30", changeMap = "top", nextMap = "bottom", doNextMap = "no"},
    {map = "-4,-31", changeMap = "top", nextMap = "bottom", doNextMap = "no"},
    {map = "-4,-32", changeMap = "top", nextMap = "bottom", doNextMap = "no"},
    {map = "-4,-33", changeMap = "top", nextMap = "bottom", doNextMap = "no"},
    {map = "-4,-34", changeMap = "top", nextMap = "bottom", doNextMap = "no"},
    {map = "-4,-36", changeMap = "top", nextMap = "bottom", doNextMap = "no"},
    {map = "-4,-37", changeMap = "top", nextMap = "bottom", doNextMap = "no"},
    {map = "-4,-38", changeMap = "top", nextMap = "bottom", doNextMap = "no"},
    {map = "-4,-39", changeMap = "right", nextMap = "bottom", doNextMap = "no"},
    {map = "-3,-41", changeMap = "top", nextMap = "bottom", doNextMap = "no"},
    {map = "-3,-42", changeMap = "bottom"},
    {map = "-3,-40", changeMap = "top", nextMap = "bottom", doNextMap = "no"},
    {map = "-3,-39", changeMap = "top", nextMap = "left", doNextMap = "no"},
    --------------------------------------------    
    {map = "-5,-23", changeMap = "bottom"},
    {map = "-5,-21", changeMap = "bottom"},
    {map = "-5,-22", changeMap = "bottom"},
    {map = "-5,-20", changeMap = "left"},
    {map = "-6,-20", changeMap = "left"},
    {map = "-7,-20", changeMap = "left"},
    {map = "-8,-20", changeMap = "left"},
    {map = "-9,-20", changeMap = "left"},
    {map = "-10,-20", changeMap = "left"},
    {map = "-11,-20", changeMap = "left"},
    {map = "-12,-20", changeMap = "top"},
    {map = "-12,-21", changeMap = "top"},
    {map = "-12,-23", changeMap = "top"},
    {map = "-12,-22", changeMap = "top"},
    {map = "-12,-24", changeMap = "top"},
    {map = "-12,-25", changeMap = "left"},
    {map = "-13,-25", changeMap = "top"},
    {map = "-13,-26", changeMap = "top"},
    {map = "-13,-27", changeMap = "top"},
    {map = "-13,-28", changeMap = "left"},
    {map = "-14,-28", changeMap = "bottom"},
    {map = "-14,-27", changeMap = "bottom"},
    {map = "-14,-26", changeMap = "bottom"},
    {map = "-14,-25", changeMap = "bottom"},
    {map = "-14,-24", changeMap = "left"},
    {map = "-15,-24", changeMap = "left"},
    {map = "-16,-24", changeMap = "left"},
    {map = "-17,-24", changeMap = "left"},
    {map = "-18,-24", changeMap = "bottom"},
    {map = "-18,-23", changeMap = "bottom"},
    {map = "-18,-21", changeMap = "bottom"},
    {map = "-18,-22", changeMap = "bottom"},
    {map = "-18,-20", changeMap = "left"},
    {map = "-19,-20", changeMap = "left"},
    {map = "-20,-20", changeMap = "top"},
    {map = "-20,-21", changeMap = "top"},
    {map = "-20,-22", changeMap = "top"},
    {map = "-20,-23", changeMap = "top"},
    {map = "-20,-24", changeMap = "top"},
    {map = "-20,-25", changeMap = "top"},
    {map = "-20,-26", changeMap = "top"},
    {map = "-20,-27", changeMap = "top"},
    {map = "-20,-28", changeMap = "top"},
    {map = "-20,-29", changeMap = "top"},
    {map = "-20,-30", changeMap = "top"},
    {map = "-20,-31", changeMap = "right"},
    {map = "-19,-31", changeMap = "top"},
    {map = "-19,-32", changeMap = "top"},
    {map = "-19,-33", changeMap = "top"},
    {map = "-19,-35", changeMap = "top"},
    {map = "-19,-34", changeMap = "top"},
    {map = "-19,-36", changeMap = "top"},
    {map = "-19,-37", changeMap = "top"},
    {map = "-19,-38", changeMap = "right"},
    {map = "-18,-38", changeMap = "right"},
    {map = "-17,-38", changeMap = "right"},
    {map = "-16,-38", changeMap = "top"},
    {map = "-16,-39", changeMap = "top"},
    {map = "-16,-40", changeMap = "top"},
    {map = "-16,-41", changeMap = "top"},
    {map = "-16,-42", changeMap = "top"},
    {map = "-16,-43", changeMap = "top"},
    {map = "-16,-44", changeMap = "top"},
    {map = "-16,-45", changeMap = "top"},
    {map = "-16,-46", changeMap = "top"},
    {map = "-16,-47", changeMap = "left"},
    {map = "-17,-47", changeMap = "left"},
    {map = "-18,-47", changeMap = "left"},
    {map = "-19,-47", changeMap = "left"},
    {map = "-21,-47", changeMap = "left"},
    {map = "-22,-47", changeMap = "left"},
    {map = "-23,-47", changeMap = "top"},
    {map = "-23,-48", changeMap = "left"},
    {map = "-23,-49", changeMap = "top"},
    {map = "-23,-50", changeMap = "top"},
    {map = "-23,-51", changeMap = "top"},
    {map = "-23,-52", changeMap = "top"},
    {map = "-23,-53", changeMap = "top"},
    {map = "-23,-54", changeMap = "top"},
    {map = "-23,-55", changeMap = "top"},
    {map = "-23,-56", changeMap = "left"},
    {map = "-24,-56", changeMap = "top"},
    {map = "-24,-58", changeMap = "top"},
    {map = "-25,-59", changeMap = "top"},
    {map = "-25,-60", changeMap = "top"},
    {map = "-25,-61", changeMap = "top"},
    {map = "-25,-62", changeMap = "top"},
    {map = "-25,-63", changeMap = "top"},
    {map = "-25,-64", changeMap = "left"},
    {map = "-26,-64", changeMap = "left"},
    {map = "-27,-64", changeMap = "left"},
    {map = "-28,-64", changeMap = "left"},
    {map = "-29,-64", changeMap = "bottom"},
    {map = "-29,-63", changeMap = "bottom"},
    {map = "-29,-62", changeMap = "bottom"},
    {map = "-34,-59", changeMap = "right"},
    {map = "-29,-61", changeMap = "bottom"},
    {map = "-29,-60", changeMap = "right"},
    {map = "-28,-60", changeMap = "right"},
    {map = "-27,-60", changeMap = "right"},
    {map = "-26,-58", changeMap = "bottom"},
    {map = "-26,-57", changeMap = "left"},
    {map = "-27,-57", changeMap = "left"},
    {map = "-28,-57", changeMap = "left"},
    {map = "-29,-57", changeMap = "bottom"},
    {map = "-29,-56", changeMap = "bottom"},
    {map = "-29,-55", changeMap = "bottom"},
    {map = "-29,-53", changeMap = "bottom"},
    {map = "-29,-52", changeMap = "left"},
    {map = "-30,-52", changeMap = "left"},
    {map = "-31,-52", changeMap = "left"},
    {map = "-32,-52", changeMap = "left"},
    {map = "-33,-52", changeMap = "left"},
    {map = "-34,-52", changeMap = "left"},
    {map = "-35,-52", changeMap = "top"},
    {map = "-35,-53", changeMap = "top"},
    {map = "-35,-54", changeMap = "left"},
    {map = "-35,-55", changeMap = "top"},
    {map = "-35,-56", changeMap = "top"},
    {map = "-35,-57", changeMap = "top"},
    {map = "-35,-58", changeMap = "top"},
    {map = "-35,-59", changeMap = "right"},
    {map = "-33,-59", changeMap = "right"},
    {map = "-32,-59", changeMap = "bottom"},
    {map = "-32,-58", changeMap = "bottom"},
    {map = "-32,-57", changeMap = "bottom"},
    {map = "-32,-56", changeMap = "bottom"},
    {map = "-32,-55", changeMap = "bottom"},
    {map = "-32,-54", changeMap = "right"},
    {map = "-31,-54", changeMap = "right"},
    {map = "-30,-54", changeMap = "right"},
    {map = "-29,-48", changeMap = "bottom"},
    {map = "-29,-49", changeMap = "bottom"},
    {map = "-29,-50", changeMap = "bottom"},
    {map = "-29,-51", changeMap = "bottom"},
    {map = "-28,-51", changeMap = "left"},
    {map = "-28,-52", changeMap = "bottom"},
    {map = "-28,-53", changeMap = "bottom"},
    {map = "-28,-54", changeMap = "bottom"},
    {map = "-29,-47", changeMap = "bottom"},
    {map = "-29,-46", changeMap = "bottom"},
    {map = "-29,-45", changeMap = "bottom"},
    {map = "-29,-44", changeMap = "bottom"},
    {map = "-29,-43", changeMap = "right"},
    {map = "-28,-43", changeMap = "bottom"},
    {map = "-28,-42", changeMap = "right"},
    {map = "-27,-42", changeMap = "bottom"},
    {map = "-27,-41", changeMap = "bottom"},
    {map = "-27,-40", changeMap = "bottom"},
    {map = "-27,-39", changeMap = "bottom"},
    {map = "-27,-38", changeMap = "bottom"},
    {map = "-27,-37", changeMap = "bottom"},
    {map = "-27,-36", changeMap = "bottom"},
    {map = "-27,-35", changeMap = "bottom"},
    {map = "-27,-34", changeMap = "bottom"},
    {map = "-27,-33", changeMap = "bottom"},
    {map = "-27,-32", changeMap = "bottom"},
    {map = "-27,-31", changeMap = "bottom"},
    {map = "-27,-30", changeMap = "left"},
    {map = "-28,-30", changeMap = "bottom"},
    {map = "-28,-29", changeMap = "bottom"},
    {map = "-28,-28", changeMap = "bottom"},
    {map = "-28,-27", changeMap = "left"},
    {map = "-29,-27", changeMap = "bottom"},
    {map = "-29,-26", changeMap = "bottom"},
    {map = "-29,-25", changeMap = "bottom"},
    {map = "-29,-24", changeMap = "bottom"},
    {map = "-29,-23", changeMap = "bottom"},
    {map = "-29,-22", changeMap = "bottom"},
    {map = "-29,-21", changeMap = "bottom"},
    {map = "-29,-20", changeMap = "bottom"},
    {map = "-29,-19", changeMap = "right"},
    {map = "-28,-19", changeMap = "right"},
    {map = "-27,-19", changeMap = "bottom"},
    {map = "-27,-18", changeMap = "right"},
    {map = "-26,-18", changeMap = "bottom"},
    {map = "-26,-17", changeMap = "bottom"},
    {map = "-26,-16", changeMap = "left"},
    {map = "-26,-15", changeMap = "bottom"},
    {map = "-26,-14", changeMap = "bottom"},
    {map = "-26,-13", changeMap = "bottom"},
    {map = "-26,-12", changeMap = "bottom"},
    {map = "-27,-16", changeMap = "left"},
    {map = "-28,-16", changeMap = "left"},
    {map = "-29,-16", changeMap = "left"},
    {map = "-30,-16", changeMap = "left"},
    {map = "-31,-16", changeMap = "bottom"},
    {map = "-31,-15", changeMap = "right"},
    {map = "-30,-15", changeMap = "right"},
    {map = "-29,-15", changeMap = "right"},
    {map = "-28,-15", changeMap = "right"},
    {map = "-27,-15", changeMap = "right"},
    {map = "-26,-11", changeMap = "bottom"},
    {map = "-26,-10", changeMap = "bottom"},
    {map = "-26,-9", changeMap = "bottom"},
    {map = "-26,-8", changeMap = "bottom"},
    {map = "-26,-7", changeMap = "bottom"},
    {map = "-26,-6", changeMap = "bottom"},
    {map = "-26,-5", changeMap = "bottom"},
    {map = "-26,-4", changeMap = "bottom"},
    {map = "-26,-3", changeMap = "bottom"},
    {map = "-26,-2", changeMap = "bottom"},
    ----------------------------------------
    {map = "-26,-1", changeMap = "right", nextMap = "bottom", doNextMap = "no"},
    {map = "-25,-1", changeMap = "right", nextMap = "left", doNextMap = "no"},
    {map = "-24,-1", changeMap = "right", nextMap = "left", doNextMap = "no"},
    {map = "-23,-1", changeMapDoor = "374", nextMap = "left", doNextMap = "no"},
    {map = "-22,-1", changeMap = "bottom", nextMap = "left", doNextMap = "no"},
    {map = "-22,0", changeMap = "bottom", nextMap = "top", doNextMap = "no"},
    {map = "-22,1", changeMap = "right", nextMap = "top", doNextMap = "no"},
    {map = "-21,1", changeMap = "right", nextMap = "left", doNextMap = "no"},
    {map = "-20,1", changeMap = "right", nextMap = "left", doNextMap = "no"},
    {map = "-19,1", changeMap = "right", nextMap = "left", doNextMap = "no"},
    {map = "-18,1", changeMap = "right", nextMap = "left", doNextMap = "no"},
    {map = "-17,1", changeMap = "right", nextMap = "left", doNextMap = "no"},
    {map = "-16,1", changeMap = "left"},
    ----------------------------------------
    {map = "-26,0", changeMap = "bottom"},
    {map = "-26,1", changeMap = "bottom"},
    {map = "-26,2", changeMap = "bottom"},
    {map = "-26,4", changeMap = "bottom"},
    {map = "-26,3", changeMap = "bottom"},
    {map = "-26,5", changeMap = "bottom"},
    {map = "-26,6", changeMap = "bottom"},
    {map = "-26,7", changeMap = "right"},
    {map = "-25,7", changeMap = "bottom"},
    {map = "-24,14", changeMap = "right"},
    {map = "-24,26", changeMap = "bottom"},
    {map = "-24,27", changeMap = "bottom"},
    {map = "-25,9", changeMap = "bottom"},
    {map = "-25,8", changeMap = "bottom"},
    {map = "-25,10", changeMap = "bottom"},
    {map = "-25,11", changeMap = "bottom"},
    {map = "-25,12", changeMap = "bottom"},
    {map = "-25,13", changeMap = "bottom"},
    {map = "-25,14", changeMap = "right"},
    {map = "-23,14", changeMap = "bottom"},
    {map = "-23,15", changeMap = "bottom"},
    {map = "-23,16", changeMap = "right"},
    {map = "-22,16", changeMap = "right"},
    {map = "-21,16", changeMap = "bottom"},
    {map = "-20,18", changeMap = "bottom"},
    {map = "-20,19", changeMap = "bottom"},
    {map = "-20,20", changeMap = "bottom"},
    {map = "-20,21", changeMap = "bottom"},
    {map = "-20,22", changeMap = "right"},
    {map = "-20,23", changeMap = "bottom"},
    {map = "-20,24", changeMap = "left"},
    {map = "-21,26", changeMap = "left"},
    {map = "-22,26", changeMap = "left"},
    {map = "-23,26", changeMap = "left"},
    {map = "-24,28", changeMap = "bottom"},
    {map = "-24,29", changeMap = "left"},
    {map = "-25,29", changeMap = "bottom"},
    {map = "-25,30", changeMap = "bottom"},
    {map = "11,-22", changeMap = "left"},
    {map = "10,-22", changeMap = "bottom"},
    {map = "10,-20", changeMap = "bottom"},
    {map = "10,-21", changeMap = "bottom"},
    {map = "10,-19", changeMap = "bottom"},
    {map = "10,-18", changeMap = "bottom"},
    {map = "10,-17", changeMap = "bottom"},
    {map = "10,-16", changeMap = "bottom"},
    {map = "10,-15", changeMap = "bottom"},
    {map = "10,-14", changeMap = "bottom"},
    {map = "10,-13", changeMap = "bottom"},
    {map = "10,-12", changeMap = "left"},
    {map = "9,-12", changeMap = "left"},
    {map = "8,-12", changeMap = "left"},
    {map = "7,-19", changeMap = "right"},
    {map = "8,-19", changeMap = "top"},
    {map = "8,-20", changeMap = "top"},
    {map = "8,-21", changeMap = "top"},
    {map = "8,-22", changeMap = "left"},
    {map = "8,-24", changeMap = "right"},
    {map = "9,-24", changeMap = "top"},
    {map = "9,-25", changeMap = "right"},
    {map = "7,-22", changeMap = "top"},
    {map = "7,-23", changeMap = "left"},
    {map = "6,-23", changeMap = "left"},
    {map = "5,-23", changeMap = "left"},
    {map = "4,-23", changeMap = "left"},
    {map = "3,-23", changeMap = "left"},
    {map = "2,-23", changeMap = "left"},
    {map = "1,-23", changeMap = "left"},
    {map = "0,-23", changeMap = "left"},
    {map = "-1,-23", changeMap = "top"},
    {map = "-2,-29", changeMap = "top"},
    {map = "-2,-28", changeMap = "top"},
    {map = "-2,-27", changeMap = "top"},
    {map = "-2,-26", changeMap = "top"},
    {map = "-2,-25", changeMap = "top"},
    {map = "-2,-24", changeMap = "top"},
    {map = "-1,-24", changeMap = "left"},
    {map = "-2,-30", changeMap = "right"},
    {map = "-1,-30", changeMap = "right"},
    {map = "0,-30", changeMap = "top"},
    {map = "0,-31", changeMap = "right"},
    {map = "1,-31", changeMap = "top"},
    {map = "1,-32", changeMap = "right"},
    {map = "2,-32", changeMap = "right"},
    {map = "3,-32", changeMap = "right"},
    {map = "4,-31", changeMap = "right"},
    {map = "4,-32", changeMap = "bottom"},
    {map = "5,-30", changeMap = "bottom"},
    {map = "5,-29", changeMap = "bottom"},
    {map = "5,-28", changeMap = "bottom"},
    {map = "5,-27", changeMap = "bottom"},
    {map = "5,-26", changeMap = "bottom"},
    {map = "5,-25", changeMap = "bottom"},
    {map = "5,-24", changeMap = "right"},
    {map = "6,-24", changeMap = "right"},
    {map = "7,-24", changeMap = "right"},
    {map = "8,-24", changeMap = "right"},
    {map = "9,-24", changeMap = "top"},
    {map = "4,-8", changeMap = "bottom"},
    {map = "4,-7", changeMap = "bottom"},
    {map = "4,-6", changeMap = "left"},
    {map = "3,-6", changeMap = "bottom"},
    {map = "3,-5", changeMap = "right"},
    {map = "4,-5", changeMap = "bottom"},
    {map = "4,-4", changeMap = "bottom"},
    {map = "68552196", changeMap = "bottom"},
    {map = "4,-2", changeMap = "right"},
    {map = "-2,0", changeMap = "bottom"},
    {map = "-2,-1", changeMap = "bottom"},
    {map = "-24,-48", changeMap = "top"},
    {map = "-24,-49", changeMap = "right"},
    {map = "4,-14", changeMap = "bottom"},
    {map = "4,-15", changeMap = "bottom(555)"},
    {map = "-26,31", changeMap = "left"},
    {map = "-27,31", changeMap = "left"},
    {map = "-28,31", changeMap = "left"},
    {map = "-29,31", changeMap = "left"},
    {map = "-30,31", changeMap = "bottom"},
    {map = "-30,32", changeMap = "bottom"},
    {map = "-30,33", changeMap = "bottom"},
    {map = "-30,34", changeMap = "bottom"},
    {map = "-30,35", changeMap = "bottom"},
    {map = "-30,36", changeMap = "bottom"},
    {map = "-30,37", changeMap = "bottom"},
    {map = "-30,38", changeMap = "right"},
    {map = "-29,38", changeMap = "bottom"},
    {map = "-29,39", changeMap = "right"},
    {map = "-28,39", changeMap = "right"},
    {map = "-27,39", changeMap = "right"},
    {map = "-26,39", changeMap = "bottom"},
    {map = "-25,39", changeMap = "right"},
    {map = "-24,39", changeMap = "right"},
    {map = "-23,39", changeMap = "right"},
    {map = "-22,39", changeMap = "right"},
    {map = "-21,39", changeMap = "right"},
    {map = "-20,39", changeMap = "top"},
    {map = "-20,38", changeMap = "left"},
    {map = "-20,37", changeMap = "top"},
    {map = "-21,37", changeMap = "right"},
    {map = "-22,37", changeMap = "left"},
    {map = "-23,37", changeMap = "left"},
    {map = "-24,37", changeMap = "left"},
    {map = "-25,37", changeMap = "left"},
    {map = "-26,37", changeMap = "top"},
    {map = "-26,36", changeMap = "top"},
    {map = "-36,-54", changeMap = "top"},
    {map = "-36,-55", changeMap = "right"},
    {map = "-24,-59", changeMap = "left"},
    {map = "-21,17", changeMap = "bottom"},
    {map = "-21,18", changeMap = "right"},
    {map = "-21,24", changeMap = "bottom"},
    {map = "-21,25", changeMap = "bottom"},
    {map = "-23,-57", changeMap = "left"},
    {map = "88081175", changeMap = "left"},
    {map = "5,-2", changeMap = "right"},
    {map = "6,-2", changeMap = "top"},
    {map = "6,-3", changeMap = "top"},
    {map = "6,-4", changeMap = "right"},
    {map = "7,-4", changeMap = "bottom"},
    {map = "7,-3", changeMap = "right", nextMap = "bottom", doNextMap = "no"},
    {map = "8,-3", changeMap = "right", nextMap = "left", doNextMap = "no"},
    {map = "9,-3", changeMap = "top", nextMap = "left", doNextMap = "no"},
    {map = "9,-4", changeMap = "top", nextMap = "bottom", doNextMap = "no"},
    {map = "9,-5", changeMap = "right", nextMap = "bottom", doNextMap = "no"},
    {map = "10,-5", changeMap = "right", nextMap = "left", doNextMap = "no"},
    {map = "11,-5", changeMap = "top", nextMap = "left", doNextMap = "no"},
    {map = "11,-6", changeMap = "right", nextMap = "bottom", doNextMap = "no"},
    {map = "12,-6", changeMapCustom = pnjsaharach, nextMap = "left", doNextMap = "no"},
    {map = "14,-55", changeMap = "top", nextMapCustom = pnjsaharach, doNextMap = "no"},
    {map = "14,-56", changeMap = "top", nextMap = "bottom", doNextMap = "no"},
    {map = "14,-57", changeMap = "right", nextMap = "bottom", doNextMap = "no"},
    {map = "15,-57", changeMap = "top", nextMap = "left", doNextMap = "no"},
    {map = "15,-58", changeMap = "bottom"},
    {map = "7,-2", changeMap = "bottom"},
    {map = "7,-1", changeMap = "left(448)"},
    {map = "6,-1", changeMap = "left"},
    {map = "5,-1", changeMap = "bottom"},
    {map = "5,0", changeMap = "left"},
    {map = "4,0", changeMap = "left"},
    {map = "88081687", changeMap = "left"},
    {map = "1,0", changeMap = "left"},
    {map = "-1,0", changeMap = "left"},
    {map = "-2,1", changeMap = "right"},
    {map = "-1,1", changeMap = "right"},
    {map = "0,1", changeMap = "right"},
    {map = "1,1", changeMap = "right"},
    {map = "2,1", changeMap = "right"},
    {map = "3,1", changeMap = "right"},
    {map = "4,1", changeMap = "right"},
    {map = "5,1", changeMap = "right"},
    {map = "6,1", changeMap = "bottom"},
    {map = "6,2", changeMap = "bottom"},
    {map = "6,3", changeMap = "bottom"},
    {map = "6,4", changeMap = "right"},
    {map = "7,4", changeMap = "right"},
    {map = "8,4", changeMap = "right"},
    {map = "9,4", changeMap = "right"},
    {map = "10,4", changeMap = "right"},
    {map = "11,4", changeMap = "right"},
    {map = "12,4", changeMap = "bottom"},
    {map = "12,5", changeMap = "bottom"},
    {map = "12,6", changeMap = "bottom"},
    {map = "12,7", changeMap = "bottom"},
    {map = "12,8", changeMap = "bottom"},
    {map = "12,9", changeMap = "left"},
    {map = "11,9", changeMap = "left"},
    {map = "10,9", changeMap = "top"},
    {map = "10,8", changeMap = "top"},
    {map = "10,7", changeMap = "left"},
    {map = "9,7", changeMap = "left"},
    {map = "8,7", changeMap = "left"},
    {map = "7,7", changeMap = "left"},
    {map = "6,7", changeMap = "left"},
    {map = "5,7", changeMap = "left"},
    {map = "4,7", changeMap = "bottom"},
    {map = "4,8", changeMap = "bottom"},
    {map = "4,9", changeMap = "left"},
    {map = "3,9", changeMap = "left"},
    {map = "2,9", changeMap = "left"},
    {map = "1,9", changeMap = "left"},
    {map = "-1,9", changeMap = "right"},
    {map = "-1,13", changeMap = "bottom"},
    {map = "0,10", changeMap = "bottom"},
    {map = "0,11", changeMap = "bottom"},
    {map = "0,12", changeMap = "bottom"},
    {map = "0,13", changeMap = "left"},
    {map = "-1,14", changeMap = "right"},
    {map = "0,14", changeMap = "right"},
    {map = "1,14", changeMap = "right"},
    {map = "3,14", changeMap = "bottom"},
    {map = "2,14", changeMap = "right"},
    {map = "3,15", changeMap = "left"},
    {map = "2,15", changeMap = "bottom"},
    {map = "2,16", changeMap = "bottom"},
    {map = "2,17", changeMap = "bottom"},
    {map = "2,18", changeMap = "bottom"},
    {map = "2,19", changeMap = "bottom"},
    {map = "2,20", changeMap = "bottom"},
    {map = "2,21", changeMap = "bottom"},
    {map = "2,22", changeMap = "bottom"},
    {map = "2,23", changeMap = "left"},
    {map = "1,23", changeMap = "left"},
    {map = "0,23", changeMap = "left"},
    {map = "-1,23", changeMap = "bottom"},
    {map = "-1,24", changeMap = "right"},
    {map = "0,24", changeMap = "right"},
    {map = "1,24", changeMap = "bottom"},
    {map = "1,25", changeMap = "bottom"},
    {map = "1,31", changeMap = "right"},
    {map = "1,30", changeMap = "bottom"},
    {map = "1,29", changeMap = "bottom"},
    {map = "1,28", changeMap = "bottom"},
    {map = "1,27", changeMap = "bottom"},
    {map = "1,26", changeMap = "bottom"},
    {map = "6,31", changeMap = "top"},
    {map = "2,31", changeMap = "right"},
    {map = "3,31", changeMap = "right"},
    {map = "4,31", changeMap = "right"},
    {map = "5,31", changeMap = "right"},
    {map = "-26,40", changeMap = "bottom"},
    {map = "-26,42", changeMap = "top"},
    {map = "-25,41", changeMap = "top"},
    {map = "-25,40", changeMap = "top"},
    {map = "-20,36", changeMap = "top"},
    {map = "-20,35", changeMap = "top"},
    {map = "-17,39", changeMap = "left(434)"},
    {map = "-19,22", changeMap = "bottom"},
    {map = "-19,23", changeMap = "left"},
    {map = "-21,34", changeMap = "bottom"},
    {map = "-21,35", changeMap = "bottom"},
    {map = "-21,36", changeMap = "left"},
    {map = "-22,36", changeMap = "bottom"},
    {map = "6,30", changeMap = "top"},
    {map = "6,29", changeMap = "top"},
    {map = "6,28", changeMap = "left"},
    {map = "5,28", changeMap = "top"},
    {map = "5,27", changeMap = "top"},
    {map = "5,26", changeMap = "left"},
    {map = "4,26", changeMap = "top"},
    {map = "4,25", changeMap = "top"},
    {map = "4,24", changeMap = "top"},
    {map = "4,23", changeMap = "top"},
    {map = "4,22", changeMap = "top"},
    {map = "4,21", changeMap = "right"},
    {map = "5,21", changeMap = "right"},
    {map = "6,21", changeMap = "right"},
    {map = "7,21", changeMap = "right"},
    {map = "8,21", changeMap = "right"},
    {map = "9,21", changeMap = "right"},
    {map = "11,21", changeMap = "left"},
    {map = "10,22", changeMap = "right"},
    {map = "11,22", changeMap = "right"},
    {map = "12,22", changeMap = "right"},
    {map = "13,22", changeMap = "right"},
    {map = "14,22", changeMapCustom = escalier},
    {map = "15,22", changeMapCustom = zaapi},
    {map = "95422468", changeMapCustom = deco}
}

------------------------------------------------------------------------------------------------------------------

function processMap()
    for index, actualMap in pairs(mapsWithChangeMap) do
        if (map:onMap(actualMap.map)) then
            if (actualMap.doNextMap) then
                if (actualMap.changeMapDoor) then
                    if (actualMap.nextMapDoor) then
                        if (actualMap.doNextMap == "yes") then
                            actualMap.doNextMap = "no"
                            actualMap.nextMapDoor = tonumber(actualMap.nextMapDoor)
                            map:door(actualMap.nextMapDoor)
                        else
                            actualMap.doNextMap = "yes"
                            actualMap.changeMapDoor = tonumber(actualMap.changeMapDoor)
                            map:door(actualMap.changeMapDoor)
                        end
                    elseif (actualMap.nextMapCustom) then
                        if (actualMap.doNextMap == "yes") then
                            actualMap.doNextMap = "no"
                            return (actualMap.nextMapCustom)()
                        else
                            actualMap.doNextMap = "yes"
                            actualMap.changeMapDoor = tonumber(actualMap.changeMapDoor)
                            map:door(actualMap.changeMapDoor)
                        end
                    else
                        if (actualMap.doNextMap == "yes") then
                            actualMap.doNextMap = "no"
                            map:changeMap(actualMap.nextMap)
                        else
                            actualMap.doNextMap = "yes"
                            actualMap.changeMapDoor = tonumber(actualMap.changeMapDoor)
                            map:door(actualMap.changeMapDoor)
                        end
                    end
                elseif (actualMap.changeMapCustom) then
                    if (actualMap.nextMapDoor) then
                        if (actualMap.doNextMap == "yes") then
                            actualMap.doNextMap = "no"
                            actualMap.nextMapDoor = tonumber(actualMap.nextMapDoor)
                            map:door(actualMap.nextMapDoor)
                        else
                            actualMap.doNextMap = "yes"
                            return (actualMap.changeMapCustom)()
                        end
                    elseif (actualMap.nextMapCustom) then
                        if (actualMap.doNextMap == "yes") then
                            actualMap.doNextMap = "no"
                            return (actualMap.nextMapCustom)()
                        else
                            actualMap.doNextMap = "yes"
                            return (actualMap.changeMapCustom)()
                        end
                    else
                        if (actualMap.doNextMap == "yes") then
                            actualMap.doNextMap = "no"
                            map:changeMap(actualMap.nextMap)
                        else
                            actualMap.doNextMap = "yes"
                            return (actualMap.changeMapCustom)()
                        end
                    end
                else
                    if (actualMap.nextMapDoor) then
                        if (actualMap.doNextMap == "yes") then
                            actualMap.doNextMap = "no"
                            actualMap.nextMapDoor = tonumber(actualMap.nextMapDoor)
                            map:door(actualMap.nextMapDoor)
                        else
                            actualMap.doNextMap = "yes"
                            map:changeMap(actualMap.changeMap)
                        end
                    elseif (actualMap.nextMapCustom) then
                        if (actualMap.doNextMap == "yes") then
                            actualMap.doNextMap = "no"
                            return (actualMap.nextMapCustom)()
                        else
                            actualMap.doNextMap = "yes"
                            map:changeMap(actualMap.changeMap)
                        end
                    else
                        if (actualMap.doNextMap == "yes") then
                            actualMap.doNextMap = "no"
                            map:changeMap(actualMap.nextMap)
                        else
                            actualMap.doNextMap = "yes"
                            map:changeMap(actualMap.changeMap)
                        end
                    end
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

------------------------------------------------------------------------------------------------------------------

function bank()
    global:printError("Vous êtes Full Pods, aller vous vider en banque et relancer le trajet")
    global:finishScript()
end
