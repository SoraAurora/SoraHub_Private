local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Sora Hub - Apocalypse Tycoon", "Ocean")

local purchasables = game.Workspace.Tycoons
local Players = game:GetService("Players")
local PlayerHead = game.Players.LocalPlayer.Character.Head
getgenv().currentOption = 0.1
-- Main
	local Main = Window:NewTab("AutoFarm")
	local MainSection = Main:NewSection("Main")


	getgenv().autobuy = false
	MainSection:NewToggle("Auto Buy Upgrades - read notes","NPCs/Some Buttons needs to be manually bought , off/on or step on button to reset", function()
		getgenv().autobuy = not getgenv().autobuy
		while getgenv().autobuy do
			for i , v in pairs(purchasables:GetChildren()) do
				for index1 , value1 in pairs(v.Buttons:GetChildren()) do
					for index2 , value2 in pairs(value1:GetChildren()) do
						if tostring(value2) == "Top" then
							firetouchinterest(PlayerHead, value2 , 0)
						end
					end
				end
			end
			wait(0.1)
		end
	end)

	MainSection:NewDropdown("Refresh Time for Money PayOut", "Faster = Laggier", {1, 0.5, 0.1, 0.01}, function(currentOption)
    	getgenv().currentOption = currentOption
	end)
	getgenv().autopay = false
	MainSection:NewToggle("Auto PayOut", "" , function ()
		getgenv().autopay = not getgenv().autopay 
		while getgenv().autopay do
			game:GetService("ReplicatedStorage").Knit.Services.TycoonService.RF.PayIncome:InvokeServer(game:GetService("Players").LocalPlayer)
			wait(getgenv().currentOption)
		end
	end)

	getgenv().autorebirth = false
	MainSection:NewToggle("Auto Rebirth", "" , function ()
		getgenv().autorebirth = not getgenv().autorebirth 
		while getgenv().autorebirth do
			game:GetService("ReplicatedStorage").Knit.Services.TycoonService.RF.Rebirth:InvokeServer()
			wait(1)
		end
	end)

--LOCAL PLAYER
    local Player = Window:NewTab("Player")
    local PlayerSection = Player:NewSection("Player")

    PlayerSection:NewSlider("Walkspeed", "SPEED!!", 500, 16, function(s)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
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