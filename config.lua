Config = {}
Config.Locale = 'en'

-- Edit to your Liking | true = It will remove that item when used | false = Does opposite of true
Config.Removeables = {
	BulletProofVest = true,
	Drill = false,
	FirstAidKit = true,
	LockPick = true,
	OxygenMask = true,
	RepairKit = true,
	TireKit = true,
	WeaponBox = true,
	WeaponClip = true
}

-- Item Scenario Wait Times in MS
Config.Wait = {
	Drill = 10000,
	LockPick = 10000,
	RepairKit = 10000,
	TireKit = 10000
}

-- Binoculars
Config.BinocularsPutAway = 177 -- Backspace Key

-- Weapon Ammos
Config.WeaponBoxAmmo = 150 -- Will give this many buillets to player
Config.WeaponClipAmmo = 50 -- Will give this many buillets to player

-- Vehicle GPS
Config.UseVehicleGPS = false -- Set to true to use Vehicle GPS.
Config.LimitedVehicles = true -- Set to true to only allow Aircrafts, Boats, & Cars to use GPS.
Config.OnlyFrontSeats = true -- Set to true to only allow the front 2 seats to be able to see Radar if they used it.

-- Weapon Hashes
Config.Weapons = {
	-- Handguns
	{weapon = "WEAPON_PISTOL", hash = 453432689},
	{weapon = "WEAPON_PISTOL_MK2", hash = 3219281620},
	{weapon = "WEAPON_COMBATPISTOL", hash = 1593441988},
	{weapon = "WEAPON_APPISTOL", hash = 584646201},
	{weapon = "WEAPON_PISTOL50", hash = 2578377531},
	{weapon = "WEAPON_SNSPISTOL", hash = 3218215474},
	{weapon = "WEAPON_SNSPISTOL_MK2", hash = 2285322324},
	{weapon = "WEAPON_HEAVYPISTOL", hash = 3523564046},
	{weapon = "WEAPON_VINTAGEPISTOL", hash = 137902532},
	{weapon = "WEAPON_FLAREGUN", hash = 1198879012},
	{weapon = "WEAPON_MARKSMANPISTOL", hash = 3696079510},
	{weapon = "WEAPON_REVOLVER", hash = 3249783761},
	{weapon = "WEAPON_REVOLVER_MK2", hash = 3415619887},
	{weapon = "WEAPON_DOUBLEACTION", hash = 2548703416},
	{weapon = "WEAPON_CERAMICPISTOL", hash = 727643628},
	{weapon = "WEAPON_NAVYREVOLVER", hash = 2441047180},
	-- Submachine Guns
	{weapon = "WEAPON_MICROSMG", hash = 324215364},
	{weapon = "WEAPON_SMG", hash = 736523883},
	{weapon = "WEAPON_SMG_MK2", hash = 2024373456},
	{weapon = "WEAPON_ASSAULTSMG", hash = 4024951519},
	{weapon = "WEAPON_COMBATPDW", hash = 171789620},
	{weapon = "WEAPON_MACHINEPISTOL", hash = 3675956304},
	{weapon = "WEAPON_MINISMG", hash = 3173288789},
	-- Shotguns
	{weapon = "WEAPON_PUMPSHOTGUN", hash = 487013001},
	{weapon = "WEAPON_PUMPSHOTGUN_MK2", hash = 1432025498},
	{weapon = "WEAPON_SAWNOFFSHOTGUN", hash = 2017895192},
	{weapon = "WEAPON_ASSAULTSHOTGUN", hash = 3800352039},
	{weapon = "WEAPON_BULLPUPSHOTGUN", hash = 2640438543},
	{weapon = "WEAPON_MUSKET", hash = 2828843422},
	{weapon = "WEAPON_HEAVYSHOTGUN", hash = 984333226},
	{weapon = "WEAPON_DBSHOTGUN", hash = 4019527611},
	{weapon = "WEAPON_AUTOSHOTGUN", hash = 317205821},
	-- Assault Rifles
	{weapon = "WEAPON_ASSAULTRIFLE", hash = 3220176749},
	{weapon = "WEAPON_ASSAULTRIFLE_MK2", hash = 961495388},
	{weapon = "WEAPON_CARBINERIFLE", hash = 2210333304},
	{weapon = "WEAPON_CARBINERIFLE_MK2", hash = 4208062921},
	{weapon = "WEAPON_ADVANCEDRIFLE", hash = 2937143193},
	{weapon = "WEAPON_SPECIALCARBINE", hash = 3231910285},
	{weapon = "WEAPON_SPECIALCARBINE_MK2", hash = 2526821735},
	{weapon = "WEAPON_BULLPUPRIFLE", hash = 2132975508},
	{weapon = "WEAPON_BULLPUPRIFLE_MK2", hash = 2228681469},
	{weapon = "WEAPON_COMPACTRIFLE", hash = 1649403952},
	-- Light Machine Guns
	{weapon = "WEAPON_MG", hash = 2634544996},
	{weapon = "WEAPON_COMBATMG", hash = 2144741730},
	{weapon = "WEAPON_COMBATMG_MK2", hash = 3686625920},
	{weapon = "WEAPON_GUSENBERG", hash = 1627465347},
	-- Sniper Rifles
	{weapon = "WEAPON_SNIPERRIFLE", hash = 100416529},
	{weapon = "WEAPON_HEAVYSNIPER", hash = 205991906},
	{weapon = "WEAPON_HEAVYSNIPER_MK2", hash = 177293209},
	{weapon = "WEAPON_MARKSMANRIFLE", hash = 3342088282},
	{weapon = "WEAPON_MARKSMANRIFLE_MK2", hash = 1785463520},
	-- Heavy Weapons
	{weapon = "WEAPON_RPG", hash = 2982836145},
	{weapon = "WEAPON_GRENADELAUNCHER", hash = 2726580491},
	{weapon = "WEAPON_GENADELAUNCHER_SMOKE", hash = 3101310707},
	{weapon = "WEAPON_MINIGUN", hash = 1119849093},
	{weapon = "WEAPON_FIREWORK", hash = 2138347493},
	{weapon = "WEAPON_HOMINGLAUNCHER", hash = 1672152130},
	{weapon = "WEAPON_COMPACTLAUNCHER", hash = 125959754},
	-- Other
	{weapon = "WEAPON_FIREEXTINGUISHER", hash = 101631238}
}
