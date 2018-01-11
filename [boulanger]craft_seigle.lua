-- Nom : Boulanger - craft pein seigle
-- CrÃ©ateur : White
-- Type : Craft
-- Zone : bonta
-- Zone Depart : any position // zaap bonta
-- Evolution : 1.1
-- Ajout Gestion Zaap
-- Ajout Gestion si pas sur map de depart ==> havre-sac
---------------------------------------------

-- Init Param Job 
idJob = 28
levelJob = job:level(idJob)

-- Init nb pod
nbPod = 0
pMinPod = 20
nbPodMax = 0
nbPodLib = 0
pPod = inventory:podsP()

-- Init id Ressource
idEau = 311
idSeigle = 532
idOrchidee = 593
idPainSeigle = 539
idTonneauEau = 16824 -- A gerer 

-- Init int
delayCraft = 2000
nbMinKama = 500000
nbKama = character:kamas()

-- Init Boolean 
bReturnBank = false
bGetRessource = false

-- Init Ã  0 des nombres
nbEau_inv = 0
nbEau_bank = 0
nbEau_achat = 0
nbSeigle_inv = 0
nbSeigle_bank = 0
nbOrchidee_inv = 0
nbOrchidee_bank = 0

-- Affiche Warning
global:printError("Attention il faut configurer le bot pour avoir 101% pour le retour en banque.")

-- PrÃ©recquis lvJob > 100
if levelJob < 100 then
	global:printError("Je suis trop bas level en paysan : " .. levelJob .. " alors qu'il faut Ãªtre level 100 mini, je me deconnecte.")
	global:finishScript()
end

-- Verif Pod
if pMinPod > pPod then
	global:printError("Attention je n'ai pas assez de place dans les sacs, le rendement ne sera pas optimal.")
end

-- Verif Kama
if nbKama < nbMinKama then
	global:printError("Attention je suis en dessous du seuil de kamas voulu.")
end

-- Fonction custom pour recuperer les ressouces en banque
function fRecupRessource()
	-- On parle au npc
	npc:npcBank(-1)
	
	-- On se vide avant le craft
	exchange:putAllItems()
	nbPod = inventory:pods()
	nbPodMax = inventory:podsMax()
	nbPodLib = math.floor((nbPodMax - nbPod) * 0.97)
	
	-- On calcul la repartition des ressouces
	nbPod_Ress = math.floor(nbPodLib / 14)
	nbEau_ress = math.floor(1 * nbPod_Ress)
	nbOrchidee_ress = math.floor(1 * nbPod_Ress)
	nbSeigle_ress = math.floor(6 * nbPod_Ress)
	
	-- On calcul des ressouces en banque
	nbEau_bank = exchange:storageItemQuantity(idEau)
	nbTonneauEau_bank = exchange:storageItemQuantity(idTonneauEau)
	nbSeigle_bank = exchange:storageItemQuantity(idSeigle)
	nbOrchidee_bank = exchange:storageItemQuantity(idOrchidee)
	
	-- On recupere les ressources
	if (nbEau_bank ~= 0) then
		if (nbEau_bank >= nbEau_ress) then
			exchange:getItem(idEau, nbEau_ress)
			nbEau_inv = inventory:itemCount(idEau)
		-- Sinon on prend ce qu'il y a
		else
			exchange:getItem(idEau, nbEau_bank)
			nbEau_inv = inventory:itemCount(idEau)
			nbEau_achat = nbEau_ress - nbEau_inv
		end	
	end	
	-- On recupÃ©re le seigle en banque	
	if (nbSeigle_bank ~= 0) then
		-- Si on a assez de seigle, On prend 
		if (nbSeigle_bank >= nbSeigle_ress) then
			exchange:getItem(idSeigle, nbSeigle_ress)
			nbSeigle_inv = inventory:itemCount(idSeigle)
			-- Sinon  on affiche message + arret script
		else
			global:printError("Je n'ai plus assez de seigle, je me deconnecte.")
			global:finishScript()
			-- global:disconnect()
		end
	end
	-- On recupÃ©re les orchidÃ©es
	if (nbOrchidee_bank ~= 0) then
		-- Si on a assez d'orchidÃ©e, on prend 
		if (nbOrchidee_bank >= nbOrchidee_ress) then
			exchange:getItem(idOrchidee, nbOrchidee_ress)
			nbOrchidee_inv = inventory:itemCount(idOrchidee)
			-- Sinon on affiche message + arret script
		else
			global:printError("Je n'ai plus assez d'ochidÃ©e, je me deconnecte.")
			global:finishScript()
			-- global:disconnect()
		end
	end

	-- On quitte le pnj
	global:leaveDialog()
	
	-- On valorise le fait qu'on a les ressources
	bGetRessource = true
	
	-- On sors de la banque
	map:moveToCell(424)
end

-- Function custom pour creer le pain de seible
function fCraft()
	-- On utilise l'atelier
	map:door(312) -- A verifier
	global:delay(delayCraft)
	-- On Depose les items dans la fenetre de craft
	craft:PutItem(idSeigle, 6)
	craft:PutItem(idEau, 1)
	craft:PutItem(idOrchidee, 1)		
	global:delay(delayCraft)
	-- On change la quantitÃ©
	craft:ChangeQuantityToCraft(nbPod_Ress) 
	global:delay(delayCraft) 
	-- On craft
	craft:Ready() 
	global:delay(delayCraft)
	-- On quitte le craft
	global:leaveDialog()
	global:delay(delayCraft)
	-- On sors de l'atelier
	map:moveToCell(410) 
	
	bReturnBank = true
	bGetRessource = true
end

-- Depot du pain en banque
function fPutPainSeigle()
	-- On parle au npc
	npc:npfPutPainSeigle(-1)
	-- On pose les craft
	exchange:putItem(idPainSeigle, nbPod_Ress) 
	-- On clos la discution
	npc:leaveDialog()
	-- On sors de la banque
	map:moveToCell(424)
	--On valorise le fait qu'on a plus de ressources
	bGetRessource = false
	bReturnBank = false
end

-- Function de RAZ boolean
function fRazBool()
	bReturnBank = false
	bGetRessource = false
end

-- Function main move
function move()
	if not bZaap and not map:onMap("147768") then
       if (map:onMap("0,0")) then
           bZaap = true
           map:changeMap("zaap(147768)")
       else
           map:changeMap("havenbag")
       end
   else
       bZaap = true
   end
   
	-- Si on a pas les ressrouces, on va les chercher
	if ( bGetRessource == false) and ( bReturnBank == false ) then
		return 
		{
			-- On prend le zaapi pour la banque
			{ map = "-32,-56", path = "zaapi(147254)" }, 
			-- On rentre dans la banque
			{ map = "147254", door = "383" },
			-- On RÃ©cupÃ©re les ressources
			{ map = "2885641", custom = fRecupRessource }
		}	
	end	
	-- Une fois qu'on a les ressouces on va crafter	
	if ( bGetRessource == true ) and ( bReturnBank == false ) then
		return
		{
			-- On Prend le zappi pour l'atelier
			{ map = "-31,-54", path = "zaapi(146226)" },
			-- On rentre dans l'atelier
			{ map = "146226", door = "200" },
			-- On craft les items
			{ map = "6291461", custom = fCraft }	
		}
	end	
	if ( bGetRessource == true ) and ( bReturnBank == true ) then
		return
		{
		-- On prend le zaapi pour la banque
			{ map = "146226", path = "zaapi(147254)" },
			-- On rentre dans la banque
			{ map = "147254", door = "383" },
			-- On depose les craft
			{ map = "2885641", custom = fPutPainSeigle },
		}
	end
end	
