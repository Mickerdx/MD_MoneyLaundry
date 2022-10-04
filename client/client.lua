

local washers = {
    {x=1136.3557, y=-992.1251, z=46.1131, h=99.2614},
    {x=1136.1129, y=-990.7504, z=46.1131, h=99.9603},
    {x=1135.9302, y=-989.4205, z=46.1131, h=100.9494},
    {x=1135.7697, y=-988.1153, z=46.1131, h=99.2674},
}

Citizen.CreateThread(function()

    for k,v in pairs(washers) do 
        exports['qb-target']:AddBoxZone("wash"..k, vector3(v.x, v.y, v.z), 0.8, 1.2, {
            name="wash"..k,
            heading=v.h,
            debugPoly=false,
            minZ=v.z - 1,
            maxZ=v.z + 1,
            }, {
                options = {
                    {
                        type = "client",
                        event = "laundry:openwasher",
                        icon = "fas fa-washer",
                        label = 'Laundromat',
                        id = k,
                        canInteract = function()
                            local c = false 
                            QBCore.Functions.TriggerCallback("laundry:isWashing", function(result)
                                c = result
                            end, k)
                            Wait(200)
                            if not c then return true else return false end 
                        end
                    },
                    {
                        type = "server",
                        event = "laundry:startwasher",
                        icon = "fas fa-hourglass-start",
                        label = "Start Laundromat",
                        id = k,
                        canInteract = function()
                            local c = false 
                            QBCore.Functions.TriggerCallback("laundry:isWashing", function(result)
                                c = result
                            end, k)
                            Wait(200)
                            if not c then return true else return false end
                        end
                    },
                    {
                        type = "server",
                        event = "laundry:collect",
                        icon = "fas fa-hand-holding-usd",
                        label = "Grab Money",
                        id = k,
                        canInteract = function()
                            local c = false
                            QBCore.Functions.TriggerCallback("laundry:isReady", function(result)
                                c = result
                            end, k)
                            Wait(200)
                            return c
                        end
                    },
                },
                distance = 3.0
        })
    end
    Wait(100)
end)

RegisterNetEvent("laundry:openwasher")
AddEventHandler("laundry:openwasher", function(data)
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "washer"..data.id, {maxweight = 1500000, slots = 10})
    TriggerEvent("inventory:client:SetCurrentStash", "washer"..data.id)
end)
