local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Rebirth Champions X", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

--Values
getgenv().Clicker = true
getgenv().Rebirth = true
getgenv().Boost = true
getgenv().AutoEvolve = true

--Functions
function Click()
	while (Clicker) do
		game:GetService("ReplicatedStorage").Events.Click3:FireServer()
        task.wait()
	end
end

function AutoRebirth(RebirthAmount)
    while (Rebirth) do
		local args = {[1] = RebirthAmount}
		game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(unpack(args))
		task.wait()
    end
end

function BoostArea(Area)
    while (Boost) do
		local args = {[1] = Area}
		game:GetService("ReplicatedStorage").Events.WorldBoost:FireServer(unpack(args))
		task.wait()
    end
end

function Craft()
     while (AutoEvolve) do
        local args = {[1] = "CraftAll",[2] = {}}
        game:GetService("ReplicatedStorage").Functions.Request:InvokeServer(unpack(args))
        task.wait(1)
    end
end

local AutoFarmTab = Window:MakeTab({
	Name = "AutoFarm",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

AutoFarmTab:AddToggle({
	Name = "Auto Click",
	Default = false,
	Callback = function(Value)
		getgenv().Clicker = Value
		Click()
	end    
})

AutoFarmTab:AddToggle({
	Name = "Auto Rebirth",
	Default = false,
	Callback = function(Value)
		getgenv().Rebirth = Value
		AutoRebirth(RebirthAmount)
	end    
})

AutoFarmTab:AddSlider({
	Name = "RebirthAmount",
	Min = 1,
	Max = 60,
	Default = 5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "RebirthAmount",
	Callback = function(Value)
		RebirthAmount = Value
	end    
})




AutoFarmTab:AddToggle({
	Name = "Boost",
	Default = false,
	Callback = function(Value)
		getgenv().Boost = Value
		BoostArea("Tutel Oasis")
	end    
})

AutoFarmTab:AddToggle({
	Name = "Auto Craft",
	Default = false,
	Callback = function(Value)
		getgenv().AutoEvolve = Value
		Craft()
	end    
})

OrionLib:Init()
