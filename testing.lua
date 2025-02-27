local validKeys = {
    "dino123",
    "Key2",
    "Key3",
}

local function isValidKey(inputKey)
    for _, key in ipairs(validKeys) do
        if inputKey == key then
            return true
        end
    end
    return false
end

if _G.key then
    if isValidKey(_G.key) then
        print("Key hợp lệ! Đang tải script...")
    else
        print("Key không hợp lệ! Kết thúc chương trình.")
    end
else
    print("Không có key được nhập. Chương trình không thực hiện gì.")
end
