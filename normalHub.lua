local a = game:GetService("RbxAnalyticsService"):GetClientId()
if string.lower(a) ~= game:GetService("RbxAnalyticsService"):GetClientId() then
    game.Players.LocalPlayer:Kick("\n \nMobile Only\nMobile Only\n\nMobile Only\nMobile Only\n\nMobile Only\nMobile Only\n\nMobile Only\nMobile Only\n\nMobile Only\nMobile Only\n")
    wait(10)
    while true do repeat until false end
end]]

if not game:IsLoaded() then 
    local Message = Instance.new("Message", workspace)
    Message.Text = "Normal Hub : Waiting game to loaded"
    game.Loaded:Wait()
    Message:Destroy()
    task.wait(10)
else
    repeat task.wait() until game.Players
    repeat task.wait() until game.Players.LocalPlayer
    repeat task.wait() until game:GetService("ReplicatedStorage")
    repeat task.wait() until game:GetService("ReplicatedStorage"):FindFirstChild("Remotes")
    repeat task.wait() until game.Players.LocalPlayer:FindFirstChild("PlayerGui")
    repeat task.wait() until game.Players.LocalPlayer.PlayerGui:FindFirstChild("Main")
end

function changeparent()
    pcall(function()
        for i,v in pairs(game:GetService("Workspace").Map:GetDescendants()) do
            if v.Name:find("Chest") and v:IsA("Part") then
                v.Parent = game.Workspace
            end
        end
    end)
end

changeparent()

task.spawn(function()
    repeat task.wait() until _G.ChestTween or _G.ChestTeleport or _G.ESPChestxx
    while task.wait(15) do
        pcall(function()
            if _G.ChestTween or _G.ChestTeleport or _G.ESPChestxx then
                changeparent()
            end
        end)
    end
end)

repeat wait()
    pcall(function()
        if game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Visible == true then
            if _G.Teams == "Pirates" then
                game:GetService("Workspace").Camera.CameraType = Enum.CameraType.Custom
                local args = {
                    [1] = "SetTeam",
                    [2] = "Pirates"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Visible = false
                game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Fragments.Visible = true
                game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Beli.Visible = true
                game:GetService("Players")["LocalPlayer"].PlayerGui.Main.HP.Visible = true
                game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Energy.Visible = true
                game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Skills.Visible = true
                game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Level.Visible = true
                game:GetService("Players")["LocalPlayer"].PlayerGui.Main.MenuButton.Visible = true
                game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Compass.Visible = true
                for i,v in pairs(game:GetService("Players")["LocalPlayer"].PlayerGui.Main:GetChildren()) do
                    if v:IsA("ImageButton") then
                        if v.Name ~= "Settings_" then
                            if v.Visible == false then
                                v.Visible = true
                            end
                        end
                    end
                end
            elseif _G.Teams == "Marines" then 
                game:GetService("Workspace").Camera.CameraType = Enum.CameraType.Custom
                local args = {
                    [1] = "SetTeam",
                    [2] = "Marines"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Visible = false
                game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Fragments.Visible = true
                game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Beli.Visible = true
                game:GetService("Players")["LocalPlayer"].PlayerGui.Main.HP.Visible = true
                game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Energy.Visible = true
                game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Skills.Visible = true
                game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Level.Visible = true
                game:GetService("Players")["LocalPlayer"].PlayerGui.Main.MenuButton.Visible = true
                game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Compass.Visible = true
                for i,v in pairs(game:GetService("Players")["LocalPlayer"].PlayerGui.Main:GetChildren()) do
                    if v:IsA("ImageButton") then
                        if v.Name ~= "Settings_" then
                            if v.Visible == false then
                                v.Visible = true
                            end
                        end
                    end
                end
            else
                game:GetService("Workspace").Camera.CameraType = Enum.CameraType.Custom
                local args = {
                    [1] = "SetTeam",
                    [2] = "Pirates"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Visible = false
                game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Beli.Visible = true
                game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Fragments.Visible = true
                game:GetService("Players")["LocalPlayer"].PlayerGui.Main.HP.Visible = true
                game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Energy.Visible = true
                game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Skills.Visible = true
                game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Level.Visible = true
                game:GetService("Players")["LocalPlayer"].PlayerGui.Main.MenuButton.Visible = true
                game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Compass.Visible = true
                for i,v in pairs(game:GetService("Players")["LocalPlayer"].PlayerGui.Main:GetChildren()) do
                    if v:IsA("ImageButton") then
                        if v.Name ~= "Settings_" then
                            if v.Visible == false then
                                v.Visible = true
                            end
                        end
                    end
                end
            end    
        end
    end)
until game:GetService("Players").LocalPlayer.Team ~= nil

local placeId = game.PlaceId
if placeId == 2753915549 then
    OldWorld = true
elseif placeId == 4442272183 then
    NewWorld = true
elseif placeId == 7449423635 then
    ThirdWorld = true
end
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
wait(1)
vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
    function LV()
        local lv = game.Players.LocalPlayer.Data.Level.Value
        if OldWorld then
            if lv == 1 or lv <= 9 then
                return {
                    {
                        Mon = "Bandit [Lv. 5]",
                        NameQ = "BanditQuest1",
                        NumberQ = 1,
                        NameMon = "Bandit",
                        POSQ = CFrame.new(1059.37195, 15.4495068, 1550.4231, 0.939700544, -0, -0.341998369, 0, 1, -0, 0.341998369, 0, 0.939700544),
                        PM = CFrame.new(1043.55811, 68.961647, 1573.30005, 0.963112056, 5.33721192e-08, -0.269100726, -4.2163574e-08, 1, 4.7431584e-08, 0.269100726, -3.4335681e-08, 0.963112056),
                        SPAWNPOINT = "Default",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    }
                }
            elseif lv == 10 or lv <= 14 then
                return {
                    {
                        Mon = "Monkey [Lv. 14]",
                        NameQ = "JungleQuest",
                        NumberQ = 1,
                        NameMon = "Monkey",
                        POSQ = CFrame.new(-1598.09, 35.5501, 153.378),
                        PM = CFrame.new(-1776.6158447265625, 60.959320068359375, 48.25599670410156),
                        SPAWNPOINT = "Jungle",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    }
                }
            elseif lv == 15 or lv <= 29 then
                return {
                    {
                        Mon = "Gorilla [Lv. 20]",
                        NameQ = "JungleQuest",
                        NumberQ = 2,
                        NameMon = "Gorilla",
                        POSQ = CFrame.new(-1598.09, 35.5501, 153.378),
                        PM = CFrame.new(-1134.4501953125, 40.588008880615234, -516.5689697265625),
                        SPAWNPOINT = "Jungle",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    },
                    {
                        Mon = "Monkey [Lv. 14]",
                        NameQ = "JungleQuest",
                        NumberQ = 1,
                        NameMon = "Monkey",
                        POSQ = CFrame.new(-1598.09, 35.5501, 153.378),
                        PM = CFrame.new(-1776.6158447265625, 60.959320068359375, 48.25599670410156),
                        SPAWNPOINT = "Jungle",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    }
                }
            elseif lv == 30 or lv <= 39 then
                return {
                    {
                        Mon = "Pirate",
                        NameQ = "BuggyQuest1",
                        NumberQ = 1,
                        NameMon = "Pirate",
                        POSQ = CFrame.new(-1141.07, 4.10002, 3831.55),
                        PM = CFrame.new(-1147.1629638671875, 44.877357482910156, 3849.13134765625),
                        SPAWNPOINT = "Pirate",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    }
                }
            elseif lv == 40 or lv <= 59 then
                return {
                    {
                        Mon = "Pirate",
                        NameQ = "BuggyQuest1",
                        NumberQ = 1,
                        NameMon = "Pirate",
                        POSQ = CFrame.new(-1141.07, 4.10002, 3831.55),
                        PM = CFrame.new(-1147.1629638671875, 44.877357482910156, 3849.13134765625),
                        SPAWNPOINT = "Pirate",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    },
                    {
                        Mon = "Brute",
                        NameQ = "BuggyQuest1",
                        NumberQ = 2,
                        NameMon = "Brute",
                        POSQ = CFrame.new(-1141.07, 4.10002, 3831.55),
                        PM = CFrame.new(-1149.7659912109375, 65.32644653320312, 4163.37255859375),
                        SPAWNPOINT = "Pirate",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    }
                }
            elseif lv == 60 or lv <= 74 then
                return {
                    {
                        Mon = "Desert Bandit [Lv. 60]",
                        NameQ = "DesertQuest",
                        NumberQ = 1,
                        NameMon = "Desert Bandit",
                        POSQ = CFrame.new(894.489, 5.14001, 4392.43),
                        PM = CFrame.new(1033.265625, 28.10597038269043, 4486.12255859375),
                        SPAWNPOINT = "Desert",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    }
                }
            elseif lv == 75 or lv <= 89 then
                return {
                    {
                        Mon = "Desert Officer [Lv. 70]",
                        NameQ = "DesertQuest",
                        NumberQ = 2,
                        NameMon = "Desert Officer",
                        POSQ = CFrame.new(894.489, 5.14001, 4392.43),
                        PM = CFrame.new(1591.7296142578125, 3.67695951461792, 4363.29638671875),
                        SPAWNPOINT = "Desert",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    },
                    {
                        Mon = "Desert Bandit [Lv. 60]",
                        NameQ = "DesertQuest",
                        NumberQ = 1,
                        NameMon = "Desert Bandit",
                        POSQ = CFrame.new(894.489, 5.14001, 4392.43),
                        PM = CFrame.new(1033.265625, 28.10597038269043, 4486.12255859375),
                        SPAWNPOINT = "Desert",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    }
                }
            elseif lv == 90 or lv <= 99 then
                return {
                    {
                        Mon = "Snow Bandit [Lv. 90]",
                        NameQ = "SnowQuest",
                        NumberQ = 1,
                        NameMon = "Snow Bandit",
                        POSQ = CFrame.new(1389.74, 86.6521, -1298.91),
                        PM = CFrame.new(1222.4376220703125, 105.9024887084961, -1440.41845703125),
                        SPAWNPOINT = "Ice",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    }
                }
            elseif lv == 100 or lv <= 119 then
                return {
                    {
                        Mon = "Snowman [Lv. 100]",
                        NameQ = "SnowQuest",
                        NumberQ = 2,
                        NameMon = "Snowman",
                        POSQ = CFrame.new(1389.74, 86.6521, -1298.91),
                        PM = CFrame.new(1222.4376220703125, 105.9024887084961, -1440.41845703125),
                        SPAWNPOINT = "Ice",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    },
                    {
                        Mon = "Snow Bandit [Lv. 90]",
                        NameQ = "SnowQuest",
                        NumberQ = 1,
                        NameMon = "Snow Bandit",
                        POSQ = CFrame.new(1389.74, 86.6521, -1298.91),
                        PM = CFrame.new(1222.4376220703125, 105.9024887084961, -1440.41845703125),
                        SPAWNPOINT = "Ice",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    }
                }
            elseif lv == 120 or lv <= 149 then
                return {
                    {
                        Mon = "Chief Petty Officer [Lv. 120]",
                        NameQ = "MarineQuest2",
                        NumberQ = 1,
                        NameMon = "Chief Petty Officer",
                        POSQ = CFrame.new(-5039.59, 27.35, 4324.68),
                        PM = CFrame.new(-4910.5322265625, 80.91588592529297, 4308.3427734375),
                        SPAWNPOINT = "MarineBase",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    }
                }
            elseif lv == 150 or lv <= 174 then
                return {
                    {
                        Mon = "Sky Bandit [Lv. 150]",
                        NameQ = "SkyQuest",
                        NumberQ = 1,
                        NameMon = "Sky Bandit",
                        POSQ = CFrame.new(-4839.53, 716.369, -2619.44),
                        PM = CFrame.new(-4954.2421875, 365.5449523925781, -2909.3525390625),
                        SPAWNPOINT = "Sky",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    }
                }
            elseif lv == 175 or lv <= 189 then
                return {
                    {
                        Mon = "Dark Master [Lv. 175]",
                        NameQ = "SkyQuest",
                        NumberQ = 2,
                        NameMon = "Dark Master",
                        POSQ = CFrame.new(-4839.53, 716.369, -2619.44),
                        PM = CFrame.new(-5226.171875, 429.76190185546875, -2278.52490234375),
                        SPAWNPOINT = "Sky",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    },
                    {
                        Mon = "Sky Bandit [Lv. 150]",
                        NameQ = "SkyQuest",
                        NumberQ = 1,
                        NameMon = "Sky Bandit",
                        POSQ = CFrame.new(-4839.53, 716.369, -2619.44),
                        PM = CFrame.new(-4954.2421875, 365.5449523925781, -2909.3525390625),
                        SPAWNPOINT = "Sky",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    }
                }
            elseif lv == 190 or lv <= 209 then
                return {
                    {
                        Mon = "Prisoner [Lv. 190]",
                        NameQ = "PrisonerQuest",
                        NumberQ = 1,
                        NameMon = "Prisoner",
                        POSQ = CFrame.new(5310.60547, 0.350014925, 474.946594, 0.0175017118, 0, 0.999846935, 0, 1, 0, -0.999846935, 0, 0.0175017118),
                        PM = CFrame.new(5429.359375, 15.777754783630371, 507.32916259765625),
                        SPAWNPOINT = "Prison",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    }
                }
            elseif lv == 210 or lv <= 249 then
                return {
                    {
                        Mon = "Prisoner [Lv. 190]",
                        NameQ = "PrisonerQuest",
                        NumberQ = 1,
                        NameMon = "Prisoner",
                        POSQ = CFrame.new(5310.60547, 0.350014925, 474.946594, 0.0175017118, 0, 0.999846935, 0, 1, 0, -0.999846935, 0, 0.0175017118),
                        PM = CFrame.new(5429.359375, 15.777754783630371, 507.32916259765625),
                        SPAWNPOINT = "Prison",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    },
                    {
                        Mon = "Dangerous Prisoner [Lv. 210]",
                        NameQ = "PrisonerQuest",
                        NumberQ = 2,
                        NameMon = "Dangerous Prisoner",
                        POSQ = CFrame.new(5310.60547, 0.350014925, 474.946594, 0.0175017118, 0, 0.999846935, 0, 1, 0, -0.999846935, 0, 0.0175017118),
                        PM = CFrame.new(5429.359375, 15.777754783630371, 507.32916259765625),
                        SPAWNPOINT = "Prison",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    }
                }
            elseif lv == 250 or lv <= 274 then
                return {
                    {
                        Mon = "Toga Warrior [Lv. 250]",
                        NameQ = "ColosseumQuest",
                        NumberQ = 1,
                        NameMon = "Toga Warrior",
                        POSQ = CFrame.new(-1580.05, 6.35, -2986.48),
                        PM = CFrame.new(-1819.77587890625, 7.289084434509277, -2739.4296875),
                        SPAWNPOINT = "Colosseum",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    }
                }
            elseif lv == 275 or lv <= 299 then
                return {
                    {
                        Mon = "Gladiator [Lv. 275]",
                        NameQ = "ColosseumQuest",
                        NumberQ = 2,
                        NameMon = "Gladiator",
                        POSQ = CFrame.new(-1580.05, 6.35, -2986.48),
                        PM = CFrame.new(-1296.4832763671875, 47.22811508178711, -3321.103271484375),
                        SPAWNPOINT = "Colosseum",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    },
                    {
                        Mon = "Toga Warrior [Lv. 250]",
                        NameQ = "ColosseumQuest",
                        NumberQ = 1,
                        NameMon = "Toga Warrior",
                        POSQ = CFrame.new(-1580.05, 6.35, -2986.48),
                        PM = CFrame.new(-1819.77587890625, 7.289084434509277, -2739.4296875),
                        SPAWNPOINT = "Colosseum",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    }
                }
            elseif lv == 300 or lv <= 324 then
                return {
                    {
                        Mon = "Military Soldier",
                        NameQ = "MagmaQuest",
                        NumberQ = 1,
                        NameMon = "Military Soldier",
                        POSQ = CFrame.new(-5313.37, 10.95, 8515.29),
                        PM = CFrame.new(-5513.990234375, 62.925025939941406, 8577.1943359375),
                        SPAWNPOINT = "Magma",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    }
                }
            elseif lv == 325 or lv <= 374 then
                return {
                    {
                        Mon = "Military Spy [Lv. 325]",
                        NameQ = "MagmaQuest",
                        NumberQ = 2,
                        NameMon = "Military Spy",
                        POSQ = CFrame.new(-5313.37, 10.95, 8515.29),
                        PM = CFrame.new(-5799.3564453125, 98.38143157958984, 8802.822265625),
                        SPAWNPOINT = "Magma",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    },
                    {
                        Mon = "Military Soldier",
                        NameQ = "MagmaQuest",
                        NumberQ = 1,
                        NameMon = "Military Soldier",
                        POSQ = CFrame.new(-5313.37, 10.95, 8515.29),
                        PM = CFrame.new(-5513.990234375, 62.925025939941406, 8577.1943359375),
                        SPAWNPOINT = "Magma",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    }
                }
            elseif lv == 375 or lv <= 399 then
                return {
                    {
                        Mon = "Fishman Warrior",
                        NameQ = "FishmanQuest",
                        NumberQ = 1,
                        NameMon = "Fishman Warrior",
                        POSQ = CFrame.new(61121.1, 17.9531, 1564.53),
                        PM = CFrame.new(60946.4765625, 48.79884719848633, 1528.651123046875),
                        SPAWNPOINT = "Fountain",
                        Warp = {
                            Use = true,
                            Position =  Vector3.new(61163.8515625, 11.6796875, 1819.7841796875),
                            Magnet = 3000
                        }
                    }
                }
            elseif lv == 400 or lv <= 449 then
                return {
                    {
                        Mon = "Fishman Commando [Lv. 400]",
                        NameQ = "FishmanQuest",
                        NumberQ = 2,
                        NameMon = "Fishman Commando",
                        POSQ = CFrame.new(61121.1, 17.9531, 1564.53),
                        PM = CFrame.new(61939.171875, 76.609375, 1594.226318359375),
                        SPAWNPOINT = "Fountain",
                        Warp = {
                            Use = true,
                            Position =  Vector3.new(61163.8515625, 11.6796875, 1819.7841796875),
                            Magnet = 3000
                        }
                    },
                    {
                        Mon = "Fishman Warrior",
                        NameQ = "FishmanQuest",
                        NumberQ = 1,
                        NameMon = "Fishman Warrior",
                        POSQ = CFrame.new(61121.1, 17.9531, 1564.53),
                        PM = CFrame.new(60946.4765625, 48.79884719848633, 1528.651123046875),
                        SPAWNPOINT = "Fountain",
                        Warp = {
                            Use = true,
                            Position =  Vector3.new(61163.8515625, 11.6796875, 1819.7841796875),
                            Magnet = 3000
                        }
                    },
                }
            elseif lv == 450 or lv <= 474 then
                return {
                    {
                        Mon = "God's Guard",
                        NameQ = "SkyExp1Quest",
                        NumberQ = 1,
                        NameMon = "God's Guard",
                        POSQ = CFrame.new(-4721.89, 843.875, -1949.97),
                        PM = CFrame.new(-4714.8193359375, 853.3318481445312, -1932.6981201171875),
                        SPAWNPOINT = "Sky",
                        Warp = {
                            Use = true,
                            Position =  Vector3.new(-4607.82275, 872.54248, -1667.55688),
                            Magnet = 3000
                        }
                    },
                    {
                        Mon = "Fishman Commando [Lv. 400]",
                        NameQ = "FishmanQuest",
                        NumberQ = 2,
                        NameMon = "Fishman Commando",
                        POSQ = CFrame.new(61121.1, 17.9531, 1564.53),
                        PM = CFrame.new(61939.171875, 76.609375, 1594.226318359375),
                        SPAWNPOINT = "Fountain",
                        Warp = {
                            Use = true,
                            Position =  Vector3.new(61163.8515625, 11.6796875, 1819.7841796875),
                            Magnet = 3000
                        }
                    }
                }
            elseif lv == 475 or lv <= 524 then
                return {
                    {
                        Mon = "Shanda",
                        NameQ = "SkyExp1Quest",
                        NumberQ = 2,
                        NameMon = "Shanda",
                        POSQ = CFrame.new(-7859.1, 5544.19, -381.476),
                        PM = CFrame.new(-7780.4248046875, 5581.994140625, -596.9102172851562),
                        SPAWNPOINT = "Sky2",
                        Warp = {
                            Use = true,
                            Position =  Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047),
                            Magnet = 3000
                        }
                    },
                    {
                        Mon = "God's Guard",
                        NameQ = "SkyExp1Quest",
                        NumberQ = 1,
                        NameMon = "God's Guard",
                        POSQ = CFrame.new(-4721.89, 843.875, -1949.97),
                        PM = CFrame.new(-4714.8193359375, 853.3318481445312, -1932.6981201171875),
                        SPAWNPOINT = "Sky",
                        Warp = {
                            Use = true,
                            Position =  Vector3.new(-4607.82275, 872.54248, -1667.55688),
                            Magnet = 3000
                        }
                    },
                }
            elseif lv == 525 or lv <= 549 then
                return {
                    {
                        Mon = "Royal Squad",
                        NameQ = "SkyExp2Quest",
                        NumberQ = 1,
                        NameMon = "Royal Squad",
                        POSQ = CFrame.new(-7906.82, 5634.66, -1411.99),
                        PM = CFrame.new(-7644.8701171875, 5637.2060546875, -1423.093994140625),
                        SPAWNPOINT = "Sky2",
                        Warp = {
                            Use = true,
                            Position =  Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047),
                            Magnet = 3000
                        }
                    }
                }
            elseif lv == 550 or lv <= 624 then
                return {
                    {
                        Mon = "Royal Soldier",
                        NameQ = "SkyExp2Quest",
                        NumberQ = 2,
                        NameMon = "Royal Soldier",
                        POSQ = CFrame.new(-7906.82, 5634.66, -1411.99),
                        PM = CFrame.new(-7854.5185546875, 5668.95703125, -1713.879150390625),
                        SPAWNPOINT = "Sky2",
                        Warp = {
                            Use = true,
                            Position =  Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047),
                            Magnet = 3000
                        }
                    },
                    {
                        Mon = "Royal Squad",
                        NameQ = "SkyExp2Quest",
                        NumberQ = 1,
                        NameMon = "Royal Squad",
                        POSQ = CFrame.new(-7906.82, 5634.66, -1411.99),
                        PM = CFrame.new(-7644.8701171875, 5637.2060546875, -1423.093994140625),
                        SPAWNPOINT = "Sky2",
                        Warp = {
                            Use = true,
                            Position =  Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047),
                            Magnet = 3000
                        }
                    }
                }
            elseif lv == 625 or lv <= 649 then
                return {
                    {
                        Mon = "Galley Pirate [Lv. 625]",
                        NameQ = "FountainQuest",
                        NumberQ = 1,
                        NameMon = "Galley Pirate",
                        POSQ = CFrame.new(5259.82, 37.35, 4050.03),
                        PM = CFrame.new(5579.63525390625, 38.62645721435547, 3938.308837890625),
                        SPAWNPOINT = "Fountain",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    }
                }
            elseif lv >= 650 then
                return {
                    {
                        Mon = "Galley Captain [Lv. 650]",
                        NameQ = "FountainQuest",
                        NumberQ = 2,
                        NameMon = "Galley Captain",
                        POSQ = CFrame.new(5259.82, 37.35, 4050.03),
                        PM = CFrame.new(5697.27392578125, 59.626686096191406, 5030.4912109375),
                        SPAWNPOINT = "Fountain",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    },
                    {
                        Mon = "Galley Pirate [Lv. 625]",
                        NameQ = "FountainQuest",
                        NumberQ = 1,
                        NameMon = "Galley Pirate",
                        POSQ = CFrame.new(5259.82, 37.35, 4050.03),
                        PM = CFrame.new(5579.63525390625, 38.62645721435547, 3938.308837890625),
                        SPAWNPOINT = "Fountain",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    }
                }
            end
        end
        if NewWorld then
            if lv == 700 or lv <= 724 then
                return {
                    {
                        Mon = "Raider [Lv. 700]",
                        NameQ = "Area1Quest",
                        NumberQ = 1,
                        NameMon = "Raider",
                        POSQ = CFrame.new(-429.544, 71.77, 1836.18),
                        PM = CFrame.new(-273.5111999511719, 79.81228637695312, 2487.2451171875),
                        SPAWNPOINT = "DressTown",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    }
                }
            elseif lv == 725 or lv <= 774 then
                return {
                    {
                        Mon = "Mercenary",
                        NameQ = "Area1Quest",
                        NumberQ = 2,
                        NameMon = "Mercenary",
                        POSQ = CFrame.new(-429.544, 71.77, 1836.18),
                        PM = CFrame.new(-1045.1549072265625, 72.9854965209961, 1441.2437744140625),
                        SPAWNPOINT = "DressTown",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    },
                    {
                        Mon = "Raider [Lv. 700]",
                        NameQ = "Area1Quest",
                        NumberQ = 1,
                        NameMon = "Raider",
                        POSQ = CFrame.new(-429.544, 71.77, 1836.18),
                        PM = CFrame.new(-273.5111999511719, 79.81228637695312, 2487.2451171875),
                        SPAWNPOINT = "DressTown",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    }
                }
            elseif lv == 775 or lv <= 874 then
                return {
                    {
                        Mon = "Swan Pirate [Lv. 775]",
                        NameQ = "Area2Quest",
                        NumberQ = 1,
                        NameMon = "Swan Pirate",
                        POSQ = CFrame.new(638.438, 71.77, 918.283),
                        PM = CFrame.new(872.306884765625, 121.60797119140625, 1243.0919189453125),
                        SPAWNPOINT = "DressTown",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    }
                }
            elseif lv == 875 or lv <= 899 then
                return {
                    {
                        Mon = "Marine Lieutenant [Lv. 875]",
                        NameQ = "MarineQuest3",
                        NumberQ = 1,
                        NameMon = "Marine Lieutenant",
                        POSQ = CFrame.new(-2440.8, 71.7141, -3216.07),
                        PM = CFrame.new(-2876.41015625, 72.9919204711914, -2915.28173828125),
                        SPAWNPOINT = "Greenb",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    }
                }
            elseif lv == 900 or lv <= 949 then
                return {
                    {
                        Mon = "Marine Captain",
                        NameQ = "MarineQuest3",
                        NumberQ = 2,
                        NameMon = "Marine Captain",
                        POSQ = CFrame.new(-2440.8, 71.7141, -3216.07),
                        PM = CFrame.new(-1854.1995849609375, 72.9919204711914, -3454.631103515625),
                        SPAWNPOINT = "Greenb",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    },
                    {
                        Mon = "Marine Lieutenant [Lv. 875]",
                        NameQ = "MarineQuest3",
                        NumberQ = 1,
                        NameMon = "Marine Lieutenant",
                        POSQ = CFrame.new(-2440.8, 71.7141, -3216.07),
                        PM = CFrame.new(-2876.41015625, 72.9919204711914, -2915.28173828125),
                        SPAWNPOINT = "Greenb",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    }
                }
            elseif lv == 950 or lv <= 974 then
                return {
                    {
                        Mon = "Zombie",
                        NameQ = "ZombieQuest",
                        NumberQ = 1,
                        NameMon = "Zombie",
                        POSQ = CFrame.new(-5497.06, 47.5923, -795.237),
                        PM = CFrame.new(-5696.03271484375, 126.05777740478516, -769.0901489257812),
                        SPAWNPOINT = "Graveyard",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    }
                }
            elseif lv == 975 or lv <= 999 then
                return {
                    {
                        Mon = "Vampire",
                        NameQ = "ZombieQuest",
                        NumberQ = 2,
                        NameMon = "Vampire",
                        POSQ = CFrame.new(-5497.06, 47.5923, -795.237),
                        PM = CFrame.new(-5982.53662109375, 6.428503036499023, -1285.8414306640625),
                        SPAWNPOINT = "Graveyard",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    },
                    {
                        Mon = "Zombie",
                        NameQ = "ZombieQuest",
                        NumberQ = 1,
                        NameMon = "Zombie",
                        POSQ = CFrame.new(-5497.06, 47.5923, -795.237),
                        PM = CFrame.new(-5696.03271484375, 126.05777740478516, -769.0901489257812),
                        SPAWNPOINT = "Graveyard",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    }
                }
            elseif lv == 1000 or lv <= 1049 then
                return {
                    {
                        Mon = "Snow Trooper [Lv. 1000]",
                        NameQ = "SnowMountainQuest",
                        NumberQ = 1,
                        NameMon = "Snow Trooper",
                        POSQ = CFrame.new(609.859, 400.12, -5372.26),
                        PM = CFrame.new(534.3240356445312, 431.5126953125, -5567.9462890625),
                        SPAWNPOINT = "Snowy",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    }
                }
            elseif lv == 1050 or lv <= 1099 then
                return {
                    {
                        Mon = "Winter Warrior [Lv. 1050]",
                        NameQ = "SnowMountainQuest",
                        NumberQ = 2,
                        NameMon = "Winter Warrior",
                        POSQ = CFrame.new(609.859, 400.12, -5372.26),
                        PM = CFrame.new(1273.2938232421875, 456.7721252441406, -5191.2685546875),
                        SPAWNPOINT = "Snowy",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    },
                    {
                        Mon = "Snow Trooper [Lv. 1000]",
                        NameQ = "SnowMountainQuest",
                        NumberQ = 1,
                        NameMon = "Snow Trooper",
                        POSQ = CFrame.new(609.859, 400.12, -5372.26),
                        PM = CFrame.new(534.3240356445312, 431.5126953125, -5567.9462890625),
                        SPAWNPOINT = "Snowy",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    }
                }
            elseif lv == 1100 or lv <= 1124 then
                return {
                    {
                        Mon = "Lab Subordinate [Lv. 1100]",
                        NameQ = "IceSideQuest",
                        NumberQ = 1,
                        NameMon = "Lab Subordinate",
                        POSQ = CFrame.new(-6064.07, 15.2423, -4902.98),
                        PM = CFrame.new(-5753.0439453125, 35.25969314575195, -4497.27001953125),
                        SPAWNPOINT = "CircleIslandIce",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    }
                }
            elseif lv == 1125 or lv <= 1174 then
                return {
                    {
                        Mon = "Horned Warrior [Lv. 1125]",
                        NameQ = "IceSideQuest",
                        NumberQ = 2,
                        NameMon = "Horned Warrior",
                        POSQ = CFrame.new(-6064.07, 15.2423, -4902.98),
                        PM = CFrame.new(-6402.650390625, 24.521888732910156, -5813.54150390625),
                        SPAWNPOINT = "CircleIslandIce",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    },
                    {
                        Mon = "Lab Subordinate [Lv. 1100]",
                        NameQ = "IceSideQuest",
                        NumberQ = 1,
                        NameMon = "Lab Subordinate",
                        POSQ = CFrame.new(-6064.07, 15.2423, -4902.98),
                        PM = CFrame.new(-5753.0439453125, 35.25969314575195, -4497.27001953125),
                        SPAWNPOINT = "CircleIslandIce",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    }
                }
            elseif lv == 1175 or lv <= 1199 then
                return {
                    {
                        Mon = "Magma Ninja",
                        NameQ = "FireSideQuest",
                        NumberQ = 1,
                        NameMon = "Magma Ninja",
                        POSQ = CFrame.new(-5428.03, 15.0623, -5299.43),
                        PM = CFrame.new(-5461.70263671875, 130.26065063476562, -5837.99853515625),
                        SPAWNPOINT = "CircleIslandFire",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    }
                }
            elseif lv == 1200 or lv <= 1249 then
                return {
                    {
                        Mon = "Lava Pirate",
                        NameQ = "FireSideQuest",
                        NumberQ = 2,
                        NameMon = "Lava Pirate",
                        POSQ = CFrame.new(-5428.03, 15.0623, -5299.43),
                        PM = CFrame.new(-5221.6474609375, 48.07244110107422, -4683.22607421875),
                        SPAWNPOINT = "CircleIslandFire",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    },
                    {
                        Mon = "Magma Ninja",
                        NameQ = "FireSideQuest",
                        NumberQ = 1,
                        NameMon = "Magma Ninja",
                        POSQ = CFrame.new(-5428.03, 15.0623, -5299.43),
                        PM = CFrame.new(-5461.70263671875, 130.26065063476562, -5837.99853515625),
                        SPAWNPOINT = "CircleIslandFire",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    }
                }
            elseif lv == 1250 or lv <= 1274 then
                return {
                    {
                        Mon = "Ship Deckhand",
                        NameQ = "ShipQuest1",
                        NumberQ = 1,
                        NameMon = "Ship Deckhand",
                        POSQ = CFrame.new(1041.1, 124.167, 32909.2),
                        PM = CFrame.new(917.8352661132812, 181.08331298828125, 33269.1015625),
                        SPAWNPOINT = "Ship",
                        Warp = {
                            Use = true,
                            Position =  Vector3.new(923.21252441406, 126.9760055542, 32852.83203125),
                            Magnet = 20000
                        }
                    }
                }
            elseif lv == 1275 or lv <= 1299 then
                return {
                    {
                        Mon = "Ship Engineer",
                        NameQ = "ShipQuest1",
                        NumberQ = 2,
                        NameMon = "Ship Engineer",
                        POSQ = CFrame.new(1041.1, 124.167, 32909.2),
                        PM = CFrame.new(917.8352661132812, 181.08331298828125, 33269.1015625),
                        SPAWNPOINT = "Ship",
                        Warp = {
                            Use = true,
                            Position =  Vector3.new(923.21252441406, 126.9760055542, 32852.83203125),
                            Magnet = 20000
                        }
                    },
                    {
                        Mon = "Ship Deckhand",
                        NameQ = "ShipQuest1",
                        NumberQ = 1,
                        NameMon = "Ship Deckhand",
                        POSQ = CFrame.new(1041.1, 124.167, 32909.2),
                        PM = CFrame.new(917.8352661132812, 181.08331298828125, 33269.1015625),
                        SPAWNPOINT = "Ship",
                        Warp = {
                            Use = true,
                            Position =  Vector3.new(923.21252441406, 126.9760055542, 32852.83203125),
                            Magnet = 20000
                        }
                    }
                }
            elseif lv == 1300 or lv <= 1324 then
                return {
                    {
                        Mon = "Ship Steward",
                        NameQ = "ShipQuest2",
                        NumberQ = 1,
                        NameMon = "Ship Steward",
                        POSQ = CFrame.new(1041.1, 124.167, 32909.2),
                        PM = CFrame.new(917.8352661132812, 181.08331298828125, 33269.1015625),
                        SPAWNPOINT = "Ship",
                        Warp = {
                            Use = true,
                            Position =  Vector3.new(923.21252441406, 126.9760055542, 32852.83203125),
                            Magnet = 20000
                        }
                    }
                }
            elseif lv == 1325 or lv <= 1349 then
                return {
                    {
                        Mon = "Ship Officer",
                        NameQ = "ShipQuest2",
                        NumberQ = 2,
                        NameMon = "Ship Officer",
                        POSQ = CFrame.new(1041.1, 124.167, 32909.2),
                        PM = CFrame.new(917.8352661132812, 181.08331298828125, 33269.1015625),
                        SPAWNPOINT = "Ship",
                        Warp = {
                            Use = true,
                            Position =  Vector3.new(923.21252441406, 126.9760055542, 32852.83203125),
                            Magnet = 20000
                        }
                    },
                    {
                        Mon = "Ship Steward",
                        NameQ = "ShipQuest2",
                        NumberQ = 1,
                        NameMon = "Ship Steward",
                        POSQ = CFrame.new(1041.1, 124.167, 32909.2),
                        PM = CFrame.new(917.8352661132812, 181.08331298828125, 33269.1015625),
                        SPAWNPOINT = "Ship",
                        Warp = {
                            Use = true,
                            Position =  Vector3.new(923.21252441406, 126.9760055542, 32852.83203125),
                            Magnet = 20000
                        }
                    }
                }
            elseif lv == 1350 or lv <= 1374 then
                return {
                    {
                        Mon = "Arctic Warrior [Lv. 1350]",
                        NameQ = "FrostQuest",
                        NumberQ = 1,
                        NameMon = "Arctic Warrior",
                        POSQ = CFrame.new(5667.66, 26.7998, -6486.09),
                        PM = CFrame.new(6018.197265625, 52.36618423461914, -6152.02978515625),
                        SPAWNPOINT = "IceCastle",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    }
                }
            elseif lv == 1375 or lv <= 1424 then
                return {
                    {
                        Mon = "Snow Lurker [Lv. 1375]",
                        NameQ = "FrostQuest",
                        NumberQ = 2,
                        NameMon = "Snow Lurker",
                        POSQ = CFrame.new(5667.66, 26.7998, -6486.09),
                        PM = CFrame.new(5640.9736328125, 44.23918914794922, -6770.10498046875),
                        SPAWNPOINT = "IceCastle",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    },
                    {
                        Mon = "Arctic Warrior [Lv. 1350]",
                        NameQ = "FrostQuest",
                        NumberQ = 1,
                        NameMon = "Arctic Warrior",
                        POSQ = CFrame.new(5667.66, 26.7998, -6486.09),
                        PM = CFrame.new(6018.197265625, 52.36618423461914, -6152.02978515625),
                        SPAWNPOINT = "IceCastle",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    }
                }
            elseif lv == 1425 or lv <= 1449 then
                return {
                    {
                        Mon = "Sea Soldier",
                        NameQ = "ForgottenQuest",
                        NumberQ = 1,
                        NameMon = "Sea Soldier",
                        POSQ = CFrame.new(-3054.44, 235.544, -10142.8),
                        PM = CFrame.new(-3029.514892578125, 68.64163970947266, -9778.5986328125),
                        SPAWNPOINT = "ForgottenIsland",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    }
                }
            elseif lv >= 1450 then
                return {
                    {
                        Mon = "Water Fighter [Lv. 1450]",
                        NameQ = "ForgottenQuest",
                        NumberQ = 2,
                        NameMon = "Water Fighter",
                        POSQ = CFrame.new(-3054.44, 235.544, -10142.8),
                        PM = CFrame.new(-3271.4951171875, 295.032958984375, -10612.0966796875),
                        SPAWNPOINT = "ForgottenIsland",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    },
                    {
                        Mon = "Sea Soldier",
                        NameQ = "ForgottenQuest",
                        NumberQ = 1,
                        NameMon = "Sea Soldier",
                        POSQ = CFrame.new(-3054.44, 235.544, -10142.8),
                        PM = CFrame.new(-3029.514892578125, 68.64163970947266, -9778.5986328125),
                        SPAWNPOINT = "ForgottenIsland",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    }
                }
            end
        end
        if ThirdWorld then
            if lv == 1500 or lv <= 1524 then
                return {
                    {
                        Mon = "Pirate Millionaire",
                        NameQ = "PiratePortQuest",
                        NumberQ = 1,
                        NameMon = "Pirate Millionaire",
                        POSQ = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627),
                        PM = CFrame.new(-299.81500244140625, 56.6715202331543, 5610.4716796875),
                        SPAWNPOINT = "Default",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    }
                }
            elseif lv == 1525 or lv <= 1574 then
                return {
                    {
                        Mon = "Pistol Billionaire",
                        NameQ = "PiratePortQuest",
                        NumberQ = 2,
                        NameMon = "Pistol Billionaire",
                        POSQ = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627),
                        PM = CFrame.new(-334.3323059082031, 114.3218994140625, 5982.6298828125),
                        SPAWNPOINT = "Default",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    },
                    {
                        Mon = "Pirate Millionaire",
                        NameQ = "PiratePortQuest",
                        NumberQ = 1,
                        NameMon = "Pirate Millionaire",
                        POSQ = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627),
                        PM = CFrame.new(-299.81500244140625, 56.6715202331543, 5610.4716796875),
                        SPAWNPOINT = "Default",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    }
                }
            elseif lv == 1575 or lv <= 1599 then
                return {
                    {
                        Mon = "Dragon Crew Warrior",
                        NameQ = "AmazonQuest",
                        NumberQ = 1,
                        NameMon = "Dragon Crew Warrior",
                        POSQ = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359),
                        PM = CFrame.new(6416.8759765625, 101.48655700683594, -1390.7337646484375),
                        SPAWNPOINT = "Hydra3",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    }
                }
            elseif lv == 1600 or lv <= 1624 then
                return {
                    {
                        Mon = "Dragon Crew Archer",
                        NameQ = "AmazonQuest",
                        NumberQ = 2,
                        NameMon = "Dragon Crew Archer",
                        POSQ = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359),
                        PM = CFrame.new(6816.013671875, 433.237060546875, 419.8236389160156),
                        SPAWNPOINT = "Hydra3",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    },
                    {
                        Mon = "Dragon Crew Warrior",
                        NameQ = "AmazonQuest",
                        NumberQ = 1,
                        NameMon = "Dragon Crew Warrior",
                        POSQ = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359),
                        PM = CFrame.new(6416.8759765625, 101.48655700683594, -1390.7337646484375),
                        SPAWNPOINT = "Hydra3",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    }
                }
            elseif lv == 1625 or lv <= 1649 then
                return {
                    {
                        Mon = "Female Islander",
                        NameQ = "AmazonQuest2",
                        NumberQ = 1,
                        NameMon = "Female Islander",
                        POSQ = CFrame.new(5448.86133, 601.516174, 751.130676, 0, 0, 1, 0, 1, -0, -1, 0, 0),
                        PM = CFrame.new(4692.7939453125, 797.9766845703125, 858.8480224609375),
                        SPAWNPOINT = "Hydra1",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    }
                }
            elseif lv == 1650 or lv <= 1699 then
                return {
                    {
                        Mon = "Giant Islander",
                        NameQ = "AmazonQuest2",
                        NumberQ = 2,
                        NameMon = "Giant Islander",
                        POSQ = CFrame.new(5448.86133, 601.516174, 751.130676, 0, 0, 1, 0, 1, -0, -1, 0, 0),
                        PM = CFrame.new(4870.81396484375, 669.9534912109375, 5.27170991897583),
                        SPAWNPOINT = "Hydra1",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    },
                    {
                        Mon = "Female Islander",
                        NameQ = "AmazonQuest2",
                        NumberQ = 1,
                        NameMon = "Female Islander",
                        POSQ = CFrame.new(5448.86133, 601.516174, 751.130676, 0, 0, 1, 0, 1, -0, -1, 0, 0),
                        PM = CFrame.new(4692.7939453125, 797.9766845703125, 858.8480224609375),
                        SPAWNPOINT = "Hydra1",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    }
                }
            elseif lv == 1700 or lv <= 1724 then
                return {
                    {
                        Mon = "Marine Commodore",
                        NameQ = "MarineTreeIsland",
                        NumberQ = 1,
                        NameMon = "Marine Commodore",
                        POSQ = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747),
                        PM = CFrame.new(2436.56689453125, 139.19039916992188, -7547.88330078125),
                        SPAWNPOINT = "GreatTree",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    }
                }
            elseif lv == 1725 or lv <= 1774 then
                return {
                    {
                        Mon = "Marine Rear Admiral",
                        NameQ = "MarineTreeIsland",
                        NumberQ = 2,
                        NameMon = "Marine Rear Admiral",
                        POSQ = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747),
                        PM = CFrame.new(3397.01611328125, 160.5498504638672, -6918.708984375),
                        SPAWNPOINT = "GreatTree",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    },
                    {
                        Mon = "Marine Commodore",
                        NameQ = "MarineTreeIsland",
                        NumberQ = 1,
                        NameMon = "Marine Commodore",
                        POSQ = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747),
                        PM = CFrame.new(2436.56689453125, 139.19039916992188, -7547.88330078125),
                        SPAWNPOINT = "GreatTree",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    }
                }
            elseif lv == 1775 or lv <= 1799 then
                return {
                    {
                        Mon = "Fishman Raider",
                        NameQ = "DeepForestIsland3",
                        NumberQ = 1,
                        NameMon = "Fishman Raider",
                        POSQ = CFrame.new(-10581.7, 330.873, -8761.19),
                        PM = CFrame.new(-10693.748046875, 438.3543701171875, -8366.546875),
                        SPAWNPOINT = "PineappleTown",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    }
                }
            elseif lv == 1800 or lv <= 1824 then
                return {
                    {
                        Mon = "Fishman Captain",
                        NameQ = "DeepForestIsland3",
                        NumberQ = 2,
                        NameMon = "Fishman Captain",
                        POSQ = CFrame.new(-10581.7, 330.873, -8761.19),
                        PM = CFrame.new(-10737.0244140625, 397.7919006347656, -9101.337890625),
                        SPAWNPOINT = "PineappleTown",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    },
                    {
                        Mon = "Fishman Raider",
                        NameQ = "DeepForestIsland3",
                        NumberQ = 1,
                        NameMon = "Fishman Raider",
                        POSQ = CFrame.new(-10581.7, 330.873, -8761.19),
                        PM = CFrame.new(-10693.748046875, 438.3543701171875, -8366.546875),
                        SPAWNPOINT = "PineappleTown",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    }
                }
            elseif lv == 1825 or lv <= 1849 then
                return {
                    {
                        Mon = "Forest Pirate",
                        NameQ = "DeepForestIsland",
                        NumberQ = 1,
                        NameMon = "Forest Pirate",
                        POSQ = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247),
                        PM = CFrame.new(-13464.2880859375, 415.4747009277344, -7808.31787109375),
                        SPAWNPOINT = "BigMansion",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    }
                }
            elseif lv == 1850 or lv <= 1899 then
                return {
                    {
                        Mon = "Mythological Pirate",
                        NameQ = "DeepForestIsland",
                        NumberQ = 2,
                        NameMon = "Mythological Pirate",
                        POSQ = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247),
                        PM = CFrame.new(-13508.912109375, 583.1074829101562, -6987.1025390625),
                        SPAWNPOINT = "BigMansion",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    },
                    {
                        Mon = "Forest Pirate",
                        NameQ = "DeepForestIsland",
                        NumberQ = 1,
                        NameMon = "Forest Pirate",
                        POSQ = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247),
                        PM = CFrame.new(-13464.2880859375, 415.4747009277344, -7808.31787109375),
                        SPAWNPOINT = "BigMansion",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    }
                }
            elseif lv == 1900 or lv <= 1924 then
                return {
                    {
                        Mon = "Jungle Pirate",
                        NameQ = "DeepForestIsland2",
                        NumberQ = 1,
                        NameMon = "Jungle Pirate",
                        POSQ = CFrame.new(-12680.4, 389.971, -9902.02),
                        PM = CFrame.new(-11851.4912109375, 405.8158874511719, -10458.501953125),
                        SPAWNPOINT = "PineappleTown",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    }
                }
            elseif lv == 1925 or lv <= 1974 then
                return {
                    {
                        Mon = "Musketeer Pirate",
                        NameQ = "DeepForestIsland2",
                        NumberQ = 2,
                        NameMon = "Musketeer Pirate",
                        POSQ = CFrame.new(-12680.4, 389.971, -9902.02),
                        PM = CFrame.new(-13479.5849609375, 427.251708984375, -9849.0517578125),
                        SPAWNPOINT = "PineappleTown",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    },
                    {
                        Mon = "Jungle Pirate",
                        NameQ = "DeepForestIsland2",
                        NumberQ = 1,
                        NameMon = "Jungle Pirate",
                        POSQ = CFrame.new(-12680.4, 389.971, -9902.02),
                        PM = CFrame.new(-11851.4912109375, 405.8158874511719, -10458.501953125),
                        SPAWNPOINT = "PineappleTown",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    }
                }
            elseif lv == 1975 or lv <= 1999 then
                return {
                    {
                        Mon = "Reborn Skeleton",
                        NameQ = "HauntedQuest1",
                        NumberQ = 1,
                        NameMon = "Reborn Skeleton",
                        POSQ = CFrame.new(-9479.22, 141.215, 5566.09),
                        PM = CFrame.new(-8761.8017578125, 166.1067657470703, 6159.306640625),
                        SPAWNPOINT = "HauntedCastle",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    }
                }
            elseif lv == 2000 or lv <= 2024 then
                return {
                    {
                        Mon = "Living Zombie",
                        NameQ = "HauntedQuest1",
                        NumberQ = 2,
                        NameMon = "Living Zombie",
                        POSQ = CFrame.new(-9479.22, 141.215, 5566.09),
                        PM = CFrame.new(-10094.619140625, 238.80612182617188, 6178.86328125),
                        SPAWNPOINT = "HauntedCastle",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    }
                }
            elseif lv == 2025 or lv <= 2049 then
                return {
                    {
                        Mon = "Demonic Soul",
                        NameQ = "HauntedQuest2",
                        NumberQ = 1,
                        NameMon = "Demonic Soul",
                        POSQ = CFrame.new(-9516.99, 172.017, 6078.47),
                        PM = CFrame.new(-9375.7197265625, 222.93064880371094, 6226.025390625),
                        SPAWNPOINT = "HauntedCastle",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    }
                }
            elseif lv == 2050 or lv <= 2074 then
                return {
                    {
                        Mon = "Posessed Mummy",
                        NameQ = "HauntedQuest2",
                        NumberQ = 2,
                        NameMon = "Posessed Mummy",
                        POSQ = CFrame.new(-9516.99, 172.017, 6078.47),
                        PM = CFrame.new(-9739.19921875, 64.7591781616211, 6146.671875),
                        SPAWNPOINT = "HauntedCastle",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    },
                    {
                        Mon = "Demonic Soul",
                        NameQ = "HauntedQuest2",
                        NumberQ = 1,
                        NameMon = "Demonic Soul",
                        POSQ = CFrame.new(-9516.99, 172.017, 6078.47),
                        PM = CFrame.new(-9375.7197265625, 222.93064880371094, 6226.025390625),
                        SPAWNPOINT = "HauntedCastle",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    }
                }
            elseif lv == 2075 or lv <= 2099 then
                return {
                    {
                        Mon = "Peanut Scout",
                        NameQ = "NutsIslandQuest",
                        NumberQ = 1,
                        NameMon = "Peanut Scout",
                        POSQ = CFrame.new(-2105.53, 37.2496, -10195.5),
                        PM = CFrame.new(-2156.643310546875, 35.747806549072266, -9993.7578125),
                        SPAWNPOINT = "Peanut",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    }
                }
            elseif lv == 2100 or lv <= 2124 then
                return {
                    {
                        Mon = "Peanut President",
                        NameQ = "NutsIslandQuest",
                        NumberQ = 2,
                        NameMon = "Peanut President",
                        POSQ = CFrame.new(-2105.53, 37.2496, -10195.5),
                        PM = CFrame.new(-2208.377685546875, 140.69236755371094, -10538.0849609375),
                        SPAWNPOINT = "Peanut",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    },
                    {
                        Mon = "Peanut Scout",
                        NameQ = "NutsIslandQuest",
                        NumberQ = 1,
                        NameMon = "Peanut Scout",
                        POSQ = CFrame.new(-2105.53, 37.2496, -10195.5),
                        PM = CFrame.new(-2156.643310546875, 35.747806549072266, -9993.7578125),
                        SPAWNPOINT = "Peanut",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    }
                }
            elseif lv == 2125 or lv <= 2149 then
                return {
                    {
                        Mon = "Ice Cream Chef",
                        NameQ = "IceCreamIslandQuest",
                        NumberQ = 1,
                        NameMon = "Ice Cream Chef",
                        POSQ = CFrame.new(-819.377, 64.926, -10967.3),
                        PM = CFrame.new(-804.8463134765625, 210.32603454589844, -10976.359375),
                        SPAWNPOINT = "IceCream",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    }
                }
            elseif lv == 2150 or lv <= 2199 then
                return {
                    {
                        Mon = "Ice Cream Commander",
                        NameQ = "IceCreamIslandQuest",
                        NumberQ = 2,
                        NameMon = "Ice Cream Commander",
                        POSQ = CFrame.new(-819.377, 64.926, -10967.3),
                        PM = CFrame.new(-578.7010498046875, 199.70787048339844, -11290.943359375),
                        SPAWNPOINT = "IceCream",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    },
                    {
                        Mon = "Ice Cream Chef",
                        NameQ = "IceCreamIslandQuest",
                        NumberQ = 1,
                        NameMon = "Ice Cream Chef",
                        POSQ = CFrame.new(-819.377, 64.926, -10967.3),
                        PM = CFrame.new(-804.8463134765625, 210.32603454589844, -10976.359375),
                        SPAWNPOINT = "IceCream",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    }
                }
            elseif lv == 2200 or lv <= 2224 then
                return {
                    {
                        Mon = "Cookie Crafter",
                        NameQ = "CakeQuest1",
                        NumberQ = 1,
                        NameMon = "Cookie Crafter",
                        POSQ = CFrame.new(-2022.3, 36.9276, -12031),
                        PM = CFrame.new(-2272.905517578125, 90.25160217285156, -12149.7080078125),
                        SPAWNPOINT = "Loaf",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    }
                }
            elseif lv == 2225 or lv <= 2249 then
                return {
                    {
                        Mon = "Cake Guard",
                        NameQ = "CakeQuest1",
                        NumberQ = 2,
                        NameMon = "Cake Guard",
                        POSQ = CFrame.new(-2022.3, 36.9276, -12031),
                        PM = CFrame.new(-1483.501220703125, 144.16310119628906, -12205.408203125),
                        SPAWNPOINT = "Loaf",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    },
                    {
                        Mon = "Cookie Crafter",
                        NameQ = "CakeQuest1",
                        NumberQ = 1,
                        NameMon = "Cookie Crafter",
                        POSQ = CFrame.new(-2022.3, 36.9276, -12031),
                        PM = CFrame.new(-2272.905517578125, 90.25160217285156, -12149.7080078125),
                        SPAWNPOINT = "Loaf",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    }
                }
            elseif lv == 2250 or lv <= 2274 then
                return {
                    {
                        Mon = "Baking Staff",
                        NameQ = "CakeQuest2",
                        NumberQ = 1,
                        NameMon = "Baking Staff",
                        POSQ = CFrame.new(-1928.32, 37.7297, -12840.6),
                        PM = CFrame.new(-1922.0404052734375, 104.48565673828125, -12808.5302734375),
                        SPAWNPOINT = "Loaf",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    }
                }
            elseif lv == 2275 or lv <= 2299 then   
                return {
                    {
                        Mon = "Head Baker",
                        NameQ = "CakeQuest2",
                        NumberQ = 2,
                        NameMon = "Head Baker",
                        POSQ = CFrame.new(-1928.32, 37.7297, -12840.6),
                        PM = CFrame.new(-2294.600830078125, 99.4260482788086, -12828.8955078125),
                        SPAWNPOINT = "Loaf",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    }
                }
            elseif lv == 2300 or lv <= 2324 then   
                return {
                    {
                        Mon = "Cocoa Warrior",
                        NameQ = "ChocQuest1",
                        NumberQ = 1,
                        NameMon = "Cocoa Warrior",
                        POSQ = CFrame.new(232.03175354003906, 24.760034561157227, -12198.2646484375),
                        PM = CFrame.new(124.36067199707031, 146.2567596435547, -12174.5439453125),
                        SPAWNPOINT = "Chocolate",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    }
                }
            elseif lv == 2325 or lv <= 2349 then
                return {
                    {
                        Mon = "Chocolate Bar Battler",
                        NameQ = "ChocQuest1",
                        NumberQ = 2,
                        NameMon = "Chocolate Bar Battler",
                        POSQ = CFrame.new(232.03175354003906, 24.760034561157227, -12198.2646484375),
                        PM = CFrame.new(701.0734252929688, 194.59474182128906, -12370.490234375),
                        SPAWNPOINT = "Chocolate",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    },
                    {
                        Mon = "Cocoa Warrior",
                        NameQ = "ChocQuest1",
                        NumberQ = 1,
                        NameMon = "Cocoa Warrior",
                        POSQ = CFrame.new(232.03175354003906, 24.760034561157227, -12198.2646484375),
                        PM = CFrame.new(124.36067199707031, 146.2567596435547, -12174.5439453125),
                        SPAWNPOINT = "Chocolate",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    }
                }
            elseif lv == 2350 or lv <= 2374 then
                return {
                    {
                        Mon = "Sweet Thief",
                        NameQ = "ChocQuest2",
                        NumberQ = 1,
                        NameMon = "Sweet Thief",
                        POSQ = CFrame.new(149.96730041503906, 24.81962013244629, -12775.3447265625),
                        PM = CFrame.new(-126.31912994384766, 88.32859802246094, -12870.6083984375),
                        SPAWNPOINT = "Chocolate",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    },
                    {
                        Mon = "Chocolate Bar Battler",
                        NameQ = "ChocQuest1",
                        NumberQ = 2,
                        NameMon = "Chocolate Bar Battler",
                        POSQ = CFrame.new(232.03175354003906, 24.760034561157227, -12198.2646484375),
                        PM = CFrame.new(701.0734252929688, 194.59474182128906, -12370.490234375),
                        SPAWNPOINT = "Chocolate",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    }
                }
            elseif lv == 2375 or lv <= 2399 then
                return {
                    {
                        Mon = "Candy Rebel",
                        NameQ = "ChocQuest2",
                        NumberQ = 2,
                        NameMon = "Candy Rebel",
                        POSQ = CFrame.new(149.96730041503906, 24.81962013244629, -12775.3447265625),
                        PM = CFrame.new(-126.31912994384766, 88.32859802246094, -12870.6083984375),
                        SPAWNPOINT = "Chocolate",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    },
                    {
                        Mon = "Sweet Thief",
                        NameQ = "ChocQuest2",
                        NumberQ = 1,
                        NameMon = "Sweet Thief",
                        POSQ = CFrame.new(149.96730041503906, 24.81962013244629, -12775.3447265625),
                        PM = CFrame.new(-126.31912994384766, 88.32859802246094, -12870.6083984375),
                        SPAWNPOINT = "Chocolate",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    }
                }
            elseif lv == 2400 or lv <= 2424 then
                return {
                    {
                        Mon = "Candy Pirate",
                        NameQ = "CandyQuest1",
                        NumberQ = 1,
                        NameMon = "Candy Pirate",
                        POSQ = CFrame.new(-1148.5087890625, 22.378950119018555, -14446.2646484375),
                        PM = CFrame.new(-1426.6827392578125, 116.78028869628906, -14605.068359375),
                        SPAWNPOINT = "CandyCane",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    }
                }
            elseif lv == 2375 or lv <= 2449 then
                return {
                    {
                        Mon = "Candy Rebel",
                        NameQ = "ChocQuest2",
                        NumberQ = 2,
                        NameMon = "Candy Rebel",
                        POSQ = CFrame.new(149.96730041503906, 24.81962013244629, -12775.3447265625),
                        PM = CFrame.new(-126.31912994384766, 88.32859802246094, -12870.6083984375),
                        SPAWNPOINT = "Chocolate",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    }
                }
            elseif lv == 2450 or lv <= 2474 then
                return {
                    {
                        Mon = "Isle Outlaw [Lv. 2450]",
                        NameQ = "TikiQuest1",
                        NumberQ = 1,
                        NameMon = "Isle Outlaw",
                        POSQ = CFrame.new(-16547.6, 55.709, -173.622),
                        PM = CFrame.new(-16121.0654, 117.121826, -97.5686493, 0.80262816, 3.14794129e-08, 0.596479654, -5.11178477e-08, 1, 1.60092792e-08, -0.596479654, -4.33402541e-08, 0.80262816),
                        SPAWNPOINT = "Tiki",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    }
                }
            elseif lv == 2475 or lv <= 2499 then
                return {
                    {
                        Mon = "Island Boy [Lv. 2450]",
                        NameQ = "TikiQuest1",
                        NumberQ = 2,
                        NameMon = "Island Boy",
                        POSQ = CFrame.new(-16547.6, 55.709, -173.622),
                        PM = CFrame.new(-16753.1992, 126.943596, -278.501282, -0.99564898, 2.75622192e-09, -0.0931834728, 1.79436757e-10, 1, 2.76611924e-08, 0.0931834728, 2.75241163e-08, -0.99564898),
                        SPAWNPOINT = "Tiki",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    }
                }
            elseif lv == 2500 or lv <= 2524 then
                return {
                    {
                        Mon = "Sun-kissed Warrior [Lv. 2500]",
                        NameQ = "TikiQuest2",
                        NumberQ = 1,
                        NameMon = "Sun-kissed Warrior",
                        POSQ = CFrame.new(-16539.3, 55.558, 1051.05),
                        PM = CFrame.new(-16217.9209, 137.084854, 1025.23389, 0.454208106, -1.01922515e-08, 0.890895605, 7.26324723e-10, 1, 1.10701501e-08, -0.890895605, -4.38107284e-09, 0.454208106),
                        SPAWNPOINT = "Tiki",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    }
                }
            elseif lv == 2525 or lv <= 2550 then
                return {
                    {
                        Mon = "Isle Champions [Lv. 2500]",
                        NameQ = "TikiQuest2",
                        NumberQ = 2,
                        NameMon = "Isle Champion",
                        POSQ = CFrame.new(-16539.3, 55.558, 1051.05),
                        PM = CFrame.new(-16748.9434, 126.859428, 1014.58954, -0.85647732, 8.35623339e-08, 0.516184688, 4.26552411e-08, 1, -9.11090297e-08, -0.516184688, -5.60148372e-08, -0.85647732),
                        SPAWNPOINT = "Tiki",
                        Warp = {
                            Use = false,
                            Position =  nil,
                            Magnet = nil
                        }
                    }
                }
            end
        end
    end
---
game.ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("CommF_")
local j = game:GetService("UserInputService")
local c = game:GetService("ReplicatedStorage")
local e = c:WaitForChild("Remotes")
local E = e:WaitForChild("CommF_")
local a = e:WaitForChild("CommE")
local l = game:GetService("HttpService")
local t = game:GetService("RunService")
local q = workspace:WaitForChild("Enemies")
local s = game:GetService("Teams")
local J = game:GetService("Players")
local W = game:GetService("VirtualUser")
local x = J.LocalPlayer
local N = require(x.PlayerScripts.CombatFramework)
local D = require(x.PlayerScripts.CombatFramework.CameraShaker.CameraShakeInstance)
local h = require(c.CombatFramework.RigLib)
local o = require(x.PlayerScripts.CombatFramework.Particle)
local A = {Combat = require(x.PlayerScripts.CombatFramework)}

getgenv().increment = nil
local Q = require(x.PlayerScripts.CombatFramework)
local Y = debug.getupvalues(Q)[2]
function Maxincrement()
    local H = #Y.activeController.anims.basic
    return H
end
cd = 0
local function G()
    task.spawn(
        function()
            pcall(
                function()
                    if tick() >= cd then
                        if game.PlaceId == 2753915549 then
                            cd = tick() + 1.0E-10
                        elseif game.PlaceId == 4442272183 then
                            cd = tick() + 1.0E-6
                        else
                            cd = tick() + 1.0E-10
                        end
                        Y.activeController:attack()
                    end
                end
            )
        end
    )
end
getgenv().NinoGetWeapon = function()
    local p13 = Y.activeController
    local wea = p13.blades[1]
    if not wea then return end
    while wea.Parent ~= game.Players.LocalPlayer.Character do wea = wea.Parent end
    return wea
end
local C = require(game.ReplicatedStorage.Util.CameraShaker):Stop()
task.spawn(
    function()
        while true do
            task.wait()
            pcall(
                function()
                    if _G.FastAttack and _G.FastAttackT then
                            Y.activeController.focusStart = 0
                            Y.activeController.hitboxMagnitude = 200
                            Y.activeController.timeToNextBlock = 0
                            Y.activeController.timeToNextAttack = 0
                            Y.activeController.attacking = false
                            if Maxincrement() ~= nil then
                                Y.activeController.increment = tonumber(Maxincrement())
                            end
                        else
                            Y.activeController.hitboxMagnitude = 200
                            if Maxincrement() ~= nil then
                                Y.activeController.increment = tonumber(Maxincrement())
                            end
                    end
                end
            )
        end
    end
)
local N = require(x.PlayerScripts.CombatFramework)
local D = require(x.PlayerScripts.CombatFramework.CameraShaker.CameraShakeInstance)
local h = require(c.CombatFramework.RigLib)
local o = require(x.PlayerScripts.CombatFramework.Particle)
local A = {Combat = require(x.PlayerScripts.CombatFramework)}
o.play = function()
    return
end
h.wrapAttackAnimationAsync = function(L, Z, F, m, H)
    local z = h.getBladeHits(Z, F, m)
    if z then
        if _G.FastAttack  then
            L:Play(1.0E-5, 1.0E-5, 1.0E-5)
            H(z)
        else
            H(z)
        end
    end
end

task.spawn(
    function()
        pcall(
            function()
                local w = require(x.PlayerScripts.CombatFramework.CameraShaker)
                w.CameraShakeInstance.CameraShakeState = {FadingIn = 3, FadingOut = 2, Sustained = 0, Inactive = 1}
            end
        )
    end
)
]]
getgenv().hit = function()
    task.spawn(G)
end
task.spawn(function()
    while true do task.wait()
        if _G.FastAttack  then
            pcall(getgenv().hit)
        end
    end
end)
a = tick()
task.spawn(function()
    while true do task.wait(.1)
        pcall(function()
            if _G.FastAttack and _G.FastAttackT then
                if tonumber(#getHits(55)) > 0 then
                    if tick() > a + 0.175 then
                        game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(_G.Weapon))
                        Y.activeController:oldClientFix()
                        Y.activeController:new()
                        a = tick()
                    end
                end
            end
        end)
    end
end)
task.spawn(
    function()
        while true do
            task.wait(0.3)
            coroutine.wrap(
                function()
                    pcall(
                        function()
                            game:GetService("ReplicatedStorage").RigControllerEvent:FireServer(
                                "weaponChange",
                                tostring(_G.Weapon)
                            )
                            game:GetService("ReplicatedStorage").RigControllerEvent:FireServer(
                                "unequipWeapon",
                                tostring(_G.Weapon)
                            )
                        end
                    )
                end
            )()
        end
    end
)

    task.spawn( function()
        while task.wait() do
            pcall(function()
                if sethiddenproperty then
                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                end
            end)
        end
    end)
    task.spawn(function()
        while task.wait() do 
            if _G.FastAttack and _G.FastAttackT then
                coroutine.wrap(function()
                    getgenv().hit()
                    game:GetService("VirtualUser"):CaptureController()
                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                end)()
            end
        end
    end)

    task.spawn(function()
        while true do wait(1)
            pcall(function()
                if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
                    getgenv().E_Tools = tostring(r.Character:FindFirstChildOfClass("Tool").Name)
                end
                if game.Players.LocalPlayer.Backpack:FindFirstChild(getgenv().E_Tools) then
                    if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
                        game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):Remove()
                    end
                end
            end)
        end
    end)

local Client = game.Players.LocalPlayer
local STOP = require(Client.PlayerScripts.CombatFramework.Particle)
local STOPRL = require(game:GetService("ReplicatedStorage").CombatFramework.RigLib)
local plr = game.Players.LocalPlayer
local CbFw = debug.getupvalues(require(game.Players.LocalPlayer.PlayerScripts.CombatFramework))
local CbFw2 = CbFw[2]
local C = require(game.ReplicatedStorage.Util.CameraShaker):Stop()
if not shared.orl then
    shared.orl = STOPRL.wrapAttackAnimationAsync
end
if not shared.cpc then
    shared.cpc = STOP.play 
end
task.spawn(function()
    game:GetService("RunService").Stepped:Connect(function()
        STOPRL.wrapAttackAnimationAsync = function(a,b,c,d,func)
            local Hits = STOPRL.getBladeHits(b,c,d)
            if Hits then
                STOP.play = function() end
                a:Play(0.01,0.01,0.01)
                func(Hits)
                STOP.play = shared.cpc
                wait(a.length * 0.5)
                a:Stop()
            end
        end
    end)
end)
task.spawn(function()
    local CombatFrameworkOld = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
    local CombatFrameworkR = debug.getupvalues(CombatFrameworkOld)[2]
    function maxincrement()
        return #CombatFrameworkR.activeController.anims.basic - 1
    end
    task.spawn(function()
        local old
        old = hookmetamethod(game, "__namecall",function(self,...)
            local method = getnamecallmethod() local args = {...}
            if method:lower() == "fireserver" then
                if args[1] == "hit" then
                    args[3] = maxincrement()
                    return old(self,unpack(args))
                end 
            end
        return old(self,...)
        end) 
    end)
end)
function GetCurrentBlade() 
    local p13 = CbFw2.activeController
    local ret = p13.blades[1]
    if not ret then 
    return 
    end
    while ret.Parent ~= game.Players.LocalPlayer.Character do 
        ret = ret.Parent end
    return ret
end
function getHits(Size)
    local Hits = {}
    local Client = game.Players.LocalPlayer
    local Enemies = workspace.Enemies:GetChildren()
    local Characters = workspace.Characters:GetChildren()
    for i = 1, #Enemies do
        local v = Enemies[i]
        local Human = v:FindFirstChildOfClass("Humanoid")
        if
            Human and Human.RootPart and Human.Health > 0 and
                Client:DistanceFromCharacter(Human.RootPart.Position) < Size + 5
        then
            table.insert(Hits, Human.RootPart)
        end
    end
    for i = 1, #Characters do
        local v = Characters[i]
        if v ~= Client.Character then
            local Human = v:FindFirstChildOfClass("Humanoid")
            if
                Human and Human.RootPart and Human.Health > 0 and
                    Client:DistanceFromCharacter(Human.RootPart.Position) < Size + 5
            then
                table.insert(Hits, Human.RootPart)
            end
        end
    end
    return Hits
end
function Fast(Num)
    if Num == 1 then
        local AC = CbFw2.activeController
        for Index = 1,1 do   
            local bladehit = getHits(60)
            local cac = {}
            local hash = {}
            for k, v in pairs(bladehit) do
                if v.Parent:FindFirstChild("HumanoidRootPart") and not hash[v.Parent]  then
                    table.insert(cac, v.Parent.HumanoidRootPart)
                    hash[v.Parent] = true
                end
            end
            bladehit = cac
            if #bladehit > 0 then
                local u8 = debug.getupvalue(AC.attack, 5)
                local u9 = debug.getupvalue(AC.attack, 6)
                local u7 = debug.getupvalue(AC.attack, 4)
                local u10 = debug.getupvalue(AC.attack, 7)
                local u12 = (u8 * 798405 + u7 * 727595) % u9
                local u13 = u7 * 798405
                (function()
                    u12 = (u12 * u9 + u13) % 1099511627776
                    u8 = math.floor(u12 / u9)
                    u7 = u12 - u8 * u9
                end)()
                u10 = u10 + 1
                debug.setupvalue(AC.attack, 5, u8)
                debug.setupvalue(AC.attack, 6, u9)
                debug.setupvalue(AC.attack, 4, u7)
                debug.setupvalue(AC.attack, 7, u10)
                pcall(function()
                    if plr.Character:FindFirstChildOfClass("Tool") and AC.blades and AC.blades[1] then
                        AC.animator.anims.basic[1]:Play(0.01,0.01,0.01)
                        game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(GetCurrentBlade()))
                        game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(u12 / 1099511627776 * 16777215), u10)
                        game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, maxincrement(), "")
                    end
                end)
            end
        end
    elseif Num == 0 then
        local AC = CbFw2.activeController
        for Index = 1,1 do
            local bladehit = getHits(60)
            local cac = {}
            local hash = {}
            for k, v in pairs(bladehit) do
                if v.Parent:FindFirstChild("HumanoidRootPart") and not hash[v.Parent]  then
                    table.insert(cac, v.Parent.HumanoidRootPart)
                    hash[v.Parent] = true
                end
            end
            bladehit = cac
            if #bladehit > 0 then
                pcall(function()
                    if plr.Character:FindFirstChildOfClass("Tool") and AC.blades and AC.blades[1] then
                        for i,CombatFrameworkR in pairs(CbFw) do
                            coroutine.wrap(function()
                                pcall(function()
                                    if i == 2 then
                                        CombatFrameworkR.activeController.hitboxMagnitude = 80
                                        CombatFrameworkR.activeController.timeToNextAttack = 0
                                        CombatFrameworkR.activeController.attacking = false
                                        CombatFrameworkR.activeController.hitSound = 0
                                        CombatFrameworkR.activeController.focusStart = 1655503339.0980349
                                        CombatFrameworkR.activeController.increment = maxincrement()
                                        CombatFrameworkR.activeController.currentAttackTrack = 0
                                        CombatFrameworkR.activeController.humanoid.AutoRotate = true
                                        CombatFrameworkR.activeController.anims.basic[1] = "rbxassetid://4538134534"
                                        CombatFrameworkR.activeController.anims.basic[2] = "rbxassetid://4538138028"
                                        CombatFrameworkR.activeController.anims.basic[3] = "rbxassetid://4538192753"
                                        CombatFrameworkR.activeController:attack()
                                    end
                                end)
                            end)()
                        end
                    end
                end)
            end
        end
    end
end



topos = function(p)
task.spawn(function()
pcall(function()
    if r:DistanceFromCharacter(p.Position) <= 200 then
        r.Character.HumanoidRootPart.CFrame = p
    else
        if not game.Players.LocalPlayer.Character:FindFirstChild("Root") then
            local K = Instance.new("Part", game.Players.LocalPlayer.Character)
            K.Size = Vector3.new(1, 0.5, 1)
            K.Name = "Root"
            K.Anchored = true
            K.Transparency = 1
            K.CanCollide = false
            K.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0)
        end
        local U = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - p.Position).Magnitude
        local z = game:service("TweenService")
        local B =TweenInfo.new((p.Position - game.Players.LocalPlayer.Character.Root.Position).Magnitude / 300,Enum.EasingStyle.Linear)
        local S, g =
        pcall(function()
            local q = z:Create(game.Players.LocalPlayer.Character.Root, B, {CFrame = p})
            q:Play()
        end)
        if not S then
            return g
        end
        game.Players.LocalPlayer.Character.Root.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        if S and game.Players.LocalPlayer.Character:FindFirstChild("Root") then
            pcall(function()
                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - p.Position).Magnitude >= 20 then
                    spawn(function()
                        pcall(function()
                            if (game.Players.LocalPlayer.Character.Root.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150 then
                                game.Players.LocalPlayer.Character.Root.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                            else
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.Root.CFrame
                            end
                        end)
                    end)
                elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - p.Position).Magnitude >= 10 and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - p.Position).Magnitude < 20 then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
                elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - p.Position).Magnitude <10 then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
                end
            end)
        end
    end
end)
end)
end
]]

function topos(CFgo)
    local tweenfunc = {}
    if (game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - CFgo.Position).Magnitude <= 250 then
        pcall(function()
            _G.Tween:Cancel()
            game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.CFrame = CFgo
            return
        end)
    end
    local tween_s = game:service"TweenService"
    local info = TweenInfo.new((game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - CFgo.Position).Magnitude / 275, Enum.EasingStyle.Linear)
    _G.Tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {
        CFrame = CFgo
    })
    _G.Tween:Play()
    function tweenfunc:Stop()
        _G.Tween:Cancel()
    end
    return tweenfunc
end

function Buso()
    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
    end
end

function EquipWeapon(ToolSe)
    if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
        getgenv().tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
        wait(.1)
        game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
    end
end

function UseCode(Code)
    game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(Code)
end

task.spawn(function()
    while task.wait() do
        pcall(function()
            if _G.AutoRedeemCodeSelect then
                for i = 1, #_G.SelectCode do
                    v = _G.SelectCode[i]
                    UseCode(v)
                end
            elseif _G.AutoRedeemCodeAll then
                for i = 1, #Code do
                    v = Code[i]
                    UseCode(v)
                end
            elseif _G.AutoRedeemCodeAt then
                if game.Players.LocalPlayer.Data.Level.Value >= _G.CodeAt then
                    for i = 1, #Code do
                        v = Code[i]
                        UseCode(v)
                    end
                end
            end
        end)
    end
end)

function GetDistance(target)     return (target.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude end

task.spawn(function()
    while task.wait() do
        pcall(function()
            if _G.EnabledW then
                game:GetService("VirtualInputManager"):SendKeyEvent(true,tostring("W"),false,game)
            end
        end)
    end
end)

task.spawn(function()
    while task.wait() do
        pcall(function()
            if _G.AutoMysticIsland then
                if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                    game.Players.LocalPlayer.Character.Humanoid.Sit = false
                    for i,v in pairs(game:GetService("Workspace").Map.MysticIsland.npcspawn:GetChildren()) do
                        if tonumber(i) == tonumber(#game:GetService("Workspace").Map.MysticIsland.npcspawn:GetChildren()) then
                            topos(v.CFrame)
                        end
                    end
                else
                    if _G.HopFindIsland then
                        Hop()
                    end
                end
            end
        end)
    end
end)

task.spawn(function()
    repeat task.wait() until _G.GrabChestMystic
    while task.wait() do
        pcall(function()
            if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                if _G.GrabChestMystic then
                    for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
                        repeat wait()
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
                        until not _G.GrabChestMystic or not v.Part
                    end
                end
            end
        end)
    end
end)

getgenv().CheckItemer = function(NamePara)
    for i,v in pairs(game.ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("getInventory")) do
        if v.Name == NamePara then  
            if v.Count then
                return v.Count
            else
                return true
            end
        end
    end
    return false
end

task.spawn(function()
    repeat task.wait() until _G.AutoGodHuman
    while task.wait() do
        pcall(function()
            if _G.AutoGodHuman then
                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman",true) == "Bring me 20 Fish Tails, 20 Magma Ore, 10 Dragon Scales and 10 Mystic Droplets." then
                    if getgenv().CheckItemer("Dragon Scale") == false or getgenv().CheckItemer("Dragon Scale") < 10 then
                        if ThirdWorld then
                            game.Players.LocalPlayer.Data.Level.Value = 1575
                            _G.AutoFarmLevel = true
                        else
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
                        end
                    elseif getgenv().CheckItemer("Fish Tail") == false or getgenv().CheckItemer("Fish Tail") < 20 then
                        if ThirdWorld then
                            game.Players.LocalPlayer.Data.Level.Value = 1775
                            _G.AutoFarmLevel = true
                        else
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
                        end
                    elseif getgenv().CheckItemer("Mystic Droplet") == false or getgenv().CheckItemer("Mystic Droplet") < 10 then
                        if NewWorld then
                            game.Players.LocalPlayer.Data.Level.Value = 1425
                            _G.AutoFarmLevel = true
                        else
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                        end
                    elseif getgenv().CheckItemer("Magma Ore") == false or getgenv().CheckItemer("Magma Ore") < 20 then
                        if NewWorld then
                            game.Players.LocalPlayer.Data.Level.Value = 1175
                            _G.AutoFarmLevel = true
                        else
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                        end  
                    end
                elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman",true) == 3 then
                    game.StarterGui:SetCore("SendNotification", {
                        Title = "Normal Hub Mobile",
                        Text = "Mastery < Mastery",
                        Icon = "rbxassetid://11995210995",
                        Duration = 10,
                    })
                    wait(15)
                else
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
                end
            end
        end)
    end
end)

task.spawn(function()
    repeat task.wait() until _G.AutoSuperhuman or _G.AutoGodHuman or _G.AutoDragonTalon or _G.AutoElectricClaw or _G.AutoDeathStep or _G.AutoSharkmanKarate
    while task.wait() do
        pcall(function()
            if _G.AutoSuperhuman or _G.AutoGodHuman or _G.AutoDragonTalon or _G.AutoElectricClaw or _G.AutoDeathStep or _G.AutoSharkmanKarate then
                for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v:IsA("Tool") and v.ToolTip == "Melee" then
                        _G.Weapon = v.Name
                    end
                end
            end
        end)
    end
end)

task.spawn(function()
    repeat task.wait() until _G.AutoSuperhuman
    while task.wait() do
        pcall(function()
            if _G.AutoSuperhuman then
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") or game.Players.LocalPlayer.Character:FindFirstChild("Combat") then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
                elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 300 or game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 300 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
                elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 300 or game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 300 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
                    wait(0.3)
                elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 300 or game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 300 then
                    if game.Players.LocalPlayer.Data.Fragments.Value >= 1500 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
                    else
                        game.StarterGui:SetCore("SendNotification", {
                            Title = "Normal Hub Mobile",
                            Text = "Request 1500 Fragments",
                            Icon = "rbxassetid://11995210995",
                            Duration = 10,
                        })
                        wait(15)
                    end
                elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 300 or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 300 then
                    game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuySuperhuman")
                    wait(0.3)
                elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") then
                else
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
                end
            end
        end)
    end
end)

task.spawn(function()
    while task.wait() do
        pcall(function()
            if _G.AutoDragonTalon then
                if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Talon") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Talon") then
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 400 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones", "Buy", 1, 1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
                    end  
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw") and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 400 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones", "Buy", 1, 1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
                    end  
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value <= 399 then
                    end 
                else 
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
                end
            end
        end)
    end
end)

task.spawn(function()
    while task.wait() do
        pcall(function()
            if ThirdWorld and _G.AutoElectricClaw then
                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw",true) == 0 then
                    if not game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") and not game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
                    else
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
                    end
                else
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
                end
                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw",true) == 4 then
                    if game.Players.LocalPlayer.Character:FindFirstChild("Electro") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") then
                        if (game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 400) or (game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 400) then
                            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw",true) == 4 then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw","Start")
                                local args = {
                                    [1] = "requestEntrance",
                                    [2] = Vector3.new(-12463.6025390625, 378.3270568847656, -7466.0830078125)
                                }
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                            elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw",true) == 0 then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
                            end
                        end
                    end
                end
            end
        end)
    end
end)
task.spawn(function()
    while task.wait() do
        pcall(function()
            if _G.AutoSharkmanKarate then
                if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true), "key") then
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") then
                        if (game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 400) or (game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 400) then
                            if game.Players.LocalPlayer.Backpack:FindFirstChild("Water Key") or game.Players.LocalPlayer.Character:FindFirstChild("Water Key") then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",false)
                            else
                                if game:GetService("Workspace").Enemies:FindFirstChild("Tide Keeper") or game:GetService("ReplicatedStorage"):FindFirstChild("Tide Keeper") and NewWorld then
                                    topos(CFrame.new(-3552.217529296875, 168.43704223632812, -11451.408203125))
                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == "Tide Keeper" then
                                            repeat wait()
                                                Buso()
                                                EquipWeapon(_G.Weapon)
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Head.CanCollide = false
                                                v.Humanoid.WalkSpeed = 0
                                                v.HumanoidRootPart.Size = Vector3.new(7,5,5)
                                                topos(v.HumanoidRootPart.CFrame * CFrame.new(0,30,20))
                                                _G.FastAttack = true
                                                if v.Humanoid:FindFirstChild("Animator") then
                                                    v.Humanoid.Animator:Destroy()
                                                end
                                            until not v:FindFirstChild("HumanoidRootPart") or not v:FindFirstChild("Humanoid") or not _G.AutoSharkmanKarate or v.Humanoid.Health <= 0
                                        end
                                    end
                                else
                                    _G.FastAttack = false
                                    while task.wait() do
                                        pcall(function()
                                            Hop()
                                        end)
                                    end
                                end
                            end
                        end
                    else
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
                    end
                else
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
                end
            end
        end)
    end
end)

task.spawn(function()
    while task.wait() do
        pcall(function()
            if _G.AutoDeathStep then
                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep",true) == 1 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
                else
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") then
                        if (game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value > 399) or (game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value > 399) then
                            if game:GetService("Workspace").Map.IceCastle.Hall:FindFirstChild("LibraryDoor") and NewWorld then
                                if game.Players.LocalPlayer.Backpack:FindFirstChild("Library Key") or game.Players.LocalPlayer.Character:FindFirstChild("Library Key") then
                                    topos(CFrame.new(6377.0874, 296.634766, -6843.89404, -0.830482662, -6.71425937e-08, -0.557044506, -8.02240834e-08, 1, -9.29703592e-10, 0.557044506, 4.39162804e-08, -0.830482662))
                                else
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Awakened Ice Admiral") then
                                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if v.Name == "Awakened Ice Admiral" then
                                                repeat wait()
                                                    Buso()
                                                    EquipWeapon(_G.Weapon)
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.Head.CanCollide = false
                                                    v.Humanoid.WalkSpeed = 0
                                                    v.HumanoidRootPart.Size = Vector3.new(7,5,5)
                                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(0,30,20))
                                                    _G.FastAttack = true
                                                    if v.Humanoid:FindFirstChild("Animator") then
                                                        v.Humanoid.Animator:Destroy()
                                                    end
                                                until not v:FindFirstChild("HumanoidRootPart") or not v:FindFirstChild("Humanoid") or _G.AutoDeathStep == false or v.Humanoid.Health <= 0
                                            end
                                        end
                                    elseif game:GetService("ReplicatedStorage"):FindFirstChild("Awakened Ice Admiral") then	
                                        topos(game:GetService("ReplicatedStorage"):FindFirstChild("Awakened Ice Admiral").HumanoidRootPart.CFrame * CFrame.new(0,20,0))
                                    else
                                        while task.wait() do
                                            pcall(function()
                                                Hop()
                                            end)
                                        end
                                    end
                                end
                            else
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
                            end
                        end
                    else
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
                    end
                end
            end
        end)
    end
end)

if not syn then isnetworkowner = function() return true end end
getgenv().BringMobs = function(F, z)
    PosMon = F
    NameMon = z
end

task.spawn(function()
    while task.wait() do
        pcall(function()
            if PosMon then
                LV()
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if syn then
                        if v.Name == NameMon and v.Name ~= "Ice Admiral" and v.Name ~= "Don Swan" and v.Name ~= "Saber Expert" and v.Name ~= "Longma" and  v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                            if isnetworkowner(v.HumanoidRootPart) then
                                v.HumanoidRootPart.CFrame = PosMon
                                v.Humanoid.JumpPower = 0
                                v.Humanoid.WalkSpeed = 0
                                v.HumanoidRootPart.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(2,2,2)
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                                v.Humanoid:ChangeState(11)
                            end
                        end
                    else
                        if v.Name == NameMon and v.Name ~= "Ice Admiral" and v.Name ~= "Don Swan" and v.Name ~= "Saber Expert" and v.Name ~= "Longma" and  v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                            v.HumanoidRootPart.CFrame = PosMon
                            v.Humanoid.JumpPower = 0
                            v.Humanoid.WalkSpeed = 0
                            v.HumanoidRootPart.CanCollide = false
                            v.HumanoidRootPart.Size = Vector3.new(2,2,2)
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                            v.Humanoid:ChangeState(11)
                        end
                    end
                end
            end
        end)
    end
end)


function getTrophies(Amount)
    for i,v in pairs(game:GetService("Workspace").Map["Haunted Castle"].Trophies.Quest:GetChildren()) do
        if v.Handle.Orientation then
            local NameTro = tonumber(tostring(v.Name:match("%d+")))
            if tonumber(Amount) == tonumber(NameTro) then
                if tonumber(v.Handle.Orientation.Y) == 90 or tonumber(v.Handle.Orientation.Y) == -90 then
                    return {"A", 180, -180}
                elseif tonumber(v.Handle.Orientation.Y) == 0 or tonumber(v.Handle.Orientation.Y) == 180 then
                    return {"B", -90, 90}
                end
            end
        end
    end
end

function GetFirePlacard(Number,Side)
    if tostring(game:GetService("Workspace").Map["Haunted Castle"]["Placard"..Number][Side].Indicator.BrickColor) ~= "Pearl" then
        fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Placard"..Number][Side].ClickDetector)
    end
end

task.spawn(function()
    repeat task.wait() until _G.AutoSoulGuitar
    while task.wait() do
        pcall(function()
            if _G.AutoSoulGuitar then
                if ThirdWorld then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent", 2)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent", 2, true)
                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress","Check") == nil then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent", 2)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent", 2, true)
                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress","Check").Swamp == false then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Living Zombie" then
                                    if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0 then
                                        repeat task.wait()
                                            EquipWeapon(_G.Weapon)
                                            Buso()
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Head.CanCollide = false 
                                            topos(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
                                            _G.FastAttack = true 
                                            PosMonGuiTar = v.HumanoidRootPart.CFrame
                                            GuiTarMsHealth = v.Humanoid
                                            MagnetGuiTar = true
                                            GuiTarMon = v.Name
                                        until not _G.AutoSoulGuitar or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Workspace").Map["Haunted Castle"].SwampWater.Color ~= Color3.fromRGB(117, 0, 0)
                                    end
                                end
                            end
                        else
                            MagnetGuiTar = false
                            topos(CFrame.new(-10170.7275390625, 138.6524658203125, 5934.26513671875))
                        end
                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress","Check").Gravestones == false then
                        GetFirePlacard("7","Left")
                        GetFirePlacard("6","Left")
                        GetFirePlacard("5","Left")
                        GetFirePlacard("4","Right")
                        GetFirePlacard("3","Left")
                        GetFirePlacard("2","Right")
                        GetFirePlacard("1","Right")
                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress","Check").Ghost == false then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress", "Ghost")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress", "Ghost", true)
                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress","Check").Trophies == false then
                        repeat wait()
                            fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment2:FindFirstChild("ClickDetector"))
                        until game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment2.Line.Position.Y == -1000 or not _G.AutoSoulGuitar
                        repeat wait()
                            fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment5:FindFirstChild("ClickDetector"))
                        until game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment5.Line.Position.Y == -1000 or not _G.AutoSoulGuitar
                        repeat wait()
                            fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment6:FindFirstChild("ClickDetector"))
                        until game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment6.Line.Position.Y == -1000 or not _G.AutoSoulGuitar
                        repeat wait()
                            fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment8:FindFirstChild("ClickDetector"))
                        until game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment8.Line.Position.Y == -1000 or not _G.AutoSoulGuitar
                        repeat wait()
                            fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment9:FindFirstChild("ClickDetector"))
                        until game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment9.Line.Position.Y == -1000 or not _G.AutoSoulGuitar
                        if getTrophies(1)[1] then
                            repeat wait()
                                fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment1:FindFirstChild("ClickDetector"))
                            until game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment1.Line.Rotation.Z == getTrophies(1)[2] or game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment1.Line.Rotation.Z == getTrophies(1)[3] or not _G.AutoSoulGuitar or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress","Check").Trophies == true
                        end
                        if getTrophies(2)[1] then
                            repeat wait()
                                fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment3:FindFirstChild("ClickDetector"))
                            until game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment3.Line.Rotation.Z == getTrophies(2)[2] or game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment3.Line.Rotation.Z == getTrophies(1)[3] or not _G.AutoSoulGuitar or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress","Check").Trophies == true
                        end
                        if getTrophies(3)[1] then
                            repeat wait()
                                fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment4:FindFirstChild("ClickDetector"))
                            until game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment4.Line.Rotation.Z == getTrophies(3)[2] or game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment4.Line.Rotation.Z == getTrophies(1)[3] or not _G.AutoSoulGuitar or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress","Check").Trophies == true
                        end
                        if getTrophies(4)[1] then
                            repeat wait()
                                fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment7:FindFirstChild("ClickDetector"))
                            until game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment7.Line.Rotation.Z == getTrophies(4)[2] or game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment7.Line.Rotation.Z == getTrophies(1)[3] or not _G.AutoSoulGuitar or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress","Check").Trophies == true
                        end
                        if getTrophies(5)[1] then
                            repeat wait()
                                fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment10:FindFirstChild("ClickDetector"))
                            until game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment10.Line.Rotation.Z == getTrophies(5)[2] or  game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment10.Line.Rotation.Z == getTrophies(1)[3] or not _G.AutoSoulGuitar or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress","Check").Trophies == true
                        end
                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress","Check").Pipes == false then
                        topos(CFrame.new(-9628.02734375, 6.13064432144165, 6157.47802734375))
                        repeat task.wait() until not _G.AutoSoulGuitar or GetDistance(CFrame.new(-9628.02734375, 6.13064432144165, 6157.47802734375)) <= 10                      
                        for i = 10,10 do
                            if game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model["Part"..tostring(i)].BrickColor ~= "Storm blue" then
                                repeat task.wait()
                                    fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model["Part"..tostring(i)].ClickDetector)
                                until game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model["Part"..tostring(i)].BrickColor == "Storm blue" or not _G.AutoSoulGuitar or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress","Check").Pipes == true
                            end
                        end
                        for i = 8,8 do
                            if game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model["Part"..tostring(i)].BrickColor ~= game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].Pipes["Part"..tostring(i)]["Part"..tostring(i)].BrickColor then
                                repeat task.wait()
                                    fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model["Part"..tostring(i)].ClickDetector)
                                until game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model["Part"..tostring(i)].BrickColor == game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].Pipes["Part"..tostring(i)]["Part"..tostring(i)].BrickColor or not _G.AutoSoulGuitar or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress","Check").Pipes == true
                            end
                        end
                        for i = 6,6 do
                            if game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model["Part"..tostring(i)].BrickColor ~= game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].Pipes["Part"..tostring(i)]["Part"..tostring(i)].BrickColor then
                                repeat task.wait()
                                    fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model["Part"..tostring(i)].ClickDetector)
                                until game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model["Part"..tostring(i)].BrickColor == game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].Pipes["Part"..tostring(i)]["Part"..tostring(i)].BrickColor or not _G.AutoSoulGuitar or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress","Check").Pipes == true
                            end
                        end
                        for i = 3,4 do
                            if game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model["Part"..tostring(i)].BrickColor ~= game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].Pipes["Part"..tostring(i)]["Part"..tostring(i)].BrickColor then
                                repeat task.wait(5)
                                    fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model["Part"..tostring(i)].ClickDetector)
                                until game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model["Part"..tostring(i)].BrickColor == game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].Pipes["Part"..tostring(i)]["Part"..tostring(i)].BrickColor or not _G.AutoSoulGuitar or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress","Check").Pipes == true
                            end
                        end
                        if game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part1.BrickColor ~= game:GetService("Workspace").Map["Haunted Castle"].IslandModel["gamma_Cube.275"].BrickColor then
                            repeat task.wait()
                                fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part1.ClickDetector)
                            until game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part1.BrickColor == game:GetService("Workspace").Map["Haunted Castle"].IslandModel["gamma_Cube.275"].BrickColor or not _G.AutoSoulGuitar or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress","Check").Pipes == true
                        end
                    end
                end
            end
        end)
    end
end)

task.spawn(function()
    repeat task.wait() until _G.AutoSoulGuitar
    while task.wait() do
        pcall(function()
            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if _G.AutoSoulGuitar and MagnetGuiTar and game:GetService("Workspace").Map["Haunted Castle"].SwampWater.Color == Color3.fromRGB(117, 0, 0) then
                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0 and v:FindFirstChild("HumanoidRootPart") and v.Name == "Living Zombie" then
                        if (v.HumanoidRootPart.Position - CFrame.new(-10170.7275390625, 138.6524658203125, 5934.26513671875).Position).Magnitude <= 300 then
                            v:FindFirstChild("HumanoidRootPart").CanCollide = false
                            v:FindFirstChild("HumanoidRootPart").Transparency = 1
                            if not v:FindFirstChild("HumanoidRootPart"):FindFirstChild("BV") then
                                local u = Instance.new("BodyVelocity")
                                u.Parent = v:FindFirstChild("HumanoidRootPart")
                                u.Name = "BV"
                                u.MaxForce = Vector3.new(100000, 100000, 100000)
                                u.Velocity = Vector3.new(0, 0, 0)
                            end
                            if v:FindFirstChild("Humanoid"):FindFirstChild("Animator") then
                                v:FindFirstChild("Humanoid"):FindFirstChild("Animator"):Remove()
                            end
                            v:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(-10165.7880859375, 138.6524658203125, 5973.7724609375)
                            if v.Humanoid.Health ~= GuiTarMsHealth.Health then
                                _G.BreakGuiTarQuest = true
                                v.Humanoid.Health = 0
                                v:BreakJoints()
                            else
                                _G.BreakGuiTarQuest = false
                            end
                        end
                    end
                end
            end
        end)
    end
end)

task.spawn(function()
    repeat task.wait() until _G.AutoGetCDK
    while task.wait() do
        pcall(function()
            if _G.AutoGetCDK then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Boss")
                if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton Boss") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Cursed Skeleton Boss" then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat task.wait()
                                    if game.Players.LocalPlayer.Character:FindFirstChild("Yama") or game.Players.LocalPlayer.Backpack:FindFirstChild("Yama") then
                                        EquipWeapon("Yama")
                                    elseif game.Players.LocalPlayer.Character:FindFirstChild("Tushita") or game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita") then
                                        EquipWeapon("Tushita")
                                    else
                                        game.StarterGui:SetCore("SendNotification", {
                                            Title = "Normal Hub Mobile",
                                            Text = "Use! - Yama or Tushita",
                                            Icon = "rbxassetid://11995210995",
                                            Duration = 10,
                                        })
                                        wait(8)
                                    end
                                    Buso()
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
                                    _G.FastAttack = true 
                                    if syn then
                                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                                    end
                                until not _G.AutoGetCDK or not v.Parent or v.Humanoid.Health <= 0
                                _G.FastAttack = false
                            end
                        end
                    end
                else
                    topos(CFrame.new(-12318.193359375, 601.9518432617188, -6538.662109375))
                    task.wait(.5)
                    topos(game:GetService("Workspace").Map.Turtle.Cursed.BossDoor.CFrame)
                end
            end
        end)
    end
end)

task.spawn(function()
    repeat task.wait() until _G.AutoQuestTushuta
    while task.wait() do
        pcall(function()
            if _G.AutoQuestTushuta then
                if tostring(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "OpenDoor")) ~= "opened" then
                    wait(.7)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "OpenDoor")
                    wait(.3)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "OpenDoor", true)
                else
                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Finished"] == nil then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Good")
                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Finished"] == false then
                        if tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Good"]) == -3 then
                            repeat wait() topos(CFrame.new(-4602.5107421875, 16.446542739868164, -2880.998046875)) until (CFrame.new(-4602.5107421875, 16.446542739868164, -2880.998046875).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.AutoQuestTushuta or tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Good"]) == 1
                            if (CFrame.new(-4602.5107421875, 16.446542739868164, -2880.998046875).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                                wait(.7)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","BoatQuest",workspace.NPCs:FindFirstChild("Luxury Boat Dealer"),"Check")
                                wait(.5)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","BoatQuest",workspace.NPCs:FindFirstChild("Luxury Boat Dealer"))
                            end
                            wait(1)
                            repeat wait() topos(CFrame.new(4001.185302734375, 10.089399337768555, -2654.86328125)) until (CFrame.new(4001.185302734375, 10.089399337768555, -2654.86328125).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.AutoQuestTushuta or tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Good"]) == 1
                            if (CFrame.new(4001.185302734375, 10.089399337768555, -2654.86328125).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                                wait(.7)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","BoatQuest",workspace.NPCs:FindFirstChild("Luxury Boat Dealer"),"Check")
                                wait(.5)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","BoatQuest",workspace.NPCs:FindFirstChild("Luxury Boat Dealer"))
                            end
                            wait(1)
                            repeat wait() topos(CFrame.new(-9530.763671875, 7.245208740234375, -8375.5087890625)) until (CFrame.new(-9530.763671875, 7.245208740234375, -8375.5087890625).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.AutoQuestTushuta or tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Good"]) == 1
                            if (CFrame.new(-9530.763671875, 7.245208740234375, -8375.5087890625).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                                wait(.7)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","BoatQuest",workspace.NPCs:FindFirstChild("Luxury Boat Dealer"),"Check")
                                wait(.5)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","BoatQuest",workspace.NPCs:FindFirstChild("Luxury Boat Dealer"))
                            end
                            task.wait(1)
                        elseif tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Good"]) == -4 then
                        if game:GetService("Workspace").Enemies:FindFirstChildOfClass("Model") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if (v:FindFirstChild("HumanoidRootPart").Position - CFrame.new(-5463.74560546875, 313.7947082519531, -2844.50390625).Position).Magnitude <= 1000 then
                                    if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0 then
                                        repeat task.wait()
                                            EquipWeapon(_G.Weapon)
                                            Buso()
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Head.CanCollide = false 
                                            topos(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
                                            _G.FastAttack = true 
                                            PosTHQuest = v.HumanoidRootPart.CFrame
                                            MagnetTHQuest = true
                                            NameTH = v.Name
                                        until not _G.AutoQuestTushuta or v.Humanoid.Health <= 0 or not v.Parent or tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Good"]) == 2
                                        _G.FastAttack = false
                                    end
                                else
                                    topos(CFrame.new(-5084.20849609375, 314.5412902832031, -2975.078125))
                                end
                            end
                        else
                            topos(CFrame.new(-5084.20849609375, 314.5412902832031, -2975.078125))
                        end
                        elseif tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Good"]) == -5 then
                            ---
                            if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Cake Queen" then
                                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                            repeat task.wait()
                                                EquipWeapon(_G.Weapon)
                                                Buso()
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Head.CanCollide = false 
                                                topos(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
                                                _G.FastAttack = true
                                            until not _G.AutoQuestTushuta or not v.Parent or v.Humanoid.Health <= 0 or tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Good"]) == 3
                                            _G.FastAttack = false
                                        end
                                    end
                                end
                            elseif game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen") and game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen").Humanoid.Health > 0 then
                                topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen").HumanoidRootPart.CFrame * CFrame.new(0,30,0))
                            else
                                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - game:GetService("Workspace").Map.HeavenlyDimension.Spawn.Position).Magnitude <= 1000 then
                                    for i,v in pairs(game:GetService("Workspace").Map.HeavenlyDimension.Exit:GetChildren()) do
                                        Ex = i
                                    end
                                    if Ex == 2 then
                                        repeat task.wait()
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.HeavenlyDimension.Exit.CFrame
                                        until not _G.AutoQuestTushuta or tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Good"]) == 3
                                    end
                                    _G.FastAttack =  true
                                    repeat task.wait()
                                        repeat task.wait() 
                                            topos(CFrame.new(-22529.6171875, 5275.77392578125, 3873.5712890625)) 
                                            for i, v in pairs(game:GetService("Workspace").Map.HeavenlyDimension:GetDescendants()) do
                                                if v:IsA("ProximityPrompt") then
                                                    fireproximityprompt(v)
                                                end
                                            end
                                            
                                        until (CFrame.new(-22529.6171875, 5275.77392578125, 3873.5712890625).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
                                        wait(2)
                                        _G.DoneT1 = true
                                    until not _G.AutoQuestTushuta or _G.DoneT1
                                    repeat task.wait()
                                        repeat task.wait()
                                            topos(CFrame.new(-22637.291015625, 5281.365234375, 3749.28857421875)) 
                                            for i, v in pairs(game:GetService("Workspace").Map.HeavenlyDimension:GetDescendants()) do
                                                if v:IsA("ProximityPrompt") then
                                                    fireproximityprompt(v)
                                                end
                                            end
                                        until (CFrame.new(-22637.291015625, 5281.365234375, 3749.28857421875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
                                        wait(2)
                                        _G.DoneT2 = true
                                    until _G.DoneT2 or _G.AutoQuestTushuta == false
                                    repeat wait()
                                        repeat task.wait() 
                                            topos(CFrame.new(-22791.14453125, 5277.16552734375, 3764.570068359375)) 
                                            for i, v in pairs(game:GetService("Workspace").Map.HeavenlyDimension:GetDescendants()) do
                                                if v:IsA("ProximityPrompt") then
                                                    fireproximityprompt(v)
                                                end
                                            end
                                        until (CFrame.new(-22791.14453125, 5277.16552734375, 3764.570068359375).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
                                        wait(2)
                                        _G.DoneT3 = true
                                    until _G.DoneT3 or _G.AutoQuestTushuta == false
                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if (v:FindFirstChild("HumanoidRootPart").Position - CFrame.new(-22695.7012, 5270.93652, 3814.42847, 0.11794927, 3.32185834e-08, 0.99301964, -8.73070718e-08, 1, -2.30819008e-08, -0.99301964, -8.3975138e-08, 0.11794927).Position).Magnitude <= 300 then
                                            if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0 then
                                                repeat task.wait()
                                                    EquipWeapon(_G.Weapon)
                                                    Buso()
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.Head.CanCollide = false 
                                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
                                                    _G.FastAttack = true
                                                    PosTHQuest = v.HumanoidRootPart.CFrame
                                                    MagnetTHQuest = true
                                                    NameTH = v.Name
                                                until not _G.AutoQuestTushuta or v.Humanoid.Health <= 0 or not v.Parent
                                                _G.FastAttack = false
                                            end
                                        else
                                            MagnetTHQuest = false
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end)
    end
end)
PosMsList = {
        ["Pirate Millionaire"] = CFrame.new(-426, 176, 5558),
        ["Pistol Billionaire"] = CFrame.new(-83, 127, 6097),
        ["Dragon Crew Warrior"] = CFrame.new(6320, 52, -1282),
        ["Dragon Crew Archer"] = CFrame.new(6625, 378, 244),
        ["Female Islander"] = CFrame.new(4692.7939453125, 797.9766845703125, 858.8480224609375),
        ["Giant Islander"] = CFrame.new(4902, 670, 39), 
        ["Marine Commodore"] = CFrame.new(2401, 123, -7589),
        ["Marine Rear Admiral"] = CFrame.new(3588, 229, -7085),
        ["Fishman Raider"] = CFrame.new(-10941, 332, -8760),
        ["Fishman Captain"] = CFrame.new(-11035, 332, -9087),
        ["Forest Pirate"] = CFrame.new(-13446, 413, -7760),
        ["Mythological Pirate"] = CFrame.new(-13510, 584, -6987),
        ["Jungle Pirate"] = CFrame.new(-11778, 426, -10592),
        ["Musketeer Pirate"] = CFrame.new(-13282, 496, -9565),
        ["Reborn Skeleton"] = CFrame.new(-8764, 142, 5963),
        ["Living Zombie"] = CFrame.new(-10227, 421, 6161),
        ["Demonic Soul"] = CFrame.new(-9579, 6, 6194),
        ["Posessed Mummy"] = CFrame.new(-9579, 6, 6194),
        ["Peanut Scout"] = CFrame.new(-1993, 187, -10103),
        ["Peanut President"] = CFrame.new(-2215, 159, -10474),
        ["Ice Cream Chef"] = CFrame.new(-877, 118, -11032),
        ["Ice Cream Commander"] = CFrame.new(-877, 118, -11032),
        ["Cookie Crafter"] = CFrame.new(-2021, 38, -12028),
        ["Cake Guard"] = CFrame.new(-2024, 38, -12026),
        ["Baking Staff"] = CFrame.new(-1932, 38, -12848),
        ["Head Baker"] = CFrame.new(-1932, 38, -12848),
        ["Cocoa Warrior"] = CFrame.new(95, 73, -12309),
        ["Chocolate Bar Battler"] = CFrame.new(647, 42, -12401),
        ["Sweet Thief"] = CFrame.new(116, 36, -12478),
        ["Candy Rebel"] = CFrame.new(47, 61, -12889),
        ["Ghost"] = CFrame.new(5251, 5, 1111)
}


task.spawn(function()
    while task.wait() do
        pcall(function()
            if _G.AutoFarmObservation or _G.AutoFarmObservationHop then
                wait(.5)
                game:GetService('VirtualUser'):CaptureController()
                game:GetService('VirtualUser'):SetKeyDown('0x65')
                wait(2)
                game:GetService('VirtualUser'):SetKeyUp('0x65')
                if NewWorld then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate") then
                        if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                            repeat task.wait()
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate").HumanoidRootPart.CFrame * CFrame.new(3,0,0)
                            until _G.AutoFarmObservation == false or not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                        else
                            repeat wait()
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate").HumanoidRootPart.CFrame * CFrame.new(0,0,0)
                                wait(2)
                                if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and _G.AutoFarmObservationHop == true then
                                    game:GetService("TeleportService"):Teleport(game.PlaceId,game:GetService("Players").LocalPlayer)
                                end
                            until _G.AutoFarmObservation == false or game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                        end
                    else
                        topos(CFrame.new(-5478.39209, 15.9775667, -5246.9126))
                    end
                elseif OldWorld then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain") then
                        if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                            repeat task.wait()
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain").HumanoidRootPart.CFrame * CFrame.new(3,0,0)
                            until _G.AutoFarmObservation == false or not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                        else
                            repeat wait()
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain").HumanoidRootPart.CFrame * CFrame.new(0,0,0)
                                wait(2)
                                if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and _G.AutoFarmObservationHop == true then
                                    game:GetService("TeleportService"):Teleport(game.PlaceId,game:GetService("Players").LocalPlayer)
                                end
                            until _G.AutoFarmObservation == false or game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                        end
                    else
                        topos(CFrame.new(5533.29785, 88.1079102, 4852.3916))
                    end
                elseif ThirdWorld then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Female Islander") then
                        if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                            repeat task.wait()
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Female Islander").HumanoidRootPart.CFrame * CFrame.new(3,0,0)
                            until _G.AutoFarmObservation == false or not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                        else
                            repeat wait()
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Female Islander").HumanoidRootPart.CFrame * CFrame.new(0,0,0)
                                wait(2)
                                if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and _G.AutoFarmObservationHop then
                                    game:GetService("TeleportService"):Teleport(game.PlaceId,game:GetService("Players").LocalPlayer)
                                end
                            until _G.AutoFarmObservation == false or game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                        end
                    else
                        topos(CFrame.new(4530.3540039063, 656.75695800781, -131.60952758789))
                    end
                end
            end
        end)
    end
end)

task.spawn(function()
    pcall(function()
        while task.wait() do
            if _G.AutoBuyLegendarySword then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer","2")
            end 
        end
    end)
end)

task.spawn(function()
    while task.wait() do
        pcall(function()
            if _G.AutoBuyLegendarySwordHop then
                wait(2)
                while task.wait() do
                    pcall(function()
                        Hop()
                    end)
                end
            end
        end)
    end
end)

task.spawn(function()
    while task.wait() do
        pcall(function()
            if _G.AutoBuyEnchamentHakiHop or _G.AutoBuyEnchamentHaki then
                local args = {
                    [1] = "ColorsDealer",
                    [2] = "2"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                wait(1.5)
                if _G.AutoBuyEnchamentHakiHop then
                    while task.wait() do
                        pcall(function()
                            Hop()
                        end)
                    end
                end
            end
        end)
    end
end)

task.spawn(function()
    while task.wait() do
        pcall(function()
            if _G.AutoQuestYama then
                if tostring(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "OpenDoor")) ~= "opened" then                  
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "OpenDoor")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "OpenDoor", true)
                else
                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Finished"] == nil then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Finished"] == false then                        
                        if tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Evil"]) == -3 then
                            repeat task.wait()
                                if not game:GetService("Workspace").Enemies:FindFirstChild("Forest Pirate") then
                                    topos(CFrame.new(-13223.521484375, 428.1938171386719, -7766.06787109375))
                                else
                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == "Forest Pirate" then
                                            PosMon = v.HumanoidRootPart.CFrame
                                            task.spawn(function()
                                                BringMobs(PosMon,v.Name)
                                            end)
                                            topos(game:GetService("Workspace").Enemies:FindFirstChild("Forest Pirate").HumanoidRootPart.CFrame)
                                        end
                                    end
                                end
                            until tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Evil"]) == 1 or not _G.AutoQuestYama
                        elseif tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Evil"]) == -4 then
                            for ix,HitMon in pairs(game:GetService("Players").LocalPlayer.QuestHaze:GetChildren()) do
                                for NameMonHaze, CFramePos in pairs(PosMsList) do
                                    if string.find(NameMonHaze,HitMon.Name) and HitMon.Value > 0 then
                                        if game:GetService("Workspace").Enemies:FindFirstChild(NameMonHaze) then
                                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                                if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0 and v:FindFirstChild("HazeESP") then
                                                    repeat task.wait()
                                                        EquipWeapon(_G.Weapon)
                                                        Buso()
                                                        v.HumanoidRootPart.CanCollide = false
                                                        v.Head.CanCollide = false
                                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
                                                        _G.FastAttack = true
                                                        PosMon = v.HumanoidRootPart.CFrame
                                                        task.spawn(function()
                                                            BringMobs(PosMon,v.Name)
                                                        end)
                                                    until not _G.AutoQuestYama or tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Evil"]) == 2
                                                end
                                            end
                                        else
                                            repeat wait()
                                                if game:GetService("Workspace").Enemies:FindFirstChild(NameMonHaze) then
                                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                                        if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0 and v:FindFirstChild("HazeESP") then
                                                            repeat task.wait()
                                                                EquipWeapon(_G.Weapon)
                                                                Buso()
                                                                v.HumanoidRootPart.CanCollide = false
                                                                v.Head.CanCollide = false
                                                                topos(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
                                                                _G.FastAttack = true
                                                                PosMon = v.HumanoidRootPart.CFrame
                                                                task.spawn(function()
                                                                    BringMobs(PosMon,v.Name)
                                                                end)
                                                            until not v:FindFirstChild("HazeESP") or not _G.AutoQuestYama or tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Evil"]) == 2
                                                        end
                                                    end
                                                else
                                                    if (CFramePos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2500 then
                                                        topos(CFramePos)
                                                    else
                                                        game.Players.LocalPlayer.Character.Humanoid.Health = die
                                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFramePos
                                                        wait(.2)
                                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                                                    end
                                                end
                                            until not _G.AutoQuestYama
                                        end
                                    end
                                end
                            end
                        elseif tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Evil"]) == -5 then
                            if game:GetService("Workspace").Map:FindFirstChild("HellDimension") then
                                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - game:GetService("Workspace").Map.HellDimension.Spawn.Position).Magnitude <= 1000 then
                                    for gg,ez in pairs(game:GetService("Workspace").Map.HellDimension.Exit:GetChildren()) do
                                        if tonumber(gg) == 2 then
                                            repeat task.wait()
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.HellDimension.Exit.CFrame
                                            until not _G.AutoQuestYama or tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Evil"]) == 3
                                        end
                                    end
                                    _G.FastAttack =  true
                                    EquipWeapon(_G.Weapon)
                                    if tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Evil"]) ~= 3 then
                                        repeat task.wait()
                                            repeat task.wait() 
                                                topos(game:GetService("Workspace").Map.HellDimension.Torch1.Particles.CFrame) 
                                                for i, v in pairs(game:GetService("Workspace").Map.HellDimension:GetDescendants()) do
                                                    if v:IsA("ProximityPrompt") then
                                                        fireproximityprompt(v)
                                                    end
                                                end
                                            until (game:GetService("Workspace").Map.HellDimension.Torch1.Particles.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
                                            wait(2)
                                            _G.T1Yama = true
                                        until not _G.AutoQuestYama or _G.T1Yama or tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Evil"]) == 3
                                        repeat task.wait()
                                            repeat task.wait()
                                                topos(game:GetService("Workspace").Map.HellDimension.Torch2.Particles.CFrame) 
                                                for i, v in pairs(game:GetService("Workspace").Map.HellDimension:GetDescendants()) do
                                                    if v:IsA("ProximityPrompt") then
                                                        fireproximityprompt(v)
                                                    end
                                                end
                                            until (game:GetService("Workspace").Map.HellDimension.Torch2.Particles.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
                                            wait(2)
                                            _G.T2Yama = true
                                        until _G.T2Yama or _G.AutoQuestYama == false or tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Evil"]) == 3
                                        repeat wait()
                                            repeat task.wait() 
                                                topos(game:GetService("Workspace").Map.HellDimension.Torch3.Particles.CFrame) 
                                                for i, v in pairs(game:GetService("Workspace").Map.HellDimension:GetDescendants()) do
                                                    if v:IsA("ProximityPrompt") then
                                                        fireproximityprompt(v)
                                                    end
                                                end
                                            until (game:GetService("Workspace").Map.HellDimension.Torch3.Particles.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5 
                                            wait(2)
                                            _G.T3Yama = true
                                        until _G.T3Yama or _G.AutoQuestYama == false or tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Evil"]) == 3
                                    end
                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if (v:FindFirstChild("HumanoidRootPart").Position - game:GetService("Workspace").Map.HellDimension.Spawn.Position).Magnitude <= 300 then
                                            if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0 then
                                                repeat task.wait()
                                                    EquipWeapon(_G.Weapon)
                                                    Buso()
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.Head.CanCollide = false
                                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
                                                    _G.FastAttack = true
                                                    PosMon = v.HumanoidRootPart.CFrame
                                                    task.spawn(function()
                                                        BringMobs(PosMon,v.Name)
                                                    end)
                                                until not _G.AutoQuestYama or v.Humanoid.Health <= 0 or not v.Parent or tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Evil"]) == 3
                                                _G.FastAttack = false
                                            end
                                        else
                                            MagnetYamaQuest = false
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end)
    end
end)

task.spawn(function()
    while task.wait() do
        pcall(function()
            if _G.AutoQuestYama then
                if tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Evil"]) == -5 then
                    if not game:GetService("Workspace").Map:FindFirstChild("HellDimension") or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - game:GetService("Workspace").Map.HellDimension.Spawn.Position).Magnitude > 1000 then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if string.find(v.Name , "Soul Reaper") then
                                    repeat task.wait()
                                        topos(v.HumanoidRootPart.CFrame)
                                    until v.Humanoid.Health <= 0 or not _G.AutoQuestYama or not v.Parent or tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Evil"]) == 3 or (game:GetService("Workspace").Map:FindFirstChild("HellDimension") and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - game:GetService("Workspace").Map.HellDimension.Spawn.Position).Magnitude <= 1000)
                                end
                            end
                        elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hallow Essence") then
                            repeat topos(CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125)) task.wait() until (CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8
                            EquipWeapon("Hallow Essence")
                        elseif game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper") and game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper").Humanoid.Health > 0 then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper").HumanoidRootPart.CFrame)
                        else
                            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Check") < 50 and not game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") and not game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper") and not game:GetService("Workspace").Map:FindFirstChild("HellDimension") then
                                if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or game:GetService("Workspace").Enemies:FindFirstChild("Domenic Soul") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy") then
                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy" then
                                            if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0 then
                                                repeat task.wait()
                                                    EquipWeapon(_G.Weapon)
                                                    Buso()
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.Head.CanCollide = false
                                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
                                                    _G.FastAttack = true
                                                    PosMon = v.HumanoidRootPart.CFrame
                                                    task.spawn(function()
                                                        BringMobs(PosMon,v.Name)
                                                    end)
                                                until not _G.AutoQuestYama or v.Humanoid.Health <= 0 or not v.Parent
                                                _G.FastAttack = false
                                            end
                                        end
                                    end
                                else
                                    MagnetWaitY = false
                                    topos(CFrame.new(-9515.2255859375, 164.0062255859375, 5785.38330078125))
                                end
                            else
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones", "Buy", 1, 1)
                            end
                        end
                    end
                end
            end
        end)
    end
end)

old = hookfunction(Instance.new("RemoteFunction").InvokeServer,function(...)
    args = {...}
    if tostring(args[1]) == "RemoteFunctionShoot" then
        if _G.GunAimbot == true or _G.AimbotSelect then
            if _G.TargetPlayerAim ~= nil then
                args[2] =  game.Players[_G.TargetPlayerAim].Character.HumanoidRootPart.Position
                args[3] = game.Players[_G.TargetPlayerAim].Character.HumanoidRootPart
                return old(unpack(args))
            end
        elseif _G.UseGun then
            if _G.PosMonMasteryGun and _G.MonMasteryGun then
                args[2] = _G.PosMonMasteryGun.Position
                args[3] = _G.MonMasteryGun
                return old(unpack(args))
            end
        end
    end
    return old(...)
end)

loadstring(game:HttpGet(("https://raw.githubusercontent.com/WxHxCxKxExR/Normal_Pc/main/mt"), true))();

function PositionToCFrame(para)
    return CFrame.new(para.X,para.Y,para.Z)
end

task.spawn(function()
    repeat task.wait() until _G.AutoFarmMasteryFruit
    while task.wait() do
        pcall(function()
            if _G.AutoFarmMasteryFruit then
                for i,v in pairs(LV()) do
                    repeat wait()
                        if v.Warp.Use then 
                            if (v.Warp.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > v.Warp.Magnet then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",v.Warp.Position)
                                wait(.5)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                            end
                        end 
                        if game:GetService("Players").LocalPlayer.Data.LastSpawnPoint.Value == v.SPAWNPOINT or v.Warp.Use then
                            if game:GetService("Workspace").Enemies:FindFirstChild(v.NameMon) then
                                for x,z in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if z.Name == v.NameMon then
                                        if z:FindFirstChild("Humanoid") and z:FindFirstChild("HumanoidRootPart") then
                                            HealthMin = z.Humanoid.MaxHealth * _G.SkillAt/100
                                            if z.Humanoid.Health >= HealthMin then
                                                repeat task.wait()
                                                    EquipWeapon(_G.Weapon)
                                                    Buso()
                                                    _G.UseBf = false
                                                    topos(z.HumanoidRootPart.CFrame * CFrame.new(0,30,20))
                                                    _G.FastAttack = true
                                                    _G.PosMonMasteryFruit = z.HumanoidRootPart.CFrame
                                                    namemon = z.Name
                                                    BringMobs(PositionToCFrame(_G.PosMonMasteryFruit),namemon)
                                                until z.Humanoid.Health <= HealthMin or not _G.AutoFarmMasteryFruit or not z:FindFirstChild("Humanoid") or not z:FindFirstChild("HumanoidRootPart")
                                            else
                                                repeat task.wait()
                                                    
                                                    _G.PosMonMasteryFruit = z.HumanoidRootPart.CFrame
                                                    _G.FastAttack = false
                                                    namemon = z.Name
                                                    topos(z.HumanoidRootPart.CFrame * CFrame.new(0,30,20))
                                                    if game.Players.LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
                                                        _G.UseBf = true
                                                    else
                                                        EquipWeapon(game.Players.LocalPlayer.Data.DevilFruit.Value)
                                                    end
                                                    BringMobs(PositionToCFrame(_G.PosMonMasteryFruit),namemon)
                                                until z.Humanoid.Health <= 0 or _G.AutoFarmMasteryFruit == false
                                            end
                                        end
                                    end
                                end
                            else
                                _G.UseBf = false
                                MagnetFarm = false
                                _G.FastAttack = false
                                _G.StopFarm = true
                                if game:GetService("ReplicatedStorage"):FindFirstChild(v.NameMon) then
                                    topos(game:GetService("ReplicatedStorage"):FindFirstChild(v.NameMon).HumanoidRootPart.CFrame * CFrame.new(0,20,0))
                                else
                                    topos(v.PM)
                                end
                            end
                        else 
                            repeat task.wait()
                                game.Players.LocalPlayer.Character.Humanoid.Health = die
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.POSQ
                                wait()
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                                local args = {
                                    [1] = "SetLastSpawnPoint",
                                    [2] = v.SPAWNPOINT
                                }
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.POSQ
                            until game:GetService("Players").LocalPlayer.Data.LastSpawnPoint.Value == v.SPAWNPOINT or not _G.AutoFarmMasteryFruit
                        end
                    until not _G.AutoFarmMasteryFruit
                end
            else
                _G.UseBf = false
            end
        end)
    end
end)

function CheckGun()
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
        if v:IsA("Tool") then
            if v:FindFirstChild("RemoteFunctionShoot") and v.ToolTip == "Gun" then 
                GunWeapon = v.Name
            end
        end
    end
    for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do  
        if v:IsA("Tool") then
            if v:FindFirstChild("RemoteFunctionShoot") and v.ToolTip == "Gun" then 
                GunWeapon = v.Name
            end
        end
    end
    return GunWeapon or "No Found"
end

function CheckMob(mob)
    if game:GetService("Workspace")["_WorldOrigin"].EnemySpawns:FindFirstChild(mob) then
        return true
    else
        return false
    end
end

task.spawn(function()
    repeat task.wait() until _G.AutoFarmMasteryGun
    while task.wait() do
        pcall(function()
            if _G.AutoFarmMasteryGun then
                for i,v in pairs(LV()) do
                    repeat wait()
                        if v.Warp.Use then 
                            if (v.Warp.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > v.Warp.Magnet then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",v.Warp.Position)
                                wait(.5)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                            end
                        end 
                        if game:GetService("Players").LocalPlayer.Data.LastSpawnPoint.Value == v.SPAWNPOINT or v.Warp.Use then
                            if game:GetService("Workspace").Enemies:FindFirstChild(v.NameMon) then
                                for x,z in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if z.Name == v.NameMon then
                                        if z:FindFirstChild("Humanoid") and z:FindFirstChild("HumanoidRootPart") then
                                            HealthMin = z.Humanoid.MaxHealth * _G.SkillAt/100
                                            if z.Humanoid.Health >= HealthMin then
                                                repeat task.wait() 
                                                    EquipWeapon(_G.Weapon)
                                                    Buso()
                                                    _G.UseGun = false
                                                    topos(z.HumanoidRootPart.CFrame * CFrame.new(0,30,20))
                                                    _G.FastAttack = true
                                                    _G.PosMonMasteryGun = z.HumanoidRootPart.CFrame
                                                    _G.MonMasteryGun = z.HumanoidRootPart
                                                    namemon = z.Name
                                                    BringMobs(PositionToCFrame(_G.PosMonMasteryGun),namemon)
                                                until not _G.AutoFarmMasteryGun or z.Humanoid.Health <= HealthMin or not z:FindFirstChild("Humanoid") or not z:FindFirstChild("HumanoidRootPart")
                                            else
                                                repeat task.wait() 
                                                    _G.PosMonMasteryGun = z.HumanoidRootPart.CFrame
                                                    _G.MonMasteryGun = z.HumanoidRootPart
                                                    _G.FastAttack = false
                                                    namemon = z.Name
                                                    _G.UseGun = true
                                                    topos(z.HumanoidRootPart.CFrame * CFrame.new(0,30,20))
                                                    if game.Players.LocalPlayer.Character:FindFirstChild(CheckGun()) then
                                                        if _G.GunWeapon == CheckGun() then
                                                            local args = {
                                                                [1] = "TAP",
                                                                [2] = z.HumanoidRootPart.Position
                                                            }
                                                            game:GetService("Players").LocalPlayer.Character.Humanoid:FindFirstChild(""):InvokeServer(unpack(args))
                                                            game:GetService("VirtualUser"):CaptureController()
                                                            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670),workspace.CurrentCamera.CFrame)
                                                            game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
                                                            game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
                                                            game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
                                                            game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
                                                        end
                                                    else
                                                        EquipWeapon(CheckGun())
                                                    end
                                                    game:GetService("VirtualUser"):CaptureController()
                                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670),workspace.CurrentCamera.CFrame)
                                                    BringMobs(PositionToCFrame(_G.PosMonMasteryGun),namemon)
                                                until z.Humanoid.Health <= 0 or not _G.AutoFarmMasteryGun
                                            end
                                        end
                                    end
                                end
                            else
                                MagnetFarm = false
                                _G.FastAttack = false
                                _G.StopFarm = true
                                if game:GetService("ReplicatedStorage"):FindFirstChild(v.NameMon) then
                                    topos(game:GetService("ReplicatedStorage"):FindFirstChild(v.NameMon).HumanoidRootPart.CFrame * CFrame.new(0,20,0))
                                else
                                    topos(v.PM)
                                end
                            end
                        else 
                            repeat task.wait()
                                game.Players.LocalPlayer.Character.Humanoid.Health = die
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.POSQ
                                wait()
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                                local args = {
                                    [1] = "SetLastSpawnPoint",
                                    [2] = v.SPAWNPOINT
                                }
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.POSQ
                            until game:GetService("Players").LocalPlayer.Data.LastSpawnPoint.Value == v.SPAWNPOINT or not _G.AutoFarmMasteryGun
                        end
                    until not _G.AutoFarmMasteryGun
                end
            else
                _G.UseGun = false
            end
        end)
    end
end)

task.spawn(function()
    while task.wait() do
        pcall(function()
            if _G.UseBf then
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if game.Players.LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
                        BF = require(game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].Data)
                    elseif game.Players.LocalPlayer.Backpack:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
                        BF = require(game:GetService("Players").LocalPlayer.Backpack[game.Players.LocalPlayer.Data.DevilFruit.Value].Data)
                    end
                    if game.Players.LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
                        MyMasteryDF = game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].Level.Value
                    elseif game.Players.LocalPlayer.Backpack:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
                        MyMasteryDF = game:GetService("Players").LocalPlayer.Backpack[game.Players.LocalPlayer.Data.DevilFruit.Value].Level.Value
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon-Dragon") then                      
                        if _G.Skill_Z then
                            if MyMasteryDF >= BF.Lvl.Z then
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
                            end
                        end
                        if _G.Skill_X then    
                            if MyMasteryDF >= BF.Lvl.X then
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
                            end
                        end
                        if _G.Skill_C then 
                            if MyMasteryDF >= BF.Lvl.C then
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game)
                                wait(2)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game)
                            end
                        end
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom-Venom") then   
                        if _G.Skill_Z then
                            if MyMasteryDF >= BF.Lvl.Z then
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
                            end
                        end
                        if _G.Skill_X then    
                            if MyMasteryDF >= BF.Lvl.X then                                 
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
                            end
                        end
                        if _G.Skill_C then 
                            if MyMasteryDF >= BF.Lvl.C then
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game)
                            end
                        end
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha") then
                        if _G.Skill_Z and game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Size == Vector3.new(2, 2.0199999809265, 1) then    
                            if MyMasteryDF >= BF.Lvl.Z then                       
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
                            end
                        end
                        if _G.Skill_X then
                            if MyMasteryDF >= BF.Lvl.X then
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
                            end
                        end
                        if _G.Skill_C then      
                            if MyMasteryDF >= BF.Lvl.C then                     
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game)
                            end
                        end
                        if _G.Skill_V then  
                            if MyMasteryDF >= BF.Lvl.V then                        
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"V",false,game)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"V",false,game)
                            end
                        end
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value) then
                        if _G.Skill_Z then
                            if MyMasteryDF >= BF.Lvl.Z then                   
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
                            end
                        end
                        if _G.Skill_X then    
                            if MyMasteryDF >= BF.Lvl.X then
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
                            end
                        end
                        if _G.Skill_C then 
                            if MyMasteryDF >= BF.Lvl.C then
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game)
                            end
                        end
                        if _G.Skill_V then               
                            if MyMasteryDF >= BF.Lvl.V then           
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"V",false,game)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"V",false,game)
                            end
                        end
                    end
                end
            end
        end)
    end
end)

task.spawn(function()
    while task.wait() do
        pcall(function()
            if game:GetService("Lighting").Sky.MoonTextureId ~= "http://www.roblox.com/asset/?id=9709149431" then
                Set_Moon:Set("Full Moon : ❌")
            elseif game:GetService("Lighting").Sky.MoonTextureId =="http://www.roblox.com/asset/?id=9709149431" then
                Set_Moon:Set("Full Moon : 🌑")
            end
            if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                Set_Island:Set("Mystic Island : 🟢")
            else
                Set_Island:Set("Mystic Island : ❌")
            end
        end)
    end
end)

task.spawn(function()
    while task.wait() do
        pcall(function()
            if _G.FindFullMoon then
                if game:GetService("Lighting").Sky.MoonTextureId ~= "http://www.roblox.com/asset/?id=9709149431" then
                    if not game:GetService("Workspace"):FindFirstChild("Hop") then
                        local Message = Instance.new("Message", workspace)
                        Message.Text = "Normal Hub : Hop ..."
                        Message.Name = "Hop"
                    end
                    Hop()
                end
            end
        end)
    end
end)

task.spawn(function()
    _G.Type = math.random(1, 5)
    while true do
        task.wait(0.25)
        _G.Type = math.random(1, 5)
    end
end)

function GetQuest(NameQuest,LevelQuest)
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,LevelQuest)
end

task.spawn(function()
    while task.wait() do
        pcall(function()
            if _G.AutoFarmMaterial then
                if game:GetService("Workspace").Enemies:FindFirstChild(_G.Material) then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == _G.Material then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat wait()
                                    Buso()
                                    EquipWeapon(_G.Weapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.Size = Vector3.new(7,5,5)
                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(0,50,0))
                                    _G.FastAttack = true
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    MagnetFarm = true
                                    PosMon = v.HumanoidRootPart.CFrame
                                    task.spawn(function()
                                        BringMobs(PosMon,v.Name)
                                    end)
                                until _G.AutoFarmMaterial == false or v.Humanoid.Health <= 0 or not v.Parent
                            end
                        end 
                    end
                else
                    topos(game:GetService("Workspace")["_WorldOrigin"].EnemySpawns[_G.Material].CFrame * CFrame.new(0,60,0))
                end
            end
        end)
    end
end)

task.spawn(function()
    game:GetService("RunService").Stepped:Connect(function()
        pcall(function()
            if _G.Clip then
                for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                    if v:IsA("BasePart") then
                        v.CanCollide = false    
                    end
                end
            end
        end)
    end)
end)

    task.spawn(function()
        game:GetService("RunService").Stepped:Connect(function()
            pcall(function()
                if _G.AutoFarmLevel or _G.AutoSoulGuitar or _G.AutoCakePiece or _G.SpawnCakePiece or _G.AutoMysticIsland or _G.AutoFarmMasteryFruit or _G.AutoGrabChestCh or _G.AutoFarmCandy or _G.AutoFarmMasteryGun or _G.AutoFinishDoughDungeons or _G.AutoFinishDoughDungeons or _G.AutoFarmMaterial or _G.AutoFinishPhoenixDungeons or _G.AutoFarmBone or Clip then
                    if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                        local Noclip = Instance.new("BodyVelocity")
                        Noclip.Name = "BodyClip"
                        Noclip.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                        Noclip.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                        Noclip.Velocity = Vector3.new(0,0,0)
                    end
                    for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                        if v:IsA("BasePart") then
                            v.CanCollide = false    
                        end
                    end
                else
                    _G.FastAttack = false
                    if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                        _G.FastAttack = false
                        topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Remove()
                    end
                end
            end)
        end)
    end)

function Hop()
    local Dy = game.PlaceId
    local Iy = {}
    local wy = ""
    local jy = os.date("!*t").hour
    local Py = false
    function TPReturner()
        local a
        if wy == "" then
            a =
                game.HttpService:JSONDecode(
                game:HttpGet("https://games.roblox.com/v1/games/" .. Dy .. "/servers/Public?sortOrder=Desc&limit=100")
            )
        else
            a =
                game.HttpService:JSONDecode(
                game:HttpGet(
                    "https://games.roblox.com/v1/games/" .. Dy .. "/servers/Public?sortOrder=Desc&limit=100&cursor=" .. wy
                )
            )
        end
        local Xs = ""
        if a.nextPageCursor and a.nextPageCursor ~= "null" and a.nextPageCursor ~= nil then
            wy = a.nextPageCursor
        end
        local Os = 0
        for cW, wW in pairs(a.data) do
            local TW = true
            Xs = tostring(wW.id)
            if tonumber(wW.maxPlayers) > tonumber(wW.playing) then
                for uO, ZO in pairs(Iy) do
                    if Os ~= 0 then
                        if Xs == tostring(ZO) then
                            TW = false
                        end
                    else
                        if tonumber(jy) ~= tonumber(ZO) then
                            local om =
                                pcall(
                                function()
                                    Iy = {}
                                    table.insert(Iy, jy)
                                end
                            )
                        end
                    end
                    Os = Os + 1
                end
                if TW == true then
                    table.insert(Iy, Xs)
                    wait()
                    pcall(
                        function()
                            wait()
                            game:GetService("TeleportService"):TeleportToPlaceInstance(Dy, Xs, i)
                        end
                    )
                    wait(5)
                end
            end
        end
    end
    if getgenv().Teleport == nil then
        getgenv().Teleport = function()
            while task.wait() do
                pcall(function()
                    TPReturner()
                    if wy ~= "" then
                        TPReturner()
                    end
                end)
            end
        end
    end
    getgenv().Teleport()
end

task.spawn(function()
    repeat task.wait() until _G.AutoFarmLevel
    while task.wait() do
        pcall(function()
            if _G.AutoFarmLevel then
                if game.Players.LocalPlayer.Data.Level.Value > 9 and game.Players.LocalPlayer.Data.Level.Value <= 49 then
                    repeat wait()
                        if (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-4607.82275, 872.54248, -1667.55688)).Magnitude <= 5000 then
                            if game:GetService("Workspace").Enemies:FindFirstChild("God's Guard") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "God's Guard" then
                                        if v.Humanoid.Health > 0 then
                                            if v:FindFirstChild("Humanoid") or V:FindFirstChild("HumanoidRootPart") then
                                                repeat task.wait()
                                                    Buso()EquipWeapon(_G.Weapon)
                                                    PosMon = v.HumanoidRootPart.CFrame
                                                    v.Head.CanCollide = false
                                                    v.HumanoidRootPart.CanCollide = false
                                                    _G.FastAttack = true
                                                    MagnetFarm = true
                                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 35, 0))
                                                    PosMon = v.HumanoidRootPart.CFrame
                                                    task.spawn(function()
                                                        BringMobs(PosMon,v.Name)
                                                    end)
                                                until v.Humanoid.Health <= 0 or _G.AutoFarmLevel == false or game.Players.LocalPlayer.Data.Level.Value > 49
                                            end
                                        end
                                    end
                                end
                            elseif game:GetService("ReplicatedStorage"):FindFirstChild("God's Guard") then
                                topos(game:GetService("ReplicatedStorage"):FindFirstChild("God's Guard").HumanoidRootPart.CFrame * CFrame.new(0,25,0))
                            else
                                topos(CFrame.new(-4721.89, 843.875, -1949.97))
                            end
                        else
                            repeat wait()
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                            until not _G.AutoFarmLevel or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-4607.82275, 872.54248, -1667.55688)).Magnitude <= 5000
                        end
                    until not (game.Players.LocalPlayer.Data.Level.Value > 9 and game.Players.LocalPlayer.Data.Level.Value <= 49) or _G.AutoFarmLevel == false
                elseif game.Players.LocalPlayer.Data.Level.Value > 49 and game.Players.LocalPlayer.Data.Level.Value <= 79 then
                    repeat wait()
                        if (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047)).Magnitude <= 5000 then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Royal Squad") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Royal Squad" then
                                        if v.Humanoid.Health > 0 then
                                            if v:FindFirstChild("Humanoid") or V:FindFirstChild("HumanoidRootPart") then
                                                repeat task.wait()
                                                    Buso()
                                                    EquipWeapon(_G.Weapon)
                                                    PosMon = v.HumanoidRootPart.CFrame
                                                    v.Head.CanCollide = false
                                                    v.HumanoidRootPart.CanCollide = false
                                                    _G.FastAttack = true
                                                    MagnetFarm = true
                                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 35, 0))
                                                    PosMon = v.HumanoidRootPart.CFrame
                                                    task.spawn(function()
                                                        BringMobs(PosMon,v.Name)
                                                    end)
                                                until v.Humanoid.Health <= 0 or _G.AutoFarmLevel == false or game.Players.LocalPlayer.Data.Level.Value > 119
                                            end
                                        end
                                    end
                                end
                            elseif game:GetService("ReplicatedStorage"):FindFirstChild("Royal Squad") then
                                topos(game:GetService("ReplicatedStorage"):FindFirstChild("Royal Squad").HumanoidRootPart.CFrame * CFrame.new(0,25,0))
                            else
                                topos(CFrame.new(-7644.8701171875, 5637.2060546875, -1423.093994140625))
                            end
                        else
                            repeat wait()
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                            until not _G.AutoFarmLevel or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047)).Magnitude <= 5000
                        end
                    until not (game.Players.LocalPlayer.Data.Level.Value > 49 and game.Players.LocalPlayer.Data.Level.Value <= 79) or _G.AutoFarmLevel == false
                elseif game.Players.LocalPlayer.Data.Level.Value > 79 and game.Players.LocalPlayer.Data.Level.Value <= 119 then
                    repeat wait()
                        if (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047)).Magnitude <= 5000 then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Royal Squad") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Royal Squad" then
                                        if v.Humanoid.Health > 0 then
                                            if v:FindFirstChild("Humanoid") or V:FindFirstChild("HumanoidRootPart") then
                                                repeat task.wait()
                                                    Buso()
                                                    EquipWeapon(_G.Weapon)
                                                    PosMon = v.HumanoidRootPart.CFrame
                                                    v.Head.CanCollide = false
                                                    v.HumanoidRootPart.CanCollide = false
                                                    _G.FastAttack = true
                                                    MagnetFarm = true
                                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 35, 0))
                                                    PosMon = v.HumanoidRootPart.CFrame
                                                    task.spawn(function()
                                                        BringMobs(PosMon,v.Name)
                                                    end)
                                                until v.Humanoid.Health <= 0 or _G.AutoFarmLevel == false or game.Players.LocalPlayer.Data.Level.Value > 119
                                            end
                                        end
                                    end
                                end
                            elseif game:GetService("ReplicatedStorage"):FindFirstChild("Royal Squad") then
                                topos(game:GetService("ReplicatedStorage"):FindFirstChild("Royal Squad").HumanoidRootPart.CFrame * CFrame.new(0,25,0))
                            elseif game:GetService("ReplicatedStorage"):FindFirstChild("Royal Squad") then
                                topos(game:GetService("ReplicatedStorage"):FindFirstChild("Royal Squad").HumanoidRootPart.CFrame * CFrame.new(0,25,0))
                            elseif game:GetService("Workspace").Enemies:FindFirstChild("Royal Soldier") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Royal Soldier" then
                                        if v.Humanoid.Health > 0 then
                                            if v:FindFirstChild("Humanoid") or V:FindFirstChild("HumanoidRootPart") then
                                                repeat task.wait()
                                                    Buso()
                                                    EquipWeapon(_G.Weapon)
                                                    PosMon = v.HumanoidRootPart.CFrame
                                                    v.Head.CanCollide = false
                                                    v.HumanoidRootPart.CanCollide = false
                                                    _G.FastAttack = true
                                                    MagnetFarm = true
                                                    if _G.Type == 1 then
                                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 25, 0))
                                                    elseif _G.Type == 2 then
                                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(25, 5, 0))
                                                    elseif _G.Type == 3 then
                                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 5, 25))
                                                    elseif _G.Type == 4 then
                                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(-25, 5, 0))
                                                    elseif _G.Type == 5 then
                                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 5, -25))
                                                    end
                                                    PosMon = v.HumanoidRootPart.CFrame
                                                    task.spawn(function()
                                                        BringMobs(PosMon,v.Name)
                                                    end)
                                                until v.Humanoid.Health <= 0 or _G.AutoFarmLevel == false 
                                            end
                                        end
                                    end
                                end
                            elseif game:GetService("ReplicatedStorage"):FindFirstChild("Royal Soldier") then
                                topos(game:GetService("ReplicatedStorage"):FindFirstChild("Royal Soldier").HumanoidRootPart.CFrame * CFrame.new(0,25,0))
                            else
                                topos(CFrame.new(-7890.1826171875, 5624.126953125, -1529.97265625))
                            end
                        else
                            repeat wait()
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                            until not _G.AutoFarmLevel or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047)).Magnitude <= 5000
                        end
                    until not (game.Players.LocalPlayer.Data.Level.Value > 79 and game.Players.LocalPlayer.Data.Level.Value <= 119) or _G.AutoFarmLevel == false
                else
                    LV()
                    for i,v in pairs(LV()) do 
                        if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,v.NameMon) then
                            MagnetFarm = false       
                            _G.FastAttack = false                                  
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                        end
                        repeat task.wait()
                            if v.Warp.Use then 
                                if (v.Warp.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > v.Warp.Magnet then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",v.Warp.Position)
                                    wait(.5)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                                end
                            end 
                            if game:GetService("Players").LocalPlayer.Data.SpawnPoint.Value == v.SPAWNPOINT or v.Warp.Use then
                                if not game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible then
                                    if (v.POSQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 5 then
                                        topos(v.POSQ)
                                    else
                                        wait(.6)
                                        GetQuest(v.NameQ,v.NumberQ)
                                    end
                                else 
                                    if game:GetService("Workspace").Enemies:FindFirstChild(v.NameMon) then
                                        for x,z in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if z.Name == v.NameMon then
                                                if z:FindFirstChild("Humanoid") and z:FindFirstChild("HumanoidRootPart") then
                                                    if z.Humanoid.Health > 0 then
                                                        repeat task.wait()
                                                            EquipWeapon(_G.Weapon)
                                                            Buso()
                                                            z.HumanoidRootPart.CanCollide = false
                                                            z.Head.CanCollide = false
                                                            z.Humanoid.WalkSpeed = 0
                                                            topos(z.HumanoidRootPart.CFrame * CFrame.new(0,30,20))
                                                            MagnetFarm = true
                                                            _G.FastAttack = true
                                                            PosMon = z.HumanoidRootPart.CFrame
                                                            BringMobs(PosMon,z.Name)
                                                        until z.Humanoid.Health <= 0 or not z:FindFirstChild("Humanoid") or _G.AutoFarmLevel == false or not z:FindFirstChild("HumanoidRootPart") or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false 
                                                    end
                                                end
                                            end
                                        end
                                    else
                                        MagnetFarm = false
                                        _G.FastAttack = false
                                        _G.StopFarm = true
                                        if game:GetService("ReplicatedStorage"):FindFirstChild(v.NameMon) then
                                            topos(game:GetService("ReplicatedStorage"):FindFirstChild(v.NameMon).HumanoidRootPart.CFrame * CFrame.new(0,20,0))
                                        else
                                            topos(v.PM)
                                        end
                                    end
                                end
                            else 
                                repeat task.wait()
                                    game.Players.LocalPlayer.Character.Humanoid.Health = die
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.POSQ
                                    wait()
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                                    local args = {
                                        [1] = "SetLastSpawnPoint",
                                        [2] = v.SPAWNPOINT
                                    }
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.POSQ
                                until game:GetService("Players").LocalPlayer.Data.SpawnPoint.Value == v.SPAWNPOINT or not _G.AutoFarmLevel
                            end
                        until not _G.AutoFarmLevel or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false 
                    end
                end
            end
        end)
    end
end)

task.spawn(function()
    while task.wait() do 
        pcall(function()
            if _G.AutoNewWorld then 
                if game.Players.LocalPlayer.Data.Level.Value >= 700 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                    if game:GetService("Workspace").Map.Ice.Door.CanCollide == true and game:GetService("Workspace").Map.Ice.Door.Transparency == 0 then
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Key") then
                            topos(CFrame.new(1347.7124, 37.3751602, -1325.6488))
                            EquipWeapon("Key")
                        elseif not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Key") or not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Key") then
                            topos(CFrame.new(4851.8720703125, 5.6514348983765, 718.47094726563))
                            if (CFrame.new(4851.8720703125, 5.6514348983765, 718.47094726563).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
                                wait(1)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress","Detective")
                            end
                        end
                    elseif game:GetService("Workspace").Map.Ice.Door.CanCollide == false and game:GetService("Workspace").Map.Ice.Door.Transparency == 1 then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Ice Admiral") or game:GetService("ReplicatedStorage"):FindFirstChild("Ice Admiral") then
                            topos(CFrame.new(1347.7124, 37.3751602, -1325.6488))
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if game:GetService("Workspace").Enemies:FindFirstChild("Ice Admiral") then
                                    if v.Name == "Ice Admiral" then
                                        repeat wait()
                                            Buso()
                                            EquipWeapon(_G.Weapon)
                                            topos(v.HumanoidRootPart.CFrame * CFrame.new(0,30,20))
                                            v.HumanoidRootPart.CanCollide = false
                                            v.HumanoidRootPart.Size = Vector3.new(7,5,5)
                                            v.HumanoidRootPart.Transparency = 1
                                            _G.FastAttack = true
                                        until v.Humanoid.Health <= 0  or not v:FindFirstChild("Humanoid") or not v:FindFirstChild("HumanoidRootPart")
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                                    end
                                end
                            end
                        else
                            _G.FastAttack = false
                            Hop()
                        end
                    end
                end
            end
        end)
    end
end)

task.spawn(function()
    while task.wait() do
        pcall(function()
            if _G.AutoFinishPhoenixDungeons then
                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird-Bird: Phoenix") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird-Bird: Phoenix") then
                    if game.Players.LocalPlayer.Backpack:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).Level.Value >= 400 then
                            topos(CFrame.new(-2812.76708984375, 254.803466796875, -12595.560546875))
                            if (CFrame.new(-2812.76708984375, 254.803466796875, -12595.560546875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                                wait(1.5)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SickScientist","Check")
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SickScientist","Heal")
                            end
                        end
                    elseif game.Players.LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
                        if game.Players.LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).Level.Value >= 400 then
                            topos(CFrame.new(-2812.76708984375, 254.803466796875, -12595.560546875))
                            if (CFrame.new(-2812.76708984375, 254.803466796875, -12595.560546875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                                wait(1.5)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SickScientist","Check")
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SickScientist","Heal")
                            end
                        end
                    end
                end
            end
        end)
    end
end)

task.spawn(function()
    while task.wait() do
        pcall(function()
            if _G.AutoFinishDoughDungeons then
                if game.Players.LocalPlayer.Character:FindFirstChild("Red Key") or game.Players.LocalPlayer.Backpack:FindFirstChild("Red Key")then
                    EquipWeapon("Red Key")
                    repeat task.wait() topos(CFrame.new(-2682.236572265625, 64.36634826660156, -12851.0625)) until (CFrame.new(-2682.236572265625, 64.36634826660156, -12851.0625).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 or not _G.AutoFinishDoughDungeons
                elseif game:GetService("ReplicatedStorage"):FindFirstChild("Dough King") or game:GetService("Workspace").Enemies:FindFirstChild("Dough King") then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Dough King") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Dough King" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        EquipWeapon(_G.Weapon)
                                        Buso()
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0,30,20))
                                        _G.FastAttack = true 
                                        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not _G.AutoFinishDoughDungeons or not v.Parent or v.Humanoid.Health <= 0
                                    _G.FastAttack = false
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Dough King") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Dough King").HumanoidRootPart.CFrame * CFrame.new(0,40,0))
                        end
                    end
                elseif game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") then
                    if tonumber(getgenv().CheckItemer("Conjured Cocoa")) >= 10 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SweetChaliceNpc")
                    elseif game:GetService("Workspace").Enemies:FindFirstChild("Cocoa Warrior") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Cocoa Warrior" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        EquipWeapon(_G.Weapon)
                                        Buso()
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0,30,20))
                                        v.HumanoidRootPart.CanCollide = false
                                        _G.FastAttack = true 
                                        PosFinD = v.HumanoidRootPart.CFrame
                                        FinDNameMs = v.Name
                                        MagnetFinD = true
                                    until not _G.AutoFinishDoughDungeons or not v.Parent or v.Humanoid.Health <= 0 or tonumber(getgenv().CheckItemer("Conjured Cocoa")) >= 10
                                    MagnetFinD = false
                                    _G.FastAttack = false
                                end
                            end
                        end
                    else
                        MagnetFinD = false
                        CFrame.new(95.61277770996094, 73.66975402832031, -12309.16796875)
                    end
                elseif game.Players.LocalPlayer.Character:FindFirstChild("Sweet Chalice") or game.Players.LocalPlayer.Backpack:FindFirstChild("Sweet Chalice") then
                    if CheckCakePiece():find("Do you want") then
                        EquipWeapon("Sweet Chalice")
                        wait(1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")
                    else
                        if game:GetService("Workspace").Enemies:FindFirstChild("Cookie Crafter") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Guard") or game:GetService("Workspace").Enemies:FindFirstChild("Baking Staff") or game:GetService("Workspace").Enemies:FindFirstChild("Head Baker") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Cookie Crafter" or v.Name == "Cake Guard" or v.Name == "Baking Staff" or v.Name == "Head Baker" then
                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                        repeat task.wait()
                                            EquipWeapon(_G.Weapon)
                                            Buso()
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid.WalkSpeed = 0
                                            v.Head.CanCollide = false 
                                            MagnetDoughtDor = true
                                            PosMonDoughtOpenDoorDor = v.HumanoidRootPart.CFrame
                                            MonCakeDor = v.Name
                                            topos(v.HumanoidRootPart.CFrame * CFrame.new(0,30,20))
                                            _G.FastAttack = true
                                        until not _G.AutoFinishDoughDungeons or not v.Parent or v.Humanoid.Health <= 0 or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince")
                                        _G.FastAttack = false
                                    end
                                end
                            end
                        else
                            MagnetDoughtDor = false
                            repeat task.wait()
                                topos(CFrame.new(-2024, 38, -12026))
                                if not _G.AutoFinishDoughDungeons then
                                    break
                                end
                            until not _G.AutoFinishDoughDungeons or GetDistance(CFrame.new(-2024, 38, -12026)) <= 10 or getEnemiesC() == true
                            if not _G.AutoFinishDoughDungeons then
                                StopTween(false)
                                return
                            end
                            repeat task.wait()
                                topos(CFrame.new(-1932, 38, -12848))
                                if not _G.AutoFinishDoughDungeons then
                                    break
                                end
                            until not _G.AutoFinishDoughDungeons or GetDistance(CFrame.new(-1932, 38, -12848)) <= 10 or getEnemiesC() == true
                            if not _G.AutoFinishDoughDungeons then
                                StopTween(false)
                                return
                            end
                            repeat task.wait()
                                topos(CFrame.new(-1588, 195, -12348))
                                if not _G.AutoFinishDoughDungeons then
                                    break
                                end
                            until not _G.AutoFinishDoughDungeons or GetDistance(CFrame.new(-1588, 195, -12348)) <= 10 or getEnemiesC() == true
                            if not _G.AutoFinishDoughDungeons then
                                StopTween(false)
                                return
                            end
                        end
                    end
                elseif game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or game:GetService("Workspace").Enemies:FindFirstChild("Urban") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Diablo" or v.Name == "Deandre" or v.Name == "Urban" then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat task.wait()
                                    EquipWeapon(_G.Weapon)
                                    Buso()
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(0,30,20))
                                    _G.FastAttack = true 
                                    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                until not _G.AutoFinishDoughDungeons or v.Humanoid.Health <= 0 or not v.Parent
                                _G.FastAttack = false
                            end
                        end
                    end
                elseif game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") then
                    topos(game:GetService("ReplicatedStorage"):FindFirstChild("Diablo").HumanoidRootPart.CFrame * CFrame.new(0,40,0))
                elseif game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") then
                    topos(game:GetService("ReplicatedStorage"):FindFirstChild("Deandre").HumanoidRootPart.CFrame * CFrame.new(0,40,0))
                elseif game:GetService("ReplicatedStorage"):FindFirstChild("Urban") then
                    topos(game:GetService("ReplicatedStorage"):FindFirstChild("Urban").HumanoidRootPart.CFrame * CFrame.new(0,40,0))
                else
                    while task.wait() do
                        pcall(function()
                            Hop()
                        end)
                    end
                end
            end
        end)
    end
end)

task.spawn(function()
    while task.wait() do
        pcall(function()
            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if _G.AutoFinishDoughDungeons and MagnetDoughtDor then
                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0 and v:FindFirstChild("HumanoidRootPart") and v.Name == tostring(MonCakeDor) then
                        if isnetworkowner ~= nil and isnetworkowner(v:FindFirstChild("HumanoidRootPart")) then                            
                            v:FindFirstChild("HumanoidRootPart").CanCollide = false
                            v:FindFirstChild("HumanoidRootPart").Transparency = 1
                            if not v:FindFirstChild("HumanoidRootPart"):FindFirstChild("BV") then
                                local m = Instance.new("BodyVelocity")
                                m.Parent = v:FindFirstChild("HumanoidRootPart")
                                m.Name = "BV"
                                m.MaxForce = Vector3.new(100000, 100000, 100000)
                                m.Velocity = Vector3.new(0, 0, 0)
                            end
                            if v:FindFirstChild("Humanoid"):FindFirstChild("Animator") then
                                v:FindFirstChild("Humanoid"):FindFirstChild("Animator"):Remove()
                            end
                            v:FindFirstChild("HumanoidRootPart").CFrame = PosMonDoughtOpenDoorDor
                        elseif game.Players.LocalPlayer:DistanceFromCharacter(v.HumanoidRootPart.Position) <= 300 then
                            v:FindFirstChild("HumanoidRootPart").CanCollide = false
                            v:FindFirstChild("HumanoidRootPart").Transparency = 1
                            if not v:FindFirstChild("HumanoidRootPart"):FindFirstChild("BV") then
                                local u = Instance.new("BodyVelocity")
                                u.Parent = v:FindFirstChild("HumanoidRootPart")
                                u.Name = "BV"
                                u.MaxForce = Vector3.new(100000, 100000, 100000)
                                u.Velocity = Vector3.new(0, 0, 0)
                            end
                            if v:FindFirstChild("Humanoid"):FindFirstChild("Animator") then
                                v:FindFirstChild("Humanoid"):FindFirstChild("Animator"):Remove()
                            end
                            v:FindFirstChild("HumanoidRootPart").CFrame = PosMonDoughtOpenDoorDor
                        end
                    end
                end
            end
        end)
    end
end)

task.spawn(function()
    while task.wait() do
        pcall(function()
            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if _G.AutoFinishDoughDungeons and MagnetFinD then
                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0 and v:FindFirstChild("HumanoidRootPart") and v.Name == tostring(FinDNameMs) then
                        if isnetworkowner ~= nil and isnetworkowner(v:FindFirstChild("HumanoidRootPart")) then                            
                            v:FindFirstChild("HumanoidRootPart").CanCollide = false
                            v:FindFirstChild("HumanoidRootPart").Transparency = 1
                            if not v:FindFirstChild("HumanoidRootPart"):FindFirstChild("BV") then
                                local m = Instance.new("BodyVelocity")
                                m.Parent = v:FindFirstChild("HumanoidRootPart")
                                m.Name = "BV"
                                m.MaxForce = Vector3.new(100000, 100000, 100000)
                                m.Velocity = Vector3.new(0, 0, 0)
                            end
                            if v:FindFirstChild("Humanoid"):FindFirstChild("Animator") then
                                v:FindFirstChild("Humanoid"):FindFirstChild("Animator"):Remove()
                            end
                            v:FindFirstChild("HumanoidRootPart").CFrame = PosFinD
                        elseif game.Players.LocalPlayer:DistanceFromCharacter(v.HumanoidRootPart.Position) <= 300 then
                            v:FindFirstChild("HumanoidRootPart").CanCollide = false
                            v:FindFirstChild("HumanoidRootPart").Transparency = 1
                            if not v:FindFirstChild("HumanoidRootPart"):FindFirstChild("BV") then
                                local u = Instance.new("BodyVelocity")
                                u.Parent = v:FindFirstChild("HumanoidRootPart")
                                u.Name = "BV"
                                u.MaxForce = Vector3.new(100000, 100000, 100000)
                                u.Velocity = Vector3.new(0, 0, 0)
                            end
                            if v:FindFirstChild("Humanoid"):FindFirstChild("Animator") then
                                v:FindFirstChild("Humanoid"):FindFirstChild("Animator"):Remove()
                            end
                            v:FindFirstChild("HumanoidRootPart").CFrame = PosFinD
                        end
                    end
                end
            end
        end)
    end
end)

task.spawn(function()
    while task.wait() do
        pcall(function()
            if _G.DeathDelet then
                if game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("Death") then
                    pcall(function()
                        game:GetService("ReplicatedStorage").Effect.Container.Death:Remove()
                    end)
                end
            end
        end)
    end
end)

task.spawn(function()
    pcall(function()
        while wait(.1) do
            if _G.GrabFruit then
                for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
                    if string.find(v.Name, "Fruit") then
                        if v:IsA("Tool") then
                            v.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 50, 0)
                            wait(.2)
                            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,v.Handle,0)
                        end
                    end
                end
            end
        end
    end)
end)

function LoadFruit()
    local TotalFruit = #game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryFruits")
    for i = 1,TotalFruit do v = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryFruits")
        for i2 = 1,#v do v2 = v[i]
            if v2.Price >= 1000000 then
                _G.Has1M = true
                NameFruit = v2.Name
            end
        end
    end
    function GetFruit(FruitName)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadFruit",FruitName)
    end
    if NameFruit ~= nil then
        GetFruit(NameFruit)
    end
end
task.spawn(function()
    while task.wait() do 
        pcall(function()
            if _G.AutoThirdWorld then 
                if game.Players.LocalPlayer.Data.Level.Value >= 1500 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor") == nil then
                        _G.AutoFarmLevel = false
                        LoadFruit()
                        _G.GrabFruit = true
                        wait(10)
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Quake Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake Fruit") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Human-Human: Buddha Fruit") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("String Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("String Fruit")or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Phoenix Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Phoenix Fruit") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rumble Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble Fruit") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Paw Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Paw Fruit") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Gravity Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Gravity Fruit") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dough Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough Fruit") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Venom Fruit") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Control Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Control Fruit") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Fruit") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Soul Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Soul Fruit") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","1")
                            wait(.5)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","2")
                            wait(1.5)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","1")
                            wait(.5)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","3")
                        else
                            while task.wait() do
                                pcall(function()
                                    Hop()
                                end)
                            end
                        end
                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Check") ~= 1 then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Don Swan") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Don Swan" then
                                    if v.Humanoid.Health > 0 then
                                        repeat task.wait()
                                            EquipWeapon(_G.Weapon)
                                            Buso()
                                            topos(v.HumanoidRootPart.CFrame * CFrame.new(0,30,20))
                                            v.HumanoidRootPart.CanCollide = false
                                            v.HumanoidRootPart.Size = Vector3.new(7,5,5)
                                            v.HumanoidRootPart.Transparency = 1
                                            _G.FastAttack = true
                                        until v.Humanoid.Health <= 0 or not v.Parent or not _G.AutoThirdWorld
                                    end
                                end
                            end
                        elseif game:GetService("ReplicatedStorage"):FindFirstChild("Don Swan") then    
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Don Swan").HumanoidRootPart.CFrame)
                        else
                            while task.wait() do
                                pcall(function()
                                    Hop()
                                end)
                            end
                        end
                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") ~= 3 then
                        if game.Players.LocalPlayer.Data.Level.Value >= 850 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 0 then
                            if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Swan Pirates") and string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"50") and game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                                if game:GetService("Workspace").Enemies:FindFirstChild("Swan Pirate") then
                                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == "Swan Pirate" then
                                            repeat task.wait()
                                                EquipWeapon(_G.Weapon)
                                                Buso()
                                                topos(v.HumanoidRootPart.CFrame * CFrame.new(0,30,20))
                                                v.HumanoidRootPart.CanCollide = false
                                                v.HumanoidRootPart.Size = Vector3.new(7,5,5)
                                                v.HumanoidRootPart.Transparency = 1
                                                _G.FastAttack = true
                                                BringMobs(v.HumanoidRootPart.CFrame, v.Name)
                                            until v.Humanoid.Health <= 0 or not v.Parent or not _G.AutoThirdWorld
                                        end
                                    end
                                else 
                                    topos(CFrame.new(872.306884765625, 121.60797119140625, 1243.0919189453125))
                                end
                            else
                                wait(1)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","BartiloQuest",1)
                            end
                        elseif game.Players.LocalPlayer.Data.Level.Value >= 850 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 1 then
                            wait(0.75)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo")
                            if game.Workspace.Enemies:FindFirstChild("Jeremy") then
                                repeat task.wait()
                                    Mob = game.Workspace.Enemies:FindFirstChild("Jeremy")
                                    EquipWeapon(_G.Weapon)
                                    Buso()
                                    topos(Mob.Character.HumanoidRootPart.CFrame * CFrame.new(0,10,15))
                                    Mob.Character.HumanoidRootPart.CanCollide = false
                                    Mob.Character.HumanoidRootPart.Size = Vector3.new(7,5,5)
                                    Mob.Character.HumanoidRootPart.Transparency = 1
                                    _G.FastAttack = true
                                    BringMobs(Mob.Character.HumanoidRootPart.CFrame, Mob.Name)
                                until Mob.Humanoid.Health <= 0 or not Mob.Parent or not _G.AutoThirdWorld
                            elseif game:GetService("ReplicatedStorage"):FindFirstChild("Jeremy") then
                                topos(CFrame.new(1958.5858154297, 448.94882202148, 879.37573242188))
                            else 
                                while task.wait() do 
                                    pcall(function()
                                        Hop()
                                    end)
                                end
                            end
                        elseif game.Players.LocalPlayer.Data.Level.Value >= 850 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 2 then
                            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,game:GetService("Workspace").Map.Dressrosa.BartiloPlates.Plate1.CFrame,0)
                            wait(.3)
                            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,game:GetService("Workspace").Map.Dressrosa.BartiloPlates.Plate2.CFrame,0)
                            wait(.3)
                            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,game:GetService("Workspace").Map.Dressrosa.BartiloPlates.Plate3.CFrame,0)
                            wait(.3)
                            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,game:GetService("Workspace").Map.Dressrosa.BartiloPlates.Plate4.CFrame,0)
                            wait(.3)
                            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,game:GetService("Workspace").Map.Dressrosa.BartiloPlates.Plate5.CFrame,0)
                            wait(.3)
                            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,game:GetService("Workspace").Map.Dressrosa.BartiloPlates.Plate6.CFrame,0)
                        end
                    end
                end
            end
        end)
    end
end)
Weaponlist = {}

pcall(function()
    for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
        if v:IsA("Tool") then
            table.insert(Weaponlist,v.Name)
        end
    end
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v:IsA("Tool") then
            table.insert(Weaponlist,v.Name)
        end
    end
end)


task.spawn(function()
    game.CoreGui.RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(v)
        if v.Name == "ErrorPrompt" then
            if _G.AutoRejoin then
                pcall(function()
                    repeat wait(.5) until game.CoreGui.RobloxPromptGui.promptOverlay.ErrorPrompt.MessageArea.ErrorFrame:FindFirstChild("ErrorMessage")
                    if tonumber(game.CoreGui.RobloxPromptGui.promptOverlay.ErrorPrompt.MessageArea.ErrorFrame.ErrorMessage.Text:split("\n")[2]:match("%d+")) ~= 772 then
                        game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
                    end
                end)
            end
        end
    end)
end)

task.spawn(function()
    while task.wait() do
        pcall(function()
            if _G.AutoUpStats then
                for i,v in pairs(_G.SelectStats) do
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint",v,_G.Points)
                end
            end
        end)
    end
end)

if not _G.Setting then
    _G.Setting = {}
end

function loadcheck()
    if isfile("NormalHub_BF_MB"..game.Players.LocalPlayer.Name..".json") then
    else
        writefile("NormalHub_BF_MB"..game.Players.LocalPlayer.Name..".json",game:GetService("HttpService"):JSONEncode(_G.Setting))
    end
end

function SaveSetting()
    if isfile("NormalHub_BF_MB"..game.Players.LocalPlayer.Name..".json") then
        writefile("NormalHub_BF_MB"..game.Players.LocalPlayer.Name..".json",game:GetService("HttpService"):JSONEncode(_G.Setting))
    else
        loadcheck()
    end
end

function LoadSave()
    if isfile("NormalHub_BF_MB"..game.Players.LocalPlayer.Name..".json") then
        _G.Setting = game:GetService("HttpService"):JSONDecode(readfile("NormalHub_BF_MB"..game.Players.LocalPlayer.Name..".json"))
    else 
        loadcheck()
    end
end

loadcheck()
LoadSave()

    function formatNumber(number)
        local i, k, j = tostring(number):match("(%-?%d?)(%d*)(%.?.*)")
        return i..k:reverse():gsub("(%d%d%d)", "%1,"):reverse()..j
    end
    
	local Library = loadstring(game:HttpGet(("https://raw.githubusercontent.com/WxHxCxKxExR/Normal_Pc/main/UI_MB_SALFESx2.lua" ), true))();

	local Window = Library:Window();

    local Beli = Window:SetBeli("Beli",formatNumber(game:GetService("Players").LocalPlayer.Data.Beli.Value),Color3.fromRGB(55, 243, 112))
    local Fragments = Window:SetBeli("Fragments",formatNumber(game:GetService("Players").LocalPlayer.Data.Fragments.Value),Color3.fromRGB(170, 85, 255))
    local Bounty = Window:SetBeli("Bounty",formatNumber(game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value),Color3.fromRGB(255, 170, 0))

    task.spawn(function()
        game:GetService("RunService").RenderStepped:Connect(function()
            Beli:Update("Beli",formatNumber(game:GetService("Players").LocalPlayer.Data.Beli.Value))
            Fragments:Update("Fragments", formatNumber(game:GetService("Players").LocalPlayer.Data.Fragments.Value))
            Bounty:Update("Bounty",formatNumber(game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value))
        end)
    end)
    
    local Main = Window:Tab('6034744031',"Main")
    local Item = Window:Tab('6031360355','Item')
    local Stats = Window:Tab('6026647906','Stats')
    local Shop = Window:Tab('6022668875','Shop')
    local Teleport = Window:Tab('6034684937','Teleport')
    local Dungeon = Window:Tab('6035153639','Dungeon')
    local Misc = Window:Tab('6034509993','Misc')

    Item:AddSeperator([[ Auto Tushita ]])
    if not _G.Setting.AutoTushita then _G.Setting.AutoTushita = false end
    Item:AddToggle("Auto Tushita",_G.Setting.AutoTushita,function(value)
        _G.AutoTushita = value
    end)
    if not _G.Setting.AutoTushitaHop then _G.Setting.AutoTushitaHop = false end
    Item:AddToggle("Auto Tushita Hop",_G.Setting.AutoTushitaHop,function(value)
        _G.AutoTushitaHop = value
    end)

    spawn(function()
        while wait() do
            pcall(function()
                if _G.AutoTushita then
                    if game:GetService("Workspace").Map.Turtle:FindFirstChild("TushitaGate") then
                        if not game.Players.LocalPlayer.Character:FindFirstChild("Holy Torch") and not game.Players.LocalPlayer.Backpack:FindFirstChild("Holy Torch") then
                            topos(CFrame.new(5148.03613, 162.352493, 910.548218))
                            wait(0.7)
                        else
                            EquipWeapon("Holy Torch")
                            task.wait(1)
                            repeat task.wait()
                                topos(CFrame.new(-10752, 417, -9366))
                            until not _G.AutoTushita or (CFrame.new(-10752, 417, -9366).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10
                            wait(.7)
                            repeat task.wait()
                                topos(CFrame.new(-11672, 334, -9474))
                            until not _G.AutoTushita or (CFrame.new(-11672, 334, -9474).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10
                            wait(.7)
                            repeat task.wait()
                                topos(CFrame.new(-12132, 521, -10655))
                            until not _G.AutoTushita or (CFrame.new(-12132, 521, -10655).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10
                            wait(.7)
                            repeat task.wait()
                                topos(CFrame.new(-13336, 486, -6985))
                            until not _G.AutoTushita or (CFrame.new(-13336, 486, -6985).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10
                            wait(.7)
                            repeat task.wait()
                                topos(CFrame.new(-13489, 332, -7925))
                            until not _G.AutoTushita or (CFrame.new(-13489, 332, -7925).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Longma [Lv. 2000] [Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Longma [Lv. 2000] [Boss]") then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Longma [Lv. 2000] [Boss]") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Longma [Lv. 2000] [Boss]" then
                                        repeat task.wait()
                                            EquipWeapon(_G.Weapon)
                                            Buso()
                                            topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,20))
                                            v.HumanoidRootPart.CanCollide = false
                                            _G.FastAttack = true
                                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                        until v.Humanoid.Health <= 0 or not _G.AutoTushita or not v.Parent
                                    end
                                end
                            else 
                                if game:GetService("ReplicatedStorage"):FindFirstChild("Longma [Lv. 2000] [Boss]") then
                                    topos(game:GetService("ReplicatedStorage"):FindFirstChild("Longma [Lv. 2000] [Boss]").HumanoidRootPart.CFrame * CFrame.new(0,40,0))
                                end
                            end
                        else
                            if _G.AutoTushitaHop then
                                while task.wait() do
                                    Hop()
                                end
                            end
                        end
                    end
                end
            end)
        end
    end)

    Item:AddSeperator([[ Hallow Scythe ]])
    Item:AddToggle("Auto Hallow Scythe",_G.AutoFarmBossHallow,function(value)
        _G.AutoFarmBossHallow = value
        Clip = value
        if not value then
            _G.FastAttack = false
            topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
    end)
    Item:AddToggle("Auto Hallow Scythe [ Hop ]",_G.AutoFarmBossHallowHOP,function(value)
        _G.AutoFarmBossHallowHOP = value
    end)

    spawn(function()
        while task.wait() do
            if _G.AutoFarmBossHallow then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Soul Reaper" then
                                if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0 then
                                    repeat task.wait()
                                        EquipWeapon(_G.Weapon)
                                        Buso()
                                        topos(Mob.Character.HumanoidRootPart.CFrame * CFrame.new(0,10,15))
                                        _G.FastAttack = true 
                                        v.HumanoidRootPart.Transparency = 1
                                    until not v.Parent or v.Humanoid.Health <= 0 or not _G.AutoFarmBossHallow
                                    _G.FastAttack = false
                                end
                            end
                        end
                    elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hallow Essence") then
                        repeat topos(CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125)) task.wait() until (CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8 or not SaveSettings["Main"]["AutoFarmBossHallow"] or game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper") or game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper")
                        EquipWeapon("Hallow Essence")
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper").HumanoidRootPart.CFrame * CFrame.new(0,40,0))
                        else
                            if _G.AutoFarmBossHallowHOP then
                                Hop()
                            else
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
                            end
                        end
                    end
                end)
            end
        end
    end)

    function getTarget(Name,CF,CFH)
        if CF then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild(Name) then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == Name then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat task.wait()
                                    EquipWeapon(_G.Weapon)
                                    Buso()
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(0,15,10))
                                    _G.FastAttack = true 
                                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                until not CF or not v.Parent or v.Humanoid.Health <= 0
                                _G.FastAttack = false
                            end
                        end
                    end
                else
                    if game:GetService("ReplicatedStorage"):FindFirstChild(Name) then
                        topos(game:GetService("ReplicatedStorage"):FindFirstChild(Name).HumanoidRootPart.CFrame * CFrame.new(0,40,0))
                    else
                        if CFH then
                            if not DoneHOP then
                                Hop()
                                DoneHOP = true
                            end
                        end
                    end
                end
            end)
        end
    end
    Item:AddSeperator([[ Buddy Sword ]])
    Item:AddToggle("Auto Buddy Sword",_G.AutoBuddySword,function(value)
        _G.AutoBuddySword = value
        Clip = value
        if not value then
            _G.FastAttack = false
            topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
        task.spawn(function()
            repeat task.wait()
                getTarget("Cake Queen", _G.AutoBuddySword, _G.AutoBuddySwordHOP)
            until not value
        end)
    end)
    Item:AddToggle("Auto Buddy Sword [ Hop ]",_G.AutoBuddySwordHOP,function(value)
        _G.AutoBuddySwordHOP = value
    end)

    Item:AddSeperator([[ Canvander ]])
    Item:AddToggle("Auto Canvander",_G.AutoCanvander,function(value)
        _G.AutoCanvander = value
        Clip = value
        if not value then
            _G.FastAttack = false
            topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
        task.spawn(function()
            repeat task.wait()
                getTarget("Beautiful Pirate", _G.AutoCanvander, _G.AutoCanvanderHOP)
            until not value
        end)
    end)
    Item:AddToggle("Auto Canvander [ Hop ]",_G.AutoCanvanderHOP,function(value)
        _G.AutoCanvanderHOP = value
    end)

    Item:AddSeperator([[ Dark Dagger ]])
    Item:AddToggle("Auto Dark Dagger",_G.AutoDarkDagger,function(value)
        _G.AutoDarkDagger = value
        Clip = value
        if not value then
            _G.FastAttack = false
            topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
    end)
    Item:AddToggle("Auto Dark Dagger [ Hop ]",_G.AutoDarkDaggerHOP,function(value)
        _G.AutoDarkDaggerHOP = value
    end)

    task.spawn(function()
        while true do task.wait()
            pcall(function()
                if _G.AutoDarkDagger then
                    if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra True Form") or game:GetService("Workspace").Enemies:FindFirstChild("rip_indra") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == ("rip_indra True Form" or v.Name == "rip_indra") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                                repeat task.wait()
                                    EquipWeapon(_G.Weapon)
                                    Buso()
                                    v.HumanoidRootPart.CanCollide = false
                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(0,15,10))
                                    _G.FastAttack = true
                                    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                until not _G.AutoDarkDagger or v.Humanoid.Health <= 0 or not v.Parent
                                _G.FastAttack = false
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("rip_indra True Form") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("rip_indra True Form").HumanoidRootPart.CFrame * CFrame.new(0,40,0))
                        elseif game:GetService("ReplicatedStorage"):FindFirstChild("rip_indra") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("rip_indra").HumanoidRootPart.CFrame * CFrame.new(0,40,0))
                        else
                            if _G.AutoDarkDaggerHOP then
                                Hop()
                            end
                        end
                    end
                end
            end)
        end
    end)

    Item:AddSeperator([[ Pole v1 ]])
    Item:AddToggle("Auto Pole v1",_G.AutoPoleVer1,function(value)
        _G.AutoPoleVer1 = value
        Clip = value
        if not value then
            _G.FastAttack = false
            topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
        task.spawn(function()
            repeat task.wait()
                getTarget("Thunder God", _G.AutoPoleVer1, _G.AutoPoleVer1HOP)
            until not value
        end)
    end)
    Item:AddToggle("Auto Pole v1 [ Hop ]",_G.AutoPoleVer1HOP,function(value)
        _G.AutoPoleVer1HOP = value
    end)

    Item:AddSeperator([[ Saber ]])
    Item:AddToggle("Auto Saber",_G.AutoSaber,function(value)
        _G.AutoSaber = value
        Clip = value
        if not value then
            _G.FastAttack = false
            topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
    end)
    Item:AddToggle("Auto Saber [ Hop ]",_G.AutoSaber_Hop,function(value)
        _G.AutoSaber_Hop = value
    end)
    task.spawn(function()
        while true do task.wait()
            if _G.AutoSaber and OldWorld and tonumber(game.Players.LocalPlayer.Data.Level.Value) >= 200 then
                pcall(function()
                    if game:GetService("Workspace").Map.Jungle.Final:FindFirstChild("Part").Transparency == 0 then
                        if workspace.Map.Desert.Burn.Part.Transparency == 0 then
                            for i, v in pairs(workspace.Map.Jungle.QuestPlates:GetChildren()) do
                                if v:FindFirstChild("Button") and v:FindFirstChild("Button"):FindFirstChild("TouchInterest") then
                                    if firetouchinterest ~= nil then
                                        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v:FindFirstChild("Button"), 0)
                                        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v:FindFirstChild("Button"), 1)
                                    else
                                        repeat task.wait()
                                            topos(v:FindFirstChild("Button").CFrame)
                                        until game.Players.LocalPlayer:DistanceFromCharacter(v:FindFirstChild("Button").CFrame.Position) <= 5 or not _G.AutoSaber
                                    end
                                end
                            end
                            if not game.Players.LocalPlayer.Character:FindFirstChild("Torch") and not game.Players.LocalPlayer.Backpack:FindFirstChild("Torch") then
                                repeat task.wait()
                                    topos(workspace.Map.Jungle.Torch.CFrame)
                                until game.Players.LocalPlayer.Character:FindFirstChild("Torch") or game.Players.LocalPlayer.Backpack:FindFirstChild("Torch") or not _G.AutoSaber
                            elseif game.Players.LocalPlayer.Character:FindFirstChild("Torch") or game.Players.LocalPlayer.Backpack:FindFirstChild("Torch") then
                                game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:FindFirstChild("Torch"))
                            end
                            repeat task.wait()
                                game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:FindFirstChild("Torch"))
                                topos(workspace.Map.Desert.Burn.Fire.CFrame * CFrame.new(0, 0, 2))
                            until not _G.AutoSaber or workspace.Map.Desert.Burn.Part.Transparency ~= 0
                        else
                            if game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("ProQuestProgress").UsedCup == false then
                                if not game.Players.LocalPlayer.Character:FindFirstChild("Cup") and not game.Players.LocalPlayer.Backpack:FindFirstChild("Cup") then
                                    repeat task.wait()
                                        topos(workspace.Map.Desert.Cup.CFrame)
                                    until game.Players.LocalPlayer.Character:FindFirstChild("Cup") or game.Players.LocalPlayer.Backpack:FindFirstChild("Cup") or not _G.AutoSaber
                                elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Cup") then
                                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:FindFirstChild("Cup"))
                                elseif game.Players.LocalPlayer.Character:FindFirstChild("Cup") then
                                    if game.Players.LocalPlayer.Character:FindFirstChild("Cup").Handle.Drop1.Transparency == 1 then
                                        repeat task.wait()
                                            if game.Players.LocalPlayer.Backpack:FindFirstChild("Cup") then
                                                game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:FindFirstChild("Cup"))
                                            end
                                            topos(CFrame.new(1393.7742919922, 37.473247528076, -1319.1640625))
                                        until game.Players.LocalPlayer.Character:FindFirstChild("Cup").Handle.Drop1.Transparency ~= 1 or not _G.AutoSaber
                                    elseif game.Players.LocalPlayer.Character:FindFirstChild("Cup").Handle.Drop2.Transparency == 1 then
                                        repeat task.wait()
                                            topos(CFrame.new(1393.7742919922, 37.473247528076, -1319.1640625))
                                        until game.Players.LocalPlayer.Character:FindFirstChild("Cup").Handle.Drop2.Transparency ~= 1 or not _G.AutoSaber
                                    else
                                        game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("ProQuestProgress", "SickMan")
                                    end
                                end
                            elseif game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("ProQuestProgress").UsedCup == true and game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("ProQuestProgress").TalkedSon == false then
                                game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("ProQuestProgress", "RichSon")
                            elseif game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("ProQuestProgress").UsedCup == true and game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("ProQuestProgress").TalkedSon == true then
                                if game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("ProQuestProgress").KilledMob == false then
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Mob Leader") then
                                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if v.Name == "Mob Leader" then
                                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                                    repeat task.wait()
                                                        EquipWeapon(_G.Weapon)
                                                        Buso()
                                                        v.HumanoidRootPart.CanCollide = false
                                                        topos(v.HumanoidRootPart.CFrame * MethodFarm)
                                                        _G.FastAttack = true 
                                                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                                    until not _G.AutoSaber or v.Humanoid.Health <= 0
                                                    _G.FastAttack = false
                                                end
                                            end
                                        end
                                    else
                                        topos(CFrame.new(-2850.20068, 7.39224768, 5354.99268))
                                    end
                                else
                                    if game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("ProQuestProgress").UsedRelic == false then
                                        if not game.Players.LocalPlayer.Character:FindFirstChild("Relic") and not game.Players.LocalPlayer.Backpack:FindFirstChild("Relic") then
                                            game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("ProQuestProgress", "RichSon")
                                        elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Relic") then
                                            game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:FindFirstChild("Relic"))
                                        elseif game.Players.LocalPlayer.Character:FindFirstChild("Relic") then
                                            repeat task.wait()
                                                if game.Players.LocalPlayer.Backpack:FindFirstChild("Relic") then
                                                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:FindFirstChild("Relic"))
                                                end
                                                topos(CFrame.new(-1406.9040527344, 29.977327346802, 4.9066467285156))
                                            until not game.Players.LocalPlayer.Character:FindFirstChild("Relic") and not game.Players.LocalPlayer.Backpack:FindFirstChild("Relic") or not _G.AutoSaber
                                        end
                                    end
                                end
                            end
                        end
                    else
                        if game:GetService("Workspace").Enemies:FindFirstChild("Saber Expert") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Saber Expert" then
                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                        repeat task.wait()
                                            EquipWeapon(_G.Weapon)
                                            Buso()
                                            v.HumanoidRootPart.CanCollide = false
                                            topos(v.HumanoidRootPart.CFrame * MethodFarm)
                                            _G.FastAttack = true 
                                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                        until not _G.AutoSaber or not v.Parent or v.Humanoid.Health <= 0
                                        _G.FastAttack = false
                                    end
                                end
                            end
                        else
                            if game:GetService("ReplicatedStorage"):FindFirstChild("Saber Expert") then
                                topos(game:GetService("ReplicatedStorage"):FindFirstChild("Saber Expert").HumanoidRootPart.CFrame * CFrame.new(0,40,0))
                            else
                                if _G.AutoSaber_Hop then
                                    Hop()
                                end
                            end
                        end
                    end
                end)
            end
        end
    end)

    Item:AddSeperator([[ Twin Hooks ]])
    Item:AddToggle("Auto Twin Hooks",_G.AutoTwinHooks,function(value)
        _G.AutoTwinHooks = value
        Clip = value
        if not value then
            _G.FastAttack = false
            topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
        task.spawn(function()
            repeat task.wait()
                getTarget("Captain Elephant", _G.AutoTwinHooks, _G.AutoTwinHooksHop)
            until not value
        end)
    end)
    Item:AddToggle("Auto Twin Hooks [ Hop ]",_G.AutoTwinHooksHop,function(value)
        _G.AutoTwinHooksHop = value
    end)

    Item:AddSeperator([[ Serpent bow ]])
    Item:AddToggle("Auto Serpent bow",_G.AutoSerpentBow,function(value)
        _G.AutoSerpentBow = value
        Clip = value
        if not value then
            _G.FastAttack = false
            topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
        task.spawn(function()
            repeat task.wait()
                getTarget("Island Empress", _G.AutoSerpentBow, _G.AutoSerpentBowHop)
            until not value
        end)
    end)
    Item:AddToggle("Auto Serpent bow [ Hop ]",_G.AutoSerpentBowHop,function(value)
        _G.AutoSerpentBowHop = value
    end)

    Main:AddSeperator([[ 📱 Normal Hub Mobile Script 📱 ]])

    local ServerTime = Main:AddLabel("Time Server")

    _G.Current_Time = nil
    task.spawn(function()
        while true do wait()
            pcall(function()
                local a = math.floor(workspace.DistributedGameTime)
                local bR = math.floor(workspace.DistributedGameTime / 60)
                local rR = math.floor(workspace.DistributedGameTime / 60 / 60)
                local a = a - (bR * 60)
                local bR = bR - (rR * 60)
                if rR < 1 then
                    if bR < 1 then
                        _G.Current_Time = ""..rR .. " Hr(s), " .. bR .. " Min(s), " .. a .. " Sec(s)" 
                    else
                        _G.Current_Time = ""..rR .. " Hr(s), " .. bR .. " Min(s), " .. a .. " Sec(s)" 
                    end
                else
                    _G.Current_Time = "".. rR .. " Hr(s), " .. bR .. " Min(s), " .. a .. " Sec(s)"
                end
                ServerTime:Set(("%s"):format(_G.Current_Time))
            end)
        end
    end)
    local FullMoon = Main:AddLabel("Full Moon : ⛔")
    
    spawn(function()
        while task.wait() do
            pcall(function()
                if game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149431" then
                    FullMoon:Set("Full Moon 100% : 🌕")
                elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149052" then
                    FullMoon:Set("Full Moon 75% : 🌖")
                elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709143733" then
                    FullMoon:Set("Full Moon 50% : 🌗")
                elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709150401" then
                    FullMoon:Set("Full Moon 25% : 🌘")
                elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149680" then
                    FullMoon:Set("Full Moon 15% : 🌜")
                else
                    FullMoon:Set("Full Moon 0% : 🌚")
                end
            end)
        end
    end)

    Main:AddToggle("Auto Farm Level",_G.AutoFarmLevel,function(value)
        _G.AutoFarmLevel = value
        if not value then
            _G.FastAttack = false
            topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
    end)

    Main:AddToggle("Auto New World",_G.AutoNewWorld,function(value)
        _G.AutoNewWorld = value
        if not value then
            _G.FastAttack = false
            topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
    end)

    Main:AddToggle("Auto Thrid World",_G.AutoThirdWorld,function(value)
        _G.AutoThirdWorld = value
        if not value then
            _G.FastAttack = false
            topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
    end)

    Main:AddSeperator([[ ✨ Setting Farm ✨ ]])

    if _G.AutoRejoin == nil then _G.AutoRejoin = true end
    Main:AddToggle("Auto Rejoin",_G.AutoRejoin,function(value)
        _G.AutoRejoin = value
    end)

    if _G.FastAttackT == nil then _G.FastAttackT = true end
    Main:AddToggle("Fast Attack",_G.FastAttackT,function(value)
        _G.FastAttackT = value
    end)
    if _G.RemoveNotifications == nil then _G.RemoveNotifications = true end
    if _G.RemoveNotifications then
        game:GetService("Players").LocalPlayer.PlayerGui.Notifications.Enabled = false
    else
        game:GetService("Players").LocalPlayer.PlayerGui.Notifications.Enabled = true
    end
    Main:AddToggle("Remove Notifications",_G.RemoveNotifications,function(value)
        _G.RemoveNotifications = value
        if value then
            game:GetService("Players").LocalPlayer.PlayerGui.Notifications.Enabled = false
        else
            game:GetService("Players").LocalPlayer.PlayerGui.Notifications.Enabled = true
        end
    end)
    
    if _G.DeathDelet == nil then _G.DeathDelet = true end
    Main:AddToggle("Remove Effect Death",_G.DeathDelet,function(value)
        _G.DeathDelet = value
        if value then
            game:GetService("Players").LocalPlayer.PlayerGui.Notifications.Enabled = false
        else
            game:GetService("Players").LocalPlayer.PlayerGui.Notifications.Enabled = true
        end
    end)
    
    
    Main:AddToggle("Super Fast Attack [ Kicked 20% ]",_G.SuperFastAttackReal,function(value)
        _G.SuperFastAttackReal = value
    end)
    ]]

    Main:AddToggle("Auto Screen Boost",_G.ScreenBoost,function(value)
        if value then
            game:GetService("RunService"):Set3dRenderingEnabled(false)
        else
            game:GetService("RunService"):Set3dRenderingEnabled(true)
        end
    end)

    local Seclet_Weapon = Main:AddDropdown("Select Weapons","",false,Weaponlist,function(value)
        _G.Weapon = value
    end)

    Main:AddButton("Refesh Weapon",function()
        Seclet_Weapon:Clear()

        pcall(function()
            for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if v:IsA("Tool") then
                    Seclet_Weapon:Add(v.Name)
                end
            end
            for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if v:IsA("Tool") then
                    Seclet_Weapon:Add(v.Name)
                end
            end
        end)
    end)

    Main:AddSeperator([[ 🎸 Soul Guitar 🎸 ]])
    local Set_Moon = Main:AddLabel("Full Moon : ❌")

    Main:AddToggle("Auto Soul Guitar [ 20(s) ]",_G.AutoSoulGuitar ,function(value)
        _G.AutoSoulGuitar = value
        Clip = value
        if not value then
            _G.FastAttack = false
            topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
    end)

    Main:AddToggle("Hop Find Full Moon [ Server ]",_G.FindFullMoon,function(value)
        _G.FindFullMoon = value
    end)

    Main:AddSeperator([[ ⚙️ Gear ⚙️ ]])

    Main:AddToggle("Tween To Gear",_G.TweenToGear,function(value)
        _G.TweenToGear = value
        Clip = value
        if not value then
            _G.FastAttack = false
            topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
    end)

    spawn(function()
        while task.wait() do
            pcall(function()
                if _G.TweenToGear then
                    for i,v in pairs(game:GetService("Workspace").Map.MysticIsland:GetChildren()) do
                        if v.Name == "Part" then
                            if v.Color == Color3.fromRGB(128, 187, 219) then
                                topos(v.CFrame)
                            end
                        end
                    end
                end
            end)
        end
    end)


    Main:AddToggle("Esp Gear",GearESP,function(value)
        GearESP = value
        while GearESP do wait()
            UpdateGearESP() 
        end
    end)

    Main:AddButton("Teleport To Gear",function()
        for i,v in pairs(game:GetService("Workspace").Map.MysticIsland:GetChildren()) do
            if v.Name == "Part" then
                if v.Color == Color3.fromRGB(128, 187, 219) then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
                end
            end
        end
    end)

    Main:AddSeperator([[ 🧬 Race V.4 🧬 ]])

    Main:AddToggle("Transformed Race [ Fully ]",_G.AutoCompleteTrail,function(value)
        _G.AutoTransformedRace = value
        Clip = value
        if not value then
            _G.FastAttack = false
            topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
    end)

    spawn(function()
        while task.wait() do
            pcall(function()
                if _G.AutoTransformedRace then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("UpgradeRace", "Buy")
                    if game.Players.LocalPlayer.Character.RaceEnergy.Value == 1 then
                        game:GetService("VirtualInputManager"):SendKeyEvent(true,"Y",false,game)
                        game:GetService("VirtualInputManager"):SendKeyEvent(false,"Y",false,game)
                    end
                    if game.Players.LocalPlayer.Character.RaceTransformed.Value == true then
                        repeat wait() 
                            topos(CFrame.new(-1617.8350830078125, 195.68605041503906, -12313.9306640625))
                        until not game.Players.LocalPlayer.Character.RaceTransformed.Value or not _G.AutoTransformedRace
                    else
                        if game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 1 then 
                            if CheckCakePiece() == "Do you want to open the portal now?" and _G.Setting.SpawnCakePiece then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")
                            else
                                if game.Workspace.Enemies:FindFirstChild("Cookie Crafter") or game.Workspace.Enemies:FindFirstChild("Cake Guard") or game.Workspace.Enemies:FindFirstChild("Baking Staff") or game.Workspace.Enemies:FindFirstChild("Head Baker") then
                                    for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                        if v.Name == "Cookie Crafter" or v.Name == "Cake Guard" or v.Name == "Baking Staff" or v.Name == "Head Baker" then
                                            repeat task.wait()
                                                EquipWeapon(_G.Weapon)
                                                Buso()
                                                topos(v.HumanoidRootPart.CFrame * CFrame.new(0,50,0))
                                                v.HumanoidRootPart.CanCollide = false
                                                v.HumanoidRootPart.Size = Vector3.new(7,5,5)
                                                v.HumanoidRootPart.Transparency = 1
                                                _G.FastAttack = true
                                                MagnetCandies = true
                                                PosCake = v.HumanoidRootPart.CFrame
                                                SettingMagnet = "AutoFarmCandiesMagnet"
                                                BringMobs(v.HumanoidRootPart.CFrame,v.Name)
                                            until _G.AutoTransformedRace == false or v.Humanoid.Health <= 0 or game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0 or game.Players.LocalPlayer.Character.RaceTransformed.Value == true
                                        end
                                    end
                                elseif game.ReplicatedStorage:FindFirstChild("Cookie Crafter") or game.ReplicatedStorage:FindFirstChild("Cake Guard") or game.ReplicatedStorage:FindFirstChild("Baking Staff") or game.ReplicatedStorage:FindFirstChild("Head Baker") then
                                    MagnetCandies = false
                                    _G.FastAttack = false
                                    for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
                                        if v.Name == "Cookie Crafter" or v.Name == "Cake Guard" or v.Name == "Baking Staff" or v.Name == "Head Baker" then
                                            topos(v.HumanoidRootPart.CFrame)
                                        end 
                                    end
                                else
                                    topos(CFrame.new(-1617.8350830078125, 195.68605041503906, -12313.9306640625))
                                end
                            end
                        elseif game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0 then
                            if game.Workspace.Enemies:FindFirstChild("Cake Prince") or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince") then
                                if (CFrame.new(-2089.41504, 4583.10889, -14800.7881, 0.317375928, 0, -0.948299825, -0, 1, -0, 0.948299825, 0, 0.317375928).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 1500 then
                                    topos(game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.CFrame)
                                else
                                    for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                        if v.Name == "Cake Prince" then 
                                            repeat task.wait()
                                                if (CFrame.new(-2089.41504, 4583.10889, -14800.7881, 0.317375928, 0, -0.948299825, -0, 1, -0, 0.948299825, 0, 0.317375928).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 1500 then
                                                    break
                                                end
                                                EquipWeapon(EquipWeapon(_G.Weapon))
                                                Buso()
                                                topos(v.HumanoidRootPart.CFrame * CFrame.new(0,50,0))
                                                v.HumanoidRootPart.CanCollide = false
                                                v.HumanoidRootPart.Size = Vector3.new(7,5,5)
                                                v.HumanoidRootPart.Transparency = 1
                                                _G.FastAttack = true
                                                MagnetCandies = false
                                            until _G.AutoTransformedRace == false  or v.Humanoid.Health <= 0 or game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 1 or game.Players.LocalPlayer.Character.RaceTransformed.Value == true
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end)
        end
    end)

    Main:AddToggle("Auto Complete Race V.4",_G.AutoCompleteTrail,function(value)
        _G.AutoCompleteTrail = value
        Clip = value
        if not value then
            _G.FastAttack = false
            topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
    end)

    spawn(function()
        while wait(1) do
            pcall(function()
                if _G.AutoCompleteTrail and MethodWeapon then
                    for x,z in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        if z.ClassName == "Tool" and z.Name ~= "Water Body" and z.Name ~= "Summon Sea Beast" then
                            EquipWeapon(z.Name)
                        end 
                    end
                end
            end)
        end
    end)
    
    spawn(function()
        while task.wait() do
            pcall(function()
                if _G.AutoCompleteTrail then
                    if game:GetService("Players")["LocalPlayer"].Data.Race.Value == "Mink" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Map.MinkTrial.Ceiling.CFrame * CFrame.new(0,-5,0)
                        wait(1)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Map.MinkTrial.Ceiling.CFrame
                    elseif game:GetService("Players")["LocalPlayer"].Data.Race.Value == "Fishman" then
                        if game:GetService("Workspace").SeaBeasts:FindFirstChild("SeaBeast1") then
                            topos(game:GetService("Workspace").SeaBeasts:FindFirstChild("SeaBeast1").HumanoidRootPart.CFrame * CFrame.new(0,150,0))
                            for i,v in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
                                if v.Name == "SeaBeast1" then
                                    Buso()
                                    MethodWeapon = true
                                    game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
                                    game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
                                    game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
                                    game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
                                    game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game)
                                    game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    _G.FastAttack = true
                                end
                            end
                        end
                    elseif game:GetService("Players")["LocalPlayer"].Data.Race.Value == "Human" then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v:FindFirstChild("Humanoid") or v:FindFirstChild("HumanoidRootPart") then
                                if v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        EquipWeapon(_G.Weapon)
                                        Buso()
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Head.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0,30,10))
                                        MagnetFarm = true
                                        _G.FastAttack = true
                                        BringMobs(v.HumanoidRootPart.CFrame,v.Name)
                                    until v.Humanoid.Health <= 0 or not _G.AutoCompleteTrail
                                end
                            end
                        end
                    elseif game:GetService("Players")["LocalPlayer"].Data.Race.Value == "Skypiea" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.SkyTrial.Model.FinishPart.CFrame
                    elseif game:GetService("Players")["LocalPlayer"].Data.Race.Value == "Ghoul" then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v:FindFirstChild("Humanoid") or v:FindFirstChild("HumanoidRootPart") then
                                if v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        EquipWeapon(_G.Weapon)
                                        Buso()
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Head.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0,30,10))
                                        MagnetFarm = true
                                        _G.FastAttack = true
                                        BringMobs(v.HumanoidRootPart.CFrame,v.Name)
                                    until v.Humanoid.Health <= 0 or not _G.AutoCompleteTrail
                                end
                            end
                        end
                    elseif game:GetService("Players")["LocalPlayer"].Data.Race.Value == "Cyborg" then
                        topos(CFrame.new(28385.9414, 14896.5352, 46.568119, 0.364147365, 1.69999606e-08, -0.93134135, -3.18490692e-08, 1, 5.80045834e-09, 0.93134135, 2.75501328e-08, 0.364147365))
                    end
                end
            end)
        end
    end)

    Main:AddButton("Teleport To Temple of Time",function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(29437.5801, 15067.0342, -87.9190063, 0, 0, 1, 0, 1, -0, -1, 0, 0)
    end)

    Main:AddButton("Teleport Race v4 Door",function()
        if game:GetService("Players")["LocalPlayer"].Data.Race.Value == "Cyborg" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28492.380859375, 14896.0380859375, -421.0440368652344)
        elseif game:GetService("Players")["LocalPlayer"].Data.Race.Value == "Mink" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(29020.626953125, 14890.6611328125, -379.4805908203125)
        elseif game:GetService("Players")["LocalPlayer"].Data.Race.Value == "Human" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(29237.23828125, 14890.658203125, -206.6375274658203)
        elseif game:GetService("Players")["LocalPlayer"].Data.Race.Value == "Skypiea" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28968.041015625, 14919.30859375, 233.4633026123047)
        elseif game:GetService("Players")["LocalPlayer"].Data.Race.Value == "Ghoul" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28671.728515625, 14890.7158203125, 454.15283203125)
        elseif game:GetService("Players")["LocalPlayer"].Data.Race.Value == "Fishman" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28223.845703125, 14890.658203125, -210.97348022460938)
        end
    end)

    Main:AddSeperator([[ 🧹 Cursed Dual Katana 🧹 ]])

    Main:AddToggle("Auto Get [ Cursed Dual Katana ]",_G.AutoGetCDK,function(value)
        _G.AutoGetCDK = value
        Clip = value
        if not value then
            _G.FastAttack = false
            topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
    end)

    Main:AddToggle("Auto Quest [ Tushuta ]",_G.AutoQuestTushuta,function(value)
        _G.AutoQuestTushuta = value
        Clip = value
        if not value then
            _G.FastAttack = false
            topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
    end)

    Main:AddToggle("Auto Quest [ Yama ]",_G.AutoQuestYama,function(value)
        _G.AutoQuestYama = value
        Clip = value
        if not value then
            _G.FastAttack = false
            topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
    end)

    Main:AddSeperator([[📍 Mastery Farm 📍]])

    Main:AddToggle("Auto Farm Mastery [ Fruit ]",_G.AutoFarmMasteryFruit,function(value)
        _G.AutoFarmMasteryFruit = value
        Clip = value
        if not value then
            _G.FastAttack = false
            topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
    end)

    Main:AddToggle("Auto Farm Mastery [ Gun ]",_G.AutoFarmMasteryGun,function(value)
        _G.AutoFarmMasteryGun = value
        Clip = value
        if not value then
            _G.FastAttack = false
            topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
    end)

    _G.SkillAt = 50
    Main:AddSlider("Skill At",1,100,_G.SkillAt,function(value)
        _G.SkillAt = value
    end)

    Main:AddSeperator([[ 🐢 Finish Advanced Dungeons 🐢]])

    Main:AddToggle("Auto Finish Dough Dungeons",_G.AutoFinishDoughDungeons,function(value)
        _G.AutoFinishDoughDungeons = value
        Clip = value
        if not value then
            _G.FastAttack = false
            topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
    end)

    Main:AddToggle("Auto Finish Phoenix Dungeons",_G.AutoFinishPhoenixDungeons,function(value)
        _G.AutoFinishPhoenixDungeons = value
        Clip = value
        if not value then
            _G.FastAttack = false
            topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
    end)

    Main:AddSeperator([[ 🌟 Material 🌟 ]])

    if OldWorld then
        Materiallist = {
            "Scrap Metal",
            "Leather",
            "Angel Wings",
            "Fish Tail",
            "Magma Ore",
        }
    elseif NewWorld then
        Materiallist = {
            "Scrap Metal",
            "Radioactive Meterial",
            "Leather",
            "Vampire Fang",
            "Magma Ore",
            "Mystic Droplet",
        }
    else
        Materiallist = {
            "Dragon Scale",
            "Cocoa",
            "Bones",
            "Fish Tail",
            "Leather",
            "Scrap Metal",
            "Demonic wisp",
            "Mirror Fractal",
            "Mini Tusk",
            "Gunpowder",
        }
    end

    Main:AddDropdown("Select Material","",false,Materiallist,function(value)
        _G.Material = value

        if OldWorld then
            if _G.Material == "Scrap Metal" then
                _G.Material = "Brute"
            elseif _G.Material == "Leather" then
                _G.Material = "Pirate"
            elseif _G.Material == "Angel Wings" then
                _G.Material = "Shanda"
            elseif _G.Material == "Fish Tail" then
                _G.Material = "Fishman Warrior"
            elseif _G.Material == "Magma Ore" then
                _G.Material = "Military Soldier"
            elseif _G.Material == "Radioactive Meterial" then
                _G.Material = "Factory Staff"
            elseif _G.Material == "Vampire Fang" then
                _G.Material = "Vampire"
            elseif _G.Material == "Mystic Droplet" then
                _G.Material = "Sea Soldier"
            elseif _G.Material == "Dragon Scale" then
                _G.Material = "Dragon Crew Warrior"
            elseif _G.Material == "Cocoa" then
                _G.Material = "Chocolate Bar Battler"
            elseif _G.Material == "Demonic wisp" then
                _G.Material = "Demonic Soul"
            elseif _G.Material == "Mirror Fractal" then
                _G.Material = "Cookie Crafter"
            elseif _G.Material == "Mini Tusk" then
                _G.Material = "Mythological Pirate"
            elseif _G.Material == "Gunpowder" then
                _G.Material = "Pistol Billionaire"
            end
        elseif NewWorld then
            if _G.Material == "Scrap Metal" then
                _G.Material = "Mercenary"
            elseif _G.Material == "Leather" then
                _G.Material = "Marine Captain"
            elseif _G.Material == "Angel Wings" then
                _G.Material = "Shanda"
            elseif _G.Material == "Fish Tail" then
                _G.Material = "Fishman Raider"
            elseif _G.Material == "Magma Ore" then
                _G.Material = "Magma Ninja"
            elseif _G.Material == "Radioactive Meterial" then
                _G.Material = "Factory Staff"
            elseif _G.Material == "Vampire Fang" then
                _G.Material = "Vampire"
            elseif _G.Material == "Mystic Droplet" then
                _G.Material = "Sea Soldier"
            elseif _G.Material == "Dragon Scale" then
                _G.Material = "Dragon Crew Warrior"
            elseif _G.Material == "Cocoa" then
                _G.Material = "Chocolate Bar Battler"
            elseif _G.Material == "Demonic wisp" then
                _G.Material = "Demonic Soul"
            elseif _G.Material == "Mirror Fractal" then
                _G.Material = "Cookie Crafter"
            elseif _G.Material == "Mini Tusk" then
                _G.Material = "Mythological Pirate"
            elseif _G.Material == "Gunpowder" then
                _G.Material = "Pistol Billionaire"
            end
        else
            if _G.Material == "Scrap Metal" then
                _G.Material = "Pirate Millionaire"
            elseif _G.Material == "Leather" then
                _G.Material = "Forest Pirate"
            elseif _G.Material == "Angel Wings" then
                _G.Material = "Shanda"
            elseif _G.Material == "Fish Tail" then
                _G.Material = "Fishman Raider"
            elseif _G.Material == "Magma Ore" then
                _G.Material = "Magma Ninja"
            elseif _G.Material == "Radioactive Meterial" then
                _G.Material = "Factory Staff"
            elseif _G.Material == "Vampire Fang" then
                _G.Material = "Vampire"
            elseif _G.Material == "Mystic Droplet" then
                _G.Material = "Sea Soldier"
            elseif _G.Material == "Dragon Scale" then
                _G.Material = "Dragon Crew Warrior"
            elseif _G.Material == "Cocoa" then
                _G.Material = "Chocolate Bar Battler"
            elseif _G.Material == "Demonic wisp" then
                _G.Material = "Demonic Soul"
            elseif _G.Material == "Mirror Fractal" then
                _G.Material = "Cookie Crafter"
            elseif _G.Material == "Mini Tusk" then
                _G.Material = "Mythological Pirate"
            elseif _G.Material == "Gunpowder" then
                _G.Material = "Pistol Billionaire"
            end
        end
    end)

    Main:AddToggle("Auto Farm Material",_G.AutoFarmMaterial,function(value)
        _G.AutoFarmMaterial = value
        Clip = value
        if not value then
            _G.FastAttack = false
            topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
    end)

    Main:AddSeperator([[ 👊 Fighting Styles 👊 ]])

    Main:AddToggle("Auto Godhuman",_G.AutoGodHuman,function(value)
        _G.AutoGodHuman = value
        Clip = value
        if not value then
            _G.FastAttack = false
            topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
    end)

    Main:AddToggle("Auto Superhuman",_G.AutoSuperhuman,function(value)
        _G.AutoSuperhuman = value
        Clip = value
        if not value then
            _G.FastAttack = false
            topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
    end)

    Main:AddToggle("Auto Dragon Talon",_G.AutoDragonTalon,function(value)
        _G.AutoDragonTalon = value
        Clip = value
        if not value then
            _G.FastAttack = false
            topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
    end)

    Main:AddToggle("Auto Electric Claw",_G.AutoElectricClaw,function(value)
        _G.AutoElectricClaw = value
        Clip = value
        if not value then
            _G.FastAttack = false
            topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
    end)

    Main:AddToggle("Auto Shark Man",_G.AutoSharkmanKarate,function(value)
        _G.AutoSharkmanKarate = value
        Clip = value
        if not value then
            _G.FastAttack = false
            topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
    end)

    Main:AddToggle("Auto Death Step",_G.AutoDeathStep,function(value)
        _G.AutoDeathStep = value
        Clip = value
        if not value then
            _G.FastAttack = false
            topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
    end)

    Main:AddSeperator([[ 🔥 Bosses 🔥 ]])
    Bosslist = {}

    pcall(function()
        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
            if v:IsA("Model") then
                if v.Name:find("Boss") then
                    table.insert(Bosslist,v.Name) 
                end
            end
        end
        for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
            if v:IsA("Model") then
                if v.Name:find("Boss") then
                    table.insert(Bosslist,v.Name) 
                end
            end
        end
    end)

    local Seclet_Boss = Main:AddDropdown("Select Boss","",false,Bosslist,function(value)
        _G.Boss = value
    end)

    Main:AddButton("Refesh Boss",function()
        Seclet_Boss:Clear()

        pcall(function()
            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if v:IsA("Model") then
                    if v.Name:find("Boss") then
                        Seclet_Boss:Add(v.Name)
                    end
                end
            end
            for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
                if v:IsA("Model") then
                    if v.Name:find("Boss") then
                        Seclet_Boss:Add(v.Name)
                    end
                end
            end
        end)
    end)

    spawn(function()
        while task.wait() do
            pcall(function()
                if _G.AutoFarmBoss then
                    if game:GetService("Workspace").Enemies:FindFirstChild(_G.Boss) then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == _G.Boss then
                                repeat task.wait()
                                    Buso()
                                    EquipWeapon(_G.Weapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    if _G.Type == 1 then
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 25, 0))
                                    elseif _G.Type == 2 then
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(25, 5, 0))
                                    elseif _G.Type == 3 then
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 5, 25))
                                    elseif _G.Type == 4 then
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(-25, 5, 0))
                                    elseif _G.Type == 5 then
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 5, -25))
                                    end
                                    _G.FastAttack = true
                                until v.Humanoid.Health <= 0 or not _G.AutoFarmBoss
                            end
                        end
                    elseif game:GetService("ReplicatedStorage"):FindFirstChild(_G.Boss) then
                        topos(game:GetService("ReplicatedStorage"):FindFirstChild(_G.Boss).HumanoidRootPart.CFrame)
                    else
                        if _G.AutoFarmBossHop then
                            while task.wait() do
                                Hop()
                            end
                        end
                    end
                end
            end)
        end
    end)

    Main:AddToggle("Auto Farm Boss",_G.AutoFarmBoss,function(value)
        _G.AutoFarmBoss =  value
        Clip = value
        if not value then
            _G.FastAttack = false
            topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
    end)
    Main:AddToggle("Auto Farm Boss [ Hop ]",_G.AutoFarmBossHop,function(value)
        _G.AutoFarmBossHop =  value
    end)

    spawn(function()
        while task.wait() do
            pcall(function()
                if _G.AutoFarmBossAll then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v:IsA("Model") then
                            if v.Name:find("Boss") then
                                repeat task.wait()
                                    Buso()
                                    EquipWeapon(_G.Weapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    if _G.Type == 1 then
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 25, 0))
                                    elseif _G.Type == 2 then
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(25, 5, 0))
                                    elseif _G.Type == 3 then
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 5, 25))
                                    elseif _G.Type == 4 then
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(-25, 5, 0))
                                    elseif _G.Type == 5 then
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 5, -25))
                                    end
                                    _G.FastAttack = true
                                until v.Humanoid.Health <= 0 or not _G.AutoFarmBossAll
                            end
                        end
                    end
                    for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
                        if v:IsA("Model") then
                            if v.Name:find("Boss") then
                                topos(game:GetService("ReplicatedStorage"):FindFirstChild(v.Name).HumanoidRootPart.CFrame * CFrame.new(0,50,0))
                            end
                        end
                    end
                end
            end)
        end
    end)


    Main:AddToggle("Auto Farm Boss All",_G.AutoFarmBossAll,function(value)
        _G.AutoFarmBossAll =  value
        Clip = value
        if not value then
            _G.FastAttack = false
            topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
    end)

    Main:AddSeperator([[ 🔭 Observation 🔭 ]])
    local Set_Observation = Main:AddLabel("Observation : 0")

    spawn(function()
        while task.wait() do
            pcall(function()
                Set_Observation:Set("Observation : "..tostring(game:GetService("Players").LocalPlayer.VisionRadius.Value))
            end)
        end
    end)

    Main:AddToggle("Auto Farm Observation",_G.AutoFarmObservation,function(value)
        _G.AutoFarmObservation = value
        Clip = value
        if not value then
            _G.FastAttack = false
            topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
    end)

    Main:AddToggle("Auto Farm Observation [ Hop ]",_G.AutoFarmObservationHop,function(value)
        _G.AutoFarmObservationHop = value
    end)

    Main:AddSeperator([[ 🎀 Legendary Sword 🎀 ]])

    Main:AddToggle("Auto Buy Legendary Sword",_G.AutoBuyLegendarySword,function(value)
        _G.AutoBuyLegendarySword = value
    end)

    Main:AddToggle("Auto Buy Legendary Sword [ Hop ]",_G.AutoBuyLegendarySwordHop,function(value)
        _G.AutoBuyLegendarySwordHop = value
    end)

    Main:AddSeperator([[ 🎁 Enchament Haki 🎁 ]])

    Main:AddToggle("Auto Buy Enchament Haki",_G.AutoBuyEnchamentHaki,function(value)
        _G.AutoBuyEnchamentHaki = value
    end)

    Main:AddToggle("Auto Buy Enchament Haki [ Hop ]",_G.AutoBuyEnchamentHakiHop,function(value)
        _G.AutoBuyEnchamentHakiHop = value
    end)

    Main:AddSeperator([[ 🏝️ Mystic Island 🏝️ ]])
    
    local Set_Island = Main:AddLabel("Mystic Island : ❌")

    Main:AddToggle("Telport To Top Tree",_G.TopTree,function(value)
        _G.TopTree = value
        Clip = value
        if not value then
            topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
    end)

    spawn(function()
        while task.wait() do
            pcall(function()
                if _G.TopTree then
                    for i,v in pairs(game:GetService("Workspace").Map.MysticIsland:GetDescendants()) do
                        if v.Name == "dbz_map1_Cube.012" then
                            topos(v.CFrame * CFrame.new(0,220,0))
                        end
                    end
                end
            end)
        end
    end)

    Main:AddToggle("Teleport Advnced Fruits",_G.TpADF,function(value)
        _G.TpADF = value
        Clip = value
        if not value then
            _G.FastAttack = false
            topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
    end)
    function CheckCF()
        for i,v in pairs(getnilinstances()) do
            if v.ClassName == "Model" and v:FindFirstChild("HumanoidRootPart") and v.Head:FindFirstChild("QuestBBG") then
                if v.Name:find("Advanced Fruit") then
                    _G.CFrameADF = v.HumanoidRootPart.CFrame
                    return 
                end
            end
        end
    end

    spawn(function()
        while task.wait() do
            pcall(function()
                if _G.TpADF then
                    if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                        if not _G.CFrameADF then
                            CheckCF()
                        else
                            topos(_G.CFrameADF)
                        end
                    else
                        _G.CFrameADF = false
                    end
                end
            end)
        end
    end)
    Main:AddToggle("Grab Chest Mystic Island",_G.GrabChestMystic,function(value)
        _G.GrabChestMystic = value
        Clip = value
        if not value then
            _G.FastAttack = false
            topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
    end)
    Main:AddToggle("Enabled W",_G.AutoMysticIsland,function(value)
        _G.EnabledW = value
        if not value then
            game:GetService("VirtualInputManager"):SendKeyEvent(false,tostring("W"),false,game)
        end
    end)
    Main:AddToggle("Auto Mystic Island",_G.AutoMysticIsland,function(value)
        _G.AutoMysticIsland = value
        Clip = value
        if not value then
            _G.FastAttack = false
            topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
    end)
    Main:AddToggle("Hop Find Mystic Island [ Server ]",_G.HopFindIsland,function(value)
        _G.HopFindIsland = value
    end)

    Main:AddSeperator([[ 🍖 Elite Hunter 🍖 ]])
    local Set_Elite = Main:AddLabel("Kill Elite Hunter : 1")

    function QuestVis()
        return game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible 
    end
    spawn(function()
        while task.wait() do
            pcall(function()
                if _G.AutoEliteHunter then
                    local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                    if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") or game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or game:GetService("ReplicatedStorage"):FindFirstChild("Urban") or game:GetService("Workspace").Enemies:FindFirstChild("Urban") or game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre") then
                        if not QuestVis() then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
                        elseif QuestVis() then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or game:GetService("Workspace").Enemies:FindFirstChild("Urban") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Diablo" or v.Name == "Deandre" or v.Name == "Urban" then
                                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                            repeat wait()
                                                Buso()
                                                EquipWeapon(_G.Weapon)
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Head.CanCollide = false
                                                v.Humanoid.WalkSpeed = 0
                                                v.HumanoidRootPart.Size = Vector3.new(7,5,5)
                                                if _G.Type == 1 then
                                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 25, 0))
                                                elseif _G.Type == 2 then
                                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(25, 5, 0))
                                                elseif _G.Type == 3 then
                                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 5, 25))
                                                elseif _G.Type == 4 then
                                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(-25, 5, 0))
                                                elseif _G.Type == 5 then
                                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 5, -25))
                                                end
                                                _G.FastAttack = true
                                                if v.Humanoid:FindFirstChild("Animator") then
                                                    v.Humanoid.Animator:Destroy()
                                                end
                                            until v.Humanoid.Health <= 0 or not _G.AutoEliteHunter
                                        end
                                    end 
                                end
                            else
                                if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") then
                                    if ( game:GetService("ReplicatedStorage"):FindFirstChild("Diablo").HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position ).Magnitude >= 2500 then
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("ReplicatedStorage"):FindFirstChild("Diablo").HumanoidRootPart.CFrame * CFrame.new(0,50,0)
                                        wait(.5)
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("ReplicatedStorage"):FindFirstChild("Diablo").HumanoidRootPart.CFrame * CFrame.new(0,50,0)
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("ReplicatedStorage"):FindFirstChild("Diablo").HumanoidRootPart.CFrame * CFrame.new(0,50,0)
                                        game.Players.LocalPlayer.Character.Humanoid:ChangeState(15)
                                    else
                                        topos(game:GetService("ReplicatedStorage"):FindFirstChild("Diablo").HumanoidRootPart.CFrame * CFrame.new(0,25,5))
                                    end
                                elseif game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") then
                                    if ( game:GetService("ReplicatedStorage"):FindFirstChild("Deandre").HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position ).Magnitude >= 2500 then
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("ReplicatedStorage"):FindFirstChild("Deandre").HumanoidRootPart.CFrame * CFrame.new(0,50,0)
                                        wait(.5)
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("ReplicatedStorage"):FindFirstChild("Deandre").HumanoidRootPart.CFrame * CFrame.new(0,50,0)
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("ReplicatedStorage"):FindFirstChild("Deandre").HumanoidRootPart.CFrame * CFrame.new(0,50,0)
                                        game.Players.LocalPlayer.Character.Humanoid:ChangeState(15)
                                    else
                                        topos(game:GetService("ReplicatedStorage"):FindFirstChild("Deandre").HumanoidRootPart.CFrame * CFrame.new(0,25,5))
                                    end
                                elseif game:GetService("ReplicatedStorage"):FindFirstChild("Urban") then
                                    if ( game:GetService("ReplicatedStorage"):FindFirstChild("Urban").HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position ).Magnitude >= 2500 then
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("ReplicatedStorage"):FindFirstChild("Urban").HumanoidRootPart.CFrame * CFrame.new(0,50,0)
                                        wait(.5)
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("ReplicatedStorage"):FindFirstChild("Urban").HumanoidRootPart.CFrame * CFrame.new(0,50,0)
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("ReplicatedStorage"):FindFirstChild("Urban").HumanoidRootPart.CFrame * CFrame.new(0,50,0)
                                        game.Players.LocalPlayer.Character.Humanoid:ChangeState(15)
                                    else
                                        topos(game:GetService("ReplicatedStorage"):FindFirstChild("Urban").HumanoidRootPart.CFrame * CFrame.new(0,25,5))
                                    end
                                end
                            end
                        end
                    else
                       if _G.AutoEliteHunterHop then
                            while task.wait() do 
                                pcall(function()
                                    Hop()
                                end)
                            end
                        end
                    end
                end
            end)
        end
    end)

    function eltiepg()
        return game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress")
    end

    spawn(function()
        while task.wait() do
            pcall(function()
                Set_Elite:Set("Kill Elite Hunter : "..eltiepg())
            end)
        end
    end)

    Main:AddToggle("Auto Elite Hunter",_G.AutoEliteHunter,function(value)
        _G.AutoEliteHunter = value
        Clip = value
        if not value then
            _G.FastAttack = false
            topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
    end)
    Main:AddToggle("Auto Elite Hunter [ Hop ]",_G.AutoEliteHunterHop,function(value)
        _G.AutoEliteHunterHop = value
    end)
    Main:AddToggle("Stop At God's Chalice",_G.StopAtGodChalice,function(value)
        _G.StopAtGodChalice = value
    end)

    Main:AddSeperator([[ 🎂 Cake Piece 🎂 ]])

    function CheckCakePiece()
        local Text = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner",true):split(">")
        local RealText = ""
        local List = #Text
        Is = true
        table.remove(Text,1)
        table.remove(Text,#Text)
        for i=1,#Text do local v = Text[i]
            RealText = RealText..v
            if #Text ~= 1 then  
                RealText = RealText.." "
            end
        end
        if Is then  
            RealText = RealText:sub(0,#RealText-8)
        end
        if RealText == "" then
            RealText = "Opening"
        end
        return RealText
    end

    local Set_Cake = Main:AddLabel("Mob Kill : ")

    spawn(function()
        while task.wait() do
            pcall(function()
                Set_Cake:Set("Mob Kill : "..tostring(CheckCakePiece()))
            end)
        end
    end)

    spawn(function()
        while task.wait() do 
            pcall(function()
                if _G.AutoCakePiece then
                    if game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 1 then 
                        if CheckCakePiece() == "Do you want to open the portal now?" and _G.AutoSpawnBossCakePiece then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")
                        else
                            if game.Workspace.Enemies:FindFirstChild("Cookie Crafter") or game.Workspace.Enemies:FindFirstChild("Cake Guard") or game.Workspace.Enemies:FindFirstChild("Baking Staff") or game.Workspace.Enemies:FindFirstChild("Head Baker") then
                                for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                    if v.Name == "Cookie Crafter" or v.Name == "Cake Guard" or v.Name == "Baking Staff" or v.Name == "Head Baker" then
                                        repeat task.wait()
                                            EquipWeapon(_G.Weapon)
                                            Buso()
                                            if _G.Type == 1 then
                                                topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 25, 0))
                                            elseif _G.Type == 2 then
                                                topos(v.HumanoidRootPart.CFrame * CFrame.new(25, 5, 0))
                                            elseif _G.Type == 3 then
                                                topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 5, 25))
                                            elseif _G.Type == 4 then
                                                topos(v.HumanoidRootPart.CFrame * CFrame.new(-25, 5, 0))
                                            elseif _G.Type == 5 then
                                                topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 5, -25))
                                            end
                                            v.HumanoidRootPart.CanCollide = false
                                            v.HumanoidRootPart.Size = Vector3.new(7,5,5)
                                            v.HumanoidRootPart.Transparency = 1
                                            _G.FastAttack = true
                                            MagnetCandies = true
                                            PosCake = v.HumanoidRootPart.CFrame
                                            SettingMagnet = "AutoFarmCandiesMagnet"
                                            BringMobs(v.HumanoidRootPart.CFrame,v.Name)
                                        until _G.AutoCakePiece == false or v.Humanoid.Health <= 0 or game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0
                                    end
                                end
                            elseif game.ReplicatedStorage:FindFirstChild("Cookie Crafter") or game.ReplicatedStorage:FindFirstChild("Cake Guard") or game.ReplicatedStorage:FindFirstChild("Baking Staff") or game.ReplicatedStorage:FindFirstChild("Head Baker") then
                                MagnetCandies = false
                                _G.FastAttack = false
                                for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
                                    if v.Name == "Cookie Crafter" or v.Name == "Cake Guard" or v.Name == "Baking Staff" or v.Name == "Head Baker" then
                                        topos(v.HumanoidRootPart.CFrame)
                                    end 
                                end
                            else
                                topos(CFrame.new(-1617.8350830078125, 195.68605041503906, -12313.9306640625))
                            end
                        end
                    elseif game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0 then
                        if game.Workspace.Enemies:FindFirstChild("Cake Prince") or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince") then
                            if (CFrame.new(-2089.41504, 4583.10889, -14800.7881, 0.317375928, 0, -0.948299825, -0, 1, -0, 0.948299825, 0, 0.317375928).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 1500 then
                                topos(game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.CFrame)
                            else
                                for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                    if v.Name == "Cake Prince" then 
                                        repeat task.wait()
                                            if (CFrame.new(-2089.41504, 4583.10889, -14800.7881, 0.317375928, 0, -0.948299825, -0, 1, -0, 0.948299825, 0, 0.317375928).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 1500 then
                                                break
                                            end
                                            EquipWeapon(_G.Weapon)
                                            Buso()
                                            if _G.Type == 1 then
                                                topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 25, 0))
                                            elseif _G.Type == 2 then
                                                topos(v.HumanoidRootPart.CFrame * CFrame.new(25, 5, 0))
                                            elseif _G.Type == 3 then
                                                topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 5, 25))
                                            elseif _G.Type == 4 then
                                                topos(v.HumanoidRootPart.CFrame * CFrame.new(-25, 5, 0))
                                            elseif _G.Type == 5 then
                                                topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 5, -25))
                                            end
                                            v.HumanoidRootPart.CanCollide = false
                                            v.HumanoidRootPart.Size = Vector3.new(7,5,5)
                                            v.HumanoidRootPart.Transparency = 1
                                            _G.FastAttack = true
                                            MagnetCandies = false
                                        until _G.AutoCakePiece == false  or v.Humanoid.Health <= 0 or game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 1
                                    end
                                end
                            end
                        end
                    end
                end
            end)
        end
    end)
    Main:AddToggle("Auto Spawn Boss [ Cake Piece ]",_G.AutoSpawnBossCakePiece,function(value)
        _G.AutoSpawnBossCakePiece = value
    end)

    Main:AddToggle("Auto Cake Piece",_G.AutoCakePiece,function(value)
        _G.AutoCakePiece = value
        Clip = value
        if not value then
            _G.FastAttack = false
            topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
    end)
    
    Main:AddSeperator([[ 🦴 Bone 🦴 ]])
    local Set_Bone = Main:AddLabel(" Bone : 1")

    function CheckBone()
        return (function()
            table.foreach(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory"),function(i,v)
                if v.Name == "Bones" then    
                    Bones = v.Count
                end
            end)
            return (Bones) or "0"
        end)()
    end

    spawn(function()
        while task.wait() do
            Set_Bone:Set(" Bone : "..CheckBone())
        end
    end)

    spawn(function()
        while task.wait() do
            pcall(function()
                if _G.AutoFarmCandy then
                    if not game:GetService("Workspace").Enemies:FindFirstChild("Snow Demon") and not game:GetService("Workspace").Enemies:FindFirstChild("Candy Pirate") then
                        topos(CFrame.new(-1426.6827392578125, 116.78028869628906, -14605.068359375))
                    else
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Candy Pirate" or v.Name == "Snow Demon" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                                    if v.Humanoid.Health > 0 then
                                        repeat task.wait()
                                            EquipWeapon(_G.Weapon)
                                            Buso()
                                            topos(v.HumanoidRootPart.CFrame * CFrame.new(0,30,10))
                                            _G.FastAttack = true
                                            BringMobs(v.HumanoidRootPart.CFrame,v.Name)
                                        until not _G.AutoFarmCandy or v.Humanoid.Health <= 0 or not v:FindFirstChild("Humanoid") or not v:FindFirstChild("HumanoidRootPart")
                                    end
                                end
                            end
                        end
                    end
                end
            end)
        end
    end)

    spawn(function()
        while task.wait() do
            pcall(function()
                if _G.AutoFarmBone then
                    if not game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") and not game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy") and not game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") and not game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") then
                        topos(CFrame.new(-9500.37207, 142.44809, 5958.70996, 1, 7.60973577e-08, 9.10053174e-13, -7.60973577e-08, 1, 6.61122925e-08, -9.05022205e-13, -6.61122925e-08, 1))
                    else
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Reborn Skeleton" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy" or v.Name == "Living Zombie" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                                    if v.Humanoid.Health > 0 then
                                        repeat task.wait()
                                            EquipWeapon(_G.Weapon)
                                            Buso()
                                            topos(v.HumanoidRootPart.CFrame * CFrame.new(0,30,10))
                                            _G.FastAttack = true
                                            BringMobs(v.HumanoidRootPart.CFrame,v.Name)
                                        until not _G.AutoFarmBone or v.Humanoid.Health <= 0 or not v:FindFirstChild("Humanoid") or not v:FindFirstChild("HumanoidRootPart")
                                    end
                                end
                            end
                        end
                    end
                end
            end)
        end
    end)

    spawn(function()
        while task.wait() do
            pcall(function()
                if _G.AutoSpinBone then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
                end
            end)
        end
    end)

    Main:AddToggle("Auto Spin Bone",_G.AutoSpinBone,function(value)
        _G.AutoSpinBone = value
    end)
    Main:AddToggle("Auto Farm Bone",_G.AutoFarmBone,function(value)
        _G.AutoFarmBone = value
        Clip = value
        if not value then
            _G.FastAttack = false
            topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
    end)

    Main:AddSeperator([[ 🔦 Ectoplasm 🔦 ]])
    local Set_Ectoplasm = Main:AddLabel("Ectoplasm : 1")

    spawn(function()
        while task.wait() do
            if NewWorld then
            Set_Ectoplasm:Set("Ectoplasm : "..game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Ectoplasm","Check"))
            else
                Set_Ectoplasm:Set("Ectoplasm : New World Olny")
            end
        end
    end)

    spawn(function()
        while task.wait() do
            pcall(function()
                if _G.EctoplasmBuy then
                    if _G.SelectBuy == "Bizarre Rifle" then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Ectoplasm","Buy",1)
                    end
                    if _G.SelectBuy == "Ghoul Mask" then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Ectoplasm","Buy",2)
                    end
                    if _G.SelectBuy == "Midnight Blade" then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Ectoplasm","Buy",3)
                    end
                end
            end)
        end
    end)

    spawn(function()
        while task.wait() do
            pcall(function()
                if _G.AutoFarmEctoplasm then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Ship Deckhand") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Engineer") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Steward") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Officer") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if string.find(v.Name, "Ship") then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                                    if v.Humanoid.Health > 0 then
                                        repeat task.wait()
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Head.CanCollide = false
                                            v.Humanoid.WalkSpeed = 0
                                            EquipWeapon(_G.Weapon)
                                            Buso()
                                            topos(v.HumanoidRootPart.CFrame * CFrame.new(0,30,10))
                                            BringMonEctoplasm = true
                                            _G.FastAttack = true
                                            NameM = v.Name
                                            PosMonEctoplasm = v.HumanoidRootPart.CFrame
                                            BringMobs(v.HumanoidRootPart.CFrame,v.Name)
                                        until not v.Parent or not _G.AutoFarmEctoplasm or v.Humanoid.Health <= 0 or not v:FindFirstChild("Humanoid") or not v:FindFirstChild("HumanoidRootPart")
                                    end
                                end
                            end
                        end
                    else
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                    end
                end
            end)
        end
    end)

    Main:AddDropdown("Select Item(s)","Midnight Blade",false,{"Bizarre Rifle","Ghoul Mask","Midnight Blade"},function(value)
        _G.SelectBuy = value
    end)
    Main:AddToggle("Auto Buy Item Ectoplasm",_G.AutoBuyItem,function(value)
        _G.EctoplasmBuy = value
    end)
    Main:AddToggle("Auto Farm Ectoplasm",_G.AutoFarmEctoplasm,function(value)
        _G.AutoFarmEctoplasm = value
        Clip = value
        if not value then
            _G.FastAttack = false
            topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
    end)

    Main:AddSeperator([[ Others ]])

    spawn(function()
        while task.wait() do
            pcall(function()
                if game.Workspace._WorldOrigin:FindFirstChild("Present") then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace._WorldOrigin.Present.Root.CFrame
                    game:GetService("VirtualInputManager"):SendKeyEvent(true,"E",false,game)
					wait(.3)
					game:GetService("VirtualInputManager"):SendKeyEvent(false,"E",false,game)
                end
            end)
        end
    end)

    spawn(function()
        while task.wait() do
            pcall(function()
                if _G.AuraMonster then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v:FindFirstChild("Humanoid") or v:FindFirstChild("HumanoidRootPart") then
                            if v.Humanoid.Health > 0 then
                                repeat task.wait()
                                    EquipWeapon(_G.Weapon)
                                    Buso()
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(0,30,10))
                                    MagnetFarm = true
                                    _G.FastAttack = true
                                    BringMobs(v.HumanoidRootPart.CFrame,v.Name)
                                until v.Humanoid.Health <= 0 or not _G.AuraMonster
                            end
                        end
                    end
                end
            end)
        end
    end)

    Main:AddToggle("Auto Evo Race v2",_G.Auto_EvoRace,function(value)
        _G.Auto_EvoRace = value
        Clip = value
        if not value then
            _G.FastAttack = false
            topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
    end)

    spawn(function()
        pcall(function()
            while task.wait() do
                if _G.Auto_EvoRace then
                    if not game:GetService("Players").LocalPlayer.Data.Race:FindFirstChild("Evolved") then
                        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 0 then
                            topos(CFrame.new(-2779.83521, 72.9661407, -3574.02002, -0.730484903, 6.39014104e-08, -0.68292886, 3.59963224e-08, 1, 5.50667032e-08, 0.68292886, 1.56424669e-08, -0.730484903))
                            if (Vector3.new(-2779.83521, 72.9661407, -3574.02002) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
                                wait(1.3)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","2")
                            end
                        elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 1 then
                            pcall(function()
                                if not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 1") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 1") then
                                    topos(game:GetService("Workspace").Flower1.CFrame)
                                elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 2") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 2") then
                                    topos(game:GetService("Workspace").Flower2.CFrame)
                                elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 3") then
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Zombie") then
                                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if v.Name == "Zombie" then
                                                repeat task.wait()
                                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(0,30,20))
                                                    v.HumanoidRootPart.Size = Vector3.new(7,5,5)
                                                    v.Humanoid:ChangeState(14)
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.Head.CanCollide = false
                                                    if v.Humanoid:FindFirstChild("Animator") then
                                                        v.Humanoid.Animator:Destroy()
                                                    end
                                                    Buso()
                                                    _G.FastAttack = true
                                                    EquipWeapon(_G.Weapon)
                                                    if syn then
                                                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                                                    end
                                                    spawn(function()
                                                        BringMobs(v.HumanoidRootPart.CFrame, v.Name)
                                                    end)
                                                    StartEvoMagnet = true
                                                until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") or not v.Parent or v.Humanoid.Health <= 0 or _G.Auto_EvoRace == false
                                                StartEvoMagnet = false
                                            end
                                        end
                                    else
                                        StartEvoMagnet = false
                                        topos(CFrame.new(-5685.9233398438, 48.480125427246, -853.23724365234))
                                    end
                                end
                            end)
                        else
                            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 2 then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","3")
                            end
                        end
                    end
                end
            end
        end)
    end)

    Main:AddToggle("Auto Aura Monster",_G.AuraMonster,function(value)
        _G.AuraMonster = value
        Clip = value
        if not value then
            _G.FastAttack = false
            topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
    end)

    spawn(function()
        while task.wait() do
            pcall(function()
                if _G.AutoRainbowHaki then
                    if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true and string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Stone") then
                        MonFindFirstToKill = "Stone"
                        if game:GetService("Workspace").Enemies:FindFirstChild(MonFindFirstToKill) then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == MonFindFirstToKill then
                                    repeat task.wait()
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0,30,20))
                                        v.HumanoidRootPart.Size = Vector3.new(7,5,5)
                                        v.Humanoid:ChangeState(14)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Head.CanCollide = false
                                        if v.Humanoid:FindFirstChild("Animator") then
                                            v.Humanoid.Animator:Destroy()
                                        end
                                        Buso()
                                        _G.FastAttack = true
                                        EquipWeapon(_G.Weapon)
                                        if syn then
                                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                                        end
                                    until _G.AutoRainbowHaki == false or v.Humanoid.Health <= 0 or not v.Parent or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                end
                            end
                        elseif game:GetService("ReplicatedStorage"):FindFirstChild(MonFindFirstToKill) then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild(MonFindFirstToKill).HumanoidRootPart.CFrame * CFrame.new(0,20,0))
                        else
                            while task.wait() do
                                pcall(function()
                                    Hop()
                                end)
                            end
                        end
                    elseif game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true and string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Island Empress") then
                        MonFindFirstToKill = "Island Empress"
                        if game:GetService("Workspace").Enemies:FindFirstChild(MonFindFirstToKill) then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == MonFindFirstToKill then
                                    repeat task.wait()
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0,30,20))
                                        v.HumanoidRootPart.Size = Vector3.new(7,5,5)
                                        v.Humanoid:ChangeState(14)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Head.CanCollide = false
                                        if v.Humanoid:FindFirstChild("Animator") then
                                            v.Humanoid.Animator:Destroy()
                                        end
                                        Buso()
                                        _G.FastAttack = true
                                        EquipWeapon(_G.Weapon)
                                        if syn then
                                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                                        end
                                    until _G.AutoRainbowHaki == false or v.Humanoid.Health <= 0 or not v.Parent or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                end
                            end
                        elseif game:GetService("ReplicatedStorage"):FindFirstChild(MonFindFirstToKill) then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild(MonFindFirstToKill).HumanoidRootPart.CFrame * CFrame.new(0,20,0))
                        else
                            while task.wait() do
                                pcall(function()
                                    Hop()
                                end)
                            end
                        end
                    elseif string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Kilo Admiral") then
                        MonFindFirstToKill = "Kilo Admiral [Boss]"
                        if game:GetService("Workspace").Enemies:FindFirstChild(MonFindFirstToKill) then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == MonFindFirstToKill then
                                    repeat task.wait()
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0,30,20))
                                        v.HumanoidRootPart.Size = Vector3.new(7,5,5)
                                        v.Humanoid:ChangeState(14)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Head.CanCollide = false
                                        if v.Humanoid:FindFirstChild("Animator") then
                                            v.Humanoid.Animator:Destroy()
                                        end
                                        Buso()
                                        _G.FastAttack = true
                                        EquipWeapon(_G.Weapon)
                                        if syn then
                                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                                        end
                                    until _G.AutoRainbowHaki == false or v.Humanoid.Health <= 0 or not v.Parent or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                end
                            end
                        elseif game:GetService("ReplicatedStorage"):FindFirstChild(MonFindFirstToKill) then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild(MonFindFirstToKill).HumanoidRootPart.CFrame * CFrame.new(0,20,0))
                        else
                            while task.wait() do
                                pcall(function()
                                    Hop()
                                    if foundAnything ~= "" then
                                        Hop()
                                    end
                                end)
                            end
                        end
                    elseif string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") then
                        MonFindFirstToKill = "Captain Elephant"
                        if game:GetService("Workspace").Enemies:FindFirstChild(MonFindFirstToKill) then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == MonFindFirstToKill then
                                    repeat task.wait()
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0,30,20))
                                        v.HumanoidRootPart.Size = Vector3.new(7,5,5)
                                        v.Humanoid:ChangeState(14)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Head.CanCollide = false
                                        Buso()
                                        if v.Humanoid:FindFirstChild("Animator") then
                                            v.Humanoid.Animator:Destroy()
                                        end
                                        _G.FastAttack = true
                                        EquipWeapon(_G.Weapon)
                                        if syn then
                                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                                        end
                                    until _G.AutoRainbowHaki == false or v.Humanoid.Health <= 0 or not v.Parent or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                end
                            end
                        elseif game:GetService("ReplicatedStorage"):FindFirstChild(MonFindFirstToKill) then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild(MonFindFirstToKill).HumanoidRootPart.CFrame * CFrame.new(0,20,0))
                        else
                            while task.wait() do
                                pcall(function()
                                    Hop()
                                end)
                            end
                        end
                    elseif string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Beautiful Pirate") then
                        MonFindFirstToKill = "Beautiful Pirate"
                        if game:GetService("Workspace").Enemies:FindFirstChild(MonFindFirstToKill) then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == MonFindFirstToKill then
                                    repeat task.wait()
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0,30,20))
                                        Buso()
                                        v.HumanoidRootPart.Size = Vector3.new(7,5,5)
                                        v.Humanoid:ChangeState(14)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Head.CanCollide = false
                                        if v.Humanoid:FindFirstChild("Animator") then
                                            v.Humanoid.Animator:Destroy()
                                        end
                                        _G.FastAttack = true
                                        EquipWeapon(_G.Weapon)
                                        if syn then
                                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                                        end
                                    until _G.AutoRainbowHaki == false or v.Humanoid.Health <= 0 or not v.Parent or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                end
                            end
                        elseif game:GetService("ReplicatedStorage"):FindFirstChild(MonFindFirstToKill) then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild(MonFindFirstToKill).HumanoidRootPart.CFrame * CFrame.new(0,20,0))
                        else
                            while task.wait() do
                                pcall(function()
                                    Hop()
                                end)
                            end
                        end
                    else
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan","Bet")
                    end
                end
            end)
        end
    end)
    
    Main:AddToggle("Auto Musketeer Hat",_G.AutoMusketeerHat,function(value)
        _G.AutoMusketeerHat = value
        Clip = value
        if not value then
            _G.FastAttack = false
            topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
    end)

    spawn(function()
        pcall(function()
            while task.wait() do
                if _G.AutoMusketeerHat then
                    if game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress").KilledBandits == false then
                        if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Forest Pirate") and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Forest Pirate") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Forest Pirate" then
                                        repeat task.wait()
                                            pcall(function()
                                                topos(v.HumanoidRootPart.CFrame * CFrame.new(0,30,20))
                                                Buso()
                                                v.HumanoidRootPart.Size = Vector3.new(7,5,5)
                                                v.Humanoid:ChangeState(14)
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Head.CanCollide = false
                                                if v.Humanoid:FindFirstChild("Animator") then
                                                    v.Humanoid.Animator:Destroy()
                                                end
                                                _G.FastAttack = true
                                                EquipWeapon(_G.Weapon)
                                                if syn then
                                                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                                                end
                                                spawn(function()
                                                    BringMobs(v.HumanoidRootPart.CFrame, v.Name)
                                                end)
                                            end)
                                        until _G.AutoMusketeerHat == false or not v.Parent or v.Humanoid.Health <= 0 or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                        StartMagnetMusketeerhat = false
                                    end
                                end
                            else
                                StartMagnetMusketeerhat = false
                                topos(CFrame.new(-13206.452148438, 425.89199829102, -7964.5537109375))
                            end
                        else
                            topos(CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125))
                            if (Vector3.new(-12443.8671875, 332.40396118164, -7675.4892578125) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
                                wait(1.5)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","CitizenQuest",1)
                            end
                        end
                    elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress").KilledBoss == false then
                        if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Captain Elephant" then
                                        OldCFrameElephant = v.HumanoidRootPart.CFrame
                                        repeat task.wait()
                                            pcall(function()
                                                topos(v.HumanoidRootPart.CFrame * CFrame.new(0,30,20))
                                                Buso()
                                                v.HumanoidRootPart.Size = Vector3.new(7,5,5)
                                                v.Humanoid:ChangeState(14)
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Head.CanCollide = false
                                                if v.Humanoid:FindFirstChild("Animator") then
                                                    v.Humanoid.Animator:Destroy()
                                                end
                                                _G.FastAttack = true
                                                EquipWeapon(_G.Weapon)
                                                if syn then
                                                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                                                end
                                                spawn(function()
                                                    BringMobs(v.HumanoidRootPart.CFrame, v.Name)
                                                end)
                                            end)
                                        until _G.AutoMusketeerHat == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                    end
                                end
                            else
                                topos(CFrame.new(-13374.889648438, 421.27752685547, -8225.208984375))
                            end
                        else
                            topos(CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125))
                            if (CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
                                wait(1.5)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen")
                            end
                        end
                    elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen") == 2 then
                        topos(CFrame.new(-12512.138671875, 340.39279174805, -9872.8203125))
                    end
                end
            end
        end)
    end)

    Main:AddToggle("Auto Observation Haki v2",_G.AutoObservationv2,function(value)
        _G.AutoObservationv2 = value
        Clip = value
        if not value then
            _G.FastAttack = false
            topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
    end)

    spawn(function()
        while task.wait() do
            pcall(function()
                if _G.AutoObservationv2 then
                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk2","Start") == 0 then
                        topos(CFrame.new(-10920.125, 624.20275878906, -10266.995117188))
                        wait(1.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk2","Buy")
                    else
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fruit Bowl") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fruit Bowl") then
                            topos(CFrame.new(-10920.125, 624.20275878906, -10266.995117188))
                            wait(1.1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk2","Start")
                        else
                            if game:GetService("Workspace").AppleSpawner:FindFirstChild("Apple") then
                                game:GetService("Workspace").AppleSpawner:FindFirstChild("Apple").Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                            end
                            if game:GetService("Workspace").BananaSpawner:FindFirstChild("Banana") then
                                game:GetService("Workspace").BananaSpawner:FindFirstChild("Banana").Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                            end
                            if game:GetService("Workspace").PineappleSpawner:FindFirstChild("Pineapple") then
                                game:GetService("Workspace").PineappleSpawner:FindFirstChild("Pineapple").Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                            end
                            if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Apple") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Apple")) and (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Pineapple") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Pineapple")) and (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Banana") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Banana")) then
                                topos(CFrame.new(-12444.78515625, 332.40396118164, -7673.1806640625)) 
                                wait(1.1)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen")
                                wait(.5)
                            end
                        end
                    end
                end
            end)
        end
    end)

    Main:AddToggle("Auto Rainbow Haki",_G.AutoRainbowHaki,function(value)
        _G.AutoRainbowHaki = value
        Clip = value
        if not value then
            _G.FastAttack = false
            topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
    end)

    function eltiepg()
        return game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress")
    end

    spawn(function()
        while task.wait() do
            pcall(function()
                if _G.AutoYama then
                    if eltiepg() >= 30 then
                        repeat wait()
                            fireclickdetector(game:GetService("Workspace").Map.Waterfall.SealedKatana.Handle.ClickDetector)
                        until game.Players.LocalPlayer.Backpack:FindFirstChild("Yama") or not _G.AutoYama
                    end
                end
            end)
        end
    end)

    Main:AddToggle("Auto Get Yama",_G.AutoYama,function(value)
        _G.AutoYama = value
        Clip = value
        if not value then
            _G.FastAttack = false
            topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
    end)


    spawn(function()
        while task.wait() do
            pcall(function()
                if _G.AutoRengoku and NewWorld then
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Hidden Key") or game.Players.LocalPlayer.Character:FindFirstChild("Hidden Key") then
                        EquipWeapon("Hidden Key")
                        topos(CFrame.new(6571.81885, 296.689758, -6966.76514))
                    else
                        if game:GetService("Workspace").Enemies:FindFirstChild("Snow Lurker") or game:GetService("Workspace").Enemies:FindFirstChild("Arctic Warrior") then
                            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    if v.Name == "Snow Lurker" or v.Name == "Arctic Warrior" then
                                        repeat task.wait() 
                                            pcall(function()
                                                topos(v.HumanoidRootPart.CFrame * CFrame.new(0,30,20))
                                                Buso()
                                                v.HumanoidRootPart.Size = Vector3.new(7,5,5)
                                                v.Humanoid:ChangeState(14)
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Head.CanCollide = false
                                                if v.Humanoid:FindFirstChild("Animator") then
                                                    v.Humanoid.Animator:Destroy()
                                                end
                                                _G.FastAttack = true
                                                EquipWeapon(_G.Weapon)
                                                if syn then
                                                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                                                end
                                            end)
                                        until v.Humanoid.Health <= 0 or _G.AutoRengoku == false
                                        MagnetRen = false
                                    end
                                end
                            end
                        else
                            MagnetRen = true
                            local MobRengoku1 = game:GetService("ReplicatedStorage"):FindFirstChild("Snow Lurker")
                            local MobRengoku2 = game:GetService("ReplicatedStorage"):FindFirstChild("Arctic Warrior")
                            if MobRengoku1 then
                                topos(MobRengoku1.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
                            elseif MobRengoku2 then
                                topos(MobRengoku2.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
                            else
                                topos(CFrame.New(5658.29199, 36.4354515, -6486.33691, -0.852474749, -9.47146575e-08, -0.522768438, -1.00761731e-07, 1, -1.68675616e-08, 0.522768438, 3.82958802e-08, -0.852474749))
                            end
                        end
                    end
                end
            end)
        end
    end)

    Main:AddToggle("Auto Get Rengoku",_G.AutoRengoku,function(value)
        _G.AutoRengoku = value
        Clip = value
        if not value then
            _G.FastAttack = false
            topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
    end)

    spawn(function()
        while task.wait() do
            pcall(function()
                if _G.GetTorch and ThirdWorld then
                    if game:GetService("Workspace").Map.Turtle:FindFirstChild("TushitaGate") then
                        if not game.Players.LocalPlayer.Character:FindFirstChild("Holy Torch") and not game.Players.LocalPlayer.Backpack:FindFirstChild("Holy Torch") then
                            topos(CFrame.new(5148.03613, 162.352493, 910.548218))
                            wait(0.7)
                        else
                            EquipWeapon("Holy Torch")
                            task.wait(1)
                            repeat task.wait()
                                topos(CFrame.new(-10752, 417, -9366))
                            until not _G.GetTorch or (CFrame.new(-10752, 417, -9366).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10
                            wait(.7)
                            repeat task.wait()
                                topos(CFrame.new(-11672, 334, -9474))
                            until not _G.GetTorch or (CFrame.new(-11672, 334, -9474).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10
                            wait(.7)
                            repeat task.wait()
                                topos(CFrame.new(-12132, 521, -10655))
                            until not _G.GetTorch or (CFrame.new(-12132, 521, -10655).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10
                            wait(.7)
                            repeat task.wait()
                                topos(CFrame.new(-13336, 486, -6985))
                            until not _G.GetTorch or (CFrame.new(-13336, 486, -6985).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10
                            wait(.7)
                            repeat task.wait()
                                topos(CFrame.new(-13489, 332, -7925))
                            until not _G.GetTorch or (CFrame.new(-13489, 332, -7925).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Longma") or game:GetService("Workspace").Enemies:FindFirstChild("Longma") then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Longma") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Longma" then
                                        repeat task.wait()
                                            EquipWeapon(_G.Weapon)
                                            Buso()
                                            topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,20))
                                            v.HumanoidRootPart.CanCollide = false
                                            _G.FastAttack = true
                                            if syn then
                                                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                                            end
                                        until v.Humanoid.Health <= 0 or not _G.GetTorch or not v.Parent
                                    end
                                end
                            else 
                                if game:GetService("ReplicatedStorage"):FindFirstChild("Longma") then
                                    topos(game:GetService("ReplicatedStorage"):FindFirstChild("Longma").HumanoidRootPart.CFrame * CFrame.new(0,40,0))
                                end
                            end
                        else
                            while task.wait() do
                                Hop()
                            end
                        end
                    end
                end
            end)
        end
    end)

    Main:AddToggle("Auto Get Holy Torch",_G.GetTorch,function(value)
        _G.GetTorch = value
        Clip = value
        if not value then
            _G.FastAttack = false
            topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
    end)

    spawn(function()
        while task.wait() do
            pcall(function()
                if _G.ChestTween or _G.ChestTeleport then
                    if game.Players.LocalPlayer.Character.Humanoid.Sit == true then
                        game.Players.LocalPlayer.Character.Humanoid.Jump = true
                    end
                    for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
                        if string.find(v.Name,"Chest") then
                            if _G.ChestTween then
                                repeat wait()
                                    topos(v.CFrame)
                                until not v.Part or not _G.ChestTween
                            elseif _G.ChestTeleport then
                                repeat task.wait()
                                    local args = {
                                        [1] = "SetTeam",
                                        [2] = "Pirates"
                                    }
                                    game:GetService("ReplicatedStorage").Remotes.CommF:InvokeServer(unpack(args))
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
                                until not v.Part or not _G.ChestTeleport
                            end
                        end
                    end
                end
            end)
        end
    end)
    Main:AddToggle("Auto Grab Chest [ Tween ]",_G.ChestTween,function(value)
        _G.ChestTween = value
        Clip = value
        if not value then
            _G.FastAttack = false
            topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
    end)
    Main:AddToggle("Auto Grab Chest [ Teleport ]",_G.ChestTeleport,function(value)
        _G.ChestTeleport = value
        Clip = value
        if not value then
            _G.FastAttack = false
            topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
    end)

    spawn(function()
        while task.wait() do
            pcall(function()
                if _G.BartiloQuest then
                    if game.Players.LocalPlayer.Data.Level.Value >= 850 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 0 then
                        if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Swan Pirates") and string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"50") and game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Swan Pirate") then
                                for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Swan Pirate" then
                                        repeat task.wait()
                                            EquipWeapon(_G.Weapon)
                                            Buso()
                                            topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,20))
                                            v.HumanoidRootPart.CanCollide = false
                                            _G.FastAttack = true
                                            if syn then
                                                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                                            end
                                            BringMobs(v.HumanoidRootPart.CFrame, v.Name)
                                        until v.Humanoid.Health <= 0 or not v.Parent or not _G.BartiloQuest
                                    end
                                end
                            else 
                                topos(CFrame.new(872.306884765625, 121.60797119140625, 1243.0919189453125))
                            end
                        else
                            wait(1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","BartiloQuest",1)
                        end
                    elseif game.Players.LocalPlayer.Data.Level.Value >= 850 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 1 then
                        wait(0.75)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo")
                        if game.Workspace.Enemies:FindFirstChild("Jeremy") then
                            repeat task.wait()
                                Mob = game.Workspace.Enemies:FindFirstChild("Jeremy")
                                EquipWeapon(_G.Weapon)
                                Buso()
                                topos(Mob.Character.HumanoidRootPart.CFrame * CFrame.new(0,10,15))
                                Mob.Character.HumanoidRootPart.CanCollide = false
                                Mob.Character.HumanoidRootPart.Size = Vector3.new(7,5,5)
                                Mob.Character.HumanoidRootPart.Transparency = 1
                                _G.FastAttack = true
                                BringMobs(Mob.Character.HumanoidRootPart.CFrame, Mob.Name)
                            until Mob.Humanoid.Health <= 0 or not Mob.Parent or not _G.Setting.AutoThirdWorld
                        elseif game:GetService("ReplicatedStorage"):FindFirstChild("Jeremy") then
                            topos(CFrame.new(1958.5858154297, 448.94882202148, 879.37573242188))
                        else 
                            while task.wait() do 
                                pcall(function()
                                    Hop()
                                end)
                            end
                        end
                    elseif game.Players.LocalPlayer.Data.Level.Value >= 850 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 2 then
                        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,game:GetService("Workspace").Map.Dressrosa.BartiloPlates.Plate1.CFrame,0)
                        wait(.3)
                        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,game:GetService("Workspace").Map.Dressrosa.BartiloPlates.Plate2.CFrame,0)
                        wait(.3)
                        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,game:GetService("Workspace").Map.Dressrosa.BartiloPlates.Plate3.CFrame,0)
                        wait(.3)
                        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,game:GetService("Workspace").Map.Dressrosa.BartiloPlates.Plate4.CFrame,0)
                        wait(.3)
                        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,game:GetService("Workspace").Map.Dressrosa.BartiloPlates.Plate5.CFrame,0)
                        wait(.3)
                        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,game:GetService("Workspace").Map.Dressrosa.BartiloPlates.Plate6.CFrame,0)
                    end
                end
            end)
        end
    end)

    Main:AddToggle("Auto Farm Bartilo [ Quest ]",_G.BartiloQuest,function(value)
        _G.BartiloQuest = value
        Clip = value
        if not value then
            _G.FastAttack = false
            topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
    end)
    Main:AddToggle("Auto Farm Players [ Quest ]",_G.PlayersQuest,function(value)
        _G.PlayersQuest = value
        Clip = value
        if not value then
            _G.FastAttack = false
            topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
    end)

    Stats:AddSeperator([[ 💫 Stats Point 💫 ]])

    local Statslist = {
        "Melee","Defense","Sword","Gun","Demon Fruit"
    }
	Stats:AddDropdown("Select Status",{""},true,Statslist,function(value)
        _G.SelectStats = value
	end)

    _G.Points = 3
    Stats:AddSlider("Point",1,100,_G.Points,function(value)
        _G.Points = value
    end)

    Stats:AddToggle("Auto Up Status",_G.AutoUpStats,function(value)
        _G.AutoUpStats = value
    end)

    Stats:AddSeperator([[ 💫 Combat 💫 ]])

    Playerslist = {}

    for i,v in pairs(game.Players:GetChildren()) do
        if v:IsA("Player") then
            table.insert(Playerslist,v.Name)
        end
    end

    local Selcet_Players = Stats:AddDropdown("Select Player","",false,Playerslist,function(value)
        _G.TargetPlayerAim = value
    end)

    Stats:AddButton("Refesh Player",function()
        Selcet_Players:Clear()

        pcall(function()
            for i,v in pairs(game.Players:GetChildren()) do
                if v:IsA("Player") then
                    Selcet_Players:Add(v.Name)
                end
            end
        end)
    end)

    Stats:AddToggle("Spectate Players",_G.Spectate,function(value)
        _G.Spectate = value
        game.Workspace.Camera.CameraSubject = game.Players[tostring(_G.TargetPlayerAim)].Character.Humanoid
        if not value then
            game.Workspace.Camera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
        end
    end)
    Stats:AddToggle("Auto Farm Player",_G.AutoFarmPlayer,function(value)
        _G.AutoFarmPlayer = value
        Clip = value
        if not value then
            _G.FastAttack = false
            topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
    end)

    spawn(function()
        while task.wait() do
            pcall(function()
                for i,v in pairs(game:GetService("Players"):GetChildren()) do
                    if v.Name == _G.TargetPlayerAim then
                        if _G.AutoFarmPlayer then
                            repeat task.wait()
                                Buso()
                                EquipWeapon(_G.Weapon)
                                _G.FastAttack = true
                                topos(v.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,3))
                            until v.Character.Humanoid.Health <= 0 or not _G.AutoFarmPlayer
                        end
                    end
                end
            end)
        end
    end)
    spawn(function()
        while task.wait() do
            pcall(function()
                if _G.SafeMode then
                    CharacterPlayer = game.Players.LocalPlayer.Character
                    HealthMinPlayer = CharacterPlayer.Humanoid.MaxHealth * _G.Safe/100
                    if CharacterPlayer.Humanoid.Health <= HealthMinPlayer then
                        repeat task.wait()
                            CharacterPlayer.HumanoidRootPart.CFrame  = CharacterPlayer.HumanoidRootPart.CFrame * CFrame.new(0,50,0)
                        until not _G.SafeMode
                    end
                end
            end)
        end
    end)
    task.spawn(function()
        while task.wait() do
            pcall(function()
                if _G.RunHack then
                    repeat task.wait()
                        CharacterPlayer = game.Players.LocalPlayer.Character
                        _G.Noclip = true
                        CharacterPlayer.HumanoidRootPart.CFrame  = CharacterPlayer.HumanoidRootPart.CFrame * CFrame.new(0,50,0)
                    until not _G.RunHack
                end
            end)
        end
    end)
    Stats:AddToggle("Auto Run Hack",_G.RunHack,function(value)
        _G.RunHack = value
        Clip = value
        if not value then
            _G.FastAttack = false
            topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
    end)
    Stats:AddToggle("Safe Modes",_G.SafeMode,function(value)
        _G.SafeMode = value
    end)

    _G.Safe = 30
    Stats:AddSlider("Safe Mode At",1,100,_G.Safe,function(value)
        _G.Safe = value
    end)

    local AimPly = Stats:AddLabel("Player Aim : ...")

    spawn(function()
        while task.wait() do
            if tostring(_G.TargetPlayerAim) ~= nil then
                AimPly:Set("Player Aim : "..tostring(_G.TargetPlayerAim))
            end
        end
    end)

    Stats:AddToggle("Aimbot Player Select",_G.AimbotSelect,function(value)
        _G.AimbotSelect = value
    end)

    Stats:AddToggle("Aimbot Player Naer [Bug]",_G.AimbotNaer,function(value)
        _G.AimbotNaer = value
    end)
    Stats:AddSeperator([[ ☃️ Code Exp ☃️ ]])

    local CodeList = {
        "fudd10",
        "fudd10_V2",
        "BigNews",
        "Sub2Fer999",
        "Enyu_is_Pro",
        "JCWK",
        "StarcodeHEO",
        "MagicBUS",
        "KittGaming",
        "Sub2OfficialNoobie",
        "TheGreatAce",
        "Sub2NoobMaster123",
        "Sub2Daigrock",
        "Axiore",
        "StrawHatMaine",
        "TantaiGaming",
        "Bluxxy",
        "SUB2GAMERROBOT_EXP1",
        "SECRET_ADMIN",
        "Sub2CaptainMaui"
    }
    Code = {
        "fudd10",
        "fudd10_V2",
        "BigNews",
        "Sub2Fer999",
        "Enyu_is_Pro",
        "JCWK",
        "StarcodeHEO",
        "MagicBUS",
        "KittGaming",
        "Sub2OfficialNoobie",
        "TheGreatAce",
        "Sub2NoobMaster123",
        "Sub2Daigrock",
        "Axiore",
        "StrawHatMaine",
        "TantaiGaming",
        "Bluxxy",
        "SUB2GAMERROBOT_EXP1",
        "SECRET_ADMIN",
        "Sub2CaptainMaui"
    }
    Stats:AddDropdown("Select Code",{"3BVISITS"},true,CodeList,function(value)
        _G.SelectCode = value
    end)

    Stats:AddButton("Redeem Code [ All ]",function()
        for i = 1, #Code do
            v = Code[i]
            UseCode(v)
        end
    end)
    Stats:AddToggle("Auto Redeem Code [ Select ]",_G.AutoRedeemCodeSelect,function(value)
        _G.AutoRedeemCodeSelect = value
    end)

    Stats:AddToggle("Auto Redeem Code [ ALL ]",_G.AutoRedeemCodeAll,function(value)
        _G.AutoRedeemCodeAll = value
    end)

    _G.CodeAt = 1
    Stats:AddSlider("Redeem Code At Level",1,100,_G.CodeAt,function(value)
        _G.CodeAt = value
    end)

    Stats:AddToggle("Auto Redeem Code [ At ]",_G.AutoRedeemCodeAt,function(value)
        _G.AutoRedeemCodeAt = value
    end)

    Shop:AddSeperator([[ 💲 Auto Update Shop 💲 ]])
    P = require(game:GetService("ReplicatedStorage").Shop)
    ListFruit = {}
    ListItem = {} 
    for i,v in pairs(P.Items) do
        if i:find("-") then 
            table.insert(ListFruit,v)
        end
        if v.Description and v.Price ~= math.huge then  
            table.insert(ListItem,v)
        end
    end
    table.sort(ListItem,function(i,v)
        return i.Price < v.Price
    end)
    for i,v in pairs(ListItem) do
        Shop:AddButton(v.Name.." : ".."$"..formatNumber(v.Price),function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem",tostring(v.Name))
        end)
    end
    Shop:AddSeperator([[ 🦾 Fighting Style V.1 Shop 🦾 ]])
    function Shop:AddMyButton(args)
        return Shop:AddButton(args.Name,args.Callback)
    end
    Shop:AddMyButton({Name = "Black Leg".." : ".."$ 150,000",Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
    end})
    Shop:AddMyButton({Name = "Electro".." : ".."$ 500,000",Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
    end})
    Shop:AddMyButton({Name = "Fishman Karate".." : ".."$ 750,000",Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
    end})
    Shop:AddMyButton({Name = "Dragon Claw".." : ".."ƒ 1,500",Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
    end})
    Shop:AddSeperator([[ ✨ Fighting Style V.2 Shop ✨ ]])
    Shop:AddMyButton({
        Name = "Superhuman".." : ".."$ 3M",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
        end
    })
    Shop:AddMyButton({
        Name = "Death Step".." : ".."$ 2.5M ƒ 5K",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
        end
    })
    Shop:AddMyButton({
        Name = "SharkmanKarate".." : ".."$ 2.5M ƒ 5K",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
        end
    })
    Shop:AddMyButton({
        Name = "Electric Claw".." : ".."$ 2.5M ƒ 5K",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
        end
    })
    Shop:AddMyButton({
        Name = "Dragon Talon".." : ".."$ 2.5M ƒ 5K",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
        end
    })
    Shop:AddMyButton({
        Name = "God Human".." : ".."$ 2.5M ƒ 5K",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
        end
    })
    Shop:AddSeperator([[ 😺 Race Shop 😺 ]])
    Shop:AddMyButton({
        Name = "Random Race".." : ".."ƒ 2.5K",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Reroll","2")
        end
    })

    Shop:AddMyButton({
        Name = "Ghoul Race".." : ".."Ectoplasm 100",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Ectoplasm","Buy",4)
        end
    })

    Shop:AddMyButton({
        Name = "Reset Stats".." : ".."ƒ 2.5K",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","2")
        end
    })
    Shop:AddSeperator([[ ⚽ Abilities Shop ⚽ ]])
    Shop:AddMyButton({
        Name = "Geppo".." : ".."$ 10K",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Geppo")
        end
    })
    Shop:AddMyButton({
        Name = "Buso Haki".." : ".."$ 25K",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Buso")
        end
    })

    Shop:AddMyButton({
        Name = "Soru".." : ".."$ 100K",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Soru")
        end
    })
    Shop:AddMyButton({
        Name = "Observations Haki".." : ".."$ 650K",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk","Buy")
        end
    })
    Shop:AddMyButton({Name = "Unlock All Abilities",Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Geppo")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Buso")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Soru")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk","Buy")
    end})


    Teleport:AddSeperator([[ ✈ Teleport ✈ ]])
    if OldWorld then
        ListIsland = {"WindMill","Marine","Middle Town","Jungle","Pirate Village","Desert","Snow Island","MarineFord","Colosseum","Sky Island 1","Sky Island 2","Sky Island 3","Prison","Magma Village","Under Water Island","Fountain City","Shank Room","Mob Island"}
    elseif NewWorld then
        ListIsland = {"Cafe","Frist Spot","Dark Area","Flamingo Mansion","Flamingo Room","Green Zone","Factory","Colossuim","Zombie Island","Two Snow Mountain","Punk Hazard","Cursed Ship","Ice Castle","Forgotten Island","Ussop Island","Mini Sky Island"}
    else
        ListIsland = {"Mansion","Port Town", "Great Tree", "Castle On The Sea", "MiniSky", "Hydra Island","Floating Turtle","Haunted Castle","Sea of Treats 1","Sea of Treats 2","Sea of Treats 3","TiKi"}
    end
    local Drop = Teleport:AddDropdown("Select Island","",false,ListIsland,function(value)
        _G.SelectIsland = value
    end)
    Teleport:AddToggle("Teleport",_G.Teleport,function(value)
        _G.Teleport = value
        Clip = value
        if not value then
            _G.FastAttack = false
            topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
    end)
    Teleport:AddSeperator([[ ESP More ]])
    
function isnil(thing)
    return (thing == nil)
end
local function round(n)
    return math.floor(tonumber(n) + 0.5)
end
Number = math.random(1, 1000000)
function UpdateEspPlayer()
    if ESPPlayer then
        for i,v in pairs(game:GetService("Players"):GetPlayers()) do
            if not isnil(v.Character) then
                if not v.Character.Head:FindFirstChild('NameEsp'..v.Name) then
                    local BillboardGui = Instance.new("BillboardGui")
                    local ESP = Instance.new("TextLabel")
                    local HealthESP = Instance.new("TextLabel")
                    BillboardGui.Parent = v.Character.Head
                    BillboardGui.Name = 'NameEsp'..v.Name
                    BillboardGui.ExtentsOffset = Vector3.new(0, 1, 0)
                    BillboardGui.Size = UDim2.new(1,200,1,30)
                    BillboardGui.Adornee = v.Character.Head
                    BillboardGui.AlwaysOnTop = true
                    ESP.Name = "ESP"
                    ESP.Parent = BillboardGui
                    ESP.TextTransparency = 0
                    ESP.BackgroundTransparency = 1
                    ESP.Size = UDim2.new(0, 200, 0, 30)
                    ESP.Position = UDim2.new(0,25,0,0)
                    ESP.Font = Enum.Font.Gotham
                    ESP.Text = (v.Name ..' '.."[ "..round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' M'.." ]")
                    if v.Team == game:GetService("Players").LocalPlayer.Team then
                        ESP.TextColor3 = Color3.new(0, 255, 255)
                    else
                        ESP.TextColor3 = Color3.new(255, 0, 0)
                    end
                    ESP.TextSize = 14
                    ESP.TextStrokeTransparency = 0.500
                    ESP.TextWrapped = true
                    HealthESP.Name = "HealthESP"
                    HealthESP.Parent = ESP
                    HealthESP.TextTransparency = 0
                    HealthESP.BackgroundTransparency = 1
                    HealthESP.Position = ESP.Position + UDim2.new(0, -25, 0, 15)
                    HealthESP.Size = UDim2.new(0, 200, 0, 30)
                    HealthESP.Font = Enum.Font.Gotham
                    HealthESP.TextColor3 = Color3.fromRGB(255, 0, 0)
                    HealthESP.TextSize = 14
                    HealthESP.TextStrokeTransparency = 0.500
                    HealthESP.TextWrapped = true
                    HealthESP.Text = "Health "..math.floor(v.Character.Humanoid.Health).."/"..math.floor(v.Character.Humanoid.MaxHealth)
                else
                    v.Character.Head['NameEsp'..v.Name].ESP.Text = (v.Name ..' '..round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' M')
                    v.Character.Head['NameEsp'..v.Name].ESP.HealthESP.Text = "Health "..math.floor(v.Character.Humanoid.Health).."/"..math.floor(v.Character.Humanoid.MaxHealth)
                    v.Character.Head:FindFirstChild('NameEsp'..v.Name).ESP.TextTransparency = 0
                    v.Character.Head:FindFirstChild('NameEsp'..v.Name).ESP.HealthESP.TextTransparency = 0
                end
            end
        end
    else
        for i,v in pairs(game:GetService("Players"):GetPlayers()) do
            if v.Character.Head:FindFirstChild('NameEsp'..v.Name) then
                v.Character.Head:FindFirstChild('NameEsp'..v.Name):Destroy()
            end
        end
    end     
end

function UpdateGearESP()
    pcall(function()
        for i,v in pairs(game:GetService("Workspace").Map.MysticIsland:GetChildren()) do
            pcall(function()
                if GearESP then 
                    if v.Name == "Part" then
                        if v.Color == Color3.fromRGB(128, 187, 219) then
                            if not v:FindFirstChild('NameEsp') then
                                local bill = Instance.new('BillboardGui',v)
                                bill.Name = 'NameEsp'
                                bill.ExtentsOffset = Vector3.new(0, 1, 0)
                                bill.Size = UDim2.new(1,200,1,30)
                                bill.Adornee = v
                                bill.AlwaysOnTop = true
                                local name = Instance.new('TextLabel',bill)
                                name.Font = "GothamBold"
                                name.FontSize = "Size14"
                                name.TextWrapped = true
                                name.Size = UDim2.new(1,0,1,0)
                                name.TextYAlignment = 'Top'
                                name.BackgroundTransparency = 1
                                name.TextStrokeTransparency = 0.5
                                name.TextColor3 = Color3.fromRGB(255, 255, 255)
                            else
                                v['NameEsp'].TextLabel.Text = ('Gear\n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                            end
                        end
                    end
                else
                    if v:FindFirstChild('NameEsp') then
                        v:FindFirstChild('NameEsp'):Destroy()
                    end
                end
            end)
        end
    end)
end
function UpdateIslandESP() 
    for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
        pcall(function()
            if IslandESP then 
                if v.Name ~= "Sea" then
                    if not v:FindFirstChild('NameEsp') then
                        local bill = Instance.new('BillboardGui',v)
                        bill.Name = 'NameEsp'
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1,200,1,30)
                        bill.Adornee = v
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel',bill)
                        name.Font = "GothamBold"
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1,0,1,0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        name.TextColor3 = Color3.fromRGB(80, 245, 245)
                    else
                        v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                    end
                end
            else
                if v:FindFirstChild('NameEsp') then
                    v:FindFirstChild('NameEsp'):Destroy()
                end
            end
        end)
    end
end

function UpdateChestEsp() 
    for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
        pcall(function()
            if string.find(v.Name,"Chest") then
                if ChestESP then
                    if string.find(v.Name,"Chest") then
                        if not v:FindFirstChild('NameEsp'..Number) then
                            local bill = Instance.new('BillboardGui',v)
                            bill.Name = 'NameEsp'..Number
                            bill.ExtentsOffset = Vector3.new(0, 1, 0)
                            bill.Size = UDim2.new(1,200,1,30)
                            bill.Adornee = v
                            bill.AlwaysOnTop = true
                            local name = Instance.new('TextLabel',bill)
                            name.Font = "GothamBold"
                            name.FontSize = "Size14"
                            name.TextWrapped = true
                            name.Size = UDim2.new(1,0,1,0)
                            name.TextYAlignment = 'Top'
                            name.BackgroundTransparency = 1
                            name.TextStrokeTransparency = 0.5
                            name.TextColor3 = Color3.fromRGB(0, 255, 250)
                        if v.Name == "Chest1" then
                            name.Text = ("Chest 1" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                        end
                        if v.Name == "Chest2" then
                            name.Text = ("Chest 2" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                        end
                    if v.Name == "Chest3" then
                        name.Text = ("Chest 3" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                    end
                    else
                        v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                    end
                end
            else
                if v:FindFirstChild('NameEsp'..Number) then
                v:FindFirstChild('NameEsp'..Number):Destroy()
                end
            end
            end
        end)
    end
end

function UpdateBfEsp() 
    for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
        pcall(function()
            if DevilFruitESP then
                if string.find(v.Name, "Fruit") then   
                    if not v.Handle:FindFirstChild('NameEsp'..Number) then
                        local bill = Instance.new('BillboardGui',v.Handle)
                        bill.Name = 'NameEsp'..Number
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1,200,1,30)
                        bill.Adornee = v.Handle
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel',bill)
                        name.Font = "GothamBold"
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1,0,1,0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        name.TextColor3 = Color3.fromRGB(255, 0, 0)
                        name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
                    else
                        v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
                    end
                end
            else
                if v.Handle:FindFirstChild('NameEsp'..Number) then
                    v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
                    end
            end
        end)
    end
end

function UpdateFlowerEsp() 
    for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
        pcall(function()
            if v.Name == "Flower2" or v.Name == "Flower1" then
                if FlowerESP then 
                    if not v:FindFirstChild('NameEsp'..Number) then
                        local bill = Instance.new('BillboardGui',v)
                        bill.Name = 'NameEsp'..Number
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1,200,1,30)
                        bill.Adornee = v
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel',bill)
                        name.Font = "GothamBold"
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1,0,1,0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        name.TextColor3 = Color3.fromRGB(255, 0, 0)
                    if v.Name == "Flower1" then 
                        name.Text = ("Blue Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                        name.TextColor3 = Color3.fromRGB(0, 0, 255)
                    end
                    if v.Name == "Flower2" then
                        name.Text = ("Red Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                        name.TextColor3 = Color3.fromRGB(255, 0, 0)
                    end
                else
                    v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                end
                else
                    if v:FindFirstChild('NameEsp'..Number) then
                        v:FindFirstChild('NameEsp'..Number):Destroy()
                    end
                end
            end   
        end)
    end
end
    Teleport:AddToggle("ESP Player",false,function(value)
        ESPPlayer = value
        while ESPPlayer do wait()
            UpdateEspPlayer()
        end
    end)
    
    Teleport:AddToggle("ESP Chest",false,function(value)
        ChestESP = value
        _G.ESPChestxx = value
        while ChestESP do wait()
            UpdateChestEsp() 
        end
    end)
    
    Teleport:AddToggle("ESP Fruit",false,function(value)
        DevilFruitESP = value
        while DevilFruitESP do wait()
            UpdateBfEsp() 
        end
    end)
    
    Teleport:AddToggle("ESP Flower",false,function(value)
        FlowerESP = value
        while FlowerESP do wait()
            UpdateFlowerEsp() 
        end
    end)
    
    Teleport:AddToggle("ESP Island",IslandESP,function(value)
        IslandESP = value
        while IslandESP do wait()
            UpdateIslandESP() 
        end
    end)
    Teleport:AddSeperator([[ 🎇 Server 🎇 ]])
    function Teleport:AddMyButton(args)
        return Teleport:AddButton(args.Name,args.Callback)
    end
    Teleport:AddMyButton({Name="Rejoin Server",Callback=function()
        game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
    end})
    Teleport:AddMyButton({Name="Server Hop",Callback=function()
        Hop()
    end})
    Teleport:AddMyButton({Name="Hop Less Players",Callback=function()
        local Http = game:GetService("HttpService")
        local TPS = game:GetService("TeleportService")
        local Api = "https://games.roblox.com/v1/games/"
        
        local _place = game.PlaceId
        local _servers = Api.._place.."/servers/Public?sortOrder=Asc&limit=100"
        function ListServers(cursor)
           local Raw = game:HttpGet(_servers .. ((cursor and "&cursor="..cursor) or ""))
           return Http:JSONDecode(Raw)
        end
        
        local Server, Next; repeat
           local Servers = ListServers(Next)
           Server = Servers.data[1]
           Next = Servers.nextPageCursor
        until Server
        
        TPS:TeleportToPlaceInstance(_place,Server.id,game.Players.LocalPlayer)
    end})
    Teleport:AddSeperator([[ 🎨 Job ID 🎨 ]])
    Teleport:AddTextbox("Job ID Game","",function(value)
        _G.JoinServer = value
    end)
    Teleport:AddMyButton({Name="Join Job Id Server",Callback=function()
        game.ReplicatedStorage['__ServerBrowser']:InvokeServer('teleport',tostring(_G.JoinServer))
    end})
    Teleport:AddMyButton({Name="Coppy Job Id Server",Callback=function()
        setclipboard(tostring(game.JobId))
    end})
    Teleport:AddSeperator([[ 🚲 Teleport Sea 🚲 ]])
    Teleport:AddMyButton({
        Name = "Teleport To First Sea",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
        end
    })
    Teleport:AddMyButton({
        Name = "Teleport To Second Sea",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
        end
    })
    Teleport:AddMyButton({
        Name = "Teleport To Third Sea",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
        end
    })

    spawn(function()
        while task.wait() do
            pcall(function()
                if _G.Teleport then
                    if _G.SelectIsland == "WindMill" then
                        topos(CFrame.new(979.79895019531, 16.516613006592, 1429.0466308594))
                    elseif _G.SelectIsland == "Marine" then
                        topos(CFrame.new(-2566.4296875, 6.8556680679321, 2045.2561035156))
                    elseif _G.SelectIsland == "Middle Town" then
                        topos(CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094))
                    elseif _G.SelectIsland == "Jungle" then
                        topos(CFrame.new(-1612.7957763672, 36.852081298828, 149.12843322754))
                    elseif _G.SelectIsland == "Pirate Village" then
                        topos(CFrame.new(-1181.3093261719, 4.7514905929565, 3803.5456542969))
                    elseif _G.SelectIsland == "Desert" then
                        topos(CFrame.new(944.15789794922, 20.919729232788, 4373.3002929688))
                    elseif _G.SelectIsland == "Snow Island" then
                        topos(CFrame.new(1347.8067626953, 104.66806030273, -1319.7370605469))
                    elseif _G.SelectIsland == "MarineFord" then
                        topos(CFrame.new(-4914.8212890625, 50.963626861572, 4281.0278320313))
                    elseif _G.SelectIsland == "Colosseum" then
                        topos( CFrame.new(-1427.6203613281, 7.2881078720093, -2792.7722167969))
                    elseif _G.SelectIsland == "Sky Island 1" then
                        topos(CFrame.new(-4869.1025390625, 733.46051025391, -2667.0180664063))
                    elseif _G.SelectIsland == "Sky Island 2" then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
                    elseif _G.SelectIsland == "Sky Island 3" then
                        topos(CFrame.new(-7994.10546875, 5756.033203125, -1942.4979248047))
                    elseif _G.SelectIsland == "Prison" then
                        topos( CFrame.new(4875.330078125, 5.6519818305969, 734.85021972656))
                    elseif _G.SelectIsland == "Magma Village" then
                        topos(CFrame.new(-5247.7163085938, 12.883934020996, 8504.96875))
                    elseif _G.SelectIsland == "Under Water Island" then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                    elseif _G.SelectIsland == "Fountain City" then
                        topos(CFrame.new(5127.1284179688, 59.501365661621, 4105.4458007813))
                    elseif _G.SelectIsland == "Shank Room" then
                        topos(CFrame.new(-1442.16553, 29.8788261, -28.3547478))
                    elseif _G.SelectIsland == "Mob Island" then
                        topos(CFrame.new(-2850.20068, 7.39224768, 5354.99268))
                    elseif _G.SelectIsland == "Cafe" then
                        topos(CFrame.new(-380.47927856445, 77.220390319824, 255.82550048828))
                    elseif _G.SelectIsland == "Frist Spot" then
                        topos(CFrame.new(-11.311455726624, 29.276733398438, 2771.5224609375))
                    elseif _G.SelectIsland == "Dark Area" then
                        topos(CFrame.new(3780.0302734375, 22.652164459229, -3498.5859375))
                    elseif _G.SelectIsland == "Flamingo Mansion" then
                        topos(CFrame.new(-483.73370361328, 332.0383605957, 595.32708740234))
                    elseif _G.SelectIsland == "Flamingo Room" then
                        topos(CFrame.new(2284.4140625, 15.152037620544, 875.72534179688))
                    elseif _G.SelectIsland == "Green Zone" then
                        topos( CFrame.new(-2448.5300292969, 73.016105651855, -3210.6306152344))
                    elseif _G.SelectIsland == "Factory" then
                        topos(CFrame.new(424.12698364258, 211.16171264648, -427.54049682617))
                    elseif _G.SelectIsland == "Colossuim" then
                        topos( CFrame.new(-1503.6224365234, 219.7956237793, 1369.3101806641))
                    elseif _G.SelectIsland == "Zombie Island" then
                        topos(CFrame.new(-5622.033203125, 492.19604492188, -781.78552246094))
                    elseif _G.SelectIsland == "Two Snow Mountain" then
                        topos(CFrame.new(753.14288330078, 408.23559570313, -5274.6147460938))
                    elseif _G.SelectIsland == "Punk Hazard" then
                        topos(CFrame.new(-6127.654296875, 15.951762199402, -5040.2861328125))
                    elseif _G.SelectIsland == "Cursed Ship" then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                    elseif _G.SelectIsland == "Ice Castle" then
                        topos(CFrame.new(6148.4116210938, 294.38687133789, -6741.1166992188))
                    elseif _G.SelectIsland == "Forgotten Island" then
                        topos(CFrame.new(-3032.7641601563, 317.89672851563, -10075.373046875))
                    elseif _G.SelectIsland == "Ussop Island" then
                        topos(CFrame.new(4816.8618164063, 8.4599885940552, 2863.8195800781))
                    elseif _G.SelectIsland == "Mini Sky Island" then
                        topos(CFrame.new(-288.74060058594, 49326.31640625, -35248.59375))
                    elseif _G.SelectIsland == "Great Tree" then
                        topos(CFrame.new(2681.2736816406, 1682.8092041016, -7190.9853515625))
                    elseif _G.SelectIsland == "Castle On The Sea" then
                        local args = {
                            [1] = "requestEntrance",
                            [2] = Vector3.new(-5089.66455078125, 318.5023193359375, -3146.126708984375)
                        }
            
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    elseif _G.SelectIsland == "MiniSky" then
                        topos(CFrame.new(-260.65557861328, 49325.8046875, -35253.5703125))
                    elseif _G.SelectIsland == "Port Town" then
                        topos(CFrame.new(-294.20208740234, 29.756063461304, 5395.4111328125))
                    elseif _G.SelectIsland == "Hydra Island" then
                        local args = {
                            [1] = "requestEntrance",
                            [2] = Vector3.new(5742.9599609375, 613.9691772460938, -283.685546875)
                        }
            
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    elseif _G.SelectIsland == "Floating Turtle" then
                        topos(CFrame.new(-13274.528320313, 531.82073974609, -7579.22265625))
                    elseif _G.SelectIsland == "Mansion" then
                        local args = {
                            [1] = "requestEntrance",
                            [2] = Vector3.new(-12463.6025390625, 378.3270568847656, -7466.0830078125)
                        }
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    elseif _G.SelectIsland == "Haunted Castle" then
                        topos(CFrame.new(-9506.1064453125, 142.13989257813, 5526.0405273438))
                    elseif _G.SelectIsland == "Sea of Treats 2" then
                        topos(CFrame.new(-954.7802734375, 7.7934098243713, -10802.102539062))
                    elseif _G.SelectIsland == "Sea of Treats 1" then
                        topos(CFrame.new(-2042.5035400391, 4.701087474823, -9896.873046875))
                    elseif _G.SelectIsland == "Sea of Treats 3" then
                        topos(CFrame.new(-1978.3765869140625, 37.82405471801758, -11965.763671875))
                    elseif _G.SelectIsland == "TiKi" then
                        topos(CFrame.new(-16216,8,440))
                    end
                end
            end)
        end
    end)
    Dungeon:AddSeperator([[ 🎟 Raid 🎟 ]])
    ListRaid = {"Flame","Ice","Quake","Light","Dark","String","Rumble","Magma","Human: Buddha","Sand","Bird: Phoenix","Dough"}
    local Drop = Dungeon:AddDropdown("Select Raid","",false,ListRaid,function(value)
        _G.SelectRaid = value
    end)
    namedun = Dungeon:AddLabel("Wait.")
    spawn(function()
        while task.wait() do
            namedun:Set("Wait..")
            wait(1)
            namedun:Set("Wait...")
            wait(1)
            namedun:Set("Wait.")
            wait(1)
        end
    end)
    function Dungeon:MyAddToggle(args)
        return Dungeon:AddToggle(args.Name,args.Value,args.Callback)
    end
    Dungeon:AddButton("Teleport To Lab",function()
        if NewWorld then
            topos(CFrame.new(-6438.73535, 250.645355, -4501.50684))
        elseif ThirdWorld then
            topos(CFrame.new(-5057.146484375, 314.54132080078, -2934.7995605469))
        end 
    end)
    Dungeon:MyAddToggle({Name="Auto Farm Dungeons",Value=_G.FarmDungeons,Callback=function(value)
        _G.FarmDungeons = value
    end})

    task.spawn(function()
        while true do task.wait()
            if _G.FarmDungeons then
                pcall(function()
                    if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                pcall(function()
                                    repeat task.wait()
                                        v.Humanoid.Health = 0
                                        v:BreakJoints()
                                        sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                    until not _G.FarmDungeons or not v.Parent or v.Humanoid.Health <= 0
                                end)
                            end
                        end
                    end
                end)
            end
        end
    end)

    Dungeon:MyAddToggle({Name="Auto Buy Chips",Value=_G.BuyChip,Callback=function(value)
        _G.BuyChip = value
    end})
    Dungeon:MyAddToggle({Name="Auto Start Dungeons",Value=_G.StartDungeons,Callback=function(value)
        _G.StartDungeons = value
    end})

    spawn(function()
        while task.wait() do
            pcall(function()
                if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special Microchip") then
                    if _G.StartDungeons then
                        if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == false then
                            if NewWorld then
                                fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
                            elseif ThirdWorld then
                                fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2:FindFirstChild("Button").Main:FindFirstChild("ClickDetector"))
                            end
                        else
                            wait(10)
                        end
                    end
                end
            end)
        end
    end)

    spawn(function()
        while task.wait() do
            pcall(function()
                if _G.BuyChip then
                    if not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special Microchip") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc", "Select", _G.SelectRaid)
                    end
                end
            end)
        end
    end)


    Dungeon:MyAddToggle({Name="Auto Next Island",Value=_G.NextIsland,Callback=function(value)
        _G.NextIsland = value
        Clip = value
    end})

    function GetAllRaids()
        local IslandArea = {}
        if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true then
            for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
                if game.Players.LocalPlayer:DistanceFromCharacter(v.Position) <= 6000 and v.Name:find("Island") then
                    table.insert(IslandArea, v)
                end
            end
        end
        return IslandArea
    end
    function RaidCanFinish()
        TableUse = GetAllRaids()
        table.sort(TableUse, function(a,b)
            return tonumber(a.Name:match("%d+")) > tonumber(b.Name:match("%d+"))
        end)
        return TableUse
    end
    function GetCurrentRaid()
        RaidDungeonNow = RaidCanFinish()
        for i,v in pairs(RaidDungeonNow) do
            if v.Name == "Island 5" then
                return v
            elseif v.Name == "Island 4" then
                return v
            elseif v.Name == "Island 3" then
                return v
            elseif v.Name == "Island 2" then
                return v
            elseif v.Name == "Island 1" then
                return v
            end
        end
    end
    task.spawn(function()
        while task.wait() do
            pcall(function()
                if _G.NextIsland then
                    if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true then
                        topos(GetCurrentRaid().CFrame * CFrame.new(0,100,0))
                    end
                end
            end)
        end 
    end)

    Dungeon:MyAddToggle({Name="Auto Awakener",Value=_G.Awakener,Callback=function(value)
        _G.Awakener = value
    end})

    spawn(function()
        while task.wait() do
            if _G.Awakener then
                pcall(function()
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Check")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Awaken")
                end)
            end
        end
    end)

    Dungeon:MyAddToggle({Name="Aura Monster",Value=_G.KillAura,Callback=function(value)
        _G.KillAura = value
        Clip = value
    end})

    task.spawn(function()
        while true do task.wait()
            pcall(function()
                if _G.KillAura then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude <= 500 then
                                repeat task.wait()
                                    EquipWeapon(_G.Weapon)
                                    Buso()
                                    v.HumanoidRootPart.CanCollide = false
                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(0,15,10))
                                    _G.FastAttack = true
                                until not _G.KillAura or not v.Parent or v.Humanoid.Health <= 0
                                _G.FastAttack = false
                                if not _G.KillAura then
                                    return
                                end
                            end
                        end
                    end
                end
            end)
        end
    end)

    Misc:AddSeperator("Setting Skill Mastery")

    Misc:AddToggle("Skill Z",true,function(value)
        _G.Skill_Z = value
    end)
    Misc:AddToggle("Skill X",true,function(value)
        _G.Skill_X = value
    end)
    Misc:AddToggle("Skill C",true,function(value)
        _G.Skill_C = value
    end)
    Misc:AddToggle("Skill V",true,function(value)
        _G.Skill_V = value
    end)
    
    Misc:AddSeperator("Teams")
    Misc:AddButton("Join Pirates Team",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Pirates")
    end)
    Misc:AddButton("Join Marines Team",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Marines")
    end)
    Misc:AddSeperator("Special")
    Misc:AddButton("Max Zoom",function()
        game:GetService("Players").LocalPlayer.CameraMaxZoomDistance = math.huge
    end)
    Misc:AddButton("Click Teleport Tool",function()
        local plr = game:GetService("Players").LocalPlayer
        local mouse = plr:GetMouse()

        local tool = Instance.new("Tool")
        tool.RequiresHandle = false
        tool.Name = "Click Teleport"

        tool.Activated:Connect(function()
            local root = plr.Character.HumanoidRootPart
            local pos = mouse.Hit.Position+Vector3.new(0,2.5,0)
            local offset = pos-root.Position
            root.CFrame = root.CFrame+offset
        end)

        tool.Parent = plr.Backpack
    end)
    Misc:AddButton("Unlock Portal",function()
        print("Unlock Protal")
    end)
    Misc:AddButton("Boots Fps",function()
        BsF()
    end)
    function BsF()
        for i,v in pairs(game.Workspace.Map:GetDescendants()) do
            if v.Name == "Tavern" or v.Name == "SmileFactory" or v.Name == "Tree" or v.Name == "Rocks" or v.Name == "PartHouse" or v.Name == "Hotel" or v.Name == "WallPiece" or v.Name == "MiddlePillars" or v.Name == "Cloud" or v.Name == "PluginGrass" or v.Name == "BigHouse" or v.Name == "SmallHouse" or v.Name == "Detail" then
                v:Destroy()
            end
        end 
        for i,v in pairs(game.ReplicatedStorage.Unloaded:GetDescendants()) do
            if v.Name == "Tavern" or v.Name == "SmileFactory" or v.Name == "Tree" or v.Name == "Rocks" or v.Name == "PartHouse" or v.Name == "Hotel" or v.Name == "WallPiece" or v.Name == "MiddlePillars" or v.Name == "Cloud" or v.Name == "PluginGrass" or v.Name == "BigHouse" or v.Name == "SmallHouse" or v.Name == "Detail" then
                v:Destroy()
            end
        end
        for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
            if v:IsA("Accessory") or v.Name == "Pants" or v.Name == "Shirt" then
                v:Destroy()
            end
        end
        local decalsyeeted = true 
        local g = game
        local w = g.Workspace
        local l = g.Lighting
        local t = w.Terrain
        t.WaterWaveSize = 0
        t.WaterWaveSpeed = 0
        t.WaterReflectance = 0
        t.WaterTransparency = 0
        l.GlobalShadows = false
        l.FogEnd = 9e9
        l.Brightness = 0
        settings().Rendering.QualityLevel = "Level01"
        for i, v in pairs(g:GetDescendants()) do
            if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
                v.Material = "Plastic"
                v.Reflectance = 0
            elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
                v.Transparency = 1
            elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
                v.Lifetime = NumberRange.new(0)
            elseif v:IsA("Explosion") then
                v.BlastPressure = 1
                v.BlastRadius = 1
            elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
                v.Enabled = false
            elseif v:IsA("MeshPart") then
                v.Material = "Plastic"
                v.Reflectance = 0
                v.TextureID = 10385902758728957
            end
        end
        for i, e in pairs(l:GetChildren()) do
            if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
                e.Enabled = false
            end
        end
    end
    Misc:AddButton("Unlock FPS",function()
        setfpscap(9999)
    end)
    Misc:AddButton("Reduce CPU",function()

    end)
    Misc:AddButton("Sit",function()
        game.Players.LocalPlayer.Character.Humanoid.Sit = true
    end)
    Misc:AddSeperator("Moddified")

    Misc:AddToggle("Show Fighting Styles",true,function(value)
        _G.ShowFighting = value
    end)

    Misc:AddToggle("Show Awakening",true,function(value)
        _G.ShowAwakening = value
    end)
    Misc:AddToggle("Show Money",true,function(value)
        _G.ShowMoney = value
    end)
    Misc:AddToggle("Show Inventory",true,function(value)
        _G.ShowInventory = value
    end)
    Misc:AddToggle("Show Inventory Fruit",true,function(value)
        _G.ShowInventoryFruit = value
    end)
    _G.FruitsCost = 1
    Misc:AddTextbox("Fruit Cost",1,function(value)
        _G.FruitsCost = value
    end)
    Misc:AddTextbox("Logo Url","",function(value)
        _G.Logo = value
    end) 

    AZLISt = {"A","B","C","D",'E','F',"G","H","I","J","K","L","N","M","O","P","Q","R","S","T","U","V","X","Y","Z"}

    Misc:AddButton("Create Kaitun \n Pictures",function()
        LaodKaitun()
    end)

    function LaodKaitun()
        local function formatNumber(number)
            local i, k, j = tostring(number):match("(%-?%d?)(%d*)(%.?.*)")
            return i..k:reverse():gsub("(%d%d%d)", "%1,"):reverse()..j
        end
        local UserDataOld = game.CoreGui:FindFirstChild('UserData')
        if UserDataOld then
            for i,v in pairs(game.CoreGui:FindFirstChild('UserData'):GetChildren()) do
                pcall(function()
                    v:Destroy()
                end)
            end
            if UserDataOld then
                UserDataOld:Destroy()
            end
        end
        if game:FindFirstChild("CoreGui"):FindFirstChild("MyPictures") then
            game:FindFirstChild("CoreGui"):FindFirstChild("MyPictures"):Destroy()
        end
        local args = {
            [1] = "BuyDragonTalon",
            [2] = true
        }
        BuyDragonTalon = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args)))
        if BuyDragonTalon then
            if BuyDragonTalon == 1 then
                HasTalon = true
            end
        end
        local args = {
            [1] = "BuySuperhuman",
            [2] = true
        }
        BuySuperhuman = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args)))
        if BuySuperhuman then
            if BuySuperhuman == 1 then
                HasSuperhuman = true
            end
        end
        
        local args = {
            [1] = "BuySharkmanKarate",
            [2] = true
        }
        BuySharkmanKarate = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args)))
        if BuySharkmanKarate then
            if BuySharkmanKarate == 1 then
                HasKarate = true
            end
        end
        local args = {
            [1] = "BuyDeathStep",
            [2] = true
        }
        BuyDeathStep = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args)))
        if BuyDeathStep then
            if BuyDeathStep == 1 then
                HasDeathStep = true
            end
        end
        local args = {
            [1] = "BuyElectricClaw",
            [2] = true
        }
        BuyElectricClaw = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args)))
        if BuyElectricClaw then
            if BuyElectricClaw == 1 then
                HasElectricClaw = true
            end
        end
        local args = {
            [1] = "BuyGodhuman",
            [2] = true
        }
        BuyGodhuman = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args)))
        if BuyGodhuman then
            if BuyGodhuman == 1 then
                HasGodhuman = true
            end
        end
        local data = {}
        if HasElectricClaw then
            table.insert(data, {
                ['Name'] = 'ElectricClaw',
                ['AssetID'] = '6866994470'
            })
        end
        if HasTalon then
            table.insert(data, {
                ['Name'] = 'Dragon Talon',
                ['AssetID'] = '7831677967'
            })
        end
        if HasSuperhuman then
            table.insert(data, {
                ['Name'] = 'Superhuman',
                ['AssetID'] = '4831781711'
            })
        end
        if HasKarate then
            table.insert(data, {
                ['Name'] = 'Sharkman Karate',
                ['AssetID'] = '6525157144'
            })
        end
        if HasDeathStep then
            table.insert(data, {
                ['Name'] = 'Death Step',
                ['AssetID'] = '6085350468'
            })
        end
        if HasGodhuman then
            table.insert(data, {
                ['Name'] = 'Godhuman',
                ['AssetID'] = '10338473987'
            })
        end
        local UserData = Instance.new("ScreenGui")
        local MaleeFrame = Instance.new("Frame")
        local InventoryFrame = Instance.new("Frame")
        local PostionX = 0
        UserData.Name = "UserData"
        UserData.Parent = game.CoreGui
        UserData.Enabled = true
        UserData.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        InventoryFrame.Name = "InventoryFrame"
        InventoryFrame.Parent = UserData
        InventoryFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        InventoryFrame.BackgroundTransparency = 1.000
        InventoryFrame.BorderSizePixel = 0
        InventoryFrame.Size = UDim2.new(0.0628535524, 0, 0.123609394, 0)
        MaleeFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        MaleeFrame.BackgroundTransparency = 1.000
        MaleeFrame.BorderSizePixel = 0
        MaleeFrame.Size = UDim2.new(0.0628535524, 0, 0.123609394, 0)
        MaleeFrame.Name = "MaleeFrame"
        MaleeFrame.Parent = UserData
        MaleeFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        MaleeFrame.BackgroundTransparency = 1.000
        MaleeFrame.BorderSizePixel = 0
        MaleeFrame.Size = UDim2.new(0.0628535524, 0, 0.123609394, 0)
        if _G.ShowFighting then
            for i, v in pairs(data) do
                local Assets = Instance.new("ImageLabel")
                Assets.Name = v.Name
                Assets.Parent = MaleeFrame
                Assets.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Assets.BackgroundTransparency = 1
                Assets.BorderSizePixel = 0
                Assets.Size = UDim2.new(1.1, 0, 1.1, 0)
                Assets.Image = 'rbxassetid://' .. v.AssetID
                Assets.Position =  UDim2.new(PostionX, 0, 0, 0)
                PostionX =  PostionX + 1.13
            end
        end
        if _G.ShowInventory then
            game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Title.Visible = false
            game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Container.Visible = false
            game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Info.Visible = false
            game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.BackgroundTransparency = 1
            game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Visible = true
            local PostionXInv = 0
            local CountAZ = 0
            local ItemCount = 0
            local PostionYInv = 1.38
            HaveCreate = {}
            repeat wait()
                for x,z in pairs(AZLISt) do
                    game:GetService("Players")["LocalPlayer"].PlayerGui.Main.InventoryContainer.Right.Content.Search.TextBox.Text = tostring(z)
                    CountAZ = CountAZ + 1
                    for i, v in pairs(game:GetService("Players")["LocalPlayer"].PlayerGui.Main.InventoryContainer.Right.Content.ScrollingFrame.Frame:GetChildren()) do
                        if v:IsA('Frame') and (v.ItemLine2.Text == "Accessory" or v.ItemLine2.Text == "Gun" or v.ItemLine2.Text == "Sword") and (v.ItemName.Text ~= nil or v.ItemName.Text ~= "") then
                            if v.Background.BackgroundColor3 == Color3.fromRGB(238, 47, 50) or v.Background.BackgroundColor3 == Color3.fromRGB(213, 43, 228) then
                                if not table.find(HaveCreate, v.ItemName.Text) then
                                    item = v:Clone()
                                    item.Parent = InventoryFrame
                                    item.Position = UDim2.new(PostionXInv, 0, PostionYInv, 0)
                                    item.Size = UDim2.new(0.7, 0, 0.7, 0)
                                    PostionXInv = PostionXInv + 0.75
                                    ItemCount = ItemCount + 1
                                    if ItemCount >= 10 then
                                        PostionYInv = PostionYInv + 0.76
                                        ItemCount = 0
                                        PostionXInv = 0
                                    end
                                    table.insert(HaveCreate, v.ItemName.Text)
                                end
                            end
                        end
                    end
                end
            until CountAZ >= tonumber(#AZLISt) or not game:GetService("CoreGui"):FindFirstChild("UserData")
            game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Visible = false
            game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Title.Visible = true
            game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Container.Visible = true
            game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Info.Visible = true
            game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.BackgroundTransparency = 0
        end
        if _G.ShowAwakening then
            game:GetService("Players").LocalPlayer.PlayerGui.Main.AwakeningToggler.Visible = true
            for i, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main.AwakeningToggler:GetChildren()) do
                if v:IsA('Frame') or v:IsA('TextLabel') then
                    v.Visible= false
                end
            end
            wait(.5)
            AwakeningToggler = game:GetService("Players").LocalPlayer.PlayerGui.Main.AwakeningToggler:Clone()
            AwakeningToggler.Parent = UserData
            AwakeningToggler.Position = UDim2.new(0.8, 0, 0.11, 0)
            AwakeningToggler.Size =  UDim2.new(0.379635453, 0, 0.275648952, 0)
            game:GetService("Players").LocalPlayer.PlayerGui.Main.AwakeningToggler.Visible = false
            for i, v in pairs(AwakeningToggler:GetChildren()) do
                if v:IsA('Frame') or v:IsA('TextLabel') then
                    v.Visible = true
                end
            end
            for i, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main.AwakeningToggler:GetChildren()) do
                if v:IsA('Frame') or v:IsA('TextLabel') then
                    v.Visible = true
                end
            end
        end
        if _G.ShowMoney then
            local Beil = game:GetService("Players").LocalPlayer.PlayerGui.Main.Beli:Clone()
            Beil.Parent = UserData
            Beil.Position = UDim2.new(0, 0, 0.933238552, 0)
            Beil.Size = UDim2.new(0.125707105, 0, 0.0618046969, 0)
            local Fragments = game:GetService("Players").LocalPlayer.PlayerGui.Main.Fragments:Clone()
            Fragments.Parent = UserData
            Fragments.Position = UDim2.new(0, 0, 0.883238552, 0)
            Fragments.Size = UDim2.new(0.125707105, 0, 0.0618046969, 0)
            Fragments.Text = 'ƒ' .. formatNumber(game:GetService("Players").LocalPlayer.Data.Fragments.Value)
            local LevelL = game:GetService("Players").LocalPlayer.PlayerGui.Main.Level:Clone()
            LevelL.Parent = UserData
            LevelL.Position = UDim2.new(0, 0, 0.833238552, 0)
            LevelL.Size = UDim2.new(0.145707105, 0, 0.0818046969, 0)
            for i,v in pairs(LevelL:GetChildren()) do
                v:Destroy()
            end            
            local NameL = Instance.new("TextLabel")
            NameL.Name = "NameL"
            NameL.Parent = UserData
            NameL.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            NameL.BackgroundTransparency = 1.000
            NameL.Position = UDim2.new(0, 0, 0.803238552, 0)
            NameL.Size = UDim2.new(0.145707105, 0, 0.0618046969, 0)
            NameL.Font = Enum.Font.SourceSansBold
            NameL.Text = tostring(game.Players.LocalPlayer.Name)
            NameL.TextSize = 46.000
            NameL.TextColor3 = Color3.fromRGB(255,255,255)
            NameL.TextXAlignment = Enum.TextXAlignment.Left
            NameL.TextStrokeTransparency = 0
        end
        local FruitFrame = Instance.new("Frame")
        FruitFrame.Name = "FruitFrame"
        FruitFrame.Parent = UserData
        FruitFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        FruitFrame.BackgroundTransparency = 1.000
        FruitFrame.BorderSizePixel = 0
        FruitFrame.Size = UDim2.new(0.0628535524, 0, 0.123609394, 0)
        local TableFruitL = {}
        if _G.ShowInventoryFruit then
            game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitInventory.Title.Visible = false
            game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitInventory.Container.Visible = false
            game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitInventory.Info.Visible = false
            game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitInventory.BackgroundTransparency = 1
            game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitInventory.Visible = true
            local PostionXInvCuurect = 8.13683219
            local ItemCountCuurect = 0
            local PostionYInvCuurect = 1.883238552
            local args = {
                [1] = "getInventoryFruits"
            }        
            local remote = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            for i, v in pairs(remote) do 
                if v['Price'] >= tonumber(_G.FruitsCost) then 
                    table.insert(TableFruitL, {
                        ['Name'] = v['Name']
                    })
                end
            end
            for i, v in pairs(TableFruitL) do
                v = game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitInventory.Container.Stored.ScrollingFrame.Frame:FindFirstChild(v['Name'])
                item = v:Clone()
                item.Parent = FruitFrame
                item.Position = UDim2.new(PostionXInvCuurect, 0, PostionYInvCuurect, 0)
                item.Size = UDim2.new(0.9, 0, 0.9, 0)
                PostionXInvCuurect = PostionXInvCuurect + 0.92
                ItemCountCuurect = ItemCountCuurect + 1
                if ItemCountCuurect >= 5 then
                    PostionYInvCuurect = PostionYInvCuurect + 0.9
                    ItemCountCuurect = 0
                    PostionXInvCuurect = 8.13683219
                end
            end
            game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Visible = false
            game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Title.Visible = true
            game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Container.Visible = true
            game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Info.Visible = true
            game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.BackgroundTransparency = 0
        end
        local FruitPermanentFrame = Instance.new("Frame")
        FruitPermanentFrame.Parent = UserData
        FruitPermanentFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        FruitPermanentFrame.BackgroundTransparency = 1.000
        FruitPermanentFrame.BorderSizePixel = 0
        FruitPermanentFrame.Size = UDim2.new(0, 100, 0, 100)
        local TableFruitP = {}
        local PostionYInvFruit = 1.97000003
        if _G.ShowInventoryFruit then 
            local args = {
                [1] = "GetFruits",
                [2] = false
            }
            remote = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            for i, v in pairs(remote) do
                if v['HasPermanent'] then 
                    table.insert(TableFruitP, {
                        ['Name'] = v['Name']
                    })
                end
            end
            game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop.BackgroundTransparency = 1 
            game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop.Left.Visible = false
            game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop.Visible = true
            repeat wait() until game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop.Left.Center.ScrollingFrame.Container:FindFirstChild("Bomb-Bomb")
            if #TableFruitP >= 4 then 
                PostionYSalceF = 0.5
            end
            for i, v in pairs(TableFruitP) do 
                Assets = game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop.Left.Center.ScrollingFrame.Container:FindFirstChild(v['Name']):Clone()
                Assets.Parent = FruitPermanentFrame
                Assets.Position = UDim2.new(11.3400002, 0, PostionYInvFruit, 0)
                Assets.Size = UDim2.new(4.57000017, 0, PostionYSalceF, 0)
                PostionYInvFruit = PostionYInvFruit + 1
            end
            game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop.Visible = false
            game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop.BackgroundTransparency = 1 
            game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop.Left.Visible = true
        end
        game:GetService("Players").LocalPlayer.PlayerGui.Main.Enabled = false
        do local ui = game.CoreGui:FindFirstChild("SC") if ui then ui:Destroy() end end
        local SC = Instance.new("ScreenGui")
        SC.Name = "SC"
        SC.Parent = game.CoreGui
        game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
        task.spawn(function()
            pcall(function()
                local PosXMas = 0.81
                local PosYMas = 0.86
                game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
                wait(.2)
                for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                    pcall(function()
                        if v.ToolTip == "Melee" then
                            EquipWeapon(v.Name)
                            local Malee = game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills:Clone()
                            Malee.Parent = SC
                            Malee.Transparency = 1
                            Malee.Name = "MeleeSC"
                            Malee.Visible = true
                            Malee.Position = UDim2.new(PosXMas, - 10, PosYMas, - 10)
                            for i1,v1 in pairs(Malee:GetChildren()) do
                                if v1.Name == v.Name then
                                    v1:Destroy()
                                end
                            end
                            PosYMas = PosYMas - 0.135
                        end
                        wait()
                        if v.ToolTip == "Blox Fruit" then
                            EquipWeapon(v.Name)
                            local BF = game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills:Clone()
                            BF.Parent = SC
                            BF.Transparency = 1
                            BF.Visible = true
                            BF.Name = "BFSC"
                            BF.Position = UDim2.new(PosXMas, - 10, PosYMas, - 10)
                            for i1,v1 in pairs(BF:GetChildren()) do
                                if v1.Name == v.Name then
                                    v1:Destroy()
                                end
                            end
                            PosYMas = PosYMas - 0.135
                        end
                        wait()
                        if v.ToolTip == "Gun" then
                            EquipWeapon(v.Name)
                            local Gun = game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills:Clone()
                            Gun.Parent = SC
                            Gun.Transparency = 1
                            Gun.Name = "GunSC"
                            Gun.Visible = true
                            Gun.Position = UDim2.new(PosXMas, - 10, PosYMas, - 10)
                            for i1,v1 in pairs(Gun:GetChildren()) do
                                if v1.Name == v.Name then
                                    v1:Destroy()
                                end
                            end
                            PosYMas = PosYMas - 0.135
                        end
                        wait()
                        if v.ToolTip == "Sword" then
                            EquipWeapon(v.Name)
                            local Sword = game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills:Clone()
                            Sword.Parent = SC
                            Sword.Transparency = 1
                            Sword.Visible = true
                            Sword.Name = "SwordSC"
                            Sword.Position = UDim2.new(PosXMas, - 10, PosYMas, - 10)
                            for i1,v1 in pairs(Sword:GetChildren()) do
                                if v1.Name == v.Name then
                                    v1:Destroy()
                                end
                            end
                            PosYMas = PosYMas - 0.135
                        end
                        wait(.1)
                        for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                            if v.ToolTip == "Melee" then
                                game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
                                wait()
                                game.CoreGui:FindFirstChild("SC"):FindFirstChild("MeleeSC").Level.Text = "Mastery "..tostring(game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)).Level.Value).." (Max. 600)"
                            end
                            wait()
                            if v.ToolTip == "Sword" then
                                game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
                                wait()
                                game.CoreGui:FindFirstChild("SC"):FindFirstChild("SwordSC").Level.Text = "Mastery "..tostring(game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)).Level.Value).." (Max. 600)"
                            end
                            wait()
                            if v.ToolTip == "Blox Fruit" then
                                game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
                                wait()
                                game.CoreGui:FindFirstChild("SC"):FindFirstChild("BFSC").Level.Text = "Mastery "..tostring(game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)).Level.Value).." (Max. 600)"
                            end
                            wait()
                            if v.ToolTip == "Gun" then
                                game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
                                wait()
                                game.CoreGui:FindFirstChild("SC"):FindFirstChild("GunSC").Level.Text = "Mastery "..tostring(game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)).Level.Value).." (Max. 600)"
                            end
                            wait()
                            game:GetService("Players").LocalPlayer.PlayerGui.Backpack.Enabled = false
                            wait()
                        end
                    end)
                end
                for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    pcall(function()
                        if v.ToolTip == "Melee" then
                            EquipWeapon(v.Name)
                            local Malee = game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills:Clone()
                            Malee.Parent = SC
                            Malee.Transparency = 1
                            Malee.Name = "MeleeSC"
                            Malee.Visible = true
                            Malee.Position = UDim2.new(PosXMas, - 10, PosYMas, - 10)
                            for i1,v1 in pairs(Malee:GetChildren()) do
                                if v1.Name == v.Name then
                                    v1:Destroy()
                                end
                            end
                            PosYMas = PosYMas - 0.135
                        end
                        wait()
                        if v.ToolTip == "Blox Fruit" then
                            EquipWeapon(v.Name)
                            local BF = game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills:Clone()
                            BF.Parent = SC
                            BF.Transparency = 1
                            BF.Visible = true
                            BF.Name = "BFSC"
                            BF.Position = UDim2.new(PosXMas, - 10, PosYMas, - 10)
                            for i1,v1 in pairs(BF:GetChildren()) do
                                if v1.Name == v.Name then
                                    v1:Destroy()
                                end
                            end
                            PosYMas = PosYMas - 0.135
                        end
                        wait()
                        if v.ToolTip == "Gun" then
                            EquipWeapon(v.Name)
                            local Gun = game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills:Clone()
                            Gun.Parent = SC
                            Gun.Transparency = 1
                            Gun.Name = "GunSC"
                            Gun.Visible = true
                            Gun.Position = UDim2.new(PosXMas, - 10, PosYMas, - 10)
                            for i1,v1 in pairs(Gun:GetChildren()) do
                                if v1.Name == v.Name then
                                    v1:Destroy()
                                end
                            end
                            PosYMas = PosYMas - 0.135
                        end
                        wait()
                        if v.ToolTip == "Sword" then
                            EquipWeapon(v.Name)
                            local Sword = game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills:Clone()
                            Sword.Parent = SC
                            Sword.Transparency = 1
                            Sword.Visible = true
                            Sword.Name = "SwordSC"
                            Sword.Position = UDim2.new(PosXMas, - 10, PosYMas, - 10)
                            for i1,v1 in pairs(Sword:GetChildren()) do
                                if v1.Name == v.Name then
                                    v1:Destroy()
                                end
                            end
                            PosYMas = PosYMas - 0.135
                        end
                        wait(.1)
                        for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                            if v.ToolTip == "Melee" then
                                game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
                                wait()
                                game.CoreGui:FindFirstChild("SC"):FindFirstChild("MeleeSC").Level.Text = "Mastery "..tostring(game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)).Level.Value).." (Max. 600)"
                            end
                        end
                        wait()
                        for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                            if v.ToolTip == "Sword" then
                                game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
                                wait()
                                game.CoreGui:FindFirstChild("SC"):FindFirstChild("SwordSC").Level.Text = "Mastery "..tostring(game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)).Level.Value).." (Max. 600)"
                            end
                        end
                        wait()
                        for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                            if v.ToolTip == "Blox Fruit" then
                                game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
                                wait()
                                game.CoreGui:FindFirstChild("SC"):FindFirstChild("BFSC").Level.Text = "Mastery "..tostring(game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)).Level.Value).." (Max. 600)"
                            end
                        end
                        wait()
                        for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                            if v.ToolTip == "Gun" then
                                game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
                                wait()
                                game.CoreGui:FindFirstChild("SC"):FindFirstChild("GunSC").Level.Text = "Mastery "..tostring(game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)).Level.Value).." (Max. 600)"
                            end
                        end
                        wait()
                        game:GetService("Players").LocalPlayer.PlayerGui.Backpack.Enabled = false
                        wait()
                        for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                            if v.ToolTip == "Melee" then
                                game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
                                wait()
                                game.CoreGui:FindFirstChild("SC"):FindFirstChild("MeleeSC").Level.Text = "Mastery "..tostring(game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)).Level.Value).." (Max. 600)"
                            end
                        end
                            wait()
                        for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                            if v.ToolTip == "Sword" then
                                game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
                                wait()
                                game.CoreGui:FindFirstChild("SC"):FindFirstChild("SwordSC").Level.Text = "Mastery "..tostring(game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)).Level.Value).." (Max. 600)"
                            end
                        end
                            wait()
                        for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                            if v.ToolTip == "Blox Fruit" then
                                game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
                                wait()
                                game.CoreGui:FindFirstChild("SC"):FindFirstChild("BFSC").Level.Text = "Mastery "..tostring(game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)).Level.Value).." (Max. 600)"
                            end
                        end
                            wait()
                        for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                            if v.ToolTip == "Gun" then
                                game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
                                wait()
                                game.CoreGui:FindFirstChild("SC"):FindFirstChild("GunSC").Level.Text = "Mastery "..tostring(game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)).Level.Value).." (Max. 600)"
                            end
                        end
                        wait()
                        game:GetService("Players").LocalPlayer.PlayerGui.Backpack.Enabled = false
                        wait()
                    end)
                end
            end)
        end)
        
        if _G.Logo ~= nil or _G.Logo ~= "" then
            local ImageTest = Instance.new('ScreenGui')
            local BG = Instance.new('Frame')
            local Image1 = Instance.new('ImageLabel')
            local UICorner = Instance.new('UICorner')
            ImageTest.Name = 'MyPictures'
            ImageTest.Parent = game.CoreGui
            ImageTest.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
            BG.Name = 'BG'
            BG.Parent = ImageTest
            BG.BackgroundTransparency = 1
            BG.Size = UDim2.new(1, 0, 1, 0)
            Image1.Name = 'Image1'
            Image1.Parent = BG
            Image1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Image1.BackgroundTransparency = 1
            Image1.BorderSizePixel = 0
            Image1.Size = UDim2.new(0.08, 0, 0.15, 0)
            Image1.Position = UDim2.new(0.02,0,0.56,0)
            UICorner.CornerRadius = UDim.new(0.0199999996, 0)
            UICorner.Parent = BG
            local function getsynassetfromurl(URL)
                local getsynasset, request = getsynasset or getcustomasset or error('invalid attempt to \'getsynassetfromurl\' (custom asset retrieval function expected)'), (syn and syn.request) or (http and http.request) or (request) or error('invalid attempt to \'getsynassetfromurl\' (http request function expected)')
                local Extension, Types, URL = '', {'.png', '.webm'}, assert(tostring(type(URL)) == 'string', 'invalid argument #1 to \'getsynassetfromurl\' (string [URL] expected, got '..tostring(type(URL))..')') and URL or nil
                local Response, TempFile = request({
                    Url = URL,
                    Method = 'GET'
                })        
                if Response.StatusCode == 200 then
                    Extension = Response.Body:sub(2, 4) == 'PNG' and '.png' or Response.Body:sub(25, 28) == 'webm' and '.webm' or nil
                end        
                if Response.StatusCode == 200 and (Extension and table.find(Types, Extension)) then
                    for i = 1, 15 do
                        local Letter, Lower = string.char(math.random(65, 90)), math.random(1, 5) == 3 and true or false
                        TempFile = (not TempFile and '' .. (Lower and Letter:lower() or Letter)) or (TempFile .. (Lower and Letter:lower() or Letter)) or nil
                    end
                    writefile(TempFile..Extension, Response.Body)
                    task.spawn(function()
                        wait(10)
                        
                        if isfile(TempFile..Extension) then
                            delfile(TempFile..Extension)
                        end
                    end)
                    return getsynasset(TempFile..Extension)
                elseif Response.StatusCode ~= 200 or not Extension then
                    warn('unexpected \'getsynassetfromurl\' Status Error: ' .. Response.StatusMessage .. ' ('..URL..')')
                elseif not (Extension) then
                    warn('unexpected \'getsynassetfromurl\' Error: (PNG or webm file expected)')
                end
            end
            local SynAssetIds = {
                Image1 = getsynassetfromurl(tostring(_G.Logo))
            }
            for K, V in next, SynAssetIds do
                pcall(function()
                    if K ~= 'Image4' then
                        BG[K].Image = V
                    else
                        BG[K].Video = V
                        BG[K].Playing = true
                    end
                end)
            end
        end
        local IgnoreFrame = game:GetService("CoreGui").UserData:FindFirstChild("Frame")
        if IgnoreFrame then
            IgnoreFrame:Remove()
        end
    end

    Misc:AddButton("Remove Kaitnu \n Pictures",function()
        game:GetService("CoreGui").UserData:Destroy()
        game:GetService("CoreGui").MyPictures:Destroy()
        game:GetService("CoreGui").SC:Destroy()
        game.Players.LocalPlayer.PlayerGui.Main.Enabled = true
        game:GetService("Players").LocalPlayer.PlayerGui.Backpack.Enabled = true
    end)

    Misc:AddSeperator("Devil Fruits")
    spawn(function()
        while task.wait() do
            pcall(function()
                if _G.AutoSniper then
                    AdvancedStock = false
                    if _G.SelectStock == "Advanced Stock" then
                        AdvancedStock = true
                    end
                    local args = {
                        [1] = "GetFruits"
                    }
                    
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    local args = {
                        [1] = "PurchaseRawFruit",
                        [2] = _G.SelectFruits,
                        [3] = AdvancedStock
                    }
                    
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                end 
            end)
        end
    end)
    spawn(function()
        pcall(function()
            while wait(.1) do
                if _G.GrabFruits then
                    for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
                        if string.find(v.Name, "Fruit") then
                            if v:IsA("Tool") then
                                v.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 50, 0)
                                wait(.2)
                                firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,v.Handle,0)
                            end
                        end
                    end
                end
            end
        end)
    end)
    task.spawn(function()
        while task.wait() do
            pcall(function()
                if _G.StoredFruits then
                    NameFruit = false
                    for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                        if v.Name:find("Fruit") then
                            NameFruit = v.Name
                        end
                    end
                    for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
                        if v.Name:find("Fruit") then
                            NameFruit = v.Name
                        end
                    end
                    if NameFruit and not (NameFruit == "Bird: Phoenix Fruit" or NameFruit == "Human: Buddha Fruit" or NameFruit == "Bird: Falcon Fruit") then
                        TrueNameStore = NameFruit:gsub(" Fruit","")
                        local args = {
                            [1] = "StoreFruit",
                            [2] = TrueNameStore.."-"..TrueNameStore,
                            [3] = game:GetService("Players").LocalPlayer.Character:FindFirstChild(NameFruit) or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(NameFruit)
                        }
                        
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    end
                    if NameFruit == "Bird: Phoenix Fruit" then
                        local args = {
                            [1] = "StoreFruit",
                            [2] = "Bird-Bird: Phoenix",
                            [3] = game:GetService("Players").LocalPlayer.Character:FindFirstChild(NameFruit) or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(NameFruit)
                        }
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    end
                    if NameFruit == "Human: Buddha Fruit" then
                        local args = {
                            [1] = "StoreFruit",
                            [2] = "Human-Human: Buddha", 
                            [3] = game:GetService("Players").LocalPlayer.Character:FindFirstChild(NameFruit) or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(NameFruit)
                        }
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    end
                    if NameFruit == "Bird: Falcon Fruit" then
                        local args = {
                            [1] = "StoreFruit",
                            [2] = "Bird-Bird: Falcon",
                            [3] = game:GetService("Players").LocalPlayer.Character:FindFirstChild(NameFruit) or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(NameFruit)
                        }
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    end
                end
            end)
        end
    end)
    task.spawn(function()
        while task.wait() do
            pcall(function()
                if _G.RandomFruits then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
                end
            end)
        end
    end)

    FruitsList = {"Bomb-Bomb","Spike-Spike","Chop-Chop","Spring-Spring","Kilo-Kilo","Spin-Spin","Bird: Falcon","Smoke-Smoke","Flame-Flame","Ice-Ice","Sand-Sand","Dark-Dark","Revive-Revive","Diamond-Diamond","Light-Light","Love-Love","Rubber-Rubber","Barrier-Barrier","Magma-Magma","Door-Door","Quake-Quake","Human-Human: Buddha","String-String","Bird-Bird: Phoenix","Rumble-Rumble","Paw-Paw","Gravity-Gravity","Dough-Dough","Shadow-Shadow","Venom-Venom","Soul-Soul","Control-Control","Dragon-Dragon","Leopard-Leopard"}
    Misc:AddDropdown("Select Devil Fruits","",false,FruitsList,function(value)
        _G.SelectFruits = value
    end)
    Misc:AddDropdown("Select Stock","",false,{"Basic Stock","Advanced Stock"},function(value)
        _G.SelectStock = value
    end)
    Misc:AddToggle("Auto Sniper Fruits",_G.AutoSniper,function(value)
        _G.AutoSniper = value
    end)
    Misc:AddToggle("Auto Grab Fruits",_G.GrabFruits,function(value)
        _G.GrabFruits = value
    end)
    Misc:AddToggle("Auto Stored Fruits",_G.StoredFruits,function(value)
        _G.StoredFruits = value
    end)
    Misc:AddToggle("Auto Random Fruits",_G.RandomFruits,function(value)
        _G.RandomFruits = value
    end)
    Misc:AddSeperator("Open Ui")
    Misc:AddButton("Open Devil Fruits Shop",function()
        local args = {
            [1] = "GetFruits"
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        game.Players.localPlayer.PlayerGui.Main.FruitShop.Visible = true
    end)
    Misc:AddButton("Open Inventory",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryWeapons")
        game.Players.localPlayer.PlayerGui.Main.Inventory.Visible = true
    end)
    Misc:AddButton("Open Inventory Fruits",function()
        local args = {
            [1] = "getInventoryFruits"
        }
        
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryFruits")
        game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitInventory.Visible = true
    end)
    Misc:AddButton("Open Title Inventory",function()
        local args = {
            [1] = "getTitles"
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        game.Players.localPlayer.PlayerGui.Main.Titles.Visible = true
    end)
    Misc:AddButton("Open Color Haki",function()
        game.Players.localPlayer.PlayerGui.Main.Colors.Visible = true
    end)
    if not oldstamina then
        oldstamina = game.Players.LocalPlayer.Character.Energy.Value
    end
    game.Players.LocalPlayer.Character.Energy.Changed:connect(function()
        if _G.InfEnergy then
            game.Players.LocalPlayer.Character.Energy.Value = oldstamina
        end 
    end)
    spawn(function()
        while task.wait() do
            pcall(function()
                if _G.InfAbilities then
                    if not game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
                        local agility = game:GetService("ReplicatedStorage").FX["Agility"]:Clone()
                        agility.Name = "Agility"
                        agility.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                    end
                end
            end)
        end
    end)

    spawn(function()
        while task.wait() do
            pcall(function()
                if _G.ObervationRange then
                    game:GetService("Players").LocalPlayer.VisionRadius.Value = math.huge
                else
                    game:GetService("Players").LocalPlayer.VisionRadius.Value = 3000
                end
            end)
        end
    end)
    spawn(function()
        while task.wait() do
            pcall(function()
                if _G.WalkOnWater then
                    if game.Players.LocalPlayer.Character.LeftFoot.CFrame.Y <= -6 then   
                        topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,10,0))
                    elseif game.Players.LocalPlayer.Character.LeftFoot.CFrame.Y <= -3 then
                        if not game:GetService("Workspace"):FindFirstChild("LOL") then
                            local Paertaiteen = Instance.new("Part")
                            Paertaiteen.Name = "LOL"
                            Paertaiteen.Parent = game.Workspace
                            Paertaiteen.Anchored = true
                            Paertaiteen.Transparency = 1
                            Paertaiteen.Size = Vector3.new(20,0.5,20)
                            Paertaiteen.Material = "Neon"
                        elseif game:GetService("Workspace"):FindFirstChild("LOL") then
                            game.Workspace["LOL"].CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Y - 3.92,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
                        end
                    end
                end
            end)
        end
    end)
    Misc:AddSeperator("Boost")
    Misc:AddToggle("Inf Energy",_G.InfEnergy,function(value)
        _G.InfEnergy = value
    end)
    Misc:AddToggle("Inf Ability",_G.InfAbilities,function(value)
        _G.InfAbilities = value
    end)
    Misc:AddToggle("Inf Obervation Range",_G.ObervationRange,function(value)
        _G.ObervationRange = value
    end)
    Misc:AddToggle("Walk On Water",_G.WalkOnWater,function(value)
        _G.WalkOnWater = value
    end)
    Misc:AddSeperator("Character")
    Misc:AddToggle("No Clip",_G.Clip,function(value)
        _G.Clip = value
    end)
    speedSET = 20
    function activatefly()
        local mouse=game.Players.LocalPlayer:GetMouse''
        localplayer=game.Players.LocalPlayer
        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
        local torso = game.Players.LocalPlayer.Character.HumanoidRootPart
        local keys={a=false,d=false,w=false,s=false}
        local e1
        local e2
        local function start()
            local pos = Instance.new("BodyPosition",torso)
            local gyro = Instance.new("BodyGyro",torso)
            pos.Name="EPIXPOS"
            pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
            pos.position = torso.Position
            gyro.maxTorque = Vector3.new(9e9, 9e9, 9e9)
            gyro.cframe = torso.CFrame
            repeat wait()
                localplayer.Character.Humanoid.PlatformStand=true
                local new=gyro.cframe - gyro.cframe.p + pos.position
                if not keys.w and not keys.s and not keys.a and not keys.d then
                    speed=1
                end
                if keys.w then
                    new = new + workspace.CurrentCamera.CoordinateFrame.lookVector * speed
                    speed=speed+speedSET
                end
                if keys.s then
                    new = new - workspace.CurrentCamera.CoordinateFrame.lookVector * speed
                    speed=speed+speedSET
                end
                if keys.d then
                    new = new * CFrame.new(speed,0,0)
                    speed=speed+speedSET
                end
                if keys.a then
                    new = new * CFrame.new(-speed,0,0)
                    speed=speed+speedSET
                end
                if speed>speedSET then
                    speed=speedSET
                end
                    pos.position=new.p
                if keys.w then
                    gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(-math.rad(speed*15),0,0)
                elseif keys.s then
                    gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(math.rad(speed*15),0,0)
                else
                    gyro.cframe = workspace.CurrentCamera.CoordinateFrame
                end
            until not _G.Fly
            if gyro then 
                gyro:Destroy() 
            end
            if pos then 
                pos:Destroy() 
            end
            flying=false
            localplayer.Character.Humanoid.PlatformStand=false
            speed=0
        end
        e1=mouse.KeyDown:connect(function(key)
            if not torso or not torso.Parent then 
                flying=false 
                e1:disconnect() 
                e2:disconnect() return 
            end
            if key=="w" then
                keys.w=true
            elseif key=="s" then
                keys.s=true
            elseif key=="a" then
                keys.a=true
            elseif key=="d" then
                keys.d=true
            end
        end)
        e2=mouse.KeyUp:connect(function(key)
            if key=="w" then
                keys.w=false
            elseif key=="s" then
                keys.s=false
            elseif key=="a" then
                keys.a=false
            elseif key=="d" then
                keys.d=false
            end
        end)
        start()
    end
    Misc:AddToggle("Fly",_G.Fly,function(value)
        _G.Fly = value
        if value then
            activatefly()
        end
    end)

local Window = Library:Window() ; 

Window:SetBeli("wokr","asd",Color3.fromRGB(255, 183, 0))

Window:SetBeli("wokr","asd",Color3.fromRGB(255, 183, 0))

Window:SetBeli("wokr","asd",Color3.fromRGB(255, 183, 0))

local Tab1 = Window:Tab("6031280882","Title") 

local Tab2 = Window:Tab("6031090998","Auto Farm") 

Tab1:AddToggle("Work",false,function()

end)

Tab1:AddButton("Work",function()

end)

Tab1:AddLine()

Tab1:AddSlider("Slider",1,100,50,function()

end)

Tab1:AddDropdown("Dropdown","Test",false,{"Test","Autofarm"},function()

end)

Tab1:AddDropdown("Multi Dropdown",{"Test","Autofarm"},true,{"Test","Autofarm"},function()

end)

Tab1:AddTextbox("TextBox","Value",function()

end)

Tab1:AddSeperator("Autofarm")

    game.StarterGui:SetCore("SendNotification", {
        Title = "Normal Hub",
        Text = "Whitelisted !",
        Icon = "rbxassetid://11995210995",
        Duration = 5,
    })
