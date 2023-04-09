local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Sora Hub - Every Second You Get +1 Points", "Ocean")

local Player = game:GetService("Players")
local LocalPlayer = game.Players.LocalPlayer.Character
game:GetService("RunService").RenderStepped:Connect(function()
	print("Hi")
	Player = game:GetService("Players")
	LocalPlayer = game.Players.LocalPlayer.Character
end)

-- Main
	local Main = Window:NewTab("Main")
	local MainSection = Main:NewSection("AutoFarms")
	getgenv().autofarm = false
	MainSection:NewToggle("AutoFarm World 1","", function()
		getgenv().autofarm = not getgenv().autofarm
        while getgenv().autofarm do
            print("start Loop")
            print(game.Players.LocalPlayer.leaderstats.Wins.Value)
            if game.Players.LocalPlayer.leaderstats.Wins.Value < 100000 then -- 1
				print("B4 TP Under 100k")
                LocalPlayer.PrimaryPart.CFrame = CFrame.new(63.2009888, -2.82800627, 10381.1982, 0, 0, -1, -1, 0, 0, 0, 1, 0)
                print("Won")
            else
                print("Rebirthed")
                LocalPlayer.PrimaryPart.CFrame = CFrame.new(0.636764526, -2.70037651, 10165.5459, 0, -1, -0, -1, 0, -0, 0, 0, -1)
            end
            print("End Loop")
            wait(5)
        end
	end)
--egg
	local Egg = Window:NewTab("Egg")
	local EggSection = Egg:NewSection("Auto Egg Open")
	getgenv().autoegg = false
	EggSection:NewToggle("Auto open Void Egg","Tps u there",function()
		getgenv().autoegg = not getgenv().autoegg
		while getgenv().autoegg do
            LocalPlayer.PrimaryPart.CFrame = CFrame.new(63.2277412, 0.224841267, 10144.2031, 0.928770363, -3.78398894e-08, -0.370655626, 4.57404248e-08, 1, 1.25249988e-08, 0.370655626, -2.85867934e-08, 0.928770363)
			wait(0.2)
			game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer("Void","Single")
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