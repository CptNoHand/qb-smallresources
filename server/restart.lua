restarttimes = { '23:30', '11:30' }

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(20000)
		local time = os.date("%X"):sub(1, -4)
		for i=1, #restarttimes, 1 do
			if restarttimes[i] == time then
				TriggerEvent('InteractSound_SV:PlayOnAll', "siren2")
				TriggerClientEvent('chat:addMessage', -1, {
					template = '<div class="announcement"><i class="fa fa-bullhorn"></i> {0}<br>^0{1}</div>',
					args = { "Emergency Announcement!", "Attention Citizens! 🌊 a Hurricane is going to hit the city in 30 minutes!" }
				})
				Citizen.Wait(900000)
				TriggerEvent('InteractSound_SV:PlayOnAll', "siren2")
				TriggerClientEvent('chat:addMessage', -1, {
					template = '<div class="announcement"><i class="fa fa-bullhorn"></i> {0}<br>^0{1}</div>',
					args = { "Emergency Announcement!", "Attention Citizens! 🌊 a Hurricane is going to hit the city in 25 minutes! Seek shelter!" }
				})
				Citizen.Wait(300000)
				TriggerClientEvent('chat:addMessage', -1, {
					template = '<div class="announcement"><i class="fa fa-bullhorn"></i> {0}<br>^0{1}</div>',
					args = { "Emergency Announcement!", "Attention Citizens! 🌊 a Hurricane is going to hit the City any moment!" }
				})
				Citizen.Wait(300000)
				TriggerEvent('InteractSound_SV:PlayOnAll', "siren2")
				TriggerClientEvent('chat:addMessage', -1, {
					template = '<div class="announcement"><i class="fa fa-bullhorn"></i> {0}<br>^0{1}</div>',
					args = { "Emergency Announcement!", "Attention Citizens! 🌊 a Hurricane has hit the City. Seek Shelter!" }
				})
				Citizen.Wait(180000)
				TriggerEvent('InteractSound_SV:PlayOnAll', "siren1")
				TriggerClientEvent('chat:addMessage', -1, {
					template = '<div class="announcement"><i class="fa fa-bullhorn"></i> {0}<br>^0{1}</div>',
					args = { "Emergency Announcement!", "Attention Citizens! 🌊 a Hurricane has hit the City. Seek Shelter!" }
				})
				Citizen.Wait(60000)
				TriggerClientEvent('chat:addMessage', -1, {
					template = '<div class="announcement"><i class="fa fa-bullhorn"></i> {0}<br>^0{1}</div>',
					args = { "Emergency Announcement!", "Attention Citizens! 🌊 a Hurricane has hit the City in just a few minutes. Seek Shelter!" }
				})
				Citizen.Wait(30000)
				TriggerClientEvent('chat:addMessage', -1, {
					template = '<div class="announcement"><i class="fa fa-bullhorn"></i> {0}<br>^0{1}</div>',
					args = { "Emergency Announcement!", "Attention Citizens! 🌊 a Hurricane has hit the City. Only 30 seconds left!" }
				})
				Citizen.Wait(30000)
			end
		end
	end
end)

function restart()
	local xPlayers = QBCore.Functions.GetPlayers()
	for i=1, #xPlayers, 1 do
		DropPlayer(xPlayers[i], "Alle Roleplay Situationen sind beendet. Alles ist gespeichert. Die Insel startet neu und ist gleich wieder da!")
	end
	Citizen.Wait(10000)
	os.exit()
end

QBCore.Commands.Add("restartcity", "5 Minute City Restart", {}, false, function(source, args, user)
    Citizen.CreateThread(function()
		TriggerEvent('InteractSound_SV:PlayOnAll', "siren2")
		TriggerClientEvent('chat:addMessage', -1, {
			template = '<div class="announcement"><i class="fa fa-bullhorn"></i> {0}<br>^0{1}</div>',
			args = { "Emergency Announcement!", "Attention Citizens! 🌊 a Hurricane has hit the city! Seek Shelter!" }
		})
		Citizen.Wait(180000)
		TriggerEvent('InteractSound_SV:PlayOnAll', "siren1")
		TriggerClientEvent('chat:addMessage', -1, {
			template = '<div class="announcement"><i class="fa fa-bullhorn"></i> {0}<br>^0{1}</div>',
			args = { "Emergency Announcement!", "Attention Citizens! 🌊 a Hurricane has hit the city! Seek Shelter!" }
		})
		Citizen.Wait(60000)
		TriggerClientEvent('chat:addMessage', -1, {
			template = '<div class="announcement"><i class="fa fa-bullhorn"></i> {0}<br>^0{1}</div>',
			args = { "Emergency Announcement!", "Attention Citizens! 🌊 a Hurricane has hit the city! Seek Shelter!" }
		})
		Citizen.Wait(30000)
		TriggerClientEvent('chat:addMessage', -1, {
			template = '<div class="announcement"><i class="fa fa-bullhorn"></i> {0}<br>^0{1}</div>',
			args = { "Emergency Announcement!", "Attention Citizens! 🌊 a Hurricane has hit the city! Seek Shelter!" }
		})
		Citizen.Wait(30000)
		restart()
	end)
end, "god")

QBCore.Commands.Add("restartcitynow", "Restart the city instantly.", {}, false, function(source, args, user)
    Citizen.CreateThread(function()
		restart()
	end)
end, "god")