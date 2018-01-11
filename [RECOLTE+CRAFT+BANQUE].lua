-----------------------------
-- RECOLTE + CRAFT + BANQUE--
-- BY BRIZZE  Swiftbot.fr  --
-----------------------------

FuulPods = false

GATHER = {}
function CustomCraft()

FuulPods = true
if job:level(28) < 20 then
map:door(297)
craft:PutItem(289,4)
local quant = math.floor(inventory:itemCount(289) / 4)
craft:ChangeQuantityToCraft(quant)
craft:Ready()
global:printMessage("craft de " ..  quant .. " Pain d'Amakna")
global:leaveDialog()
map:moveToCell(410)
else
map:door(297)
craft:PutItem(400,4)
craft:PutItem(421,1)
local quantity = 1
if math.floor(inventory:itemCount(400) / 4) > math.floor(inventory:itemCount(421) / 1) then
quantity = math.floor(inventory:itemCount(421) / 1)
else
quantity = math.floor(inventory:itemCount(400) / 4)
end
craft:ChangeQuantityToCraft(quantity)
craft:Ready()
global:printMessage("craft de " ..  quantity .. " Pain de Carasau")
global:leaveDialog()
map:moveToCell(410)
end
end

function CustomBank()
FuulPods = false
npc:npcBank(-1)
exchange:putAllItems()
global:leaveDialog()
map:moveToCell(396)
end

function npctoastrub()
	npc:npc(2889,3)
	npc:reply(-1)
	npc:reply(-1)
end

function move()
if FuulPods == false then -- on passe à true des qu'il est allé craft pour qu'il aille se vider en banque

if inventory:podsP() < 96 then
if job:level(28) < 20 then -- si le métier est < 20 alors on récolte du blé
GATHER = {38}
-- Trajet pour blé
return {

        { map="153092354", path = "409" },
        { map="152046595", path = "right(531)" },
        { map="152045571", path = "right(531)" },
        { map="152043521", path = "right(531)" },
        { map="152045573", path = "right(531)" },
        { map="-2,-3", path = "right" },
        { map="-1,-3", path = "right" },
        { map="0,-3", path = "right" },
        { map="1,-3", path = "right" },
        { map="2,-3", path = "right" },
        { map="3,-3", path = "right" },
		{ map="4,-3", custom = npctoastrub },
        { map = "84674566", path = "top" },
		{ map="4,-17", path = "top" },
		{ map="4,-18", path = "top" },
		{ map="4,-19", path = "top" },
		{ map="4,-20", path = "top" },
		{ map="4,-21", path = "right" },
		{ map="5,-21", path = "top" },
		{ map="5,-22", path = "top" },
		{ map="5,-23", path = "left" },
		{ map="4,-23", path = "top" },
		{ map="4,-24", gather = true, path = "top" },
		{ map="4,-25", gather = true, path = "top" },
		{ map="4,-27", gather = true, path = "top" },
		{ map="4,-26", gather = true, path = "top" },
		{ map="4,-28", gather = true, path = "right" },
		{ map="5,-28", gather = true, path = "bottom" },
		{ map="5,-27", gather = true, path = "bottom" },
		{ map="5,-26", gather = true, path = "bottom" },
		{ map="5,-25", gather = true, path = "bottom" },
		{ map="5,-24", gather = true, path = "right" },
		{ map="6,-24", gather = true, path = "top" },
		{ map="6,-25", gather = true, path = "top" },
		{ map="6,-26", gather = true, path = "top" },
		{ map="6,-27", gather = true, path = "right" },
		{ map="7,-27", gather = true, path = "bottom" },
		{ map="7,-26", gather = true, path = "right" },
		{ map="8,-26", gather = true, path = "bottom" },
		{ map="7,-25", gather = true, path = "bottom" },
		{ map="7,-24", gather = true, path = "bottom" },
		{ map="7,-23", path = "left" },
		{ map="6,-23", path = "left" },
		{ map="8,-25", gather = true, path = "left" },
		{ map="-1,-14", path = "right" },
		{ map="-1,-15", path = "right" },
		{ map="-1,-16", path = "right" },
		{ map="-1,-17", path = "right" },
		{ map="-1,-18", path = "right" },
		{ map="-1,-19", path = "right" },
		{ map="-1,-20", path = "right" },
		{ map="-1,-21", path = "right" },
		{ map="0,-21", path = "right" },
		{ map="0,-22", path = "right" },
		{ map="1,-22", path = "right" },
		{ map="1,-21", path = "right" },
		{ map="2,-22", path = "right" },
		{ map="2,-21", path = "right" },
		{ map="2,-20", path = "right" },
		{ map="1,-20", path = "right" },
		{ map="0,-20", path = "right" },
		{ map="0,-18", path = "right" },
		{ map="0,-17", path = "right" },
		{ map="0,-16", path = "right" },
		{ map="0,-15", path = "right" },
		{ map="0,-14", path = "right" },
		{ map="1,-14", path = "right" },
		{ map="2,-14", path = "right" },
		{ map="1,-15", path = "right" },
		{ map="2,-15", path = "right" },
		{ map="3,-15", path = "right" },
		{ map="3,-16", path = "right" },
		{ map="2,-16", path = "right" },
		{ map="1,-16", path = "right" },
		{ map="1,-17", path = "right" },
		{ map="2,-17", path = "right" },
		{ map="3,-17", path = "right" },
		{ map="3,-18", path = "right" },
		{ map="2,-18", path = "right" },
		{ map="1,-18", path = "right" },
		{ map="1,-19", path = "right" },
		{ map="2,-19", path = "right" },
		{ map="3,-19", path = "right" },
		{ map="3,-20", path = "right" },
		{ map="3,-21", path = "right" },
		{ map="3,-22", path = "right" },
		{ map="4,-22", path = "right" },
		{ map="5,-20", path = "left" },
		{ map="6,-21", path = "left" },
		{ map="7,-20", path = "left" },
		{ map="7,-21", path = "left" },
		{ map="6,-20", path = "left" },
		{ map="5,-19", path = "left" },
		{ map="6,-19", path = "left" },
		{ map="7,-19", path = "left" },
		{ map="7,-18", path = "left" },
		{ map="6,-18", path = "left" },
		{ map="5,-18", path = "left" },
		{ map="5,-17", path = "left" },
		{ map="6,-17", path = "left" },
		{ map="7,-17", path = "left" },
		{ map="7,-16", path = "left" },
		{ map="6,-16", path = "left" },
		{ map="5,-16", path = "left" },
		{ map="5,-15", path = "left" },
		{ map="6,-15", path = "left" },
		{ map="7,-15", path = "left" },
		{ map="3,-14", path = "top" },
		{ map="4,-15", path = "top" },
		{ map = "83887104", path = "396" },
    }
	
else

GATHER = {43} -- on récolte d'abord l'orge
local quantity = 1
local Podsrestant = inventory:podsMax() - inventory:pods()
quantity = math.floor(inventory:itemCount(400) / 4)
if Podsrestant > quantity * 1 then ---  on vérifie qu'on a assez de pods pour supporter les orties après
GATHER = {43}
else
GATHER = {254}
end
-- Trajet pour orge/ortie
return {
{ map="4,-17", path="top" },
	{ map="4,-18", path="top" },
	{ map="4,-19", path="top" },
	{ map="4,-20", path="top" },
	{ map="4,-21", path="top" },
	{ map="4,-22", path="right" },
	{ map="5,-22", path="top" },
	{ map="5,-23", path="left" },
	{ map="4,-23", path="left" },
	{ map="3,-23", gather = true, path="left" },
	{ map="2,-23", gather = true, path="top" },
	{ map="2,-24", gather = true, path="top" },
	{ map="2,-25", path="left" },
	{ map="1,-25", gather = true, path="left" },
	{ map="0,-25", gather = true, path="top" },
	{ map="0,-26", gather = true, path="top" },
	{ map="0,-27", gather = true, path="right" },
	{ map="1,-27", gather = true, path="bottom" },
	{ map="1,-26", gather = true, path="bottom" },
	{ map="1,-25", gather = true, path="right" },
	{ map="2,-25", path="top" },
	{ map="2,-26", gather = true, path="top" },
	{ map="2,-27", gather = true, path="top" },
	{ map="2,-28", gather = true, path="right" },
	{ map="3,-28", gather = true, path="top" },
	{ map="3,-29", path="right" },
	{ map="4,-29", gather = true, path="bottom" },
	{ map="4,-28", path="bottom" },
	{ map="4,-27", gather = true, path="bottom" },
	{ map="4,-26", path="bottom" },
	{ map="4,-25", gather = true, path="bottom" },
	{ map="4,-24", gather = true, path="right" },
	{ map="5,-24", gather = true, path="top" },
	{ map="5,-25", gather = true, path="top" },
	{ map="5,-26", gather = true, path="top" },
	{ map="5,-27", path="top" },
	{ map="5,-28", gather = true, path="top" },
	{ map="5,-29", gather = true, path="top" },
	{ map="5,-30", gather = true, path="right" },
	{ map="6,-30", gather = true, path="bottom" },
	{ map="6,-29", gather = true, path="bottom" },
	{ map="6,-28", gather = true, path="bottom" },
	{ map="6,-27", gather = true, path="right" },
	{ map="7,-27", gather = true, path="bottom" },
	{ map="7,-26", gather = true, path="left" },
	{ map="6,-26", gather = true, path="bottom" },
	{ map="6,-25", gather = true, path="bottom" },
	{ map="6,-24", path="right" },
	{ map="7,-24", path="right" },
	{ map="8,-24", gather = true, path="top" },
	{ map="8,-25", gather = true, path="right" },
	{ map="9,-25", gather = true, path="bottom" },
	{ map="9,-24", gather = true, path="bottom" },
	{ map="9,-23", path="left" },
	{ map="8,-23", path="left" },
	{ map="7,-23", gather = true, path="left" },
	{ map="6,-23", gather = true, path="left" },
	{ map="5,-23", path="left" },
	{ map = "84674566", path = "top" },    -- Map exterieure de la banque
    { map = "83887104", path = "396" },    -- Map interieure de la banque
  }
end
else
-- Trajet pour aller craft
return {
	{ map="4,-17", path="bottom" },
	{ map="4,-18", path="bottom" },
	{ map="4,-19", path="bottom" },
	{ map="4,-20", path="bottom" },
	{ map="4,-21", path="bottom" },
	{ map="5,-21", path="left" },
	{ map="5,-22", path="bottom" },
	{ map="5,-23", path="bottom" },
	{ map="1,-25", path="right" },
	{ map="0,-25", path="right" },
	{ map="1,-26", path="right" },
	{ map="0,-26", path="right" },
	{ map="1,-27", path="right" },
	{ map="0,-27", path="right" },
	{ map="4,-23", path="right" },
	{ map="3,-23", path="right" },
	{ map="2,-23", path="right" },
	{ map="2,-24", path="bottom" },
	{ map="2,-25", path="bottom" },
	{ map="2,-26", path="bottom" },
	{ map="2,-27", path="bottom" },
	{ map="2,-28", path="bottom" },	
	{ map="3,-25", path="right" },
	{ map="3,-26", path="right" },
	{ map="3,-28", path="right" },	
	{ map="4,-24", path="bottom" },
	{ map="4,-25", path="bottom" },
	{ map="4,-26", path="bottom" },
	{ map="4,-27", path="bottom" },
	{ map="4,-28", path="bottom" },
	{ map="4,-29", path="bottom" },	
	{ map="5,-30", path="bottom" },
	{ map="5,-29", path="bottom" },
	{ map="5,-28", path="bottom" },
	{ map="5,-27", path="bottom" },
	{ map="5,-26", path="bottom" },
	{ map="5,-25", path="left" },
	{ map="5,-24", path="bottom" },
	{ map="6,-30", path="bottom" },
	{ map="6,-29", path="bottom" },
	{ map="6,-28", path="bottom" },
	{ map="6,-27", path="bottom" },
	{ map="7,-27", path="left" },
	{ map="7,-26", path="left" },
	{ map="6,-26", path="bottom" },
	{ map="6,-25", path="bottom" },
	{ map="6,-24", path="bottom" },
	{ map="7,-24", path="left" },
	{ map="8,-24", path="left" },
	{ map="8,-25", path="bottom" },
	{ map="9,-25", path="left" },
	{ map="9,-24", path="left" },
	{ map="9,-23", path="left" },
	{ map="8,-23", path="left" },
	{ map="7,-23", path="left" },
	{ map="6,-23", path="left" },
	{ map = "84674566", path="left" }, -- Map exterieure de la banque
	{ map="3,-16", path="left" },
	{ map="84673542", door = "256" },
	{ map="83629056", custom = CustomCraft},
	}
end

else
-- Trajet pour aller se vider en banque
return {
       { map="84673542", path = "right" },
	   { map="3,-16", path = "right" },
	   { map="84674566", door = "303" },
	   { map="83887104", custom = CustomBank },
}
end


    
end