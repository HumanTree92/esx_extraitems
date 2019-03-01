ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

-- Start of Dark Net

TriggerEvent('esx_phone:registerNumber', 'darknet', _U('phone_darknet'), true, false, true, true)

function OnDarkNetItemChange(source)

	local xPlayer  = ESX.GetPlayerFromId(source)
	local found    = false
	local darknet  = xPlayer.getInventoryItem('darknet')
	
	if darknet.count > 0 then
		found = true
	end
	
	if found then
		TriggerEvent('esx_phone:addSource', 'darknet', source)
	else
		TriggerEvent('esx_phone:removeSource', 'darknet', source)
	end
	
end

RegisterServerEvent('esx_phone:reload')
AddEventHandler('esx_phone:reload', function(phoneNumber)
--AddEventHandler('esx:playerLoaded', function(source)

	local xPlayer  = ESX.GetPlayerFromId(source)
	local darknet  = xPlayer.getInventoryItem('darknet')

	if darknet.count > 0 then
		TriggerEvent('esx_phone:addSource', 'darknet', source)
	end

end)

AddEventHandler('esx:playerDropped', function(source)
	TriggerEvent('esx_phone:removeSource', 'darknet', source)
end)

AddEventHandler('esx:onAddInventoryItem', function(source, item, count)
	if item.name == 'darknet' then
		OnDarkNetItemChange(source)
	end
end)

AddEventHandler('esx:onRemoveInventoryItem', function(source, item, count)
	if item.name == 'darknet' then
		OnDarkNetItemChange(source)
	end
end)

-- End of Dark Net

-- Oxygen Mask
ESX.RegisterUsableItem('oxygen_mask', function(source)
	TriggerClientEvent('esx_extraitems:oxygen_mask', source)
	local xPlayer  = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('oxygen_mask', 1)
end)

-- Bullet-Proof Vest
ESX.RegisterUsableItem('bulletproof', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent('esx_extraitems:bulletproof', source)
	xPlayer.removeInventoryItem('bulletproof', 1)
end)

-- First Aid Kit
ESX.RegisterUsableItem('firstaidkit', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent('esx_extraitems:firstaidkit', source)
	xPlayer.removeInventoryItem('firstaidkit', 1)
end)

-- Weapon Clip
ESX.RegisterUsableItem('clip', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent('esx_extraitems:clipcli', source)
	xPlayer.removeInventoryItem('clip', 1)
end)
