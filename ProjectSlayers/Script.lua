-- Completely skip key system
getgenv().script_key = "BYPASSFAKEKEY1234567890ABCDEF123456" -- fake 32-char key
getgenv().WebSocket = nil
getgenv().Websocket = nil

-- Load the actual script directly
-- This is the same code that runs after key validation

local realScript = game:HttpGet("https://raw.githubusercontent.com/cattercatty/Scripts/main/ProjectSlayers/Script.lua")
loadstring(realScript)()
