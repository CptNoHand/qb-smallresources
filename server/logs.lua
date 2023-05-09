local QBCore = exports['qb-core']:GetCoreObject()

local Webhooks = {
    ['default'] = 'https://discord.com/api/webhooks/927339469114339329/vYIWeLcXIlBJl2RsETSuZHaBX-_ofGQdRm2y_QsOWEwSsZkdGZM4U65Ld89ZdaJArf80',
    ['testwebhook'] = 'https://discord.com/api/webhooks/927339469114339329/vYIWeLcXIlBJl2RsETSuZHaBX-_ofGQdRm2y_QsOWEwSsZkdGZM4U65Ld89ZdaJArf80',
    ['playermoney'] = 'https://discord.com/api/webhooks/927339649628799016/XGcT_J08hhkcdCYDZXIHQ5yRMZsLdajgJp6Ct82c36IkdwLJ90YWF1KrnIu9cBY4hsQj',
    ['playerinventory'] = 'https://discord.com/api/webhooks/1017929686631845958/wzxd7ikZTzTm6IKDo3FE5PqtMN82MMs22rh4tvmyLoIgAvWugSnrQXXTK7KzLnGRGvgu',
    ['robbing'] = 'https://discord.com/api/webhooks/927340216468000770/xjbzBJfSvu5p8HqhUMyAJL4w9MhFvZ_GIDDsLfh6XjnH3FujAuCQFcUYZS6Sn6SzYwTS',
    ['cuffing'] = 'https://discord.com/api/webhooks/927339469114339329/vYIWeLcXIlBJl2RsETSuZHaBX-_ofGQdRm2y_QsOWEwSsZkdGZM4U65Ld89ZdaJArf80',
    ['drop'] = 'https://discord.com/api/webhooks/927339892835495957/jvico9jlkh6MTjpNqCnj4l-cGDwsStZvMZtIYHm4GsZ8pF4yfjMvaTXd92WLfyRyiM2G',
    ['trunk'] = 'https://discord.com/api/webhooks/927339892835495957/jvico9jlkh6MTjpNqCnj4l-cGDwsStZvMZtIYHm4GsZ8pF4yfjMvaTXd92WLfyRyiM2G',
    ['stash'] = 'https://discord.com/api/webhooks/927339892835495957/jvico9jlkh6MTjpNqCnj4l-cGDwsStZvMZtIYHm4GsZ8pF4yfjMvaTXd92WLfyRyiM2G',
    ['glovebox'] = 'https://discord.com/api/webhooks/927339892835495957/jvico9jlkh6MTjpNqCnj4l-cGDwsStZvMZtIYHm4GsZ8pF4yfjMvaTXd92WLfyRyiM2G',
    ['banking'] = 'https://discord.com/api/webhooks/927339649628799016/XGcT_J08hhkcdCYDZXIHQ5yRMZsLdajgJp6Ct82c36IkdwLJ90YWF1KrnIu9cBY4hsQj',
    ['vehicleshop'] = 'https://discord.com/api/webhooks/927340020858232902/2dpp87zRt4J5qAqgkZhVavr1lWI009wbCxlgJZXy48kkw0IZJThpLWfpAgrZkgqKswdN',
    ['vehicleupgrades'] = 'https://discord.com/api/webhooks/911792741724340234/vWY2ivAQNwSaCG9AReZUFNelGnVzJBZ62bPc5Nuot1WgwmeLfR5VCXrdhfej6bK5mTqr',
    ['shops'] = 'https://discord.com/api/webhooks/911792741724340234/vWY2ivAQNwSaCG9AReZUFNelGnVzJBZ62bPc5Nuot1WgwmeLfR5VCXrdhfej6bK5mTqr',
    ['dealers'] = 'https://discord.com/api/webhooks/911792741724340234/vWY2ivAQNwSaCG9AReZUFNelGnVzJBZ62bPc5Nuot1WgwmeLfR5VCXrdhfej6bK5mTqr',
    ['storerobbery'] = 'https://discord.com/api/webhooks/927340216468000770/xjbzBJfSvu5p8HqhUMyAJL4w9MhFvZ_GIDDsLfh6XjnH3FujAuCQFcUYZS6Sn6SzYwTS',
    ['bankrobbery'] = 'https://discord.com/api/webhooks/927340216468000770/xjbzBJfSvu5p8HqhUMyAJL4w9MhFvZ_GIDDsLfh6XjnH3FujAuCQFcUYZS6Sn6SzYwTS',
    ['powerplants'] = 'https://discord.com/api/webhooks/927340216468000770/xjbzBJfSvu5p8HqhUMyAJL4w9MhFvZ_GIDDsLfh6XjnH3FujAuCQFcUYZS6Sn6SzYwTS',
    ['death'] = 'https://discord.com/api/webhooks/927339469114339329/vYIWeLcXIlBJl2RsETSuZHaBX-_ofGQdRm2y_QsOWEwSsZkdGZM4U65Ld89ZdaJArf80',
    ['joinleave'] = 'https://discord.com/api/webhooks/927339469114339329/vYIWeLcXIlBJl2RsETSuZHaBX-_ofGQdRm2y_QsOWEwSsZkdGZM4U65Ld89ZdaJArf80',
    ['ooc'] = 'https://discord.com/api/webhooks/927339469114339329/vYIWeLcXIlBJl2RsETSuZHaBX-_ofGQdRm2y_QsOWEwSsZkdGZM4U65Ld89ZdaJArf80',
    ['report'] = 'https://discord.com/api/webhooks/927339469114339329/vYIWeLcXIlBJl2RsETSuZHaBX-_ofGQdRm2y_QsOWEwSsZkdGZM4U65Ld89ZdaJArf80',
    ['me'] = 'https://discord.com/api/webhooks/927339469114339329/vYIWeLcXIlBJl2RsETSuZHaBX-_ofGQdRm2y_QsOWEwSsZkdGZM4U65Ld89ZdaJArf80',
    ['pmelding'] = 'https://discord.com/api/webhooks/927339469114339329/vYIWeLcXIlBJl2RsETSuZHaBX-_ofGQdRm2y_QsOWEwSsZkdGZM4U65Ld89ZdaJArf80',
    ['112'] = 'https://discord.com/api/webhooks/927340216468000770/xjbzBJfSvu5p8HqhUMyAJL4w9MhFvZ_GIDDsLfh6XjnH3FujAuCQFcUYZS6Sn6SzYwTS',
    ['bans'] = 'https://discord.com/api/webhooks/927339469114339329/vYIWeLcXIlBJl2RsETSuZHaBX-_ofGQdRm2y_QsOWEwSsZkdGZM4U65Ld89ZdaJArf80',
    ['anticheat'] = 'https://discord.com/api/webhooks/927339469114339329/vYIWeLcXIlBJl2RsETSuZHaBX-_ofGQdRm2y_QsOWEwSsZkdGZM4U65Ld89ZdaJArf80',
    ['weather'] = 'https://discord.com/api/webhooks/927339469114339329/vYIWeLcXIlBJl2RsETSuZHaBX-_ofGQdRm2y_QsOWEwSsZkdGZM4U65Ld89ZdaJArf80',
    ['moneysafes'] = 'https://discord.com/api/webhooks/927339649628799016/XGcT_J08hhkcdCYDZXIHQ5yRMZsLdajgJp6Ct82c36IkdwLJ90YWF1KrnIu9cBY4hsQj',
    ['bennys'] = 'https://discord.com/api/webhooks/911792741724340234/vWY2ivAQNwSaCG9AReZUFNelGnVzJBZ62bPc5Nuot1WgwmeLfR5VCXrdhfej6bK5mTqr',
    ['bossmenu'] = 'https://discord.com/api/webhooks/927339649628799016/XGcT_J08hhkcdCYDZXIHQ5yRMZsLdajgJp6Ct82c36IkdwLJ90YWF1KrnIu9cBY4hsQj',
    ['robbery'] = 'https://discord.com/api/webhooks/927340216468000770/xjbzBJfSvu5p8HqhUMyAJL4w9MhFvZ_GIDDsLfh6XjnH3FujAuCQFcUYZS6Sn6SzYwTS',
    ['casino'] = 'https://discord.com/api/webhooks/927339469114339329/vYIWeLcXIlBJl2RsETSuZHaBX-_ofGQdRm2y_QsOWEwSsZkdGZM4U65Ld89ZdaJArf80',
    ['traphouse'] = 'https://discord.com/api/webhooks/927339469114339329/vYIWeLcXIlBJl2RsETSuZHaBX-_ofGQdRm2y_QsOWEwSsZkdGZM4U65Ld89ZdaJArf80',
    ['911'] = 'https://discord.com/api/webhooks/927340216468000770/xjbzBJfSvu5p8HqhUMyAJL4w9MhFvZ_GIDDsLfh6XjnH3FujAuCQFcUYZS6Sn6SzYwTS',
    ['palert'] = 'https://discord.com/api/webhooks/927340216468000770/xjbzBJfSvu5p8HqhUMyAJL4w9MhFvZ_GIDDsLfh6XjnH3FujAuCQFcUYZS6Sn6SzYwTS',
    ['house'] = 'https://discord.com/api/webhooks/927339469114339329/vYIWeLcXIlBJl2RsETSuZHaBX-_ofGQdRm2y_QsOWEwSsZkdGZM4U65Ld89ZdaJArf80',
    ['qbjobs'] = '',
}

local Colors = { -- https://www.spycolor.com/
    ['default'] = 14423100,
    ['blue'] = 255,
    ['red'] = 16711680,
    ['green'] = 65280,
    ['white'] = 16777215,
    ['black'] = 0,
    ['orange'] = 16744192,
    ['yellow'] = 16776960,
    ['pink'] = 16761035,
    ["lightgreen"] = 65309,
}

RegisterNetEvent('qb-log:server:CreateLog', function(name, title, color, message, tagEveryone)
    local tag = tagEveryone or false
    local webHook = Webhooks[name] or Webhooks['default']
    local embedData = {
        {
            ['title'] = title,
            ['color'] = Colors[color] or Colors['default'],
            ['footer'] = {
                ['text'] = os.date('%c'),
            },
            ['description'] = message,
            ['author'] = {
                ['name'] = 'QBCore Logs',
                ['icon_url'] = 'https://media.discordapp.net/attachments/870094209783308299/870104331142189126/Logo_-_Display_Picture_-_Stylized_-_Red.png?width=670&height=670',
            },
        }
    }
    PerformHttpRequest(webHook, function() end, 'POST', json.encode({ username = 'QB Logs', embeds = embedData}), { ['Content-Type'] = 'application/json' })
    Citizen.Wait(100)
    if tag then
        PerformHttpRequest(webHook, function() end, 'POST', json.encode({ username = 'QB Logs', content = '@everyone'}), { ['Content-Type'] = 'application/json' })
    end
end)

QBCore.Commands.Add('testwebhook', 'Test Your Discord Webhook For Logs (God Only)', {}, false, function()
    TriggerEvent('qb-log:server:CreateLog', 'testwebhook', 'Test Webhook', 'default', 'Webhook setup successfully')
end, 'god')
