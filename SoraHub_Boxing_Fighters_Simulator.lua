local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Sora Hub - Boxing Fighters Simulator", "Ocean")

local Players = game:GetService("Players")
local LocalPlayer = game.Players.LocalPlayer.Character
local PlayerHead = LocalPlayer.Head
local NPCs = game.Workspace.NPC
-- Main
	local Main = Window:NewTab("Main")
	local MainSection = Main:NewSection("Main")

	MainSection:NewDropdown("Select Mob", "Select Mob", {"Nerd","Bully","Teacher","Lightning Year","Mr Robot","Toy Soldier","Classic Wizard","Classic Player","Classic Zombie","Guest","Builder","Foreman","Zombie","Adam","Scorched Spirit","Magma Dragon","Demon","Sketch","Magma God","Forest Gladiator","Skeleton","Justin","Godly Welder","Angry Miner","Strong Miner","King Frog","Builderman","Grandma","Mummy","Woodie","Mushroom Wizard","Mutated Person","Heaven Miner","Yeti","Crusader","Anoobie","Principal","Red Plumber","Flamingo","Novice Miner","Ghost Grandma","Desert Warrior","Pharoah","Mushroom Elf"}, function(currentOption)
    	NPCSelected = currentOption
	end)
	
	getgenv().AutoFarmLoop = false
	MainSection:NewToggle("AutoFarm", "", function()
		getgenv().AutoFarmLoop = not getgenv().AutoFarmLoop
		while getgenv().AutoFarmLoop do -- if true enter loop
			for i,v in ipairs(NPCs:GetChildren()) do -- loops through NPC folder names 
				if tostring(v) == NPCSelected then -- if its same as selected then proceed
					for index,value in ipairs(v:GetChildren()) do -- loops through 1st layer down of folder and find primarypart which is humanoidrootpart and tps u to it and hits
						if tostring(value.PrimaryPart) == "HumanoidRootPart" then
							LocalPlayer.PrimaryPart.CFrame = value.PrimaryPart.CFrame
							wait(0.2)
							game:GetService("ReplicatedStorage").Network.Punch:FireServer(tostring(v) , tostring(value)) -- the hit checks whether its the selected character through folder name & id
							wait(0.2)
						end
					end
				end
			end
			wait(0.1)
		end
	end)

	MainSection:NewButton("Claim Daily Gifts" , "" , function ()
		firetouchinterest(PlayerHead, game.Workspace.Rewards.Daily , 0)
	end)

	MainSection:NewButton("Claim Group Gifts" , "Group Joined Needed" , function ()
		firetouchinterest(PlayerHead, game.Workspace.Rewards.Daily , 0)
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