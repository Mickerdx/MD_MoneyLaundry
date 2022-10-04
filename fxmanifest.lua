fx_version 'cerulean'
games { 'gta5' }

author 'Mickerd'
description 'Money Laundry'

shared_scripts {
     '@qb-core/shared/locale.lua',
     'locale/en.lua',
     'config.lua',
     'shared/shared.lua'
}

client_scripts {
     -- '@PolyZone/client.lua',
     -- '@PolyZone/BoxZone.lua',
     'client/client.lua',
     'client/lib/c_lib.lua',
     'client/menu/menu.lua',
     'client/target/target.lua',
}

server_script {
     'server/server.lua',
     'server/lib/s_lib.lua'
}

-- dependency 'oxmysql'

lua54 'yes'