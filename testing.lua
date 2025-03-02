local KeyGuardLibrary = loadstring(game:HttpGet("https://cdn.keyguardian.org/library/v1.0.0.lua"))()
local trueData = "62ba63ae61494997a47c0434db92fcd8"
local falseData = "b235665eca64496a8bf1b3da41d2e3ba"

KeyGuardLibrary.Set({
  publicToken = "8e0aab273a5d47fb90eaf746ffee85e6",
  privateToken = "7bdf4ebc52424e0492d0a48dd9095439",
  trueData = trueData,
  falseData = falseData,
})

local key = "5a7d4ee665fa492ba8fa2f1a17ceb55a"

local getkey = KeyGuardLibrary.getLink()
print(getkey)

local response = KeyGuardLibrary.validateDefaultKey(key)
print(response)

if response == trueData then
  print("Key is valid")

else
  print("Key is invalid")
end

--[[
  KeyGuardLibrary.validateDefaultKey(key) - Validate key
  KeyGuardLibrary.validatePremiumKey(key) - Validate premium key
  KeyGuardLibrary.getService() - Get service
  KeyGuardLibrary.getLink() - Get link
]]
