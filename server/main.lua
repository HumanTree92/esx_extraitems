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

-- Vehicle GPS
ESX.RegisterUsableItem('vehgps', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent('esx_extraitems:installGPS', source)
end)

-- Start of Ammo Boxes
ESX.RegisterUsableItem('boxpistol', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent('esx_extraitems:checkammo', source, 'boxpistol')
end)

ESX.RegisterUsableItem('boxsmg', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent('esx_extraitems:checkammo', source, 'boxsmg')
end)

ESX.RegisterUsableItem('boxshot', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent('esx_extraitems:checkammo', source, 'boxshot')
end)

ESX.RegisterUsableItem('boxrifle', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent('esx_extraitems:checkammo', source, 'boxrifle')
end)

ESX.RegisterUsableItem('boxmg', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent('esx_extraitems:checkammo', source, 'boxmg')
end)

ESX.RegisterUsableItem('boxsniper', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent('esx_extraitems:checkammo', source, 'boxsniper')
end)

ESX.RegisterUsableItem('boxflare', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent('esx_extraitems:checkammo', source, 'boxflare')
end)

ESX.RegisterUsableItem('boxbig', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent('esx_extraitems:checkammo', source, 'boxbig')
end)

ESX.RegisterUsableItem('boxsmall', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent('esx_extraitems:checkammo', source, 'boxsmall')
end)

RegisterNetEvent('esx_extraitems:removebox')
AddEventHandler('esx_extraitems:removebox', function(hash, ammo, type)
	local xPlayer = ESX.GetPlayerFromId(source)

	if type == 'boxpistol' then
		for k,v in pairs(Config.Weapons.Pistols) do
			if (v.weaponHash == hash) then
				xPlayer.addWeaponAmmo(v.weaponName, ammo)

				if Config.Removeables.AmmoBoxes then
					xPlayer.removeInventoryItem('boxpistol', 1)
				end

				xPlayer.showNotification(_U('used_boxpistol'))
				break
			else
				xPlayer.showNotification(_U('not_suitable'))
			end
		end
	elseif type == 'boxsmg' then
		for k,v in pairs(Config.Weapons.SMGs) do
			if (v.weaponHash == hash) then
				xPlayer.addWeaponAmmo(v.weaponName, ammo)

				if Config.Removeables.AmmoBoxes then
					xPlayer.removeInventoryItem('boxsmg', 1)
				end

				xPlayer.showNotification(_U('used_boxsmg'))
				break
			else
				xPlayer.showNotification(_U('not_suitable'))
			end
		end
	elseif type == 'boxshot' then
		for k,v in pairs(Config.Weapons.Shotguns) do
			if (v.weaponHash == hash) then
				xPlayer.addWeaponAmmo(v.weaponName, ammo)

				if Config.Removeables.AmmoBoxes then
					xPlayer.removeInventoryItem('boxshot', 1)
				end

				xPlayer.showNotification(_U('used_boxshot'))
				break
			else
				xPlayer.showNotification(_U('not_suitable'))
			end
		end
	elseif type == 'boxrifle' then
		for k,v in pairs(Config.Weapons.Rifles) do
			if (v.weaponHash == hash) then
				xPlayer.addWeaponAmmo(v.weaponName, ammo)

				if Config.Removeables.AmmoBoxes then
					xPlayer.removeInventoryItem('boxrifle', 1)
				end

				xPlayer.showNotification(_U('used_boxrifle'))
				break
			else
				xPlayer.showNotification(_U('not_suitable'))
			end
		end
	elseif type == 'boxmg' then
		for k,v in pairs(Config.Weapons.MGs) do
			if (v.weaponHash == hash) then
				xPlayer.addWeaponAmmo(v.weaponName, ammo)

				if Config.Removeables.AmmoBoxes then
					xPlayer.removeInventoryItem('boxmg', 1)
				end

				xPlayer.showNotification(_U('used_boxmg'))
				break
			else
				xPlayer.showNotification(_U('not_suitable'))
			end
		end
	elseif type == 'boxsniper' then
		for k,v in pairs(Config.Weapons.Snipers) do
			if (v.weaponHash == hash) then
				xPlayer.addWeaponAmmo(v.weaponName, ammo)

				if Config.Removeables.AmmoBoxes then
					xPlayer.removeInventoryItem('boxsniper', 1)
				end

				xPlayer.showNotification(_U('used_boxsniper'))
				break
			else
				xPlayer.showNotification(_U('not_suitable'))
			end
		end
	elseif type == 'boxflare' then
		for k,v in pairs(Config.Weapons.Flares) do
			if (v.weaponHash == hash) then
				xPlayer.addWeaponAmmo(v.weaponName, ammo)

				if Config.Removeables.AmmoBoxes then
					xPlayer.removeInventoryItem('boxflare', 1)
				end

				xPlayer.showNotification(_U('used_boxflare'))
				break
			else
				xPlayer.showNotification(_U('not_suitable'))
			end
		end
	elseif type == 'boxbig' then
		local weaponName = ESX.GetWeaponFromHash(hash)
		xPlayer.addWeaponAmmo(weaponName.name, ammo)

		if Config.Removeables.AmmoBoxes then
			xPlayer.removeInventoryItem('boxbig', 1)
		end

		xPlayer.showNotification(_U('used_boxbig'))
	elseif type == 'boxsmall' then
		local weaponName = ESX.GetWeaponFromHash(hash)
		xPlayer.addWeaponAmmo(weaponName.name, ammo)

		if Config.Removeables.AmmoBoxes then
			xPlayer.removeInventoryItem('boxsmall', 1)
		end

		xPlayer.showNotification(_U('used_boxsmall'))
	end
end)
-- End of Ammo Boxes
