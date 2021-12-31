RegisterCommand('slide', function()

    local entity = PlayerPedId()
    local forceType = forceTypes.MaxForceRot2
     -- sends the entity straight up into the sky:
    local direction = vector3(50.0, 0.0, 0.0)
    local rotation = vector3(0.0, 0.0, 0.0)
    local boneIndex = 0
    local isDirectionRel = false
    local ignoreUpVec = true
    local isForceRel = true
    local p12 = false
    local p13 = true

    RequestAnimDict('anim@arena@celeb@flat@solo@no_props@')
    while not HasAnimDictLoaded('anim@arena@celeb@flat@solo@no_props@') do
        Wait(100)
    end

    TaskPlayAnim(entity, 'anim@arena@celeb@flat@solo@no_props@', 'slide_a_player_a', 1.8, 1.8, 2000, 0)

    -- local netScene5 = NetworkCreateSynchronisedScene(GetEntityCoords(entity), GetEntityRotation(entity), 2, true, false, 1065353216, 0, 1.0)
    -- NetworkAddPedToSynchronisedScene(entity, netScene5, 'anim@arena@celeb@flat@solo@no_props@', "slide_a_player_a", 0, 0, 5000, 16, 1148846080, 0)
    -- NetworkStartSynchronisedScene(netScene5)

    Wait(500)
    ApplyForceToEntity(
        entity,
        forceType,
        direction,
        rotation,
        boneIndex,
        isDirectionRel,
        ignoreUpVec,
        isForceRel,
        p12,
        p13
    )
    Wait(1500)
    ClearPedTasksImmediately(entity)

end)