RegisterCommand('ajthrow', function()
    local animDict = "switch@trevor@bridge"
    local ped = PlayerPedId()
    local throw = "mp_m_bogdangoon"
    local x,y,z = table.unpack(GetEntityCoords(ped))

    coords = GetEntityCoords(ped)

    RequestAnimDict(animDict)
    RequestModel(throw)

    while not HasAnimDictLoaded(animDict) or not HasModelLoaded(throw) do
        Citizen.Wait(100)
    end

    local targetPosition, targetRotation = vec3(coords), vec3(0.0, 0.0, 20.0)

    local animPos, targetHeading = GetAnimInitialOffsetPosition(animDict, "throw_exit_trevor", targetPosition, targetRotation, 0, 2), 52.8159
    TaskGoStraightToCoord(ped, animPos, 0.025, 5000, targetHeading, 0.05)

    Citizen.Wait(1000)

    FreezeEntityPosition(ped, true)

    local netScene = NetworkCreateSynchronisedScene(targetPosition, targetRotation, 2, false, false, 1065353216, 0, 1065353216)
    local thrown = CreatePed(26, GetHashKey(throw), targetPosition, false, true)
    NetworkAddPedToSynchronisedScene(ped, netScene, animDict, "throw_exit_trevor", 1.0, -4.0, 157, 92, 1148846080, 0)
    NetworkAddPedToSynchronisedScene(thrown, netScene, animDict, "throw_exit_victim", 1.0, -4.0, 157, 92, 1148846080, 0)
    NetworkForceLocalUseOfSyncedSceneCamera(netScene, "switch@trevor@bridge", "throw_exit_cam")
    NetworkStartSynchronisedScene(netScene)
    Citizen.Wait(7000)
    NetworkStopSynchronisedScene(netScene)
    FreezeEntityPosition(ped, false)
    RemoveAnimDict(animDict)
end)