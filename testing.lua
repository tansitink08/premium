local player = game.Players.LocalPlayer

-- Danh sách key Premium & Freemium
local premiumKeys = { "dino123", "barongo911_Dino", "premiumKey2" }
local freemiumKeys = { "freedino_911", "freemiumKey2", "freemiumKey3" }

-- Hàm kiểm tra key
local function isValidKey(keyList, inputKey)
    for _, key in ipairs(keyList) do
        if inputKey == key then
            return true
        end
    end
    return false
end

-- Nếu _G.key đã có sẵn, kiểm tra ngay
if _G.key then
    if isValidKey(premiumKeys, _G.key) then
        print("Key Premium hợp lệ! Đang tải Premium script...")
        loadstring(game:HttpGet("https://raw.githubusercontent.com/tansitink08/premium/refs/heads/main/premium.lua"))()
        return
    else
        player:Kick("[Invalid key]") -- Kick nếu key Premium sai
    end
end

-- Hiển thị GUI nhập key
print("Hiển thị GUI Key System...")

local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(0, 400, 0, 300)
Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Frame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
Frame.BorderSizePixel = 0
Frame.Active = true
Frame.Draggable = true
Frame.Parent = ScreenGui

local FrameCorner = Instance.new("UICorner")
FrameCorner.CornerRadius = UDim.new(0, 10)
FrameCorner.Parent = Frame

local Close = Instance.new("TextButton")
Close.Size = UDim2.new(0, 40, 0, 40)
Close.Position = UDim2.new(1, -40, 0, 0)
Close.BackgroundTransparency = 1
Close.Text = "×"
Close.TextScaled = true
Close.TextColor3 = Color3.fromRGB(150, 150, 150)
Close.Parent = Frame
Close.MouseButton1Click:Connect(function()
    ScreenGui.Enabled = false
end)

local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, 0, 0, 30)
Title.Position = UDim2.new(0, 0, 0.05, 0)
Title.Text = "Dino Key System🔑"
Title.TextSize = 18
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1
Title.Parent = Frame

local TextBox = Instance.new("TextBox")
TextBox.Size = UDim2.new(0.8, 0, 0.2, 0)
TextBox.Position = UDim2.new(0.1, 0, 0.4, 0)
TextBox.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
TextBox.PlaceholderText = "Enter Key..."
TextBox.Text = ""
TextBox.TextSize = 18
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.Parent = Frame

local TextBoxCorner = Instance.new("UICorner")
TextBoxCorner.CornerRadius = UDim.new(0, 5)
TextBoxCorner.Parent = TextBox

local GetKey = Instance.new("TextButton")
GetKey.Size = UDim2.new(0.35, 0, 0.15, 0)
GetKey.Position = UDim2.new(0.1, 0, 0.7, 0)
GetKey.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
GetKey.Text = "Get Key"
GetKey.TextSize = 18
GetKey.TextColor3 = Color3.fromRGB(150, 150, 150)
GetKey.Parent = Frame

local GetKeyCorner = Instance.new("UICorner")
GetKeyCorner.CornerRadius = UDim.new(0, 5)
GetKeyCorner.Parent = GetKey

local CheckKey = Instance.new("TextButton")
CheckKey.Size = UDim2.new(0.35, 0, 0.15, 0)
CheckKey.Position = UDim2.new(0.55, 0, 0.7, 0)
CheckKey.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
CheckKey.Text = "Check Key"
CheckKey.TextSize = 18
CheckKey.TextColor3 = Color3.fromRGB(150, 150, 150)
CheckKey.Parent = Frame

local CheckKeyCorner = Instance.new("UICorner")
CheckKeyCorner.CornerRadius = UDim.new(0, 5)
CheckKeyCorner.Parent = CheckKey

-- Sao chép link key vào clipboard
GetKey.MouseButton1Click:Connect(function()
    setclipboard("https://loot-link.com/s?Kb3uIEvU")
    GetKey.Text = "Copied!"
    wait(1)
    GetKey.Text = "Get Key"
end)

-- Kiểm tra key nhập vào
CheckKey.MouseButton1Click:Connect(function()
    local enteredKey = TextBox.Text
    if isValidKey(freemiumKeys, enteredKey) then
        _G.key = enteredKey -- Lưu key vào _G
        TextBox.Text, TextBox.PlaceholderText = "", "Correct Freemium Key!"
        ScreenGui.Enabled = false
        loadstring(game:HttpGet("https://raw.githubusercontent.com/tansitink08/premium/refs/heads/main/freemium.lua"))()
    else
        TextBox.Text, TextBox.PlaceholderText = "", "Invalid key. Try again."
    end
end)
