local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Sora Hub - Universal ESP", "Ocean")

local Players = game:GetService("Players")
local LocalPlayer = game.Players.LocalPlayer.Character


getgenv().esp = false
getgenv().teambased = false

function addUniversalESP(part)
	local partGui = Instance.new("BillboardGui", part)
	partGui.Size = UDim2.new(1,0,1,0);
	partGui.AlwaysOnTop = true;
	local frame = Instance.new("Frame", partGui)
	frame.BackgroundColor3 = getgenv().Colour;
	frame.BackgroundTransparency = 0.2
	frame.Size = UDim2.new(1,0,1,0)
	frame.BorderSizePixel = 0;
	local nameGui = Instance.new("BillboardGui" , part)
	nameGui.Size = UDim2.new(3,0,1.5,0);
	nameGui.SizeOffset = Vector2.new(0,0.5)
	nameGui.AlwaysOnTop = true;
	local text = Instance.new("TextLabel" , nameGui)
	text.Text = getgenv().name
	text.TextColor3 = getgenv().textcolour;
	text.TextTransparency = 0
	text.BackgroundTransparency = 1
	text.TextScaled = true
	text.Size = UDim2.new(1.1, 0, .9, 0);
	text.Font = Enum.Font.GothamSemibold
	text.Name = "Name"
	local distanceGui = Instance.new("BillboardGui" , part)
	distanceGui.Size = UDim2.new(3,0,1.5,0);
	distanceGui.SizeOffset = Vector2.new(0,1)
	distanceGui.AlwaysOnTop = true;
	local distance = Instance.new("TextLabel" , distanceGui)
	distance.Text = getgenv().distance
	distance.TextColor3 = getgenv().distancecolour;
	distance.TextTransparency = 0
	distance.BackgroundTransparency = 1
	distance.TextScaled = true
	distance.Size = UDim2.new(1.1, 0, .9, 0);
	distance.Font = Enum.Font.GothamSemibold
	distance.Name = "Distance"
	local healthGui = Instance.new("BillboardGui" , part)
	healthGui.Size = UDim2.new(3,0,1.5,0);
	healthGui.SizeOffset = Vector2.new(0,1.5)
	healthGui.AlwaysOnTop = true;
	local health = Instance.new("TextLabel" , healthGui)
	health.Text = getgenv().health
	health.TextColor3 = getgenv().healthcolour;
	health.TextTransparency = 0
	health.BackgroundTransparency = 1
	health.TextScaled = true
	health.Size = UDim2.new(1.1, 0, .9, 0);
	health.Font = Enum.Font.GothamSemibold
	health.Name = "Health"
end

function addEnemyESP(part)
	local partGui = Instance.new("BillboardGui", part)
	partGui.Size = UDim2.new(1,0,1,0);
	partGui.AlwaysOnTop = true;
	local frame = Instance.new("Frame", partGui)
	frame.BackgroundColor3 = getgenv().Colour;
	frame.BackgroundTransparency = 0.2
	frame.Size = UDim2.new(1,0,1,0)
	frame.BorderSizePixel = 0;
	local nameGui = Instance.new("BillboardGui" , part)
	nameGui.Size = UDim2.new(3,0,1.5,0);
	nameGui.SizeOffset = Vector2.new(0,0.5)
	nameGui.AlwaysOnTop = true;
	local text = Instance.new("TextLabel" , nameGui)
	text.Text = getgenv().name
	text.TextColor3 = getgenv().textcolour;
	text.TextTransparency = 0
	text.BackgroundTransparency = 1
	text.TextScaled = true
	text.Size = UDim2.new(1.1, 0, .9, 0);
	text.Font = Enum.Font.GothamSemibold
	text.Name = "Name"
	local distanceGui = Instance.new("BillboardGui" , part)
	distanceGui.Size = UDim2.new(3,0,1.5,0);
	distanceGui.SizeOffset = Vector2.new(0,1)
	distanceGui.AlwaysOnTop = true;
	local distance = Instance.new("TextLabel" , distanceGui)
	distance.Text = getgenv().distance
	distance.TextColor3 = getgenv().distancecolour;
	distance.TextTransparency = 0
	distance.BackgroundTransparency = 1
	distance.TextScaled = true
	distance.Size = UDim2.new(1.1, 0, .9, 0);
	distance.Font = Enum.Font.GothamSemibold
	distance.Name = "Distance"
	local healthGui = Instance.new("BillboardGui" , part)
	healthGui.Size = UDim2.new(3,0,1.5,0);
	healthGui.SizeOffset = Vector2.new(0,1.5)
	healthGui.AlwaysOnTop = true;
	local health = Instance.new("TextLabel" , healthGui)
	health.Text = getgenv().health
	health.TextColor3 = getgenv().healthcolour;
	health.TextTransparency = 0
	health.BackgroundTransparency = 1
	health.TextScaled = true
	health.Size = UDim2.new(1.1, 0, .9, 0);
	health.Font = Enum.Font.GothamSemibold
	health.Name = "Health"
end

function CreateEsp()
	getgenv().LocalTeam = game.Players.LocalPlayer.Team
	for i , v in pairs(game.Workspace:GetChildren()) do
		for i1,v1 in pairs(game.Players:GetChildren()) do
			getgenv().exist = false
			getgenv().distance = 0
			if tostring(v) == tostring(v1) and tostring(v) ~= tostring(LocalPlayer) then
				for i2,v2 in pairs(v.Head:GetChildren()) do
					if tostring(v2) == "BillboardGui" then
						getgenv().exist = true
					end
				end
				if getgenv().teambased then --if enable team then remove
					getgenv().distance = math.round((LocalPlayer.PrimaryPart.Position - v.PrimaryPart.Position).magnitude) .. " Studs"
					if getgenv().exist == false and tostring(v1.Team) ~= tostring(getgenv().LocalTeam) then
						print(v1, v1.Team , getgenv().LocalTeam)
						getgenv().Colour = Color3.fromRGB(255,0,0);
						getgenv().textcolour = Color3.fromRGB(255,255,255);
						getgenv().distance = getgenv().distance
						getgenv().distancecolour = Color3.fromRGB(255,255,255);
						getgenv().health = v.Humanoid.Health
						if getgenv().health > 70 then 
							getgenv().healthcolour = Color3.fromRGB(0,255,0);
						elseif getgenv().health > 40 then
							getgenv().healthcolour = Color3.fromRGB(255,255,0);
						elseif getgenv().health >= 0 then
							getgenv().healthcolour = Color3.fromRGB(255,0,0);
						end

						getgenv().name = tostring(v)
						addEnemyESP(v.Head)
					end
				elseif not getgenv().teambased then
					getgenv().distance = math.round((LocalPlayer.PrimaryPart.Position - v.PrimaryPart.Position).magnitude) .. " Studs"
					if getgenv().exist == false then
						getgenv().Colour = Color3.fromRGB(255,0,255);
						getgenv().textcolour = Color3.fromRGB(255,255,255);
						getgenv().distance = getgenv().distance
						getgenv().distancecolour = Color3.fromRGB(255,255,255);
						getgenv().health = v.Humanoid.Health
						if getgenv().health > 70 then 
							getgenv().healthcolour = Color3.fromRGB(0,255,0);
						elseif getgenv().health > 40 then
							getgenv().healthcolour = Color3.fromRGB(255,255,0);
						elseif getgenv().health >= 0 then
							getgenv().healthcolour = Color3.fromRGB(255,0,0);
						end
						getgenv().name = tostring(v)
						addUniversalESP(v.Head)
					end
				end
			end
		end
	end
end

function RemoveEsp()
	for i,v in pairs(game.Workspace:GetChildren()) do
		for i1,v1 in pairs(game.Players:GetChildren()) do
			if tostring(v) == tostring(v1) and tostring(v) ~= tostring(LocalPlayer) then
				for i2,v2 in pairs(v.Head:GetChildren()) do
					if tostring(v2) == "BillboardGui" then
						v2:Destroy()
					end
				end
			end
		end
	end
end

if game:IsLoaded() then
	game:GetService("RunService").RenderStepped:connect(function()
		RemoveEsp()
		if getgenv().esp then
			CreateEsp()
		end
	end)
end

-- Main
	local Main = Window:NewTab("Main")
	local MainSection = Main:NewSection("Main")

	MainSection:NewToggle("ESP On/Off","", function()
		getgenv().esp = not getgenv().esp
	end)
	if (#game.Teams:GetChildren() == 0) then --edit to whole game
		getgenv().teambased = false
	else
		MainSection:NewToggle("Team Based On/Off","", function()
			getgenv().teambased = not getgenv().teambased
		end)
	end

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

	MiscSection:NewKeybind("Right Shift to Hide/Open GUI", "", Enum.KeyCode.M, function()
		Library:ToggleUI()
	end)