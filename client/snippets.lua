CreateThread(function() -- TRAIN SPAWNS / SPAWN TRAINS
    SwitchTrainTrack(0, true)
    SwitchTrainTrack(3, true)
    N_0x21973bbf8d17edfa(0, 120000)
    SetRandomTrains(true)
end)

local ped = PlayerPedId()

CreateThread( function()
    local resetcounter = 0
    local jumpDisabled = false
      while true do 
    Wait(1)
        if jumpDisabled and resetcounter > 0 and IsPedJumping(ped) then    
            SetPedToRagdoll(ped, 900, 900, 2, 0, 0, 0)
            print("jump")
            resetcounter = 0
        end
        if not jumpDisabled and IsPedJumping(ped) then
            if math.random(2, 3) == 2 then
                jumpDisabled = true
                print("lol rekt")
            end
            resetcounter = 1000
            Wait(1000)
        end
        if resetcounter > 0 then
            resetcounter = resetcounter - 1
        else
            if jumpDisabled then
                resetcounter = 0
                jumpDisabled = false
            end
        end
    end
end)