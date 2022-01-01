local QBCore = exports['qb-core']:GetCoreObject()

local Webhooks = {
    ['default'] = 'https://discord.com/api/webhooks/911792288961822820/n9RA-QzpKYHjRjfgJzv8u7Goc10XYR4OY5MQ-UKnEcAMbeewBGhZQmF0CpazJPsAAKIB',
    ['testwebhook'] = 'https://discord.com/api/webhooks/911792288961822820/n9RA-QzpKYHjRjfgJzv8u7Goc10XYR4OY5MQ-UKnEcAMbeewBGhZQmF0CpazJPsAAKIB',
    ['playermoney'] = 'https://discord.com/api/webhooks/911792495057326100/7QXXYnwHv0TkXajaBGEx9AoqolN-xBI_TEy6T9n6AhOLdZELnheeaW-ijipzS6U9tYmo',
    ['playerinventory'] = 'https://discord.com/api/webhooks/911792561486700575/QUqwtX6qRgDthrCDLc5cQBEoWzxivj8yY36Zz-z2btGSJKjbKtC3ukL_oOK7YS4pKF5u',
    ['robbing'] = 'https://discord.com/api/webhooks/911792986889797703/We8Pd_lwkZyFh8Nk0Rmx6Oa1YL5kWxsXJvYDc8t3Km5o21JN79imu8H4g8wKv6__aJ1J',
    ['cuffing'] = 'https://discord.com/api/webhooks/911792288961822820/n9RA-QzpKYHjRjfgJzv8u7Goc10XYR4OY5MQ-UKnEcAMbeewBGhZQmF0CpazJPsAAKIB',
    ['drop'] = 'https://discord.com/api/webhooks/911792633649725481/_nIVE5LF1nuk5xAokSmBZmR-rJtVOnr3nEfb0Q9KF4FbNt8EUTPBjxQ3VVtgppkL4t0m',
    ['trunk'] = 'https://discord.com/api/webhooks/911792633649725481/_nIVE5LF1nuk5xAokSmBZmR-rJtVOnr3nEfb0Q9KF4FbNt8EUTPBjxQ3VVtgppkL4t0m',
    ['stash'] = 'https://discord.com/api/webhooks/911792633649725481/_nIVE5LF1nuk5xAokSmBZmR-rJtVOnr3nEfb0Q9KF4FbNt8EUTPBjxQ3VVtgppkL4t0m',
    ['glovebox'] = 'https://discord.com/api/webhooks/911792633649725481/_nIVE5LF1nuk5xAokSmBZmR-rJtVOnr3nEfb0Q9KF4FbNt8EUTPBjxQ3VVtgppkL4t0m',
    ['banking'] = 'https://discord.com/api/webhooks/911792495057326100/7QXXYnwHv0TkXajaBGEx9AoqolN-xBI_TEy6T9n6AhOLdZELnheeaW-ijipzS6U9tYmo',
    ['vehicleshop'] = 'https://discord.com/api/webhooks/911792741724340234/vWY2ivAQNwSaCG9AReZUFNelGnVzJBZ62bPc5Nuot1WgwmeLfR5VCXrdhfej6bK5mTqr',
    ['vehicleupgrades'] = 'https://discord.com/api/webhooks/911792741724340234/vWY2ivAQNwSaCG9AReZUFNelGnVzJBZ62bPc5Nuot1WgwmeLfR5VCXrdhfej6bK5mTqr',
    ['shops'] = 'https://discord.com/api/webhooks/911792741724340234/vWY2ivAQNwSaCG9AReZUFNelGnVzJBZ62bPc5Nuot1WgwmeLfR5VCXrdhfej6bK5mTqr',
    ['dealers'] = 'https://discord.com/api/webhooks/911792741724340234/vWY2ivAQNwSaCG9AReZUFNelGnVzJBZ62bPc5Nuot1WgwmeLfR5VCXrdhfej6bK5mTqr',
    ['storerobbery'] = 'https://discord.com/api/webhooks/911792986889797703/We8Pd_lwkZyFh8Nk0Rmx6Oa1YL5kWxsXJvYDc8t3Km5o21JN79imu8H4g8wKv6__aJ1J',
    ['bankrobbery'] = 'https://discord.com/api/webhooks/911792986889797703/We8Pd_lwkZyFh8Nk0Rmx6Oa1YL5kWxsXJvYDc8t3Km5o21JN79imu8H4g8wKv6__aJ1J',
    ['powerplants'] = 'https://discord.com/api/webhooks/911792986889797703/We8Pd_lwkZyFh8Nk0Rmx6Oa1YL5kWxsXJvYDc8t3Km5o21JN79imu8H4g8wKv6__aJ1J',
    ['death'] = 'https://discord.com/api/webhooks/911792288961822820/n9RA-QzpKYHjRjfgJzv8u7Goc10XYR4OY5MQ-UKnEcAMbeewBGhZQmF0CpazJPsAAKIB',
    ['joinleave'] = 'https://discord.com/api/webhooks/911792288961822820/n9RA-QzpKYHjRjfgJzv8u7Goc10XYR4OY5MQ-UKnEcAMbeewBGhZQmF0CpazJPsAAKIB',
    ['ooc'] = 'https://discord.com/api/webhooks/911792288961822820/n9RA-QzpKYHjRjfgJzv8u7Goc10XYR4OY5MQ-UKnEcAMbeewBGhZQmF0CpazJPsAAKIB',
    ['report'] = 'https://discord.com/api/webhooks/911792288961822820/n9RA-QzpKYHjRjfgJzv8u7Goc10XYR4OY5MQ-UKnEcAMbeewBGhZQmF0CpazJPsAAKIB',
    ['me'] = 'https://discord.com/api/webhooks/911792288961822820/n9RA-QzpKYHjRjfgJzv8u7Goc10XYR4OY5MQ-UKnEcAMbeewBGhZQmF0CpazJPsAAKIB',
    ['pmelding'] = 'https://discord.com/api/webhooks/911792288961822820/n9RA-QzpKYHjRjfgJzv8u7Goc10XYR4OY5MQ-UKnEcAMbeewBGhZQmF0CpazJPsAAKIB',
    ['112'] = 'https://discord.com/api/webhooks/911792986889797703/We8Pd_lwkZyFh8Nk0Rmx6Oa1YL5kWxsXJvYDc8t3Km5o21JN79imu8H4g8wKv6__aJ1J',
    ['bans'] = 'https://discord.com/api/webhooks/911792288961822820/n9RA-QzpKYHjRjfgJzv8u7Goc10XYR4OY5MQ-UKnEcAMbeewBGhZQmF0CpazJPsAAKIB',
    ['anticheat'] = 'https://discord.com/api/webhooks/911792288961822820/n9RA-QzpKYHjRjfgJzv8u7Goc10XYR4OY5MQ-UKnEcAMbeewBGhZQmF0CpazJPsAAKIB',
    ['weather'] = 'https://discord.com/api/webhooks/911792288961822820/n9RA-QzpKYHjRjfgJzv8u7Goc10XYR4OY5MQ-UKnEcAMbeewBGhZQmF0CpazJPsAAKIB',
    ['moneysafes'] = 'https://discord.com/api/webhooks/911792495057326100/7QXXYnwHv0TkXajaBGEx9AoqolN-xBI_TEy6T9n6AhOLdZELnheeaW-ijipzS6U9tYmo',
    ['bennys'] = 'https://discord.com/api/webhooks/911792741724340234/vWY2ivAQNwSaCG9AReZUFNelGnVzJBZ62bPc5Nuot1WgwmeLfR5VCXrdhfej6bK5mTqr',
    ['bossmenu'] = 'https://discord.com/api/webhooks/911792495057326100/7QXXYnwHv0TkXajaBGEx9AoqolN-xBI_TEy6T9n6AhOLdZELnheeaW-ijipzS6U9tYmo',
    ['robbery'] = 'https://discord.com/api/webhooks/911792986889797703/We8Pd_lwkZyFh8Nk0Rmx6Oa1YL5kWxsXJvYDc8t3Km5o21JN79imu8H4g8wKv6__aJ1J',
    ['casino'] = 'https://discord.com/api/webhooks/911792288961822820/n9RA-QzpKYHjRjfgJzv8u7Goc10XYR4OY5MQ-UKnEcAMbeewBGhZQmF0CpazJPsAAKIB',
    ['traphouse'] = 'https://discord.com/api/webhooks/911792288961822820/n9RA-QzpKYHjRjfgJzv8u7Goc10XYR4OY5MQ-UKnEcAMbeewBGhZQmF0CpazJPsAAKIB',
    ['911'] = 'https://discord.com/api/webhooks/911792986889797703/We8Pd_lwkZyFh8Nk0Rmx6Oa1YL5kWxsXJvYDc8t3Km5o21JN79imu8H4g8wKv6__aJ1J',
    ['palert'] = 'https://discord.com/api/webhooks/911792986889797703/We8Pd_lwkZyFh8Nk0Rmx6Oa1YL5kWxsXJvYDc8t3Km5o21JN79imu8H4g8wKv6__aJ1J',
    ['house'] = 'https://discord.com/api/webhooks/911792288961822820/n9RA-QzpKYHjRjfgJzv8u7Goc10XYR4OY5MQ-UKnEcAMbeewBGhZQmF0CpazJPsAAKIB',
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
    PerformHttpRequest(webHook, function(err, text, headers) end, 'POST', json.encode({ username = 'QB Logs', embeds = embedData}), { ['Content-Type'] = 'application/json' })
    Citizen.Wait(100)
    if tag then
        PerformHttpRequest(webHook, function(err, text, headers) end, 'POST', json.encode({ username = 'QB Logs', content = '@everyone'}), { ['Content-Type'] = 'application/json' })
    end
end)

QBCore.Commands.Add('testwebhook', 'Test Your Discord Webhook For Logs (God Only)', {}, false, function(source, args)
    TriggerEvent('qb-log:server:CreateLog', 'testwebhook', 'Test Webhook', 'default', 'Webhook setup successfully')
end, 'god')
