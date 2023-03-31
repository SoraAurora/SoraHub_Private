local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Sora Hub - Weapon Crafting Simulator", "Ocean")

local Players = game:GetService("Players")
local LocalPlayer = game.Players.LocalPlayer.Character
local mobs = game.Workspace.SlashablesRender
getgenv().MainLoop1 = false
getgenv().EggLoop1 = false
getgenv().EggLoop2 = false
getgenv().EggLoop3 = false
getgenv().EggLoop4 = false
getgenv().EggLoop5 = false
-- main
	local Main = Window:NewTab("Main")
	local MainSection = Main:NewSection("AutoFarm Buggy")
	MainSection:NewDropdown("Select Mob", "Select Mob", {"Slime", "Goblin", "Shroom" , "MegaShroom" , "Spooky Ghost" , "Mimic" , "Forest Guardian", "Ruined Golem" , "Captain's Skeleton" , "Jr. Kraken", "Shiny Crab" , "Captain Shark" , "Ice Minion", "Frozen Guy" , "Polar Bear" , "Evil Snowman", "Weak Lava Demon" , "Lava Golem" , "Fire Salamander" , "Zeeker"}, function(currentOption)
    	mob = currentOption
	end)
	
	MainSection:NewToggle("AutoFarm - Buggy", "", function()
		getgenv().MainLoop1 = not getgenv().MainLoop1
		while getgenv().MainLoop1 do
			for i,v in ipairs(mobs:GetChildren()) do
				if tostring(v) == mob then
					LocalPlayer.HumanoidRootPart.CFrame = (v.ROOT_PART.CFrame * CFrame.new(0,15,0))
					wait(1.2)
				end
			end
			wait(0.01)
		end
	end)
-- Egg
	local Egg = Window:NewTab("Eggs")
	local EggSection = Egg:NewSection("Eggs")

	EggSection:NewButton("Hatch World 1 Egg Once", "Basic_Pet_Egg", function()
		game:GetService("ReplicatedStorage").Remotes.Eggs.HatchEgg:FireServer("Basic_Pet_Egg","Pets","Coins")
	end)

	EggSection:NewToggle("Auto Hatch World 1", "Basic_Pet_Egg", function()
		getgenv().EggLoop1 = not getgenv().EggLoop1
		while getgenv().EggLoop1 do
			game:GetService("ReplicatedStorage").Remotes.Eggs.HatchEgg:FireServer("Basic_Pet_Egg","Pets","Coins")
			wait(1)
		end
	end)

	EggSection:NewButton("Hatch World 2 Egg Once", "Ruined_Egg", function()
		game:GetService("ReplicatedStorage").Remotes.Eggs.HatchEgg:FireServer("Ruined_Egg","Pets","Coins")
	end)

	EggSection:NewToggle("Auto Hatch World 2", "Ruined_Egg", function()
		getgenv().EggLoop2 = not getgenv().EggLoop2
		while getgenv().EggLoop2 do
			game:GetService("ReplicatedStorage").Remotes.Eggs.HatchEgg:FireServer("Ruined_Egg","Pets","Coins")
			wait(1)
		end
	end)

	EggSection:NewButton("Hatch World 3 Egg Once", "Pirate_Egg", function()
		game:GetService("ReplicatedStorage").Remotes.Eggs.HatchEgg:FireServer("Pirate_Egg","Pets","Coins")
	end)

	EggSection:NewToggle("Auto Hatch World 3", "Pirate_Egg", function()
		getgenv().EggLoop3 = not getgenv().EggLoop3
		while getgenv().EggLoop3 do
			game:GetService("ReplicatedStorage").Remotes.Eggs.HatchEgg:FireServer("Pirate_Egg","Pets","Coins")
			wait(1)
		end
	end)

	EggSection:NewButton("Hatch World 4 Egg Once", "Cold_Egg", function()
		game:GetService("ReplicatedStorage").Remotes.Eggs.HatchEgg:FireServer("Cold_Egg","Pets","Coins")
	end)

	EggSection:NewToggle("Auto Hatch World 4", "Cold_Egg", function()
		getgenv().EggLoop4 = not getgenv().EggLoop4
		while getgenv().EggLoop4 do
			game:GetService("ReplicatedStorage").Remotes.Eggs.HatchEgg:FireServer("Cold_Egg","Pets","Coins")
			wait(1)
		end
	end)

	EggSection:NewButton("Hatch World 5 Egg Once", "Molten_Egg", function()
		game:GetService("ReplicatedStorage").Remotes.Eggs.HatchEgg:FireServer("Molten_Egg","Pets","Coins")
	end)

	EggSection:NewToggle("Auto Hatch World 5", "Molten_Egg", function()
		getgenv().EggLoop5 = not getgenv().EggLoop5
		while getgenv().EggLoop5 do
			game:GetService("ReplicatedStorage").Remotes.Eggs.HatchEgg:FireServer("Molten_Egg","Pets","Coins")
			wait(1)
		end
	end)
-- Teleports
	local Teleport = Window:NewTab("Teleports")
	local TeleportSection = Teleport:NewSection("Only TP to Gate/Spawn in Current World")
	
	TeleportSection:NewButton("World 1 Spawn", "", function()
		LocalPlayer.HumanoidRootPart.CFrame = CFrame.new(-296.225586, 17.9543018, 69.3055115, 0.639729321, -7.2935995e-09, -0.768600285, -3.59826693e-08, 1, -3.94389232e-08, 0.768600285, 5.28865236e-08, 0.639729321)
	end)

	TeleportSection:NewButton("World 1 Gate", "", function()
		LocalPlayer.HumanoidRootPart.CFrame = CFrame.new(197.112503, 17.9101295, 106.51368, 0.353108227, 7.35181587e-08, -0.935582459, -6.85787924e-08, 1, 5.26970361e-08, 0.935582459, 4.55533602e-08, 0.353108227)
	end)

	TeleportSection:NewButton("World 2 Spawn", "", function()
		LocalPlayer.HumanoidRootPart.CFrame = CFrame.new(-846.221741, 224.145645, -3220.5708, -0.870192111, -2.86465838e-08, 0.492712587, -3.68869877e-08, 1, -7.00648428e-09, -0.492712587, -2.42716709e-08, -0.870192111)
	end)

	TeleportSection:NewButton("World 2 Gate", "", function()
		LocalPlayer.HumanoidRootPart.CFrame = CFrame.new(-593.488708, 223.563812, -3736.12109, -0.830754936, 6.40758842e-08, 0.55663836, 8.57667573e-08, 1, 1.28903688e-08, -0.55663836, 5.84498032e-08, -0.830754936)
	end)

	TeleportSection:NewButton("World 3 Spawn", "", function()
		LocalPlayer.HumanoidRootPart.CFrame = CFrame.new(-7346.31689, -50.0828171, -5641.57275, 0.532996297, -2.8728854e-08, -0.846117556, -1.80392465e-08, 1, -4.53172326e-08, 0.846117556, 3.9417241e-08, 0.532996297)
	end)

	TeleportSection:NewButton("World 3 Gate", "", function()
		LocalPlayer.HumanoidRootPart.CFrame = CFrame.new(-6595.58643, -49.7774887, -5726.07031, -0.193646953, -6.48825838e-09, -0.981071293, -3.20348614e-09, 1, -5.98112804e-09, 0.981071293, 1.98462113e-09, -0.193646953)
	end)

	TeleportSection:NewButton("World 4 Spawn", "", function()
		LocalPlayer.HumanoidRootPart.CFrame = CFrame.new(-4114.61084, 444.740845, 1875.48425, 0.91216892, -2.83113266e-09, 0.409814388, -4.29812097e-08, 1, 1.0257633e-07, -0.409814388, -1.11181258e-07, 0.91216892)
	end)

	TeleportSection:NewButton("World 4 Gate", "", function()
		LocalPlayer.HumanoidRootPart.CFrame = CFrame.new(-5012.01123, 503.320374, 2169.31445, -0.0343848355, -1.31445167e-05, 0.999408662, 4.74321087e-06, 1, 1.33154854e-05, -0.999408662, 5.19825699e-06, -0.0343848355)
	end)

	TeleportSection:NewButton("World 5 Spawn", "", function()
		LocalPlayer.HumanoidRootPart.CFrame = CFrame.new(-8904.60254, -33.2545395, 955.339905, -0.736767769, 3.07479837e-08, 0.676145911, 2.76501186e-08, 1, -1.53461954e-08, -0.676145911, 7.38893258e-09, -0.736767769)
	end)

	TeleportSection:NewButton("World 5 Gate", "", function()
		LocalPlayer.HumanoidRootPart.CFrame = CFrame.new(-8433.19336, -32.3653145, 143.557175, -0.0944286808, 7.81653924e-08, -0.995531619, 1.64439129e-08, 1, 7.69564892e-08, 0.995531619, -9.1035357e-09, -0.0944286808)
	end)

-- Player
	local Player = Window:NewTab("Player")
	local PlayerSection = Player:NewSection("Player")
		
	PlayerSection:NewToggle("WalkSpeed", "", function(state)
        if state then
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 80
        else
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 20
        end
	end)
-- Misc
	local Misc = Window:NewTab("Misc")
	local MiscSection = Misc:NewSection("Misc")
	
	MiscSection:NewKeybind("Right Shift to Hide/Open GUI", "", Enum.KeyCode.RightShift, function()
		Library:ToggleUI()
	end)

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