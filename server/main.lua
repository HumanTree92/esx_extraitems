-- Start of SERVER/MAIN.LUA

ESX = nil

local Accessories = {
	"silent",
	"flashlight",
	"grip",
	"extended_magazine",
	"very_extended_magazine",
	"scope",
	"advanced_scope",
	"yusuf",
	"lowrider",
}

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
-- Start of Extra Items

ESX.RegisterUsableItem('oxygen_mask', function(source)
	TriggerClientEvent('esx_extraitems:oxygen_mask', source)
	local xPlayer  = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('oxygen_mask', 1)
end)

ESX.RegisterUsableItem('bulletproof', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent('esx_extraitems:bulletproof', source)
	xPlayer.removeInventoryItem('bulletproof', 1)
end)

ESX.RegisterUsableItem('drill', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    local drill = xPlayer.getInventoryItem('drill')
    TriggerClientEvent('esx_extraitems:startDrill', source)
	xPlayer.removeInventoryItem('drill', 1)
end)

ESX.RegisterUsableItem('clip', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent('esx_extraitems:clipcli', source)
	xPlayer.removeInventoryItem('clip', 1)
end)

-- End of Extra Items
-- Start of Weapon Attachments

ESX.RegisterUsableItem('silent', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    TriggerClientEvent('esx_extraitems:equipSilent', source)
	xPlayer.removeInventoryItem('silent', 1)
end)

ESX.RegisterUsableItem('flashlight', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    TriggerClientEvent('esx_extraitems:equipFlashlight', source)
	xPlayer.removeInventoryItem('flashlight', 1)
end)

ESX.RegisterUsableItem('grip', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    TriggerClientEvent('esx_extraitems:equipGrip', source)
	xPlayer.removeInventoryItem('grip', 1)
end)

ESX.RegisterUsableItem('extended_magazine', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    TriggerClientEvent('esx_extraitems:equipExtendedMag', source)
	xPlayer.removeInventoryItem('extended_magazine', 1)
end)

ESX.RegisterUsableItem('very_extended_magazine', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    TriggerClientEvent('esx_extraitems:equipVeryExtendedMag', source)
	xPlayer.removeInventoryItem('very_extended_magazine', 1)
end)

ESX.RegisterUsableItem('scope', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    TriggerClientEvent('esx_extraitems:equipScope', source)
	xPlayer.removeInventoryItem('scope', 1)
end)

ESX.RegisterUsableItem('advanced_scope', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    TriggerClientEvent('esx_extraitems:equipAdvancedScope', source)
	xPlayer.removeInventoryItem('advanced_scope', 1)
end)

ESX.RegisterUsableItem('yusuf', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    TriggerClientEvent('esx_extraitems:equipYusuf', source)
	xPlayer.removeInventoryItem('yusuf', 1)
end)

ESX.RegisterUsableItem('lowrider', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    TriggerClientEvent('esx_extraitems:equipLowrider', source)
	xPlayer.removeInventoryItem('lowrider', 1)
end)

function TableHasValue(table, item)
	for k, v in pairs(table) do
		if v == item then
			return true
		end
	end
	return false
end

AddEventHandler('esx:onRemoveInventoryItem', function(source, item, count)
    if TableHasValue(Accessories, item.name) then
        TriggerClientEvent('esx_extraitems:looseComponent', source, item.name, item.count)
    end
end)

-- End of Weapon Attachments
-- End of SERVER/MAIN.LUA
