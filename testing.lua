local KeyGuardLibrary = loadstring(game:HttpGet("https://cdn.keyguardian.org/library/v1.0.0.lua"))()
local trueData = "b0e9f3fc00124a82a138faf63826ea0e"
local falseData = "d8223dd1c971401ca70c8da9aa38a9cf"

KeyGuardLibrary.Set({
  publicToken = "8e0aab273a5d47fb90eaf746ffee85e6",
  privateToken = "7bdf4ebc52424e0492d0a48dd9095439",
  trueData = trueData,
  falseData = falseData,
})

local key = _G.key

local getkey = KeyGuardLibrary.getLink()
print(getkey)

local response = KeyGuardLibrary.validateDefaultKey(key)
print(response)

if response == trueData then
loadstring(game:HttpGet"https://raw.githubusercontent.com/tansitink08/premium/refs/heads/main/premium.lua")()
else
  local player = game.Players.LocalPlayer

  local notifi = "[Invalid key]"
  local message = string.format("\nPremium Announcement\n %s", notifi)

  player:Kick(message)
end
