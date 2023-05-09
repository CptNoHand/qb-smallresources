local QBCore = exports['qb-core']:GetCoreObject()
local VehicleNitrous = {}

RegisterNetEvent('tackle:server:TacklePlayer', function(playerId)
    TriggerClientEvent("tackle:client:GetTackled", playerId)
end)

QBCore.Functions.CreateCallback('nos:GetNosLoadedVehs', function(_, cb)
    cb(VehicleNitrous)
end)

QBCore.Commands.Add("id", "Check Your ID #", {}, false, function(source)
    TriggerClientEvent('QBCore:Notify', source,  "ID: "..source)
end)

QBCore.Functions.CreateUseableItem("harness", function(source, item)
    TriggerClientEvent('seatbelt:client:UseHarness', source, item)
end)

RegisterNetEvent('equip:harness', function(item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    if not Player then return end

    if not Player.PlayerData.items[item.slot].info.uses then
        Player.PlayerData.items[item.slot].info.uses = Config.HarnessUses - 1
        Player.Functions.SetInventory(Player.PlayerData.items)
    elseif Player.PlayerData.items[item.slot].info.uses == 1 then
        TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items['harness'], "remove")
        Player.Functions.RemoveItem('harness', 1)
    else
        Player.PlayerData.items[item.slot].info.uses -= 1
        Player.Functions.SetInventory(Player.PlayerData.items)
    end
end)

RegisterNetEvent('seatbelt:DoHarnessDamage', function(hp, data)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    if not Player then return end

    if hp == 0 then
        Player.Functions.RemoveItem('harness', 1, data.slot)
    else
        Player.PlayerData.items[data.slot].info.uses -= 1
        Player.Functions.SetInventory(Player.PlayerData.items)
    end
end)

RegisterNetEvent('qb-carwash:server:washCar', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    if not Player then return end

    if Player.Functions.RemoveMoney('cash', Config.DefaultPrice, "car-washed") then
        TriggerClientEvent('qb-carwash:client:washCar', src)
    elseif Player.Functions.RemoveMoney('bank', Config.DefaultPrice, "car-washed") then
        TriggerClientEvent('qb-carwash:client:washCar', src)
    else
        TriggerClientEvent('QBCore:Notify', src, Lang:t("error.dont_have_enough_money"), 'error')
    end
end)

QBCore.Functions.CreateCallback('smallresources:server:GetCurrentPlayers', function(_, cb)
    local TotalPlayers = 0
    local players = QBCore.Functions.GetPlayers()
    for _ in pairs(players) do
        TotalPlayers += 1
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