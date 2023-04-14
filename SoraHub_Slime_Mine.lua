local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Sora Hub - Slime Mine", "Ocean")

local Players = game:GetService("Players")
local LocalPlayer = game.Players.LocalPlayer.Character
local PlayerHead = game.Players.LocalPlayer.Character.Head
-- Main
	local Main = Window:NewTab("Main")
	local MainSection = Main:NewSection("Main")
    getgenv().autopickup =  false
	MainSection:NewToggle("Auto Collect Drops","", function()
        getgenv().autopickup = not getgenv().autopickup
        while getgenv().autopickup do
            for i1 , v1 in pairs(game.Workspace.PickupParts:GetChildren()) do
                if string.match(v1.Name, tostring(LocalPlayer)) then
                    local separatedText = string.split(tostring(v1), "#")
                    game:GetService("ReplicatedStorage").Modules._Index["sleitnick_knit@1.4.7"].knit.Services.BlocksService.RF.tryPickUpBlock:InvokeServer(tostring(separatedText[4]))
                end
            end
            wait(1)
        end  
	end)

    getgenv().autosell = false
    MainSection:NewToggle("Auto Sell","", function()
        getgenv().autosell = not getgenv().autosell
        while getgenv().autosell do
            local separatedText1 = string.split(tostring(game.Players.LocalPlayer.PlayerGui.UI.Values.Blocks.Amount.Text), "/")
            if separatedText1[1] == separatedText1[2] then
                local PlayerLocation = LocalPlayer.PrimaryPart.CFrame
                LocalPlayer.PrimaryPart.CFrame = CFrame.new(574.346313, 208.553513, 1188.16187, 0.0232538953, 4.77923212e-09, -0.999729574, 1.19800845e-07, 1, 7.56711493e-09, 0.999729574, -1.19944417e-07, 0.0232538953)
                wait(0.5)
                LocalPlayer.PrimaryPart.CFrame = PlayerLocation
            end
            wait(1)
        end
    end)
    MainSection:NewSlider("Walkspeed", "SPEED!!", 500, 16, function(s)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
    end)
-- Egg
    local Egg = Window:NewTab("Eggs")
    local EggSection = Egg:NewSection("Eggs")

    getgenv().autoegg1 = false
    EggSection:NewToggle("Auto Open Earth Portal - 500 Coins" ,"" ,function()
        getgenv().autoegg1 = not getgenv().autoegg1
        while getgenv().autoegg1 do
            game:GetService("ReplicatedStorage").Modules._Index["sleitnick_knit@1.4.7"].knit.Services.PlayerService.RF.requestAction:InvokeServer("hatch","Egg1",1)
            wait(2.5)
        end
    end)

    getgenv().autoegg2 = false
    EggSection:NewToggle("Auto Open Terra Portal - 2,000 Coins" ,"" ,function()
        getgenv().autoegg2 = not getgenv().autoegg2
        while getgenv().autoegg2 do
            game:GetService("ReplicatedStorage").Modules._Index["sleitnick_knit@1.4.7"].knit.Services.PlayerService.RF.requestAction:InvokeServer("hatch","Egg2",1)
            wait(2.5)
        end
    end)

    getgenv().autoegg3 = false
    EggSection:NewToggle("Auto Open Water Portal - 5,000 Coins" ,"" ,function()
        getgenv().autoegg3 = not getgenv().autoegg3
        while getgenv().autoegg3 do
            game:GetService("ReplicatedStorage").Modules._Index["sleitnick_knit@1.4.7"].knit.Services.PlayerService.RF.requestAction:InvokeServer("hatch","Egg3",1)
            wait(2.5)
        end
    end)

    getgenv().autoegg4 = false
    EggSection:NewToggle("Auto Open Ocean Portal - 15,000 Coins" ,"" ,function()
        getgenv().autoegg4 = not getgenv().autoegg4
        while getgenv().autoegg4 do
            game:GetService("ReplicatedStorage").Modules._Index["sleitnick_knit@1.4.7"].knit.Services.PlayerService.RF.requestAction:InvokeServer("hatch","Egg4",1)
            wait(2.5)
        end
    end)

    getgenv().autoegg5 = false
    EggSection:NewToggle("Auto Open Snow Portal - 20,000 Coins" ,"" ,function()
        getgenv().autoegg5 = not getgenv().autoegg5
        while getgenv().autoegg5 do
            game:GetService("ReplicatedStorage").Modules._Index["sleitnick_knit@1.4.7"].knit.Services.PlayerService.RF.requestAction:InvokeServer("hatch","Egg5",1)
            wait(2.5)
        end
    end)

    getgenv().autoegg6 = false
    EggSection:NewToggle("Auto Open Ice Portal - 45,000 Coins" ,"" ,function()
        getgenv().autoegg6 = not getgenv().autoegg6
        while getgenv().autoegg6 do
            game:GetService("ReplicatedStorage").Modules._Index["sleitnick_knit@1.4.7"].knit.Services.PlayerService.RF.requestAction:InvokeServer("hatch","Egg6",1)
            wait(2.5)
        end
    end)

    getgenv().autoegg7 = false
    EggSection:NewToggle("Auto Open Magma Portal - 60,000 Coins" ,"" ,function()
        getgenv().autoegg7 = not getgenv().autoegg7
        while getgenv().autoegg7 do
            game:GetService("ReplicatedStorage").Modules._Index["sleitnick_knit@1.4.7"].knit.Services.PlayerService.RF.requestAction:InvokeServer("hatch","Egg7",1)
            wait(2.5)
        end
    end)

    getgenv().autoegg8 = false
    EggSection:NewToggle("Auto Open Firy Portal - 100,000 Coins" ,"" ,function()
        getgenv().autoegg8 = not getgenv().autoegg8
        while getgenv().autoegg8 do
            game:GetService("ReplicatedStorage").Modules._Index["sleitnick_knit@1.4.7"].knit.Services.PlayerService.RF.requestAction:InvokeServer("hatch","Egg8",1)
            wait(2.5)
        end
    end)

    getgenv().autoegg9 = false
    EggSection:NewToggle("Auto Open Forest Portal - 125,000 Coins" ,"" ,function()
        getgenv().autoegg9 = not getgenv().autoegg9
        while getgenv().autoegg9 do
            game:GetService("ReplicatedStorage").Modules._Index["sleitnick_knit@1.4.7"].knit.Services.PlayerService.RF.requestAction:InvokeServer("hatch","Egg9",1)
            wait(2.5)
        end
    end)

    getgenv().autoegg10 = false
    EggSection:NewToggle("Auto Open Mystical Portal - 175,000 Coins" ,"" ,function()
        getgenv().autoegg10 = not getgenv().autoegg10
        while getgenv().autoegg10 do
            game:GetService("ReplicatedStorage").Modules._Index["sleitnick_knit@1.4.7"].knit.Services.PlayerService.RF.requestAction:InvokeServer("hatch","Egg10",1)
            wait(2.5)
        end
    end)

-- Tps
    local Teleport = Window:NewTab("Teleports")
    local TeleportSection = Teleport:NewSection("Teleports")

	TeleportSection:NewButton("Teleport to Awakening Pod","",function()
        LocalPlayer.PrimaryPart.CFrame = CFrame.new(388.514526, 208.553635, 1129.1322, -0.278089911, 6.87364761e-08, 0.960555077, 3.11780397e-08, 1, -6.25327772e-08, -0.960555077, 1.25584911e-08, -0.278089911)
	end)

	TeleportSection:NewButton("Teleport to Ascension Pod","",function()
        LocalPlayer.PrimaryPart.CFrame = CFrame.new(383.620483, 212.051193, 758.6203, -0.779927135, 1.24953319e-08, 0.625870347, 8.49460768e-09, 1, -9.37918987e-09, -0.625870347, -1.99856154e-09, -0.779927135)
	end)

	TeleportSection:NewButton("Teleport to Beacon Pod","",function()
        LocalPlayer.PrimaryPart.CFrame = CFrame.new(495.77063, 214.380112, 288.459167, 0.996602416, 1.35132474e-08, 0.0823628232, -9.58915347e-09, 1, -4.80395599e-08, -0.0823628232, 4.70865515e-08, 0.996602416)
	end)

	TeleportSection:NewButton("Teleport to Player Upgrades Pod","",function()
        LocalPlayer.PrimaryPart.CFrame = CFrame.new(399.70578, 216.093277, -49.2313499, 0.208066463, -9.64235269e-08, 0.978114665, -1.67220904e-08, 1, 1.02138152e-07, -0.978114665, -3.76076486e-08, 0.208066463)
	end)

-- Misc
	local Misc = Window:NewTab("Misc")
	local MiscSection = Misc:NewSection("Misc")

	MiscSection:NewButton("Enable Anti Afk ", "", function()
		local vu = game:GetService("VirtualUser")
		game:GetService("Players").LocalPlayer.Idled:connect(function()
			vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
			wait(1)
			vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		end)
    end)

    MiscSection:NewButton("Dex by WeAreDevs" , "" , function()
        loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Dex%20Explorer.txt"))() --  Dex By wearedevs.net
    end)
 
    MiscSection:NewButton("Simple Spy" , "" , function()
        loadstring(game:HttpGet("https://pastebin.com/raw/9vCepJBL"))() -- Remote Spy by veeb
    end)

	MiscSection:NewKeybind("Right Shift to Hide/Open GUI", "", Enum.KeyCode.RightShift, function()
		Library:ToggleUI()
	end)