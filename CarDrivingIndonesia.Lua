local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()

local UI = Material.Load({
	Title = "Car Driving Indonesia",
	Style = 3,
	SizeX = 500,
	SizeY = 350,
	Theme = "Light",
	ColorOverrides = {
		MainFrame = Color3.fromRGB(255, 0, 0)
	}
})

local Page = UI.New({
	Title = "Main"
})

local Page2 = UI.New({
	Title = "Player"
})

Page.Button({
	Text = "FE Deletes Map",
	Callback = function()
		game.ReplicatedStorage.DeleteCar:FireServer(Workspace.Map)
	end,
	Menu = {
		Information = function(self)
			UI.Banner({
				Text = "FE Deletes the Map"            
			})
		end,
		Test = function(self) 
			table.foreach(self, print)
		end
	}
})

local walkspeed = Page2.Slider({
	Text = "Walkspeed",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end,
	Min = 200,
	Max = 400,
	Def = 300
})

local jumppower = Page2.Slider({
	Text = "Jumppower",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	end,
	Min = 200,
	Max = 400,
	Def = 300
})
