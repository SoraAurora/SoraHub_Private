local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Sora Hub - Monster Merge Simulator", "Ocean")

local Players = game:GetService("Players")
local amt4rb = tostring(Players.LocalPlayer.PlayerGui.Main.UpgradesUI.Frame.Rebirth.Frame.Btn.Price.Text)
local PlayerHead = game.Players.LocalPlayer.Character.Head

--main
	local Main = Window:NewTab("Main")
	local MainSection = Main:NewSection("Main")

	getgenv().AutoClick = false
	MainSection:NewToggle("Auto Click", "", function()
		getgenv().AutoClick = not getgenv().AutoClick
		while getgenv().AutoClick do
			game.ReplicatedStorage.Packages.Knit.Services.BaseService.RE.Click:FireServer()
			wait(0.1)
		end
	end)
	
	getgenv().AutoRebirth = false
	MainSection:NewToggle("Rebirth ", amt4rb, function()
		getgenv().AutoRebirth = not getgenv().AutoRebirth
		while getgenv().AutoRebirth do
			game.ReplicatedStorage.Packages.Knit.Services.UpgradeService.RE.Upgrade:FireServer("Rebirth")
			wait(1)
		end
	end)

	MainSection:NewButton("Auto Claim Chest" , "Group Joined Neeed" , function ()
		firetouchinterest(PlayerHead, game.Workspace.Chest.Main , 0)
	end)

	local Upgrade = Window:NewTab("Upgrade")
	local UpgradeSection = Upgrade:NewSection("Upgrade")

	UpgradeSection:NewButton("Upgrade Spawn Quality", "", function()
		game.ReplicatedStorage.Packages.Knit.Services.UpgradeService.RE.Upgrade:FireServer("SlimeQuality")
	end)

	getgenv().AutoUpgradeSlimeQuality = false
	UpgradeSection:NewToggle("Auto Upgrade Spawn Quality", "", function()
		getgenv().AutoUpgradeSlimeQuality = not getgenv().AutoUpgradeSlimeQuality
		while getgenv().AutoUpgradeSlimeQuality do
			game.ReplicatedStorage.Packages.Knit.Services.UpgradeService.RE.Upgrade:FireServer("SlimeQuality")
			wait(1)
		end
	end)

	UpgradeSection:NewButton("Upgrade Max Capacity", "", function()
		game.ReplicatedStorage.Packages.Knit.Services.UpgradeService.RE.Upgrade:FireServer("SlimeCapacity")
	end)

	getgenv().AutoUpgradeSlimeCapacity = false
	UpgradeSection:NewToggle("Auto Upgrade Max Capacity", "", function()
		getgenv().AutoUpgradeSlimeCapacity = not getgenv().AutoUpgradeSlimeCapacity
		while getgenv().AutoUpgradeSlimeCapacity do
			game.ReplicatedStorage.Packages.Knit.Services.UpgradeService.RE.Upgrade:FireServer("SlimeCapacity")
			wait(1)
		end
	end)


	UpgradeSection:NewButton("Upgrade Spawn Rate", "", function()
		game.ReplicatedStorage.Packages.Knit.Services.UpgradeService.RE.Upgrade:FireServer("SpawnTime")
	end)

	getgenv().AutoUpgradeSpawnTime = false
	UpgradeSection:NewToggle("Auto Upgrade Spawn Rate", "", function()
		getgenv().AutoUpgradeSpawnTime = not getgenv().AutoUpgradeSpawnTime
		while getgenv().AutoUpgradeSpawnTime do
			game.ReplicatedStorage.Packages.Knit.Services.UpgradeService.RE.Upgrade:FireServer("SpawnTime")
			wait(1)
		end
	end)

	UpgradeSection:NewButton("Upgrade Poop Time", "", function()
		game.ReplicatedStorage.Packages.Knit.Services.UpgradeService.RE.Upgrade:FireServer("PlortingSpeed")
	end)

	getgenv().AutoUpgradePlortingSpeed = false
	UpgradeSection:NewToggle("Auto Upgrade Poop Time", "", function()
		getgenv().AutoUpgradePlortingSpeed = not getgenv().AutoUpgradePlortingSpeed
		while getgenv().AutoUpgradePlortingSpeed do
			game.ReplicatedStorage.Packages.Knit.Services.UpgradeService.RE.Upgrade:FireServer("PlortingSpeed")
			wait(1)
		end
	end)

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

    MiscSection:NewButton("Walkspeed", "SPEED!!", function()    
        while true do
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 50
            wait(0.1)
        end
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