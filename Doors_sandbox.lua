local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "JCHUB",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "JCHUB",
   LoadingSubtitle = "by JC_Dev",
   ShowText = "JCHUB", -- for mobile users to unhide rayfield, change if you'd like
   Theme = "DarkBlue", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   ToggleUIKeybind = "K", -- The keybind to toggle the UI visibility (string like "K" or Enum.KeyCode)

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})


local MainTab = Window:CreateTab("Main", nil) -- Title, Image
local PlayerSection = MainTab:CreateSection("Player")
local ExploitTab = Window:CreateTab("Exploits", nil)
local FESection = ExploitTab:CreateSection("FE Cheats")

Rayfield:Notify({
   Title = "JCHUB Is ready to be used!",
   Content = "JCHUB Executed",
   Duration = 6.5,
   Image = 4483362458,
})

local Slider = MainTab:CreateSlider({
   Name = "Walkspeed",
   Range = {0, 1000},
   Increment = 10,
   Suffix = "",
   CurrentValue = 16,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Value)
   end,
})

local InvSection = MainTab:CreateSection("Inventory Exploits")

local Button = MainTab:CreateButton({
   Name = "Crucifix that works on anything (by PenguinManiack)",
   Callback = function()
        _G.Uses = 10000000
        _G.Range = 5000
        _G.OnAnything = true
        _G.Fail = false
        loadstring(game:HttpGet('https://raw.githubusercontent.com/PenguinManiack/Crucifix/main/Crucifix.lua'))()
   end,
})

local Button = MainTab:CreateButton({
   Name = "Rocket Launcher (by notpoiu)",
   Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/notpoiu/Scripts/refs/heads/main/rocketLauncher.lua'))()
   end,
})

local Button = MainTab:CreateButton({
   Name = "Seek plush",
   Callback = function()
        local plr = game.Players.LocalPlayer
        local hum = plr.Character:WaitForChild("Humanoid")

        local plush = game:GetObjects("rbxassetid://13613269677")[1]
        plush.Parent = plr.Backpack
        local anim = hum:LoadAnimation(plush.A.Hold)

        plush.Equipped:Connect(function()
          anim:Play()
        end)
        plush.Unequipped:Connect(function()
          anim:Stop()
        end)

        plush.Activated:Connect(function()
          plush.Toy:Play()
        end)
   end,
})

local Button = ExploitTab:CreateButton({
   Name = "Crucifix (BYPASS COOLDOWN)",
   Callback = function()
        game.ReplicatedStorage.ClientBricks.GetItem:FireServer("Crucifix")
   end,
})

local Button = ExploitTab:CreateButton({
   Name = "Curious Crucifix (BYPASS GAMEPASS)",
   Callback = function()
        game.ReplicatedStorage.ClientBricks.GetItem:FireServer("CuriousCrucifix")
   end,
})

local Button = ExploitTab:CreateButton({
   Name = "Gun (BYPASS GAMEPASS)",
   Callback = function()
        game.ReplicatedStorage.ClientBricks.GetItem:FireServer("Gun")
   end,
})
