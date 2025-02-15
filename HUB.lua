local function safeLoad(url)
    local success, errorMsg = pcall(function()
        loadstring(game:HttpGet(url))()
    end)
    
    if success then
        print("Chạy con cờ hó m script thành công!")
    else
        warn("executor m có vấn đề déo chạy đc: " .. errorMsg)
    end
end

local gameId = game.PlaceId

if gameId == 2753915549 or gameId == 4442272183 or gameId == 7449423635 then
    -- Blox Fruits
    print("Phát hiện blob kĩd, exec script....")
    safeLoad("https://raw.githubusercontent.com/tansitink08/premium/refs/heads/main/tanyeuem208.lua")
elseif gameId == 16732694052 then
    -- Fisch
    print("Phát hiện game câu cá xàm cặ, exec script....")
    safeLoad("https://raw.githubusercontent.com/tansitink08/premium/refs/heads/main/Fisch.lua")
else
    print("Jogo não reconhecido. Nenhum script foi executado.")
end
