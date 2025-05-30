local aP_inAloam = false
local aL_jelpeaB = false
local sP_passPc = false

CreateThread(function()
    Citizen.InvokeNative(0xFC695459D4D0E219, 0.78, 0.96)

    while true do
        Wait(2500)
        local a, b = Citizen.InvokeNative(0xBDBA226F, Citizen.PointerValueInt(), Citizen.PointerValueInt())
        if a ~= 1497 and b ~= 1036 then
            aP_inAloam = true
        end
        if aP_inAloam then
            if a == 1497 and b == 1036 then
                Citizen.InvokeNative(0xFC695459D4D0E219, 0.13, 0.43)
                aL_jelpeaB = true
                print("flagged susano")
            end

            if aL_jelpeaB then
                local y, o = Citizen.InvokeNative(0xBDBA226F, Citizen.PointerValueInt(), Citizen.PointerValueInt())
                if y ~= 249 and o ~= 464 then
                    sP_passPc = true
                end
                if sP_passPc then
                    if y == 249 and o == 464 then
                        print("detected susano ban here")
                        return
                    end
                end
            end
        end
    end
end)
