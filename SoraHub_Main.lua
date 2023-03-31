local key = loadstring(game:HttpGet("https://pastebin.com/raw/Ab3e8maX"))()
getgenv().webhooklink = "https://dis".."cord.com/api/webh".."ooks/1091470199".."280119899/5Ul_cv".."9LsAUCFZKztqXCXsE7xupzjGTXH4cPt_aN3G".."OSitDFSYNotTXO4RKAo7TVcYAs"

loadstring(game:HttpGet("https://raw.githubusercontent.com/SoraAurora/SoraHub/main/SoraHub_Webhook_Login.lua"))()

function begin()
	rconsoleclear()
	rconsolename("Sora Hub Key System")
	rconsoleprint("@@LIGHT_CYAN@@")
	rconsoleprint("_________________________________________________________________\n\n")
	rconsoleprint(".d8888.  .d88b.  d8888b.  .d8b.       db   db db    db d8888b. \n88'  YP .8P  Y8. 88  `8D d8' `8b      88   88 88    88 88  `8D \n`8bo.   88    88 88oobY' 88ooo88      88ooo88 88    88 88oooY' \n  `Y8b. 88    88 88`8b   88~~~88      88~~~88 88    88 88~~~b. \ndb   8D `8b  d8' 88 `88. 88   88      88   88 88b  d88 88   8D \n`8888Y'  `Y88P'  88   YD YP   YP      YP   YP ~Y8888P' Y8888P' \n\n")
	rconsoleprint("_________________________________________________________________\n\n")
	rconsoleinfo("Get Key: https://pastebin.com/raw/9DgdvFtm")
	rconsoleprint('@@LIGHT_CYAN@@')
	rconsoleprint("Enter Key: ")
	local input = rconsoleinput()

	if input == key then
		rconsoleinfo("Correct Key!")
		rconsoleinfo("Loading...")
		wait(2)
		rconsoleclose()
		SoraHub()
	else
		rconsoleclear()
		rconsoleprint("@@LIGHT_CYAN@@")
		rconsoleprint("_________________________________________________________________\n\n")
		rconsoleprint(".d8888.  .d88b.  d8888b.  .d8b.       db   db db    db d8888b. \n88'  YP .8P  Y8. 88  `8D d8' `8b      88   88 88    88 88  `8D \n`8bo.   88    88 88oobY' 88ooo88      88ooo88 88    88 88oooY' \n  `Y8b. 88    88 88`8b   88~~~88      88~~~88 88    88 88~~~b. \ndb   8D `8b  d8' 88 `88. 88   88      88   88 88b  d88 88   8D \n`8888Y'  `Y88P'  88   YD YP   YP      YP   YP ~Y8888P' Y8888P' \n\n")
		rconsoleprint("_________________________________________________________________\n\n")
		rconsoleprint("@@LIGHT_RED@@")
		rconsoleprint("Incorrect Key!")
		wait(1.5)
		rconsoleclear()
		begin()
	end
end

function SoraHub()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/SoraAurora/SoraHub/main/SoraHub_Webhook_Hub.lua"))()
	if game.PlaceId == 8884433153 then -- Collect all pets

		loadstring(game:HttpGet("https://raw.githubusercontent.com/SoraAurora/SoraHub/main/SoraHub_Collect_the_Pets.lua"))()

		game:GetService("StarterGui"):SetCore("SendNotification",{
			Title = "Game Found!", -- Required
			Text = "Sora Hub - Collect All Pets!", -- Required
			Icon = "rbxassetid://12935455887", -- Optional
			Duration = 5
		})

	elseif game.PlaceId == 11819744486 then -- Monster Merge Simulator

		loadstring(game:HttpGet("https://raw.githubusercontent.com/SoraAurora/SoraHub/main/SoraHub_Monster_Merge_Simulator.lua"))()

		game:GetService("StarterGui"):SetCore("SendNotification",{
			Title = "Game Found!", -- Required
			Text = "Sora Hub - Monster Merge Simulator!", -- Required
			Icon = "rbxassetid://12935455887", -- Optional
			Duration = 5
		})

	elseif game.PlaceId == 10549069562 then -- Weapon Crafting Simulator

		loadstring(game:HttpGet("https://raw.githubusercontent.com/SoraAurora/SoraHub/main/SoraHub_Weapon_Crafting_Simulator.lua"))()

		game:GetService("StarterGui"):SetCore("SendNotification",{
			Title = "Game Found!", -- Required
			Text = "Sora Hub - Weapon Crafting Simulator!", -- Required
			Icon = "rbxassetid://12935455887", -- Optional
			Duration = 5
		})

	elseif game.PlaceId == 12289293395 then -- Boxing Fighters Simulator

		loadstring(game:HttpGet("https://raw.githubusercontent.com/SoraAurora/SoraHub/main/SoraHub_Boxing_Fighters_Simulator.lua"))()

		game:GetService("StarterGui"):SetCore("SendNotification",{
			Title = "Game Found!", -- Required
			Text = "Sora Hub - Boxing Fighters Simulator", -- Required
			Icon = "rbxassetid://12935455887", -- Optional
			Duration = 5
		})

	else -- Unnamed Esp

		loadstring(game:HttpGet("https://pastebin.com/raw/n4VDYyrP"))()

		game:GetService("StarterGui"):SetCore("SendNotification",{ -- Unnamed ESP
			Title = "Game Not Found", -- Required
			Text = "Unnamed Esp Running", -- Required
			Icon = "rbxassetid://12935455887", -- Optional
			Duration = 5
		})

	end
end

begin()
