local Library = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()
local Window = Library:CreateWindow{
    Title = "Dino Hub",
    SubTitle = "| mm2 v0.1",
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
    if isFluentVisible then
        Window:Minimize(false)
    else
        Window:Minimize(true)
    end
end)

local MainTab = Window:AddTab({ Title = "Main", Icon = "" })

local AutoChestEnabled = false

MainTab:AddToggle("AutochestToggle", {
    Title = "Auto collect coin",
    Description = "báo owner nếu có bug",
    Callback = function(Value)
        AutoChestEnabled = Value
        if AutoChestEnabled then
            task.spawn(function()
                local player = game.Players.LocalPlayer

                local function teleportToPosition(targetPosition)
                    local character = player.Character or player.CharacterAdded:Wait()
                    local hrp = character:WaitForChild("HumanoidRootPart")
                    hrp.CFrame = CFrame.new(targetPosition)
                end

                while AutoChestEnabled do
                    local character = player.Character or player.CharacterAdded:Wait()
                    if not character or not character:FindFirstChild("HumanoidRootPart") then
                        task.wait(1)
                        continue 
                    end

                    local hrp = character:WaitForChild("HumanoidRootPart")
                    local workspaceObjects = game:GetService("Workspace"):GetDescendants()

                    local closestCoin = nil
                    local shortestDistance = math.huge

                    for _, object in pairs(workspaceObjects) do
                        if object.Name == "MainCoin" and object:IsA("BasePart") then
                            local distance = (hrp.Position - object.Position).Magnitude
                            if distance < shortestDistance then
                                shortestDistance = distance
                                closestCoin = object
                            end
                        end
                    end

                    if closestCoin then
                        teleportToPosition(closestCoin.Position)
                        task.wait(1.75)
                    else
                        character.Humanoid:MoveTo(hrp.Position)
                        task.wait(0.2)
                    end
                end
            end)
        end
    end
})

Fluent:Notify({
    Title = "Dino Hub",
    Content = "The script has been loaded.",
    Duration = 8
})

SaveManager:LoadAutoloadConfig()
