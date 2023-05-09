local QBCore = exports['qb-core']:GetCoreObject()

local First = vector3(0.0, 0.0, 0.0)
local Second = vector3(5.0, 5.0, 5.0)

local Vehicle = {
    Coords = nil,
    Vehicle = nil,
    Dimension = nil,
    IsInFront = false
}

local function DrawText3Ds(x, y, z, text)
	SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(true)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(x,y,z, 0)
    DrawText(0.0, 0.0)
    local factor = (string.len(text)) / 370
    DrawRect(0.0, 0.0+0.0125, 0.017+ factor, 0.03, 0, 0, 0, 75)
    ClearDrawOrigin()
end

local function loadAnimDict(dict)
    if HasAnimDictLoaded(dict) then return end
    RequestAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        Wait(10)
    end
end

CreateThread(function()
    while true do
        Wait(500)
        local vehicle = QBCore.Functions.GetClosestVehicle()
        if DoesEntityExist(vehicle) then
            local ped = PlayerPedId()
            local pos = GetEntityCoords(ped)
            local vehpos = GetEntityCoords(vehicle)
            local dimension = GetModelDimensions(GetEntityModel(vehicle))

            if #(pos - vehpos) < 3.0 and not IsPedInAnyVehicle(ped, false) then
                Vehicle.Coords = vehpos
                Vehicle.Dimensions = dimension
                Vehicle.Vehicle = vehicle
                if #(vehpos + GetEntityForwardVector(vehicle) - pos) >
                    #(vehpos + GetEntityForwardVector(vehicle) * -1 - pos) then
                    Vehicle.IsInFront = false
                else
                    Vehicle.IsInFront = true
                end
            else
                Vehicle = {
                    Coords = nil,
                    Vehicle = nil,
                    Dimensions = nil,
                    IsInFront = false
                }
            end
        end
    end
end)

CreateThread(function()
    while true do
        Wait(250)
        if Vehicle.Vehicle then
            local ped = PlayerPedId()
            local vehClass = GetVehicleClass(Vehicle.Vehicle)

            if IsVehicleSeatFree(Vehicle.Vehicle, -1) and GetVehicleEngineHealth(Vehicle.Vehicle) <= Config.DamageNeeded and GetVehicleEngineHealth(Vehicle.Vehicle) >= 0 then
                DrawText3Ds(Vehicle.Coords.x, Vehicle.Coords.y, Vehicle.Coords.z, 'Press [~g~SHIFT~w~] and [~g~E~w~] to push the vehicle')
            end

            if IsControlPressed(0, 21) and IsVehicleSeatFree(Vehicle.Vehicle, -1) and
                not IsEntityAttachedToEntity(ped, Vehicle.Vehicle) and IsControlJustPressed(0, 38) and
                GetVehicleEngineHealth(Vehicle.Vehicle) <= Config.DamageNeeded then
                NetworkRequestControlOfEntity(Vehicle.Vehicle)
                local timeout = 2000
                while not NetworkHasControlOfEntity(Vehicle.Vehicle) and timeout > 0 do
                    Wait(100)
                    timeout = timeout - 100
                end
                if timeout > 0 then
                    if Vehicle.IsInFront then
                        AttachEntityToEntity(ped, Vehicle.Vehicle, GetPedBoneIndex(ped, 6286), 0.0,
                            Vehicle.Dimensions.y * -1 + 0.1, Vehicle.Dimensions.z + 1.0, 0.0, 0.0, 180.0, false, false, false,
                            true, 0, true)
                    else
                        AttachEntityToEntity(ped, Vehicle.Vehicle, GetPedBoneIndex(ped, 6286), 0.0,
                            Vehicle.Dimensions.y - 0.3, Vehicle.Dimensions.z + 1.0, 0.0, 0.0, 0.0, false, false, false, true,
                            0, true)
                    end

                    loadAnimDict('missfinale_c2ig_11')
                    TaskPlayAnim(ped, 'missfinale_c2ig_11', 'pushcar_offcliff_m', 2.0, -8.0, -1, 35, 0, false, false, false)
                    Wait(200)

                    local currentVehicle = Vehicle.Vehicle
                    while true do
                        Wait(0)
                        if IsDisabledControlPressed(0, 34) then
                            TaskVehicleTempAction(ped, currentVehicle, 10) -- specify action type
                        end

                        if Vehicle.IsInFront then
                            SetVehicleForwardSpeed(currentVehicle, -1.0)
                        else
                            SetVehicleForwardSpeed(currentVehicle, 1.0)
                        end

                        if HasEntityCollidedWithAnything(currentVehicle) then
                            SetVehicleOnGroundProperly(currentVehicle)
                        end

                        if not IsDisabledControlPressed(0, 38) then
                            DetachEntity(ped, false, false)
                            StopAnimTask(ped, 'missfinale_c2ig_11', 'pushcar_offcliff_m', 2.0)
                            FreezeEntityPosition(currentVehicle, false) -- freeze the vehicle, not the player character
                            break
                        end
                    end
                end
            end
        end
        Wait(250) -- fixed variable name
    end
end)

