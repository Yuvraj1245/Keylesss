getgenv().WebSocket = nil
getgenv().Websocket = nil

local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

local FrostiesVersion = "2"

local Window = Fluent:CreateWindow({
	Title = "Frosties ".. FrostiesVersion,
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

Window:SelectTab(1)
local Input = Tabs1.Main:AddInput("Input", {
	Title = "Insert Key Here",
	Default = "",
	Placeholder = "Placeholder",
	Numeric = false, -- Only allows numbers
	Finished = false, -- Only calls callback when you press enter
	Callback = function(Value)
		ret = checkKey(Value);
		if ret == true then
			Window:Destroy();
		end;
	end
})
