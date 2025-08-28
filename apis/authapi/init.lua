local authapi = {}
function authapi.openModem()
    for _, sModem in ipairs(peripheral.getNames()) do
        if peripheral.getType(sModem) == "modem" then
            if not rednet.isOpen(sModem) then
                rednet.open(sModem)
                sOpenedModem = sModem
            end
            return true
        end
    end
    print("No modems found.")
    return false
end

function authapi.login(name, pass)
    local authapiconfig = require("/apis/authapi/authapi")
    local authcomputerid = authapiconfig.authComputer
    if not authapi.openModem() then
        return
    end
    rednet.send(authcomputerid, {
        ["auth"] = {
            ["name"] = name,
            ["pass"] = pass
        }
    })
    local id, message = rednet.receive(nil, 7)
    if id == authcomputerid or id == nil then
        if not id then
            return "timeout"
        else
            local dbmes = message["auth"]
            if dbmes["auth"] == true then
                return true
            else
                return false
            end
        end
    end
end
function authapi.server()
    local database = require("/apis/authapi/database")
    local usersdatabase = database["users"]
    rednet.open("top")
    local id, message
    while true do
    id, message = rednet.receive()
    if not(message == nil) then
        if type(message) == "table" then
            local mt = message["auth"]
            if not(usersdatabase[mt["name"]] == nil) then
                    rednet.send(id, {
                        ["auth"] = true
                })
                print("authorized "..mt["name"].." pass "..mt["pass"])
            end
        else
            print("i got a message that is not a table the message is "..message)
        end
    end
end
end

return authapi