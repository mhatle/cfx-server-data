RegisterCommand('weapon', function(source, args)
    local weaponName = args[1] or 'nil'

    if not weaponName then
        return
    end

    local weaponHash = GetHashKey('weapon_' .. weaponName) -- Translate the name to the hash

    local type = GetWeapontypeModel(weaponHash)
    if type == 0 then
        TriggerEvent('chat:addMessage', {
            args = { 'Weapon ' .. weaponName .. ' is invalid.' }
        })
        return
    end

    logger('Player requested weapon ' .. weaponName)

    local playerPed = PlayerPedId() -- Get the payer ped

    GiveWeaponToPed(playerPed, weaponHash, 999, false, false)

end, false)
