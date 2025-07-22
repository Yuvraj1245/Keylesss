-- preserve any WebSocket settings
getgenv().WebSocket = nil
getgenv().Websocket = nil

-- load Fluent (only used by the key-UI, you can even remove these two lines if you want)
local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

-- load the Luarmor API and set your script ID
local api = loadstring(game:HttpGet("https://sdkapi-public.luarmor.net/library.lua"))()
api.script_id = "590f1ccc9913df943bdbd88635a9d5ca"

-- immediately run the real script (no key prompt)
api.load_script()
