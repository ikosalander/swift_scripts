ZAAP_ASTRUB = false
ZAAP_BONTA = false
ZAAP_BRAKMAR = false
ZAAP_BORD_FORET_MALEFIQUE = false
ZAAP_CHATEAU_AMAKNA = false
ZAAP_COIN_DES_BOUF = false
ZAAP_PORT_MADRESTAM = false
ZAAP_VILLAGE_AMAKNA = false
ZAAP_RIVAGE_SUFOKIEN = false
ZAAP_SUFOKIA = false
ZAAP_VILLAGE_COTIER = false
ZAAP_FRIFRI_LA_BOUGADE = false
ZAAP_FRIFRI_VILLAGE_ENSEVELI = false
ZAAP_PLAGE_DE_LA_TORTUE = false
ZAAP_MONTAGNE_DES_KOALAKS = false
ZAAP_PANDALA_NEUTRE = false
ZAAP_PANDALA_FEU = false
ZAAP_CHAMPS_CANIA = false
ZAAP_LAC_CANIA = false
ZAAP_MASSIF_CANIA = false
ZAAP_PLAINE_DES_PORKASS = false
ZAAP_PLAINE_ROCHEUSES = false
ZAAP_PLAINE_ROCAILLEUSE = false
ZAAP_SAHARACH = false
ZAAP_TAINELA = false


BANK_BONTA = false
BANK_ASTRUB = false

MAP_ACTUELLE = map:currentMap() 

function move()

	
	if ZAAP_ASTRUB == true then
		return {
			{map = MAP_ACTUELLE, path = "havenbag"},
			{map = "0,0", path =  "zaap(84674563)"},
		}
	end

	if ZAAP_BONTA == true then
		return {
			{map = MAP_ACTUELLE, path = "havenbag"},
			{map = "0,0", path =  "zaap(147768)"},
		}
	end
	
	if ZAAP_BRAKMAR == true then
		return {
			{map = MAP_ACTUELLE, path = "havenbag"},
			{map = "0,0", path =  "zaap(144419)"},
		}
	end
		
	if ZAAP_BORD_FORET_MALEFIQUE == true then
		return {
			{map = MAP_ACTUELLE, path = "havenbag"},
			{map = "0,0", path =  "zaap(88212746)"},
		}
	end
		
	if ZAAP_CHATEAU_AMAKNA == true then
		return {
			{map = MAP_ACTUELLE, path = "havenbag"},
			{map = "0,0", path =  "zaap(68552706)"},
		}
	end
		
	if ZAAP_PORT_MADRESTAM == true then
		return {
			{map = MAP_ACTUELLE, path = "havenbag"},
			{map = "0,0", path =  "zaap(68419587)"},
		}
	end
		
	if ZAAP_VILLAGE_AMAKNA == true then
		return {
			{map = MAP_ACTUELLE, path = "havenbag"},
			{map = "0,0", path =  "zaap(88213271)"},
		}
	end
		
	if ZAAP_RIVAGE_SUFOKIEN == true then
		return {
			{map = MAP_ACTUELLE, path = "havenbag"},
			{map = "0,0", path =  "zaap(88085249)"},
		}
	end
		
	if ZAAP_SUFOKIA == true then
		return {
			{map = MAP_ACTUELLE, path = "havenbag"},
			{map = "0,0", path =  "zaap(95422468)"},
		}
	end
		
	if ZAAP_VILLAGE_COTIER == true then
		return {
			{map = MAP_ACTUELLE, path = "havenbag"},
			{map = "0,0", path =  "zaap(154642)"},
		}
	end
				
	if ZAAP_FRIFRI_LA_BOUGADE == true then
		return {
			{map = MAP_ACTUELLE, path = "havenbag"},
			{map = "0,0", path =  "zaap(54172969)"},
		}
	end
		
	if ZAAP_FRIFRI_VILLAGE_ENSEVELI == true then
		return {
			{map = MAP_ACTUELLE, path = "havenbag"},
			{map = "0,0", path =  "zaap(54172489)"},
		}
	end		
	
	if ZAAP_PLAGE_DE_LA_TORTUE == true then
		return {
			{map = MAP_ACTUELLE, path = "havenbag"},
			{map = "0,0", path =  "zaap(156762120)"},
		}
	end	
	
	if ZAAP_MONTAGNE_DES_KOALAKS == true then
		return {
			{map = MAP_ACTUELLE, path = "havenbag"},
			{map = "0,0", path =  "zaap(73400320)"},
		}
	end	
	
	if ZAAP_PANDALA_NEUTRE == true then
		return {
			{map = MAP_ACTUELLE, path = "havenbag"},
			{map = "0,0", path =  "zaap(13605)"},
		}
	end	
	
	if ZAAP_CHAMPS_CANIA == true then
		return {
			{map = MAP_ACTUELLE, path = "havenbag"},
			{map = "0,0", path =  "zaap(142087694)"},
		}
	end	
	
	if ZAAP_LAC_CANIA == true then
		return {
			{map = MAP_ACTUELLE, path = "havenbag"},
			{map = "0,0", path =  "zaap(156240386)"},
		}
	end
	
	if ZAAP_MASSIF_CANIA == true then
		return {
			{map = MAP_ACTUELLE, path = "havenbag"},
			{map = "0,0", path =  "zaap(165152263)"},
		}
	end
	
	if ZAAP_PLAINE_DES_PORKASS == true then
		return {
			{map = MAP_ACTUELLE, path = "havenbag"},
			{map = "0,0", path =  "zaap(84806401)"},
		}
	end
	
	if ZAAP_PLAINE_ROCHEUSES == true then
		return {
			{map = MAP_ACTUELLE, path = "havenbag"},
			{map = "0,0", path =  "zaap(147590153)"},
		}
	end
	
	if ZAAP_PLAINE_ROCAILLEUSE == true then
		return {
			{map = MAP_ACTUELLE, path = "havenbag"},
			{map = "0,0", path =  "zaap(164364304)"},
		}
	end
	
	if ZAAP_PANDALA_FEU == true then
		return {
			{map = MAP_ACTUELLE, path = "havenbag"},
			{map = "0,0", path =  "zaap(15153)"},
		}
	end
	
	if ZAAP_SAHARACH == true then
		return {
			{map = MAP_ACTUELLE, path = "havenbag"},
			{map = "0,0", path =  "zaap(173278210)"},
		}
	end
	
	if ZAAP_COIN_DES_BOUF == true then
		return {
			{map = MAP_ACTUELLE, path = "havenbag"},
			{map = "0,0", path =  "zaap(88082704)" },
		}		
	end
	
	if ZAAP_TAINELA == true then
		return {
			{map = MAP_ACTUELLE, path = "havenbag"},
			{map = "0,0", path =  "zaap(120062979)" },
		}		
	end
	
	if BANK_BONTA == true then 
		return {
			{map = MAP_ACTUELLE, path = "havenbag"},
			{map = "0,0", path =  "zaap(147768)"},
			{map = "147768", path = "zaapi(147254)"}
		}
	end
	
	if BANK_ASTRUB == true then
		return {
			{map = MAP_ACTUELLE, path = "havenbag"},
			{map = "0,0", path =  "zaap(84674563)"},
			{map = "4,-19", path = "bottom"},
			{map = "4,-18", path = "bottom"},
			{map = "4,-17", path = "bottom"},
		}
	end

end

