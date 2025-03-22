DinoUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/xvtan22/premium/refs/heads/main/fixedui.lua"))()
local Window = library:Window("Dino",[[Hub]],[[Version : Test  ]],"99430417788026",Enum.KeyCode.RightControl)
      local General_Tab = Window:AddTab("General",[[7040391851]])
     local Quest_Tab = Window:AddTab("Quest & Item",[[9606626859]])

    General_Tab:Label("Main Farm")
  
   General_Tab:Toggle("Auto Farm Level","9606294253",false,function()
  end)

   General_Tab:Button("Button",function()
   end)
   
   AutoSet = {
    "Set 1",
    "Set 2",
    "Set 3",
    "Set 4"
}
General_Tab:Dropdown("Dropdown Test",AutoSet,function()
end)
    
    local Tessss = General_Tab:LabelP("Check")
    Tessss:Set("Test")
    
General_Tab:Slider("Slider",1,100,60,function()
end)    
    
  General_Tab:Textbox("TextBox",function()  
  end)
