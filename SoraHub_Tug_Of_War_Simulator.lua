local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Sora Hub - Tug of War Simulator", "Ocean")

local Players = game:GetService("Players")
local LocalPlayer = game.Players.LocalPlayer.Character
-- Main
	local Main = Window:NewTab("Main")
	local MainSection = Main:NewSection("Main")

	getgenv().autofight = false
	MainSection:NewToggle("Auto Fight", "" , function ()
		getgenv().autofight = not getgenv().autofight 
		while getgenv().autofight do
			for i , v in pairs(game.ReplicatedStorage.Packages._Index:GetChildren()) do
				if tostring(v) == "sleitnick_knit@1.4.7" then
					v.knit.Services.ToolService.RE.Activated:FireServer()
				end
			end
			wait(0.5)
		end
	end)

	getgenv().autoenchantquest = false
	MainSection:NewToggle("Auto Claim Enchant Quest", "" , function ()
		getgenv().autoenchantquest = not getgenv().autoenchantquest 
		while getgenv().autoenchantquest do
			for i , v in pairs(game.ReplicatedStorage.Packages._Index:GetChildren()) do
				if tostring(v) == "sleitnick_knit@1.4.7" then
					v.knit.Services.EnchantService.RE.Claim:FireServer(1)
					v.knit.Services.EnchantService.RE.Claim:FireServer(2)
				end
			end
			wait(0.5)
		end
	end)

	getgenv().autorebirth = false
	MainSection:NewToggle("Auto Rebirth", "" , function ()
		getgenv().autorebirth = not getgenv().autorebirth 
		while getgenv().autorebirth do
			for i , v in pairs(game.ReplicatedStorage.Packages._Index:GetChildren()) do
				if tostring(v) == "sleitnick_knit@1.4.7" then
					v.knit.Services.RebirthService.RE.Rebirth:FireServer()
				end
			end
			wait(0.5)
		end
	end)
-- Menus

	local Menus = Window:NewTab("Menus")
	local MenusSection = Menus:NewSection("Menus")

	MenusSection:NewButton("Open Enchant Menu", "" , function ()
		for i20,v20 in pairs(game.Workspace:GetChildren()) do
			if tostring(v20) == "Important stuff " then
				for i21,v21 in pairs(v20.Machines:GetChildren()) do
					if tostring(v21) == "enchant machine purp" then
						firetouchinterest(v21.Part ,LocalPlayer.PrimaryPart, 1)
						wait(0.01)
						firetouchinterest(v21.Part ,LocalPlayer.PrimaryPart, 0)	
					end	
				end
			end	
		end
	end)

	MenusSection:NewButton("Open Player Upgrade Menu", "" , function ()
		for i20,v20 in pairs(game.Workspace:GetChildren()) do
			if tostring(v20) == "Important stuff " then
				for i21,v21 in pairs(v20.Machines:GetChildren()) do
					if tostring(v21) == "Player upgrade machine" then
						firetouchinterest(v21.Part ,LocalPlayer.PrimaryPart, 1)
						wait(0.01)
						firetouchinterest(v21.Part ,LocalPlayer.PrimaryPart, 0)	
					end	
				end
			end	
		end
	end)
-- Egg	
	local Egg = Window:NewTab("Egg")
	local EggSection = Egg:NewSection("Egg")

	getgenv().autospaceegg = false
	EggSection:NewToggle("Auto Open Space Egg", "" , function ()
		getgenv().autospaceegg = not getgenv().autospaceegg
		while getgenv().autospaceegg do
			for i , v in pairs(game.ReplicatedStorage.Packages._Index:GetChildren()) do
				if tostring(v) == "sleitnick_knit@1.4.7" then
					v.knit.Services.EggService.RE.Purchase:FireServer("Space",1)
				end
			end
			wait(0.5)
		end
	end)

	getgenv().autooniegg = false
	EggSection:NewToggle("Auto Open Oni Egg", "" , function ()
		getgenv().autooniegg = not getgenv().autooniegg 
		while getgenv().autooniegg do
			for i , v in pairs(game.ReplicatedStorage.Packages._Index:GetChildren()) do
				if tostring(v) == "sleitnick_knit@1.4.7" then
					v.knit.Services.EggService.RE.Purchase:FireServer("Oni",1)
				end
			end
			wait(0.5)
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