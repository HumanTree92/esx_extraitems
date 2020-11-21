-- https://wiki.rage.mp/index.php?title=Weapons_Components#Pistol

RegisterNetEvent('esx_extraitems:OpenCompMenu')
AddEventHandler('esx_extraitems:OpenCompMenu', function()
	OpenCompMenu()
end)

function OpenCompMenu()
	ESX.UI.Menu.CloseAll()
	ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'comp_menu', {
		title = _U('comp_menu'),
		align = GetConvar('esx_MenuAlign', 'top-left'),
		elements = {
			{label = _U('melee_menu'),  value = 'melee_menu'},
			{label = _U('pisol_menu'),  value = 'pisol_menu'},
			{label = _U('smg_menu'),    value = 'smg_menu'},
			{label = _U('shot_menu'),   value = 'shot_menu'},
			{label = _U('ar_menu'),     value = 'ar_menu'},
			{label = _U('mg_menu'),     value = 'mg_menu'},
			{label = _U('sniper_menu'), value = 'sniper_menu'},
			{label = _U('uni_skins'), value = 'uni_skins'}
	}}, function(data, menu)
		--menu.close()
		local action = data.current.value
		local PlayerPed = GetPlayerPed(-1)
		local CurrentWeaponHash = GetSelectedPedWeapon(PlayerPed)

		--== Melee Menu ==--
		if action == 'melee_menu' then
			ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'melee_menu', {
				title = _U('melee_menu'),
				align = GetConvar('esx_MenuAlign', 'top-left'),
				elements = {
					{label = _U('wea_knuckle'), value = 'wea_knuckle'}, -- Knuckle Duster
					{label = _U('wea_switch'), value = 'wea_switch'} -- Switchblade
			}}, function(data2, menu2)
				local action2 = data2.current.value

				if action2 == 'wea_knuckle' then
					local Weapon = GetHashKey("WEAPON_KNUCKLE")
					if CurrentWeaponHash == Weapon then
						ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'wea_knuckle', {
							title = _U('wea_knuckle'),
							align = GetConvar('esx_MenuAlign', 'top-left'),
							elements = {
								{label = _U('skin_base'), value = 'skin_base'},
								{label = _U('skin_pimp'), value = 'skin_pimp'},
								{label = _U('skin_ballas'), value = 'skin_ballas'},
								{label = _U('skin_hustler'), value = 'skin_hustler'},
								{label = _U('skin_rock'), value = 'skin_rock'},
								{label = _U('skin_hater'), value = 'skin_hater'},
								{label = _U('skin_lover'), value = 'skin_lover'},
								{label = _U('skin_player'), value = 'skin_player'},
								{label = _U('skin_king'), value = 'skin_king'},
								{label = _U('skin_vagos'), value = 'skin_vagos'}
						}}, function(data3, menu3)
							local action3 = data3.current.value

							if action3 == 'skin_base' then
								GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_KNUCKLE_VARMOD_BASE"))
							elseif action3 == 'skin_pimp' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_KNUCKLE_VARMOD_PIMP")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_KNUCKLE_VARMOD_PIMP"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_KNUCKLE_VARMOD_PIMP"))
								end
							elseif action3 == 'skin_ballas' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_KNUCKLE_VARMOD_BALLAS")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_KNUCKLE_VARMOD_BALLAS"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_KNUCKLE_VARMOD_BALLAS"))
								end
							elseif action3 == 'skin_hustler' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_KNUCKLE_VARMOD_DOLLAR")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_KNUCKLE_VARMOD_DOLLAR"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_KNUCKLE_VARMOD_DOLLAR"))
								end
							elseif action3 == 'skin_rock' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_KNUCKLE_VARMOD_DIAMOND")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_KNUCKLE_VARMOD_DIAMOND"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_KNUCKLE_VARMOD_DIAMOND"))
								end
							elseif action3 == 'skin_hater' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_KNUCKLE_VARMOD_HATE")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_KNUCKLE_VARMOD_HATE"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_KNUCKLE_VARMOD_HATE"))
								end
							elseif action3 == 'skin_lover' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_KNUCKLE_VARMOD_LOVE")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_KNUCKLE_VARMOD_LOVE"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_KNUCKLE_VARMOD_LOVE"))
								end
							elseif action3 == 'skin_player' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_KNUCKLE_VARMOD_PLAYER")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_KNUCKLE_VARMOD_PLAYER"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_KNUCKLE_VARMOD_PLAYER"))
								end
							elseif action3 == 'skin_king' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_KNUCKLE_VARMOD_KING")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_KNUCKLE_VARMOD_KING"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_KNUCKLE_VARMOD_KING"))
								end
							elseif action3 == 'skin_vagos' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_KNUCKLE_VARMOD_VAGOS")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_KNUCKLE_VARMOD_VAGOS"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_KNUCKLE_VARMOD_VAGOS"))
								end
							end
						end, function(data3, menu3)
							menu3.close()
						end)
					else
						ESX.ShowNotification(_U('not_correct_wea'))
					end
				elseif action2 == 'wea_switch' then
					local Weapon = GetHashKey("WEAPON_SWITCHBLADE")
					if CurrentWeaponHash == Weapon then
						ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'wea_switch', {
							title = _U('wea_switch'),
							align = GetConvar('esx_MenuAlign', 'top-left'),
							elements = {
								{label = _U('skin_base'), value = 'skin_base'},
								{label = _U('skin_vip'), value = 'skin_vip'},
								{label = _U('skin_body'), value = 'skin_body'}
						}}, function(data3, menu3)
							local action3 = data3.current.value

							if action3 == 'skin_base' then
								GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_SWITCHBLADE_VARMOD_BASE"))
							elseif action3 == 'skin_vip' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_SWITCHBLADE_VARMOD_VAR1")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_SWITCHBLADE_VARMOD_VAR1"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_SWITCHBLADE_VARMOD_VAR1"))
								end
							elseif action3 == 'skin_body' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_SWITCHBLADE_VARMOD_VAR2")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_SWITCHBLADE_VARMOD_VAR2"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_SWITCHBLADE_VARMOD_VAR2"))
								end
							end
						end, function(data3, menu3)
							menu3.close()
						end)
					else
						ESX.ShowNotification(_U('not_correct_wea'))
					end
				end
			end, function(data2, menu2)
				menu2.close()
			end)

		--== Pistol Menu ==--
		elseif action == 'pisol_menu' then
			ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'pisol_menu', {
				title = _U('pisol_menu'),
				align = GetConvar('esx_MenuAlign', 'top-left'),
				elements = {
					{label = _U('wea_pistol'), value = 'wea_pistol'}, -- Pistol
					{label = _U('wea_copistol'), value = 'wea_copistol'}, -- Combat Pistol
					{label = _U('wea_appistol'), value = 'wea_appistol'}, -- AP Pistol
					{label = _U('wea_pistol50'), value = 'wea_pistol50'}, -- Pistol .50
					{label = _U('wea_hrevolver'), value = 'wea_hrevolver'}, -- Heavy Revolver
					{label = _U('wea_snspistol'), value = 'wea_snspistol'}, -- SNS Pistol
					{label = _U('wea_hpistol'), value = 'wea_hpistol'}, -- Heavy Pistol
					{label = _U('wea_vpistol'), value = 'wea_vpistol'}, -- Vintage Pistol
					{label = _U('wea_cepistol'), value = 'wea_cepistol'} -- Ceramic Pistol
			}}, function(data2, menu2)
				local action2 = data2.current.value

				if action2 == 'wea_pistol' then
					local Weapon = GetHashKey("WEAPON_PISTOL")
					if CurrentWeaponHash == Weapon then
						ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'wea_pistol', {
							title = _U('wea_pistol'),
							align = GetConvar('esx_MenuAlign', 'top-left'),
							elements = {
								{label = _U('comp_dclip'), value = 'comp_dclip'},
								{label = _U('comp_exclip'), value = 'comp_exclip'},
								{label = _U('comp_flash'), value = 'comp_flash'},
								{label = _U('comp_supp'), value = 'comp_supp'},
								{label = _U('skin_yusuf'), value = 'skin_yusuf'}
						}}, function(data3, menu3)
							local action3 = data3.current.value

							if action3 == 'comp_dclip' then
								GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_PISTOL_CLIP_01"))
							elseif action3 == 'comp_exclip' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_PISTOL_CLIP_02")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_PISTOL_CLIP_02"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_PISTOL_CLIP_02"))
								end
							elseif action3 == 'comp_flash' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_PI_FLSH")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_PI_FLSH"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_PI_FLSH"))
								end
							elseif action3 == 'comp_supp' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_PI_SUPP_02")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_PI_SUPP_02"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_PI_SUPP_02"))
								end
							elseif action3 == 'skin_yusuf' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_PISTOL_VARMOD_LUXE")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_PISTOL_VARMOD_LUXE"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_PISTOL_VARMOD_LUXE"))
								end
							end
						end, function(data3, menu3)
							menu3.close()
						end)
					else
						ESX.ShowNotification(_U('not_correct_wea'))
					end
				elseif action2 == 'wea_copistol' then
					local Weapon = GetHashKey("WEAPON_COMBATPISTOL")
					if CurrentWeaponHash == Weapon then
						ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'wea_copistol', {
							title = _U('wea_copistol'),
							align = GetConvar('esx_MenuAlign', 'top-left'),
							elements = {
								{label = _U('comp_dclip'), value = 'comp_dclip'},
								{label = _U('comp_exclip'), value = 'comp_exclip'},
								{label = _U('comp_flash'), value = 'comp_flash'},
								{label = _U('comp_supp'), value = 'comp_supp'},
								{label = _U('skin_yusuf'), value = 'skin_yusuf'}
						}}, function(data3, menu3)
							local action3 = data3.current.value

							if action3 == 'comp_dclip' then
								GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_COMBATPISTOL_CLIP_01"))
							elseif action3 == 'comp_exclip' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_COMBATPISTOL_CLIP_02")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_COMBATPISTOL_CLIP_02"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_COMBATPISTOL_CLIP_02"))
								end
							elseif action3 == 'comp_flash' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_PI_FLSH")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_PI_FLSH"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_PI_FLSH"))
								end
							elseif action3 == 'comp_supp' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_PI_SUPP")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_PI_SUPP"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_PI_SUPP"))
								end
							elseif action3 == 'skin_yusuf' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_COMBATPISTOL_VARMOD_LOWRIDER")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_COMBATPISTOL_VARMOD_LOWRIDER"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_COMBATPISTOL_VARMOD_LOWRIDER"))
								end
							end
						end, function(data3, menu3)
							menu3.close()
						end)
					else
						ESX.ShowNotification(_U('not_correct_wea'))
					end
				elseif action2 == 'wea_appistol' then
					local Weapon = GetHashKey("WEAPON_APPISTOL")
					if CurrentWeaponHash == Weapon then
						ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'wea_appistol', {
							title = _U('wea_appistol'),
							align = GetConvar('esx_MenuAlign', 'top-left'),
							elements = {
								{label = _U('comp_dclip'), value = 'comp_dclip'},
								{label = _U('comp_exclip'), value = 'comp_exclip'},
								{label = _U('comp_flash'), value = 'comp_flash'},
								{label = _U('comp_supp'), value = 'comp_supp'},
								{label = _U('skin_gilded'), value = 'skin_gilded'}
						}}, function(data3, menu3)
							local action3 = data3.current.value

							if action3 == 'comp_dclip' then
								GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_APPISTOL_CLIP_01"))
							elseif action3 == 'comp_exclip' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_APPISTOL_CLIP_02")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_APPISTOL_CLIP_02"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_APPISTOL_CLIP_02"))
								end
							elseif action3 == 'comp_flash' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_PI_FLSH")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_PI_FLSH"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_PI_FLSH"))
								end
							elseif action3 == 'comp_supp' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_PI_SUPP")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_PI_SUPP"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_PI_SUPP"))
								end
							elseif action3 == 'skin_gilded' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_APPISTOL_VARMOD_LUXE")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_APPISTOL_VARMOD_LUXE"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_APPISTOL_VARMOD_LUXE"))
								end
							end
						end, function(data3, menu3)
							menu3.close()
						end)
					else
						ESX.ShowNotification(_U('not_correct_wea'))
					end
				elseif action2 == 'wea_pistol50' then
					local Weapon = GetHashKey("WEAPON_PISTOL50")
					if CurrentWeaponHash == Weapon then
						ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'wea_pistol50', {
							title = _U('wea_pistol50'),
							align = GetConvar('esx_MenuAlign', 'top-left'),
							elements = {
								{label = _U('comp_dclip'), value = 'comp_dclip'},
								{label = _U('comp_exclip'), value = 'comp_exclip'},
								{label = _U('comp_flash'), value = 'comp_flash'},
								{label = _U('comp_supp'), value = 'comp_supp'},
								{label = _U('skin_plat'), value = 'skin_plat'}
						}}, function(data3, menu3)
							local action3 = data3.current.value

							if action3 == 'comp_dclip' then
								GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_PISTOL50_CLIP_01"))
							elseif action3 == 'comp_exclip' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_PISTOL50_CLIP_02")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_PISTOL50_CLIP_02"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_PISTOL50_CLIP_02"))
								end
							elseif action3 == 'comp_flash' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_PI_FLSH")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_PI_FLSH"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_PI_FLSH"))
								end
							elseif action3 == 'comp_supp' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_SUPP_02")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_SUPP_02"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_SUPP_02"))
								end
							elseif action3 == 'skin_plat' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_PISTOL50_VARMOD_LUXE")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_PISTOL50_VARMOD_LUXE"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_PISTOL50_VARMOD_LUXE"))
								end
							end
						end, function(data3, menu3)
							menu3.close()
						end)
					else
						ESX.ShowNotification(_U('not_correct_wea'))
					end
				elseif action2 == 'wea_hrevolver' then
					local Weapon = GetHashKey("WEAPON_REVOLVER")
					if CurrentWeaponHash == Weapon then
						ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'wea_hrevolver', {
							title = _U('wea_hrevolver'),
							align = GetConvar('esx_MenuAlign', 'top-left'),
							elements = {
								--{label = _U('comp_dclip'), value = 'comp_dclip'},
								{label = _U('skin_body'), value = 'skin_body'},
								{label = _U('skin_vip'), value = 'skin_vip'}
						}}, function(data3, menu3)
							local action3 = data3.current.value

							if action3 == 'comp_dclip' then
								GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_REVOLVER_CLIP_01"))
							elseif action3 == 'skin_body' then
								GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_REVOLVER_VARMOD_GOON"))
							elseif action3 == 'skin_vip' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_REVOLVER_VARMOD_BOSS")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_REVOLVER_VARMOD_BOSS"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_REVOLVER_VARMOD_BOSS"))
								end
							end
						end, function(data3, menu3)
							menu3.close()
						end)
					else
						ESX.ShowNotification(_U('not_correct_wea'))
					end
				elseif action2 == 'wea_snspistol' then
					local Weapon = GetHashKey("WEAPON_SNSPISTOL")
					if CurrentWeaponHash == Weapon then
						ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'wea_snspistol', {
							title = _U('wea_snspistol'),
							align = GetConvar('esx_MenuAlign', 'top-left'),
							elements = {
								{label = _U('comp_dclip'), value = 'comp_dclip'},
								{label = _U('comp_exclip'), value = 'comp_exclip'},
								{label = _U('skin_wood'), value = 'skin_wood'}
						}}, function(data3, menu3)
							local action3 = data3.current.value

							if action3 == 'comp_dclip' then
								GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_SNSPISTOL_CLIP_01"))
							elseif action3 == 'comp_exclip' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_SNSPISTOL_CLIP_02")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_SNSPISTOL_CLIP_02"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_SNSPISTOL_CLIP_02"))
								end
							elseif action3 == 'skin_wood' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_SNSPISTOL_VARMOD_LOWRIDER")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_SNSPISTOL_VARMOD_LOWRIDER"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_SNSPISTOL_VARMOD_LOWRIDER"))
								end
							end
						end, function(data3, menu3)
							menu3.close()
						end)
					else
						ESX.ShowNotification(_U('not_correct_wea'))
					end
				elseif action2 == 'wea_hpistol' then
					local Weapon = GetHashKey("WEAPON_HEAVYPISTOL")
					if CurrentWeaponHash == Weapon then
						ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'wea_hpistol', {
							title = _U('wea_hpistol'),
							align = GetConvar('esx_MenuAlign', 'top-left'),
							elements = {
								{label = _U('comp_dclip'), value = 'comp_dclip'},
								{label = _U('comp_exclip'), value = 'comp_exclip'},
								{label = _U('comp_flash'), value = 'comp_flash'},
								{label = _U('comp_supp'), value = 'comp_supp'},
								{label = _U('skin_wood'), value = 'skin_wood'}
						}}, function(data3, menu3)
							local action3 = data3.current.value

							if action3 == 'comp_dclip' then
								GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_HEAVYPISTOL_CLIP_01"))
							elseif action3 == 'comp_exclip' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_HEAVYPISTOL_CLIP_02")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_HEAVYPISTOL_CLIP_02"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_HEAVYPISTOL_CLIP_02"))
								end
							elseif action3 == 'comp_flash' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_PI_FLSH")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_PI_FLSH"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_PI_FLSH"))
								end
							elseif action3 == 'comp_supp' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_PI_SUPP")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_PI_SUPP"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_PI_SUPP"))
								end
							elseif action3 == 'skin_wood' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_HEAVYPISTOL_VARMOD_LUXE")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_HEAVYPISTOL_VARMOD_LUXE"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_HEAVYPISTOL_VARMOD_LUXE"))
								end
							end
						end, function(data3, menu3)
							menu3.close()
						end)
					else
						ESX.ShowNotification(_U('not_correct_wea'))
					end
				elseif action2 == 'wea_vpistol' then
					local Weapon = GetHashKey("WEAPON_VINTAGEPISTOL")
					if CurrentWeaponHash == Weapon then
						ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'wea_vpistol', {
							title = _U('wea_vpistol'),
							align = GetConvar('esx_MenuAlign', 'top-left'),
							elements = {
								{label = _U('comp_dclip'), value = 'comp_dclip'},
								{label = _U('comp_exclip'), value = 'comp_exclip'},
								{label = _U('comp_supp'), value = 'comp_supp'}
						}}, function(data3, menu3)
							local action3 = data3.current.value

							if action3 == 'comp_dclip' then
								GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_VINTAGEPISTOL_CLIP_01"))
							elseif action3 == 'comp_exclip' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_VINTAGEPISTOL_CLIP_02")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_VINTAGEPISTOL_CLIP_02"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_VINTAGEPISTOL_CLIP_02"))
								end
							elseif action3 == 'comp_supp' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_PI_SUPP")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_PI_SUPP"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_PI_SUPP"))
								end
							end
						end, function(data3, menu3)
							menu3.close()
						end)
					else
						ESX.ShowNotification(_U('not_correct_wea'))
					end
				elseif action2 == 'wea_cepistol' then
					local Weapon = GetHashKey("WEAPON_CERAMICPISTOL")
					if CurrentWeaponHash == Weapon then
						ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'wea_cepistol', {
							title = _U('wea_cepistol'),
							align = GetConvar('esx_MenuAlign', 'top-left'),
							elements = {
								{label = _U('comp_dclip'), value = 'comp_dclip'},
								{label = _U('comp_exclip'), value = 'comp_exclip'},
								{label = _U('comp_supp'), value = 'comp_supp'}
						}}, function(data3, menu3)
							local action3 = data3.current.value

							if action3 == 'comp_dclip' then
								GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_CERAMICPISTOL_CLIP_01"))
							elseif action3 == 'comp_exclip' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_CERAMICPISTOL_CLIP_02")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_CERAMICPISTOL_CLIP_02"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_CERAMICPISTOL_CLIP_02"))
								end
							elseif action3 == 'comp_supp' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_CERAMICPISTOL_SUPP")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_CERAMICPISTOL_SUPP"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_CERAMICPISTOL_SUPP"))
								end
							end
						end, function(data3, menu3)
							menu3.close()
						end)
					else
						ESX.ShowNotification(_U('not_correct_wea'))
					end
				end
			end, function(data2, menu2)
				menu2.close()
			end)

		--== SMG Menu ==--
		elseif action == 'smg_menu' then
			ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'smg_menu', {
				title = _U('smg_menu'),
				align = GetConvar('esx_MenuAlign', 'top-left'),
				elements = {
					{label = _U('wea_msmg'), value = 'wea_msmg'}, -- Micro SMG
					{label = _U('wea_smg'), value = 'wea_smg'}, -- SMG
					{label = _U('wea_asmg'), value = 'wea_asmg'}, -- Assault SMG
					{label = _U('wea_mismg'), value = 'wea_mismg'}, -- Mini SMG
					{label = _U('wea_mapistol'), value = 'wea_mapistol'}, -- Machine Pistol
					{label = _U('wea_cpdw'), value = 'wea_cpdw'} -- Combat PDW
			}}, function(data2, menu2)
				local action2 = data2.current.value

				if action2 == 'wea_msmg' then
					local Weapon = GetHashKey("WEAPON_MICROSMG")
					if CurrentWeaponHash == Weapon then
						ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'wea_msmg', {
							title = _U('wea_msmg'),
							align = GetConvar('esx_MenuAlign', 'top-left'),
							elements = {
								{label = _U('comp_dclip'), value = 'comp_dclip'},
								{label = _U('comp_exclip'), value = 'comp_exclip'},
								{label = _U('comp_flash'), value = 'comp_flash'},
								{label = _U('comp_scope'), value = 'comp_scope'},
								{label = _U('comp_supp'), value = 'comp_supp'},
								{label = _U('skin_yusuf'), value = 'skin_yusuf'}
						}}, function(data3, menu3)
							local action3 = data3.current.value

							if action3 == 'comp_dclip' then
								GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_MICROSMG_CLIP_01"))
							elseif action3 == 'comp_exclip' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_MICROSMG_CLIP_02")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_MICROSMG_CLIP_02"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_MICROSMG_CLIP_02"))
								end
							elseif action3 == 'comp_flash' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_PI_FLSH")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_PI_FLSH"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_PI_FLSH"))
								end
							elseif action3 == 'comp_scope' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_SCOPE_MACRO")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_SCOPE_MACRO"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_SCOPE_MACRO"))
								end
							elseif action3 == 'comp_supp' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_SUPP_02")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_SUPP_02"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_SUPP_02"))
								end
							elseif action3 == 'skin_yusuf' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_MICROSMG_VARMOD_LUXE")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_MICROSMG_VARMOD_LUXE"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_MICROSMG_VARMOD_LUXE"))
								end
							end
						end, function(data3, menu3)
							menu3.close()
						end)
					else
						ESX.ShowNotification(_U('not_correct_wea'))
					end
				elseif action2 == 'wea_smg' then
					local Weapon = GetHashKey("WEAPON_SMG")
					if CurrentWeaponHash == Weapon then
						ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'wea_smg', {
							title = _U('wea_smg'),
							align = GetConvar('esx_MenuAlign', 'top-left'),
							elements = {
								{label = _U('comp_dclip'), value = 'comp_dclip'},
								{label = _U('comp_exclip'), value = 'comp_exclip'},
								{label = _U('comp_exclipp'), value = 'comp_exclipp'},
								{label = _U('comp_flash'), value = 'comp_flash'},
								{label = _U('comp_scope'), value = 'comp_scope'},
								{label = _U('comp_supp'), value = 'comp_supp'},
								{label = _U('skin_yusuf'), value = 'skin_yusuf'}
						}}, function(data3, menu3)
							local action3 = data3.current.value

							if action3 == 'comp_dclip' then
								GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_SMG_CLIP_01"))
							elseif action3 == 'comp_exclip' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_SMG_CLIP_02")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_SMG_CLIP_02"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_SMG_CLIP_02"))
								end
							elseif action3 == 'comp_exclipp' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_SMG_CLIP_03")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_SMG_CLIP_03"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_SMG_CLIP_03"))
								end
							elseif action3 == 'comp_flash' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_FLSH")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_FLSH"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_FLSH"))
								end
							elseif action3 == 'comp_scope' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_SCOPE_MACRO_02")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_SCOPE_MACRO_02"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_SCOPE_MACRO_02"))
								end
							elseif action3 == 'comp_supp' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_PI_SUPP")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_PI_SUPP"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_PI_SUPP"))
								end
							elseif action3 == 'skin_yusuf' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_SMG_VARMOD_LUXE")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_SMG_VARMOD_LUXE"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_SMG_VARMOD_LUXE"))
								end
							end
						end, function(data3, menu3)
							menu3.close()
						end)
					else
						ESX.ShowNotification(_U('not_correct_wea'))
					end
				elseif action2 == 'wea_asmg' then
					local Weapon = GetHashKey("WEAPON_ASSAULTSMG")
					if CurrentWeaponHash == Weapon then
						ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'wea_asmg', {
							title = _U('wea_asmg'),
							align = GetConvar('esx_MenuAlign', 'top-left'),
							elements = {
								{label = _U('comp_dclip'), value = 'comp_dclip'},
								{label = _U('comp_exclip'), value = 'comp_exclip'},
								{label = _U('comp_flash'), value = 'comp_flash'},
								{label = _U('comp_scope'), value = 'comp_scope'},
								{label = _U('comp_supp'), value = 'comp_supp'},
								{label = _U('skin_yusuf'), value = 'skin_yusuf'}
						}}, function(data3, menu3)
							local action3 = data3.current.value

							if action3 == 'comp_dclip' then
								GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_ASSAULTSMG_CLIP_01"))
							elseif action3 == 'comp_exclip' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_ASSAULTSMG_CLIP_02")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_ASSAULTSMG_CLIP_02"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_ASSAULTSMG_CLIP_02"))
								end
							elseif action3 == 'comp_flash' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_FLSH")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_FLSH"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_FLSH"))
								end
							elseif action3 == 'comp_scope' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_SCOPE_MACRO")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_SCOPE_MACRO"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_SCOPE_MACRO"))
								end
							elseif action3 == 'comp_supp' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_SUPP_02")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_SUPP_02"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_SUPP_02"))
								end
							elseif action3 == 'skin_yusuf' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_ASSAULTSMG_VARMOD_LOWRIDER")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_ASSAULTSMG_VARMOD_LOWRIDER"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_ASSAULTSMG_VARMOD_LOWRIDER"))
								end
							end
						end, function(data3, menu3)
							menu3.close()
						end)
					else
						ESX.ShowNotification(_U('not_correct_wea'))
					end
				elseif action2 == 'wea_mismg' then
					local Weapon = GetHashKey("WEAPON_MINISMG")
					if CurrentWeaponHash == Weapon then
						ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'wea_mismg', {
							title = _U('wea_mismg'),
							align = GetConvar('esx_MenuAlign', 'top-left'),
							elements = {
								{label = _U('comp_dclip'), value = 'comp_dclip'},
								{label = _U('comp_exclip'), value = 'comp_exclip'}
						}}, function(data3, menu3)
							local action3 = data3.current.value

							if action3 == 'comp_dclip' then
								GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_MINISMG_CLIP_01"))
							elseif action3 == 'comp_exclip' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_MINISMG_CLIP_02")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_MINISMG_CLIP_02"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_MINISMG_CLIP_02"))
								end
							end
						end, function(data3, menu3)
							menu3.close()
						end)
					else
						ESX.ShowNotification(_U('not_correct_wea'))
					end
				elseif action2 == 'wea_mapistol' then
					local Weapon = GetHashKey("WEAPON_MACHINEPISTOL")
					if CurrentWeaponHash == Weapon then
						ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'wea_mapistol', {
							title = _U('wea_mapistol'),
							align = GetConvar('esx_MenuAlign', 'top-left'),
							elements = {
								{label = _U('comp_dclip'), value = 'comp_dclip'},
								{label = _U('comp_exclip'), value = 'comp_exclip'},
								{label = _U('comp_exclipp'), value = 'comp_exclipp'},
								{label = _U('comp_supp'), value = 'comp_supp'}
						}}, function(data3, menu3)
							local action3 = data3.current.value

							if action3 == 'comp_dclip' then
								GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_MACHINEPISTOL_CLIP_01"))
							elseif action3 == 'comp_exclip' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_MACHINEPISTOL_CLIP_02")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_MACHINEPISTOL_CLIP_02"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_MACHINEPISTOL_CLIP_02"))
								end
							elseif action3 == 'comp_exclipp' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_MACHINEPISTOL_CLIP_03")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_MACHINEPISTOL_CLIP_03"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_MACHINEPISTOL_CLIP_03"))
								end
							elseif action3 == 'comp_supp' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_PI_SUPP")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_PI_SUPP"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_PI_SUPP"))
								end
							end
						end, function(data3, menu3)
							menu3.close()
						end)
					else
						ESX.ShowNotification(_U('not_correct_wea'))
					end
				elseif action2 == 'wea_cpdw' then
					local Weapon = GetHashKey("WEAPON_COMBATPDW")
					if CurrentWeaponHash == Weapon then
						ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'wea_cpdw', {
							title = _U('wea_cpdw'),
							align = GetConvar('esx_MenuAlign', 'top-left'),
							elements = {
								{label = _U('comp_dclip'), value = 'comp_dclip'},
								{label = _U('comp_exclip'), value = 'comp_exclip'},
								{label = _U('comp_exclipp'), value = 'comp_exclipp'},
								{label = _U('comp_flash'), value = 'comp_flash'},
								{label = _U('comp_grip'), value = 'comp_grip'},
								{label = _U('comp_scope'), value = 'comp_scope'}
						}}, function(data3, menu3)
							local action3 = data3.current.value

							if action3 == 'comp_dclip' then
								GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_COMBATPDW_CLIP_01"))
							elseif action3 == 'comp_exclip' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_COMBATPDW_CLIP_02")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_COMBATPDW_CLIP_02"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_COMBATPDW_CLIP_02"))
								end
							elseif action3 == 'comp_exclipp' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_COMBATPDW_CLIP_03")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_COMBATPDW_CLIP_03"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_COMBATPDW_CLIP_03"))
								end
							elseif action3 == 'comp_flash' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_FLSH")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_FLSH"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_FLSH"))
								end
							elseif action3 == 'comp_grip' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_AFGRIP")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_AFGRIP"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_AFGRIP"))
								end
							elseif action3 == 'comp_scope' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_SCOPE_SMALL")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_SCOPE_SMALL"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_SCOPE_SMALL"))
								end
							end
						end, function(data3, menu3)
							menu3.close()
						end)
					else
						ESX.ShowNotification(_U('not_correct_wea'))
					end
				end
			end, function(data2, menu2)
				menu2.close()
			end)

		--== Shotgun Menu ==--
		elseif action == 'shot_menu' then
			ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'shot_menu', {
				title = _U('shot_menu'),
				align = GetConvar('esx_MenuAlign', 'top-left'),
				elements = {
					{label = _U('wea_pshot'), value = 'wea_pshot'}, -- Pump Shotgun
					{label = _U('wea_sshot'), value = 'wea_sshot'}, -- Sawed-Off Shotgun
					{label = _U('wea_ashot'), value = 'wea_ashot'}, -- Assault Shotgun
					{label = _U('wea_bshot'), value = 'wea_bshot'}, -- Bullpup Shotgun
					{label = _U('wea_hshot'), value = 'wea_hshot'} -- Heavy Shotgun
			}}, function(data2, menu2)
				local action2 = data2.current.value

				if action2 == 'wea_pshot' then
					local Weapon = GetHashKey("WEAPON_PUMPSHOTGUN")
					if CurrentWeaponHash == Weapon then
						ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'wea_pshot', {
							title = _U('wea_pshot'),
							align = GetConvar('esx_MenuAlign', 'top-left'),
							elements = {
								{label = _U('comp_flash'), value = 'comp_flash'},
								{label = _U('comp_supp'), value = 'comp_supp'},
								{label = _U('skin_yusuf'), value = 'skin_yusuf'}
						}}, function(data3, menu3)
							local action3 = data3.current.value

							if action3 == 'comp_flash' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_FLSH")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_FLSH"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_FLSH"))
								end
							elseif action3 == 'comp_supp' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_SR_SUPP")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_SR_SUPP"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_SR_SUPP"))
								end
							elseif action3 == 'skin_yusuf' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_PUMPSHOTGUN_VARMOD_LOWRIDER")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_PUMPSHOTGUN_VARMOD_LOWRIDER"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_PUMPSHOTGUN_VARMOD_LOWRIDER"))
								end
							end
						end, function(data3, menu3)
							menu3.close()
						end)
					else
						ESX.ShowNotification(_U('not_correct_wea'))
					end
				elseif action2 == 'wea_sshot' then
					local Weapon = GetHashKey("WEAPON_SAWNOFFSHOTGUN")
					if CurrentWeaponHash == Weapon then
						ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'wea_sshot', {
							title = _U('wea_sshot'),
							align = GetConvar('esx_MenuAlign', 'top-left'),
							elements = {
								{label = _U('skin_gilded'), value = 'skin_gilded'}
						}}, function(data3, menu3)
							local action3 = data3.current.value

							if action3 == 'skin_gilded' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_SAWNOFFSHOTGUN_VARMOD_LUXE")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_SAWNOFFSHOTGUN_VARMOD_LUXE"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_SAWNOFFSHOTGUN_VARMOD_LUXE"))
								end
							end
						end, function(data3, menu3)
							menu3.close()
						end)
					else
						ESX.ShowNotification(_U('not_correct_wea'))
					end
				elseif action2 == 'wea_ashot' then
					local Weapon = GetHashKey("WEAPON_ASSAULTSHOTGUN")
					if CurrentWeaponHash == Weapon then
						ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'wea_ashot', {
							title = _U('wea_ashot'),
							align = GetConvar('esx_MenuAlign', 'top-left'),
							elements = {
								{label = _U('comp_dclip'), value = 'comp_dclip'},
								{label = _U('comp_exclip'), value = 'comp_exclip'},
								{label = _U('comp_flash'), value = 'comp_flash'},
								{label = _U('comp_supp'), value = 'comp_supp'},
								{label = _U('comp_grip'), value = 'comp_grip'}
						}}, function(data3, menu3)
							local action3 = data3.current.value

							if action3 == 'comp_dclip' then
								GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_ASSAULTSHOTGUN_CLIP_01"))
							elseif action3 == 'comp_exclip' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_ASSAULTSHOTGUN_CLIP_02")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_ASSAULTSHOTGUN_CLIP_02"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_ASSAULTSHOTGUN_CLIP_02"))
								end
							elseif action3 == 'comp_flash' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_FLSH")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_FLSH"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_FLSH"))
								end
							elseif action3 == 'comp_supp' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_SUPP")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_SUPP"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_SUPP"))
								end
							elseif action3 == 'comp_grip' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_AFGRIP")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_AFGRIP"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_AFGRIP"))
								end
							end
						end, function(data3, menu3)
							menu3.close()
						end)
					else
						ESX.ShowNotification(_U('not_correct_wea'))
					end
				elseif action2 == 'wea_bshot' then
					local Weapon = GetHashKey("WEAPON_BULLPUPSHOTGUN")
					if CurrentWeaponHash == Weapon then
						ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'wea_bshot', {
							title = _U('wea_bshot'),
							align = GetConvar('esx_MenuAlign', 'top-left'),
							elements = {
								{label = _U('comp_flash'), value = 'comp_flash'},
								{label = _U('comp_supp'), value = 'comp_supp'},
								{label = _U('comp_grip'), value = 'comp_grip'}
						}}, function(data3, menu3)
							local action3 = data3.current.value

							if action3 == 'comp_flash' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_FLSH")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_FLSH"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_FLSH"))
								end
							elseif action3 == 'comp_supp' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_SUPP_02")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_SUPP_02"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_SUPP_02"))
								end
							elseif action3 == 'comp_grip' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_AFGRIP")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_AFGRIP"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_AFGRIP"))
								end
							end
						end, function(data3, menu3)
							menu3.close()
						end)
					else
						ESX.ShowNotification(_U('not_correct_wea'))
					end
				elseif action2 == 'wea_hshot' then
					local Weapon = GetHashKey("WEAPON_HEAVYSHOTGUN")
					if CurrentWeaponHash == Weapon then
						ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'wea_hshot', {
							title = _U('wea_hshot'),
							align = GetConvar('esx_MenuAlign', 'top-left'),
							elements = {
								{label = _U('comp_dclip'), value = 'comp_dclip'},
								{label = _U('comp_exclip'), value = 'comp_exclip'},
								{label = _U('comp_exclipp'), value = 'comp_exclipp'},
								{label = _U('comp_flash'), value = 'comp_flash'},
								{label = _U('comp_supp'), value = 'comp_supp'},
								{label = _U('comp_grip'), value = 'comp_grip'}
						}}, function(data3, menu3)
							local action3 = data3.current.value

							if action3 == 'comp_dclip' then
								GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_HEAVYSHOTGUN_CLIP_01"))
							elseif action3 == 'comp_exclip' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_HEAVYSHOTGUN_CLIP_02")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_HEAVYSHOTGUN_CLIP_02"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_HEAVYSHOTGUN_CLIP_02"))
								end
							elseif action3 == 'comp_exclipp' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_HEAVYSHOTGUN_CLIP_03")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_HEAVYSHOTGUN_CLIP_03"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_HEAVYSHOTGUN_CLIP_03"))
								end
							elseif action3 == 'comp_flash' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_FLSH")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_FLSH"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_FLSH"))
								end
							elseif action3 == 'comp_supp' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_SUPP_02")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_SUPP_02"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_SUPP_02"))
								end
							elseif action3 == 'comp_grip' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_AFGRIP")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_AFGRIP"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_AFGRIP"))
								end
							end
						end, function(data3, menu3)
							menu3.close()
						end)
					else
						ESX.ShowNotification(_U('not_correct_wea'))
					end
				end
			end, function(data2, menu2)
				menu2.close()
			end)

		--== Assault Rifle Menu ==--
		elseif action == 'ar_menu' then
			ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'ar_menu', {
				title = _U('ar_menu'),
				align = GetConvar('esx_MenuAlign', 'top-left'),
				elements = {
					{label = _U('wea_arifle'), value = 'wea_arifle'}, -- Assault Rifle
					{label = _U('wea_crifle'), value = 'wea_crifle'}, -- Carbine Rifle
					{label = _U('wea_adrifle'), value = 'wea_adrifle'}, -- Advanced Rifle
					{label = _U('wea_srifle'), value = 'wea_srifle'}, -- Special Carbine
					{label = _U('wea_brifle'), value = 'wea_brifle'}, -- Bullpup Rifle
					{label = _U('wea_corifle'), value = 'wea_corifle'} -- Compact Rifle
			}}, function(data2, menu2)
				local action2 = data2.current.value

				if action2 == 'wea_arifle' then
					local Weapon = GetHashKey("WEAPON_ASSAULTRIFLE")
					if CurrentWeaponHash == Weapon then
						ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'wea_arifle', {
							title = _U('wea_arifle'),
							align = GetConvar('esx_MenuAlign', 'top-left'),
							elements = {
								{label = _U('comp_dclip'), value = 'comp_dclip'},
								{label = _U('comp_exclip'), value = 'comp_exclip'},
								{label = _U('comp_exclipp'), value = 'comp_exclipp'},
								{label = _U('comp_flash'), value = 'comp_flash'},
								{label = _U('comp_scope'), value = 'comp_scope'},
								{label = _U('comp_supp'), value = 'comp_supp'},
								{label = _U('comp_grip'), value = 'comp_grip'},
								{label = _U('skin_yusuf'), value = 'skin_yusuf'}
						}}, function(data3, menu3)
							local action3 = data3.current.value

							if action3 == 'comp_dclip' then
								GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_ASSAULTRIFLE_CLIP_01"))
							elseif action3 == 'comp_exclip' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_ASSAULTRIFLE_CLIP_02")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_ASSAULTRIFLE_CLIP_02"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_ASSAULTRIFLE_CLIP_02"))
								end
							elseif action3 == 'comp_exclipp' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_ASSAULTRIFLE_CLIP_03")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_ASSAULTRIFLE_CLIP_03"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_ASSAULTRIFLE_CLIP_03"))
								end
							elseif action3 == 'comp_flash' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_FLSH")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_FLSH"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_FLSH"))
								end
							elseif action3 == 'comp_scope' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_SCOPE_MACRO")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_SCOPE_MACRO"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_SCOPE_MACRO"))
								end
							elseif action3 == 'comp_supp' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_SUPP_02")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_SUPP_02"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_SUPP_02"))
								end
							elseif action3 == 'comp_grip' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_AFGRIP")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_AFGRIP"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_AFGRIP"))
								end
							elseif action3 == 'skin_yusuf' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_ASSAULTRIFLE_VARMOD_LUXE")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_ASSAULTRIFLE_VARMOD_LUXE"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_ASSAULTRIFLE_VARMOD_LUXE"))
								end
							end
						end, function(data3, menu3)
							menu3.close()
						end)
					else
						ESX.ShowNotification(_U('not_correct_wea'))
					end
				elseif action2 == 'wea_crifle' then
					local Weapon = GetHashKey("WEAPON_CARBINERIFLE")
					if CurrentWeaponHash == Weapon then
						ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'wea_crifle', {
							title = _U('wea_crifle'),
							align = GetConvar('esx_MenuAlign', 'top-left'),
							elements = {
								{label = _U('comp_dclip'), value = 'comp_dclip'},
								{label = _U('comp_exclip'), value = 'comp_exclip'},
								{label = _U('comp_exclipp'), value = 'comp_exclipp'},
								{label = _U('comp_flash'), value = 'comp_flash'},
								{label = _U('comp_scope'), value = 'comp_scope'},
								{label = _U('comp_supp'), value = 'comp_supp'},
								{label = _U('comp_grip'), value = 'comp_grip'},
								{label = _U('skin_yusuf'), value = 'skin_yusuf'}
						}}, function(data3, menu3)
							local action3 = data3.current.value

							if action3 == 'comp_dclip' then
								GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_CARBINERIFLE_CLIP_01"))
							elseif action3 == 'comp_exclip' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_CARBINERIFLE_CLIP_02")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_CARBINERIFLE_CLIP_02"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_CARBINERIFLE_CLIP_02"))
								end
							elseif action3 == 'comp_exclipp' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_CARBINERIFLE_CLIP_03")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_CARBINERIFLE_CLIP_03"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_CARBINERIFLE_CLIP_03"))
								end
							elseif action3 == 'comp_flash' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_FLSH")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_FLSH"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_FLSH"))
								end
							elseif action3 == 'comp_scope' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_SCOPE_MEDIUM")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_SCOPE_MEDIUM"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_SCOPE_MEDIUM"))
								end
							elseif action3 == 'comp_supp' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_SUPP")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_SUPP"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_SUPP"))
								end
							elseif action3 == 'comp_grip' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_AFGRIP")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_AFGRIP"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_AFGRIP"))
								end
							elseif action3 == 'skin_yusuf' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_CARBINERIFLE_VARMOD_LUXE")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_CARBINERIFLE_VARMOD_LUXE"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_CARBINERIFLE_VARMOD_LUXE"))
								end
							end
						end, function(data3, menu3)
							menu3.close()
						end)
					else
						ESX.ShowNotification(_U('not_correct_wea'))
					end
				elseif action2 == 'wea_adrifle' then
					local Weapon = GetHashKey("WEAPON_ADVANCEDRIFLE")
					if CurrentWeaponHash == Weapon then
						ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'wea_adrifle', {
							title = _U('wea_adrifle'),
							align = GetConvar('esx_MenuAlign', 'top-left'),
							elements = {
								{label = _U('comp_dclip'), value = 'comp_dclip'},
								{label = _U('comp_exclip'), value = 'comp_exclip'},
								{label = _U('comp_flash'), value = 'comp_flash'},
								{label = _U('comp_scope'), value = 'comp_scope'},
								{label = _U('comp_supp'), value = 'comp_supp'},
								{label = _U('skin_gilded'), value = 'skin_gilded'}
						}}, function(data3, menu3)
							local action3 = data3.current.value

							if action3 == 'comp_dclip' then
								GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_ADVANCEDRIFLE_CLIP_01"))
							elseif action3 == 'comp_exclip' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_ADVANCEDRIFLE_CLIP_02")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_ADVANCEDRIFLE_CLIP_02"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_ADVANCEDRIFLE_CLIP_02"))
								end
							elseif action3 == 'comp_flash' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_FLSH")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_FLSH"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_FLSH"))
								end
							elseif action3 == 'comp_scope' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_SCOPE_SMALL")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_SCOPE_SMALL"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_SCOPE_SMALL"))
								end
							elseif action3 == 'comp_supp' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_SUPP")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_SUPP"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_SUPP"))
								end
							elseif action3 == 'skin_gilded' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_ADVANCEDRIFLE_VARMOD_LUXE")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_ADVANCEDRIFLE_VARMOD_LUXE"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_ADVANCEDRIFLE_VARMOD_LUXE"))
								end
							end
						end, function(data3, menu3)
							menu3.close()
						end)
					else
						ESX.ShowNotification(_U('not_correct_wea'))
					end
				elseif action2 == 'wea_srifle' then
					local Weapon = GetHashKey("WEAPON_SPECIALCARBINE")
					if CurrentWeaponHash == Weapon then
						ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'wea_srifle', {
							title = _U('wea_srifle'),
							align = GetConvar('esx_MenuAlign', 'top-left'),
							elements = {
								{label = _U('comp_dclip'), value = 'comp_dclip'},
								{label = _U('comp_exclip'), value = 'comp_exclip'},
								{label = _U('comp_exclipp'), value = 'comp_exclipp'},
								{label = _U('comp_flash'), value = 'comp_flash'},
								{label = _U('comp_scope'), value = 'comp_scope'},
								{label = _U('comp_supp'), value = 'comp_supp'},
								{label = _U('comp_grip'), value = 'comp_grip'},
								{label = _U('skin_etched'), value = 'skin_etched'}
						}}, function(data3, menu3)
							local action3 = data3.current.value

							if action3 == 'comp_dclip' then
								GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_SPECIALCARBINE_CLIP_01"))
							elseif action3 == 'comp_exclip' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_SPECIALCARBINE_CLIP_02")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_SPECIALCARBINE_CLIP_02"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_SPECIALCARBINE_CLIP_02"))
								end
							elseif action3 == 'comp_exclipp' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_SPECIALCARBINE_CLIP_03")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_SPECIALCARBINE_CLIP_03"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_SPECIALCARBINE_CLIP_03"))
								end
							elseif action3 == 'comp_flash' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_FLSH")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_FLSH"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_FLSH"))
								end
							elseif action3 == 'comp_scope' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_SCOPE_MEDIUM")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_SCOPE_MEDIUM"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_SCOPE_MEDIUM"))
								end
							elseif action3 == 'comp_supp' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_SUPP_02")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_SUPP_02"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_SUPP_02"))
								end
							elseif action3 == 'comp_grip' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_AFGRIP")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_AFGRIP"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_AFGRIP"))
								end
							elseif action3 == 'skin_etched' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_SPECIALCARBINE_VARMOD_LOWRIDER")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_SPECIALCARBINE_VARMOD_LOWRIDER"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_SPECIALCARBINE_VARMOD_LOWRIDER"))
								end
							end
						end, function(data3, menu3)
							menu3.close()
						end)
					else
						ESX.ShowNotification(_U('not_correct_wea'))
					end
				elseif action2 == 'wea_brifle' then
					local Weapon = GetHashKey("WEAPON_BULLPUPRIFLE")
					if CurrentWeaponHash == Weapon then
						ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'wea_brifle', {
							title = _U('wea_brifle'),
							align = GetConvar('esx_MenuAlign', 'top-left'),
							elements = {
								{label = _U('comp_dclip'), value = 'comp_dclip'},
								{label = _U('comp_exclip'), value = 'comp_exclip'},
								{label = _U('comp_flash'), value = 'comp_flash'},
								{label = _U('comp_scope'), value = 'comp_scope'},
								{label = _U('comp_supp'), value = 'comp_supp'},
								{label = _U('comp_grip'), value = 'comp_grip'},
								{label = _U('skin_gilded'), value = 'skin_gilded'}
						}}, function(data3, menu3)
							local action3 = data3.current.value

							if action3 == 'comp_dclip' then
								GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_BULLPUPRIFLE_CLIP_01"))
							elseif action3 == 'comp_exclip' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_BULLPUPRIFLE_CLIP_02")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_BULLPUPRIFLE_CLIP_02"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_BULLPUPRIFLE_CLIP_02"))
								end
							elseif action3 == 'comp_flash' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_FLSH")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_FLSH"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_FLSH"))
								end
							elseif action3 == 'comp_scope' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_SCOPE_SMALL")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_SCOPE_SMALL"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_SCOPE_SMALL"))
								end
							elseif action3 == 'comp_supp' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_SUPP")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_SUPP"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_SUPP"))
								end
							elseif action3 == 'comp_grip' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_AFGRIP")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_AFGRIP"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_AFGRIP"))
								end
							elseif action3 == 'skin_gilded' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_BULLPUPRIFLE_VARMOD_LOW")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_BULLPUPRIFLE_VARMOD_LOW"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_BULLPUPRIFLE_VARMOD_LOW"))
								end
							end
						end, function(data3, menu3)
							menu3.close()
						end)
					else
						ESX.ShowNotification(_U('not_correct_wea'))
					end
				elseif action2 == 'wea_corifle' then
					local Weapon = GetHashKey("WEAPON_COMPACTRIFLE")
					if CurrentWeaponHash == Weapon then
						ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'wea_corifle', {
							title = _U('wea_corifle'),
							align = GetConvar('esx_MenuAlign', 'top-left'),
							elements = {
								{label = _U('comp_dclip'), value = 'comp_dclip'},
								{label = _U('comp_exclip'), value = 'comp_exclip'},
								{label = _U('comp_exclipp'), value = 'comp_exclipp'}
						}}, function(data3, menu3)
							local action3 = data3.current.value

							if action3 == 'comp_dclip' then
								GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_COMPACTRIFLE_CLIP_01"))
							elseif action3 == 'comp_exclip' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_COMPACTRIFLE_CLIP_02")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_COMPACTRIFLE_CLIP_02"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_COMPACTRIFLE_CLIP_02"))
								end
							elseif action3 == 'comp_exclipp' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_COMPACTRIFLE_CLIP_03")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_COMPACTRIFLE_CLIP_03"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_COMPACTRIFLE_CLIP_03"))
								end
							end
						end, function(data3, menu3)
							menu3.close()
						end)
					else
						ESX.ShowNotification(_U('not_correct_wea'))
					end
				end
			end, function(data2, menu2)
				menu2.close()
			end)

		--== Machine Gun Menu ==--
		elseif action == 'mg_menu' then
			ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'mg_menu', {
				title = _U('mg_menu'),
				align = GetConvar('esx_MenuAlign', 'top-left'),
				elements = {
					{label = _U('wea_mg'), value = 'wea_mg'}, -- MG
					{label = _U('wea_cmg'), value = 'wea_cmg'}, -- Combat MG
					{label = _U('wea_gmg'), value = 'wea_gmg'} -- Gusenberg Sweeper
			}}, function(data2, menu2)
				local action2 = data2.current.value

				if action2 == 'wea_mg' then
					local Weapon = GetHashKey("WEAPON_MG")
					if CurrentWeaponHash == Weapon then
						ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'wea_mg', {
							title = _U('wea_mg'),
							align = GetConvar('esx_MenuAlign', 'top-left'),
							elements = {
								{label = _U('comp_dclip'), value = 'comp_dclip'},
								{label = _U('comp_exclip'), value = 'comp_exclip'},
								{label = _U('comp_scope'), value = 'comp_scope'},
								{label = _U('skin_yusuf'), value = 'skin_yusuf'}
						}}, function(data3, menu3)
							local action3 = data3.current.value

							if action3 == 'comp_dclip' then
								GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_MG_CLIP_01"))
							elseif action3 == 'comp_exclip' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_MG_CLIP_02")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_MG_CLIP_02"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_MG_CLIP_02"))
								end
							elseif action3 == 'comp_scope' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_SCOPE_SMALL_02")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_SCOPE_SMALL_02"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_SCOPE_SMALL_02"))
								end
							elseif action3 == 'skin_yusuf' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_MG_VARMOD_LOWRIDER")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_MG_VARMOD_LOWRIDER"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_MG_VARMOD_LOWRIDER"))
								end
							end
						end, function(data3, menu3)
							menu3.close()
						end)
					else
						ESX.ShowNotification(_U('not_correct_wea'))
					end
				elseif action2 == 'wea_cmg' then
					local Weapon = GetHashKey("WEAPON_COMBATMG")
					if CurrentWeaponHash == Weapon then
						ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'wea_cmg', {
							title = _U('wea_cmg'),
							align = GetConvar('esx_MenuAlign', 'top-left'),
							elements = {
								{label = _U('comp_dclip'), value = 'comp_dclip'},
								{label = _U('comp_exclip'), value = 'comp_exclip'},
								{label = _U('comp_scope'), value = 'comp_scope'},
								{label = _U('comp_grip'), value = 'comp_grip'},
								{label = _U('skin_etched'), value = 'skin_etched'}
						}}, function(data3, menu3)
							local action3 = data3.current.value

							if action3 == 'comp_dclip' then
								GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_COMBATMG_CLIP_01"))
							elseif action3 == 'comp_exclip' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_COMBATMG_CLIP_02")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_COMBATMG_CLIP_02"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_COMBATMG_CLIP_02"))
								end
							elseif action3 == 'comp_scope' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_SCOPE_MEDIUM")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_SCOPE_MEDIUM"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_SCOPE_MEDIUM"))
								end
							elseif action3 == 'comp_grip' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_AFGRIP")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_AFGRIP"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_AFGRIP"))
								end
							elseif action3 == 'skin_etched' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_COMBATMG_VARMOD_LOWRIDER")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_COMBATMG_VARMOD_LOWRIDER"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_COMBATMG_VARMOD_LOWRIDER"))
								end
							end
						end, function(data3, menu3)
							menu3.close()
						end)
					else
						ESX.ShowNotification(_U('not_correct_wea'))
					end
				elseif action2 == 'wea_gmg' then
					local Weapon = GetHashKey("WEAPON_GUSENBERG")
					if CurrentWeaponHash == Weapon then
						ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'wea_gmg', {
							title = _U('wea_gmg'),
							align = GetConvar('esx_MenuAlign', 'top-left'),
							elements = {
								{label = _U('comp_dclip'), value = 'comp_dclip'},
								{label = _U('comp_exclip'), value = 'comp_exclip'}
						}}, function(data3, menu3)
							local action3 = data3.current.value

							if action3 == 'comp_dclip' then
								GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_GUSENBERG_CLIP_01"))
							elseif action3 == 'comp_exclip' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_GUSENBERG_CLIP_02")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_GUSENBERG_CLIP_02"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_GUSENBERG_CLIP_02"))
								end
							end
						end, function(data3, menu3)
							menu3.close()
						end)
					else
						ESX.ShowNotification(_U('not_correct_wea'))
					end
				end
			end, function(data2, menu2)
				menu2.close()
			end)

		--== Sniper Rifle Menu ==--
		elseif action == 'sniper_menu' then
			ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'sniper_menu', {
				title = _U('sniper_menu'),
				align = GetConvar('esx_MenuAlign', 'top-left'),
				elements = {
					{label = _U('wea_sniper'), value = 'wea_sniper'}, -- Sniper Rifle
					{label = _U('wea_hsniper'), value = 'wea_hsniper'}, -- Heavy Sniper
					{label = _U('wea_msniper'), value = 'wea_msniper'} -- Marksman Rifle
			}}, function(data2, menu2)
				local action2 = data2.current.value

				if action2 == 'wea_sniper' then
					local Weapon = GetHashKey("WEAPON_SNIPERRIFLE")
					if CurrentWeaponHash == Weapon then
						ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'wea_sniper', {
							title = _U('wea_sniper'),
							align = GetConvar('esx_MenuAlign', 'top-left'),
							elements = {
								--{label = _U('comp_dclip'), value = 'comp_dclip'},
								{label = _U('comp_supp'), value = 'comp_supp'},
								{label = _U('comp_scope'), value = 'comp_scope'},
								{label = _U('comp_ascope'), value = 'comp_ascope'},
								{label = _U('skin_wood'), value = 'skin_wood'}
						}}, function(data3, menu3)
							local action3 = data3.current.value

							if action3 == 'comp_dclip' then
								GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_SNIPERRIFLE_CLIP_01"))
							elseif action3 == 'comp_supp' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_SUPP_02")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_SUPP_02"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_SUPP_02"))
								end
							elseif action3 == 'comp_scope' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_SCOPE_LARGE")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_SCOPE_LARGE"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_SCOPE_LARGE"))
								end
							elseif action3 == 'comp_ascope' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_SCOPE_MAX")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_SCOPE_MAX"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_SCOPE_MAX"))
								end
							elseif action3 == 'skin_wood' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_SNIPERRIFLE_VARMOD_LUXE")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_SNIPERRIFLE_VARMOD_LUXE"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_SNIPERRIFLE_VARMOD_LUXE"))
								end
							end
						end, function(data3, menu3)
							menu3.close()
						end)
					else
						ESX.ShowNotification(_U('not_correct_wea'))
					end
				elseif action2 == 'wea_hsniper' then
					local Weapon = GetHashKey("WEAPON_HEAVYSNIPER")
					if CurrentWeaponHash == Weapon then
						ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'wea_hsniper', {
							title = _U('wea_hsniper'),
							align = GetConvar('esx_MenuAlign', 'top-left'),
							elements = {
								--{label = _U('comp_dclip'), value = 'comp_dclip'},
								{label = _U('comp_scope'), value = 'comp_scope'},
								{label = _U('comp_ascope'), value = 'comp_ascope'}
						}}, function(data3, menu3)
							local action3 = data3.current.value

							if action3 == 'comp_dclip' then
								GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_HEAVYSNIPER_CLIP_01"))
							elseif action3 == 'comp_scope' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_SCOPE_LARGE")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_SCOPE_LARGE"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_SCOPE_LARGE"))
								end
							elseif action3 == 'comp_ascope' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_SCOPE_MAX")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_SCOPE_MAX"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_SCOPE_MAX"))
								end
							end
						end, function(data3, menu3)
							menu3.close()
						end)
					else
						ESX.ShowNotification(_U('not_correct_wea'))
					end
				elseif action2 == 'wea_msniper' then
					local Weapon = GetHashKey("WEAPON_MARKSMANRIFLE")
					if CurrentWeaponHash == Weapon then
						ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'wea_msniper', {
							title = _U('wea_msniper'),
							align = GetConvar('esx_MenuAlign', 'top-left'),
							elements = {
								{label = _U('comp_dclip'), value = 'comp_dclip'},
								{label = _U('comp_exclip'), value = 'comp_exclip'},
								{label = _U('comp_scope'), value = 'comp_scope'},
								{label = _U('comp_flash'), value = 'comp_flash'},
								{label = _U('comp_supp'), value = 'comp_supp'},
								{label = _U('comp_grip'), value = 'comp_grip'},
								{label = _U('skin_yusuf'), value = 'skin_yusuf'}
						}}, function(data3, menu3)
							local action3 = data3.current.value

							if action3 == 'comp_dclip' then
								GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_MARKSMANRIFLE_CLIP_01"))
							elseif action3 == 'comp_exclip' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_MARKSMANRIFLE_CLIP_02")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_MARKSMANRIFLE_CLIP_02"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_MARKSMANRIFLE_CLIP_02"))
								end
							elseif action3 == 'comp_scope' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_SCOPE_LARGE_FIXED_ZOOM")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_SCOPE_LARGE_FIXED_ZOOM"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_SCOPE_LARGE_FIXED_ZOOM"))
								end
							elseif action3 == 'comp_flash' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_FLSH")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_FLSH"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_FLSH"))
								end
							elseif action3 == 'comp_supp' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_SUPP")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_SUPP"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_SUPP"))
								end
							elseif action3 == 'comp_grip' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_AFGRIP")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_AFGRIP"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_AT_AR_AFGRIP"))
								end
							elseif action3 == 'skin_yusuf' then
								if HasPedGotWeaponComponent(PlayerPed, Weapon, GetHashKey("COMPONENT_MARKSMANRIFLE_VARMOD_LUXE")) then
									RemoveWeaponComponentFromPed(PlayerPed, Weapon, GetHashKey("COMPONENT_MARKSMANRIFLE_VARMOD_LUXE"))
								else
									GiveWeaponComponentToPed(PlayerPed, Weapon, GetHashKey("COMPONENT_MARKSMANRIFLE_VARMOD_LUXE"))
								end
							end
						end, function(data3, menu3)
							menu3.close()
						end)
					else
						ESX.ShowNotification(_U('not_correct_wea'))
					end
				end
			end, function(data2, menu2)
				menu2.close()
			end)

		--== Universal Skin Menu ==--
		elseif action == 'uni_skins' then
			ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'uni_skins', {
				title = _U('uni_skins'),
				align = GetConvar('esx_MenuAlign', 'top-left'),
				elements = {
					{label = _U('skin_normal'), value = 'skin_normal'},
					{label = _U('skin_green'), value = 'skin_green'},
					{label = _U('skin_gold'), value = 'skin_gold'},
					{label = _U('skin_pink'), value = 'skin_pink'},
					{label = _U('skin_army'), value = 'skin_army'},
					{label = _U('skin_lspd'), value = 'skin_lspd'},
					{label = _U('skin_orange'), value = 'skin_orange'},
					{label = _U('skin_platinum'), value = 'skin_platinum'}
			}}, function(data2, menu2)
				local action2 = data2.current.value

				if action2 == 'skin_normal' then
					SetPedWeaponTintIndex(PlayerPed, CurrentWeaponHash, 0)
				elseif action2 == 'skin_green' then
					SetPedWeaponTintIndex(PlayerPed, CurrentWeaponHash, 1)
				elseif action2 == 'skin_gold' then
					SetPedWeaponTintIndex(PlayerPed, CurrentWeaponHash, 2)
				elseif action2 == 'skin_pink' then
					SetPedWeaponTintIndex(PlayerPed, CurrentWeaponHash, 3)
				elseif action2 == 'skin_army' then
					SetPedWeaponTintIndex(PlayerPed, CurrentWeaponHash, 4)
				elseif action2 == 'skin_lspd' then
					SetPedWeaponTintIndex(PlayerPed, CurrentWeaponHash, 5)
				elseif action2 == 'skin_orange' then
					SetPedWeaponTintIndex(PlayerPed, CurrentWeaponHash, 6)
				elseif action2 == 'skin_platinum' then
					SetPedWeaponTintIndex(PlayerPed, CurrentWeaponHash, 7)
				end
			end, function(data2, menu2)
				menu2.close()
			end)
		end
	end, function (data, menu)
		menu.close()
	end)
end