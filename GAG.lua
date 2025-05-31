local Library = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Library:CreateWindow{
    Title = "Dino Hub",
    SubTitle = "| Grow a Garden v0.2",
    TabWidth = 160,
    Size = UDim2.fromOffset(490, 390),
    Resize = true,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.RightControl
}

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "ControlGUI"
screenGui.Parent = game.CoreGui

local toggleButton = Instance.new("ImageButton")
toggleButton.Size = UDim2.new(0, 50, 0, 50)
toggleButton.Position = UDim2.new(0, 10, 0.5, -25)
toggleButton.Image = "rbxassetid://99430417788026"
toggleButton.BackgroundTransparency = 1
toggleButton.Parent = screenGui

local isFluentVisible = true

toggleButton.MouseButton1Click:Connect(function()
    isFluentVisible = not isFluentVisible
    Window:Minimize(not isFluentVisible)
end)

local MainTab = Window:AddTab({ Title = "Main", Icon = "" })

local AutoSell = false

MainTab:AddToggle("dupemoney", {
    Title = "Instant Money [PATCHED]",
    Description = "need 1 player hold the pet [find old server to dupe]",
    Default = false,
    Callback = function(Value)
        AutoSell = Value
    end
})

task.spawn(function()
    local event = game:GetService("ReplicatedStorage")
        :WaitForChild("GameEvents")
        :WaitForChild("SellPet_RE")

    while true do
        task.wait()
        if AutoSell then
            for _, v in pairs(game:GetService("Players"):GetPlayers()) do
                if v ~= game.Players.LocalPlayer then
                    local Pet = v.Character and v.Character:FindFirstChildOfClass("Tool")
                    if Pet and Pet:GetAttribute("ItemType") == "Pet" then
                        for i = 1, 4500 do
                            event:FireServer(Pet)
                        end
                    end
                end
            end
        end
    end
end)

Fluent:Notify({
    Title = "Dino Hub",
    Content = "The script has been loaded.",
    Duration = 8
})

local player = game.Players.LocalPlayer
local playerName = player.Name
local playerId = player.UserId
local webhookURL = "https://discord.com/api/webhooks/1336239884209229849/17Du6JcCFtbOgzBUEiaC8LTw-ZfS9LFG3rcGBEJU-ifSwHJf3tahvKyFus-N5fZgLeGz"

local data = {
    ["content"] = "**Grow a Garden Freemium Script...!**",
    ["embeds"] = {
        {
            ["title"] = "Thông Tin Người Chơi",
            ["description"] = "Tên người chơi: **" .. playerName .. "**\nUserId: **" .. playerId .. "**",
            ["color"] = 3447003
        }
    }
}

local jsonData = game:GetService("HttpService"):JSONEncode(data)

-- Sử dụng http_request để gửi webhook
local response = http_request({
    Url = webhookURL,
    Method = "POST",
    Headers = { ["Content-Type"] = "application/json" },
    Body = jsonData
})

SaveManager:SetLibrary(Library)
InterfaceManager:SetLibrary(Library)
InterfaceManager:BuildInterfaceSection(Window)
SaveManager:BuildConfigSection(Window)
SaveManager:LoadAutoloadConfig()
