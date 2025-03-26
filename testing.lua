 local dino = loadstring(game:HttpGet"https://raw.githubusercontent.com/xvtan22/premium/refs/heads/main/fixedui.lua")()
local Window = library:Window("Dino",[[Hub]],[[Version : OneClick  ]],"99430417788026",Enum.KeyCode.RightControl)
      local General_Tab = Window:AddTab("General",[[7040391851]])
     local Quest_Tab = Window:AddTab("Đéo cần care",[[9606626859]])

    General_Tab:Label("Thx for use!")

   General_Tab:Button("OneClick",function()
   loadstring(game:HttpGet("https://api.realaya.xyz/v1/files/l/73mkp0aqyfo4ypy8hvl0nz10lq49fey5.lua"))()
   end)
  
General_Tab:Toggle("Black screen", "9606294253", false, function(state)
    getgenv().StartBlackScreen = state
end)

local lastUpdateTime = 0
local updateCooldown = 0.5

RunService.RenderStepped:Connect(function()
    if tick() - lastUpdateTime >= updateCooldown then
        lastUpdateTime = tick()
        local blackScreen = LocalPlayer.PlayerGui:FindFirstChild("Main") and LocalPlayer.PlayerGui.Main:FindFirstChild("Blackscreen")
        if blackScreen then
            blackScreen.Size = getgenv().StartBlackScreen and UDim2.new(1, 0, 1, 0) or UDim2.new(0, 0, 0, 0)
        end
    end
end)

General_Tab:Toggle("White screen", "9606294253", false, function(state)
    getgenv().WhiteScreen = state
    RunService:Set3dRenderingEnabled(not state)
end)


