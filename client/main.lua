local Keys = {
    ["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
    ["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
    ["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
    ["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
    ["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
    ["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
    ["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
    ["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
    ["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
}

ESX = nil
local PlayerData = {}
--local CurrentActionData = {}
--local lastTime = 0

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	PlayerData = xPlayer 
end)

-- Start of Dark Net

RegisterNetEvent('esx_phone:loaded')
AddEventHandler('esx_phone:loaded', function(phoneNumber, contacts)
	
	local inventory = ESX.GetPlayerData().inventory
	local count = 0

	for i=1, #inventory, 1 do
		if inventory[i].name == 'darknet' then
			count = inventory[i].count
		end
    end

	local specialContact = {
		name       = 'Dark Net',
		number     = 'darknet',
		base64Icon = 'data:image/png;base64,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'	
	}

	if count > 0 then
		TriggerEvent('esx_phone:addSpecialContact', specialContact.name, specialContact.number, specialContact.base64Icon)
	else
		TriggerEvent('esx_phone:removeSpecialContact', specialContact.number)
	end
end)

-- End of Dark Net
-- Start of Oxygen Mask

RegisterNetEvent('esx_extraitems:oxygen_mask')
AddEventHandler('esx_extraitems:oxygen_mask', function()
	local playerPed  = GetPlayerPed(-1)
	local coords     = GetEntityCoords(playerPed)
	local boneIndex  = GetPedBoneIndex(playerPed, 12844)
	local boneIndex2 = GetPedBoneIndex(playerPed, 24818)
	
	ESX.Game.SpawnObject('p_s_scuba_mask_s', {
		x = coords.x,
		y = coords.y,
		z = coords.z - 3
	}, function(object)
		ESX.Game.SpawnObject('p_s_scuba_tank_s', {
			x = coords.x,
			y = coords.y,
			z = coords.z - 3
		}, function(object2)
			AttachEntityToEntity(object2, playerPed, boneIndex2, -0.30, -0.22, 0.0, 0.0, 90.0, 180.0, true, true, false, true, 1, true)
			AttachEntityToEntity(object, playerPed, boneIndex, 0.0, 0.0, 0.0, 0.0, 90.0, 180.0, true, true, false, true, 1, true)
			SetPedDiesInWater(playerPed, false)
			
			ESX.ShowNotification(_U('dive_suit_on') .. '%.')
			Citizen.Wait(50000)
			ESX.ShowNotification(_U('oxygen_notify', '~y~', '50') .. '%.')
			Citizen.Wait(25000)
			ESX.ShowNotification(_U('oxygen_notify', '~o~', '25') .. '%.')
			Citizen.Wait(25000)
			ESX.ShowNotification(_U('oxygen_notify', '~r~', '0') .. '%.')
			
			SetPedDiesInWater(playerPed, true)
			DeleteObject(object)
			DeleteObject(object2)
			ClearPedSecondaryTask(playerPed)
		end)
	end)
end)

-- End of Oxygen Mask
-- Start of Bullet Proof Vest

RegisterNetEvent('esx_extraitems:bulletproof')
AddEventHandler('esx_extraitems:bulletproof', function()
	local playerPed = GetPlayerPed(-1)
	SetPedComponentVariation(playerPed, 9, 27, 9, 2)
	AddArmourToPed(playerPed, 100)
	SetPedArmour(playerPed, 100)
end)

-- End of Bullet Proof Vest
-- Start of First Aid Kit

RegisterNetEvent('esx_extraitems:firstaidkit')
AddEventHandler('esx_extraitems:firstaidkit', function()
	local playerPed = GetPlayerPed(-1)
	local health = GetEntityHealth(playerPed)
	local max = GetEntityMaxHealth(playerPed)
	
	if health > 0 and health < max then
		ESX.ShowNotification(_U('use_firstaidkit'))
		
		health = health + (max / 4)
		if health > max then
			health = max
		end
		SetEntityHealth(playerPed, health)
	end
end)

-- End of First Aid Kit
-- Start of Weapon Clip

RegisterNetEvent('esx_extraitems:clipcli')
AddEventHandler('esx_extraitems:clipcli', function()
	ped = GetPlayerPed(-1)
	if IsPedArmed(ped, 4) then
		hash = GetSelectedPedWeapon(ped)
		if hash ~= nil then
			AddAmmoToPed(GetPlayerPed(-1), hash,1000)
			ESX.ShowNotification(_U("clip_use"))
		else
			ESX.ShowNotification(_U("clip_no_weapon"))
		end
	else
		ESX.ShowNotification(_U("clip_not_suitable"))
	end
end)

-- End of Weapon Clip
