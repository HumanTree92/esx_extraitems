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
Config.UseVehicleGPS = true -- Set to true to use Vehicle GPS.
Config.LimitedVehicles = true -- Set to true to only allow Aircrafts, Boats, & Cars to use GPS.
Config.OnlyFrontSeats = true -- Set to true to only allow the front 2 seats to be able to see Radar if they used it.

-- Weapon hashes

Config.weapons = {
	{weapon = "WEAPON_UNARMED" , hash = 2725352035},
	{weapon = "WEAPON_ANIMAL", hash = 4194021054},
	{weapon = "WEAPON_COUGAR", hash =  148160082},
	{weapon = "WEAPON_KNIFE", hash = 2578778090},
	{weapon = "WEAPON_NIGHTSTICK", hash = 1737195953},
	{weapon = "WEAPON_HAMMER", hash = 1317494643},
	{weapon = "WEAPON_BAT", hash = 2508868239},
	{weapon = "WEAPON_GOLFCLUB", hash = 1141786504},
	{weapon = "WEAPON_CROWBAR", hash = 2227010557},
	{weapon = "WEAPON_PISTOL", hash =  453432689},
	{weapon = "WEAPON_COMBATPISTOL", hash = 1593441988},
	{weapon = "WEAPON_APPISTOL", hash =  584646201},
	{weapon = "WEAPON_PISTOL50", hash = 2578377531},
	{weapon = "WEAPON_MICROSMG", hash =  324215364},
	{weapon = "WEAPON_SMG", hash =  736523883},
	{weapon = "WEAPON_ASSAULTSMG", hash = 4024951519},
	{weapon = "WEAPON_ASSAULTRIFLE", hash = 3220176749},
	{weapon = "WEAPON_CARBINERIFLE", hash = 2210333304},
	{weapon = "WEAPON_ADVANCEDRIFLE", hash = 2937143193},
	{weapon = "WEAPON_MG", hash = 2634544996},
	{weapon = "WEAPON_COMBATMG", hash = 2144741730},
	{weapon = "WEAPON_PUMPSHOTGUN", hash =  487013001},
	{weapon = "WEAPON_SAWNOFFSHOTGUN", hash = 2017895192},
	{weapon = "WEAPON_ASSAULTSHOTGUN", hash = 3800352039},
	{weapon = "WEAPON_BULLPUPSHOTGUN", hash = 2640438543},
	{weapon = "WEAPON_STUNGUN", hash =  911657153},
	{weapon = "WEAPON_SNIPERRIFLE", hash =  100416529},
	{weapon = "WEAPON_HEAVYSNIPER", hash =  205991906},
	{weapon = "WEAPON_REMOTESNIPER", hash =  856002082},
	{weapon = "WEAPON_GRENADELAUNCHER", hash = 2726580491},
	{weapon = "WEAPON_GRENADELAUNCHER_SMOKE", hash = 1305664598},
	{weapon = "WEAPON_RPG", hash = 2982836145},
	{weapon = "WEAPON_PASSENGER_ROCKET", hash =  375527679},
	{weapon = "WEAPON_AIRSTRIKE_ROCKET", hash =  324506233},
	{weapon = "WEAPON_STINGER", hash = 1752584910},
	{weapon = "WEAPON_MINIGUN", hash = 1119849093},
	{weapon = "WEAPON_GRENADE", hash = 2481070269},
	{weapon = "WEAPON_STICKYBOMB", hash =  741814745},
	{weapon = "WEAPON_SMOKEGRENADE", hash = 4256991824},
	{weapon = "WEAPON_BZGAS", hash = 2694266206},
	{weapon = "WEAPON_MOLOTOV", hash =  615608432},
	{weapon = "WEAPON_FIREEXTINGUISHER", hash =  101631238},
	{weapon = "WEAPON_PETROLCAN", hash =  883325847},
	{weapon = "WEAPON_DIGISCANNER", hash = 4256881901},
	{weapon = "WEAPON_BRIEFCASE", hash = 2294779575},
	{weapon = "WEAPON_BRIEFCASE_0", hash =  28811031},
	{weapon = "WEAPON_BALL", hash =  600439132},
	{weapon = "WEAPON_FLARE", hash = 1233104067},
	{weapon = "WEAPON_VEHICLE_ROCKET", hash = 3204302209},
	{weapon = "WEAPON_BARBED_WIRE", hash = 1223143800},
	{weapon = "WEAPON_DROWNING", hash = 4284007675},
	{weapon = "WEAPON_DROWNING_IN_VEHICLE", hash = 1936677264},
	{weapon = "WEAPON_BLEEDING", hash = 2339582971},
	{weapon = "WEAPON_ELECTRIC_FENCE", hash = 2461879995},
	{weapon = "WEAPON_EXPLOSION", hash = 539292904},
	{weapon = "WEAPON_FALL", hash = 3452007600},
	{weapon = "WEAPON_EXHAUSTION", hash =  910830060},
	{weapon = "WEAPON_HIT_BY_WATER_CANNON", hash = 3425972830},
	{weapon = "WEAPON_RAMMED_BY_CAR", hash =  133987706},
	{weapon = "WEAPON_RUN_OVER_BY_CAR", hash = 2741846334},
	{weapon = "WEAPON_HELI_CRASH", hash =  341774354},
	{weapon = "WEAPON_FIRE", hash = 3750660587}
	}