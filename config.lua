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
	AmmoBoxes = true
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
Config.AmmoBoxes = {
	Pistol = 50, -- 9mm @ 0.28 per round | 50 x 1.05 = 14
	SMG = 50, -- 9mm @ 0.28 per round | 50 x 1.05 = 14
	Shotgun = 25, -- 12g @ 0.36 per round | 25 x 0.36 = 9
	Rifle = 25, -- 5.56 @ 0.47 per round | 25 x 0.47 = 11.75 (12)
	MG = 50, -- 5.56 @ 0.47 per round | 50 x 0.47 = 23.50 (24)
	Sniper = 20, -- 7.62 @ 1.05 per round | 20 x 1.05 = 21
	Flare = 5, -- Not doing Realistic Price
	BoxBig = 100,
	BoxSmall = 50
}

Config.Weapons = {
	Pistols = {
		{weaponName = 'WEAPON_PISTOL', weaponHash = GetHashKey('WEAPON_PISTOL')},
		{weaponName = 'WEAPON_COMBATPISTOL', weaponHash = GetHashKey('WEAPON_COMBATPISTOL')},
		{weaponName = 'WEAPON_APPISTOL', weaponHash = GetHashKey('WEAPON_APPISTOL')},
		{weaponName = 'WEAPON_PISTOL50', weaponHash = GetHashKey('WEAPON_PISTOL50')},
		{weaponName = 'WEAPON_SNSPISTOL', weaponHash = GetHashKey('WEAPON_SNSPISTOL')},
		{weaponName = 'WEAPON_HEAVYPISTOL', weaponHash = GetHashKey('WEAPON_HEAVYPISTOL')},
		{weaponName = 'WEAPON_VINTAGEPISTOL', weaponHash = GetHashKey('WEAPON_VINTAGEPISTOL')},
		{weaponName = 'WEAPON_MACHINEPISTOL', weaponHash = GetHashKey('WEAPON_MACHINEPISTOL')},
		{weaponName = 'WEAPON_REVOLVER', weaponHash = GetHashKey('WEAPON_REVOLVER')},
		{weaponName = 'WEAPON_MARKSMANPISTOL', weaponHash = GetHashKey('WEAPON_MARKSMANPISTOL')},
		{weaponName = 'WEAPON_DOUBLEACTION', weaponHash = GetHashKey('WEAPON_DOUBLEACTION')}
	},
	SMGs = {
		{weaponName = 'WEAPON_SMG', weaponHash = GetHashKey('WEAPON_SMG')},
		{weaponName = 'WEAPON_ASSAULTSMG', weaponHash = GetHashKey('WEAPON_ASSAULTSMG')},
		{weaponName = 'WEAPON_MICROSMG', weaponHash = GetHashKey('WEAPON_MICROSMG')},
		{weaponName = 'WEAPON_MINISMG', weaponHash = GetHashKey('WEAPON_MINISMG')},
		{weaponName = 'WEAPON_COMBATPDW', weaponHash = GetHashKey('WEAPON_COMBATPDW')}
	},
	Shotguns = {
		{weaponName = 'WEAPON_PUMPSHOTGUN', weaponHash = GetHashKey('WEAPON_PUMPSHOTGUN')},
		{weaponName = 'WEAPON_SAWNOFFSHOTGUN', weaponHash = GetHashKey('WEAPON_SAWNOFFSHOTGUN')},
		{weaponName = 'WEAPON_ASSAULTSHOTGUN', weaponHash = GetHashKey('WEAPON_ASSAULTSHOTGUN')},
		{weaponName = 'WEAPON_BULLPUPSHOTGUN', weaponHash = GetHashKey('WEAPON_BULLPUPSHOTGUN')},
		{weaponName = 'WEAPON_HEAVYSHOTGUN', weaponHash = GetHashKey('WEAPON_HEAVYSHOTGUN')},
		{weaponName = 'WEAPON_DBSHOTGUN', weaponHash = GetHashKey('WEAPON_DBSHOTGUN')},
		{weaponName = 'WEAPON_AUTOSHOTGUN', weaponHash = GetHashKey('WEAPON_AUTOSHOTGUN')},
		{weaponName = 'WEAPON_MUSKET', weaponHash = GetHashKey('WEAPON_MUSKET')}
	},
	Rifles = {
		{weaponName = 'WEAPON_ASSAULTRIFLE', weaponHash = GetHashKey('WEAPON_ASSAULTRIFLE')},
		{weaponName = 'WEAPON_CARBINERIFLE', weaponHash = GetHashKey('WEAPON_CARBINERIFLE')},
		{weaponName = 'WEAPON_ADVANCEDRIFLE', weaponHash = GetHashKey('WEAPON_ADVANCEDRIFLE')},
		{weaponName = 'WEAPON_SPECIALCARBINE', weaponHash = GetHashKey('WEAPON_SPECIALCARBINE')},
		{weaponName = 'WEAPON_BULLPUPRIFLE', weaponHash = GetHashKey('WEAPON_BULLPUPRIFLE')},
		{weaponName = 'WEAPON_COMPACTRIFLE', weaponHash = GetHashKey('WEAPON_COMPACTRIFLE')}
	},
	MGs = {
		{weaponName = 'WEAPON_MG', weaponHash = GetHashKey('WEAPON_MG')},
		{weaponName = 'WEAPON_COMBATMG', weaponHash = GetHashKey('WEAPON_COMBATMG')},
		{weaponName = 'WEAPON_GUSENBERG', weaponHash = GetHashKey('WEAPON_GUSENBERG')}
	},
	Snipers = {
		{weaponName = 'WEAPON_SNIPERRIFLE', weaponHash = GetHashKey('WEAPON_SNIPERRIFLE')},
		{weaponName = 'WEAPON_HEAVYSNIPER', weaponHash = GetHashKey('WEAPON_HEAVYSNIPER')},
		{weaponName = 'WEAPON_MARKSMANRIFLE', weaponHash = GetHashKey('WEAPON_MARKSMANRIFLE')}
	},
	Flares = {
		{weaponName = 'WEAPON_FLAREGUN', weaponHash = GetHashKey('WEAPON_FLAREGUN')}
	}
}

-- Vehicle GPS
Config.UseVehicleGPS = false -- Set to true to use Vehicle GPS.
Config.LimitedVehicles = true -- Set to true to only allow Aircrafts, Boats, & Cars to use GPS.
Config.OnlyFrontSeats = true -- Set to true to only allow the front 2 seats to be able to see Radar if they used it.
