RegisterCommand("car", function(source, args)
    -- if vehicle is wrong it will spawn adder edit "adder" to change the car to replace
    local vehicleName = args[1] or "adder"

    -- check if the car actually exists
    if not IsModelInCdimage(vehicleName) or not IsModelAVehicle(vehicleName) then
        TriggerEvent("chat:addmessage", {
            args = {'~p~Check the Spawn code and try again: ' .. vehicleName}
        }}
        return
    end

    RequestModel(vehicleName)

    while not HasModelLoaded(vehicleName)
    wait(500)
   end

   local playPed = PlayPedId() 
   local pos = GetEntityCoords(playerPed) 


   local vehicle = CreateVehicle(vehicleName, pos.x, pos.y, pos.z, GetEntityHeading(playped),true, false)


   SetPedIntoVehicle(playerPed, vehicle, -1)

RegisterCommand('dv', function()
        local playerPed = PlayPedId()
        local vehicle = GetVehiclePedIsIn(playerPed, false)
        DeleteEntity(vehicle)
    end,false)