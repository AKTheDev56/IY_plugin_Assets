--hi mods :D (if your not a mod, then uh, dont steal my plugin pls :3 (note, the folder creation is for future projects)
local function folderExists(folderPath)
    return pcall(function() return makefolder(folderPath) end)
end

if not folderExists("NachosPluginAssets") then
    makefolder("NachosPluginAssets")
end
local Plugin = {
    ["PluginName"] = "rainingtacos",
    ["PluginCreator"] = "Nachos AKA robloxgamingidk#2927",
    ["PluginDescription"] = "Plays Raining Tacos whenever you want to!",
    ["Commands"] = {
        ["playrainingtacos"] = {
            ["ListName"] = "playrainingtacos",
            ["Description"] = "Plays raining tacos",
            ["Aliases"] = {"raintacos","tacos","tacosrain"},
            ["Function"] = function(args,speaker)
              loadstring(game:HttpGet("https://raw.githubusercontent.com/AKTheDev56/IY_plugin_Assets/refs/heads/main/soundplay.lua",true))()  
            end
        },
	["stoprainingtacos"] = {
            ["ListName"] = "stoprainingtacos",
            ["Description"] = "Stops playing raining tacos",
            ["Aliases"] = {"unraintacos","untacos","untacosrain"},
            ["Function"] = function(args,speaker)
              loadstring(game:HttpGet("https://raw.githubusercontent.com/AKTheDev56/IY_plugin_Assets/refs/heads/main/soundstop.lua",true))()
            end
        },
        ["rainingtacosloop"] = {
            ["ListName"] = "looprainingtacos",
            ["Description"] = "Loops raining tacos",
            ["Aliases"] = {"looptacos","tacoloop","raintacosloop"},
            ["Function"] = function(args,speaker)
              loadstring(game:HttpGet("https://raw.githubusercontent.com/AKTheDev56/IY_plugin_Assets/refs/heads/main/soundlooptrue.lua",true))()
            end
        },
	["unlooprainingtacos"] = {
            ["ListName"] = "unlooprainingtacos",
            ["Description"] = "Un-loops raining tacos",
            ["Aliases"] = {"unlooptacos","untacoloop","unlooptaco"},
            ["Function"] = function(args,speaker)
	      loadstring(game:HttpGet("https://raw.githubusercontent.com/AKTheDev56/IY_plugin_Assets/refs/heads/main/soundloopfalse.lua",true))()
            end
        },
	["rainrealtacos"] = {
            ["ListName"] = "rainrealtacos",
            ["Description"] = "Actually rains tacos",
            ["Aliases"] = {"realraintaco","realtaco"},
            ["Function"] = function(args,speaker)
             loadstring(game:HttpGet("https://raw.githubusercontent.com/AKTheDev56/IY_plugin_Assets/refs/heads/main/raintacos.lua",true))()
            end
        },
	["unrealtacorain"] = {
            ["ListName"] = "unrealraintacos",
            ["Description"] = "Stops actually raining tacos",
            ["Aliases"] = {"unrealtaco","unrainrealtacos"},
            ["Function"] = function(args,speaker)
              loadstring(game:HttpGet("https://raw.githubusercontent.com/AKTheDev56/IY_plugin_Assets/refs/heads/main/untacorain.lua",true))()
            end
        }
		

    }
}

return Plugin
--this was surpriseingly difficult
