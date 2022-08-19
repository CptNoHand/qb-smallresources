local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateCallback('qb-afkkick:server:GetPermissions', function(source, cb)
    cb(QBCore.Functions.GetPermission(source))
end)
