-- gOb RSC Hub, gui edited by gObl00x --
-- Instances:
game:GetService("StarterGui"):SetCore("SendNotification", { 
	Title = "RSC Hub";
	Text = "Originaly by Melon, Edited by gOb..";
	Icon = "rbxthumb://type=Asset&id=126389658690593&w=150&h=150"})
Duration = 16;
local ScreenGui = Instance.new("ScreenGui")
local OpenFrame = Instance.new("Frame")
local GUI = Instance.new("ScreenGui")
local OpenButton = Instance.new("TextButton")
local OpenBeautyFrame = Instance.new("Frame")
local MainFrame = Instance.new("Frame")
local MainFrameBeautyA = Instance.new("Frame")
local CloseButton = Instance.new("TextButton")
local EXPLOIT1 = Instance.new("TextButton")
local MainFrameCenterBeautyA = Instance.new("Frame")
local MainFrameCenterBeautyA_2 = Instance.new("Frame")
local EXPLOIT5 = Instance.new("TextButton")
local EXPLOIT9 = Instance.new("TextButton")
local EXPLOIT6 = Instance.new("TextButton")
local EXPLOIT7 = Instance.new("TextButton")
local EXPLOIT8 = Instance.new("TextButton")
local EXPLOIT10 = Instance.new("TextButton")
local EXPLOIT11 = Instance.new("TextButton")
local EXPLOIT12 = Instance.new("TextButton")
local EXPLOIT2 = Instance.new("TextButton")
local EXPLOIT3 = Instance.new("TextButton")
local EXPLOIT4 = Instance.new("TextButton")
local MainFrameBeautyB = Instance.new("Frame")


--Properties:
GUI.Name = "GUI"
GUI.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

OpenFrame.Name = "OpenFrame"
OpenFrame.Parent = GUI
OpenFrame.Active = true
OpenFrame.BackgroundColor3 = Color3.fromRGB(1, 0, 0)
OpenFrame.BorderSizePixel = 0
OpenFrame.Position = UDim2.new(0, 0, 0.629155695, 0)
OpenFrame.Size = UDim2.new(0, 72, 0, 27)

OpenButton.Name = "OpenButton"
OpenButton.Parent = OpenFrame
OpenButton.BackgroundColor3 = Color3.fromRGB(1, 0, 0)
OpenButton.BackgroundTransparency = 1.000
OpenButton.BorderSizePixel = 0
OpenButton.Position = UDim2.new(0.0305736773, 0, 0.116329789, 0)
OpenButton.Size = UDim2.new(0, 66, 0, 20)
OpenButton.Font = Enum.Font.Cartoon
OpenButton.Text = "gOb RSC"
OpenButton.TextColor3 = Color3.fromRGB(255, 0, 0)
OpenButton.TextScaled = true
OpenButton.TextSize = 14.000
OpenButton.TextWrapped = true
OpenButton.MouseButton1Down:connect(function()
MainFrame.Visible = true
OpenFrame.Visible = false
MainFrameBeautyA.Visible = true
MainFrameBeautyB.Visible = true
MainFrameCenterBeautyA_2.Visible = true
MainFrameCenterBeautyA.Visible = true
end)

OpenBeautyFrame.Name = "OpenBeautyFrame"
OpenBeautyFrame.Parent = OpenFrame
OpenBeautyFrame.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
OpenBeautyFrame.BorderSizePixel = 0
OpenBeautyFrame.Position = UDim2.new(0.988907099, 0, -0.148148149, 0)
OpenBeautyFrame.Size = UDim2.new(0, 3, 0, 33)

MainFrame.Name = "MainFrame"
MainFrame.Parent = GUI
MainFrame.Active = true
MainFrame.BackgroundColor3 = Color3.fromRGB(1, 0, 0)
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0.30754894, 0, 0.235294133, 0)
MainFrame.Size = UDim2.new(0, 412, 0, 263)
MainFrame.Visible = false
MainFrame.Draggable = true

MainFrameBeautyA.Name = "MainFrameBeautyA"
MainFrameBeautyA.Parent = MainFrame
MainFrameBeautyA.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
MainFrameBeautyA.BorderSizePixel = 0
MainFrameBeautyA.Size = UDim2.new(0, 412, 0, 22)
MainFrameBeautyA.Visible = false

CloseButton.Name = "CloseButton"
CloseButton.Parent = MainFrameBeautyA
CloseButton.BackgroundColor3 = Color3.fromRGB(1, 0, 0)
CloseButton.BackgroundTransparency = 1.000
CloseButton.BorderSizePixel = 0
CloseButton.Position = UDim2.new(0.905339777, 0, 0, 0)
CloseButton.Size = UDim2.new(0, 39, 0, 22)
CloseButton.Font = Enum.Font.Cartoon
CloseButton.Text = "Close"
CloseButton.TextColor3 = Color3.fromRGB(255, 0, 0)
CloseButton.TextScaled = true
CloseButton.TextSize = 14.000
CloseButton.TextWrapped = true
CloseButton.MouseButton1Down:connect(function()
OpenFrame.Visible = true
MainFrame.Visible = false
MainFrameBeautyA.Visible = false
MainFrameBeautyB.Visible = false
MainFrameCenterBeautyA_2.Visible = false
MainFrameCenterBeautyA.Visible = false
end)

EXPLOIT1.Name = "EXPLOIT1"
EXPLOIT1.Parent = MainFrame
EXPLOIT1.BackgroundColor3 = Color3.fromRGB(1, 0, 0)
EXPLOIT1.BorderSizePixel = 0
EXPLOIT1.Position = UDim2.new(0.024271844, 0, 0.129277572, 0)
EXPLOIT1.Size = UDim2.new(0, 92, 0, 32)
EXPLOIT1.Font = Enum.Font.Cartoon
EXPLOIT1.Text = "MrByeBye"
EXPLOIT1.TextColor3 = Color3.fromRGB(255, 0, 0)
EXPLOIT1.TextScaled = true
EXPLOIT1.TextSize = 14.000
EXPLOIT1.TextWrapped = true
EXPLOIT1.MouseButton1Down:connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/gObl00x/My-Converts/refs/heads/main/Mr.Bye%20Bye.lua?token=GHSAT0AAAAAADFI4YZJORE4MPY4UN5FHAIQ2FSODYQ"))()
end)

MainFrameCenterBeautyA.Name = "MainFrameCenterBeautyA"
MainFrameCenterBeautyA.Parent = MainFrame
MainFrameCenterBeautyA.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
MainFrameCenterBeautyA.BorderSizePixel = 0
MainFrameCenterBeautyA.Position = UDim2.new(0.288834959, 0, 0.129277572, 0)
MainFrameCenterBeautyA.Size = UDim2.new(0, 8, 0, 185)
MainFrameCenterBeautyA.Visible = false

MainFrameCenterBeautyA_2.Name = "MainFrameCenterBeautyA"
MainFrameCenterBeautyA_2.Parent = MainFrame
MainFrameCenterBeautyA_2.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
MainFrameCenterBeautyA_2.BorderSizePixel = 0
MainFrameCenterBeautyA_2.Position = UDim2.new(0.699029148, 0, 0.129277557, 0)
MainFrameCenterBeautyA_2.Size = UDim2.new(0, 8, 0, 185)
MainFrameCenterBeautyA_2.Visible = false

EXPLOIT5.Name = "EXPLOIT5"
EXPLOIT5.Parent = MainFrame
EXPLOIT5.BackgroundColor3 = Color3.fromRGB(1, 0, 0)
EXPLOIT5.BorderSizePixel = 0
EXPLOIT5.Position = UDim2.new(0.388349503, 0, 0.129277572, 0)
EXPLOIT5.Size = UDim2.new(0, 92, 0, 32)
EXPLOIT5.Font = Enum.Font.Cartoon
EXPLOIT5.Text = "Goner"
EXPLOIT5.TextColor3 = Color3.fromRGB(255, 0, 0)
EXPLOIT5.TextScaled = true
EXPLOIT5.TextSize = 14.000
EXPLOIT5.TextWrapped = true
EXPLOIT5.MouseButton1Down:connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/gObl00x/My-Converts/refs/heads/main/Goner.lua?token=GHSAT0AAAAAADFI4YZID4REKD5OCYG6CAAA2FSOBTA"))()
end)

EXPLOIT9.Name = "EXPLOIT9"
EXPLOIT9.Parent = MainFrame
EXPLOIT9.BackgroundColor3 = Color3.fromRGB(1, 0, 0)
EXPLOIT9.BorderSizePixel = 0
EXPLOIT9.Position = UDim2.new(0.75242722, 0, 0.129277572, 0)
EXPLOIT9.Size = UDim2.new(0, 92, 0, 32)
EXPLOIT9.Font = Enum.Font.Cartoon
EXPLOIT9.Text = "Soul Reaper"
EXPLOIT9.TextColor3 = Color3.fromRGB(255, 0, 0)
EXPLOIT9.TextScaled = true
EXPLOIT9.TextSize = 14.000
EXPLOIT9.TextWrapped = true
EXPLOIT9.MouseButton1Down:connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/gObl00x/My-Converts/refs/heads/main/Soul%20Reaper.lua?token=GHSAT0AAAAAADFI4YZJPC5K3MTG7ML3KBOS2FSOFPQ"))()
end)

EXPLOIT6.Name = "EXPLOIT6"
EXPLOIT6.Parent = MainFrame
EXPLOIT6.BackgroundColor3 = Color3.fromRGB(1, 0, 0)
EXPLOIT6.BorderSizePixel = 0
EXPLOIT6.Position = UDim2.new(0.388349503, 0, 0.323193908, 0)
EXPLOIT6.Size = UDim2.new(0, 92, 0, 32)
EXPLOIT6.Font = Enum.Font.Cartoon
EXPLOIT6.Text = "Mr.Pixels"
EXPLOIT6.TextColor3 = Color3.fromRGB(255, 0, 0)
EXPLOIT6.TextScaled = true
EXPLOIT6.TextSize = 14.000
EXPLOIT6.TextWrapped = true
EXPLOIT6.MouseButton1Down:connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/gObl00x/My-Converts/refs/heads/main/Mr.Pixels.lua?token=GHSAT0AAAAAADFI4YZJ5U3UCFVE7IONJUXM2FSOHLA"))()
end)

EXPLOIT7.Name = "EXPLOIT7"
EXPLOIT7.Parent = MainFrame
EXPLOIT7.BackgroundColor3 = Color3.fromRGB(1, 0, 0)
EXPLOIT7.BorderSizePixel = 0
EXPLOIT7.Position = UDim2.new(0.388349503, 0, 0.520912528, 0)
EXPLOIT7.Size = UDim2.new(0, 92, 0, 32)
EXPLOIT7.Font = Enum.Font.Cartoon
EXPLOIT7.Text = "Sin Dragon"
EXPLOIT7.TextColor3 = Color3.fromRGB(255, 0, 0)
EXPLOIT7.TextScaled = true
EXPLOIT7.TextSize = 14.000
EXPLOIT7.TextWrapped = true
EXPLOIT7.MouseButton1Down:connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/gObl00x/My-Converts/refs/heads/main/Sin%20Dragon.lua?token=GHSAT0AAAAAADFI4YZJR2OJCBDGRN57GQPE2FSOJOQ"))()
end)

EXPLOIT8.Name = "EXPLOIT8"
EXPLOIT8.Parent = MainFrame
EXPLOIT8.BackgroundColor3 = Color3.fromRGB(1, 0, 0)
EXPLOIT8.BorderSizePixel = 0
EXPLOIT8.Position = UDim2.new(0.388349503, 0, 0.711026609, 0)
EXPLOIT8.Size = UDim2.new(0, 92, 0, 32)
EXPLOIT8.Font = Enum.Font.Cartoon
EXPLOIT8.Text = "Server Admin"
EXPLOIT8.TextColor3 = Color3.fromRGB(255, 0, 0)
EXPLOIT8.TextScaled = true
EXPLOIT8.TextSize = 14.000
EXPLOIT8.TextWrapped = true
EXPLOIT8.MouseButton1Down:connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/gObl00x/My-Converts/refs/heads/main/Server%20Admin.lua?token=GHSAT0AAAAAADFI4YZINN4YCTZI5Q4BSVRI2FSOLLA"))()
end)

EXPLOIT10.Name = "EXPLOIT10"
EXPLOIT10.Parent = MainFrame
EXPLOIT10.BackgroundColor3 = Color3.fromRGB(1, 0, 0)
EXPLOIT10.BorderSizePixel = 0
EXPLOIT10.Position = UDim2.new(0.75242722, 0, 0.323193908, 0)
EXPLOIT10.Size = UDim2.new(0, 92, 0, 32)
EXPLOIT10.Font = Enum.Font.Cartoon
EXPLOIT10.Text = "Chara"
EXPLOIT10.TextColor3 = Color3.fromRGB(255, 0, 0)
EXPLOIT10.TextScaled = true
EXPLOIT10.TextSize = 14.000
EXPLOIT10.TextWrapped = true
EXPLOIT10.MouseButton1Down:connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/gObl00x/My-Converts/refs/heads/main/Chara.lua?token=GHSAT0AAAAAADFI4YZJUKGKGQJGHGX4ZQ3I2FSONUQ"))()
end)

EXPLOIT11.Name = "EXPLOIT11"
EXPLOIT11.Parent = MainFrame
EXPLOIT11.BackgroundColor3 = Color3.fromRGB(1, 0, 0)
EXPLOIT11.BorderSizePixel = 0
EXPLOIT11.Position = UDim2.new(0.75242722, 0, 0.520912528, 0)
EXPLOIT11.Size = UDim2.new(0, 92, 0, 32)
EXPLOIT11.Font = Enum.Font.Cartoon
EXPLOIT11.Text = "Killbot V.0 (SIGMA)"
EXPLOIT11.TextColor3 = Color3.fromRGB(255, 0, 0)
EXPLOIT11.TextScaled = true
EXPLOIT11.TextSize = 14.000
EXPLOIT11.TextWrapped = true
EXPLOIT11.MouseButton1Down:connect(function()
loadstring(game:HttpGet("https://pastebin.com/raw/yraarJ7m"))()
end)

EXPLOIT12.Name = "EXPLOIT12"
EXPLOIT12.Parent = MainFrame
EXPLOIT12.BackgroundColor3 = Color3.fromRGB(1, 0, 0)
EXPLOIT12.BorderSizePixel = 0
EXPLOIT12.Position = UDim2.new(0.75242722, 0, 0.711026609, 0)
EXPLOIT12.Size = UDim2.new(0, 92, 0, 32)
EXPLOIT12.Font = Enum.Font.Cartoon
EXPLOIT12.Text = "The Sun Is A Deadly Laser"
EXPLOIT12.TextColor3 = Color3.fromRGB(255, 0, 0)
EXPLOIT12.TextScaled = true
EXPLOIT12.TextSize = 14.000
EXPLOIT12.TextWrapped = true
EXPLOIT12.MouseButton1Down:connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/gObl00x/Pendulum-Fixed-AND-Others-Scripts/refs/heads/main/The%20Sun%20Is%20A%20Deadly%20Laser"))()
end)

EXPLOIT2.Name = "EXPLOIT2"
EXPLOIT2.Parent = MainFrame
EXPLOIT2.BackgroundColor3 = Color3.fromRGB(1, 0, 0)
EXPLOIT2.BorderSizePixel = 0
EXPLOIT2.Position = UDim2.new(0.024271844, 0, 0.323193908, 0)
EXPLOIT2.Size = UDim2.new(0, 92, 0, 32)
EXPLOIT2.Font = Enum.Font.Cartoon
EXPLOIT2.Text = "Lost Hope Scythe"
EXPLOIT2.TextColor3 = Color3.fromRGB(255, 0, 0)
EXPLOIT2.TextScaled = true
EXPLOIT2.TextSize = 14.000
EXPLOIT2.TextWrapped = true
EXPLOIT2.MouseButton1Down:connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/gObl00x/My-Converts/refs/heads/main/Lost%20Hope%20Scythe.lua?token=GHSAT0AAAAAADFI4YZJXJHL22ZOWQ4SZMCG2FSOQIA"))()
end)

EXPLOIT3.Name = "EXPLOIT3"
EXPLOIT3.Parent = MainFrame
EXPLOIT3.BackgroundColor3 = Color3.fromRGB(1, 0, 0)
EXPLOIT3.BorderSizePixel = 0
EXPLOIT3.Position = UDim2.new(0.024271844, 0, 0.520912528, 0)
EXPLOIT3.Size = UDim2.new(0, 92, 0, 32)
EXPLOIT3.Font = Enum.Font.Cartoon
EXPLOIT3.Text = "Internal War"
EXPLOIT3.TextColor3 = Color3.fromRGB(255, 0, 0)
EXPLOIT3.TextScaled = true
EXPLOIT3.TextSize = 14.000
EXPLOIT3.TextWrapped = true
EXPLOIT3.MouseButton1Down:connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/gObl00x/My-Converts/refs/heads/main/Internal%20War.lua?token=GHSAT0AAAAAADFI4YZIZXJFZCPPER7SFVMM2FSOSOQ"))()
end)

EXPLOIT4.Name = "EXPLOIT4"
EXPLOIT4.Parent = MainFrame
EXPLOIT4.BackgroundColor3 = Color3.fromRGB(1, 0, 0)
EXPLOIT4.BorderSizePixel = 0
EXPLOIT4.Position = UDim2.new(0.024271844, 0, 0.711026609, 0)
EXPLOIT4.Size = UDim2.new(0, 92, 0, 32)
EXPLOIT4.Font = Enum.Font.Cartoon
EXPLOIT4.Text = "Memeus V2.01"
EXPLOIT4.TextColor3 = Color3.fromRGB(255, 0, 0)
EXPLOIT4.TextScaled = true
EXPLOIT4.TextSize = 14.000
EXPLOIT4.TextWrapped = true
EXPLOIT4.MouseButton1Down:connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/gObl00x/Pendulum-Fixed-AND-Others-Scripts/refs/heads/main/Memeus%20V2"))()
end)

MainFrameBeautyB.Name = "MainFrameBeautyB"
MainFrameBeautyB.Parent = MainFrame
MainFrameBeautyB.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
MainFrameBeautyB.BorderSizePixel = 0
MainFrameBeautyB.Position = UDim2.new(0, 0, 0.916349828, 0)
MainFrameBeautyB.Size = UDim2.new(0, 412, 0, 22)
MainFrameBeautyB.Visible = false
