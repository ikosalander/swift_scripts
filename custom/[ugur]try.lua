
function customBank()
    --down
    itemID =  598
    itemQ = 50
    popoQuantity = inventory:itemCount(598)
    if popoQuantity > 100 then
        global:printSuccess("Je sers à rien mais je suis là")

    chat:sendPrivateMessage("piou", "Aikoww")
    exchange:LaunchExchangeWithPlayer(528420503758)
    exchange:putAllItems()
    PopoRecup = exchange:storageItemQuantity(itemID)
    exchange:getItem(itemID,PopoRecup)
     exchange:Ready()
end
end

function move()
	return{
		{ map = "5,-18", custom = customBank }

}

end

function bank()
	return{
		{ map = "-28,-41", path = "havenbag" }
	}
end