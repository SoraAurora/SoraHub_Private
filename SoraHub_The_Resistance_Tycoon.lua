local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Sora Hub - The Resistance Tycoon", "Ocean")

local Players = game:GetService("Players")
local LocalPlayer = game.Players.LocalPlayer.Character
-- Main
	local Main = Window:NewTab("AutoFarm")
	local MainSection = Main:NewSection("Haii :>")
    getgenv().autobuy = false
	MainSection:NewToggle("Auto Buy Upgrades + Auto Rebirth ","", function()
        getgenv().autobuy = not getgenv().autobuy
        while getgenv().autobuy do
            for i1 , v1 in pairs(game.Workspace.Tycoons:GetChildren()) do
                if v1.Buttons:GetChildren()[1] then

                    for i2,v2 in pairs(v1.Buttons:GetChildren()) do
                        if tostring(v2) ~= "GroupWorkers" and tostring(v2) ~= "GroupGun" and tostring(v2) ~= "FriendlyBloater" and tostring(v2) ~= "General" and tostring(v2) ~= "Spartan" and tostring(v2) ~= "Minigun" then
                            -- local separatedText = string.split(tostring(v2.BillboardGui.Frame.CostFrame.Value.Text), "$")
                            -- local cost = string.gsub(separatedText[2], ",", "")
							-- print("here")
                            -- if game.Players.LocalPlayer.leaderstats.Cash.Value > tonumber(cost) then
							-- 	print("5")
                            --     firetouchinterest(v2, LocalPlayer.PrimaryPart, 0)
                            --     wait(0.01)
                            --     firetouchinterest(v2, LocalPlayer.PrimaryPart, 1)
                            -- end
                            firetouchinterest(v2, LocalPlayer.PrimaryPart, 0)
                            wait(0.01)
                            firetouchinterest(v2, LocalPlayer.PrimaryPart, 1)
                        end
                    end

					for i3,v3 in pairs(v1.Essentials:GetChildren()) do
						if tostring(v3) == "PrestigeButton" then
							firetouchinterest(v3, LocalPlayer.PrimaryPart, 0)
							wait(0.01)
							firetouchinterest(v3, LocalPlayer.PrimaryPart, 1)
						end
					end

                end
            end
            wait(0.01)
        end
	end)

-- Codes
	local code = Window:NewTab("Codes")
	local codesection = code:NewSection("Redeem all Known Codes until 12th April 2023")

	codesection:NewButton("Click to Redeem all Twitter Codes","Created on 12th April 2023 By Sora :>" , function ()
		game:GetService("ReplicatedStorage").Remotes.Codes.RedeemCode:InvokeServer("20000likes")
		game:GetService("ReplicatedStorage").Remotes.Codes.RedeemCode:InvokeServer("10000likes")
		game:GetService("ReplicatedStorage").Remotes.Codes.RedeemCode:InvokeServer("5000likes")
		game:GetService("ReplicatedStorage").Remotes.Codes.RedeemCode:InvokeServer("2000likes")
		game:GetService("ReplicatedStorage").Remotes.Codes.RedeemCode:InvokeServer("1000likes")
		game:GetService("ReplicatedStorage").Remotes.Codes.RedeemCode:InvokeServer("500likes")
		game:GetService("ReplicatedStorage").Remotes.Codes.RedeemCode:InvokeServer("bloater1")
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