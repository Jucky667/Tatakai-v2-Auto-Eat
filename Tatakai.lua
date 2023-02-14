local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("My Discord Rayzer#7642", "BloodTheme")
local Tab = Window:NewTab("Auto Protein Shake")
local EatSection = Tab:NewSection("Auto Protein Shake")

EatSection:NewToggle("Auto Protein Shake", "Auto Protein Shake", function(Shake)
			getgenv().Milkshake = Shake
			while getgenv().Milkshake do
				task.wait()
				if not game.Players.LocalPlayer:FindFirstChild("XPBoost") then
					game.Players.LocalPlayer.Backpack:FindFirstChild("Protein Shake").Parent = game.Players.LocalPlayer.Character
					game.Players.LocalPlayer.Character:FindFirstChild("Protein Shake"):Activate()
					game.Players.LocalPlayer.Character:FindFirstChild("Protein Shake").Parent = game.Players.LocalPlayer.Backpack
					repeat
						task.wait()
					until game.Players.LocalPlayer:FindFirstChild("XPBoost")
				end
			end
        end)
EatSection:NewToggle("Auto Ramen", "Auto Ramen", function(Ramen)
			getgenv().Ramen = Ramen
			while getgenv().Ramen do
				task.wait(5)
				if tonumber(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.StatusFrame.Hunger.stat.Text:split("/")[1]) < 25 then
					game.Players.LocalPlayer.Backpack:FindFirstChild("Ramen").Parent = game.Players.LocalPlayer.Character
					game.Players.LocalPlayer.Character:FindFirstChild("Ramen"):Activate()
					game.Players.LocalPlayer.Character:FindFirstChild("Ramen").Parent = game.Players.LocalPlayer.Backpack
				end
			end
		end)
EatSection:NewToggle("Auto Burger", "Auto Burger", function(Burger)
	getgenv().Burger = Burger
	while getgenv().Burger do
		task.wait(5)
		if tonumber(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.StatusFrame.Hunger.stat.Text:split("/")[1]) < 25 then
			game.Players.LocalPlayer.Backpack:FindFirstChild("Burger").Parent = game.Players.LocalPlayer.Character
			game.Players.LocalPlayer.Character:FindFirstChild("Burger"):Activate()
			game.Players.LocalPlayer.Character:FindFirstChild("Burger").Parent = game.Players.LocalPlayer.Backpack
		end
	end
end)
