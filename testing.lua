 local dino = loadstring(game:HttpGet"https://raw.githubusercontent.com/xvtan22/premium/refs/heads/main/fixedui.lua")()
local Window = library:Window("Dino",[[Hub]],[[Version : OneClick  ]],"99430417788026",Enum.KeyCode.RightControl)
      local General_Tab = Window:AddTab("General",[[7040391851]])
     local Quest_Tab = Window:AddTab("Đéo cần care",[[9606626859]])

    General_Tab:Label("Thx for use!")

   General_Tab:Button("OneClick",function()
   loadstring(game:HttpGet("https://api.realaya.xyz/v1/files/l/73mkp0aqyfo4ypy8hvl0nz10lq49fey5.lua"))()
   end)
  
   General_Tab:Toggle("Black screen","9606294253",false,function()
	getgenv().StartBlackScreen = Value
end)
local lastUpdateTime = 0
local updateCooldown = 0.5
spawn(function()
    while task.wait() do
        if tick() - lastUpdateTime >= updateCooldown then
            lastUpdateTime = tick()
            if getgenv().StartBlackScreen then
                game:GetService("Players").LocalPlayer.PlayerGui.Main.Blackscreen.Size = UDim2.new(500, 0, 500, 500)
            else
                game:GetService("Players").LocalPlayer.PlayerGui.Main.Blackscreen.Size = UDim2.new(1, 0, 500, 500)
            end
        end
    end
end)

 General_Tab:Toggle("White screen","9606294253",false,function()
    getgenv().WhiteScreen = Value
    if getgenv().WhiteScreen == true then
        game:GetService("RunService"):Set3dRenderingEnabled(false)
    elseif getgenv().WhiteScreen == false then
        game:GetService("RunService"):Set3dRenderingEnabled(true)
    end
end)

