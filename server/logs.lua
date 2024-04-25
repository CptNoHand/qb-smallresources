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
    ['societies'] = {'https://discord.com/api/webhooks/945332933240193036/jLwEyPjoX0f8_rB9973DiUXoTzkjIC6R49OtvKBEr-F9oDHcThepJc2-XbcufEpfspgn'},
    ['vehicleshop'] = {'https://discord.com/api/webhooks/945332933240193036/jLwEyPjoX0f8_rB9973DiUXoTzkjIC6R49OtvKBEr-F9oDHcThepJc2-XbcufEpfspgn'},
    ['testcar'] = {'https://discord.com/api/webhooks/945332933240193036/jLwEyPjoX0f8_rB9973DiUXoTzkjIC6R49OtvKBEr-F9oDHcThepJc2-XbcufEpfspgn'},
}

local colors = { -- https://www.spycolor.com/
    ['default'] = 14423100,
    ['blue'] = 255,
    ['red'] = 16711680,
    ['green'] = 65280,
    ['white'] = 16777215,
    ['black'] = 0,
    ['orange'] = 16744192,
    ['yellow'] = 16776960,
    ['pink'] = 16761035,
    ['lightgreen'] = 65309,
}

local logQueue = {}

RegisterNetEvent('qb-log:server:CreateLog', function(name, title, color, message, tagEveryone, imageUrl)
    local postData = {}
    local tag = tagEveryone or false

    if Config.Logging == 'discord' then
        if not Webhooks[name] then
            print('Tried to call a log that isn\'t configured with the name of ' .. name)
            return
        end
        local webHook = Webhooks[name] ~= '' and Webhooks[name] or Webhooks['default']
        local embedData = {
            {
                ['title'] = title,
                ['color'] = colors[color] or colors['default'],
                ['footer'] = {
                    ['text'] = os.date('%c'),
                },
                ['description'] = message,
                ['author'] = {
                    ['name'] = 'QBCore Logs',
                    ['icon_url'] = 'https://raw.githubusercontent.com/GhzGarage/qb-media-kit/main/Display%20Pictures/Logo%20-%20Display%20Picture%20-%20Stylized%20-%20Red.png',
                },
                ['image'] = imageUrl and imageUrl ~= '' and { ['url'] = imageUrl } or nil,
            }
        }

        if not logQueue[name] then logQueue[name] = {} end
        logQueue[name][#logQueue[name] + 1] = { webhook = webHook, data = embedData }

        if #logQueue[name] >= 10 then
            if tag then
                postData = { username = 'QB Logs', content = '@everyone', embeds = {} }
            else
                postData = { username = 'QB Logs', embeds = {} }
            end
            for i = 1, #logQueue[name] do postData.embeds[#postData.embeds + 1] = logQueue[name][i].data[1] end
            PerformHttpRequest(logQueue[name][1].webhook, function() end, 'POST', json.encode(postData), { ['Content-Type'] = 'application/json' })
            logQueue[name] = {}
        end
    elseif Config.Logging == 'fivemanage' then
        local FiveManageAPIKey = GetConvar('FIVEMANAGE_LOGS_API_KEY', 'false')
        if FiveManageAPIKey == 'false' then
            print('You need to set the FiveManage API key in your server.cfg')
            return
        end
        local extraData = {
            level = tagEveryone and 'warn' or 'info', -- info, warn, error or debug
            message = title,                          -- any string
            metadata = {                              -- a table or object with any properties you want
                description = message,
                playerId = source,
                playerLicense = GetPlayerIdentifierByType(source, 'license'),
                playerDiscord = GetPlayerIdentifierByType(source, 'discord')
            },
            resource = GetInvokingResource(),
        }
        PerformHttpRequest('https://api.fivemanage.com/api/logs', function(statusCode, response, headers)
            -- Uncomment the following line to enable debugging
            -- print(statusCode, response, json.encode(headers))
        end, 'POST', json.encode(extraData), {
            ['Authorization'] = FiveManageAPIKey,
            ['Content-Type'] = 'application/json',
        })
    end
end)

Citizen.CreateThread(function()
    local timer = 0
    while true do
        Wait(1000)
        timer = timer + 1
        if timer >= 60 then -- If 60 seconds have passed, post the logs
            timer = 0
            for name, queue in pairs(logQueue) do
                if #queue > 0 then
                    local postData = { username = 'QB Logs', embeds = {} }
                    for i = 1, #queue do
                        postData.embeds[#postData.embeds + 1] = queue[i].data[1]
                    end
                    PerformHttpRequest(queue[1].webhook, function() end, 'POST', json.encode(postData), { ['Content-Type'] = 'application/json' })
                    logQueue[name] = {}
                end
            end
        end
    end
end)

QBCore.Commands.Add('testwebhook', 'Test Your Discord Webhook For Logs (God Only)', {}, false, function()
    TriggerEvent('qb-log:server:CreateLog', 'testwebhook', 'Test Webhook', 'default', 'Webhook setup successfully')
end, 'god')
