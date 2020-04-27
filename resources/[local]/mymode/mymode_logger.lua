--Implement a common logging function
--Arguments: Message to log, and the declared type of the message
--(currently no specific format for either)
function logger(message, type)
    if not message then
        message = "none"
    end

    if not type then
        type = 'info'
    end

   local info = debug.getinfo(2)
   local source = info.source or "unknown"
   local line = info.currentline or "unknown"

    TriggerEvent('chat:addMessage', {
        args = { source .. ':' .. line .. ', '.. type .. ', ' .. message }
    })

end

RegisterCommand('log', function(source, args)

    logger(args[1])

end, false)
