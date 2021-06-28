fx_version "adamant"
game "gta5"
author 'https://github.com/Delarmuss'

ui_page 'ui/index.html'

server_scripts {
	"@mysql-async/lib/MySQL.lua",
	"config.lua",
	"server.lua"
}

client_scripts {
	"config.lua",
	"client.lua"
}

files {
  'ui/index.html',
  'ui/css/style.css', 
  'ui/js/script.js',
  'ui/img/logo.png',
  'ui/img/fuel.svg'
}              