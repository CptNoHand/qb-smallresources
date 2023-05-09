local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent("nvg:UseNVG", function()
    nvg = not nvg
    QBCore.Functions.Progressbar("remove_gear", "Using NVGs", 500, false, true, {}, {}, {}, {}, function()
        if nvg then
            SetNightvision(true)
            TriggerServerEvent("InteractSound_SV:PlayOnSource", "nvg", 0.25)
            SetPedPropIndex(PlayerPedId(), 0, 117, 0, true)
        else
            SetNightvision(false)
            SetPedPropIndex(PlayerPedId(), 0, 116, 0, true)
        end
    end)
end)