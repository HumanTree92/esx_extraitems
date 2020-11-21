fx_version 'adamant'

game 'gta5'

description 'ESX Extra Items'

Author 'Human Tree92 | Velociti Entertainment'

version '1.0.0'

client_scripts {
	'@es_extended/locale.lua',
	'locales/en.lua',
	'config.lua',
	'client/main.lua',
	'client/menus.lua'
}

server_scripts {
	"@mysql-async/lib/MySQL.lua",
	'@es_extended/locale.lua',
	'locales/en.lua',
	'config.lua',
	'server/main.lua'
}

dependencies {
	'es_extended',
	'esx_shops'
}