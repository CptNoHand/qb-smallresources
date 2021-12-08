local density = 1.0
local parkeddensity = 0.2
local cardensity = 0.2
CreateThread(function()
	while true do
		SetParkedVehicleDensityMultiplierThisFrame(parkeddensity)
		SetVehicleDensityMultiplierThisFrame(cardensity)
		SetRandomVehicleDensityMultiplierThisFrame(cardensity)
		SetPedDensityMultiplierThisFrame(density)
		SetScenarioPedDensityMultiplierThisFrame(density, density) -- Walking NPC Density
		Wait(0)
	end
end)
