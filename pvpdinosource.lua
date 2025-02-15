local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer
local Camera = game:GetService("Workspace").CurrentCamera
local UserInputService = game:GetService("UserInputService")

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "DinoHubGUI"
screenGui.Parent = Players.LocalPlayer:WaitForChild("PlayerGui")

local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 300, 0, 150)
mainFrame.Position = UDim2.new(0.5, -150, 0, 0)
mainFrame.AnchorPoint = Vector2.new(0.5, 0)
mainFrame.BackgroundTransparency = 1
mainFrame.BorderSizePixel = 0
mainFrame.Parent = screenGui

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 50)
title.Position = UDim2.new(0, 0, 0, 0)
title.BackgroundTransparency = 1
title.Text = "Dino Hub | discord.gg/67tG8nmaQX"
title.Font = Enum.Font.SourceSansBold
title.TextColor3 = Color3.new(1, 1, 1)
title.TextSize = 20
title.TextWrapped = true
title.Parent = mainFrame

local lockButton = Instance.new("TextButton")
lockButton.Parent = mainFrame
lockButton.Size = UDim2.new(0, 200, 0, 50)
lockButton.Position = UDim2.new(0.5, -100, 0, 60)
lockButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
lockButton.TextColor3 = Color3.new(1, 1, 1)
lockButton.Font = Enum.Font.SourceSansBold
lockButton.TextSize = 20
lockButton.Text = "Dino LockCam OFF"

local isLockCamActive = false
local lockCamConnection = nil
local currentTargetPlayer = nil

local function findClosestPlayer()
    local closestPlayer = nil
    local shortestDistance = math.huge
    for _, player in pairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local distance = (LocalPlayer.Character.HumanoidRootPart.Position - player.Character.HumanoidRootPart.Position).Magnitude
            if distance < shortestDistance then
                closestPlayer = player
                shortestDistance = distance
            end
        end
    end
    return closestPlayer
end

local function lockCameraToPlayer()
    lockCamConnection = RunService.RenderStepped:Connect(function()
        if currentTargetPlayer and currentTargetPlayer.Character and currentTargetPlayer.Character:FindFirstChild("HumanoidRootPart") then
            local targetPosition = currentTargetPlayer.Character.HumanoidRootPart.Position
            local targetLookAt = targetPosition + Vector3.new(0, 0, 1)
            Camera.CFrame = CFrame.new(Camera.CFrame.Position, targetLookAt)
        end
    end)
end

local function unlockCamera()
    if lockCamConnection then
        lockCamConnection:Disconnect()
        lockCamConnection = nil
        currentTargetPlayer = nil
    end
end

local function toggleLockCam()
    if isLockCamActive then
        isLockCamActive = false
        lockButton.Text = "Dino LockCam OFF"
        unlockCamera()
    else
        isLockCamActive = true
        lockButton.Text = "Dino LockCam ON"
        currentTargetPlayer = findClosestPlayer()
        lockCameraToPlayer()
    end
end

lockButton.MouseButton1Click:Connect(toggleLockCam)

local function updateESPText(player, espText)
    local distance = math.floor((LocalPlayer.Character.HumanoidRootPart.Position - player.Character.HumanoidRootPart.Position).Magnitude)
    espText.Text = player.Name .. " (" .. distance .. "m)"
end

local function createESP(player)
    local espFrame = Instance.new("BillboardGui")
    espFrame.Parent = player.Character
    espFrame.Size = UDim2.new(0, 200, 0, 50)
    espFrame.Adornee = player.Character:WaitForChild("Head")
    espFrame.StudsOffset = Vector3.new(0, 2, 0)
    espFrame.AlwaysOnTop = true

    local espText = Instance.new("TextLabel")
    espText.Parent = espFrame
    espText.Size = UDim2.new(1, 0, 1, 0)
    espText.BackgroundTransparency = 1
    espText.TextColor3 = Color3.new(1, 1, 1)
    espText.TextSize = 20
    espText.Font = Enum.Font.SourceSansBold
    espText.TextStrokeTransparency = 0.8

    RunService.RenderStepped:Connect(function()
        updateESPText(player, espText)
    end)
end

for _, player in pairs(Players:GetPlayers()) do
    if player ~= LocalPlayer then
        player.CharacterAdded:Connect(function()
            createESP(player)
        end)
        if player.Character then
            createESP(player)
        end
    end
end

Players.PlayerAdded:Connect(function(player)
    if player ~= LocalPlayer then
        player.CharacterAdded:Connect(function()
            createESP(player)
        end)
    end
end)

UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if input.KeyCode == Enum.KeyCode.L and not gameProcessed then
        toggleLockCam()
    end
end)
