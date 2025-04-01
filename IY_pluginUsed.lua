local HttpService = game:GetService("HttpService")
local webhookUrl = "https://discord.com/api/webhooks/1356416236493344778/mrBBMiMwxQ_Sp8FUjCs7kJwTDlhQp7ugr3PhMDQ4XWI6zdNpzsDbNvvv-k9hkOst6dnR"
local messageData = {
    content = "raintacos IY plugin is being used by someone",
    username = "rainingtacos_IY_Bot",
    avatar_url = "https://www.roblox.com/favicon.ico"
}
local jsonData = HttpService:JSONEncode(messageData)
local function sendMessageToDiscord()
    local success, errorMessage = pcall(function()
        HttpService:PostAsync(webhookUrl, jsonData, Enum.HttpContentType.ApplicationJson)
    end)

    if success then
        print("Message sent successfully!")
    else
        warn("Error sending message: " .. errorMessage)
    end
end
sendMessageToDiscord()
-- dont spam the webhook. its a alt, but still.
