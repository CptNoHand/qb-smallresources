local VehicleNitrous = {}

RegisterServerEvent('tackle:server:TacklePlayer')
AddEventHandler('tackle:server:TacklePlayer', function(playerId)
    TriggerClientEvent("tackle:client:GetTackled", playerId)
end)

QBCore.Functions.CreateCallback('nos:GetNosLoadedVehs', function(source, cb)
    cb(VehicleNitrous)
end)

QBCore.Commands.Add("id", "Check Your ID #", {}, false, function(source, args)
    TriggerClientEvent('QBCore:Notify', source,  "ID: "..source)
end)

QBCore.Functions.CreateUseableItem("harness", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    TriggerClientEvent('seatbelt:client:UseHarness', source, item)
end)

RegisterServerEvent('equip:harness')
AddEventHandler('equip:harness', function(item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.PlayerData.items[item.slot].info.uses - 1 == 0 then
        TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['harness'], "remove")
        Player.Functions.RemoveItem('harness', 1)
    else
        Player.PlayerData.items[item.slot].info.uses = Player.PlayerData.items[item.slot].info.uses - 1
        Player.Functions.SetInventory(Player.PlayerData.items)
    end
end)

RegisterServerEvent('seatbelt:DoHarnessDamage')
AddEventHandler('seatbelt:DoHarnessDamage', function(hp, data)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    if hp == 0 then
        Player.Functions.RemoveItem('harness', 1, data.slot)
    else
        Player.PlayerData.items[data.slot].info.uses = Player.PlayerData.items[data.slot].info.uses - 1
        Player.Functions.SetInventory(Player.PlayerData.items)
    end
end)

RegisterServerEvent('qb-carwash:server:washCar')
AddEventHandler('qb-carwash:server:washCar', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    if Player.Functions.RemoveMoney('cash', Config.DefaultPrice, "car-washed") then
        TriggerClientEvent('qb-carwash:client:washCar', src)
    elseif Player.Functions.RemoveMoney('bank', Config.DefaultPrice, "car-washed") then
        TriggerClientEvent('qb-carwash:client:washCar', src)
    else
        TriggerClientEvent('QBCore:Notify', src, 'You dont have enough money..', 'error')
    end
end)

QBCore.Functions.CreateCallback('smallresources:server:GetCurrentPlayers', function(source, cb)
    local TotalPlayers = 0
    for k, v in pairs(QBCore.Functions.GetPlayers()) do
        TotalPlayers = TotalPlayers + 1
    end
    cb(TotalPlayers)
end)

QBCore.Commands.Add('transferveh', 'Transfer Vehicle', {{name = 'id', help = 'Player ID'}}, true, function(source, args)
    local src = source
    local targetId = tonumber(args[1])
    local ped = GetPlayerPed(src)
    local target = GetPlayerPed(targetId)
    local sendingPlayer = QBCore.Functions.GetPlayer(src)
    local targetPlayer = QBCore.Functions.GetPlayer(targetId)
    local vehicle = GetVehiclePedIsIn(ped, false)
    local plate = GetVehicleNumberPlateText(vehicle)
    if targetId ~= nil then
        if vehicle ~= 0 then
            if target ~= 0 then
                local pedCoords = GetEntityCoords(ped)
                local targetCoords = GetEntityCoords(target)
                if #(pedCoords - targetCoords) < 5 then
                    local result = exports.oxmysql:scalarSync('SELECT citizenid from player_vehicles WHERE plate = ?', {plate})
                    if result == sendingPlayer.PlayerData.citizenid then
                        exports.oxmysql:execute('UPDATE player_vehicles SET citizenid = ? WHERE plate =?', {targetPlayer.PlayerData.citizenid, plate})
                        TriggerClientEvent('QBCore:Notify', src, 'You Transferred Vehicle With Plate ' ..plate, 'success')
                        TriggerClientEvent('QBCore:Notify', targetId, 'You Received Vehicle With Plate ' ..plate, 'success')
                    else
                        TriggerClientEvent('QBCore:Notify', src, 'You Don\'t Own This Vehicle', 'error')
                    end
                else
                    TriggerClientEvent('QBCore:Notify', src, 'Player Too Far Away', 'error')
                end
            else
                TriggerClientEvent('QBCore:Notify', src, 'Player Not Online', 'error')
            end
        else
            TriggerClientEvent('QBCore:Notify', src, 'You Are Not In A Vehicle', 'error')
        end
    else
        TriggerClientEvent('QBCore:Notify', src, 'Must Specify ID', 'error')
    end
end, 'user')