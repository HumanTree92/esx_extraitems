ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

-- Start of Dark Net

TriggerEvent('esx_phone:registerNumber', 'darknet', _U('phone_darknet'), true, false, true, true)

function OnDarkNetItemChange(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	local found = false
	local darknet = xPlayer.getInventoryItem('darknet')

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

-- Binoculars
ESX.RegisterUsableItem('binoculars', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	TriggerClientEvent('esx_extraitems:binoculars', source)
end)

-- Bullet-Proof Vest
ESX.RegisterUsableItem('bulletproof', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	TriggerClientEvent('esx_extraitems:bulletproof', source)
	xPlayer.removeInventoryItem('bulletproof', 1)
end)

-- Drill
ESX.RegisterUsableItem('drill', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)

    TriggerClientEvent('esx_extraitems:drill', source)
	xPlayer.removeInventoryItem('drill', 1)
end)

-- First Aid Kit
ESX.RegisterUsableItem('firstaidkit', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	TriggerClientEvent('esx_extraitems:firstaidkit', source)
	xPlayer.removeInventoryItem('firstaidkit', 1)
end)

-- Lock Pick
ESX.RegisterUsableItem('lockpick', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	TriggerClientEvent('esx_extraitems:lockpick', _source)
	xPlayer.removeInventoryItem('lockpick', 1)
end)

-- Oxygen Mask
ESX.RegisterUsableItem('oxygenmask', function(source)
	local xPlayer  = ESX.GetPlayerFromId(source)

	TriggerClientEvent('esx_extraitems:oxygenmask', source)
	xPlayer.removeInventoryItem('oxygenmask', 1)
end)

-- Weapon Box
ESX.RegisterUsableItem('weabox', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	TriggerClientEvent('esx_extraitems:weabox', source)
	xPlayer.removeInventoryItem('weabox', 1)
end)

-- Weapon Clip
ESX.RegisterUsableItem('weaclip', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	TriggerClientEvent('esx_extraitems:weaclip', source)
	xPlayer.removeInventoryItem('weaclip', 1)
end)

-- Vehicle GPS
ESX.RegisterUsableItem('vehgps', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	TriggerClientEvent('esx_extraitems:installGPS', source)
end)
