RegisterNetEvent('healscript:feedPlayer')
AddEventHandler('healscript:feedPlayer', function()
    TriggerEvent('esx_status:set', 'hunger', 1000000)
    TriggerEvent('esx_status:set', 'thirst', 1000000)
end)

RegisterNetEvent('healscript:healPlayer')
AddEventHandler('healscript:healPlayer', function()
    local playerPed = PlayerPedId()
    SetEntityHealth(playerPed, GetEntityMaxHealth(playerPed))
end)

RegisterNetEvent('healscript:addArmour')
AddEventHandler('healscript:addArmour', function()
    local playerPed = PlayerPedId()
    SetPedArmour(playerPed, 100)
end)