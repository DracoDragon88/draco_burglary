resource_manifest_version "44febabe-d386-4d18-afbe-5e627f4af937"

client_scripts {
	"client.lua",

	"gameplay/busted.lua",
	"gameplay/pickups.lua",

	"utils/ui.lua",
	"utils/functions.lua",

	"vRP/client.lua"
}

server_scripts {
	"@vrp/lib/utils.lua",
	"server.lua",

	"vRP/config.lua",
	"vRP/server.lua"
}

shared_script "houses.lua"