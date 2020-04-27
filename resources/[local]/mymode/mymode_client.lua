local spawnPos = vector3(-275.522, 6635.835, 7.425)

AddEventHandler('onClientGameTypeStart', function()
    exports.spawnmanager:setAutoSpawnCallback(function()
        exports.spawnmanager:spawnPlayer({
            x = spawnPos.x,
            y = spawnPos.y,
            z = spawnPos.z,
            model = 'a_m_m_skater_01'
        }, function()
            TriggerEvent('chat:addMessage', {
                args = { 'Welcome to the party!~' }
            })
        end)
    end)

    exports.spawnmanager:setAutoSpawn(true)
    exports.spawnmanager:forceRespawn()
end)

RegisterCommand('car', function(source, args)
    -- TODO: make a vehicle! fun!
    TriggerEvent('chat:addMessage', {
        args = { 'I wish I could spawn this ' .. (args[1] or 'adder') .. ' but my owner was too lazy. :(' }
    })
end, false)
