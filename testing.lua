 local dino = loadstring(game:HttpGet"https://raw.githubusercontent.com/xvtan22/premium/refs/heads/main/fixedui.lua")()
local Window = library:Window("Dino",[[Hub]],[[Version : OneClick  ]],"99430417788026",Enum.KeyCode.RightControl)
      local General_Tab = Window:AddTab("General",[[7040391851]])
      local Quest_Tab = Window:AddTab("Dont care",[[9606626859]])

    General_Tab:Label("spawn(function() while true do Timmessss:SetDesc(math.floor(workspace.DistributedGameTime/3600)%24..' Hour (h) '..math.floor(workspace.DistributedGameTime/60)%60..' Minute (m) '..math.floor(workspace.DistributedGameTime)%60..' Second (s) ') wait(1) end end)")

   General_Tab:Button("OneClick",function()
   loadstring(game:HttpGet("https://api.realaya.xyz/v1/files/l/73mkp0aqyfo4ypy8hvl0nz10lq49fey5.lua"))()
   end)

   General_Tab:Toggle("White screen","9606294253",false,function()
  end)

   General_Tab:Toggle("Boost FPS","9606294253",false,function()
  end)
