fx_version 'cerulean'
game 'gta5'
lua54 'yes'
description 'abl-moneyhud'
version 'nil'

shared_scripts {
    --'@abl-framework/shared/locale.lua',
 --   'locales/en.lua',
   -- 'locales/*.lua',
    'config.lua'
}

client_script 'client.lua'
server_script 'server.lua'

ui_page 'html/index.html'

files {
    'html/*',
    'html/index.html',
    'html/styles.css',
    'html/app.js',
}
