-- this is used for testing purposes
local HttpService = game:GetService("HttpService")
local webhookUrl = 
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
