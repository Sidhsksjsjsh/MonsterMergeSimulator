local OrionLib = loadstring(game:HttpGet("https://pastebin.com/raw/NMEHkVTb"))()

local Window = OrionLib:MakeWindow({Name = "VIP Turtle Hub V3", HidePremium = false, SaveConfig = true, ConfigFolder = "TurtleFi"})

local T1 = Window:MakeTab({
Name = "Farm",
Icon = "rbxassetid://",
PremiumOnly = false
})

local T2 = Window:MakeTab({
Name = "Upgrade",
Icon = "rbxassetid://",
PremiumOnly = false
})

local S1 = T2:AddSection({
Name = "Auto Upgrade"
})

S1:AddToggle({
Name = "Upgrade Level Monster",
Default = false,
Callback = function(Value)
      Active_Upgrade_A1 = Value
      while wait() do
      if Active_Upgrade_A1 == false then break end
local args = {
    [1] = "SlimeQuality"
}

game:GetService("ReplicatedStorage").Packages.Knit.Services.UpgradeService.RE.Upgrade:FireServer(unpack(args))
end
end
})

S1:AddToggle({
Name = "Upgrade Monster Capacity",
Default = false,
Callback = function(Value)
      Active_Upgrade_A2 = Value
      while wait() do
      if Active_Upgrade_A1 == false then break end
local args = {
    [1] = "SlimeCapacity"
}

game:GetService("ReplicatedStorage").Packages.Knit.Services.UpgradeService.RE.Upgrade:FireServer(unpack(args))
end
end
})

S1:AddToggle({
Name = "Upgrade Monster Spawn",
Default = false,
Callback = function(Value)
      Active_Upgrade_A3 = Value
      while wait() do
      if Active_Upgrade_A1 == false then break end
local args = {
    [1] = "SpawnTime"
}

game:GetService("ReplicatedStorage").Packages.Knit.Services.UpgradeService.RE.Upgrade:FireServer(unpack(args))
end
end
})

S1:AddToggle({
Name = "Upgrade POOP",
Default = false,
Callback = function(Value)
      Active_Upgrade_A4 = Value
      while wait() do
      if Active_Upgrade_A1 == false then break end
local args = {
    [1] = "PlortingSpeed"
}

game:GetService("ReplicatedStorage").Packages.Knit.Services.UpgradeService.RE.Upgrade:FireServer(unpack(args))
end
end
})

T1:AddTextbox({
Name = "Type monster level",
Default = "Level",
TextDisappear = true,
Callback = function(Value)
     LevelMonster = Value
end
})

T1:AddToggle({
Name = "Auto Click",
Default = false,
Callback = function(Value)
      Active_Click = Value
      while wait() do
      if Active_Click == false then break end
      print("Error! Script got patched!")
end
end
})

T1:AddToggle({
Name = "Auto hold Monster",
Default = false,
Callback = function(Value)
     Active_Hold = Value
     while wait() do
     if Active_Hold == false then break end
local args = {
    [1] = LevelMonster
}

game:GetService("ReplicatedStorage").Packages.Knit.Services.BaseService.RE.HandleItem:FireServer(unpack(args))
end
end
})

T1:AddToggle({
Name = "Auto drop Monster",
Default = false,
Callback = function(Value)
     Active_Drop = Value
     while wait() do
      if Active_Drop == false then break end
game:GetService("ReplicatedStorage").Packages.Knit.Services.BaseService.RE.DropItem:FireServer()
end
end
})
