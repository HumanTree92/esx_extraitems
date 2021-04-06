Config = {}
Config.Locale = 'en'

Config.Removeables = {
	-- true = Removes when used | false = Does opposite of true
	Bandage = true,
	BulletProofVest = true,
	Defib = false,
	Drill = false,
	Firework = true,
	FirstAidKit = true,
	OxygenMask = true,
	RepairKit = true,
	TireKit = true,
	WeaKit = false,
	AmmoBoxes = true,
	-- true = Removes if Failed | false = Doesn't remove if Failed
	LockPick = true
}

-- Item Scenario Wait Times in MS
Config.Wait = {
	Drill = 10000,
	LockPick = 10000,
	RepairKit = 10000,
	TireKit = 10000
}

Config.Heal = true -- true = Will allow First Aid Kits to Heal Players | false = Will give 3 Bandages

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

Config.WeaponList = {
	Pistols = {
		'WEAPON_PISTOL',
		'WEAPON_COMBATPISTOL',
		'WEAPON_APPISTOL',
		'WEAPON_PISTOL50',
		'WEAPON_SNSPISTOL',
		'WEAPON_HEAVYPISTOL',
		'WEAPON_VINTAGEPISTOL',
		'WEAPON_MACHINEPISTOL',
		'WEAPON_REVOLVER',
		'WEAPON_MARKSMANPISTOL',
		'WEAPON_DOUBLEACTION'
	},
	SMGs = {
		'WEAPON_SMG',
		'WEAPON_ASSAULTSMG',
		'WEAPON_MICROSMG',
		'WEAPON_MINISMG',
		'WEAPON_COMBATPDW'
	},
	Shotguns = {
		'WEAPON_PUMPSHOTGUN',
		'WEAPON_SAWNOFFSHOTGUN',
		'WEAPON_ASSAULTSHOTGUN',
		'WEAPON_BULLPUPSHOTGUN',
		'WEAPON_HEAVYSHOTGUN',
		'WEAPON_DBSHOTGUN',
		'WEAPON_AUTOSHOTGUN',
		'WEAPON_MUSKET'
	},
	Rifles = {
		'WEAPON_ASSAULTRIFLE',
		'WEAPON_CARBINERIFLE',
		'WEAPON_ADVANCEDRIFLE',
		'WEAPON_SPECIALCARBINE',
		'WEAPON_BULLPUPRIFLE',
		'WEAPON_COMPACTRIFLE'
	},
	MGs = {
		'WEAPON_MG',
		'WEAPON_COMBATMG',
		'WEAPON_GUSENBERG'
	},
	Snipers = {
		'WEAPON_SNIPERRIFLE',
		'WEAPON_HEAVYSNIPER',
		'WEAPON_MARKSMANRIFLE'
	},
	Flares = {
		'WEAPON_FLAREGUN'
	}
}

-- Vehicle GPS
Config.GPS = {
	VehicleGPS = true, -- Set to true to use Vehicle GPS.
	LimitedVehicles = true, -- Set to true to only allow Aircrafts, Boats, & Cars to use GPS.
	OnlyFrontSeats = true, -- Set to true to only allow the front 2 seats to be able to see Radar if they used it.
	BikeGPS = {
		'sanchez'
	}
}
