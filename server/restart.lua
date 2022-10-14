local QBCore = exports['qb-core']:GetCoreObject()

function restart()
	local xPlayers = QBCore.Functions.GetPlayers()
	for i=1, #xPlayers, 1 do
		DropPlayer(xPlayers[i], "Alle Roleplay Situationen sind beendet. Alles ist gespeichert. Die Insel startet neu und ist gleich wieder da!")
	end
	Citizen.Wait(10000)
	os.exit()
end

QBCore.Commands.Add("restartcitynow", "Restart the city instantly.", {}, false, function(source, args, user)
    Citizen.CreateThread(function()
		restart()
	end)
end, "god")