local Lubrew = require(game.ReplicatedStorage.Lubrew)

local state = Lubrew:newState()
state:Register(require(script.SampleComponent), "TestComponent")

local Part = state:new "ScreenGui" {
	Parent = game:GetService("Players").LocalPlayer.PlayerGui;
}
:Children {
	state:new "TestComponent" {
		Color = Color3.fromRGB(54, 52, 182)
	}
}