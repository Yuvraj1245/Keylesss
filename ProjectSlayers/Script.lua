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
	Title = "Welcome!",
	Content = "Key system has been removed.\nEnjoy using the script without any key input 🐱"
})

-- Add your features below this line
-- Example button:
Tabs1.Main:AddButton({
	Title = "Feature Button",
	Description = "This is where your real feature would be executed",
	Callback = function()
		print("Feature activated")
	end
})

Window:SelectTab(1)
