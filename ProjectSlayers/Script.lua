getgenv().WebSocket = nil
getgenv().Websocket = nil

local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

local FrostiesVersion = "2"

local Window = Fluent:CreateWindow({
    Title = "Frosties " .. FrostiesVersion,
    SubTitle = "discord.gg/XUUjpeyc3S",
    TabWidth = 160,
    Size = UDim2.fromOffset(550, 280),
    Acrylic = true,
    Theme = "Cat",
    MinimizeKey = Enum.KeyCode.LeftControl
})

local Tabs1 = {
    Main = Window:AddTab({ Title = "Main", Icon = "" }),
}

Tabs1.Main:AddParagraph({
    Title = "Key System Removed",
    Content = "This version runs without a key. Enjoy!",
})

Window:SelectTab(1)
