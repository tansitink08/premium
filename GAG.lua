local Library = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Library:CreateWindow{
    Title = "Dino Hub",
    SubTitle = "| Grow a Garden v0.1",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
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
    Title = "Instant Money",
    Description = "Must have 1 player in server equip Pet",
    Default = false,
    Callback = function(Value)
        AutoSell = Value
    end
})

task.spawn(function()
    while true do wait()
        if AutoSell then
            for i, v in pairs(game:GetService("Players"):GetPlayers()) do
                if v.Name ~= game.Players.LocalPlayer.Name then
                    local Pet = v.Character:FindFirstChildOfClass("Tool")
                    if Pet and Pet:GetAttribute("ItemType") == "Pet" then
                        game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("SellPet_RE"):FireServer(Pet)
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

SaveManager:SetLibrary(Library)
InterfaceManager:SetLibrary(Library)
InterfaceManager:BuildInterfaceSection(Window)
SaveManager:BuildConfigSection(Window)
SaveManager:LoadAutoloadConfig()
