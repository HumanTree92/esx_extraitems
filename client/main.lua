ESX = nil
local PlayerData = {}

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	PlayerData = xPlayer

	if Config.UseVehicleGPS then
		DisplayRadar(false)
	end
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
		name = 'Dark Net',
		number = 'darknet',
		base64Icon = 'data:image/png;base64,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'	
	}

	if count > 0 then
		TriggerEvent('esx_phone:addSpecialContact', specialContact.name, specialContact.number, specialContact.base64Icon)
	else
		TriggerEvent('esx_phone:removeSpecialContact', specialContact.number)
	end
end)
-- End of Dark Net

-- Start of Binoculars
local fov_max = 70.0
local fov_min = 5.0
local zoomspeed = 10.0
local speed_lr = 8.0
local speed_ud = 8.0
local binoculars = false
local fov = (fov_max+fov_min)*0.5

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(10)
		local playerPed = PlayerPedId()
		local vehicle = GetVehiclePedIsIn(playerPed)

		if binoculars then
			binoculars = true
			if not (IsPedSittingInAnyVehicle(playerPed)) then
				Citizen.CreateThread(function()
					TaskStartScenarioInPlace(GetPlayerPed(-1), "WORLD_HUMAN_BINOCULARS", 0, 1)
					PlayAmbientSpeech1(GetPlayerPed(-1), "GENERIC_CURSE_MED", "SPEECH_PARAMS_FORCE")
				end)
			end

			Wait(2000)

			SetTimecycleModifier("default")
			SetTimecycleModifierStrength(0.3)

			local scaleform = RequestScaleformMovie("BINOCULARS")

			while not HasScaleformMovieLoaded(scaleform) do
				Citizen.Wait(10)
			end

			local playerPed = GetPlayerPed(-1)
			local vehicle = GetVehiclePedIsIn(playerPed)
			local cam = CreateCam("DEFAULT_SCRIPTED_FLY_CAMERA", true)

			AttachCamToEntity(cam, playerPed, 0.0,0.0,1.0, true)
			SetCamRot(cam, 0.0,0.0,GetEntityHeading(playerPed))
			SetCamFov(cam, fov)
			RenderScriptCams(true, false, 0, 1, 0)
			PushScaleformMovieFunction(scaleform, "SET_CAM_LOGO")
			PushScaleformMovieFunctionParameterInt(0) -- 0 for nothing, 1 for LSPD logo
			PopScaleformMovieFunctionVoid()

			while binoculars and not IsEntityDead(playerPed) and (GetVehiclePedIsIn(playerPed) == vehicle) and true do
				if IsControlJustPressed(0, Config.BinocularsPutAway) then -- Toggle binoculars
					PlaySoundFrontend(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", false)
					ClearPedTasks(GetPlayerPed(-1))
					binoculars = false
				end

				local zoomvalue = (1.0/(fov_max-fov_min))*(fov-fov_min)
				CheckInputRotation(cam, zoomvalue)

				HandleZoom(cam)
				HideHUDThisFrame()

				DrawScaleformMovieFullscreen(scaleform, 255, 255, 255, 255)
				Citizen.Wait(5)
			end

			binoculars = false
			ClearTimecycleModifier()
			fov = (fov_max+fov_min)*0.5
			RenderScriptCams(false, false, 0, 1, 0)
			SetScaleformMovieAsNoLongerNeeded(scaleform)
			DestroyCam(cam, false)
			SetNightvision(false)
			SetSeethrough(false)
		end
	end
end)

RegisterNetEvent('esx_extraitems:binoculars')
AddEventHandler('esx_extraitems:binoculars', function()
	binoculars = not binoculars
end)

function HideHUDThisFrame()
	HideHelpTextThisFrame()
	HideHudAndRadarThisFrame()
	HideHudComponentThisFrame(1) -- Wanted Stars
	HideHudComponentThisFrame(2) -- Weapon icon
	HideHudComponentThisFrame(3) -- Cash
	HideHudComponentThisFrame(4) -- MP CASH
	HideHudComponentThisFrame(6)
	HideHudComponentThisFrame(7)
	HideHudComponentThisFrame(8)
	HideHudComponentThisFrame(9)
	HideHudComponentThisFrame(13) -- Cash Change
	HideHudComponentThisFrame(11) -- Floating Help Text
	HideHudComponentThisFrame(12) -- more floating help text
	HideHudComponentThisFrame(15) -- Subtitle Text
	HideHudComponentThisFrame(18) -- Game Stream
	HideHudComponentThisFrame(19) -- weapon wheel
end

function CheckInputRotation(cam, zoomvalue)
	local rightAxisX = GetDisabledControlNormal(0, 220)
	local rightAxisY = GetDisabledControlNormal(0, 221)
	local rotation = GetCamRot(cam, 2)

	if rightAxisX ~= 0.0 or rightAxisY ~= 0.0 then
		new_z = rotation.z + rightAxisX*-1.0*(speed_ud)*(zoomvalue+0.1)
		new_x = math.max(math.min(20.0, rotation.x + rightAxisY*-1.0*(speed_lr)*(zoomvalue+0.1)), -89.5)
		SetCamRot(cam, new_x, 0.0, new_z, 2)
	end
end

function HandleZoom(cam)
	local playerPed = GetPlayerPed(-1)

	if not (IsPedSittingInAnyVehicle(playerPed)) then
		if IsControlJustPressed(0,241) then -- Scrollup
			fov = math.max(fov - zoomspeed, fov_min)
		end

		if IsControlJustPressed(0,242) then
			fov = math.min(fov + zoomspeed, fov_max) -- ScrollDown
		end

		local current_fov = GetCamFov(cam)
		if math.abs(fov-current_fov) < 0.1 then
			fov = current_fov
		end

		SetCamFov(cam, current_fov + (fov - current_fov)*0.05)
	else
		if IsControlJustPressed(0,17) then -- Scrollup
			fov = math.max(fov - zoomspeed, fov_min)
		end

		if IsControlJustPressed(0,16) then
			fov = math.min(fov + zoomspeed, fov_max) -- ScrollDown
		end

		local current_fov = GetCamFov(cam)

		if math.abs(fov-current_fov) < 0.1 then -- the difference is too small, just set the value directly to avoid unneeded updates to FOV of order 10^-5
			fov = current_fov
		end

		SetCamFov(cam, current_fov + (fov - current_fov)*0.05) -- Smoothing of camera zoom
	end
end
-- End of Binoculars

-- Start of Bullet Proof Vest
RegisterNetEvent('esx_extraitems:bulletproof')
AddEventHandler('esx_extraitems:bulletproof', function()
	local playerPed = GetPlayerPed(-1)

	SetPedComponentVariation(playerPed, 9, 27, 9, 2)
	AddArmourToPed(playerPed, 100)
	SetPedArmour(playerPed, 100)
end)
-- End of Bullet Proof Vest

-- Start of Drill
RegisterNetEvent('esx_extraitems:drill')
AddEventHandler('esx_extraitems:drill', function(source)
	local playerPed = GetPlayerPed(-1)

	if IsPedSittingInAnyVehicle(playerPed) then
		ESX.ShowNotification(_U('error_veh'))
	else
		if IsPedOnFoot(playerPed) then
			TaskStartScenarioInPlace(playerPed, "WORLD_HUMAN_CONST_DRILL", 0, true)
			Citizen.CreateThread(function()
				Citizen.Wait(Config.Wait.Drill)
				ClearPedTasksImmediately(playerPed)
			end)
		else
			ESX.ShowNotification(_U('error_no_foot'))
		end
	end
end)
-- End of Drill

-- Start of First Aid Kit
RegisterNetEvent('esx_extraitems:firstaidkit')
AddEventHandler('esx_extraitems:firstaidkit', function()
	local playerPed = GetPlayerPed(-1)
	local health = GetEntityHealth(playerPed)
	local max = GetEntityMaxHealth(playerPed)

	if health > 0 and health < max then
		TriggerServerEvent('esx_extraitems:removefirstaidkit')
		ESX.ShowNotification(_U('used_firstaidkit'))

		health = health + (max / 4)

		if health > max then
			health = max
		end

		SetEntityHealth(playerPed, health)
	end
end)
-- End of First Aid Kit

-- Start of Lock Pick
RegisterNetEvent('esx_extraitems:lockpick')
AddEventHandler('esx_extraitems:lockpick', function()
	local playerPed = PlayerPedId()
	local coords = GetEntityCoords(playerPed)

	if IsAnyVehicleNearPoint(coords.x, coords.y, coords.z, 5.0) then
		local vehicle

		if IsPedInAnyVehicle(playerPed, false) then
			vehicle = GetVehiclePedIsIn(playerPed, false)
		else
			vehicle = GetClosestVehicle(coords.x, coords.y, coords.z, 5.0, 0, 71)
		end

		local chance = math.random(100)
		local alarm  = math.random(100)

		if DoesEntityExist(vehicle) then
			if alarm <= 33 then
				SetVehicleAlarm(vehicle, true)
				StartVehicleAlarm(vehicle)
			end

			TaskStartScenarioInPlace(playerPed, 'WORLD_HUMAN_WELDING', 0, true)

			Citizen.CreateThread(function()
				Citizen.Wait(Config.Wait.LockPick)

				if chance <= 66 then
					SetVehicleDoorsLocked(vehicle, 1)
					SetVehicleDoorsLockedForAllPlayers(vehicle, false)
					ClearPedTasksImmediately(playerPed)
					ESX.ShowNotification(_U('veh_unlocked'))
				else
					ESX.ShowNotification(_U('hijack_failed'))
					ClearPedTasksImmediately(playerPed)
				end
			end)
		end
	end
end)
-- End of Lock Pick

-- Start of Oxygen Mask
RegisterNetEvent('esx_extraitems:oxygenmask')
AddEventHandler('esx_extraitems:oxygenmask', function()
	local playerPed = GetPlayerPed(-1)
	local coords = GetEntityCoords(playerPed)
	local boneIndex = GetPedBoneIndex(playerPed, 12844)
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

-- Start of Repair Kit
RegisterNetEvent('esx_extraitems:repairkit')
AddEventHandler('esx_extraitems:repairkit', function()
	local playerPed = GetPlayerPed(-1)
	local coords = GetEntityCoords(playerPed)
	local vehicle = ESX.Game.GetVehicleInDirection()
	
	if IsPedSittingInAnyVehicle(playerPed) then
		ESX.ShowNotification(_U('error_veh'))
	else
		if DoesEntityExist(vehicle) and IsPedOnFoot(playerPed) then
			TaskStartScenarioInPlace(playerPed, "PROP_HUMAN_BUM_BIN", 0, true)
			Citizen.CreateThread(function()
				Citizen.Wait(Config.Wait.RepairKit)
				SetVehicleFixed(vehicle)
				SetVehicleDeformationFixed(vehicle)
				SetVehicleUndriveable(vehicle, false)
				ClearPedTasksImmediately(playerPed)
				TriggerServerEvent('esx_extraitems:removerepairkit')
				ESX.ShowNotification(_U('used_repairkit'))
				ESX.ShowNotification(_U('repair_done'))
			end)
		else
			ESX.ShowNotification(_U('error_no_veh'))
		end
	end
end)
-- End of Repair Kit

-- Start of Tire Kit
RegisterNetEvent('esx_extraitems:tirekit')
AddEventHandler('esx_extraitems:tirekit', function()
	local playerPed = GetPlayerPed(-1)
	local coords = GetEntityCoords(playerPed)
	local vehicle = GetClosestVehicle(coords.x, coords.y, coords.z, 5.0, 0, 71)
	local closestTire = GetClosestVehicleTire(vehicle)

	if IsPedSittingInAnyVehicle(playerPed) then
		ESX.ShowNotification(_U('error_veh'))
	else
		if IsAnyVehicleNearPoint(coords.x, coords.y, coords.z, 5.0) then
			if DoesEntityExist(vehicle) and IsPedOnFoot(playerPed) and closestTire ~= nil then
				TaskStartScenarioInPlace(playerPed, "CODE_HUMAN_MEDIC_KNEEL", 0, true)
				Citizen.CreateThread(function()
					Citizen.Wait(Config.Wait.TireKit)
					SetVehicleTyreFixed(vehicle, closestTire.tireIndex)
					SetVehicleWheelHealth(vehicle, closestTire.tireIndex, 100)
					ClearPedTasksImmediately(playerPed)
					TriggerServerEvent('esx_extraitems:removetirekit')
					ESX.ShowNotification(_U('used_tirekit'))
					ESX.ShowNotification(_U('tire_done'))
				end)
			else
				ESX.ShowNotification(_U('error_no_tire'))
			end
		else
			ESX.ShowNotification(_U('error_no_veh'))
		end
	end
end)

function GetClosestVehicleTire(vehicle)
	local tireBones = {"wheel_lf", "wheel_rf", "wheel_lm1", "wheel_rm1", "wheel_lm2", "wheel_rm2", "wheel_lm3", "wheel_rm3", "wheel_lr", "wheel_rr"}
	local tireIndex = {["wheel_lf"] = 0, ["wheel_rf"] = 1, ["wheel_lm1"] = 2, ["wheel_rm1"] = 3, ["wheel_lm2"] = 45,["wheel_rm2"] = 47, ["wheel_lm3"] = 46, ["wheel_rm3"] = 48, ["wheel_lr"] = 4, ["wheel_rr"] = 5,}
	local playerPed = GetPlayerPed(-1)
	local playerPos = GetEntityCoords(playerPed, false)
	local minDistance = 1.0
	local closestTire = nil

	for a=1, #tireBones do
		local bonePos = GetWorldPositionOfEntityBone(vehicle, GetEntityBoneIndexByName(vehicle, tireBones[a]))
		local distance = Vdist(playerPos.x, playerPos.y, playerPos.z, bonePos.x, bonePos.y, bonePos.z)

		if closestTire == nil then
			if distance <= minDistance then
				closestTire = {bone = tireBones[a], boneDist = distance, bonePos = bonePos, tireIndex = tireIndex[tireBones[a]]}
			end
		else
			if distance < closestTire.boneDist then
				closestTire = {bone = tireBones[a], boneDist = distance, bonePos = bonePos, tireIndex = tireIndex[tireBones[a]]}
			end
		end
	end

	return closestTire
end
-- End of Tire Kit

-- Start of Weapon Box
RegisterNetEvent('esx_extraitems:weabox')
AddEventHandler('esx_extraitems:weabox', function()
	local playerPed = GetPlayerPed(-1)

	if IsPedArmed(playerPed, 4) then
		hash = GetSelectedPedWeapon(playerPed)
		ammo = Config.WeaponBoxAmmo
		if hash ~= nil then
			AddAmmoToPed(GetPlayerPed(-1), hash, ammo)
			TriggerServerEvent('esx_extraitems:removeweabox')
			ESX.ShowNotification(_U('used_weabox'))
		else
			ESX.ShowNotification(_U('no_weapon'))
		end
	else
		ESX.ShowNotification(_U('not_suitable'))
	end
end)
-- End of Weapon Box

-- Start of Weapon Clip
RegisterNetEvent('esx_extraitems:weaclip')
AddEventHandler('esx_extraitems:weaclip', function()
	local playerPed = GetPlayerPed(-1)

	if IsPedArmed(playerPed, 4) then
		hash = GetSelectedPedWeapon(playerPed)
		ammo = Config.WeaponClipAmmo
		if hash ~= nil then
			AddAmmoToPed(GetPlayerPed(-1), hash, ammo)
			TriggerServerEvent('esx_extraitems:removeweaclip')
			ESX.ShowNotification(_U('used_weaclip'))
		else
			ESX.ShowNotification(_U('no_weapon'))
		end
	else
		ESX.ShowNotification(_U('not_suitable'))
	end
end)
-- End of Weapon Clip

-- Start of Vehicle GPS
local ShowRadar = false

RegisterNetEvent('esx_extraitems:installGPS')
AddEventHandler('esx_extraitems:installGPS', function()
	if Config.UseVehicleGPS then
		local playerPed = GetPlayerPed(-1)
		local playerVeh = GetVehiclePedIsIn(playerPed, false)

		if ShowRadar == false then
			if DoesEntityExist(playerVeh) then
				if Config.LimitedVehicles then
					local model = GetEntityModel(playerVeh)

					if IsThisModelABoat(model) or IsThisModelACar(model) or IsThisModelAHeli(model) or IsThisModelAPlane(model) or IsThisModelAnAmphibiousCar(model) then
						ShowRadar = true
						ESX.ShowNotification(_U('gps_installed'))
					else
						ESX.ShowNotification(_U('gps_not_correct'))
					end
				else
					ShowRadar = true
					ESX.ShowNotification(_U('gps_installed'))
				end
			else
				ESX.ShowNotification(_U('gps_no_vehicle'))
			end
		else
			DisplayRadar(false)
			ShowRadar = false
			ESX.ShowNotification(_U('gps_removed'))
		end
	end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)

		if Config.UseVehicleGPS then
			local playerPed = GetPlayerPed(-1)
			local playerVeh = GetVehiclePedIsIn(playerPed, false)

			if ShowRadar and DoesEntityExist(playerVeh) then
				if Config.LimitedVehicles then
					local model = GetEntityModel(playerVeh)

					if IsThisModelABoat(model) or IsThisModelACar(model) or IsThisModelAHeli(model) or IsThisModelAPlane(model) or IsThisModelAnAmphibiousCar(model) then
						if Config.OnlyFrontSeats then
							if (GetPedInVehicleSeat(playerVeh, -1) == playerPed) or (GetPedInVehicleSeat(playerVeh, 0) == playerPed) then
								DisplayRadar(true)
							end
						else
							DisplayRadar(true)
						end
					end
				else
					if Config.OnlyFrontSeats then
						if (GetPedInVehicleSeat(playerVeh, -1) == playerPed) or (GetPedInVehicleSeat(playerVeh, 0) == playerPed) then
							DisplayRadar(true)
						end
					else
						DisplayRadar(true)
					end
				end
			else
				DisplayRadar(false)
			end
		end
	end
end)
-- End of Vehicle GPS
