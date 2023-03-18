local stage = 0
local movingForward = false
local walkSet = "default"

local function RequestWalking(set)
    if HasAnimSetLoaded(set) then return end
    RequestAnimSet(set)
    while not HasAnimSetLoaded(set) do
        Wait(10)
    end
end

local function ResetAnimSet()
    local ped = PlayerPedId()
    if walkSet == "default" then
        ResetPedMovementClipset(ped, 0)
        ResetPedWeaponMovementClipset(ped)
        ResetPedStrafeClipset(ped)
    else
        ResetPedMovementClipset(ped, 0)
        ResetPedWeaponMovementClipset(ped)
        ResetPedStrafeClipset(ped)
        Wait(100)
        RequestWalking(walkSet)
        SetPedMovementClipset(ped, walkSet, 1)
        RemoveAnimSet(walkSet)
    end
end

RegisterNetEvent('crouchprone:client:SetWalkSet', function(clipset)
    walkSet = clipset
end)

CreateThread(function()
    local sleep
    while true do
        sleep = 1000
        local ped = PlayerPedId()
        if not IsPedSittingInAnyVehicle(ped) and not IsPedFalling(ped) and not IsPedSwimming(ped) and not IsPedSwimmingUnderWater(ped) then
            sleep = 0
            if IsControlJustReleased(2, 36) then
                stage += 1
                if stage == 2 then
                    -- Crouch stuff
                    ClearPedTasks(ped)
                    RequestWalking("move_ped_crouched")
                    SetPedMovementClipset(ped, "move_ped_crouched",1.0)
                    SetPedWeaponMovementClipset(ped, "move_ped_crouched")
                    SetPedStrafeClipset(ped, "move_ped_crouched_strafing")
                elseif stage > 2 then
                    stage = 0
                    ClearPedTasksImmediately(ped)
                    ResetAnimSet()
                    SetPedStealthMovement(ped, false, "DEFAULT_ACTION")
                end
            end

            if stage == 2 then
                if GetEntitySpeed(ped) > 1.0 then
                    SetPedWeaponMovementClipset(ped, "move_ped_crouched")
                    SetPedStrafeClipset(ped, "move_ped_crouched_strafing")
                elseif GetEntitySpeed(ped) < 1.0 and (GetFollowPedCamViewMode() == 4 or GetFollowVehicleCamViewMode() == 4) then
                    ResetPedWeaponMovementClipset(ped)
                    ResetPedStrafeClipset(ped)
                end

                if IsControlPressed(0, 34) then
                    SetEntityHeading(ped,GetEntityHeading(ped) + 1)
                end

                if IsControlPressed(0, 9) then
                    SetEntityHeading(ped,GetEntityHeading(ped) - 1)
                end
            end
        else
            stage = 0
        end
        Wait(sleep)
    end
end)
