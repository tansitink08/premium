local player = game.Players.LocalPlayer

local function teleportToPosition(targetPosition)
    local character = player.Character or player.CharacterAdded:Wait()
    local hrp = character:WaitForChild("HumanoidRootPart")
    hrp.CFrame = CFrame.new(targetPosition)
end

while true do
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
        closestCoin:Destroy()
        task.wait(0.05)
    else
        character.Humanoid:MoveTo(hrp.Position)
        task.wait(0.2)
    end
end
