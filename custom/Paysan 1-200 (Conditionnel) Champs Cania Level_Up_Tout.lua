BANK_BONTA = true
BANK_ASTRUB = false
--[[n--]]MAP_ACTUELLE = map:currentMap()
PODS_MAX = inventory:podsMax()
PODS = inventory:pods()
RATIO_PODS = (PODS / PODS_MAX) * 100
MAP_ID = map:currentMapId()

function getAllItems()
	exchange:getAllItems()
end

function getMapID()	
	printMessage(MAP_ID)
end

function CustomBank()

npc:npcBank(-1)
exchange:getAllItems()
global:leaveDialog()
map:moveToCell(424)
end

function House()
    map:lockedHouse(65,"58629277","milkoww")
end
function cleanInHouse()
	map:lockedStorage(333,"58629277")
	exchange:putAllItems()
	global:delay(1000)
    global:printSuccess("vidange faites")
	global:leaveDialog()
	map:moveToCell(483)
end

function exitHouse()
	map:moveToCell(483)
end
 
OPEN_BAGS = true
 
function changegather()
    if job:level(28) <= 200 then
        GATHER = { 43, 38, 45, 39, 42, 44, 47, 46 }
    end
end
   
function move()
    changegather()
    return {
    	{map = "2883855", custom = exitHouse},

    	{ map = "-31,-58", path = "bottom" },
    	{ map = "-31,-57", path = "bottom" },

		{ map = "-32,-56", path = "right" },
		{ map = "-31,-56", path = "bottom" },
		{ map = "-31,-55", path = "bottom" },
		{ map = "147254", path = "right" },
		{ map = "-30,-54", path = "right" },
		{ map = "-29,-54", path = "bottom" },
		{ map = "-29,-53", path = "bottom" },
		{ map = "-29,-52", path = "bottom" },
		{ map = "-29,-51", path = "bottom" },
		{ map = "-29,-50", path = "bottom" },
		{ map = "-29,-49", path = "bottom" },
		{ map = "-29,-48", path = "bottom" },
		{ map = "-29,-47", path = "bottom" },
		{ map = "-29,-46", path = "left" },
		{ map = "-30,-46", path = "left" },
		{ map = "-31,-46", path = "bottom" },
		{ map = "-31,-45", gather = true, path = "right" },
		{ map = "-30,-45", gather = true, path = "right" },
		{ map = "-29,-45", gather = true, path = "right" },
		{ map = "-28,-45", gather = true, path = "right" },
		{ map = "-27,-45", gather = true, path = "right" },
		{ map = "-26,-45", gather = true, path = "right" },
		{ map = "-25,-45", gather = true, path = "right" },
		{ map = "-24,-45", gather = true, path = "right" },
		{ map = "-23,-45", gather = true, path = "right" },
		{ map = "-22,-45", gather = true, path = "right" },
		{ map = "-21,-45", gather = true, path = "bottom" },
		{ map = "-21,-43", gather = true, path = "bottom" },
		{ map = "-21,-41", gather = true, path = "bottom" },
		{ map = "-21,-39", gather = true, path = "bottom" },
		{ map = "-31,-44", gather = true, path = "bottom" },
		{ map = "-31,-42", gather = true, path = "bottom" },
		{ map = "-31,-40", gather = true, path = "bottom" },
		{ map = "-21,-44", gather = true, path = "left" },
		{ map = "-22,-44", gather = true, path = "left" },
		{ map = "-24,-44", gather = true, path = "left" },
		{ map = "-25,-44", gather = true, path = "left" },
		{ map = "-26,-44", gather = true, path = "left" },
		{ map = "-23,-44", gather = true, path = "left" },
		{ map = "-27,-44", gather = true, path = "left" },
		{ map = "-28,-44", gather = true, path = "left" },
		{ map = "-29,-44", gather = true, path = "left" },
		{ map = "-30,-44", gather = true, path = "left" },
		{ map = "-31,-43", gather = true, path = "right" },
		{ map = "-30,-43", gather = true, path = "right" },
		{ map = "-29,-43", gather = true, path = "right" },
		{ map = "-28,-43", gather = true, path = "right" },
		{ map = "-27,-43", gather = true, path = "right" },
		{ map = "-26,-43", gather = true, path = "right" },
		{ map = "-25,-43", gather = true, path = "right" },
		{ map = "-24,-43", gather = true, path = "right" },
		{ map = "-23,-43", gather = true, path = "right" },
		{ map = "-22,-43", gather = true, path = "right" },
		{ map = "-21,-42", gather = true, path = "left" },
		{ map = "-22,-42", gather = true, path = "left" },
		{ map = "-23,-42", gather = true, path = "left" },
		{ map = "-24,-42", gather = true, path = "left" },
		{ map = "-25,-42", gather = true, path = "left" },
		{ map = "-26,-42", gather = true, path = "left" },
		{ map = "-27,-42", gather = true, path = "left" },
		{ map = "-28,-42", gather = true, path = "left" },
		{ map = "-29,-42", gather = true, path = "left" },
		{ map = "-30,-42", gather = true, path = "left" },
		{ map = "-31,-41", gather = true, path = "right" },
		{ map = "-30,-41", gather = true, path = "right" },
		{ map = "-29,-41", gather = true, path = "right" },
		{ map = "-28,-41", gather = true, path = "right" },
		{ map = "-27,-41", gather = true, path = "right" },
		{ map = "-26,-41", gather = true, path = "right" },
		{ map = "-25,-41", gather = true, path = "right" },
		{ map = "-24,-41", gather = true, path = "right" },
		{ map = "-23,-41", gather = true, path = "right" },
		{ map = "-22,-41", gather = true, path = "right" },
		{ map = "-21,-40", gather = true, path = "left" },
		{ map = "-22,-40", gather = true, path = "left" },
		{ map = "-23,-40", gather = true, path = "left" },
		{ map = "-24,-40", gather = true, path = "left" },
		{ map = "-25,-40", gather = true, path = "left" },
		{ map = "-26,-40", gather = true, path = "left" },
		{ map = "-27,-40", gather = true, path = "left" },
		{ map = "-28,-40", gather = true, path = "left" },
		{ map = "-29,-40", gather = true, path = "left" },
		{ map = "-30,-40", gather = true, path = "bottom" },
		{ map = "-31,-39", gather = true, path = "left" },
		{ map = "-30,-39", gather = true, path = "right" },
		{ map = "-29,-39", gather = true, path = "right" },
		{ map = "-28,-39", gather = true, path = "right" },
		{ map = "-27,-39", gather = true, path = "right" },
		{ map = "-26,-39", gather = true, path = "right" },
		{ map = "-25,-39", gather = true, path = "right" },
		{ map = "-24,-39", gather = true, path = "right" },
		{ map = "-23,-39", gather = true, path = "right" },
		{ map = "-22,-39", gather = true, path = "right" },
		{ map = "-21,-38", gather = true, path = "left" },
		{ map = "-22,-38", gather = true, path = "left" },
		{ map = "-23,-38", gather = true, path = "left" },
		{ map = "-24,-38", gather = true, path = "left" },
		{ map = "-25,-38", gather = true, path = "left" },
		{ map = "-26,-38", gather = true, path = "left" },
		{ map = "-27,-38", gather = true, path = "left" },
		{ map = "-28,-38", gather = true, path = "left" },
		{ map = "-29,-38", gather = true, path = "left" },
		{ map = "-30,-38", gather = true, path = "left" },
		{ map = "-31,-38", gather = true, path = "top" },
		{ map = "-32,-38", path = "top" },
		{ map = "-32,-39", path = "top" },
		{ map = "-32,-40", path = "top" },
		{ map = "-32,-41", path = "left" },
		{ map = "-33,-42", path = "right" },
		{ map = "-33,-41", path = "top" },
		{ map = "-32,-42", path = "top" },
		{ map = "-32,-43", path = "top" },
		{ map = "-32,-44", path = "top" },
		{ map = "-32,-45", path = "top" },
		{ map = "-32,-46", path = "right" },
		{ map = "2885641", path = "424" },
		{ map = "147254", path = "right" },
	}
end

function bank() -- On mets le retour en banque
    return {

       {map = "-26,-42", path= "havenbag"},
       		{ map = "-31,-45", path = "havenbag" },
		{ map = "-30,-45", path = "havenbag" },
		{ map = "-29,-45", path = "havenbag" },
		{ map = "-28,-45", path = "havenbag" },
		{ map = "-27,-45", path = "havenbag" },
		{ map = "-26,-45", path = "havenbag" },
		{ map = "-25,-45", path = "havenbag" },
		{ map = "-24,-45", path = "havenbag" },
		{ map = "-23,-45", path = "havenbag" },
		{ map = "-22,-45", path = "havenbag" },
		{ map = "-21,-45", path = "havenbag" },
		{ map = "-21,-43", path = "havenbag" },
		{ map = "-21,-41", path = "havenbag" },
		{ map = "-21,-39", path = "havenbag" },
		{ map = "-31,-44", path = "havenbag" },
		{ map = "-31,-42", path = "havenbag" },
		{ map = "-31,-40", path = "havenbag" },
		{ map = "-21,-44", path = "havenbag"},
		{ map = "-22,-44", path = "havenbag"},
		{ map = "-24,-44", path = "havenbag"},
		{ map = "-25,-44", path = "havenbag"},
		{ map = "-26,-44", path = "havenbag"},
		{ map = "-23,-44", path = "havenbag"},
		{ map = "-27,-44", path = "havenbag"},
		{ map = "-28,-44", path = "havenbag"},
		{ map = "-29,-44", path = "havenbag"},
		{ map = "-30,-44", path = "havenbag"},
		{ map = "-31,-43", path = "havenbag" },
		{ map = "-30,-43", path = "havenbag" },
		{ map = "-29,-43", path = "havenbag" },
		{ map = "-28,-43", path = "havenbag" },
		{ map = "-27,-43", path = "havenbag" },
		{ map = "-26,-43", path = "havenbag" },
		{ map = "-25,-43", path = "havenbag" },
		{ map = "-24,-43", path = "havenbag" },
		{ map = "-23,-43", path = "havenbag" },
		{ map = "-22,-43", path = "havenbag" },
		{ map = "-21,-42", path = "havenbag"},
		{ map = "-22,-42", path = "havenbag"},
		{ map = "-23,-42", path = "havenbag"},
		{ map = "-24,-42", path = "havenbag"},
		{ map = "-25,-42", path = "havenbag"},
		{ map = "-26,-42", path = "havenbag"},
		{ map = "-27,-42", path = "havenbag"},
		{ map = "-28,-42", path = "havenbag"},
		{ map = "-29,-42", path = "havenbag"},
		{ map = "-30,-42", path = "havenbag"},
		{ map = "-31,-41", path = "havenbag" },
		{ map = "-30,-41", path = "havenbag" },
		{ map = "-29,-41", path = "havenbag" },
		{ map = "-28,-41", path = "havenbag" },
		{ map = "-27,-41", path = "havenbag" },
		{ map = "-26,-41", path = "havenbag" },
		{ map = "-25,-41", path = "havenbag" },
		{ map = "-24,-41", path = "havenbag" },
		{ map = "-23,-41", path = "havenbag" },
		{ map = "-22,-41", path = "havenbag" },
		{ map = "-21,-40", path = "havenbag"},
		{ map = "-22,-40", path = "havenbag"},
		{ map = "-23,-40", path = "havenbag"},
		{ map = "-24,-40", path = "havenbag"},
		{ map = "-25,-40", path = "havenbag"},
		{ map = "-26,-40", path = "havenbag"},
		{ map = "-27,-40", path = "havenbag"},
		{ map = "-28,-40", path = "havenbag"},
		{ map = "-29,-40", path = "havenbag"},
		{ map = "-30,-40", path = "havenbag"},
		{ map = "-31,-39", path = "havenbag"},
		{ map = "-30,-39", path = "havenbag" },
		{ map = "-29,-39", path = "havenbag" },
		{ map = "-28,-39", path = "havenbag" },
		{ map = "-27,-39", path = "havenbag" },
		{ map = "-26,-39", path = "havenbag" },
		{ map = "-25,-39", path = "havenbag" },
		{ map = "-24,-39", path = "havenbag" },
		{ map = "-23,-39", path = "havenbag" },
		{ map = "-22,-39", path = "havenbag" },
		{ map = "-21,-38", path = "havenbag"},
		{ map = "-22,-38", path = "havenbag"},
		{ map = "-23,-38", path = "havenbag"},
		{ map = "-24,-38", path = "havenbag"},
		{ map = "-25,-38", path = "havenbag"},
		{ map = "-26,-38", path = "havenbag"},
		{ map = "-27,-38", path = "havenbag"},
		{ map = "-28,-38", path = "havenbag"},
		{ map = "-29,-38", path = "havenbag"},
		{ map = "-30,-38", path = "havenbag"},
		{ map = "-31,-38", path = "havenbag"},
       {map = "0,0", path =  "zaap(147768)"},
	   	--commence banque bonta
	   {map = "-32,-56", path = "top"},
	   {map = "-32,-57", path = "top"},
	   {map = "-32,-58", path = "right"},

      { map = "147258", custom = House },
      {map = "2883855", custom = cleanInHouse} -- Map extérieure de la maison, on utilise la porte de la maison (cellid/mdp), MAPID OBLIGATOIRE
--]]       -- { map = "83887104", lockedStorage = "458|78978941", path = "396" }, -- Map intérieure de la maison, on utilise le coffre (cellid/mdp), MAPID OBLIGATOIRE
    }
end