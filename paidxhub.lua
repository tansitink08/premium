local player = game.Players.LocalPlayer

local premiumKeys = {
    "DINO-PJK64-F5Z8-2020-V4I24-88PK8",
    "DINO-3D96J-FKJJ-L98W-74233-KDV88"
}

local function isPremiumKey(inputKey)
    for _, key in ipairs(premiumKeys) do
        if inputKey == key then
            return true
        end
    end
    return false
end

if _G.mode == "Marumb08" then
    if not _G.key or _G.key == "" or not isPremiumKey(_G.key) then
        local notifi = "Premium Only | _G.key = \"put ur key\""
        local message = string.format("\nPremium Announcement\n %s", notifi)
        player:Kick(message)
    else
        loadstring(game:HttpGet("https://raw.githubusercontent.com/tansitink08/premium/refs/heads/main/paidmobile.lua"))()
    end
    return 
end  

if _G.mode == "Marupc02" then
    if not _G.key or _G.key == "" or not isPremiumKey(_G.key) then
        local notifi = "Premium Only | _G.key = \"put ur key\""
        local message = string.format("\nPremium Announcement\n %s", notifi)
        player:Kick(message)
    else
        loadstring(game:HttpGet("https://raw.githubusercontent.com/tansitink08/premium/refs/heads/main/paidpc.lua"))()
    end
    return 
end  
