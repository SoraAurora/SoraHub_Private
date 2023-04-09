local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Sora Hub - MasterBlox", "Ocean")

local Players = game:GetService("Players")
local LocalPlayer = game.Players.LocalPlayer.Character
local ReplicatedStorage = game:GetService("ReplicatedStorage")

function addUI(part)
	local partGui = Instance.new("BillboardGui", part)
	partGui.Size = UDim2.new(1,0,1,0);
	partGui.AlwaysOnTop = true;
	local frame = Instance.new("Frame", partGui)
	frame.BackgroundColor3 = getgenv().Colour;
	frame.BackgroundTransparency = 0.5
	frame.Size = UDim2.new(1,0,1,0)
	frame.BorderSizePixel = 0;
	local nameGui = Instance.new("BillboardGui" , part)
	nameGui.Size = UDim2.new(3,0,1.5,0);
	nameGui.SizeOffset = Vector2.new(0,0.5)
	nameGui.AlwaysOnTop = true;
	local text = Instance.new("TextLabel" , nameGui)
	text.Text = tostring(part)
	text.TextColor3 = getgenv().textcolour;
	text.TextTransparency = 0
	text.BackgroundTransparency = 1
	text.TextScaled = true
	text.Size = UDim2.new(2,2,2,2);
	text.Font = Enum.Font.GothamSemibold
	text.Name = "Text"
end

game:GetService("RunService").RenderStepped:Connect(function()
	local anticheatname = "scripts loader"
	for i2 , v2 in pairs(LocalPlayer:GetChildren()) do
		if tostring(v2) == anticheatname then
			v2:Destroy()
		end
	end
end)

-- PVP
	local PvP = Window:NewTab("Combat")
	local PvPSection = PvP:NewSection("Combat")

	getgenv().killaura = false
	PvPSection:NewToggle("KillAura - Range is Small & Reactive Frequently","combine with walkspeed 30 and run around the enemy", function()
		getgenv().killaura = not getgenv().killaura
		while getgenv().killaura do
			for i1 , v1 in pairs(Players:GetPlayers()) do
				local target = game.Workspace:FindFirstChild(tostring(v1))
				if tostring(target) ~= tostring(LocalPlayer) and game.Players.LocalPlayer:DistanceFromCharacter(target.PrimaryPart.Position) < 15  then
					game.ReplicatedStorage.GameRemotes.Attack:InvokeServer(target ,"G#M;IVT;#})jAkm*2De!")
				end
			end
			wait(0.01)
		end
	end)

	getgenv().ChestEsp = false
    PvPSection:NewToggle("Chest ESP - Refreshes every 5 seconds " , "Only Renders Chest in Workspace" , function()
	getgenv().ChestEsp = not getgenv().ChestEsp
		while getgenv().ChestEsp do
			for i5,v5 in pairs(game.Workspace.Blocks:GetDescendants()) do
				if tostring(v5) == "Chest" then
					if not(table.getn(v5:GetChildren()) > 1) then
						getgenv().Colour = Color3.fromRGB(75,139,59);
						getgenv().textcolour = Color3.fromRGB(75,139,59);
						addUI(v5)
					end
				end
			end
			wait(5)
		end
	end)

    PvPSection:NewButton("Unnamed ESP by WeAreDevs" , "" , function()
        loadstring(game:HttpGet("https://pastebin.com/raw/n4VDYyrP"))()
    end)
-- mining 
	local Mining = Window:NewTab("Mining")
	local MiningSection = Mining:NewSection("Mining")
	getgenv().OreEsp = false
    MiningSection:NewToggle("Ore ESP - Refreshes Every 5 Seconds" , "Only Renders Ores Existing in Workspace" , function()
		getgenv().OreEsp = not getgenv().OreEsp
		while getgenv().OreEsp do
			for i3,v3 in pairs(game.Workspace.Blocks:GetDescendants()) do
				if not(table.getn(v3:GetChildren()) > 0) then
					if tostring(v3) == "DiamondOre" then
						getgenv().Colour = Color3.fromRGB(185,242,255);
						getgenv().textcolour = Color3.fromRGB(185,242,255);
						addUI(v3)
					elseif tostring(v3) == "IronOre" then
						getgenv().Colour = Color3.fromRGB(224,156,85);
						getgenv().textcolour = Color3.fromRGB(224,156,85);
						addUI(v3)
					elseif tostring(v3) == "CoalOre" then
						getgenv().Colour = Color3.fromRGB(78,79,85);
						getgenv().textcolour = Color3.fromRGB(78,79,85);
						addUI(v3)
					elseif tostring(v3) == "GoldOre" then
						getgenv().Colour = Color3.fromRGB(212,175,55);
						getgenv().textcolour = Color3.fromRGB(212,175,55);
						addUI(v3)
					elseif tostring(v3) == "OverlordOre" then
						getgenv().Colour = Color3.fromRGB(106,13,173);
						getgenv().textcolour = Color3.fromRGB(106,13,173);
						addUI(v3)
					end
				end
			end
			wait(5)
		end
    end)
	getgenv().LavaEsp = false
    MiningSection:NewToggle("Lava ESP - Refreshes every 5 seconds " , "Only Renders Lava in Workspace" , function()
	getgenv().LavaEsp = not getgenv().LavaEsp
		while getgenv().LavaEsp do
			for i4,v4 in pairs(game.Workspace.Fluid:GetDescendants()) do
				if tostring(v4) == "Lava" then
					if not(table.getn(v4:GetChildren()) > 1) then
						getgenv().Colour = Color3.fromRGB(236,128,88);
						getgenv().textcolour = Color3.fromRGB(236,128,88);
						addUI(v4)
					end
				end
			end
			wait(5)
		end
	end)

    MiningSection:NewButton("FullBright / Night Vision?" , "" , function()
    	loadstring(game:HttpGet("https://pastebin.com/raw/EGrKSD1A", true))()
    end)
--player
	local Player = Window:NewTab("Player")
	local PlayerSection = Player:NewSection("Modification")

	getgenv().walkspeed = 20

	PlayerSection:NewDropdown("Select WalkSpeed", "18 is below anticheat", {18,25,30,40,50}, function(walkspeed)
		getgenv().walkspeed = walkspeed
	end)
	getgenv().enablewalkspeed = false
	PlayerSection:NewToggle("Toggle WalkSpeed", "Enable/Disable", function(walkspeed)
		getgenv().enablewalkspeed = not getgenv().enablewalkspeed
		while getgenv().enablewalkspeed do
			LocalPlayer.Humanoid.WalkSpeed = getgenv().walkspeed
			wait(3)
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
 
    MiscSection:NewButton("Simple Spy" , "" , function()
        loadstring(game:HttpGet("https://pastebin.com/raw/9vCepJBL"))() -- Remote Spy by veeb
    end)

	MiscSection:NewKeybind("Right Shift to Hide/Open GUI", "", Enum.KeyCode.RightShift, function()
		Library:ToggleUI()
	end)