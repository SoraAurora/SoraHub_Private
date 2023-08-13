local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Sora Hub - Punch Simulator", "Ocean")

local Players = game:GetService("Players")
local LocalPlayer = game.Players.LocalPlayer.Character
-- Main
	local Main = Window:NewTab("Main")
	local MainSection = Main:NewSection("Main")

	getgenv().autopunch = false
	MainSection:NewToggle("Auto Punch", "" , function ()
		getgenv().autopunch = not getgenv().autopunch 
		while getgenv().autopunch do
			game.ReplicatedStorage.Events.DamageIncreaseOnClickEvent:FireServer()
			wait(0.01)
			game.ReplicatedStorage.Events.DamageIncreaseOnClickEvent:FireServer()
			wait(0.01)	
			game.ReplicatedStorage.Events.DamageIncreaseOnClickEvent:FireServer()
		end
	end)

	getgenv().autogem = false
	MainSection:NewToggle("Auto Gem - Wait till 2nd Gift is Claimable", "" , function ()
		getgenv().autogem = not getgenv().autogem
		while getgenv().autogem do
			game.ReplicatedStorage.Events.PlaytimeRewardUpdateEvent:FireServer(2)
			wait(0.01)
		end
	end)

	MainSection:NewButton("Start Dungeon", "" , function ()
		game.ReplicatedStorage.Events.DungeonEvent:FireServer("StartDungeon")
	end)




	getgenv().autoascend = false
	MainSection:NewToggle("Ascend Automatically", "" , function ()
		getgenv().autoascend = not getgenv().autoascend 
		while getgenv().autoascend do
			game.ReplicatedStorage.Events.AscendEvent:FireServer(true)
			wait(5)
		end
	end)

-- Menus

	local Menus = Window:NewTab("Menus")
	local MenusSection = Menus:NewSection("Menus")

	MenusSection:NewButton("Open Teleport Menu", "" , function ()
		firetouchinterest(game.Workspace.TouchHexagons.TeleportHexagons.TeleportUI.HitboxPart, LocalPlayer.PrimaryPart, 0)
		wait(0.01)
		firetouchinterest(game.Workspace.TouchHexagons.TeleportHexagons.TeleportUI.HitboxPart, LocalPlayer.PrimaryPart, 1)
	end)

	MenusSection:NewButton("Open BlackSmith", "" , function ()
		firetouchinterest(game.Workspace.TouchHexagons.Blacksmith.EquipmentCraft.HitboxPart, LocalPlayer.PrimaryPart, 0)
		wait(0.01)
		firetouchinterest(game.Workspace.TouchHexagons.Blacksmith.EquipmentCraft.HitboxPart, LocalPlayer.PrimaryPart, 1)
	end)

	MenusSection:NewButton("Open Golden Machine", "" , function ()
		firetouchinterest(game.Workspace.TouchHexagons.GoldenPetHexagons.GoldenPet.HitboxPart, LocalPlayer.PrimaryPart, 0)
		wait(0.01)
		firetouchinterest(game.Workspace.TouchHexagons.GoldenPetHexagons.GoldenPet.HitboxPart, LocalPlayer.PrimaryPart, 1)
	end)

	MenusSection:NewButton("Open Rainbow Machine", "" , function ()
		firetouchinterest(game.Workspace.TouchHexagons.RainbowPetHexagons.RainbowPet.HitboxPart, LocalPlayer.PrimaryPart, 0)
		wait(0.01)
		firetouchinterest(game.Workspace.TouchHexagons.RainbowPetHexagons.RainbowPet.HitboxPart, LocalPlayer.PrimaryPart, 1)
	end)

	MenusSection:NewButton("Open Gem Shop", "" , function ()
		firetouchinterest(game.Workspace.TouchHexagons.GemShopHexagons.GemShop.HitboxPart, LocalPlayer.PrimaryPart, 0)
		wait(0.01)
		firetouchinterest(game.Workspace.TouchHexagons.GemShopHexagons.GemShop.HitboxPart, LocalPlayer.PrimaryPart, 1)
	end)
-- Egg	
	local Egg = Window:NewTab("Egg")
	local EggSection = Egg:NewSection("Egg")

	getgenv().autoEggSummer = false
	EggSection:NewToggle("Auto Open Summer Egg (50 Gems)", "" , function ()
		getgenv().autoEggSummer = not getgenv().autoEggSummer 
		while getgenv().autoEggSummer do
			game.ReplicatedStorage.Events.PlayerPressedKeyOnEgg:FireServer("SummerEgg")	
			wait(0.2)
		end
	end)

	getgenv().autoegg1 = false
	EggSection:NewToggle("Auto Open Forest Egg (25 Trophy)", "" , function ()
		getgenv().autoegg1 = not getgenv().autoegg1 
		while getgenv().autoegg1 do
			game.ReplicatedStorage.Events.PlayerPressedKeyOnEgg:FireServer("1")	
			wait(0.2)
		end
	end)


	getgenv().autoegg2 = false
	EggSection:NewToggle("Auto Open Desert Egg (2.5k Trophy)", "" , function ()
		getgenv().autoegg2 = not getgenv().autoegg2 
		while getgenv().autoegg2 do
			game.ReplicatedStorage.Events.PlayerPressedKeyOnEgg:FireServer("2")	
			wait(0.2)
		end
	end)

	getgenv().autoegg3 = false
	EggSection:NewToggle("Auto Open Cavew Egg (3M Trophy)", "" , function ()
		getgenv().autoegg3 = not getgenv().autoegg3 
		while getgenv().autoegg3 do
			game.ReplicatedStorage.Events.PlayerPressedKeyOnEgg:FireServer("3")	
			wait(0.2)
		end
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
 
    MiscSection:NewButton("Remote Spy" , "" , function()
        loadstring(game:HttpGet("https://pastebin.com/raw/9vCepJBL"))() -- Remote Spy by veeb
    end)

	MiscSection:NewKeybind("Right Shift to Hide/Open GUI", "", Enum.KeyCode.M, function()
		Library:ToggleUI()
	end)