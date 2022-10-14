local QBCore = exports['qb-core']:GetCoreObject()
local vehicleClasses = {
  [0] = true,
  [1] = true,
  [2] = true,
  [3] = true,
  [4] = true,
  [5] = true,
  [6] = true,
  [7] = true,
  [8] = true,
  [9] = true,
  [10] = true,
  [11] = true,
  [12] = true,
  [13] = false,
  [14] = false,
  [15] = false,
  [16] = false,
  [17] = true,
  [18] = true,
  [19] = true,
  [20] = true,
  [21] = false
}
local limiting = false
local function GetVehicleSpeed() return GetEntitySpeed(GetVehicle()) end
local function IsDriver() return GetPedInVehicleSeat(GetVehiclePedIsIn(PlayerPedId(), false), -1) == PlayerPedId() end
local function TransformToMph(speed) return math.floor(speed * 2.2369 + 0.5) end -- Comment me for mp/h
local function SpeedLimiter()
    local ped = PlayerPedId()
    local Vehicle = GetVehiclePedIsIn(ped, false)
    local speed = GetEntitySpeed(Vehicle)
    if limiting then
        limiting = false
        QBCore.Functions.Notify("Speed limiter disabled", "primary")
        SetVehicleMaxSpeed(Vehicle, 0.0)
    else
        if TransformToMph(speed) >= 15 then
            limiting = true
            SetVehicleMaxSpeed(Vehicle, speed)
            QBCore.Functions.Notify("Speed limiter enabled: "..TransformToMph(speed)..' MPH', "primary")
            CreateThread(function()
                while limiting do
                    if not IsDriver() then
                        QBCore.Functions.Notify("Speed limiter disabled", "primary")
                        SetVehicleMaxSpeed(Vehicle, 0.0)
                        limiting = false
                        return
                    end
                    Wait(1000)
                end
            end)
        else
            QBCore.Functions.Notify("Speed limiter minimum: 15MPH", "primary")
        end
    end
end
RegisterCommand('speedlimiter', function()
    if IsDriver() then
      local veh = GetVehiclePedIsIn(PlayerPedId())
      local vehClass = GetVehicleClass(veh)
        if vehicleClasses[vehClass] then
            SpeedLimiter()
        else
            QBCore.Functions.Notify("Speed limiter unavailable", "error")
        end
    else
       QBCore.Functions.Notify("Speed limiter unavailable", "error")
    end
end, false)
RegisterKeyMapping('speedlimiter', 'Vehicle Speed Limiter', 'keyboard', 'Y')
