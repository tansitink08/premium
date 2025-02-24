
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
frame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)  -- Màu nền chính của GUI

-- Tiêu đề mới "Dino Hub Key System"
titleLabel.Parent = frame
titleLabel.Size = UDim2.new(0, 200, 0, 40)  -- Điều chỉnh kích thước cho phù hợp với tiêu đề dài hơn
titleLabel.Position = UDim2.new(0, 10, 0, 10)  -- Đặt ở góc trái của frame
titleLabel.Text = "Dino Hub Key System"  -- Thay đổi tiêu đề thành "Dino Hub Key System"
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)  -- Màu chữ trắng
titleLabel.TextSize = 20  -- Kích thước chữ
titleLabel.Font = Enum.Font.SourceSansBold  -- Font chữ đậm

textbox.Parent = frame
textbox.Size = UDim2.new(0, 300, 0, 50)
textbox.Position = UDim2.new(0.5, -150, 0.2, 0)
textbox.PlaceholderText = "Nhập Key"
textbox.TextColor3 = Color3.fromRGB(255, 255, 255)  -- Màu chữ trắng
textbox.BackgroundColor3 = Color3.fromRGB(60, 60, 60)  -- Màu nền textbox giống GUI chính
textbox.BorderSizePixel = 2  -- Viền cho textbox
textbox.BorderColor3 = Color3.fromRGB(0, 255, 0)  -- Màu viền xanh lá

buttonConfirm.Parent = frame
buttonConfirm.Size = UDim2.new(0, 100, 0, 50)
buttonConfirm.Position = UDim2.new(0.3, -50, 0.6, 0)
buttonConfirm.Text = "Xác Nhận"
buttonConfirm.BackgroundColor3 = Color3.fromRGB(255, 0, 0)  -- Màu nền đỏ
buttonConfirm.TextColor3 = Color3.fromRGB(255, 255, 255)  -- Màu chữ trắng
buttonConfirm.Font = Enum.Font.SourceSansBold  -- Font chữ đậm
buttonConfirm.TextSize = 20  -- Kích thước chữ

buttonGetKey.Parent = frame
buttonGetKey.Size = UDim2.new(0, 100, 0, 50)
buttonGetKey.Position = UDim2.new(0.7, -50, 0.6, 0)
buttonGetKey.Text = "Get Key"
buttonGetKey.BackgroundColor3 = Color3.fromRGB(0, 255, 0)  -- Màu nền xanh lá
buttonGetKey.TextColor3 = Color3.fromRGB(255, 255, 255)  -- Màu chữ trắng
buttonGetKey.Font = Enum.Font.SourceSansBold  -- Font chữ đậm
buttonGetKey.TextSize = 20  -- Kích thước chữ

-- Phần báo cáo trạng thái key (Thông báo lỗi)
errorMessage.Parent = frame
errorMessage.Size = UDim2.new(0, 300, 0, 30)
errorMessage.Position = UDim2.new(0.5, -150, 0.4, 0)  -- Di chuyển về phía giữa khung nhập key
errorMessage.TextColor3 = Color3.fromRGB(255, 0, 0)  -- Màu đỏ cho lỗi
errorMessage.Text = ""
errorMessage.TextScaled = true
errorMessage.TextSize = 16  -- Giảm kích thước chữ để phù hợp với mắt nhìn

-- Phần hiển thị đường link
linkLabel.Parent = frame
linkLabel.Size = UDim2.new(0, 300, 0, 50)
linkLabel.Position = UDim2.new(0.5, -150, 0.85, 0)
linkLabel.TextColor3 = Color3.fromRGB(0, 255, 0)  -- Màu xanh cho đường link
linkLabel.Text = ""
linkLabel.TextScaled = true

-- Kiểm tra key và hiển thị thông báo
buttonConfirm.MouseButton1Click:Connect(function()
    if textbox.Text == key then
        -- Key đúng, tiếp tục hành động
        print("Key hợp lệ! Tiến hành tiếp!")
        errorMessage.Text = "Key hợp lệ!"  -- Hiển thị thông báo hợp lệ

        -- Tự động xóa thông báo hợp lệ và ẩn GUI sau 1 giây
        wait(1)  -- Đợi 1 giây
        screenGui:Destroy()  -- Đóng GUI

        -- Xóa thông báo hợp lệ
        errorMessage.Text = ""
    else
        -- Key sai
        print("Key không hợp lệ!")
        textbox.Text = ""  -- Xóa textbox
        errorMessage.Text = "Key không hợp lệ!"  -- Hiển thị thông báo lỗi
        
        -- Tự động xóa thông báo sau 1 giây
        wait(1)  -- Đợi 1 giây
        errorMessage.Text = ""  -- Xóa thông báo lỗi
    end
end)

-- Hiển thị đường link khi nhấn "Get Key"
buttonGetKey.MouseButton1Click:Connect(function()
    local link = "DinoTop1"  -- Đường link bạn muốn chia sẻ
    linkLabel.Text = "Key là: " .. link  -- Hiển thị link lên GUI

    -- Tự động xóa đường link sau 1 giây
    wait(1)  -- Đợi 1 giây
    linkLabel.Text = ""  -- Xóa đường link
end)

-- Hiệu ứng chuyển màu mượt mà cho tiêu đề
local colors = {
    Color3.fromRGB(255, 0, 0),   -- Đỏ
    Color3.fromRGB(255, 165, 0), -- Cam
    Color3.fromRGB(255, 255, 0), -- Vàng
    Color3.fromRGB(0, 255, 0),   -- Xanh lá
    Color3.fromRGB(0, 0, 255),   -- Xanh dương
    Color3.fromRGB(75, 0, 130),  -- Tím
    Color3.fromRGB(238, 130, 238) -- Hồng
}

-- Hiệu ứng chuyển màu mượt mà cho tiêu đề
local function changeColorSmoothly()
    while true do
        for i = 1, #colors do
            -- Chuyển màu từ màu hiện tại sang màu mới
            for t = 0, 1, 0.05 do
                titleLabel.TextColor3 = colors[i]:Lerp(colors[(i % #colors) + 1], t)
                wait(0.05)  -- Đợi để hiệu ứng chuyển màu mượt mà
            end
        end
    end
end

-- Bắt đầu hiệu ứng chuyển màu
changeColorSmoothly()
