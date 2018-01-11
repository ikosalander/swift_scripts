function echange()
	mdp = "lemotdepasse" -- Mot de passe que vous avez définie dans les options de SwiftBot
	pseudo = "pseudodubotbanque" -- Pseudo de votre bot qui attend les échanges dans la banque
	idBot = iddubotbanque -- ID de votre bot qui attend les échanges, obtenu après avoir fait "/id pseudo" dans la console de votre bot
	supprimer = {16663, 16518, 1984} -- ID des objets que vous voulez supprimer en cas d'erreur d'échange pour les bots en dessous du niveau 10 ou si il n'a pas assez de kamas

	stopBanque = false
	nombreEssai = 0

	if character:level() >= 10 and character:kamas() > 1000 then
	    npc:npcBank(-1)
	    if exchange:storageItemCount() > 0 then
	        while exchange:storageItemCount() > 0 and stopBanque == false do
	            exchange:getAllItems()
	            npc:leaveDialog()
	            chat:sendPrivateMessage(mdp,pseudo)
	            global:delay(2000)
	            while exchange:isInDialog() == false and nombreEssai <= 50 do
	               exchange:LaunchExchangeWithPlayer(idBot)
	               nombreEssai = nombreEssai + 1
	            end
	            if nombreEssai > 50 then
	            	global:printSuccess("Le bot banque ne répond pas, je dépose tout dans ma banque")
	                npc:npcBank(-1)
	                exchange:putAllItems()
	                npc:leaveDialog()
	                stopBanque = true
	            else
	                exchange:putAllItems()
	                exchange:Ready()
	                npc:npcBank(-1)
	            end
	             nombreEssai = 0
	        end
	    else
	        npc:leaveDialog()
	        chat:sendPrivateMessage(mdp,pseudo)
	        global:delay(2000)
	        while exchange:isInDialog() == false and nombreEssai <= 50 do
	            exchange:LaunchExchangeWithPlayer(idBot)
	            nombreEssai = nombreEssai + 1
	        end
	        if nombreEssai > 50 then
	        	global:printSuccess("Le bot banque ne répond pas, je dépose tout dans ma banque")
	            npc:npcBank(-1)
	            exchange:putAllItems()
	            npc:leaveDialog()
	        else
	            exchange:putAllItems()
	            exchange:Ready()
	        end
	        nombreEssai = 0
    	end
    else
    	chat:sendPrivateMessage(mdp,pseudo)
	    global:delay(2000)
	    while exchange:isInDialog() == false and nombreEssai <= 50 do
		    exchange:LaunchExchangeWithPlayer(idBot)
		    nombreEssai = nombreEssai + 1
	    end
	    if nombreEssai > 50 then
	    	global:printSuccess("Le bot banque ne répond pas, je suis obligé de supprimer mes objets")
	        for i, v in ipairs(supprimer) do
	        	inventory:deleteItem(v,inventory:itemCount(v))
	        end
	    else
	        exchange:putAllItems()
	        exchange:Ready()
	    end
	    nombreEssai = 0
    end
end