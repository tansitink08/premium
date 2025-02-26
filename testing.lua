local key = "DinoTop1"  -- Key hợp lệ 
local player = game.Players.LocalPlayer
local screenGui = Instance.new("ScreenGui")
local frame = Instance.new("Frame")
local textbox = Instance.new("TextBox")
local buttonConfirm = Instance.new("TextButton")
local buttonGetKey = Instance.new("TextButton")
local errorMessage = Instance.new("TextLabel")  -- Thông báo lỗi
local linkLabel = Instance.new("TextLabel")  -- Hiển thị đường link
local titleLabel = Instance.new("TextLabel")  -- Tiêu đề trong GUI key system

-- Thêm GUI vào PlayerGui
screenGui.Parent = player:WaitForChild("PlayerGui")
frame.Parent = screenGui
frame.Size = UDim2.new(0, 400, 0, 350)
frame.Position = UDim2.new(0.5, -200, 0.5, -175)
frame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)

-- Tiêu đề GUI
titleLabel.Parent = frame
titleLabel.Size = UDim2.new(0, 200, 0, 40)
titleLabel.Position = UDim2.new(0, 10, 0, 10)
titleLabel.Text = "Dino Hub Key System"
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
titleLabel.TextSize = 20
titleLabel.Font = Enum.Font.SourceSansBold

textbox.Parent = frame
textbox.Size = UDim2.new(0, 300, 0, 50)
textbox.Position = UDim2.new(0.5, -150, 0.2, 0)
textbox.PlaceholderText = "Nhập Key"
textbox.TextColor3 = Color3.fromRGB(255, 255, 255)
textbox.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
textbox.BorderSizePixel = 2
textbox.BorderColor3 = Color3.fromRGB(0, 255, 0)

buttonConfirm.Parent = frame
buttonConfirm.Size = UDim2.new(0, 100, 0, 50)
buttonConfirm.Position = UDim2.new(0.3, -50, 0.6, 0)
buttonConfirm.Text = "Xác Nhận"
buttonConfirm.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
buttonConfirm.TextColor3 = Color3.fromRGB(255, 255, 255)
buttonConfirm.Font = Enum.Font.SourceSansBold
buttonConfirm.TextSize = 20

buttonGetKey.Parent = frame
buttonGetKey.Size = UDim2.new(0, 100, 0, 50)
buttonGetKey.Position = UDim2.new(0.7, -50, 0.6, 0)
buttonGetKey.Text = "Get Key"
buttonGetKey.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
buttonGetKey.TextColor3 = Color3.fromRGB(255, 255, 255)
buttonGetKey.Font = Enum.Font.SourceSansBold
buttonGetKey.TextSize = 20

errorMessage.Parent = frame
errorMessage.Size = UDim2.new(0, 300, 0, 30)
errorMessage.Position = UDim2.new(0.5, -150, 0.4, 0)
errorMessage.TextColor3 = Color3.fromRGB(255, 0, 0)
errorMessage.Text = ""
errorMessage.TextScaled = true
errorMessage.TextSize = 16

linkLabel.Parent = frame
linkLabel.Size = UDim2.new(0, 300, 0, 50)
linkLabel.Position = UDim2.new(0.5, -150, 0.85, 0)
linkLabel.TextColor3 = Color3.fromRGB(0, 255, 0)
linkLabel.Text = ""
linkLabel.TextScaled = true

buttonConfirm.MouseButton1Click:Connect(function()
    if textbox.Text == key then
        print("Key hợp lệ! Tiến hành tải script!")
        errorMessage.Text = "Key hợp lệ! Đang tải script..."
        errorMessage.TextColor3 = Color3.fromRGB(0, 255, 0)
        
        local success, err = pcall(function()
            local v14 = loadstring(game:HttpGet("https://raw.githubusercontent.com/obfalchx/testfluent/refs/heads/main/FluentTrau"))()
        end)
        
        if success then
            print("Script tải thành công!")
            wait(1)
            screenGui.Enabled = false
        else
            print("Lỗi tải script: " .. err)
            errorMessage.Text = "Lỗi tải script!"
            errorMessage.TextColor3 = Color3.fromRGB(255, 0, 0)
            wait(2)
            errorMessage.Text = ""
        end
    else
        print("Key không hợp lệ!")
        textbox.Text = ""
        errorMessage.Text = "Key không hợp lệ!"
        wait(2)
        errorMessage.Text = ""
    end
end)

buttonGetKey.MouseButton1Click:Connect(function()
    linkLabel.Text = "Key là: " .. key
    wait(1)
    linkLabel.Text = ""
end)
