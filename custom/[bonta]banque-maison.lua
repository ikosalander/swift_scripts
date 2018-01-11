	

BANK_BONTA = true
BANK_ASTRUB = false

MAP_ACTUELLE = map:currentMap()
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

function move()
		return{
	   {map = "2883855", custom = exitHouse},
	   {map = "147258", path =  "bottom"},
	   {map = "-31,-57", path = "bottom"},
	   {map = "-31,-56", path = "bottom"},
	   {map = "-31,-55", path = "bottom"},



	   { map = "-31,-55", path = "bottom" }, -- chemin du zaap bonta vers la banque
       { map = "-31,-56", path = "bottom" }, -- chemin du zaap bonta vers la banque
       { map = "-32,-56", path = "right" }, -- chemin du zaap bonta vers la banque
       { map = "147254", door = "340" }, -- Map extérieure de la banque, on utilise la porte de la banque, MAPID OBLIGATOIRE
       { map = "2884617", custom = CustomBank }, -- Map intérieure de la banque, on parle au banquier, MAPID OBLIGATOIRE
       -- On ajoute aussi path = "396" pour ordonner le changement de map après le retour en banque.
	}


end


function bank() -- On mets le retour en banque
    return {
--[[    	{ map = "147254", path = "havenbag" },
	   	{map = "0,0", path =  "zaap(147768)"},--]]
	   	--commence banque bonta
	   	{map = "-31,-54", path = "top"},
	    {map = "-31,-55", path = "top"},
	   	{map = "-31,-56", path = "top"},
	   	{map = "-31,-57", path = "top"},
      { map = "147258", custom = House },
      {map = "2883855", custom = cleanInHouse} -- Map extérieure de la maison, on utilise la porte de la maison (cellid/mdp), MAPID OBLIGATOIRE
--]]       -- { map = "83887104", lockedStorage = "458|78978941", path = "396" }, -- Map intérieure de la maison, on utilise le coffre (cellid/mdp), MAPID OBLIGATOIRE
    }
end
