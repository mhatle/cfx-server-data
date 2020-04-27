RegisterCommand('whereami', function(source, args)
    local playerPed = PlayerPedId()

    local playerCoords = GetEntityCoords(playerPed, true)

    TriggerEvent('chat:addMessage', {
        args = { 'Coords: ' .. playerCoords }
    })
end, false)
