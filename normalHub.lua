-- Hook GetClientId để thay đổi HWID
local old_GetService = game.GetService
game.GetService = function(self, service)
    if service == "RbxAnalyticsService" then
        return {
            GetClientId = function()
                return "6f8a2b31-9c2d-4b0f-85c6-1e6a68b3e7d1" -- HWID giả mạo
            end
        }
    end
    return old_GetService(self, service)
end

-- Hook string.find để ngăn kiểm tra HWID
local old_find = string.find
string.find = function(str, pattern, ...)
    if type(pattern) == "string" and pattern:lower():find("hwid") then
        return nil -- Ngăn không cho tìm thấy HWID cấm
    end
    return old_find(str, pattern, ...)
end

-- Hook string.match để bypass kiểm tra HWID
local old_match = string.match
string.match = function(str, pattern, ...)
    if type(pattern) == "string" and pattern:lower():find("hwid") then
        return nil -- Trả về nil để bypass kiểm tra
    end
    return old_match(str, pattern, ...)
end

-- Hook phép so sánh để luôn vượt qua kiểm tra HWID
local old_eq = getmetatable("").__eq
getmetatable("").__eq = function(a, b)
    if tostring(a):lower():find("hwid") or tostring(b):lower():find("hwid") then
        return true -- Luôn trả về true để bypass điều kiện
    end
    return old_eq(a, b)
end

print("✅ HWID Whitelist Bypass Activated!")

-- 📌 Chạy script paid sau khi bypass whitelist thành công
local success, err = pcall(function()
    getgenv().Key = "MARU-9DEQA-LEZP-EAD6-3WYO5-BH5LE"
    getgenv().id = "1041709181557817377"
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xshiba/MaruBitkub/main/Mobile.lua"))()
end)

if success then
    print("✅ Script Paid Loaded Successfully!")
else
    warn("❌ Failed to Load Script Paid: " .. tostring(err))
end
