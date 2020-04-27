RegisterCommand('whereami', function(source, args)
    local playerPed = PlayerPedId()

    local playerCoords = GetEntityCoords(playerPed, true)

    logger(playerCoords)

end, false)
