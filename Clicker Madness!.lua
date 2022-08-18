local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Clicking Madness", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
--Important thing


--Values

--Functions

local FarmTab = Window:MakeTab({
	Name = "AutoFarm",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

FarmTab:AddToggle({
	Name = "AutoTap",
	Default = false,
	Callback = function(Value)
		print(Value)
	end    
})
