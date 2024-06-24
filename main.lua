local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Speed Demon Boss Fight Script",
   LoadingTitle = "Loading",
   LoadingSubtitle = "by Flowey",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = ""
   },
   Discord = {
      Enabled = false,
      Invite = "https://discord.gg/6eHBx88PS3", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = false- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided",
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local MainTab = Window:CreateTab("Home", nil) -- Title, Image
local MainSection = Tab:CreateSection("Main")

Rayfield:Notify({
   Title = "Execution Successful",
   Content = "Script has succesfully executed",
   Duration = 6.5,
   Image = nil,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Okay!",
         Callback = function()
         print("The user tapped Okay!")
      end
   },
},
})

local Button = MainTab:CreateButton({
   Name = "God Mode",
   Callback = function()
    local Player = game:GetService("Players").LocalPlayer
local character = Player.Character or Player.CharacterAdded:Wait()
local HumanoidRootPart = character:WaitForChild("HumanoidRootPart")
-- setting speed
local Humanoid =  character:WaitForChild("Humanoid")
if Humanoid then
Humanoid.WalkSpeed = 1000
   end,
})

local Button = Tab:CreateButton({
   Name = "Instant Kill Bosses",
   Callback = function()
     local Player = game:GetService("Players").LocalPlayer
local character = Player.Character or Player.CharacterAdded:Wait()
local HumanoidRootPart = character:WaitForChild("HumanoidRootPart")
-- setting speed
local Humanoid =  character:WaitForChild("Humanoid")
if Humanoid then
Humanoid.WalkSpeed = 1000
   end,
})