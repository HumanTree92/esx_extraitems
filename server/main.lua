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
	if Config.Removeables.BulletProofVest then
		xPlayer.removeInventoryItem('bulletproof', 1)
	end
	xPlayer.showNotification(_U('used_bulletproof'))
end)

-- Drill
ESX.RegisterUsableItem('drill', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    TriggerClientEvent('esx_extraitems:drill', source)
	if Config.Removeables.Drill then
		xPlayer.removeInventoryItem('drill', 1)
	end
	xPlayer.showNotification(_U('used_drill'))
end)

-- First Aid Kit
ESX.RegisterUsableItem('firstaidkit', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent('esx_extraitems:firstaidkit', source)
end)

RegisterNetEvent('esx_extraitems:removefirstaidkit')
AddEventHandler('esx_extraitems:removefirstaidkit', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	if Config.Removeables.FirstAidKit then
		xPlayer.removeInventoryItem('firstaidkit', 1)
	end
end)

-- Lock Pick
ESX.RegisterUsableItem('lockpick', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent('esx_extraitems:lockpick', _source)
	if Config.Removeables.LockPick then
		xPlayer.removeInventoryItem('lockpick', 1)
	end
	xPlayer.showNotification(_U('used_lockpick'))
end)

-- Oxygen Mask
ESX.RegisterUsableItem('oxygenmask', function(source)
	local xPlayer  = ESX.GetPlayerFromId(source)
	TriggerClientEvent('esx_extraitems:oxygenmask', source)
	if Config.Removeables.OxygenMask then
		xPlayer.removeInventoryItem('oxygenmask', 1)
	end
	xPlayer.showNotification(_U('used_oxygenmask'))
end)

-- Repair Kit
ESX.RegisterUsableItem('repairkit', function(source)
	local xPlayer  = ESX.GetPlayerFromId(source)
	TriggerClientEvent('esx_extraitems:repairkit', source)
end)

RegisterNetEvent('esx_extraitems:removerepairkit')
AddEventHandler('esx_extraitems:removerepairkit', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	if Config.Removeables.RepairKit then
		xPlayer.removeInventoryItem('repairkit', 1)
	end
end)

-- Tire Kit
ESX.RegisterUsableItem('tirekit', function(source)
	local xPlayer  = ESX.GetPlayerFromId(source)
	TriggerClientEvent('esx_extraitems:tirekit', source)
end)

RegisterNetEvent('esx_extraitems:removetirekit')
AddEventHandler('esx_extraitems:removetirekit', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	if Config.Removeables.TireKit then
		xPlayer.removeInventoryItem('tirekit', 1)
	end
end)

-- Weapon Box
ESX.RegisterUsableItem('weabox', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent('esx_extraitems:weabox', source)
end)

RegisterNetEvent('esx_extraitems:removeweabox')
AddEventHandler('esx_extraitems:removeweabox', function(hash, ammo)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local weaponName = ESX.GetWeaponFromHash(hash)
	xPlayer.addWeaponAmmo(weaponName.name, ammo)

	if Config.Removeables.WeaponClip then
		xPlayer.removeInventoryItem('weabox', 1)
	end
end)

-- Weapon Clip
ESX.RegisterUsableItem('weaclip', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent('esx_extraitems:weaclip', source)
end)

RegisterNetEvent('esx_extraitems:removeweaclip')
AddEventHandler('esx_extraitems:removeweaclip', function(hash, ammo)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local weaponName = ESX.GetWeaponFromHash(hash)
	xPlayer.addWeaponAmmo(weaponName.name, ammo)

	if Config.Removeables.WeaponClip then
		xPlayer.removeInventoryItem('weaclip', 1)
	end
end)

-- Vehicle GPS
ESX.RegisterUsableItem('vehgps', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent('esx_extraitems:installGPS', source)
end)
