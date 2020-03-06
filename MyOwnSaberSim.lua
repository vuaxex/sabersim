-- Gui to Lua
-- Version: 3.2

-- Instances:

local owlhubsexyaf = Instance.new("ScreenGui")
local circle = Instance.new("ImageLabel")
local logo = Instance.new("ImageLabel")
local uwu = Instance.new("TextLabel")

--Properties:

owlhubsexyaf.Name = "owlhubsexyaf"
owlhubsexyaf.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

circle.Name = "circle"
circle.Parent = owlhubsexyaf
circle.AnchorPoint = Vector2.new(0.5, 0.5)
circle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
circle.BackgroundTransparency = 1.000
circle.ClipsDescendants = true
circle.Position = UDim2.new(0.5, 0, 0.5, 0)
circle.Image = "rbxassetid://200182847"
circle.ImageColor3 = Color3.fromRGB(18, 18, 18)

logo.Name = "logo"
logo.Parent = circle
logo.AnchorPoint = Vector2.new(0.5, 0.5)
logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
logo.BackgroundTransparency = 1.000
logo.ClipsDescendants = true
logo.Position = UDim2.new(0.5, 0, 0.5, 0)
logo.Size = UDim2.new(0, 150, 0, 150)
logo.ZIndex = 2
logo.Image = "http://www.roblox.com/asset/?id=4711644647"

uwu.Name = "uwu"
uwu.Parent = circle
uwu.AnchorPoint = Vector2.new(0.5, 1)
uwu.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
uwu.BackgroundTransparency = 1.000
uwu.Position = UDim2.new(0.5, 0, 0.912, 0)
uwu.Size = UDim2.new(0, 105, 0, 28)
uwu.Text = "DeadHub"
uwu.TextColor3 = Color3.fromRGB(255, 255, 255)
uwu.TextSize = 14.000

-- Scripts:

local function JFJJJ_fake_script() -- uwu.LocalScript 
	local script = Instance.new('LocalScript', uwu)

	function zigzag(X) return math.acos(math.cos(X*math.pi))/math.pi end
	
	counter = 0
	
	while wait(0.1)do
	 script.Parent.TextColor3 = Color3.fromHSV(zigzag(counter),1,1)
	 
	 counter = counter + 0.01
	end
end
coroutine.wrap(JFJJJ_fake_script)()
local function FYJYZ_fake_script() -- owlhubsexyaf.LocalScript 
	local script = Instance.new('LocalScript', owlhubsexyaf)

	local owo = script.Parent.circle
	
	if game:GetService("RunService"):IsStudio() then repeat wait() until game:IsLoaded() else print('free sex') end
	wait(1)
	owo:TweenPosition(UDim2.new(0.5,0,0.5,0),Enum.EasingDirection.In,Enum.EasingStyle.Linear,.7,false,function()
		owo:TweenSize(UDim2.new(0,250,0,250),Enum.EasingDirection.In,Enum.EasingStyle.Linear,.7,false,function() 
			wait(3)
			owo:TweenSize(UDim2.new(0,0,0,0),Enum.EasingDirection.In,Enum.EasingStyle.Linear,.7,false,function()
				print("yes")
			end)
		end)
	end)
end
coroutine.wrap(FYJYZ_fake_script)()



game.StarterGui:SetCore("SendNotification", {
Title = "Welcome "..game.Players.LocalPlayer.Name; -- the title (ofc)
Text = "Thanks for using DeadHub."; -- what the text says (ofc)
Duration = 5; -- how long the notification should in secounds
})
wait(6)
game.StarterGui:SetCore("SendNotification", {
Title = "Loaded"; -- the title (ofc)
Text = ""; -- what the text says (ofc)
Duration = 5; -- how long the notification should in secounds
})




local library = loadstring(game:HttpGet("https://pastebin.com/raw/eWKgbdix", true))()
library.options.underlinecolor = "rainbow"
local w = library:CreateWindow('Local Player')
w:Section('Local Player')
local old = workspace.CurrentCamera.FieldOfView
local s = w:Slider("FOV", {
   min = math.floor(workspace.CurrentCamera.FieldOfView);
   max = 120;
   flag = 'fov'
}, function(v)
   workspace.CurrentCamera.FieldOfView = v;
end)
local b2 = w:Button('Reset FOV', function()
   s:Set(old)
end)

local box = w:Box('WalkSpeed', {
   flag = "ws";
   type = 'number';
}, function(new, old, enter)
   print(new, old, enter)
   game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = tonumber(new)
end)
local b2 = w:Button('Reset WalkSpeed', function()
   game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = 16
end)

local box = w:Box('JumpPower', {
   flag = "ws";
   type = 'number';
}, function(new, old, enter)
   print(new, old, enter)
   game.Players.LocalPlayer.Character.Humanoid.JumpPower = tonumber(new)
end)
local b2 = w:Button('Reset JumpPower', function()
   game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = 50
end)


local f = library:CreateWindow('Farming')
f:Section('Farming')

f:Toggle("Auto-Swing", {flag = "swing"})
f:Toggle("Auto-Sell", {flag = "sell"})

spawn(function()
while wait()do
if f.flags.swing then
pcall(function()
game:GetService("ReplicatedStorage").Events.Clicked:FireServer()
end)
end
end
end)

spawn(function()
while wait(2)do
if f.flags.sell then
pcall(function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(531.092346, 200.647339, 150.699081)
end)
end
end
end)

local q = library:CreateWindow('Auto-Buy')
q:Section('Auto-Buy')

q:Toggle("Auto-Buy Sabers", {flag = "saber"})
q:Toggle("Auto-Buy DNA", {flag = "dna"})

spawn(function()
while wait()do
if q.flags.saber then
pcall(function()
game:GetService("ReplicatedStorage").Events.BuyAll:FireServer("Swords")
end)
end
end
end)

spawn(function()
while wait()do
if q.flags.dna then
pcall(function()
game:GetService("ReplicatedStorage").Events.BuyAll:FireServer("Backpacks")
end)
end
end
end)

local t = library:CreateWindow('Teleports')
t:Section('Teleports')

t:Button("Island 1", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(497.163269, 797.748413, 240.873016)
end)

t:Button("Island 2", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(498.793701, 2651.42139, -359.548798)
end)

t:Button("Island 3", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(695.401794, 7090.38184, -326.242859)
end)

t:Button("Island 4", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(530.813477, 12696.3896, -237.110703)
end)

t:Button("Island 5", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(546.500366, 19437.4316, -49.6235962)
end)

t:Button("Island 6", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(473.713776, 26254.9316, -147.194138)
end)

t:Button("Island 7", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(627.905212, 29798.5879, -31.3698444)
end)

t:Button("Island 8", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(515.227234, 34167.3906, -163.75087)
end)

t:Button("Island 9", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(616.024536, 38092.4961, -158.833725)
end)

t:Button("Island 10", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(622.839783, 42886.4961, -224.958008)
end)

t:Button("Island 11", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(633.66748, 48847.2578, -236.482376)
end)

t:Button("Island 12", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(537.654968, 52641.2578, -208.332428)
end)

t:Button("Island 13", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(538.650513, 57625.1523, -191.238281)
end)

t:Button("Island 14", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(538.01947, 62381.164, -206.479965)
end)

t:Button("Island 15", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(538.697144, 67085.7344, -189.135635)
end)

local e = library:CreateWindow('Extras')
e:Section("UI")

e:Bind("Toggle GUI Key",
{flag = "Toggle", owo = true},
function()
library.toggled = not library.toggled;
for i, data in next, library.queue do
local pos = (library.toggled and data.p or UDim2.new(-1, 0, -0.5,0))
data.w:TweenPosition(pos, (library.toggled and 'Out' or 'In'), 'Quad', 0.15, true)
wait();
end
end)

e:Button("Destroy GUI", function()
game:GetService("CoreGui").ScreenGui:Destroy()
end)



local w = library:CreateWindow('Credits')
w:Label("UI - Wally")
w:Label("Helper - Sovw")
w:Label("Scripts - SelfMade/V3RM")
w:Label("Obf - Sovw")
w:Label("DeadHub - Vuax")
local b = w:Button('Copy Discord Invite', function()
setclipboard("https://discord.gg/yEFUCZa")
end)



--[[
plr = game.Players.LocalPlayer
hum = plr.Character.HumanoidRootPart
mouse = plr:GetMouse()
mouse.KeyDown:connect(function(key)
if key == "e" then
if mouse.Target then
hum.CFrame = CFrame.new(mouse.Hit.x, mouse.Hit.y + 5, mouse.Hit.z)
end
end
end)
]]