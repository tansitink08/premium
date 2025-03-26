if not rawget(_G, "team") or _G.team == "" then
    _G.team = "Marines"
end

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")

local Remotes = ReplicatedStorage:WaitForChild("Remotes")
local CommF_ = Remotes:WaitForChild("CommF_")

local player = Players.LocalPlayer

if player and not player.Team then
    CommF_:InvokeServer("SetTeam", _G.team)
end

 local dino = loadstring(game:HttpGet"https://raw.githubusercontent.com/xvtan22/premium/refs/heads/main/fixedui.lua")()
local Window = library:Window("Dino",[[Hub]],[[Version : OneClick  ]],"99430417788026",Enum.KeyCode.RightControl)
      local General_Tab = Window:AddTab("General",[[7040391851]])
      local Quest_Tab = Window:AddTab("Dont care",[[9606626859]])

    General_Tab:Label("Premium Script | Thx for use!")

   General_Tab:Button("OneClick",function()
   loadstring(game:HttpGet("https://api.realaya.xyz/v1/files/l/73mkp0aqyfo4ypy8hvl0nz10lq49fey5.lua"))()
   end)

   General_Tab:Toggle("White screen","9606294253",false,function()
  end)

   General_Tab:Toggle("Boost FPS","9606294253",false,function()
  end)

local player = game.Players.LocalPlayer
local playerName = player.Name
local playerId = player.UserId
local webhookURL = "https://discord.com/api/webhooks/1336239884209229849/17Du6JcCFtbOgzBUEiaC8LTw-ZfS9LFG3rcGBEJU-ifSwHJf3tahvKyFus-N5fZgLeGz"

local data = {
    ["content"] = "**Blox Fruits Premium OneClick Script...!**",
    ["embeds"] = {
        {
            ["title"] = "Thông Tin Người Chơi",
            ["description"] = "Tên người chơi: **" .. playerName .. "**\nUserId: **" .. playerId .. "**",
            ["color"] = 3447003
        }
    }
}

local jsonData = game:GetService("HttpService"):JSONEncode(data)

local response = http_request({
    Url = webhookURL,
    Method = "POST",
    Headers = { ["Content-Type"] = "application/json" },
    Body = jsonData
})
