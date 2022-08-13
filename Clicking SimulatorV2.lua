local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Rebirth Champions X", "Ocean")

--AutoFarm
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("AutoFarm")


MainSection:NewToggle("AutoClick", "Click go brrr", function(state)
    if state then
        getgenv().Clicker = true
        function Click()
            spawn(function ()
                while (Clicker) do
                    game:GetService("ReplicatedStorage").Events.Click3:FireServer()
                    task.wait()
                end
            end)
        end
        Click()
    else
        getgenv().Clicker = false
    end
end)

MainSection:NewToggle("AutoRebirth", "Rebirth go brrr", function(state)
    if state then
        getgenv().Rebirth = true
        function AutoRebirth(RebirthAmount)
            spawn(function ()
                while (Rebirth) do
                    local args = {[1] = RebirthAmount}
                    game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(unpack(args))
                    task.wait()
                end
            end)
        end
        AutoRebirth(52)
    else
        getgenv().Rebirth = false
    end
end)

MainSection:NewToggle("WorldBoost", "Extra Multiplier", function(state)
    if state then
        getgenv().Boost = true
        function BoostArea(Area)
            spawn(function ()
                while (Boost) do
                    local args = {[1] = Area}
                    game:GetService("ReplicatedStorage").Events.WorldBoost:FireServer(unpack(args))
                    task.wait()
                end
            end)
        end
        BoostArea("Tutel Oasis")
    else
        getgenv().Boost = false
    end
end)

MainSection:NewToggle("AutoCraft", "AutoCrafts Pets", function(state)
    if state then
        getgenv().AutoEvolve = true
        function Craft()
            spawn(function ()
                while (AutoEvolve) do
                    local args = {[1] = "CraftAll",[2] = {}}
                    game:GetService("ReplicatedStorage").Functions.Request:InvokeServer(unpack(args))
                    task.wait(1)
                end
            end)
        end
        Craft()        
    else
        getgenv().AutoEvolve = false
    end
end)
