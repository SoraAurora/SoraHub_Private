local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Sora Hub - Collect All Pets", "Ocean")
	-- Main
	local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")

	getgenv().AutoClaimQuest = false
	MainSection:NewToggle("Auto Claim Quest", "", function()
		getgenv().AutoClaimQuest = not getgenv().AutoClaimQuest
		while getgenv().AutoClaimQuest do
			game.ReplicatedStorage.Remotes.ClaimQuestReward:FireServer()
			wait(1)
		end
    end)

	MainSection:NewButton("Buy Pet Equip Forest", "", function()
		game.ReplicatedStorage.Remotes.BuyPetEquipSlot:FireServer(1)
    end)

	MainSection:NewButton("Buy Pet Equip Desert", "", function()
		game.ReplicatedStorage.Remotes.BuyPetEquipSlot:FireServer(2)
    end)

	MainSection:NewButton("Buy Pet Equip Artic", "", function()
		game.ReplicatedStorage.Remotes.BuyPetEquipSlot:FireServer(3)
    end)

	MainSection:NewButton("Buy Pet Equip Beach", "", function()
		game.ReplicatedStorage.Remotes.BuyPetEquipSlot:FireServer(4)
    end)

	MainSection:NewButton("Buy Pet Equip Mountain", "", function()
		game.ReplicatedStorage.Remotes.BuyPetEquipSlot:FireServer(5)
    end)

	MainSection:NewButton("Buy Pet Equip Jungle", "", function()
		game.ReplicatedStorage.Remotes.BuyPetEquipSlot:FireServer(6)
    end)

    -- MAIN
    local Egg = Window:NewTab("Egg")
    local EggSection = Egg:NewSection("Open Da Eggs")


    EggSection:NewButton("Open Common Egg", "", function()
		game.ReplicatedStorage.Remotes.BuyEgg:FireServer(1)
    end)

	getgenv().AutoCommonEgg = false
    EggSection:NewToggle("Auto Open Common Egg", "", function()
		getgenv().AutoCommonEgg = not getgenv().AutoCommonEgg
		while getgenv().AutoCommonEgg do
			game.ReplicatedStorage.Remotes.BuyEgg:FireServer(1)
			wait(1)
		end
    end)

	EggSection:NewButton("Open Uncommon Egg", "", function()
		game.ReplicatedStorage.Remotes.BuyEgg:FireServer(2)
    end)

	getgenv().AutoUncommonEgg = false
    EggSection:NewToggle("Auto Open Uncommon Egg", "", function()
		getgenv().AutoUncommonEgg = not getgenv().AutoUncommonEgg
		while getgenv().AutoUncommonEgg do
			game.ReplicatedStorage.Remotes.BuyEgg:FireServer(2)
			wait(1)
		end
    end)

	EggSection:NewButton("Open Rare Egg", "", function()
		game.ReplicatedStorage.Remotes.BuyEgg:FireServer(3)
    end)

	getgenv().AutoRareEgg = false
    EggSection:NewToggle("Auto Open Rare Egg", "", function()
		getgenv().AutoRareEgg = not getgenv().AutoRareEgg
		while getgenv().AutoRareEgg do
			game.ReplicatedStorage.Remotes.BuyEgg:FireServer(3)
			wait(1)
		end
    end)

	EggSection:NewButton("Open Epic Egg", "", function()
		game.ReplicatedStorage.Remotes.BuyEgg:FireServer(4)
    end)

	getgenv().AutoEpicEgg = false
    EggSection:NewToggle("Auto Open Epic Egg", "", function()
		getgenv().AutoEpicEgg = not getgenv().AutoEpicEgg
		while getgenv().AutoEpicEgg do
			game.ReplicatedStorage.Remotes.BuyEgg:FireServer(4)
			wait(1)
		end
    end)

	EggSection:NewButton("Open Legendary Egg", "", function()
		game.ReplicatedStorage.Remotes.BuyEgg:FireServer(5)
    end)

	getgenv().AutoLegendaryEgg = false
    EggSection:NewToggle("Auto Open Legendary Egg", "", function()
		getgenv().AutoLegendaryEgg = not getgenv().AutoLegendaryEgg
		while getgenv().AutoLegendaryEgg do
			game.ReplicatedStorage.Remotes.BuyEgg:FireServer(5)
			wait(1)
		end
    end)

	EggSection:NewButton("Open Prodigious Egg", "", function()
		game.ReplicatedStorage.Remotes.BuyEgg:FireServer(6)
    end)

	getgenv().AutoProdigiousEgg = false
    EggSection:NewToggle("Auto Open Prodigious Egg", "", function()
		getgenv().AutoProdigiousEgg = not getgenv().AutoProdigiousEgg
		while getgenv().AutoProdigiousEgg do
			game.ReplicatedStorage.Remotes.BuyEgg:FireServer(6)
			wait(1)
		end
    end)

	local Teleport = Window:NewTab("Teleports")
    local TPSection = Teleport:NewSection("Areas (Only Work if You unlocked said areas)")

	TPSection:NewButton("Set Pets to Meadow", "", function()
		game.ReplicatedStorage.UI.Remotes.OnAreaButton:FireServer(1)
    end)

	TPSection:NewButton("Set Pets to Forest", "", function()
		game.ReplicatedStorage.UI.Remotes.OnAreaButton:FireServer(2)
    end)

	TPSection:NewButton("Set Pets to Desert", "", function()
		game.ReplicatedStorage.UI.Remotes.OnAreaButton:FireServer(3)
    end)

	TPSection:NewButton("Set Pets to Artic", "", function()
		game.ReplicatedStorage.UI.Remotes.OnAreaButton:FireServer(4)
    end)

	TPSection:NewButton("Set Pets to Beach", "", function()
		game.ReplicatedStorage.UI.Remotes.OnAreaButton:FireServer(5)
    end)

	TPSection:NewButton("Set Pets to Mountain", "", function()
		game.ReplicatedStorage.UI.Remotes.OnAreaButton:FireServer(6)
    end)

	TPSection:NewButton("Set Pets to Jungle", "", function()
		game.ReplicatedStorage.UI.Remotes.OnAreaButton:FireServer(7)
    end)

	local GameUi = Window:NewTab("UIs")
    local GameUiSection = GameUi:NewSection("All Menus (Only Works if you have gamepass)")

	GameUiSection:NewButton("AutoFuse Menu", "", function()
		game.ReplicatedStorage.Events.OpenAutoFuseMenu:Fire()
    end)

    --LOCAL PLAYER
    local Player = Window:NewTab("Player")
    local PlayerSection = Player:NewSection("Player")

    PlayerSection:NewSlider("Walkspeed", "SPEED!!", 500, 16, function(s)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
    end)

    PlayerSection:NewSlider("Jumppower", "JUMP HIGH!!", 350, 50, function(s)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
    end)

    PlayerSection:NewButton("Reset WS/JP", "Resets to all defaults", function()
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
    end)

    --Misc
    local Misc = Window:NewTab("Misc")
    local MiscSection = Misc:NewSection("Misc")

    MiscSection:NewButton("Chat Spoofer", "Lets you chat for other people", function()
        loadstring(game:HttpGet(('https://pastebin.com/raw/djBfk8Li'),true))()
    end)

    MiscSection:NewButton("Bypassed Fly", "bird mode", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Nicuse/RobloxScripts/main/BypassedFly.lua"))() 

        Fly(true)
    end)

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


    MiscSection:NewToggle("Super-Human", "go fast and jump high", function(state)
        if state then
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 120
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = 120
        else
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
        end
    end)

    MiscSection:NewButton("Infinite Yield", "FE Admin Commands", function()
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
    end)
