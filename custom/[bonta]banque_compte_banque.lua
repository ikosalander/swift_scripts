function customBank()
	--down
	itemID =  598
	itemQ = 50
	popoQuantity = inventory:itemCount(598)

	if popoQuantity > 100 then
		global:printSuccess("greuvettes en stock")
	end

	if popoQuantity > 1000 then
		global:printSuccess("greuvettes en stock")
	end

	chat:sendPrivateMessage("piou", "Aikoww")
	exchange:LaunchExchangeWithPlayer(528420503758)

	exchange:putAllItems()


	if  popoQuantity > 1 then
		global:printSuccess("getItem greuvette block")
		--exchange:getItem(itemID,popoQuantity)
		exchange:getItem(itemID,1)

	end	

	exchange:Ready()
end

--depose les popo de rappel dans le havresac
function putPopo()
	popo = 498
	popoQuantity = inventory:itemCount(598)

	map:door(313)
	exchange:putItem()
	global:leaveDialog()
end


function move()
	return{
		{ map = "5,-18", path = "havenbag" },
		{ map = "0,0", custom = putPopo}
}

end

function bank()
	return{
		{ map = "-28,-41", path = "havenbag" }
	}
end