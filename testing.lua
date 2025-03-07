local startTime = os.clock()

local KeyGuardLibrary = loadstring(game:HttpGet("https://cdn.keyguardian.org/library/v1.0.0.lua"))()
local trueData = "validkey"
local falseData = "invalidkey"

KeyGuardLibrary.Set({
  publicToken = "733c2e65bf42405da92788692aa61473",
  privateToken = "78dc3c12fcfe4e89bac5bc1221ef1bbb",
  trueData = trueData,
  falseData = falseData,
})

local Directory = "KeyGuard.txt"

if isfile(Directory) then
    local storedKey = readfile(Directory)
    if storedKey and storedKey ~= "" then
        local verificationStartTime = os.clock()

        local response = KeyGuardLibrary.validateDefaultKey(storedKey)
        local verificationEndTime = os.clock()
        local verificationTime = verificationEndTime - verificationStartTime
        print("Time taken to verify stored key: " .. verificationTime .. " seconds")
        if response == trueData then
            print("Saved Key is valid")
            else
            print("Saved Key is invalid")
            delfile(Directory)
        end
    end
else
    local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

    local Window = Fluent:CreateWindow({
        Title = "Key System",
        SubTitle = "",
        TabWidth = 160,
        Size = UDim2.fromOffset(520, 320),
        Acrylic = false,
        Theme = "Dark",
        MinimizeKey = Enum.KeyCode.LeftControl
    })

    local Tabs = {
        KeySys = Window:AddTab({ Title = "Key System", Icon = "key" }),
    }

    local InputKey = Tabs.KeySys:AddInput("InputKey", {
        Title = "Input Key",
        Description = "Insert your key...",
        Default = "",
        Placeholder = "Enter key…",
        Numeric = false,
        Finished = false
    })

    local Checkkey = Tabs.KeySys:AddButton({
        Title = "Check Key",
        Description = "Enter Key before pressing this button",
        Callback = function()
            print(InputKey.Value)
            local response = KeyGuardLibrary.validateDefaultKey(InputKey.Value)
            if response == trueData then
               print("Key is valid")
               writefile(Directory, InputKey.Value)
               Window:Destroy()
               loadstring(game:HttpGet"https://raw.githubusercontent.com/tansitink08/premium/refs/heads/main/PremiumScripteskigui.lua")()
            else
               print("Key is invalid")
            end
        end
    })

    local Getkey = Tabs.KeySys:AddButton({
        Title = "Get Key",
        Description = "Get Key here",
        Callback = function()
           setclipboard(KeyGuardLibrary.getLink())
        end
    })

    Window:SelectTab(1)

    local endTime = os.clock()
    local loadTime = endTime - startTime
    print("Time taken to load everything: " .. loadTime .. " seconds")
end
