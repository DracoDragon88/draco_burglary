local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")

AddEventHandler("burglary:money", function(sum, player)
	local user_id = vRP.getUserId({player})
	if Config.GiveInDirty then
		vRP.giveInventoryItem({user_id,"dirty_money",sum,true})
	else
		vRP.giveMoney({user_id,sum})
	end
end)

AddEventHandler("burglary:failed", function(house, coords, player, street)
	if Config.AlertPolice then
		-- local users = vRP.getUsers({})
		-- for k,v in pairs(users) do
		-- 	if vRP.hasPermission({k,"police.service"}) then
		-- 		TriggerClientEvent("draco_burglary:police", v, coords, Config.BlipTime)
		-- 	end
		-- end
		vRP.sendServiceAlert({nil,"Politi",coords.x, coords.y, coords.z,"Røveri igang på " .. street .. "."})
	end
end)
