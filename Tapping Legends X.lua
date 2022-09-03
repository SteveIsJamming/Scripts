local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "[🛕TEMPLE!] ⚡ Tapping Legends X", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
--variables
getgenv().AutoTap = false
getgenv().AutoRebirth = false
getgenv().UpgradeTaps = false
getgenv().UpgradeRebirths = false
getgenv().UpgradePetStorage = false
getgenv().UpgradeCriticalChance = false
getgenv().UpgradeAutoClickerMulti = false
getgenv().UpgradeMaxTapCombo = false
getgenv().UpgradeBetterPetStats = false
--Functions
function Tap()
    while (AutoTap) do
        game:GetService("ReplicatedStorage").Remotes.Tap:FireServer()
        task.wait()
    end
end

function Rebirth(RebirthAmount)
    while (AutoRebirth) do
        local args = {[1] = RebirthAmount}
        game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))     
        task.wait()   
    end
end

function UpTaps()
    while (UpgradeTaps) do
        local args = {[1] = "Ruby",[2] = "TapMultiplier"}
        game:GetService("ReplicatedStorage").Remotes.Upgrade:InvokeServer(unpack(args))
        task.wait()
    end
end

function UpRebirth()
    while (UpgradeRebirths) do
        local args = {[1] = "Ruby",[2] = "RebirthsUpgrade"}
        game:GetService("ReplicatedStorage").Remotes.Upgrade:InvokeServer(unpack(args))  
        task.wait()      
    end
end

function UpPetStorage()
    while (UpgradePetStorage) do
        local args = {[1] = "Ruby",[2] = "PetStorage"}
        game:GetService("ReplicatedStorage").Remotes.Upgrade:InvokeServer(unpack(args))   
        task.wait()
    end
end

function UpCC()
    while UpgradeCriticalChance do
        local args = {[1] = "Ruby",[2] = "CriticalChances"}
        game:GetService("ReplicatedStorage").Remotes.Upgrade:InvokeServer(unpack(args))
        task.wait()
    end
end

function UpACM()
    while (UpgradeAutoClickerMulti) do
        local args = {[1] = "Ruby",[2] = "AutoClickerMultiplier"}
        game:GetService("ReplicatedStorage").Remotes.Upgrade:InvokeServer(unpack(args))
        task.wait()
    end
end

function UpMTC()
    while (UpgradeMaxTapCombo) do
        local args = {[1] = "Ruby",[2] = "MaxCombo"}
        game:GetService("ReplicatedStorage").Remotes.Upgrade:InvokeServer(unpack(args))
        task.wait()
    end
end

function BPS()
    while (UpgradeBetterPetStats) do
        local args = {[1] = "Ruby",[2] = "BetterPetStats" }
        game:GetService("ReplicatedStorage").Remotes.Upgrade:InvokeServer(unpack(args))
        task.wait()
    end
end
--Gui

local FarmTab = Window:MakeTab({
	Name = "AutoFarm",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

FarmTab:AddToggle({
	Name = "AutoTap",
	Default = false,
	Callback = function(Value)
		getgenv().AutoTap = Value
        Tap()
	end    
})

FarmTab:AddSlider({
	Name = "RebirthAmount",
	Min = 1,
	Max = 47,
	Default = 5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "RebirthAmount",
	Callback = function(Value)
		RebirthAmount = Value
	end    
})

FarmTab:AddToggle({
	Name = "AutoRebirth",
	Default = false,
	Callback = function(Value)
		getgenv().AutoRebirth = Value
        Rebirth(RebirthAmount)
	end    
})

local UpgradeTab = Window:MakeTab({
	Name = "Upgrades",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

UpgradeTab:AddToggle({
	Name = "Tap Multiplier",
	Default = false,
	Callback = function(Value)
		getgenv().UpgradeTaps = Value
        UpTaps()
	end    
})

UpgradeTab:AddToggle({
	Name = "More Rebirth",
	Default = false,
	Callback = function(Value)
		getgenv().UpgradeRebirths = Value
        UpRebirth()
	end    
})

UpgradeTab:AddToggle({
	Name = "Pet Storage",
	Default = false,
	Callback = function(Value)
		getgenv().UpgradePetStorage = Value
        UpPetStorage()
	end    
})

UpgradeTab:AddToggle({
	Name = "Critical Chances",
	Default = false,
	Callback = function(Value)
		getgenv().UpgradeCriticalChance = Value
        UpCC()
	end    
})

UpgradeTab:AddToggle({
	Name = "AutoClicker Multi",
	Default = false,
	Callback = function(Value)
		getgenv().AutoClickerMultiplier = Value
        UpACM()
	end    
})

UpgradeTab:AddToggle({
	Name = "Max Tap Combo",
	Default = false,
	Callback = function(Value)
		getgenv().UpgradeMaxTapCombo = Value
        UpMTC()
	end    
})

UpgradeTab:AddToggle({
	Name = "Better Pet Stats",
	Default = false,
	Callback = function(Value)
		getgenv().UpgradeBetterPetStats = Value
        UpBPS()
	end    
})