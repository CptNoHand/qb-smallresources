local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateUseableItem("nvg", function(source)
    TriggerClientEvent("nvg:UseNVG", source)
end)