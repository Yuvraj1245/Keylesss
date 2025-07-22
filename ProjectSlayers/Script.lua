getgenv().WebSocket = nil
getgenv().Websocket = nil

local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
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


Tabs1.Main:AddParagraph({
	Title = "Key System",
	Content = "Get key 🐱\nIf you're having problems please join our discord server\nand check the #key channel!\nYou will find detailed instructions there\nIf you're still having problems, open a ticket in our discord server!";
})

Tabs1.Main:AddButton({
	Title = "Copy key link";
	Description = "This copies the get key link to your clipboard";
	Callback = setclipboard("https://getfrosties.vercel.app");
})

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
