function craft1()
	craft:PutItem(468,200)
	craft:Ready()
end

function move()
	if job:level(28) < 20 then
		return craft1()
	end
end

function bank()
end