local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))()
local LBLG = Instance.new("ScreenGui", getParent)
local LBL = Instance.new("TextLabel", getParent)
local player = game.Players.LocalPlayer

LBLG.Name = "LBLG"
LBLG.Parent = game.CoreGui
LBLG.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
LBLG.Enabled = true
LBL.Name = "LBL"
LBL.Parent = LBLG
LBL.BackgroundColor3 = Color3.new(1, 1, 1)
LBL.BackgroundTransparency = 1
LBL.BorderColor3 = Color3.new(0, 0, 0)
LBL.Position = UDim2.new(0.75,0,0.010,0)
LBL.Size = UDim2.new(0, 133, 0, 30)
LBL.Font = Enum.Font.GothamSemibold
LBL.Text = "TextLabel"
LBL.TextColor3 = Color3.new(1, 1, 1)
LBL.TextScaled = true
LBL.TextSize = 14
LBL.TextWrapped = true
LBL.Visible = true

local FpsLabel = LBL
local Heartbeat = game:GetService("RunService").Heartbeat
local LastIteration, Start
local FrameUpdateTable = { }

local function HeartbeatUpdate()
	LastIteration = tick()
	for Index = #FrameUpdateTable, 1, -1 do
		FrameUpdateTable[Index + 1] = (FrameUpdateTable[Index] >= LastIteration - 1) and FrameUpdateTable[Index] or nil
	end
	FrameUpdateTable[1] = LastIteration
	local CurrentFPS = (tick() - Start >= 1 and #FrameUpdateTable) or (#FrameUpdateTable / (tick() - Start))
	CurrentFPS = CurrentFPS - CurrentFPS % 1
	FpsLabel.Text = ("北京时间:"..os.date("%H").."时"..os.date("%M").."分"..os.date("%S"))
end
Start = tick()
Heartbeat:Connect(HeartbeatUpdate)
local Window = OrionLib:MakeWindow({Name = "YY", HidePremium = false, SaveConfig = true,IntroText = "YY", ConfigFolder = "YY"})

game:GetService("StarterGui"):SetCore("SendNotification",{ Title = "YY"; Text ="YY"; Duration = 4; })

local about = Window:MakeTab({
    Name = "YY制作",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false

})

about:AddParagraph("作者快手号4370770866")
about:AddParagraph("更新功能和修复部分功能")
about:AddParagraph("作者：牢大爱喝冰红茶")
about:AddParagraph("世界上最垃圾的脚本")

OrionLib:MakeNotification({
	Name = "YY",
	Content = "欢迎使用YY",
	Image = "rbxassetid://4483345998",
	Time = 2

})

local Tab = Window:MakeTab({

    Name = "绘制",

    Icon = "rbxassetid://4483345998",

    PremiumOnly = false

})

local Section = Tab:AddSection({

	Name = "分享状态"

})

Tab:AddSlider({

	Name = "速度",

	Min = 16,

	Max = 200,

	Default = 16,

	Color = Color3.fromRGB(255,255,255),

	Increment = 1,

	ValueName = "数值",

	Callback = function(Value)

		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value

	end    

})

Tab:AddSlider({

	Name = "跳跃高度",

	Min = 50,

	Max = 200,

	Default = 50,

	Color = Color3.fromRGB(255,255,255),

	Increment = 1,

	ValueName = "数值",

	Callback = function(Value)

		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value

	end    

})

Tab:AddTextbox({

	Name = "跳跃高度设置",

	Default = "",

	TextDisappear = true,

	Callback = function(Value)

		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value

	end

})

Tab:AddTextbox({

	Name = "移动速度设置",

	Default = "",

	TextDisappear = true,

	Callback = function(Value)

		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value

	end

})

Tab:AddTextbox({

	Name = "重力设置",

	Default = "",

	TextDisappear = true,

	Callback = function(Value)

		game.Workspace.Gravity = Value

	end

})

Tab:AddToggle({

	Name = "夜视",

	Default = false,

	Callback = function(Value)

		if Value then

		    game.Lighting.Ambient = Color3.new(1, 1, 1)

		else

		    game.Lighting.Ambient = Color3.new(0, 0, 0)

		end

	end

})

Tab:AddButton({

	Name = "绘制",

	Callback = function()

     loadstring(game:HttpGet(('https://raw.githubusercontent.com/cool83birdcarfly02six/UNIVERSALESPLTX/main/README.md'),true))()

  	end    

})

Tab:AddButton({

	Name = "自瞄",

	Callback = function()

     local fov = 100 local smoothness = 10 local crosshairDistance = 5 local RunService = game:GetService("RunService") local UserInputService = game:GetService("UserInputService") local Players = game:GetService("Players") local Cam = game.Workspace.CurrentCamera local FOVring = Drawing.new("Circle") FOVring.Visible = true FOVring.Thickness = 2 FOVring.Color = Color3.fromRGB(0, 255, 0) FOVring.Filled = false FOVring.Radius = fov FOVring.Position = Cam.ViewportSize / 2 local Player = Players.LocalPlayer local PlayerGui = Player:WaitForChild("PlayerGui") local ScreenGui = Instance.new("ScreenGui") ScreenGui.Name = "FovAdjustGui" ScreenGui.Parent = PlayerGui local Frame = Instance.new("Frame") Frame.Name = "MainFrame" Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30) Frame.BorderColor3 = Color3.fromRGB(128, 0, 128) Frame.BorderSizePixel = 2 Frame.Position = UDim2.new(0.3, 0, 0.3, 0) Frame.Size = UDim2.new(0.4, 0, 0.4, 0) Frame.Active = true Frame.Draggable = true Frame.Parent = ScreenGui local MinimizeButton = Instance.new("TextButton") MinimizeButton.Name = "MinimizeButton" MinimizeButton.Text = "-" MinimizeButton.TextColor3 = Color3.fromRGB(255, 255, 255) MinimizeButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50) MinimizeButton.Position = UDim2.new(0.9, 0, 0, 0) MinimizeButton.Size = UDim2.new(0.1, 0, 0.1, 0) MinimizeButton.Parent = Frame local isMinimized = false MinimizeButton.MouseButton1Click:Connect(function() isMinimized = not isMinimized if isMinimized then Frame:TweenSize(UDim2.new(0.1, 0, 0.1, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.3, true) MinimizeButton.Text = "+" else Frame:TweenSize(UDim2.new(0.4, 0, 0.4, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.3, true) MinimizeButton.Text = "-" end end) local FovLabel = Instance.new("TextLabel") FovLabel.Name = "FovLabel" FovLabel.Text = "自瞄范围" FovLabel.TextColor3 = Color3.fromRGB(255, 255, 255) FovLabel.BackgroundTransparency = 1 FovLabel.Position = UDim2.new(0.1, 0, 0.1, 0) FovLabel.Size = UDim2.new(0.8, 0, 0.2, 0) FovLabel.Parent = Frame local FovSlider = Instance.new("TextBox") FovSlider.Name = "FovSlider" FovSlider.Text = tostring(fov) FovSlider.TextColor3 = Color3.fromRGB(255, 255, 255) FovSlider.BackgroundColor3 = Color3.fromRGB(50, 50, 50) FovSlider.Position = UDim2.new(0.1, 0, 0.3, 0) FovSlider.Size = UDim2.new(0.8, 0, 0.2, 0) FovSlider.Parent = Frame local SmoothnessLabel = Instance.new("TextLabel") SmoothnessLabel.Name = "SmoothnessLabel" SmoothnessLabel.Text = "自瞄平滑度" SmoothnessLabel.TextColor3 = Color3.fromRGB(255, 255, 255) SmoothnessLabel.BackgroundTransparency = 1 SmoothnessLabel.Position = UDim2.new(0.1, 0, 0.5, 0) SmoothnessLabel.Size = UDim2.new(0.8, 0, 0.2, 0) SmoothnessLabel.Parent = Frame local SmoothnessSlider = Instance.new("TextBox") SmoothnessSlider.Name = "SmoothnessSlider" SmoothnessSlider.Text = tostring(smoothness) SmoothnessSlider.TextColor3 = Color3.fromRGB(255, 255, 255) SmoothnessSlider.BackgroundColor3 = Color3.fromRGB(50, 50, 50) SmoothnessSlider.Position = UDim2.new(0.1, 0, 0.7, 0) SmoothnessSlider.Size = UDim2.new(0.8, 0, 0.2, 0) SmoothnessSlider.Parent = Frame local CrosshairDistanceLabel = Instance.new("TextLabel") CrosshairDistanceLabel.Name = "CrosshairDistanceLabel" CrosshairDistanceLabel.Text = "自瞄预判距离" CrosshairDistanceLabel.TextColor3 = Color3.fromRGB(255, 255, 255) CrosshairDistanceLabel.BackgroundTransparency = 1 CrosshairDistanceLabel.Position = UDim2.new(0.1, 0, 0.9, 0) CrosshairDistanceLabel.Size = UDim2.new(0.8, 0, 0.2, 0) CrosshairDistanceLabel.Parent = Frame local CrosshairDistanceSlider = Instance.new("TextBox") CrosshairDistanceSlider.Name = "CrosshairDistanceSlider" CrosshairDistanceSlider.Text = tostring(crosshairDistance) CrosshairDistanceSlider.TextColor3 = Color3.fromRGB(255, 255, 255) CrosshairDistanceSlider.BackgroundColor3 = Color3.fromRGB(50, 50, 50) CrosshairDistanceSlider.Position = UDim2.new(0.1, 0, 1.1, 0) CrosshairDistanceSlider.Size = UDim2.new(0.8, 0, 0.2, 0) CrosshairDistanceSlider.Parent = Frame local targetCFrame = Cam.CFrame local function updateDrawings() local camViewportSize = Cam.ViewportSize FOVring.Position = camViewportSize / 2 FOVring.Radius = fov end local function onKeyDown(input) if input.KeyCode == Enum.KeyCode.Delete then RunService:UnbindFromRenderStep("FOVUpdate") FOVring:Remove() end end UserInputService.InputBegan:Connect(onKeyDown) local function getClosestPlayerInFOV(trg_part) local nearest = nil local last = math.huge local playerMousePos = Cam.ViewportSize / 2 for _, player in ipairs(Players:GetPlayers()) do if player ~= Players.LocalPlayer then local part = player.Character and player.Character:FindFirstChild(trg_part) if part then local ePos, isVisible = Cam:WorldToViewportPoint(part.Position) local distance = (Vector2.new(ePos.x, ePos.y) - playerMousePos).Magnitude if distance < last and isVisible and distance < fov then last = distance nearest = player end end end end return nearest end RunService.RenderStepped:Connect(function() updateDrawings() local closest = getClosestPlayerInFOV("Head") if closest and closest.Character:FindFirstChild("Head") then local targetCharacter = closest.Character local targetHead = targetCharacter.Head local targetRootPart = targetCharacter:FindFirstChild("HumanoidRootPart") local isMoving = targetRootPart.Velocity.Magnitude > 0.1 local targetPosition if isMoving then targetPosition = targetHead.Position + (targetHead.CFrame.LookVector * crosshairDistance) else targetPosition = targetHead.Position end targetCFrame = CFrame.new(Cam.CFrame.Position, targetPosition) else targetCFrame = Cam.CFrame end Cam.CFrame = Cam.CFrame:Lerp(targetCFrame, 1 / smoothness) end) FovSlider.FocusLost:Connect(function(enterPressed, inputThatCausedFocusLoss) if enterPressed then local newFov = tonumber(FovSlider.Text) if newFov then fov = newFov else FovSlider.Text = tostring(fov) end end end) SmoothnessSlider.FocusLost:Connect(function(enterPressed, inputThatCausedFocusLoss) if enterPressed then local newSmoothness = tonumber(SmoothnessSlider.Text) if newSmoothness then smoothness = newSmoothness else SmoothnessSlider.Text = tostring(smoothness) end end end) CrosshairDistanceSlider.FocusLost:Connect(function(enterPressed, inputThatCausedFocusLoss) if enterPressed then local newCrosshairDistance = tonumber(CrosshairDistanceSlider.Text) if newCrosshairDistance then crosshairDistance = newCrosshairDistance else CrosshairDistanceSlider.Text = tostring(crosshairDistance) end end end)

  	end    

})

Tab:AddButton({

	Name = "俄州子追",

	Callback = function()

     loadstring(game:HttpGet("https://gist.githubusercontent.com/ClasiniZukov/e7547e7b48fa90d10eb7f85bd3569147/raw/f95cd3561a3bb3ac6172a14eb74233625b52e757/gistfile1.txt"))()

  	end    

})

local Tab = Window:MakeTab({

    Name = "内存",

    Icon = "rbxassetid://4483345998",

    PremiumOnly = false

})

Tab:AddButton({

	Name = "提升流畅",

	Callback = function()

     loadstring(game:HttpGet("https://raw.githubusercontent.com/gclich/FPS-X-GUI/main/FPS_X.lua"))()

  	end    

})

Tab:AddButton({

	Name = "高清光影 ",

	Callback = function()

     loadstring(game:HttpGet("https://raw.githubusercontent.com/MZEEN2424/Graphics/main/Graphics.xml"))()

  	end    

})

Tab:AddButton({

	Name = "车子飞天",

	Callback = function()

     local Speed = 30

	-- Gui to Lua
	-- Version: 3.2
	local HumanoidRP = game.Players.LocalPlayer.Character.HumanoidRootPart
	-- Instances:

	local ScreenGui = Instance.new("ScreenGui")
	local W = Instance.new("TextButton")
	local S = Instance.new("TextButton")
	local A = Instance.new("TextButton")
	local D = Instance.new("TextButton")
	local Fly = Instance.new("TextButton")
	local unfly = Instance.new("TextButton")
	local StopFly = Instance.new("TextButton")

	--Properties:

	ScreenGui.Parent = game.CoreGui
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	unfly.Name = "关闭飞行"
	unfly.Parent = ScreenGui
	unfly.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	unfly.Position = UDim2.new(0.694387913, 0, 0.181818187, 0)
	unfly.Size = UDim2.new(0, 72, 0, 50)
	unfly.Font = Enum.Font.SourceSans
	unfly.Text = "关闭飞行"
	unfly.TextColor3 = Color3.fromRGB(170, 0, 255)
	unfly.TextScaled = true
	unfly.TextSize = 14.000
	unfly.TextWrapped = 
		unfly.MouseButton1Down:Connect(function()
		HumanoidRP:FindFirstChildOfClass("BodyVelocity"):Destroy()
		HumanoidRP:FindFirstChildOfClass("BodyGyro"):Destroy()
	end)

	StopFly.Name = "暂停飞行"
	StopFly.Parent = ScreenGui
	StopFly.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	StopFly.Position = UDim2.new(0.695689976, 0, 0.0213903747, 0)
	StopFly.Size = UDim2.new(0, 71, 0, 50)
	StopFly.Font = Enum.Font.SourceSans
	StopFly.Text = "暂停飞行"
	StopFly.TextColor3 = Color3.fromRGB(170, 0, 255)
	StopFly.TextScaled = true
	StopFly.TextSize = 14.000
	StopFly.TextWrapped = true
	StopFly.MouseButton1Down:Connect(function()
		HumanoidRP.Anchored = true
	end)

	Fly.Name = "飞行"
	Fly.Parent = ScreenGui
	Fly.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Fly.Position = UDim2.new(0.588797748, 0, 0.0213903747, 0)
	Fly.Size = UDim2.new(0, 66, 0, 50)
	Fly.Font = Enum.Font.SourceSans
	Fly.Text = "飞行"
	Fly.TextColor3 = Color3.fromRGB(170, 0, 127)
	Fly.TextScaled = true
	Fly.TextSize = 14.000
	Fly.TextWrapped = true
	Fly.MouseButton1Down:Connect(function()
		local BV = Instance.new("BodyVelocity",HumanoidRP)
		local BG = Instance.new("BodyGyro",HumanoidRP)
		BG.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
		BG.D = 5000
		BG.P = 50000
		BG.CFrame = game.Workspace.CurrentCamera.CFrame
		BV.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
	end)

	W.Name = "W"
	W.Parent = ScreenGui
	W.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	W.Position = UDim2.new(0.161668837, 0, 0.601604283, 0)
	W.Size = UDim2.new(0, 58, 0, 50)
	W.Font = Enum.Font.SourceSans
	W.Text = "↑"
	W.TextColor3 = Color3.fromRGB(226, 226, 526)
	W.TextScaled = true
	W.TextSize = 5.000
	W.TextWrapped = true
	W.MouseButton1Down:Connect(function()
		HumanoidRP.Anchored = false
		HumanoidRP:FindFirstChildOfClass("BodyVelocity"):Destroy()
		HumanoidRP:FindFirstChildOfClass("BodyGyro"):Destroy()
		wait(.1)
		local BV = Instance.new("BodyVelocity",HumanoidRP)
		local BG = Instance.new("BodyGyro",HumanoidRP)
		BG.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
		BG.D = 50000
		BG.P = 50000
		BG.CFrame = game.Workspace.CurrentCamera.CFrame
		BV.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
		BV.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * Speed
	end)


	S.Name = "S"
	S.Parent = ScreenGui
	S.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	S.Position = UDim2.new(0.161668837, 0, 0.735294104, 0)
	S.Size = UDim2.new(0, 58, 0, 50)
	S.Font = Enum.Font.SourceSans
	S.Text = "↓"
	S.TextColor3 = Color3.fromRGB(255, 255, 255)
	S.TextScaled = true
	S.TextSize = 14.000
	S.TextWrapped = true
	S.MouseButton1Down:Connect(function()
		HumanoidRP.Anchored = false
		HumanoidRP:FindFirstChildOfClass("BodyVelocity"):Destroy()
		HumanoidRP:FindFirstChildOfClass("BodyGyro"):Destroy()
		wait(.1)
		local BV = Instance.new("BodyVelocity",HumanoidRP)
		local BG = Instance.new("BodyGyro",HumanoidRP)
		BG.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
		BG.D = 5000
		BG.P = 50000
		BG.CFrame = game.Workspace.CurrentCamera.CFrame
		BV.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
		BV.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * -Speed
	end)

  	end    

})

Tab:AddButton({

	Name = "防止掉线",

	Callback = function()

     	print("Anti Afk On")

		local vu = game:GetService("VirtualUser")

		game:GetService("Players").LocalPlayer.Idled:connect(function()

		   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)

		   wait(1)

		   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)

		end)

  	end    

})

Tab:AddButton({

	Name = "人物飞行",

	Callback = function()

     local main = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local up = Instance.new("TextButton")
local down = Instance.new("TextButton")
local onof = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local plus = Instance.new("TextButton")
local speed = Instance.new("TextLabel")
local mine = Instance.new("TextButton")
local closebutton = Instance.new("TextButton")
local mini = Instance.new("TextButton")
local mini2 = Instance.new("TextButton")

main.Name = "main"
main.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
main.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
main.ResetOnSpawn = false

Frame.Parent = main
Frame.BackgroundColor3 = Color3.fromRGB(163, 255, 137)
Frame.BorderColor3 = Color3.fromRGB(103, 221, 213)
Frame.Position = UDim2.new(0.100320168, 0, 0.379746825, 0)
Frame.Size = UDim2.new(0, 190, 0, 57)

up.Name = "up"
up.Parent = Frame
up.BackgroundColor3 = Color3.fromRGB(79, 255, 152)
up.Size = UDim2.new(0, 44, 0, 28)
up.Font = Enum.Font.SourceSans
up.Text = "上升♂"
up.TextColor3 = Color3.fromRGB(0, 0, 0)
up.TextSize = 14.000

down.Name = "down"
down.Parent = Frame
down.BackgroundColor3 = Color3.fromRGB(215, 255, 121)
down.Position = UDim2.new(0, 0, 0.491228074, 0)
down.Size = UDim2.new(0, 44, 0, 28)
down.Font = Enum.Font.SourceSans
down.Text = "下落♂"
down.TextColor3 = Color3.fromRGB(0, 0, 0)
down.TextSize = 14.000

onof.Name = "onof"
onof.Parent = Frame
onof.BackgroundColor3 = Color3.fromRGB(255, 249, 74)
onof.Position = UDim2.new(0.702823281, 0, 0.491228074, 0)
onof.Size = UDim2.new(0, 56, 0, 28)
onof.Font = Enum.Font.SourceSans
onof.Text = "飞行♂"
onof.TextColor3 = Color3.fromRGB(0, 0, 0)
onof.TextSize = 14.000

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(242, 60, 255)
TextLabel.Position = UDim2.new(0.469327301, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 100, 0, 28)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "SASPOL汉化♂"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

plus.Name = "plus"
plus.Parent = Frame
plus.BackgroundColor3 = Color3.fromRGB(133, 145, 255)
plus.Position = UDim2.new(0.231578946, 0, 0, 0)
plus.Size = UDim2.new(0, 45, 0, 28)
plus.Font = Enum.Font.SourceSans
plus.Text = "+"
plus.TextColor3 = Color3.fromRGB(0, 0, 0)
plus.TextScaled = true
plus.TextSize = 14.000
plus.TextWrapped = true

speed.Name = "speed"
speed.Parent = Frame
speed.BackgroundColor3 = Color3.fromRGB(255, 85, 0)
speed.Position = UDim2.new(0.468421042, 0, 0.491228074, 0)
speed.Size = UDim2.new(0, 44, 0, 28)
speed.Font = Enum.Font.SourceSans
speed.Text = "1"
speed.TextColor3 = Color3.fromRGB(0, 0, 0)
speed.TextScaled = true
speed.TextSize = 14.000
speed.TextWrapped = true

mine.Name = "mine"
mine.Parent = Frame
mine.BackgroundColor3 = Color3.fromRGB(123, 255, 247)
mine.Position = UDim2.new(0.231578946, 0, 0.491228074, 0)
mine.Size = UDim2.new(0, 45, 0, 29)
mine.Font = Enum.Font.SourceSans
mine.Text = "-"
mine.TextColor3 = Color3.fromRGB(0, 0, 0)
mine.TextScaled = true
mine.TextSize = 14.000
mine.TextWrapped = true

closebutton.Name = "Close"
closebutton.Parent = main.Frame
closebutton.BackgroundColor3 = Color3.fromRGB(225, 25, 0)
closebutton.Font = "SourceSans"
closebutton.Size = UDim2.new(0, 45, 0, 28)
closebutton.Text = "X"
closebutton.TextSize = 30
closebutton.Position =  UDim2.new(0, 0, -1, 27)

mini.Name = "minimize"
mini.Parent = main.Frame
mini.BackgroundColor3 = Color3.fromRGB(192, 150, 230)
mini.Font = "SourceSans"
mini.Size = UDim2.new(0, 45, 0, 28)
mini.Text = "-"
mini.TextSize = 40
mini.Position = UDim2.new(0, 44, -1, 27)

mini2.Name = "minimize2"
mini2.Parent = main.Frame
mini2.BackgroundColor3 = Color3.fromRGB(192, 150, 230)
mini2.Font = "SourceSans"
mini2.Size = UDim2.new(0, 45, 0, 28)
mini2.Text = "+"
mini2.TextSize = 40
mini2.Position = UDim2.new(0, 44, -1, 57)
mini2.Visible = false

speeds = 1

local speaker = game:GetService("Players").LocalPlayer

local chr = game.Players.LocalPlayer.Character
local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")

nowe = false

game:GetService("StarterGui"):SetCore("SendNotification", { 
	Title = "Fly GUI V3";
	Text = "By me_ozone and Quandale The Dinglish XII#3550";
	Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})
Duration = 5;

Frame.Active = true -- main = gui
Frame.Draggable = true

onof.MouseButton1Down:connect(function()

	if nowe == true then
		nowe = false

		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming,true)
		speaker.Character.Humanoid:ChangeState(Enum.HumanoidStateType.RunningNoPhysics)
	else 
		nowe = true



		for i = 1, speeds do
			spawn(function()

				local hb = game:GetService("RunService").Heartbeat	


				tpwalking = true
				local chr = game.Players.LocalPlayer.Character
				local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
				while tpwalking and hb:Wait() and chr and hum and hum.Parent do
					if hum.MoveDirection.Magnitude > 0 then
						chr:TranslateBy(hum.MoveDirection)
					end
				end

			end)
		end
		game.Players.LocalPlayer.Character.Animate.Disabled = true
		local Char = game.Players.LocalPlayer.Character
		local Hum = Char:FindFirstChildOfClass("Humanoid") or Char:FindFirstChildOfClass("AnimationController")

		for i,v in next, Hum:GetPlayingAnimationTracks() do
			v:AdjustSpeed(0)
		end
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming,false)
		speaker.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Swimming)
	end




	if game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").RigType == Enum.HumanoidRigType.R6 then



		local plr = game.Players.LocalPlayer
		local torso = plr.Character.Torso
		local flying = true
		local deb = true
		local ctrl = {f = 0, b = 0, l = 0, r = 0}
		local lastctrl = {f = 0, b = 0, l = 0, r = 0}
		local maxspeed = 50
		local speed = 0


		local bg = Instance.new("BodyGyro", torso)
		bg.P = 9e4
		bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
		bg.cframe = torso.CFrame
		local bv = Instance.new("BodyVelocity", torso)
		bv.velocity = Vector3.new(0,0.1,0)
		bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
		if nowe == true then
			plr.Character.Humanoid.PlatformStand = true
		end
		while nowe == true or game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 do
			game:GetService("RunService").RenderStepped:Wait()

			if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
				speed = speed+.5+(speed/maxspeed)
				if speed > maxspeed then
					speed = maxspeed
				end
			elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
				speed = speed-1
				if speed < 0 then
					speed = 0
				end
			end
			if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
				bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
				lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
			elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
				bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
			else
				bv.velocity = Vector3.new(0,0,0)
			end
			--	game.Players.LocalPlayer.Character.Animate.Disabled = true
			bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
		end
		ctrl = {f = 0, b = 0, l = 0, r = 0}
		lastctrl = {f = 0, b = 0, l = 0, r = 0}
		speed = 0
		bg:Destroy()
		bv:Destroy()
		plr.Character.Humanoid.PlatformStand = false
		game.Players.LocalPlayer.Character.Animate.Disabled = false
		tpwalking = false




	else
		local plr = game.Players.LocalPlayer
		local UpperTorso = plr.Character.UpperTorso
		local flying = true
		local deb = true
		local ctrl = {f = 0, b = 0, l = 0, r = 0}
		local lastctrl = {f = 0, b = 0, l = 0, r = 0}
		local maxspeed = 50
		local speed = 0


		local bg = Instance.new("BodyGyro", UpperTorso)
		bg.P = 9e4
		bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
		bg.cframe = UpperTorso.CFrame
		local bv = Instance.new("BodyVelocity", UpperTorso)
		bv.velocity = Vector3.new(0,0.1,0)
		bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
		if nowe == true then
			plr.Character.Humanoid.PlatformStand = true
		end
		while nowe == true or game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 do
			wait()

			if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
				speed = speed+.5+(speed/maxspeed)
				if speed > maxspeed then
					speed = maxspeed
				end
			elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
				speed = speed-1
				if speed < 0 then
					speed = 0
				end
			end
			if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
				bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
				lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
			elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
				bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
			else
				bv.velocity = Vector3.new(0,0,0)
			end

			bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
		end
		ctrl = {f = 0, b = 0, l = 0, r = 0}
		lastctrl = {f = 0, b = 0, l = 0, r = 0}
		speed = 0
		bg:Destroy()
		bv:Destroy()
		plr.Character.Humanoid.PlatformStand = false
		game.Players.LocalPlayer.Character.Animate.Disabled = false
		tpwalking = false



	end





end)

local tis

up.MouseButton1Down:connect(function()
	tis = up.MouseEnter:connect(function()
		while tis do
			wait()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,1,0)
		end
	end)
end)

up.MouseLeave:connect(function()
	if tis then
		tis:Disconnect()
		tis = nil
	end
end)

local dis

down.MouseButton1Down:connect(function()
	dis = down.MouseEnter:connect(function()
		while dis do
			wait()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,-1,0)
		end
	end)
end)

down.MouseLeave:connect(function()
	if dis then
		dis:Disconnect()
		dis = nil
	end
end)


game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function(char)
	wait(0.7)
	game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
	game.Players.LocalPlayer.Character.Animate.Disabled = false

end)


plus.MouseButton1Down:connect(function()
	speeds = speeds + 1
	speed.Text = speeds
	if nowe == true then


		tpwalking = false
		for i = 1, speeds do
			spawn(function()

				local hb = game:GetService("RunService").Heartbeat	


				tpwalking = true
				local chr = game.Players.LocalPlayer.Character
				local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
				while tpwalking and hb:Wait() and chr and hum and hum.Parent do
					if hum.MoveDirection.Magnitude > 0 then
						chr:TranslateBy(hum.MoveDirection)
					end
				end

			end)
		end
	end
end)
mine.MouseButton1Down:connect(function()
	if speeds == 1 then
		speed.Text = 'cannot be less than 1'
		wait(1)
		speed.Text = speeds
	else
		speeds = speeds - 1
		speed.Text = speeds
		if nowe == true then
			tpwalking = false
			for i = 1, speeds do
				spawn(function()

					local hb = game:GetService("RunService").Heartbeat	


					tpwalking = true
					local chr = game.Players.LocalPlayer.Character
					local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
					while tpwalking and hb:Wait() and chr and hum and hum.Parent do
						if hum.MoveDirection.Magnitude > 0 then
							chr:TranslateBy(hum.MoveDirection)
						end
					end

				end)
			end
		end
	end
end)

closebutton.MouseButton1Click:Connect(function()
	main:Destroy()
end)

mini.MouseButton1Click:Connect(function()
	up.Visible = false
	down.Visible = false
	onof.Visible = false
	plus.Visible = false
	speed.Visible = false
	mine.Visible = false
	mini.Visible = false
	mini2.Visible = true
	main.Frame.BackgroundTransparency = 1
	closebutton.Position =  UDim2.new(0, 0, -1, 57)
end)

mini2.MouseButton1Click:Connect(function()
	up.Visible = true
	down.Visible = true
	onof.Visible = true
	plus.Visible = true
	speed.Visible = true
	mine.Visible = true
	mini.Visible = true
	mini2.Visible = false
	main.Frame.BackgroundTransparency = 0 
	closebutton.Position =  UDim2.new(0, 0, -1, 27)
end)



  	end    

})

Tab:AddButton({

	Name = "分身术",

	Callback = function()

     loadstring(game:GetObjects('rbxassetid://7339698872')[1].Source)()

  	end    

})

Tab:AddButton({

	Name = "人物动作",

	Callback = function()

     local AnimationChanger = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local TopBar = Instance.new("Frame")
local Close = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local NormalTab = Instance.new("Frame")
local A_Astronaut = Instance.new("TextButton")
local A_Bubbly = Instance.new("TextButton")
local A_Cartoony = Instance.new("TextButton")
local A_Elder = Instance.new("TextButton")
local A_Knight = Instance.new("TextButton")
local A_Levitation = Instance.new("TextButton")
local A_Mage = Instance.new("TextButton")
local A_Ninja = Instance.new("TextButton")
local A_Pirate = Instance.new("TextButton")
local A_Robot = Instance.new("TextButton")
local A_Stylish = Instance.new("TextButton")
local A_SuperHero = Instance.new("TextButton")
local A_Toy = Instance.new("TextButton")
local A_Vampire = Instance.new("TextButton")
local A_Werewolf = Instance.new("TextButton")
local A_Zombie = Instance.new("TextButton")
local Category = Instance.new("TextLabel")
local SpecialTab = Instance.new("Frame")
local A_Patrol = Instance.new("TextButton")
local A_Confident = Instance.new("TextButton")
local A_Popstar = Instance.new("TextButton")
local A_Cowboy = Instance.new("TextButton")
local A_Ghost = Instance.new("TextButton")
local A_Sneaky = Instance.new("TextButton")
local A_Princess = Instance.new("TextButton")
local Category_2 = Instance.new("TextLabel")
local OtherTab = Instance.new("Frame")
local Category_3 = Instance.new("TextLabel")
local A_None = Instance.new("TextButton")
local A_Anthro = Instance.new("TextButton")
local Animate = game.Players.LocalPlayer.Character.Animate

AnimationChanger.Name = "AnimationChanger"
AnimationChanger.Parent = game:WaitForChild("CoreGui")
AnimationChanger.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = AnimationChanger
Main.BackgroundColor3 = Color3.new(0.278431, 0.278431, 0.278431)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.421999991, 0, -1, 0)
Main.Size = UDim2.new(0, 300, 0, 250)
Main.Active = true
Main.Draggable = true

TopBar.Name = "TopBar"
TopBar.Parent = Main
TopBar.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
TopBar.BorderSizePixel = 0
TopBar.Size = UDim2.new(0, 300, 0, 30)

Close.Name = "Close"
Close.Parent = TopBar
Close.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
Close.BorderSizePixel = 0
Close.Position = UDim2.new(0.899999976, 0, 0, 0)
Close.Size = UDim2.new(0, 30, 0, 30)
Close.Font = Enum.Font.SciFi
Close.Text = "x"
Close.TextColor3 = Color3.new(1, 0, 0.0156863)
Close.TextSize = 20
Close.MouseButton1Click:Connect(function()
    wait(0.3)
    Main:TweenPosition(UDim2.new(0.421999991, 0, -1.28400004, 0))
    wait(3)
    AnimationChanger:Destroy()
end)

TextLabel.Parent = TopBar
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0, 0, 0.600000024, 0)
TextLabel.Size = UDim2.new(0, 270, 0, 10)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "ato汉化"
TextLabel.TextColor3 = Color3.new(1, 1, 1)
TextLabel.TextSize = 15

TextLabel_2.Parent = TopBar
TextLabel_2.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_2.BackgroundTransparency = 1
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0, 0, -0.0266667679, 0)
TextLabel_2.Size = UDim2.new(0, 270, 0, 20)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "动作变化"
TextLabel_2.TextColor3 = Color3.new(1, 1, 1)
TextLabel_2.TextSize = 20

NormalTab.Name = "NormalTab"
NormalTab.Parent = Main
NormalTab.BackgroundColor3 = Color3.new(0.278431, 0.278431, 0.278431)
NormalTab.BackgroundTransparency = 1
NormalTab.BorderSizePixel = 0
NormalTab.Position = UDim2.new(0.5, 0, 0.119999997, 0)
NormalTab.Size = UDim2.new(0, 150, 0, 500)

A_Astronaut.Name = "A_Astronaut"
A_Astronaut.Parent = NormalTab
A_Astronaut.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
A_Astronaut.BorderSizePixel = 0
A_Astronaut.Position = UDim2.new(0, 0, 0.815764725, 0)
A_Astronaut.Size = UDim2.new(0, 150, 0, 30)
A_Astronaut.Font = Enum.Font.SciFi
A_Astronaut.Text = "宇航员"
A_Astronaut.TextColor3 = Color3.new(1, 1, 1)
A_Astronaut.TextSize = 20
A_Astronaut.MouseButton1Click:Connect(function()
Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=891621366"
Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=891633237"
Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=891667138"
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=891636393"
Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=891627522"
Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=891609353"
Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=891617961"
game.Players.LocalPlayer.Character.Humanoid.Jump = true
end)

A_Bubbly.Name = "A_Bubbly"
A_Bubbly.Parent = NormalTab
A_Bubbly.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
A_Bubbly.BorderSizePixel = 0
A_Bubbly.Position = UDim2.new(0, 0, 0.349019617, 0)
A_Bubbly.Size = UDim2.new(0, 150, 0, 30)
A_Bubbly.Font = Enum.Font.SciFi
A_Bubbly.Text = "起泡"
A_Bubbly.TextColor3 = Color3.new(1, 1, 1)
A_Bubbly.TextSize = 20
A_Bubbly.MouseButton1Click:Connect(function()
Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=910004836"
Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=910009958"
Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=910034870"
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=910025107"
Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=910016857"
Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=910001910"
Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=910030921"
Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=910028158"
game.Players.LocalPlayer.Character.Humanoid.Jump = true
end)

A_Cartoony.Name = "A_Cartoony"
A_Cartoony.Parent = NormalTab
A_Cartoony.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
A_Cartoony.BorderSizePixel = 0
A_Cartoony.Position = UDim2.new(0, 0, 0.407272667, 0)
A_Cartoony.Size = UDim2.new(0, 150, 0, 30)
A_Cartoony.Font = Enum.Font.SciFi
A_Cartoony.Text = "卡通化"
A_Cartoony.TextColor3 = Color3.new(1, 1, 1)
A_Cartoony.TextSize = 20
A_Cartoony.MouseButton1Click:Connect(function()
Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=742637544"
Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=742638445"
Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=742640026"
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=742638842"
Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=742637942"
Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=742636889"
Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=742637151"
game.Players.LocalPlayer.Character.Humanoid.Jump = true
end)

A_Elder.Name = "A_Elder"
A_Elder.Parent = NormalTab
A_Elder.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
A_Elder.BorderSizePixel = 0
A_Elder.Position = UDim2.new(6.51925802e-09, 0, 0.636310041, 0)
A_Elder.Size = UDim2.new(0, 150, 0, 30)
A_Elder.Font = Enum.Font.SciFi
A_Elder.Text = "长老"
A_Elder.TextColor3 = Color3.new(1, 1, 1)
A_Elder.TextSize = 20
A_Elder.MouseButton1Click:Connect(function()
Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=845397899"
Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=845400520"
Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=845403856"
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=845386501"
Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=845398858"
Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=845392038"
Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=845396048"
game.Players.LocalPlayer.Character.Humanoid.Jump = true
end)

A_Knight.Name = "A_Knight"
A_Knight.Parent = NormalTab
A_Knight.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
A_Knight.BorderSizePixel = 0
A_Knight.Position = UDim2.new(0, 0, 0.52352941, 0)
A_Knight.Size = UDim2.new(0, 150, 0, 30)
A_Knight.Font = Enum.Font.SciFi
A_Knight.Text = "骑士"
A_Knight.TextColor3 = Color3.new(1, 1, 1)
A_Knight.TextSize = 20
A_Knight.MouseButton1Click:Connect(function()
Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=657595757"
Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=657568135"
Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=657552124"
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=657564596"
Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=658409194"
Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=658360781"
Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=657600338"
game.Players.LocalPlayer.Character.Humanoid.Jump = true
end)

A_Levitation.Name = "A_Levitation"
A_Levitation.Parent = NormalTab
A_Levitation.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
A_Levitation.BorderSizePixel = 0
A_Levitation.Position = UDim2.new(0, 0, 0.115472436, 0)
A_Levitation.Size = UDim2.new(0, 150, 0, 30)
A_Levitation.Font = Enum.Font.SciFi
A_Levitation.Text = "悬浮"
A_Levitation.TextColor3 = Color3.new(1, 1, 1)
A_Levitation.TextSize = 20
A_Levitation.MouseButton1Click:Connect(function()
Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616006778"
Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616008087"
Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616013216"
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616010382"
Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616008936"
Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616003713"
Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616005863"
game.Players.LocalPlayer.Character.Humanoid.Jump = true
end)

A_Mage.Name = "A_Mage"
A_Mage.Parent = NormalTab
A_Mage.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
A_Mage.BorderSizePixel = 0
A_Mage.Position = UDim2.new(0, 0, 0.696203232, 0)
A_Mage.Size = UDim2.new(0, 150, 0, 30)
A_Mage.Font = Enum.Font.SciFi
A_Mage.Text = "法师"
A_Mage.TextColor3 = Color3.new(1, 1, 1)
A_Mage.TextSize = 20
A_Mage.MouseButton1Click:Connect(function()
Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=707742142"
Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=707855907"
Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=707897309"
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=707861613"
Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=707853694"
Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=707826056"
Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=707829716"
game.Players.LocalPlayer.Character.Humanoid.Jump = true
end)

A_Ninja.Name = "A_Ninja"
A_Ninja.Parent = NormalTab
A_Ninja.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
A_Ninja.BorderSizePixel = 0
A_Ninja.Position = UDim2.new(0, 0, 0.0597896464, 0)
A_Ninja.Size = UDim2.new(0, 150, 0, 30)
A_Ninja.Font = Enum.Font.SciFi
A_Ninja.Text = "忍者"
A_Ninja.TextColor3 = Color3.new(1, 1, 1)
A_Ninja.TextSize = 20
A_Ninja.MouseButton1Click:Connect(function()
Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=656117400"
Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=656118341"
Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=656121766"
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=656118852"
Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=656117878"
Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=656114359"
Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=656115606"
game.Players.LocalPlayer.Character.Humanoid.Jump = true
end)

A_Pirate.Name = "A_Pirate"
A_Pirate.Parent = NormalTab
A_Pirate.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
A_Pirate.BorderSizePixel = 0
A_Pirate.Position = UDim2.new(-0.000333309174, 0, 0.874588311, 0)
A_Pirate.Size = UDim2.new(0, 150, 0, 30)
A_Pirate.Font = Enum.Font.SciFi
A_Pirate.Text = "海盗"
A_Pirate.TextColor3 = Color3.new(1, 1, 1)
A_Pirate.TextSize = 20
A_Pirate.MouseButton1Click:Connect(function()
Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=750781874"
Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=750782770"
Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=750785693"
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=750783738"
Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=750782230"
Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=750779899"
Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=750780242"
game.Players.LocalPlayer.Character.Humanoid.Jump = true
end)

A_Robot.Name = "A_Robot"
A_Robot.Parent = NormalTab
A_Robot.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
A_Robot.BorderSizePixel = 0
A_Robot.Position = UDim2.new(0, 0, 0.291479498, 0)
A_Robot.Size = UDim2.new(0, 150, 0, 30)
A_Robot.Font = Enum.Font.SciFi
A_Robot.Text = "机器人"
A_Robot.TextColor3 = Color3.new(1, 1, 1)
A_Robot.TextSize = 20
A_Robot.MouseButton1Click:Connect(function()
Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616088211"
Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616089559"
Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616095330"
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616091570"
Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616090535"
Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616086039"
Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616087089"
game.Players.LocalPlayer.Character.Humanoid.Jump = true
end)

A_Stylish.Name = "A_Stylish"
A_Stylish.Parent = NormalTab
A_Stylish.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
A_Stylish.BorderSizePixel = 0
A_Stylish.Position = UDim2.new(0, 0, 0.232816339, 0)
A_Stylish.Size = UDim2.new(0, 150, 0, 30)
A_Stylish.Font = Enum.Font.SciFi
A_Stylish.Text = "优雅"
A_Stylish.TextColor3 = Color3.new(1, 1, 1)
A_Stylish.TextSize = 20
A_Stylish.MouseButton1Click:Connect(function()
Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616136790"
Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616138447"
Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616146177"
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616140816"
Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616139451"
Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616133594"
Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616134815"
game.Players.LocalPlayer.Character.Humanoid.Jump = true
end)

A_SuperHero.Name = "A_SuperHero"
A_SuperHero.Parent = NormalTab
A_SuperHero.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
A_SuperHero.BorderSizePixel = 0
A_SuperHero.Position = UDim2.new(0, 0, 0.464919746, 0)
A_SuperHero.Size = UDim2.new(0, 150, 0, 30)
A_SuperHero.Font = Enum.Font.SciFi
A_SuperHero.Text = "超级英雄"
A_SuperHero.TextColor3 = Color3.new(1, 1, 1)
A_SuperHero.TextSize = 20
A_SuperHero.MouseButton1Click:Connect(function()
Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616111295"
Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616113536"
Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616122287"
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616117076"
Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616115533"
Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616104706"
Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616108001"
game.Players.LocalPlayer.Character.Humanoid.Jump = true
end)

A_Toy.Name = "A_Toy"
A_Toy.Parent = NormalTab
A_Toy.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
A_Toy.BorderSizePixel = 0
A_Toy.Position = UDim2.new(6.51925802e-09, 0, 0.756028414, 0)
A_Toy.Size = UDim2.new(0, 150, 0, 30)
A_Toy.Font = Enum.Font.SciFi
A_Toy.Text = "玩具"
A_Toy.TextColor3 = Color3.new(1, 1, 1)
A_Toy.TextSize = 20
A_Toy.MouseButton1Click:Connect(function()
Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=782841498"
Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=782845736"
Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=782843345"
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=782842708"
Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=782847020"
Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=782843869"
Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=782846423"
game.Players.LocalPlayer.Character.Humanoid.Jump = true
end)

A_Vampire.Name = "A_Vampire"
A_Vampire.Parent = NormalTab
A_Vampire.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
A_Vampire.BorderSizePixel = 0
A_Vampire.Position = UDim2.new(0, 0, 0.934021354, 0)
A_Vampire.Size = UDim2.new(0, 150, 0, 30)
A_Vampire.Font = Enum.Font.SciFi
A_Vampire.Text = "吸血鬼"
A_Vampire.TextColor3 = Color3.new(1, 1, 1)
A_Vampire.TextSize = 20
A_Vampire.MouseButton1Click:Connect(function()
Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1083445855"
Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1083450166"
Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1083473930"
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1083462077"
Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1083455352"
Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1083439238"
Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1083443587"
game.Players.LocalPlayer.Character.Humanoid.Jump = true
end)

A_Werewolf.Name = "A_Werewolf"
A_Werewolf.Parent = NormalTab
A_Werewolf.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
A_Werewolf.BorderSizePixel = 0
A_Werewolf.Position = UDim2.new(-0.000333368778, 0, 0.174509808, 0)
A_Werewolf.Size = UDim2.new(0, 150, 0, 30)
A_Werewolf.Font = Enum.Font.SciFi
A_Werewolf.Text = "狼人"
A_Werewolf.TextColor3 = Color3.new(1, 1, 1)
A_Werewolf.TextSize = 20
A_Werewolf.MouseButton1Click:Connect(function()
Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1083195517"
Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1083214717"
Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1083178339"
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1083216690"
Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1083218792"
Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1083182000"
Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1083189019"
game.Players.LocalPlayer.Character.Humanoid.Jump = true
end)

A_Zombie.Name = "A_Zombie"
A_Zombie.Parent = NormalTab
A_Zombie.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
A_Zombie.BorderSizePixel = 0
A_Zombie.Position = UDim2.new(-1.1920929e-07, 0, 0.582352936, 0)
A_Zombie.Size = UDim2.new(0, 150, 0, 30)
A_Zombie.Font = Enum.Font.SciFi
A_Zombie.Text = "僵尸"
A_Zombie.TextColor3 = Color3.new(1, 1, 1)
A_Zombie.TextSize = 20
A_Zombie.MouseButton1Click:Connect(function()
Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616158929"
Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616160636"
Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616168032"
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616163682"
Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616161997"
Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616156119"
Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616157476"
game.Players.LocalPlayer.Character.Humanoid.Jump = true
end)

Category.Name = "Category"
Category.Parent = NormalTab
Category.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
Category.BorderSizePixel = 0
Category.Size = UDim2.new(0, 150, 0, 30)
Category.Text = "标准"
Category.TextColor3 = Color3.new(0, 0.835294, 1)
Category.TextSize = 14

SpecialTab.Name = "SpecialTab"
SpecialTab.Parent = Main
SpecialTab.BackgroundColor3 = Color3.new(0.278431, 0.278431, 0.278431)
SpecialTab.BackgroundTransparency = 1
SpecialTab.BorderSizePixel = 0
SpecialTab.Position = UDim2.new(0, 0, 0.119999997, 0)
SpecialTab.Size = UDim2.new(0, 150, 0, 230)

A_Patrol.Name = "A_Patrol"
A_Patrol.Parent = SpecialTab
A_Patrol.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
A_Patrol.BorderSizePixel = 0
A_Patrol.Position = UDim2.new(0, 0, 0.259960413, 0)
A_Patrol.Size = UDim2.new(0, 150, 0, 30)
A_Patrol.Font = Enum.Font.SciFi
A_Patrol.Text = "巡逻"
A_Patrol.TextColor3 = Color3.new(1, 1, 1)
A_Patrol.TextSize = 20
A_Patrol.MouseButton1Click:Connect(function()
Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1149612882"
Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1150842221"
Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1151231493"
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1150967949"
Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1148811837"
Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1148811837"
Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1148863382"
game.Players.LocalPlayer.Character.Humanoid.Jump = true
end)

A_Confident.Name = "A_Confident"
A_Confident.Parent = SpecialTab
A_Confident.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
A_Confident.BorderSizePixel = 0
A_Confident.Position = UDim2.new(0, 0, 0.389248967, 0)
A_Confident.Size = UDim2.new(0, 150, 0, 30)
A_Confident.Font = Enum.Font.SciFi
A_Confident.Text = "自信的"
A_Confident.TextColor3 = Color3.new(1, 1, 1)
A_Confident.TextSize = 20
A_Confident.MouseButton1Click:Connect(function()
Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1069977950"
Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1069987858"
Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1070017263"
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1070001516"
Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1069984524"
Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1069946257"
Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1069973677"
game.Players.LocalPlayer.Character.Humanoid.Jump = true
end)

A_Popstar.Name = "A_Popstar"
A_Popstar.Parent = SpecialTab
A_Popstar.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
A_Popstar.BorderSizePixel = 0
A_Popstar.Position = UDim2.new(0, 0, 0.130671918, 0)
A_Popstar.Size = UDim2.new(0, 150, 0, 30)
A_Popstar.Font = Enum.Font.SciFi
A_Popstar.Text = "明星"
A_Popstar.TextColor3 = Color3.new(1, 1, 1)
A_Popstar.TextSize = 20
A_Popstar.MouseButton1Click:Connect(function()
Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1212900985"
Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1150842221"
Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1212980338"
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1212980348"
Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1212954642"
Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1213044953"
Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1212900995"
game.Players.LocalPlayer.Character.Humanoid.Jump = true
end)

A_Cowboy.Name = "A_Cowboy"
A_Cowboy.Parent = SpecialTab
A_Cowboy.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
A_Cowboy.BorderSizePixel = 0
A_Cowboy.Position = UDim2.new(0, 0, 0.772964239, 0)
A_Cowboy.Size = UDim2.new(0, 150, 0, 30)
A_Cowboy.Font = Enum.Font.SciFi
A_Cowboy.Text = "牛仔"
A_Cowboy.TextColor3 = Color3.new(1, 1, 1)
A_Cowboy.TextSize = 20
A_Cowboy.MouseButton1Click:Connect(function()
Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1014390418"
Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1014398616"
Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1014421541"
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1014401683"
Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1014394726"
Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1014380606"
Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1014384571"
game.Players.LocalPlayer.Character.Humanoid.Jump = true
end)

A_Ghost.Name = "A_Ghost"
A_Ghost.Parent = SpecialTab
A_Ghost.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
A_Ghost.BorderSizePixel = 0
A_Ghost.Position = UDim2.new(0, 0, 0.900632322, 0)
A_Ghost.Size = UDim2.new(0, 150, 0, 30)
A_Ghost.Font = Enum.Font.SciFi
A_Ghost.Text = "鬼"
A_Ghost.TextColor3 = Color3.new(1, 1, 1)
A_Ghost.TextSize = 20
A_Ghost.MouseButton1Click:Connect(function()
Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616006778"
Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616008087"
Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616013216"
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616013216"
Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616008936"
Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616005863"
Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=616012453"
Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=616011509"
game.Players.LocalPlayer.Character.Humanoid.Jump = true
end)

A_Sneaky.Name = "A_Sneaky"
A_Sneaky.Parent = SpecialTab
A_Sneaky.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
A_Sneaky.BorderSizePixel = 0
A_Sneaky.Position = UDim2.new(0, 0, 0.517628431, 0)
A_Sneaky.Size = UDim2.new(0, 150, 0, 30)
A_Sneaky.Font = Enum.Font.SciFi
A_Sneaky.Text = "偷偷摸摸"
A_Sneaky.TextColor3 = Color3.new(1, 1, 1)
A_Sneaky.TextSize = 20
A_Sneaky.MouseButton1Click:Connect(function()
Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1132473842"
Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1132477671"
Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1132510133"
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1132494274"
Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1132489853"
Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1132461372"
Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1132469004"
game.Players.LocalPlayer.Character.Humanoid.Jump = true
end)

A_Princess.Name = "A_Princess"
A_Princess.Parent = SpecialTab
A_Princess.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
A_Princess.BorderSizePixel = 0
A_Princess.Position = UDim2.new(0, 0, 0.645296335, 0)
A_Princess.Size = UDim2.new(0, 150, 0, 30)
A_Princess.Font = Enum.Font.SciFi
A_Princess.Text = "国王"
A_Princess.TextColor3 = Color3.new(1, 1, 1)
A_Princess.TextSize = 20
A_Princess.MouseButton1Click:Connect(function()
Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=941003647"
Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=941013098"
Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=941028902"
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=941015281"
Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=941008832"
Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=940996062"
Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=941000007"
game.Players.LocalPlayer.Character.Humanoid.Jump = true
end)

Category_2.Name = "Category"
Category_2.Parent = SpecialTab
Category_2.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
Category_2.BorderSizePixel = 0
Category_2.Size = UDim2.new(0, 150, 0, 30)
Category_2.Text = "特别的"
Category_2.TextColor3 = Color3.new(0, 0.835294, 1)
Category_2.TextSize = 14

OtherTab.Name = "OtherTab"
OtherTab.Parent = Main
OtherTab.BackgroundColor3 = Color3.new(0.278431, 0.278431, 0.278431)
OtherTab.BackgroundTransparency = 1
OtherTab.BorderSizePixel = 0
OtherTab.Position = UDim2.new(0, 0, 1.06800008, 0)
OtherTab.Size = UDim2.new(0, 150, 0, 220)

Category_3.Name = "Category"
Category_3.Parent = OtherTab
Category_3.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
Category_3.BorderSizePixel = 0
Category_3.Size = UDim2.new(0, 150, 0, 30)
Category_3.Text = "其他的"
Category_3.TextColor3 = Color3.new(0, 0.835294, 1)
Category_3.TextSize = 14

A_None.Name = "A_None"
A_None.Parent = OtherTab
A_None.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
A_None.BorderSizePixel = 0
A_None.Position = UDim2.new(0, 0, 0.134545445, 0)
A_None.Size = UDim2.new(0, 150, 0, 30)
A_None.Font = Enum.Font.SciFi
A_None.Text = "没有任何"
A_None.TextColor3 = Color3.new(1, 1, 1)
A_None.TextSize = 20
A_None.MouseButton1Click:Connect(function()
Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=0"
Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=0"
Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=0"
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=0"
Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=0"
Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=0"
Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=0"
Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=0"
game.Players.LocalPlayer.Character.Humanoid.Jump = true
end)

A_Anthro.Name = "A_Anthro"
A_Anthro.Parent = OtherTab
A_Anthro.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
A_Anthro.BorderSizePixel = 0
A_Anthro.Position = UDim2.new(0, 0, 0.269090891, 0)
A_Anthro.Size = UDim2.new(0, 150, 0, 30)
A_Anthro.Font = Enum.Font.SciFi
A_Anthro.Text = "人类 (默认)"
A_Anthro.TextColor3 = Color3.new(1, 1, 1)
A_Anthro.TextSize = 20
A_Anthro.MouseButton1Click:Connect(function()
Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=2510196951"
Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=2510197257"
Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=2510202577"
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=2510198475"
Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=2510197830"
Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=2510192778"
Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=2510195892"
game.Players.LocalPlayer.Character.Humanoid.Jump = true
end)

wait(1)
Main:TweenPosition(UDim2.new(0.421999991, 0, 0.28400004, 0))


  	end    

})

Tab:AddButton({

	Name = "Fc指令",

	Callback = function()

     loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()

  	end    

})

Tab:AddButton({

	Name = "进入提示",

	Callback = function()

     loadstring(game:HttpGet("https://raw.githubusercontent.com/boyscp/scriscriptsc/main/bbn.lua"))()

  	end    

})

Tab:AddButton({

	Name = "立刻死亡",

	Callback = function()

     game.Players.LocalPlayer.Character.Humanoid.Health=0

  	end    

})

Tab:AddButton({

	Name = "骂人无违规",

	Callback = function()

     loadstring(game:GetObjects("rbxassetid://1262435912")[1].Source)()

  	end    

})

Tab:AddButton({

	Name = "玩家控制",

	Callback = function()

     if not game:IsLoaded() then
	game.Loaded:Wait()
end

local plrs = game:GetService("Players")
local lp = plrs.LocalPlayer
local mouse = lp:GetMouse()
local ws = game:GetService("Workspace")
local cg = game:GetService("CoreGui")
local pg = lp:FindFirstChildOfClass("PlayerGui")
local rs = game:GetService("RunService")
local uis = game:GetService("UserInputService")
local stepped = rs.Stepped
local renderstepped = rs.RenderStepped
local heartbeat = rs.Heartbeat
local guiname = tostring((game.PlaceId - lp.UserId) / 2)
local currentplayer = lp
local shp = sethiddenproperty or set_hidden_property or sethiddenprop or set_hidden_prop
local ssr = setsimulationradius or setsimradius or set_simulation_radius
local v3 = Vector3.new
local v3_0 = v3(0, 0, 0)
local cf = CFrame.new
local flycf = false

local function gp(parent, name, className)
	local ret = nil
	pcall(function()
		for i, v in pairs(parent:GetChildren()) do
			if (v.Name == name) and v:IsA(className) then
				ret = v
				break
			end
		end
	end)
	return ret
end

local gui = gp(cg, guiname, "ScreenGui") or gp(pg, guiname, "ScreenGui")
if gui then
	gui:Destroy()
end

gui = Instance.new("ScreenGui")
gui.Name = guiname
gui.ResetOnSpawn = false
gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
gui.Enabled = false
gui.IgnoreGuiInset = true
pcall(function()
    gui.Parent = cg
end)
if gui.Parent ~= cg then
    gui.Parent = pg
end
gui:GetPropertyChangedSignal("Parent"):Connect(function()
    if not (gui and gui.Parent) then
        gui = false
    end
end)
local mainFrame = Instance.new("Frame")
mainFrame.Name = "mainFrame"
mainFrame.Parent = gui
mainFrame.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
mainFrame.BorderSizePixel = 0
mainFrame.Position = UDim2.new(0, 0, 1, -200)
mainFrame.Size = UDim2.new(1, 0, 0, 200)
local mf = Instance.new("Frame")
mf.Name = "mf"
mf.Parent = mainFrame
mf.BackgroundColor3 = mainFrame.BackgroundColor3
mf.BorderSizePixel = 0
mf.Position = UDim2.new(0, 0, 1, 0)
mf.Size = UDim2.new(1, 0, 1, 0)
local scriptName = Instance.new("TextLabel")
scriptName.Name = "scriptName"
scriptName.Parent = mainFrame
scriptName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
scriptName.BackgroundTransparency = 1.000
scriptName.BorderSizePixel = 0
scriptName.Size = UDim2.new(1, 0, 0, 20)
scriptName.Font = Enum.Font.SourceSans
scriptName.Text = "控制玩家脚本 作者MyWorld 汉化1972845799"
scriptName.TextColor3 = Color3.fromRGB(181, 181, 181)
scriptName.TextSize = 20.000
scriptName.TextWrapped = true
local line = Instance.new("Frame")
line.Name = "line"
line.Parent = scriptName
line.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
line.BackgroundTransparency = 0.700
line.BorderSizePixel = 0
line.Position = UDim2.new(0, 5, 1, 0)
line.Size = UDim2.new(1, -10, 0, 1)
local showhide = Instance.new("TextButton")
showhide.Name = "showhide"
showhide.Parent = mainFrame
showhide.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
showhide.BorderSizePixel = 0
showhide.Position = UDim2.new(0.5, -25, 0, -30)
showhide.Size = UDim2.new(0, 50, 0, 30)
showhide.Font = Enum.Font.SourceSans
showhide.Text = "\\/"
showhide.TextColor3 = Color3.fromRGB(235, 235, 235)
showhide.TextSize = 20.000
local scrollingFrame = Instance.new("ScrollingFrame")
scrollingFrame.Name = "scrollingFrame"
scrollingFrame.Parent = mainFrame
scrollingFrame.Active = true
scrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
scrollingFrame.BackgroundTransparency = 1.000
scrollingFrame.BorderSizePixel = 0
scrollingFrame.ClipsDescendants = false
scrollingFrame.Position = UDim2.new(0, 5, 0, 30)
scrollingFrame.Size = UDim2.new(1, -10, 1, -35)
scrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
scrollingFrame.ScrollBarThickness = 10
scrollingFrame.AutomaticCanvasSize = Enum.AutomaticSize.X
local UIListLayout = Instance.new("UIListLayout")
UIListLayout.Parent = scrollingFrame
UIListLayout.FillDirection = Enum.FillDirection.Horizontal
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 10)

local event = Instance.new("BindableEvent", gui)
local fps = 60
fps = 1 / fps
local tf = 0
local con = nil
con = renderstepped:Connect(function(s)
    if not gui then
	    con:Disconnect()
	    return
	end
	tf += s
	if tf >= fps then
		for i=1, math.floor(tf / fps) do
			event:Fire(true)
		end
		tf = 0
	end
end)
local event = event.Event

local sn = scriptName.Text
local function notify(msg)
	spawn(function()
		local msg1 = sn .. " - " .. msg
		scriptName.Text = msg1
		wait(3)
		if scriptName.Text == msg1 then
			scriptName.Text = sn
		end
	end)
end

if gui.Parent == pg then
    notify("gui in playerGui")
end

local ancprt = nil
local function weldtp(part, cfr)
	if not (part and part.Parent and part:IsA("BasePart") and (not part:IsGrounded())) then
		return nil
	end
	if not (ancprt and ancprt.Parent and ancprt:IsA("BasePart") and ancprt:IsGrounded() and ancprt:IsDescendantOf(ws)) then
		for i, v in pairs(ws:GetDescendants()) do
			if v and v.Parent and v:IsA("BasePart") and v:IsGrounded() then
				ancprt = v
				break
			end
		end
	end
	if not ancprt then
		ancprt = Instance.new("Part", ws)
		ancprt.Anchored = true
		ancprt.Transparency = 1
		ancprt.CanCollide = false
		ancprt.Name = "weldtp part"
	end
	local weld = Instance.new("Weld")
	weld.Part0 = part
	weld.C0 = cfr:Inverse()
	weld.Part1 = ancprt
	weld.C1 = ancprt.CFrame:Inverse()
	weld.Parent = ws
	stepped:Wait()
	pcall(function()
		weld:Destroy()
	end)
end

local function makeFrame(parent, text, color)
	local frame = Instance.new("Frame")
	frame.Name = "frame_" .. text
	frame.Parent = parent
	frame.BackgroundColor3 = color
	frame.Size = UDim2.new(0, 300, 0, 145)
	frame.BorderSizePixel = 0
	local framelabel = Instance.new("TextLabel")
	framelabel.Name = "framelabel"
	framelabel.Parent = frame
	framelabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	framelabel.BackgroundTransparency = 1.000
	framelabel.BorderSizePixel = 0
	framelabel.Size = UDim2.new(1, 0, 0, 20)
	framelabel.Font = Enum.Font.SourceSans
	framelabel.Text = text
	framelabel.TextColor3 = Color3.fromRGB(197, 197, 197)
	framelabel.TextSize = 14.000
	local line = Instance.new("Frame")
	line.Name = "line"
	line.Parent = framelabel
	line.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	line.BackgroundTransparency = 0.700
	line.BorderSizePixel = 0
	line.Position = UDim2.new(0, 5, 1, 0)
	line.Size = UDim2.new(1, -10, 0, 1)
	local ScrollingFrame = Instance.new("ScrollingFrame")
	ScrollingFrame.Parent = frame
	ScrollingFrame.Active = true
	ScrollingFrame.Name = "ScrollingFrame"
	ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ScrollingFrame.BackgroundTransparency = 1.000
	ScrollingFrame.BorderSizePixel = 0
	ScrollingFrame.Position = UDim2.new(0, 5, 0, 25)
	ScrollingFrame.Size = UDim2.new(1, -5, 1, -30)
	ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
	ScrollingFrame.ScrollBarThickness = 7
	ScrollingFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
	local UIListLayout = Instance.new("UIListLayout")
	UIListLayout.Parent = ScrollingFrame
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Padding = UDim.new(0, 5)
	return frame
end

showhide.MouseButton1Click:Connect(function()
	if showhide.Text == "/\\" then
		showhide.Text = "\\/"
		mainFrame:TweenPosition(UDim2.new(0, 0, 1, -200), "Out", "Elastic", 1)
	else
		showhide.Text = "/\\"
		mainFrame:TweenPosition(UDim2.new(0, 0, 1, -5), "Out", "Elastic", 1)
	end
end)

local controllable = {}
local lastc = nil
local con = nil
con = lp.CharacterAdded:Connect(function(c)
    if not gui then
        con:Disconnect()
        return
    end
    if lastc == c then
        return
    end
    if c and c.Parent then
        lastc = c
        controllable = {}
        for i, v in pairs(plrs:GetPlayers()) do
            local c = v.Character
            if c and c.Parent then
                table.insert(controllable, c)
            end
        end
    end
end)

local viewedPlayer = nil
local viewbutton = {Text = "监视"}

local playersframe = makeFrame(scrollingFrame, "玩家", Color3.fromRGB(12, 59, 100))
local playercframe = makeFrame(playersframe, "playerscontrol", Color3.fromRGB(12, 59, 100))
playercframe.BorderSizePixel = 1.000
playercframe.BorderColor3 = Color3.fromRGB(27, 42, 53)
playercframe.Position = UDim2.new(0, 10, -1, -40)
playercframe.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
playercframe.Visible = true
local playerframef = makeFrame(playercframe, "friends", Color3.fromRGB(0, 150, 0))
playerframef.Position = UDim2.new(1, 10, 0, 5)

local function addbtn(parent, plr)
	local playerbutton = Instance.new("TextButton")
	playerbutton.Name = plr.Name
	playerbutton.Parent = parent
	if plr == lp then
		playerbutton.BackgroundColor3 = Color3.fromRGB(100, 200, 200)
	else
		playerbutton.BackgroundColor3 = Color3.fromRGB(136, 136, 136)
	end
	playerbutton.BorderSizePixel = 0
	playerbutton.Size = UDim2.new(1, -10, 0, 20)
	playerbutton.Font = Enum.Font.SourceSans
	playerbutton.Text = plr.Name
	if plr.Name ~= plr.DisplayName then
		playerbutton.Text = playerbutton.Text .. " (" .. plr.DisplayName .. ")"
	end
	playerbutton.TextColor3 = Color3.fromRGB(0, 0, 0)
	playerbutton.TextSize = 15.000
	playerbutton.MouseButton1Click:Connect(function()
		playercframe.framelabel.Text = "玩家:" .. playerbutton.Text
		currentplayer = plr
		playercframe.Visible = true
		playerframef.Visible = false
		viewbutton.Text = ((viewedPlayer == plr) and "退出监视") or "监视"
	end)
end

local function unview()
    viewedPlayer = nil
    viewbutton.Text = "监视"
	local c = lp.Character
	if c and c.Parent then
	    local subject = c:FindFirstChildOfClass("Humanoid") or c:FindFirstChildWhichIsA("BasePart")
	    if subject then
    	    ws.CurrentCamera.CameraType = Enum.CameraType.Custom
    		ws.CurrentCamera.CameraSubject = subject
		else
		    notify("no part to view")
		end
	else
		notify("character not found")
	end
end

local playersScroll = playersframe.ScrollingFrame

for i, v in pairs(plrs:GetPlayers()) do
	addbtn(playersScroll, v)
end
local reset = function() end
local con = nil
con = plrs.PlayerAdded:Connect(function(plr)
	if gui then
		addbtn(playersScroll, plr)
	else
	    con:Disconnect()
	end
end)
local con = nil
con = plrs.PlayerRemoving:Connect(function(plr)
	if gui then
		local playerbutton = gp(playersScroll, plr.Name, "TextButton")
		if playerbutton then
			playerbutton:Destroy()
		end
		if plr == currentplayer then
			playercframe.Visible = false
		end
		if plr == viewedPlayer then
		    unview()
		end
	else
	    con:Disconnect()
	end
end)
local hideplayerc = Instance.new("TextButton")
hideplayerc.Name = "addpositionbutton"
hideplayerc.Parent = playercframe.framelabel
hideplayerc.BackgroundColor3 = Color3.fromRGB(59, 59, 59)
hideplayerc.BorderSizePixel = 0
hideplayerc.Position = UDim2.new(1, -17, 0, 2)
hideplayerc.Size = UDim2.new(0, 15, 0, 15)
hideplayerc.Font = Enum.Font.SourceSans
hideplayerc.Text = "X"
hideplayerc.TextColor3 = Color3.fromRGB(206, 206, 206)
hideplayerc.TextSize = 14.000
hideplayerc.MouseButton1Click:Connect(function()
	playercframe.Visible = false
end)
local function makeplrbutton(buttontext)
	local button = Instance.new("TextButton")
	button.Name = "plrButton"
	button.Parent = playercframe.ScrollingFrame
	button.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
	button.BorderSizePixel = 0
	button.Size = UDim2.new(1, -10, 0, 20)
	button.Font = Enum.Font.SourceSans
	button.Text = buttontext
	button.TextColor3 = Color3.fromRGB(226, 226, 226)
	button.TextSize = 15.000
	return button
end
makeplrbutton("传送").MouseButton1Click:Connect(function()
	local c = lp.Character
	if c and c.Parent then
		local tp = gp(c, "HumanoidRootPart", "BasePart") or gp(c, "Head", "BasePart") or c:FindFirstChildWhichIsA("BasePart")
		if tp then
			local c1 = currentplayer.Character
			if c1 and c1.Parent then
				local to = gp(c1, "HumanoidRootPart", "BasePart") or gp(c1, "Head", "BasePart") or c1:FindFirstChildWhichIsA("BasePart")
				if to then
					if flycf then
						flycf = to.CFrame
					else
						weldtp(tp, to.CFrame)
					end
					notify("goto: " .. currentplayer.Name)
				else
					notify("no target part found")
				end
			else
				notify("target character not found")
			end
		else
			notify("no part found")
		end
	else
		notify("character not found")
	end
end)
viewbutton = makeplrbutton("监视")
viewbutton.MouseButton1Click:Connect(function()
    if viewedPlayer == currentplayer then
        unview()
    else
	    viewedPlayer = currentplayer
	    viewbutton.Text = "退出监视"
	end
end)

local cbringb = makeplrbutton("把他传送过来")

local function noanimations()
	local c = lp.Character
	if c and c.Parent then
		local hum = c:FindFirstChildOfClass("Humanoid")
		if hum then
			local animate = gp(c, "Animate", "LocalScript")
			if animate then
				animate.Disabled = true
			end
			for i, v in pairs(hum:GetPlayingAnimationTracks()) do
				v:Stop()
			end
		else
			notify("humanoid not found")
		end
	else
		notify("character not found")
	end
end

local function isConnected(part0, part1, tested)
    if not ((typeof(part0) == "Instance") and part0:IsA("BasePart")) then
        return false
    end
    if not ((typeof(part1) == "Instance") and part1:IsA("BasePart")) then
        return false
    end
    if not tested then
        tested = {}
    end
    local ret = false
    table.insert(tested, part0)
    for i, v in pairs(part0:GetConnectedParts()) do
        if part1 == v then
            return true
        elseif not table.find(tested, v) then
            ret = ret or isConnected(v, part1, tested)
        end
    end
    return ret
end

local function attach(c1)
    local bck = lp:FindFirstChildOfClass("Backpack")
	local c = lp.Character
	--checks for: model, humanoid, arm, torso for main character:
	if not (c and c.Parent) then
	    notify("character not found")
	    return false
	end
	local hum = c:FindFirstChildOfClass("Humanoid")
	if not hum then
	    notify("humanoid not found")
	    return false
	end 
	local arm = gp(c, "Right Arm", "BasePart") or gp(c, "RightHand", "BasePart")
	if not arm then
	    notify("arm not found")
	    return false
	end
	local torso = gp(c, "Torso", "BasePart") or gp(c, "UpperTorso", "BasePart")
	if not torso then
	    notify("torso not found")
	    return
	end
	if torso:IsGrounded() then
	    notify("torso is grounded")
	    return
	end
	if not isConnected(arm, torso) then
	    notify("arm and toso not connected")
	    return
	end
	--checks for: tool:
	local tool = c:FindFirstChildOfClass("Tool")
	if (not tool) and bck then
		tool = bck:FindFirstChildOfClass("Tool")
	end
	if not tool then
	    notify("no tool found")
	    return false
	end
	local handle = gp(tool, "Handle", "BasePart")
	if not handle then
	    notify("tool handle not found")
	    return
	end
	--checks for: model, humanoid, arm, torso for target character:
	if not (c1 and c1.Parent) then
	    notify("target character not found")
	    return false
	end
	local hum1 = c1:FindFirstChildOfClass("Humanoid")
	if not hum1 then
	    notify("target humanoid not found")
	    return false
	end
	local arm1 = gp(c1, "Right Arm", "BasePart") or gp(c1, "RightHand", "BasePart")
	if not arm1 then
	    notify("target arm not found")
	    return false
	end
	local torso1 = gp(c1, "Torso", "BasePart") or gp(c1, "UpperTorso", "BasePart")
	if not torso1 then
	    notify("target torso not found")
	    return
	end
	if torso1:IsGrounded() then
	    notify("target torso is grounded")
	    return
	end
	if not isConnected(arm1, torso1) then
	    notify("target arm and toso not connected")
	    return
	end
	--all checks good
	if bck then
    	for i, v in pairs(c:GetChildren()) do
    	    if v:IsA("Tool") then
    	        v.Parent = bck
    	    end
    	end
	end
	local nhum = hum:Clone()
	hum:Destroy()
	hum = nhum
	hum.Parent = c
	hum:EquipTool(tool)
	for i, v in pairs(c1:GetDescendants()) do
		if v and v.Parent and v:IsA("BasePart") then
			v.Massless = true
		end
	end
	while stepped:Wait() do
	    --checks for: model, humanoid, arm, torso for main character:
	    if not (c and c.Parent) then
	        notify("character removed")
	        return false
	    end
	    if (not hum and hum.Parent) then
	        notify("humanoid removed")
	        return false
	    end
	    if not (arm and arm.Parent) then
	        notify("arm removed")
	        return false
	    end
	    if not (torso and torso.Parent) then
	        notify("torso removed")
	        return false
	    end
	    if torso:IsGrounded() then
    	    notify("torso got grounded")
    	    return
    	end
	    if not isConnected(arm, torso) then
    	    notify("arm and toso connection removed")
    	    return
    	end
	    --checks for: model, humanoid, arm, torso for target character:
	    if not (c1 and c1.Parent) then
	        notify("target character removed")
	        return false
	    end
	    if not (hum1 and hum1.Parent) then
	        notify("target humanoid removed")
	        return false
	    end
	    if not (arm1 and arm1.Parent) then
	        notify("target arm removed")
	        return false
	    end
	    if not (torso1 and torso1.Parent) then
	        notify("target torso removed")
	        return false
	    end
	    if torso:IsGrounded() then
            notify("target torso got grounded")
            return
        end
	    if not isConnected(arm1, torso1) then
    	    notify("target arm and toso connection removed")
    	    return
    	end
    	--checks for: tool
	    if not (tool and tool.Parent) then
	        notify("tool removed")
	        return false
	    end
	    if not (handle and handle.Parent) then
	        notify("tool handle removed")
	        return false
	    end
	    if (tool.Parent ~= c) and (tool.Parent ~= c1) and (tool.Parent ~= bck) then
	        notify("unexpected tool parent")
	        return false
	    end
	    --all checks good
	    if (tool.Parent == c1) then
	        break
	    end
	    tool.Parent = c
	    weldtp(arm1, handle.CFrame)
	    if (tool.Parent == c1) then
	        break
	    end
	end
	return handle
end

makeplrbutton("bring").MouseButton1Click:Connect(function()
    local plr = currentplayer
    local c1 = plr.Character
    if not (c1 and c1.Parent) then
        notify("target character not found")
        return
    end
    if not table.find(controllable, c1) then
        reset(true)
        wait(0.1)
    end
    if not (plr and plr.Parent) then
        notify("target player left")
        return
    end
    if not (c1 and c1.Parent) then
        c1 = currentplayer.Character
    end
    if not (c1 and c1.Parent) then
        notify("target character not found")
        return
    end
	local c = lp.Character
	if not (c and c.Parent) then
	    notify("character not found")
        return
	end
	local part = gp(c, "HumanoidRootPart", "BasePart") or gp(c, "Torso", "BasePart") or gp(c, "UpperTorso", "BasePart") or gp(c, "Head", "BasePart")
	if not part then
	    notify("part not found")
	    return
	end
	local cfr = part.CFrame
	local joint = attach(currentplayer.Character)
	if not joint then
	    return
	end
	weldtp(part, cfr)
	wait(0.5)
	if c and c.Parent and part and part.Parent and joint and joint.Parent then
		weldtp(part, cfr)
		if not (joint and joint.Parent) then
		    notify("joint removed")
		    reset(false)
		    return
		end
		joint:BreakJoints()
		reset(false)
		notify("brought " .. currentplayer.Name)
	end
end)

makeplrbutton("杀掉").MouseButton1Click:Connect(function()
	local plr = currentplayer
    local c1 = plr.Character
    if not (c1 and c1.Parent) then
        notify("target character not found")
        return
    end
    if not table.find(controllable, c1) then
        reset(true)
        wait(0.1)
    end
    if not (plr and plr.Parent) then
        notify("target player left")
        return
    end
    if not (c1 and c1.Parent) then
        notify("target character removed")
        return
    end
	local c = lp.Character
	if not (c and c.Parent) then
	    notify("character not found")
        return
	end
	local part = gp(c, "HumanoidRootPart", "BasePart") or gp(c, "Torso", "BasePart") or gp(c, "UpperTorso", "BasePart") or gp(c, "Head", "BasePart")
	if not part then
	    notify("part not found")
	    return
	end
	local cfr = part.CFrame
	local joint = attach(currentplayer.Character)
	if not joint then
	    return
	end
	weldtp(part, cfr)
	local con, con1 = nil, nil
	con = heartbeat:Connect(function()
	    if not (part and part.Parent) then
	        con:Disconnect()
	        con1:Disconnect()
	        return
	    end
	    part.Velocity = v3(0, -200000, 0)
	end)
	con1 = stepped:Connect(function()
	    if not (part and part.Parent) then
	        con:Disconnect()
	        con1:Disconnect()
	        return
	    end
	    part.Velocity = v3_0
	end)
	wait(0.5)
	con:Disconnect()
	con1:Disconnect()
	if c and c.Parent and part and part.Parent and joint and joint.Parent then
		weldtp(part, cfr)
		if not (joint and joint.Parent) then
		    notify("joint removed")
		    reset(false)
		    return
		end
		joint:BreakJoints()
		reset(false)
		notify("attempted to kill " .. currentplayer.Name)
	else
	    notify("something went wrong")
	end
end)

makeplrbutton("附加").MouseButton1Click:Connect(function()
	return attach(currentplayer.Character) and notify("attached to " .. currentplayer.Name)
end)

makeplrbutton("他的好友").MouseButton1Click:Connect(function()
	playerframef.Visible = not playerframef.Visible
	if not playerframef.Visible then
		return
	end
	playerframef.framelabel.Text = "friends of: " .. currentplayer.Name
	local scroll = playerframef.ScrollingFrame
	for i, v in pairs(scroll:GetChildren()) do
		if v and v.Parent and v:IsA("TextButton") then
			v:Destroy()
		end
	end
	for i, v in pairs(plrs:GetPlayers()) do
		spawn(function()
			if v and v.Parent and currentplayer:IsFriendsWith(v.UserId) then
				addbtn(playerframef.ScrollingFrame, v)
			end
		end)
	end
end)

local function makeflingbutton(partname)
	makeplrbutton("甩飞他 (" .. partname .. ")").MouseButton1Click:Connect(function()
		local c = lp.Character
		if c and c.Parent then
			local hrp = gp(c, partname, "BasePart")
			if hrp then
				local c1 = currentplayer.Character
				if c1 and c1.Parent then
					local hrp1 = gp(c1, partname, "BasePart")
					if hrp1 then						
						c:BreakJoints()
						hrp.CustomPhysicalProperties = PhysicalProperties.new(0.01, 0.01, 0.01, 0.01, 0.01)
						for i, v in pairs(c:GetChildren()) do
							if (v ~= hrp) and v and v.Parent and v:IsA("BasePart") then
								v:Destroy()
							end
						end
						hrp.Transparency = 0.5
						while heartbeat:Wait() and c and c.Parent and hrp and hrp.Parent and c1 and c1.Parent and hrp1 and hrp1.Parent do
							local pos = {x=0, y=0, z=0}
							pos.x = hrp1.Position.X
							pos.y = hrp1.Position.Y
							pos.z = hrp1.Position.Z
							pos.x += hrp1.Velocity.X / 2
							pos.y += hrp1.Velocity.Y / 2
							pos.z += hrp1.Velocity.Z / 2
							local heightlock = ws.FallenPartsDestroyHeight + 5
							if pos.y < heightlock then
								pos.y = heightlock
							end
							hrp.CanCollide = false
							hrp.Position = v3(pos.x, pos.y, pos.z)
							hrp.Velocity = v3(0, 1000, 0)
							hrp.RotVelocity = v3(10000, 10000, 10000)
							ws.CurrentCamera.CameraSubject = hrp1
						end
						wait(0.1)
						ws.CurrentCamera.CameraSubject = (lp.Character and lp.Character.Parent and lp.Character:FindFirstChildOfClass("Humanoid")) or nil
					else
						notify("target part not found")
					end
				else
					notify("target character not found")
				end
			else
				notify("part not found")
			end
		else
			notify("character not found")
		end
	end)
end
makeflingbutton("头")
makeflingbutton("手")
makeflingbutton("躯干")

local graphicsframe = makeFrame(scrollingFrame, "图形", Color3.fromRGB(84, 45, 162))
local function makegraphicsbutton(buttontext)
	local button = Instance.new("TextButton")
	button.Name = "removefog"
	button.Parent = graphicsframe.ScrollingFrame
	button.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
	button.BorderSizePixel = 0
	button.Size = UDim2.new(1, -10, 0, 20)
	button.Font = Enum.Font.SourceSans
	button.Text = buttontext
	button.TextColor3 = Color3.fromRGB(226, 226, 226)
	button.TextSize = 15.000
	return button
end
local lig = game:GetService("Lighting")
makegraphicsbutton("删除贴图").MouseButton1Click:Connect(function()
	lig.FogStart = 9e9
	lig.FogEnd = 9e9
end)
local function setupremove(button, classname)
	button.MouseButton1Click:Connect(function()
		for i, v in pairs(game:GetDescendants()) do
			if v:IsA(classname) then
				v:Destroy()
			end
		end
	end)
end
setupremove(makegraphicsbutton("删除特效"), "Atmosphere")
setupremove(makegraphicsbutton("消除模糊"), "BlurEffect")
setupremove(makegraphicsbutton("删除贴画"), "Decal")
setupremove(makegraphicsbutton("默认天空"), "Sky")
setupremove(makegraphicsbutton("去除阳光"), "SunRaysEffect")
setupremove(makegraphicsbutton("去除粒子"), "ParticleEmitter")
setupremove(makegraphicsbutton("删除颜色校正效果"), "ColorCorrectionEffect")

local cfly = nil
local fhrp = nil
local flyspeed = 1

local positionsframe = makeFrame(scrollingFrame, "位置", Color3.fromRGB(162, 108, 42))
local addpositionbutton = Instance.new("TextButton")
addpositionbutton.Name = "addpositionbutton"
addpositionbutton.Parent = positionsframe.framelabel
addpositionbutton.BackgroundColor3 = Color3.fromRGB(59, 59, 59)
addpositionbutton.BorderSizePixel = 0
addpositionbutton.Position = UDim2.new(1, -77, 0, 2)
addpositionbutton.Size = UDim2.new(0, 75, 1, -4)
addpositionbutton.Font = Enum.Font.SourceSans
addpositionbutton.Text = "+添加"
addpositionbutton.TextColor3 = Color3.fromRGB(206, 206, 206)
addpositionbutton.TextSize = 14.000
addpositionbutton.MouseButton1Click:Connect(function()
	local c = lp.Character
	if c and c.Parent then
		local hrp = gp(c, "HumanoidRootPart", "BasePart") or gp(c, "Head", "BasePart") or c:FindFirstChildWhichIsA("BasePart")
		if hrp then
			local cfr = hrp.CFrame
			local positionframe = Instance.new("Frame")
			local loadposbutton = Instance.new("TextButton")
			local removeposbutton = Instance.new("TextButton")
			local positionName = Instance.new("TextBox")
			positionframe.Name = "positionframe"
			positionframe.Parent = positionsframe.ScrollingFrame
			positionframe.BackgroundColor3 = Color3.fromRGB(106, 106, 106)
			positionframe.BorderSizePixel = 0
			positionframe.Size = UDim2.new(1, -10, 0, 30)
			loadposbutton.Name = "loadposbutton"
			loadposbutton.Parent = positionframe
			loadposbutton.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
			loadposbutton.BorderSizePixel = 0
			loadposbutton.Position = UDim2.new(1, -70, 0, 5)
			loadposbutton.Size = UDim2.new(0, 40, 1, -10)
			loadposbutton.Font = Enum.Font.SourceSans
			loadposbutton.Text = "load"
			loadposbutton.TextColor3 = Color3.fromRGB(223, 223, 223)
			loadposbutton.TextSize = 16.000
			removeposbutton.Name = "removeposbutton"
			removeposbutton.Parent = positionframe
			removeposbutton.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
			removeposbutton.BorderSizePixel = 0
			removeposbutton.Position = UDim2.new(1, -25, 0, 5)
			removeposbutton.Size = UDim2.new(0, 20, 1, -10)
			removeposbutton.Font = Enum.Font.SourceSans
			removeposbutton.Text = "X"
			removeposbutton.TextColor3 = Color3.fromRGB(223, 223, 223)
			removeposbutton.TextSize = 16.000
			positionName.Name = "positionName"
			positionName.Parent = positionframe
			positionName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			positionName.BackgroundTransparency = 1.000
			positionName.BorderSizePixel = 0
			positionName.Position = UDim2.new(0, 5, 0, 5)
			positionName.Size = UDim2.new(1, -80, 1, -10)
			positionName.Font = Enum.Font.SourceSans
			positionName.Text = "Position1"
			positionName.ClearTextOnFocus = false
			positionName.TextColor3 = Color3.fromRGB(0, 0, 0)
			positionName.TextSize = 25.000
			positionName.TextXAlignment = Enum.TextXAlignment.Left
			loadposbutton.MouseButton1Click:Connect(function()
				c = lp.Character
				if c and c.Parent then
					hrp = gp(c, "HumanoidRootPart", "BasePart") or gp(c, "Head", "BasePart") or c:FindFirstChildWhichIsA("BasePart")
					if hrp then
						if flycf then
							flycf = cfr
						else
							weldtp(hrp, cfr)
						end
					else
						notify("part not found")
					end
				else
					notify("character not found")
				end
			end)
			removeposbutton.MouseButton1Click:Connect(function()
				positionframe:Destroy()
			end)
		end
	end
end)

local charframe = makeFrame(scrollingFrame, "修改数据 小心使用!!!!!", Color3.fromRGB(99, 15, 15))
local function makecharbutton(buttontext)
	local button = Instance.new("TextButton")
	button.Name = "charButton"
	button.Parent = charframe.ScrollingFrame
	button.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
	button.BorderSizePixel = 0
	button.Size = UDim2.new(1, -10, 0, 20)
	button.Font = Enum.Font.SourceSans
	button.Text = buttontext
	button.TextColor3 = Color3.fromRGB(226, 226, 226)
	button.TextSize = 15.000
	return button
end
local function respawnRequest()
	local ccfr = ws.CurrentCamera.CFrame
	local c = lp.Character
	lp.Character = nil
	lp.Character = c
	ws.CurrentCamera:GetPropertyChangedSignal("CFrame"):Wait()
	ws.CurrentCamera.CFrame = ccfr
end
local loopr = false
local fakevoidp = nil
reset = function(respawn)
    if fakevoidp then
        fakevoidp = nil
        wait(0.3)
    end
	local c = lp.Character
	local partName, cfr, ccfr = nil, nil, nil
	if not (c and c.Parent) then
		respawnRequest()
		if not loopr then
			notify("character not found, trying to respawn")
		end
		return
	end
	local part = gp(c, "HumanoidRootPart", "BasePart") or gp(c, "Head", "BasePart") or c:FindFirstChildWhichIsA("BasePart")
	if not part then
	    respawnRequest()
		if not loopr then
			notify("no part found in the character, trying to respawn")
		end
		return
	end
	partName, cfr, ccfr = part.Name, part.CFrame, ws.CurrentCamera.CFrame
	spawn(function()
		local c, part = c, nil
		while c and c.Parent do
			stepped:Wait()
		end
		while not (c and c.Parent) do
			stepped:Wait()
			c = lp.Character
		end
		while stepped:Wait() and c and c.Parent and (not part) do
			part = gp(c, partName, "BasePart")
		end
		if not part then
			if not loopr then
				notify("failed to tp back")
			end
			return
		end
		weldtp(part, cfr)
		ws.CurrentCamera.CFrame = ccfr
		cfr = false
		if not loopr then
			notify("respawned")
		end
	end)
	if respawn and (not loopr) then
		notify("respawning...")
	end
	if respawn and (plrs.RespawnTime > 0.5) then
		spawn(function()
			while c and c.Parent do
				if part and part.Parent then
					cfr = part.CFrame
				end
				ccfr = ws.CurrentCamera.CFrame
				stepped:Wait()
			end
		end)
		local spamrequest = true
		spawn(function()
			while wait() and spamrequest and c and c.Parent do
				respawnRequest()
			end
		end)
		wait(0.5)
		spamrequest = false
		wait(plrs.RespawnTime - 0.5)
		part = nil
	end
	if c and c.Parent then
		if respawn then
			local hum = c:FindFirstChildOfClass("Humanoid")
			if hum then
				hum:Destroy()
			end
		end
		c:BreakJoints()
		while respawn and gui and cfr do
	        stepped:Wait()
	    end
	end
end
makecharbutton("重生").MouseButton1Click:Connect(function()
	if not loopr then
		reset(true)
	end
end)
makecharbutton("重置").MouseButton1Click:Connect(function()
	reset(false)
end)
local looprb = makecharbutton("循环重生")
spawn(function()
	while wait() and gui do
		if loopr then
			reset(true)
		end
	end
end)
looprb.MouseButton1Click:Connect(function()
	loopr = not loopr
	looprb.Text = "循环重生" .. ((loopr and " (开)") or "")
end)
makecharbutton("删除网格").MouseButton1Click:Connect(function()
	local c = lp.Character
	if c and c.Parent then
		for i, v in pairs(c:GetDescendants()) do
			if v and v.Parent and (v:IsA("Mesh") or v:IsA("SpecialMesh") or v:IsA("CharacterMesh")) then
				v:Destroy()
			end
		end
		notify("removed meshes")
	else
		notify("no character")
	end
end)
makecharbutton("断开连接").MouseButton1Click:Connect(function()
	local c = lp.Character
	if c and c.Parent then
		c:BreakJoints()
		notify("broken joints")
	else
		notify("no character")
	end
end)
local noclipb = makecharbutton("穿墙")
local antiflingb = makecharbutton("防窜掷")
local noclip = false
local antifling = false
noclipb.MouseButton1Click:Connect(function()
	noclip = not noclip
	noclipb.Text = "穿墙" .. ((noclip and " (开)") or "")
end)
antiflingb.MouseButton1Click:Connect(function()
	antifling = not antifling
	antiflingb.Text = "假空" .. ((antifling and " (开)") or "")
end)
local fakevoidb = makecharbutton("隐身")
fakevoidb.MouseButton1Click:Connect(function()
    if fakevoidp then
        fakevoidp = nil
        fakevoidb.Text = "隐身"
    else
        local c = lp.Character
        if not (c and c.Parent) then
            notify("character not found")
            return
        end
        local part = gp(c, "HumanoidRootPart", "BasePart") or gp(c, "Torso", "BasePart") or gp(c, "UpperTorso", "BasePart") or gp(c, "Head", "BasePart") or c:FindFirstChildWhichIsA("BasePart")
        if not part then
            notify("no part found")
            return
        end
        fakevoidp = part
        fakevoidb.Text = "隐身(开)"
        notify("character teleported under FallenPartsDestroyHeight")
        
        local dh = ws.FallenPartsDestroyHeight
        local cfr = fakevoidp.CFrame
        local newcf = cf(0, dh - 100, 0)
        local camcf = ws.CurrentCamera.CFrame
        ws.CurrentCamera.CameraType = Enum.CameraType.Scriptable
        ws.FallenPartsDestroyHeight = dh - 200
        while stepped:Wait() and gui and c and c.Parent and fakevoidp and fakevoidp.Parent do
            weldtp(fakevoidp, newcf)
        end
        ws.FallenPartsDestroyHeight = dh
        fakevoidb.Text = "隐身"
        if c and c.Parent then
            unview()
            ws.CurrentCamera.CFrame = camcf
            if part and part.Parent then
                weldtp(part, cfr)
                notify("teleported back")
            else
                notify("part removed")
            end
        else
            notify("character removed")
        end
    end
end)
makecharbutton("方块工具").MouseButton1Click:Connect(function()
	local c = lp.Character
	if c and c.Parent then
		local tool = c:FindFirstChildOfClass("Tool")
		if tool then
			local found = false
			for i, v in pairs(tool:GetDescendants()) do
				if v and v.Parent and v:IsA("Mesh") or v:IsA("SpecialMesh") then
					v:Destroy()
				end
			end
			if found then
				notify("removed tool meshes")
			else
				notify("no meshes found")
			end
		else
			notify("tool not found")
		end
	else
		notify("no character")
	end
end)
local infjumpb = makecharbutton("连跳")
local infjump = false
local con = nil
con = game:GetService("UserInputService").JumpRequest:Connect(function()
	if not gui then
	    con:Disconnect()
	    return
	end
	if infjump then
		local c = lp.Character
		if c and c.Parent then
			local hum = c:FindFirstChildOfClass("Humanoid")
			if hum then
				hum:ChangeState("Jumping")
			end
		end
	end
end)
infjumpb.MouseButton1Click:Connect(function()
	infjump = not infjump
	infjumpb.Text = "连跳" .. ((infjump and "(开)") or "")
end)
makecharbutton("秒重生").MouseButton1Click:Connect(function()
	local c = lp.Character
	if c and c.Parent then
		local hum = c:FindFirstChildOfClass("Humanoid")
		if hum then
			hum.Archivable = true
			local hum1 = hum:Clone()
			hum:Destroy()
			hum1.Parent = c
			notify("humanoid client sided")
		else
			notify("humanoid not found")
		end
	else
		notify("character not found")
	end
end)
local loopgb = makecharbutton("连续秒重生")
local loopg = false
spawn(function()
	while wait() and gui do
		if loopg then
			local c = lp.Character
			if c and c.Parent then
				local part = gp(c, "HumanoidRootPart", "BasePart") or gp(c, "Head", "BasePart") or c:FindFirstChildWhichIsA("BasePart")
				if part then
					local hum = c:FindFirstChildOfClass("Humanoid")
					if hum then
					    local partName = part.Name
						local new = hum:Clone()
						hum:Destroy()
						new.Parent = c
						ws.CurrentCamera.CameraSubject = c
    					local currentcfr = part.CFrame
    					local camcfr = ws.CurrentCamera.CFrame
    					while wait() and c and c.Parent and part and part.Parent do
    						currentcfr = part.CFrame
    						camcfr = ws.CurrentCamera.CFrame
    						local ff = c:FindFirstChildOfClass("ForceField")
    						if ff then
    							ff:Destroy()
    						end
    					end
    					part = nil
    					while not (part and part.Parent) do
    						wait()
    						c = lp.Character
    						part = gp(c, partName, "BasePart")
    					end
						weldtp(part, currentcfr)
						ws.CurrentCamera.CFrame = camcfr
    				end
				end
			end
		end
	end
end)
loopgb.MouseButton1Click:Connect(function()
	loopg = not loopg
	loopgb.Text = "连续秒重生" .. ((loopg and " (开)") or "")
end)
local flyb = makecharbutton("飞行")
flyb.MouseButton1Click:Connect(function()
	if cfly and cfly.Parent then
		cfly = nil
	else
		cfly = lp.Character
		flyb.Text = "飞行(开)"
	end
end)

local ctrlf = {
	["w"] = false,
	["a"] = false,
	["s"] = false,
	["d"] = false
}
local con = nil
con = mouse.KeyDown:Connect(function(key)
    if not gui then
        con:Disconnect()
        return
    end
	key = key:lower()
	if ctrlf[key] ~= nil then
		ctrlf[key] = true
	end
end)
local con = nil
con = mouse.KeyUp:Connect(function(key)
    if not gui then
        con:Disconnect()
        return
    end
	key = key:lower()
	if ctrlf[key] ~= nil then
		ctrlf[key] = false
	end
end)
local con = nil
con = event:Connect(function()
    if not gui then
        con:Disconnect()
        return
    end
    if not flycf then
        return
    end
    local fb = ((ctrlf["w"] and flyspeed) or 0) + ((ctrlf["s"] and -flyspeed) or 0)
	local lr = ((ctrlf["a"] and -flyspeed) or 0) + ((ctrlf["d"] and flyspeed) or 0)
	local camcf = ws.CurrentCamera.CFrame
	local caX, caY, caZ, ca1, ca2, ca3, ca4, ca5, ca6, ca7, ca8, ca9 = camcf:GetComponents()
	flycf = cf(flycf.X, flycf.Y, flycf.Z, ca1, ca2, ca3, ca4, ca5, ca6, ca7, ca8, ca9)
	flycf += camcf.lookVector * fb
	flycf += camcf.rightVector * lr
end)
spawn(function()
    while stepped:Wait() and gui do
    	if cfly and cfly.Parent then
    		fhrp = (fhrp and (fhrp.Parent == cfly) and fhrp) or gp(cfly, "HumanoidRootPart", "BasePart") or gp(cfly, "Head", "BasePart") or cfly:FindFirstChildWhichIsA("BasePart")
    		if fhrp then
    		    flycf = flycf or fhrp.CFrame
    			weldtp(fhrp, flycf)
    		end
    	else
    		flycf = false
    		fhrp = nil
    		flyb.Text = "飞行"
    	end
	end
end)

local hiddenfling = false
spawn(function()
    local hrp, c, vel = nil, nil, nil
    while gui do
        heartbeat:Wait()
        if hiddenfling then
            while gui and hiddenfling and not (c and c.Parent and hrp and hrp.Parent) do
                heartbeat:Wait()
                c = lp.Character
                hrp = gp(c, "HumanoidRootPart", "BasePart")
            end
            if gui and hiddenfling then 
                vel = hrp.Velocity
                hrp.Velocity = hrp.Velocity.Unit * v3(20000, 0, 20000) + v3(0, 5000, 0)
                renderstepped:Wait()
                if c and c.Parent and hrp and hrp.Parent then
                    hrp.Velocity = vel
                end
            end
        end
    end
end)
local hiddenflingB = makecharbutton("隐秘的投掷")
hiddenflingB.MouseButton1Click:Connect(function()
    hiddenfling = not hiddenfling
    hiddenflingB.Text = "隐秘的投掷" .. ((hiddenfling and "(开)") or "")
end)

makecharbutton("反重生(等待 5 秒)").MouseButton1Click:Connect(respawnRequest)
makecharbutton("无动画").MouseButton1Click:Connect(noanimations)
makecharbutton("坐").MouseButton1Click:Connect(function()
	local c = lp.Character
	if c and c.Parent then
		local hum = c:FindFirstChildOfClass("Humanoid")
		if hum then
			hum.Sit = not hum.Sit
		else
			notify("humanoid not found")
		end
	else
		notify("character not found")
	end
end)
makecharbutton("假坐").MouseButton1Click:Connect(function()
	local c = lp.Character
	if c and c.Parent then
		local hum = c:FindFirstChildOfClass("Humanoid")
		if hum then
		    hum:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
			hum.Sit = true
			notify("humanoid.Sit set to true")
		else
			notify("humanoid not found")
		end
	else
		notify("character not found")
	end
end)
makecharbutton("移除人形机器人").MouseButton1Click:Connect(function()
	local c = lp.Character
	if c then
		local cpar = c.Parent
		if cpar then
			local hrp = gp(c, "HumanoidRootPart", "BasePart")
			if hrp then
				c.Parent = nil
				hrp:Destroy()
				c.Parent = cpar
				notify("hrp removed")
			else
				notify("hrp not found")
			end
		else
			notify("character not found")
		end
	else
		notify("character not found")
	end
end)
makecharbutton("将可触碰设置为假").MouseButton1Click:Connect(function()
	local c = lp.Character
	if c and c.Parent then
		local tool = c:FindFirstChildOfClass("Tool")
		for i, v in pairs(c:GetDescendants()) do
			if v and v.Parent and v:IsA("BasePart") and ((not tool) or (not v:IsDescendantOf(tool))) then
				v.CanTouch = false
			end
		end
		notify("CanTouch has been set to false")
	else
		notify("character not found")
	end
end)
local ctrltp = false
local clicktpbutton = makecharbutton("按住CRTL时点击传送")
clicktpbutton.MouseButton1Click:Connect(function()
    ctrltp = not ctrltp
    clicktpbutton.Text = "按住CRTL时点击传送" .. ((ctrltp and " (开)") or "")
end)
local con = nil
con = mouse.Button1Down:Connect(function()
    if not gui then
        con:Disconnect()
        return
    end
    if not ctrltp then
        return
    end
    if not (mouse.Target and uis:IsKeyDown(Enum.KeyCode.LeftControl)) then
        return
    end
    local to = mouse.Hit.Position + v3(0, 3, 0)
    to = cf(to, to + v3(-1, 0, -1) * ws.CurrentCamera.CFrame.LookVector)
    if flycf then
        flycf = to
        return
    end
    local c = lp.Character
    if not (c and c.Parent) then
        return
    end
    local hrp = gp(c, "HumanoidRootPart", "BasePart") or gp(c, "Torso", "BasePart") or gp(c, "UpperTorso", "BasePart") or gp(c, "Head", "BasePart") or c:FindFirstChildWhichIsA("BasePart")
    if hrp then
        weldtp(hrp, to)
    end
end)
makecharbutton("监视").MouseButton1Click:Connect(unview)

local utilframe = makeFrame(scrollingFrame, "绘制", Color3.fromRGB(0, 150, 150))
local utilscroll = utilframe.ScrollingFrame

local function makeutilbutton(buttontext)
	local button = Instance.new("TextButton")
	button.Name = "utilButton"
	button.Parent = utilscroll
	button.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
	button.BorderSizePixel = 0
	button.Size = UDim2.new(1, -10, 0, 20)
	button.Font = Enum.Font.SourceSans
	button.Text = buttontext
	button.TextColor3 = Color3.fromRGB(226, 226, 226)
	button.TextSize = 15.000
	return button
end

local netb = makeutilbutton("网络旁路")
local net = false
netb.MouseButton1Click:Connect(function()
	if net then
		net = false
	else
		net = shp and function(Radius) 
			shp(lp, "SimulationRadius", Radius) 
		end
		net = net or ssr
		if net then
			pcall(function()
				shp(lp, "MaximumSimulationRadius", 9e9)
			end)
		else
			notify("exploit not supported")
		end
	end
	netb.Text = "网络旁路" .. ((net and "(开)") or "")
end)

local espb = makeutilbutton("显示模型")
local esp = false
espb.MouseButton1Click:Connect(function()
	esp = not esp
	espb.Text = "显示模型" .. ((esp and " (开)") or "")
end)
local teamcheckb = makeutilbutton("ESP 团队检查")
local espTeamCheck = false
teamcheckb.MouseButton1Click:Connect(function()
	espTeamCheck = not espTeamCheck
	teamcheckb.Text = "ESP 团队检查" .. ((espTeamCheck and " (开)") or "")
end)

local espcolor = Color3.fromRGB(255, 0, 0)

local vpf = Instance.new("ViewportFrame", gui)
vpf.BackgroundTransparency = 1
vpf.BorderSizePixel = 0
vpf.ImageTransparency = 0.5
vpf.ImageColor3 = espcolor
vpf.BackgroundColor3 = espcolor
vpf.Size = UDim2.new(1, 0, 1, 0)
vpf.Visible = true
vpf.Name = "esp"

local con = nil
con = renderstepped:Connect(function()
    if not gui then
        con:Disconnect()
        return
    end
	if net then
		net(9e9)
	end
	vpf:ClearAllChildren()
	if esp then
	    vpf.CurrentCamera = ws.CurrentCamera
		for i, plr in pairs(plrs:GetPlayers()) do
			if ( (not espTeamCheck) or (plr.Team ~= lp.Team) ) and (plr ~= lp) then
				local c = plr.Character
				if c and c.Parent then
					for i, part in pairs(c:GetDescendants()) do
						if part:IsA("BasePart") then
							local part1 = Instance.new("Part", vpf)
							part1.Color = espcolor
							part1.Size = part.Size
							part1.CFrame = part.CFrame
						end
					end
				end
			end
		end
	end
	if viewedPlayer then
	    local c = viewedPlayer.Character
	    if c and c.Parent then
    	    local subject = c:FindFirstChildOfClass("Humanoid") or c:FindFirstChildWhichIsA("BasePart")
    	    if subject then
    	        ws.CurrentCamera.CameraType = Enum.CameraType.Custom
    	        ws.CurrentCamera.CameraSubject = subject
    	    end
	    end
	end
end)

makeutilbutton("加入").MouseButton1Click:Connect(function()
	if #plrs:GetPlayers() == 1 then
		lp:Kick()
		wait()
		game:GetService("TeleportService"):Teleport(game.PlaceId, lp)
	else
		game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, lp)
	end
end)

makeutilbutton("服务器跃点").MouseButton1Click:Connect(function()
	local servers = nil
	pcall(function()
		servers = game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data
	end)
	if type(servers) ~= "table" then
		notify("error getting server list")
		return
	end
	local jobIds = {}
	for i, v in pairs(servers) do
		if type(v) == "table" and v.maxPlayers > v.playing and v.id ~= game.JobId then
			table.insert(jobIds, v.id)
		end
	end
	if #jobIds > 0 then
		game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, jobIds[math.random(1, #jobIds)])
	else
		notify("no server found")
	end
end)

makeutilbutton("即时休假").MouseButton1Click:Connect(function()
	lp:Kick()
	wait()
	game:Shutdown()
end)


local cbringframe = makeFrame(scrollingFrame, "把他传送过来", Color3.fromRGB(15, 100, 15))
local cbringscroll = cbringframe.ScrollingFrame

local cbring = {}

local togglecbring = nil

local function makecbringframe(name)
	local plrcbringf = Instance.new("Frame")
	local uncbringbtn = Instance.new("TextButton")
	local cbringplrname = Instance.new("TextBox")
	plrcbringf.Name = name
	plrcbringf.BackgroundColor3 = Color3.fromRGB(106, 106, 106)
	plrcbringf.BorderSizePixel = 0
	plrcbringf.Size = UDim2.new(1, -10, 0, 30)
	plrcbringf.Parent = cbringscroll
	uncbringbtn.Name = "removeposbutton"
	uncbringbtn.Parent = plrcbringf
	uncbringbtn.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
	uncbringbtn.BorderSizePixel = 0
	uncbringbtn.Position = UDim2.new(1, -25, 0, 5)
	uncbringbtn.Size = UDim2.new(0, 20, 1, -10)
	uncbringbtn.Font = Enum.Font.SourceSans
	uncbringbtn.Text = "X"
	uncbringbtn.TextColor3 = Color3.fromRGB(223, 223, 223)
	uncbringbtn.TextSize = 16.000
	cbringplrname.Parent = plrcbringf
	cbringplrname.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	cbringplrname.BackgroundTransparency = 1.000
	cbringplrname.BorderSizePixel = 0
	cbringplrname.Position = UDim2.new(0, 5, 0, 5)
	cbringplrname.Size = UDim2.new(1, -80, 1, -10)
	cbringplrname.Font = Enum.Font.SourceSans
	cbringplrname.Text = name
	cbringplrname.TextColor3 = Color3.fromRGB(0, 0, 0)
	cbringplrname.TextSize = 25.000
	cbringplrname.TextXAlignment = Enum.TextXAlignment.Left
	uncbringbtn.MouseButton1Click:Connect(function()
		togglecbring(name)
	end)
	return plrcbringf
end

togglecbring = function(name)
	local frame = gp(cbringscroll, name, "Frame")
	if frame then
		pcall(function()
			table.remove(cbring, table.find(cbring, name))
		end)
		frame:Destroy()
		notify("removed " .. name .. " from cbring")
	else
		table.insert(cbring, name)
		makecbringframe(name)
		notify("added " .. name .. " to cbring")
	end
end

cbringb.MouseButton1Click:Connect(function()
	togglecbring(currentplayer.Name)
end)

local cbringallbtn = Instance.new("TextButton")
cbringallbtn.Name = "cbringallbtn"
cbringallbtn.Parent = cbringframe.framelabel
cbringallbtn.BackgroundColor3 = Color3.fromRGB(59, 59, 59)
cbringallbtn.BorderSizePixel = 0
cbringallbtn.Position = UDim2.new(1, -57, 0, 2)
cbringallbtn.Size = UDim2.new(0, 55, 1, -4)
cbringallbtn.Font = Enum.Font.SourceSans
cbringallbtn.Text = "+添加全部"
cbringallbtn.TextColor3 = Color3.fromRGB(206, 206, 206)
cbringallbtn.TextSize = 14.000
cbringallbtn.MouseButton1Click:Connect(function()
	for i, v in pairs(plrs:GetPlayers()) do
		if (v ~= lp) and v and v.Parent and (not table.find(cbring, v.Name)) then
			togglecbring(v.Name)
		end
	end
end)

spawn(function()
	while gui do
		local waited = false
		local lpc = lp.Character
		if lpc and lpc.Parent then
			local part0 = gp(lpc, "Torso", "BasePart") or gp(lpc, "HumanoidRootPart", "BasePart") or gp(lpc, "Head", "BasePart") or lpc:FindFirstChildWhichIsA("BasePart")
			if part0 then
				for i, v in pairs(plrs:GetPlayers()) do
					if v ~= lp then
						local c = v.Character
						if c and c.Parent then
							if table.find(cbring, v.Name) then
								local part1 = gp(c, part0.Name, "BasePart") or gp(c, "Torso", "BasePart") or gp(c, "HumanoidRootPart", "BasePart") or gp(c, "Head", "BasePart") or c:FindFirstChildWhichIsA("BasePart")
								if part1 then
									local p1cf = part0.CFrame
									waited = true
									weldtp(part1, p1cf + p1cf.LookVector * 2)
								end
							end
						end
					end
				end
			end
		end
		if not waited then
			stepped:Wait()
		end
	end
end)

local con = nil
con = stepped:Connect(function()
    if not gui then
        con:Disconnect()
        return
    end
	local lpc = lp.Character
	if noclip and lpc and lpc.Parent then
		for i, v in pairs(lpc:GetDescendants()) do
			if v:IsA("BasePart") then
				v.CanCollide = false
			end
		end
	end
end)

local con0, con1 = nil, nil
local function antiflingF()
    if not gui then
        con0:Disconnect()
        con1:Disconnect()
        return
    end
    if antifling then
		for i, v in pairs(plrs:GetPlayers()) do
			if v ~= lp then
				local c = v.Character
				if c and c.Parent then
					for i1, v1 in pairs(c:GetDescendants()) do
						if v1:IsA("BasePart") then
							v1.CanCollide = false
							v1.Velocity = v3_0
							v1.RotVelocity = v3_0
						end
					end
				end
			end
        end
    end
end
con0 = stepped:Connect(antiflingF)
con1 = heartbeat:Connect(antiflingF)

gui.Enabled = true
renderstepped:Wait()
playercframe.Visible = false

  	end    

})

Tab:AddButton({

	Name = "人物踏空",

	Callback = function()

     loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Float'))()

  	end    

})

Tab:AddButton({

	Name = "人物铁拳",

	Callback = function()

     loadstring(game:HttpGet('https://raw.githubusercontent.com/0Ben1/fe/main/obf_rf6iQURzu1fqrytcnLBAvW34C9N55kS9g9G3CKz086rC47M6632sEd4ZZYB0AYgV.lua.txt'))()

  	end    

})

Tab:AddButton({

	Name = "甩飞敌人",

	Callback = function()

     loadstring(game:HttpGet("https://pastebin.com/raw/zqyDSUWX"))()

  	end    

})

Tab:AddButton({

	Name = "灵魂出窍",

	Callback = function()

     for i, v in pairs(game.CoreGui:GetChildren()) do
    if v:FindFirstChild("UI") then
        v:Destroy()
    end
end
wait(1)

local UI = Instance.new("ScreenGui")
local Main = Instance.new("ImageLabel")
local Toggle = Instance.new("ImageLabel")
local Button = Instance.new("TextButton")
local Circle = Instance.new("ImageLabel")
local InvisText = Instance.new("TextLabel")
local Credits = Instance.new("TextLabel")

--Properties:

UI.Name = "UI"
UI.Parent = game:WaitForChild("CoreGui")

Main.Name = "Main"
Main.Parent = UI
Main.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
Main.BackgroundTransparency = 1.000
Main.Position = UDim2.new(0.5, -75, 0.41232878, -37)
Main.Size = UDim2.new(0, 248, 0, 107)
Main.Image = "rbxassetid://3570695787"
Main.ImageColor3 = Color3.fromRGB(48, 48, 48)
Main.ScaleType = Enum.ScaleType.Slice
Main.SliceCenter = Rect.new(100, 100, 100, 100)
Main.SliceScale = 0.120

Toggle.Name = "Toggle"
Toggle.Parent = Main
Toggle.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
Toggle.BackgroundTransparency = 1.000
Toggle.Position = UDim2.new(0.5, -23, 0.565420568, -11)
Toggle.Size = UDim2.new(0, 46, 0, 22)
Toggle.Image = "rbxassetid://3570695787"
Toggle.ImageColor3 = Color3.fromRGB(200, 200, 200)
Toggle.ScaleType = Enum.ScaleType.Slice
Toggle.SliceCenter = Rect.new(100, 100, 100, 100)
Toggle.SliceScale = 0.120

Button.Name = "Button"
Button.Parent = Toggle
Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Button.BackgroundTransparency = 1.000
Button.Size = UDim2.new(1, 0, 1, 0)
Button.Font = Enum.Font.SourceSans
Button.TextColor3 = Color3.fromRGB(0, 0, 0)
Button.TextSize = 14.000
Button.TextTransparency = 1.000

local toggled = false
local debounce = false

Button.MouseButton1Click:Connect(
    function()
        if debounce == false then
            if toggled == true then
                debounce = true
                game:GetService("TweenService"):Create(
                    Toggle,
                    TweenInfo.new(0.25),
                    {ImageColor3 = Color3.fromRGB(200, 200, 200)}
                ):Play()
                game:GetService("TweenService"):Create(Circle, TweenInfo.new(0.25), {Position = UDim2.new(0, 2, 0, 2)}):Play(

                )
                wait(0.25)
                debounce = false
                toggled = false

                game.Players.LocalPlayer.Character.Humanoid.Health = 0
            elseif toggled == false then
                debounce = true
                game:GetService("TweenService"):Create(
                    Toggle,
                    TweenInfo.new(0.25),
                    {ImageColor3 = Color3.fromRGB(64, 200, 114)}
                ):Play()
                game:GetService("TweenService"):Create(
                    Circle,
                    TweenInfo.new(0.25),
                    {Position = UDim2.new(1, -20, 0, 2)}
                ):Play()
                wait(0.25)
                debounce = false
                toggled = true
                for i, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                    if v.Name == "Root" or v.Name == "RootJoint" then
                        v:Destroy()
                    end
                end
            end
        end
    end
)

Circle.Name = "Circle"
Circle.Parent = Toggle
Circle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Circle.BackgroundTransparency = 1.000
Circle.Position = UDim2.new(0, 2, 0, 2)
Circle.Size = UDim2.new(0, 18, 0, 18)
Circle.Image = "rbxassetid://3570695787"
Circle.ScaleType = Enum.ScaleType.Slice
Circle.SliceCenter = Rect.new(100, 100, 100, 100)
Circle.SliceScale = 0.120

InvisText.Name = "InvisText"
InvisText.Parent = Main
InvisText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
InvisText.BackgroundTransparency = 1.000
InvisText.BorderColor3 = Color3.fromRGB(27, 42, 53)
InvisText.BorderSizePixel = 0
InvisText.Position = UDim2.new(0.0967741907, 0, 0, 0)
InvisText.Size = UDim2.new(0, 200, 0, 50)
InvisText.Font = Enum.Font.SourceSans
InvisText.Text = "通用隐身(出体)"
InvisText.TextColor3 = Color3.fromRGB(255, 255, 255)
InvisText.TextScaled = true
InvisText.TextSize = 14.000
InvisText.TextTransparency = 0.140
InvisText.TextWrapped = true

Credits.Name = "Credits"
Credits.Parent = Main
Credits.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Credits.BackgroundTransparency = 1.000
Credits.BorderColor3 = Color3.fromRGB(27, 42, 53)
Credits.BorderSizePixel = 0
Credits.Position = UDim2.new(0.0241935477, 0, 0.738317728, 0)
Credits.Size = UDim2.new(0, 94, 0, 18)
Credits.Font = Enum.Font.SourceSans
Credits.Text = "Bebo Mods汉化组"
Credits.TextColor3 = Color3.fromRGB(255, 255, 255)
Credits.TextScaled = true
Credits.TextSize = 14.000
Credits.TextTransparency = 0.250
Credits.TextWrapped = true

-- Scripts:

local UserInputService = game:GetService("UserInputService")
local runService = (game:GetService("RunService"))

local gui = Main

local dragging
local dragInput
local dragStart
local startPos

function Lerp(a, b, m)
    return a + (b - a) * m
end

local lastMousePos
local lastGoalPos
local DRAG_SPEED = (8) -- // The speed of the UI darg.
function Update(dt)
    if not (startPos) then
        return
    end
    if not (dragging) and (lastGoalPos) then
        gui.Position =
            UDim2.new(
            startPos.X.Scale,
            Lerp(gui.Position.X.Offset, lastGoalPos.X.Offset, dt * DRAG_SPEED),
            startPos.Y.Scale,
            Lerp(gui.Position.Y.Offset, lastGoalPos.Y.Offset, dt * DRAG_SPEED)
        )
        return
    end

    local delta = (lastMousePos - UserInputService:GetMouseLocation())
    local xGoal = (startPos.X.Offset - delta.X)
    local yGoal = (startPos.Y.Offset - delta.Y)
    lastGoalPos = UDim2.new(startPos.X.Scale, xGoal, startPos.Y.Scale, yGoal)
    gui.Position =
        UDim2.new(
        startPos.X.Scale,
        Lerp(gui.Position.X.Offset, xGoal, dt * DRAG_SPEED),
        startPos.Y.Scale,
        Lerp(gui.Position.Y.Offset, yGoal, dt * DRAG_SPEED)
    )
end

gui.InputBegan:Connect(
    function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = gui.Position
            lastMousePos = UserInputService:GetMouseLocation()

            input.Changed:Connect(
                function()
                    if input.UserInputState == Enum.UserInputState.End then
                        dragging = false
                    end
                end
            )
        end
    end
)

gui.InputChanged:Connect(
    function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end
)

runService.Heartbeat:Connect(Update)

  	end    

})

Tab:AddButton({

	Name = "碰撞体积",

	Callback = function()

     loadstring(game:HttpGet('https://pastebin.com/raw/JYFXjEVh'))()

  	end    

})

Tab:AddButton({

	Name = "自身黑洞",

	Callback = function()

     loadstring(game:HttpGet("https://pastebin.com/raw/LHsrytuj"))()

  	end    

})

Tab:AddButton({

	Name = "定点黑洞",

	Callback = function()

     --blackhole script 0.4: fixed all issues
loadstring(game:HttpGet('https://gist.githubusercontent.com/AxolotlBmgo/8888080921c2b426a32dd9ff587baff1/raw/d45e03afed3c1716f36523bbf6dd741d3d2aad00/gistfile1.txt'))()

  	end    

})

Tab:AddButton({

	Name = "人物穿墙",

	Callback = function()

     local Workspace = game:GetService("Workspace")
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local Noclip = Instance.new("ScreenGui")
local BG = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Toggle = Instance.new("TextButton")
local StatusPF = Instance.new("TextLabel")
local Status = Instance.new("TextLabel")
local Credit = Instance.new("TextLabel")
local Plr = Players.LocalPlayer
local Clipon = false

Noclip.Name = "Noclip"
Noclip.Parent = game.CoreGui

BG.Name = "BG"
BG.Parent = Noclip
BG.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
BG.BorderColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
BG.BorderSizePixel = 2
BG.Position = UDim2.new(0.149479166, 0, 0.82087779, 0)
BG.Size = UDim2.new(0, 210, 0, 127)
BG.Active = true
BG.Draggable = true

Title.Name = "Title"
Title.Parent = BG
Title.BackgroundColor3 = Color3.new(0.266667, 0.00392157, 0.627451)
Title.BorderColor3 = Color3.new(0.180392, 0, 0.431373)
Title.BorderSizePixel = 2
Title.Size = UDim2.new(0, 210, 0, 33)
Title.Font = Enum.Font.Highway
Title.Text = "Noclip"
Title.TextColor3 = Color3.new(1, 1, 1)
Title.FontSize = Enum.FontSize.Size32
Title.TextSize = 30
Title.TextStrokeColor3 = Color3.new(0.180392, 0, 0.431373)
Title.TextStrokeTransparency = 0

Toggle.Parent = BG
Toggle.BackgroundColor3 = Color3.new(0.266667, 0.00392157, 0.627451)
Toggle.BorderColor3 = Color3.new(0.180392, 0, 0.431373)
Toggle.BorderSizePixel = 2
Toggle.Position = UDim2.new(0.152380958, 0, 0.374192119, 0)
Toggle.Size = UDim2.new(0, 146, 0, 36)
Toggle.Font = Enum.Font.Highway
Toggle.FontSize = Enum.FontSize.Size28
Toggle.Text = "Toggle"
Toggle.TextColor3 = Color3.new(1, 1, 1)
Toggle.TextSize = 25
Toggle.TextStrokeColor3 = Color3.new(0.180392, 0, 0.431373)
Toggle.TextStrokeTransparency = 0

StatusPF.Name = "StatusPF"
StatusPF.Parent = BG
StatusPF.BackgroundColor3 = Color3.new(1, 1, 1)
StatusPF.BackgroundTransparency = 1
StatusPF.Position = UDim2.new(0.314285725, 0, 0.708661377, 0)
StatusPF.Size = UDim2.new(0, 56, 0, 20)
StatusPF.Font = Enum.Font.Highway
StatusPF.FontSize = Enum.FontSize.Size24
StatusPF.Text = "Status:"
StatusPF.TextColor3 = Color3.new(1, 1, 1)
StatusPF.TextSize = 20
StatusPF.TextStrokeColor3 = Color3.new(0.333333, 0.333333, 0.333333)
StatusPF.TextStrokeTransparency = 0
StatusPF.TextWrapped = true

Status.Name = "Status"
Status.Parent = BG
Status.BackgroundColor3 = Color3.new(1, 1, 1)
Status.BackgroundTransparency = 1
Status.Position = UDim2.new(0.580952346, 0, 0.708661377, 0)
Status.Size = UDim2.new(0, 56, 0, 20)
Status.Font = Enum.Font.Highway
Status.FontSize = Enum.FontSize.Size14
Status.Text = "off"
Status.TextColor3 = Color3.new(0.666667, 0, 0)
Status.TextScaled = true
Status.TextSize = 14
Status.TextStrokeColor3 = Color3.new(0.180392, 0, 0.431373)
Status.TextWrapped = true
Status.TextXAlignment = Enum.TextXAlignment.Left

Credit.Name = "Credit"
Credit.Parent = BG
Credit.BackgroundColor3 = Color3.new(1, 1, 1)
Credit.BackgroundTransparency = 1
Credit.Position = UDim2.new(0.195238099, 0, 0.866141737, 0)
Credit.Size = UDim2.new(0, 128, 0, 17)
Credit.Font = Enum.Font.SourceSans
Credit.FontSize = Enum.FontSize.Size18
Credit.Text = "Created by KingLuna"
Credit.TextColor3 = Color3.new(1, 1, 1)
Credit.TextSize = 16
Credit.TextStrokeColor3 = Color3.new(0.196078, 0.196078, 0.196078)
Credit.TextStrokeTransparency = 0
Credit.TextWrapped = true

Toggle.MouseButton1Click:connect(function()
	if Status.Text == "off" then
		Clipon = true
		Status.Text = "on"
		Status.TextColor3 = Color3.new(0,185,0)
		Stepped = game:GetService("RunService").Stepped:Connect(function()
			if not Clipon == false then
				for a, b in pairs(Workspace:GetChildren()) do
                if b.Name == Plr.Name then
                for i, v in pairs(Workspace[Plr.Name]:GetChildren()) do
                if v:IsA("BasePart") then
                v.CanCollide = false
                end end end end
			else
				Stepped:Disconnect()
			end
		end)
	elseif Status.Text == "on" then
		Clipon = false
		Status.Text = "off"
		Status.TextColor3 = Color3.new(170,0,0)
	end
end)

  	end    

})

Tab:AddButton({

	Name = "发射核弹[安慰]",

	Callback = function()

     -- made by 1ndrew nuke script
function sandbox(var,func)
	local env = getfenv(func)
	local newenv = setmetatable({},{
		__index = function(self,k)
			if k=="script" then
				return var
			else
				return env[k]
			end
		end,
	})
	setfenv(func,newenv)
	return func
end
cors = {}
mas = Instance.new("Model",game:GetService("Lighting"))
Model0 = Instance.new("Model")
Model1 = Instance.new("Model")
Part2 = Instance.new("Part")
CylinderMesh3 = Instance.new("CylinderMesh")
ObjectValue4 = Instance.new("ObjectValue")
Part5 = Instance.new("Part")
BlockMesh6 = Instance.new("BlockMesh")
Part7 = Instance.new("Part")
CylinderMesh8 = Instance.new("CylinderMesh")
Part9 = Instance.new("Part")
CylinderMesh10 = Instance.new("CylinderMesh")
Weld11 = Instance.new("Weld")
Weld12 = Instance.new("Weld")
Part13 = Instance.new("Part")
Script14 = Instance.new("Script")
BlockMesh15 = Instance.new("BlockMesh")
Part16 = Instance.new("Part")
CylinderMesh17 = Instance.new("CylinderMesh")
Part18 = Instance.new("Part")
BlockMesh19 = Instance.new("BlockMesh")
Weld20 = Instance.new("Weld")
Weld21 = Instance.new("Weld")
Weld22 = Instance.new("Weld")
Part23 = Instance.new("Part")
BlockMesh24 = Instance.new("BlockMesh")
Part25 = Instance.new("Part")
BlockMesh26 = Instance.new("BlockMesh")
Part27 = Instance.new("Part")
CylinderMesh28 = Instance.new("CylinderMesh")
Part29 = Instance.new("Part")
BlockMesh30 = Instance.new("BlockMesh")
Part31 = Instance.new("Part")
BlockMesh32 = Instance.new("BlockMesh")
ObjectValue33 = Instance.new("ObjectValue")
VehicleSeat34 = Instance.new("VehicleSeat")
Sound35 = Instance.new("Sound")
Script36 = Instance.new("Script")
Script37 = Instance.new("Script")
BlockMesh38 = Instance.new("BlockMesh")
Script39 = Instance.new("Script")
ScreenGui40 = Instance.new("ScreenGui")
Frame41 = Instance.new("Frame")
TextButton42 = Instance.new("TextButton")
TextButton43 = Instance.new("TextButton")
TextButton44 = Instance.new("TextButton")
TextButton45 = Instance.new("TextButton")
Script46 = Instance.new("Script")
ObjectValue47 = Instance.new("ObjectValue")
Frame48 = Instance.new("Frame")
TextButton49 = Instance.new("TextButton")
Script50 = Instance.new("Script")
TextButton51 = Instance.new("TextButton")
Script52 = Instance.new("Script")
TextLabel53 = Instance.new("TextLabel")
TextButton54 = Instance.new("TextButton")
Script55 = Instance.new("Script")
TextButton56 = Instance.new("TextButton")
Script57 = Instance.new("Script")
TextLabel58 = Instance.new("TextLabel")
NumberValue59 = Instance.new("NumberValue")
NumberValue60 = Instance.new("NumberValue")
NumberValue61 = Instance.new("NumberValue")
Frame62 = Instance.new("Frame")
TextLabel63 = Instance.new("TextLabel")
TextLabel64 = Instance.new("TextLabel")
TextLabel65 = Instance.new("TextLabel")
TextLabel66 = Instance.new("TextLabel")
TextLabel67 = Instance.new("TextLabel")
TextLabel68 = Instance.new("TextLabel")
TextLabel69 = Instance.new("TextLabel")
TextLabel70 = Instance.new("TextLabel")
TextButton71 = Instance.new("TextButton")
Script72 = Instance.new("Script")
Script73 = Instance.new("Script")
NumberValue74 = Instance.new("NumberValue")
Part75 = Instance.new("Part")
BlockMesh76 = Instance.new("BlockMesh")
Part77 = Instance.new("Part")
CylinderMesh78 = Instance.new("CylinderMesh")
Part79 = Instance.new("Part")
CylinderMesh80 = Instance.new("CylinderMesh")
Script81 = Instance.new("Script")
Part82 = Instance.new("Part")
Fire83 = Instance.new("Fire")
Smoke84 = Instance.new("Smoke")
Smoke85 = Instance.new("Smoke")
Smoke86 = Instance.new("Smoke")
Smoke87 = Instance.new("Smoke")
Smoke88 = Instance.new("Smoke")
BillboardGui89 = Instance.new("BillboardGui")
ImageLabel90 = Instance.new("ImageLabel")
Script91 = Instance.new("Script")
SpecialMesh92 = Instance.new("SpecialMesh")
Script93 = Instance.new("Script")
Script94 = Instance.new("Script")
Sound95 = Instance.new("Sound")
Sky96 = Instance.new("Sky")
Part97 = Instance.new("Part")
Sound98 = Instance.new("Sound")
Sound99 = Instance.new("Sound")
SpecialMesh100 = Instance.new("SpecialMesh")
PointLight101 = Instance.new("PointLight")
Smoke102 = Instance.new("Smoke")
Sound103 = Instance.new("Sound")
Model104 = Instance.new("Model")
Part105 = Instance.new("Part")
SpecialMesh106 = Instance.new("SpecialMesh")
Part107 = Instance.new("Part")
SpecialMesh108 = Instance.new("SpecialMesh")
Smoke109 = Instance.new("Smoke")
BillboardGui110 = Instance.new("BillboardGui")
ImageLabel111 = Instance.new("ImageLabel")
Script112 = Instance.new("Script")
Smoke113 = Instance.new("Smoke")
Smoke114 = Instance.new("Smoke")
Smoke115 = Instance.new("Smoke")
StringValue116 = Instance.new("StringValue")
StringValue117 = Instance.new("StringValue")
StringValue118 = Instance.new("StringValue")
Script119 = Instance.new("Script")
Script120 = Instance.new("Script")
Sound121 = Instance.new("Sound")
Sky122 = Instance.new("Sky")
Part123 = Instance.new("Part")
BlockMesh124 = Instance.new("BlockMesh")
Part125 = Instance.new("Part")
BlockMesh126 = Instance.new("BlockMesh")
Part127 = Instance.new("Part")
BlockMesh128 = Instance.new("BlockMesh")
Part129 = Instance.new("Part")
BlockMesh130 = Instance.new("BlockMesh")
Part131 = Instance.new("Part")
BlockMesh132 = Instance.new("BlockMesh")
Part133 = Instance.new("Part")
BlockMesh134 = Instance.new("BlockMesh")
Part135 = Instance.new("Part")
BlockMesh136 = Instance.new("BlockMesh")
Part137 = Instance.new("Part")
BlockMesh138 = Instance.new("BlockMesh")
Part139 = Instance.new("Part")
BlockMesh140 = Instance.new("BlockMesh")
Part141 = Instance.new("Part")
BlockMesh142 = Instance.new("BlockMesh")
Part143 = Instance.new("Part")
BlockMesh144 = Instance.new("BlockMesh")
Part145 = Instance.new("Part")
BlockMesh146 = Instance.new("BlockMesh")
Part147 = Instance.new("Part")
BlockMesh148 = Instance.new("BlockMesh")
Part149 = Instance.new("Part")
BlockMesh150 = Instance.new("BlockMesh")
Part151 = Instance.new("Part")
BlockMesh152 = Instance.new("BlockMesh")
Part153 = Instance.new("Part")
BlockMesh154 = Instance.new("BlockMesh")
Part155 = Instance.new("Part")
BlockMesh156 = Instance.new("BlockMesh")
Part157 = Instance.new("Part")
BlockMesh158 = Instance.new("BlockMesh")
Part159 = Instance.new("Part")
CylinderMesh160 = Instance.new("CylinderMesh")
Part161 = Instance.new("Part")
BlockMesh162 = Instance.new("BlockMesh")
Part163 = Instance.new("Part")
BlockMesh164 = Instance.new("BlockMesh")
Part165 = Instance.new("Part")
BlockMesh166 = Instance.new("BlockMesh")
WedgePart167 = Instance.new("WedgePart")
SpecialMesh168 = Instance.new("SpecialMesh")
WedgePart169 = Instance.new("WedgePart")
SpecialMesh170 = Instance.new("SpecialMesh")
WedgePart171 = Instance.new("WedgePart")
SpecialMesh172 = Instance.new("SpecialMesh")
WedgePart173 = Instance.new("WedgePart")
SpecialMesh174 = Instance.new("SpecialMesh")
WedgePart175 = Instance.new("WedgePart")
SpecialMesh176 = Instance.new("SpecialMesh")
WedgePart177 = Instance.new("WedgePart")
SpecialMesh178 = Instance.new("SpecialMesh")
WedgePart179 = Instance.new("WedgePart")
SpecialMesh180 = Instance.new("SpecialMesh")
WedgePart181 = Instance.new("WedgePart")
SpecialMesh182 = Instance.new("SpecialMesh")
WedgePart183 = Instance.new("WedgePart")
SpecialMesh184 = Instance.new("SpecialMesh")
WedgePart185 = Instance.new("WedgePart")
SpecialMesh186 = Instance.new("SpecialMesh")
WedgePart187 = Instance.new("WedgePart")
SpecialMesh188 = Instance.new("SpecialMesh")
WedgePart189 = Instance.new("WedgePart")
SpecialMesh190 = Instance.new("SpecialMesh")
WedgePart191 = Instance.new("WedgePart")
SpecialMesh192 = Instance.new("SpecialMesh")
Model193 = Instance.new("Model")
Part194 = Instance.new("Part")
CylinderMesh195 = Instance.new("CylinderMesh")
Part196 = Instance.new("Part")
CylinderMesh197 = Instance.new("CylinderMesh")
Part198 = Instance.new("Part")
CylinderMesh199 = Instance.new("CylinderMesh")
Part200 = Instance.new("Part")
CylinderMesh201 = Instance.new("CylinderMesh")
Part202 = Instance.new("Part")
BlockMesh203 = Instance.new("BlockMesh")
Part204 = Instance.new("Part")
BlockMesh205 = Instance.new("BlockMesh")
Part206 = Instance.new("Part")
BlockMesh207 = Instance.new("BlockMesh")
Part208 = Instance.new("Part")
BlockMesh209 = Instance.new("BlockMesh")
Part210 = Instance.new("Part")
BlockMesh211 = Instance.new("BlockMesh")
Part212 = Instance.new("Part")
BlockMesh213 = Instance.new("BlockMesh")
Part214 = Instance.new("Part")
BlockMesh215 = Instance.new("BlockMesh")
Part216 = Instance.new("Part")
BlockMesh217 = Instance.new("BlockMesh")
Part218 = Instance.new("Part")
BlockMesh219 = Instance.new("BlockMesh")
Part220 = Instance.new("Part")
BlockMesh221 = Instance.new("BlockMesh")
Part222 = Instance.new("Part")
BlockMesh223 = Instance.new("BlockMesh")
Part224 = Instance.new("Part")
BlockMesh225 = Instance.new("BlockMesh")
Part226 = Instance.new("Part")
BlockMesh227 = Instance.new("BlockMesh")
Part228 = Instance.new("Part")
BlockMesh229 = Instance.new("BlockMesh")
Part230 = Instance.new("Part")
BlockMesh231 = Instance.new("BlockMesh")
Part232 = Instance.new("Part")
BlockMesh233 = Instance.new("BlockMesh")
Part234 = Instance.new("Part")
BlockMesh235 = Instance.new("BlockMesh")
Part236 = Instance.new("Part")
BlockMesh237 = Instance.new("BlockMesh")
Part238 = Instance.new("Part")
BlockMesh239 = Instance.new("BlockMesh")
Part240 = Instance.new("Part")
BlockMesh241 = Instance.new("BlockMesh")
Part242 = Instance.new("Part")
BlockMesh243 = Instance.new("BlockMesh")
Part244 = Instance.new("Part")
BlockMesh245 = Instance.new("BlockMesh")
Part246 = Instance.new("Part")
BlockMesh247 = Instance.new("BlockMesh")
Part248 = Instance.new("Part")
CylinderMesh249 = Instance.new("CylinderMesh")
Part250 = Instance.new("Part")
BlockMesh251 = Instance.new("BlockMesh")
Part252 = Instance.new("Part")
BlockMesh253 = Instance.new("BlockMesh")
Part254 = Instance.new("Part")
BlockMesh255 = Instance.new("BlockMesh")
Part256 = Instance.new("Part")
BlockMesh257 = Instance.new("BlockMesh")
Part258 = Instance.new("Part")
BlockMesh259 = Instance.new("BlockMesh")
Part260 = Instance.new("Part")
BlockMesh261 = Instance.new("BlockMesh")
Part262 = Instance.new("Part")
BlockMesh263 = Instance.new("BlockMesh")
Part264 = Instance.new("Part")
BlockMesh265 = Instance.new("BlockMesh")
Part266 = Instance.new("Part")
BlockMesh267 = Instance.new("BlockMesh")
Part268 = Instance.new("Part")
BlockMesh269 = Instance.new("BlockMesh")
Part270 = Instance.new("Part")
BlockMesh271 = Instance.new("BlockMesh")
Part272 = Instance.new("Part")
BlockMesh273 = Instance.new("BlockMesh")
Part274 = Instance.new("Part")
BlockMesh275 = Instance.new("BlockMesh")
Part276 = Instance.new("Part")
BlockMesh277 = Instance.new("BlockMesh")
Part278 = Instance.new("Part")
BlockMesh279 = Instance.new("BlockMesh")
Part280 = Instance.new("Part")
BlockMesh281 = Instance.new("BlockMesh")
Part282 = Instance.new("Part")
BlockMesh283 = Instance.new("BlockMesh")
Part284 = Instance.new("Part")
BlockMesh285 = Instance.new("BlockMesh")
Part286 = Instance.new("Part")
BlockMesh287 = Instance.new("BlockMesh")
Part288 = Instance.new("Part")
BlockMesh289 = Instance.new("BlockMesh")
Part290 = Instance.new("Part")
BlockMesh291 = Instance.new("BlockMesh")
Part292 = Instance.new("Part")
BlockMesh293 = Instance.new("BlockMesh")
WedgePart294 = Instance.new("WedgePart")
SpecialMesh295 = Instance.new("SpecialMesh")
WedgePart296 = Instance.new("WedgePart")
SpecialMesh297 = Instance.new("SpecialMesh")
WedgePart298 = Instance.new("WedgePart")
SpecialMesh299 = Instance.new("SpecialMesh")
WedgePart300 = Instance.new("WedgePart")
SpecialMesh301 = Instance.new("SpecialMesh")
VehicleSeat302 = Instance.new("VehicleSeat")
WedgePart303 = Instance.new("WedgePart")
SpecialMesh304 = Instance.new("SpecialMesh")
WedgePart305 = Instance.new("WedgePart")
SpecialMesh306 = Instance.new("SpecialMesh")
WedgePart307 = Instance.new("WedgePart")
SpecialMesh308 = Instance.new("SpecialMesh")
WedgePart309 = Instance.new("WedgePart")
SpecialMesh310 = Instance.new("SpecialMesh")
WedgePart311 = Instance.new("WedgePart")
SpecialMesh312 = Instance.new("SpecialMesh")
WedgePart313 = Instance.new("WedgePart")
SpecialMesh314 = Instance.new("SpecialMesh")
WedgePart315 = Instance.new("WedgePart")
SpecialMesh316 = Instance.new("SpecialMesh")
WedgePart317 = Instance.new("WedgePart")
SpecialMesh318 = Instance.new("SpecialMesh")
WedgePart319 = Instance.new("WedgePart")
SpecialMesh320 = Instance.new("SpecialMesh")
WedgePart321 = Instance.new("WedgePart")
SpecialMesh322 = Instance.new("SpecialMesh")
WedgePart323 = Instance.new("WedgePart")
SpecialMesh324 = Instance.new("SpecialMesh")
WedgePart325 = Instance.new("WedgePart")
SpecialMesh326 = Instance.new("SpecialMesh")
WedgePart327 = Instance.new("WedgePart")
SpecialMesh328 = Instance.new("SpecialMesh")
WedgePart329 = Instance.new("WedgePart")
SpecialMesh330 = Instance.new("SpecialMesh")
WedgePart331 = Instance.new("WedgePart")
SpecialMesh332 = Instance.new("SpecialMesh")
WedgePart333 = Instance.new("WedgePart")
SpecialMesh334 = Instance.new("SpecialMesh")
WedgePart335 = Instance.new("WedgePart")
SpecialMesh336 = Instance.new("SpecialMesh")
WedgePart337 = Instance.new("WedgePart")
SpecialMesh338 = Instance.new("SpecialMesh")
Part339 = Instance.new("Part")
BlockMesh340 = Instance.new("BlockMesh")
Part341 = Instance.new("Part")
BlockMesh342 = Instance.new("BlockMesh")
Part343 = Instance.new("Part")
BlockMesh344 = Instance.new("BlockMesh")
Part345 = Instance.new("Part")
BlockMesh346 = Instance.new("BlockMesh")
Part347 = Instance.new("Part")
BlockMesh348 = Instance.new("BlockMesh")
Part349 = Instance.new("Part")
BlockMesh350 = Instance.new("BlockMesh")
Part351 = Instance.new("Part")
BlockMesh352 = Instance.new("BlockMesh")
Part353 = Instance.new("Part")
BlockMesh354 = Instance.new("BlockMesh")
Part355 = Instance.new("Part")
BlockMesh356 = Instance.new("BlockMesh")
Part357 = Instance.new("Part")
BlockMesh358 = Instance.new("BlockMesh")
Part359 = Instance.new("Part")
BlockMesh360 = Instance.new("BlockMesh")
Part361 = Instance.new("Part")
BlockMesh362 = Instance.new("BlockMesh")
Part363 = Instance.new("Part")
BlockMesh364 = Instance.new("BlockMesh")
Part365 = Instance.new("Part")
BlockMesh366 = Instance.new("BlockMesh")
Part367 = Instance.new("Part")
BlockMesh368 = Instance.new("BlockMesh")
Part369 = Instance.new("Part")
BlockMesh370 = Instance.new("BlockMesh")
Part371 = Instance.new("Part")
CylinderMesh372 = Instance.new("CylinderMesh")
Part373 = Instance.new("Part")
BlockMesh374 = Instance.new("BlockMesh")
Part375 = Instance.new("Part")
BlockMesh376 = Instance.new("BlockMesh")
Part377 = Instance.new("Part")
BlockMesh378 = Instance.new("BlockMesh")
Part379 = Instance.new("Part")
BlockMesh380 = Instance.new("BlockMesh")
Part381 = Instance.new("Part")
CylinderMesh382 = Instance.new("CylinderMesh")
Part383 = Instance.new("Part")
CylinderMesh384 = Instance.new("CylinderMesh")
Part385 = Instance.new("Part")
CylinderMesh386 = Instance.new("CylinderMesh")
WedgePart387 = Instance.new("WedgePart")
SpecialMesh388 = Instance.new("SpecialMesh")
WedgePart389 = Instance.new("WedgePart")
SpecialMesh390 = Instance.new("SpecialMesh")
WedgePart391 = Instance.new("WedgePart")
SpecialMesh392 = Instance.new("SpecialMesh")
WedgePart393 = Instance.new("WedgePart")
SpecialMesh394 = Instance.new("SpecialMesh")
WedgePart395 = Instance.new("WedgePart")
SpecialMesh396 = Instance.new("SpecialMesh")
WedgePart397 = Instance.new("WedgePart")
SpecialMesh398 = Instance.new("SpecialMesh")
WedgePart399 = Instance.new("WedgePart")
SpecialMesh400 = Instance.new("SpecialMesh")
WedgePart401 = Instance.new("WedgePart")
SpecialMesh402 = Instance.new("SpecialMesh")
WedgePart403 = Instance.new("WedgePart")
SpecialMesh404 = Instance.new("SpecialMesh")
WedgePart405 = Instance.new("WedgePart")
SpecialMesh406 = Instance.new("SpecialMesh")
WedgePart407 = Instance.new("WedgePart")
SpecialMesh408 = Instance.new("SpecialMesh")
Part409 = Instance.new("Part")
BlockMesh410 = Instance.new("BlockMesh")
Part411 = Instance.new("Part")
BlockMesh412 = Instance.new("BlockMesh")
Part413 = Instance.new("Part")
BlockMesh414 = Instance.new("BlockMesh")
Part415 = Instance.new("Part")
BlockMesh416 = Instance.new("BlockMesh")
Part417 = Instance.new("Part")
CylinderMesh418 = Instance.new("CylinderMesh")
Part419 = Instance.new("Part")
CylinderMesh420 = Instance.new("CylinderMesh")
Part421 = Instance.new("Part")
CylinderMesh422 = Instance.new("CylinderMesh")
Part423 = Instance.new("Part")
CylinderMesh424 = Instance.new("CylinderMesh")
Part425 = Instance.new("Part")
CylinderMesh426 = Instance.new("CylinderMesh")
Part427 = Instance.new("Part")
BlockMesh428 = Instance.new("BlockMesh")
WedgePart429 = Instance.new("WedgePart")
SpecialMesh430 = Instance.new("SpecialMesh")
WedgePart431 = Instance.new("WedgePart")
SpecialMesh432 = Instance.new("SpecialMesh")
Part433 = Instance.new("Part")
CylinderMesh434 = Instance.new("CylinderMesh")
Part435 = Instance.new("Part")
CylinderMesh436 = Instance.new("CylinderMesh")
Part437 = Instance.new("Part")
CylinderMesh438 = Instance.new("CylinderMesh")
Part439 = Instance.new("Part")
CylinderMesh440 = Instance.new("CylinderMesh")
Part441 = Instance.new("Part")
CylinderMesh442 = Instance.new("CylinderMesh")
Part443 = Instance.new("Part")
CylinderMesh444 = Instance.new("CylinderMesh")
Part445 = Instance.new("Part")
CylinderMesh446 = Instance.new("CylinderMesh")
Part447 = Instance.new("Part")
CylinderMesh448 = Instance.new("CylinderMesh")
Part449 = Instance.new("Part")
CylinderMesh450 = Instance.new("CylinderMesh")
Part451 = Instance.new("Part")
CylinderMesh452 = Instance.new("CylinderMesh")
Model0.Name = "MAZ-450 Scud Nuclear"
Model0.Parent = mas
Model1.Name = "turret"
Model1.Parent = Model0
Part2.Parent = Model1
Part2.Material = Enum.Material.Metal
Part2.BrickColor = BrickColor.new("Grime")
Part2.Rotation = Vector3.new(0, 90, 0)
Part2.FormFactor = Enum.FormFactor.Plate
Part2.Size = Vector3.new(2, 0.400000006, 3)
Part2.CFrame = CFrame.new(12.8898954, 10.3001108, 38.9598312, 3.06876391e-05, 6.20403944e-06, 1, -3.31463598e-05, 1, -6.68033636e-06, -1, -2.63205093e-05, 2.09769823e-05)
Part2.BackSurface = Enum.SurfaceType.Weld
Part2.BottomSurface = Enum.SurfaceType.Smooth
Part2.FrontSurface = Enum.SurfaceType.Weld
Part2.LeftSurface = Enum.SurfaceType.Weld
Part2.RightSurface = Enum.SurfaceType.Weld
Part2.TopSurface = Enum.SurfaceType.Weld
Part2.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part2.Position = Vector3.new(12.8898954, 10.3001108, 38.9598312)
Part2.Orientation = Vector3.new(0, 90, 0)
Part2.Color = Color3.new(0.498039, 0.556863, 0.392157)
CylinderMesh3.Parent = Part2
CylinderMesh3.Scale = Vector3.new(1.79999995, 1, 2)
CylinderMesh3.Scale = Vector3.new(1.79999995, 1, 2)
ObjectValue4.Name = "WER"
ObjectValue4.Parent = Model1
ObjectValue4.Value = Weld12
Part5.Parent = Model1
Part5.Material = Enum.Material.Metal
Part5.BrickColor = BrickColor.new("Grime")
Part5.Rotation = Vector3.new(-90, 0, -180)
Part5.FormFactor = Enum.FormFactor.Custom
Part5.Size = Vector3.new(3, 0.400000006, 0.399999976)
Part5.CFrame = CFrame.new(12.8898659, 10.7001324, 40.1598129, -1, 5.64619597e-07, 6.20732499e-06, 6.68464554e-06, 1.11793124e-05, 1, 1.02754129e-05, 1, -4.35367065e-06)
Part5.BackSurface = Enum.SurfaceType.Weld
Part5.BottomSurface = Enum.SurfaceType.Smooth
Part5.FrontSurface = Enum.SurfaceType.Weld
Part5.LeftSurface = Enum.SurfaceType.Weld
Part5.RightSurface = Enum.SurfaceType.Weld
Part5.TopSurface = Enum.SurfaceType.Weld
Part5.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part5.Position = Vector3.new(12.8898659, 10.7001324, 40.1598129)
Part5.Orientation = Vector3.new(-90, -180, 0)
Part5.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh6.Parent = Part5
Part7.Parent = Model1
Part7.Material = Enum.Material.Metal
Part7.BrickColor = BrickColor.new("Grime")
Part7.Rotation = Vector3.new(90, 0, -90)
Part7.FormFactor = Enum.FormFactor.Symmetric
Part7.Size = Vector3.new(1, 1, 1)
Part7.CFrame = CFrame.new(13.8899441, 12.0000706, 38.9595375, 4.72349166e-05, 1, -3.85977728e-06, -4.47773564e-05, -4.33497553e-06, -1, -1, 3.75242453e-05, 3.79514786e-05)
Part7.BottomSurface = Enum.SurfaceType.Weld
Part7.TopSurface = Enum.SurfaceType.Weld
Part7.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part7.Position = Vector3.new(13.8899441, 12.0000706, 38.9595375)
Part7.Orientation = Vector3.new(90, 90, 0)
Part7.Color = Color3.new(0.498039, 0.556863, 0.392157)
CylinderMesh8.Parent = Part7
CylinderMesh8.Scale = Vector3.new(2, 1, 1.79999995)
CylinderMesh8.Scale = Vector3.new(2, 1, 1.79999995)
Part9.Name = "Connector"
Part9.Parent = Model1
Part9.Material = Enum.Material.Metal
Part9.BrickColor = BrickColor.new("Grime")
Part9.Rotation = Vector3.new(0, 90, 0)
Part9.CanCollide = false
Part9.FormFactor = Enum.FormFactor.Symmetric
Part9.Size = Vector3.new(2, 2, 3)
Part9.CFrame = CFrame.new(12.8898888, 9.10011101, 38.9598045, 1.50947981e-05, 5.43772376e-06, 1, -2.21862356e-05, 1, -5.9147028e-06, -1, -1.53604906e-05, 5.38406312e-06)
Part9.BackSurface = Enum.SurfaceType.Weld
Part9.BottomSurface = Enum.SurfaceType.Weld
Part9.LeftSurface = Enum.SurfaceType.Weld
Part9.TopSurface = Enum.SurfaceType.Weld
Part9.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part9.Position = Vector3.new(12.8898888, 9.10011101, 38.9598045)
Part9.Orientation = Vector3.new(0, 90, 0)
Part9.Color = Color3.new(0.498039, 0.556863, 0.392157)
CylinderMesh10.Parent = Part9
CylinderMesh10.Scale = Vector3.new(1.5, 1, 2)
CylinderMesh10.Scale = Vector3.new(1.5, 1, 2)
Weld11.Parent = Part9
Weld11.C0 = CFrame.new(0, -1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld12.Parent = Part9
Weld12.C0 = CFrame.new(0, -1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld12.Part0 = Part9
Weld12.Part1 = Part79
Part13.Name = "Wpart"
Part13.Parent = Model1
Part13.Material = Enum.Material.Metal
Part13.BrickColor = BrickColor.new("Grime")
Part13.Rotation = Vector3.new(0, 90, 0)
Part13.FormFactor = Enum.FormFactor.Symmetric
Part13.Size = Vector3.new(2, 1, 2)
Part13.CFrame = CFrame.new(14.3899441, 12.0000477, 38.9595566, 1.52723678e-05, 5.4290017e-06, 1, -2.23110437e-05, 1, -5.90597438e-06, -1, -1.54852969e-05, 5.56163559e-06)
Part13.BottomSurface = Enum.SurfaceType.Smooth
Part13.LeftSurface = Enum.SurfaceType.Weld
Part13.RightSurface = Enum.SurfaceType.Weld
Part13.TopSurface = Enum.SurfaceType.Smooth
Part13.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part13.Position = Vector3.new(14.3899441, 12.0000477, 38.9595566)
Part13.Orientation = Vector3.new(0, 90, 0)
Part13.Color = Color3.new(0.498039, 0.556863, 0.392157)
Script14.Parent = Part13
table.insert(cors,sandbox(Script14,function()
b = script.Parent
c = script.Parent.Parent.Connector2

	local weld = Instance.new("Weld")

	weld.Part0 = c
	weld.Part1 = b

	weld.C0 = CFrame.new(0, 0, 1.5)

	weld.Parent = c

script.Parent.Parent.WER2.Value = weld
end))
BlockMesh15.Parent = Part13
Part16.Parent = Model1
Part16.Material = Enum.Material.Metal
Part16.BrickColor = BrickColor.new("Grime")
Part16.Rotation = Vector3.new(90, 0, -90)
Part16.FormFactor = Enum.FormFactor.Symmetric
Part16.Size = Vector3.new(1, 1, 1)
Part16.CFrame = CFrame.new(14.8899441, 12.0000582, 38.9595566, 3.124254e-05, 1, -4.64493451e-06, -3.3536413e-05, -5.12120005e-06, -1, -1, 2.15318451e-05, 2.67105879e-05)
Part16.BottomSurface = Enum.SurfaceType.Weld
Part16.TopSurface = Enum.SurfaceType.Weld
Part16.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part16.Position = Vector3.new(14.8899441, 12.0000582, 38.9595566)
Part16.Orientation = Vector3.new(90, 90, 0)
Part16.Color = Color3.new(0.498039, 0.556863, 0.392157)
CylinderMesh17.Parent = Part16
CylinderMesh17.Scale = Vector3.new(1.89999998, 1, 1.60000002)
CylinderMesh17.Scale = Vector3.new(1.89999998, 1, 1.60000002)
Part18.Name = "Connector2"
Part18.Parent = Model1
Part18.Material = Enum.Material.Metal
Part18.BrickColor = BrickColor.new("Grime")
Part18.Rotation = Vector3.new(0, 90, 0)
Part18.FormFactor = Enum.FormFactor.Symmetric
Part18.Size = Vector3.new(1, 1, 1)
Part18.CFrame = CFrame.new(12.8899441, 12.0000563, 38.959549, 1.52723678e-05, 5.4290017e-06, 1, -2.23110437e-05, 1, -5.90597438e-06, -1, -1.54852969e-05, 5.56163559e-06)
Part18.BottomSurface = Enum.SurfaceType.Weld
Part18.TopSurface = Enum.SurfaceType.Weld
Part18.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part18.Position = Vector3.new(12.8899441, 12.0000563, 38.959549)
Part18.Orientation = Vector3.new(0, 90, 0)
Part18.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh19.Parent = Part18
Weld20.Parent = Part18
Weld20.C0 = CFrame.new(0, 0, 1.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld21.Parent = Part18
Weld21.C0 = CFrame.new(0, 0, 1.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld22.Parent = Part18
Weld22.C0 = CFrame.new(0, 0, 1.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld22.Part0 = Part18
Weld22.Part1 = Part13
Part23.Parent = Model1
Part23.Material = Enum.Material.Metal
Part23.BrickColor = BrickColor.new("Grime")
Part23.Rotation = Vector3.new(-90, 0, 180)
Part23.FormFactor = Enum.FormFactor.Plate
Part23.Size = Vector3.new(1, 0.400000006, 1.20000005)
Part23.CFrame = CFrame.new(13.8899651, 11.5000286, 37.7595558, -1, -3.11981494e-05, 4.64657705e-06, 5.12284532e-06, 3.350517e-05, 1, -2.14874563e-05, 1, -2.66793468e-05)
Part23.BackSurface = Enum.SurfaceType.Weld
Part23.BottomSurface = Enum.SurfaceType.Weld
Part23.FrontSurface = Enum.SurfaceType.Weld
Part23.LeftSurface = Enum.SurfaceType.Weld
Part23.RightSurface = Enum.SurfaceType.Weld
Part23.TopSurface = Enum.SurfaceType.Smooth
Part23.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part23.Position = Vector3.new(13.8899651, 11.5000286, 37.7595558)
Part23.Orientation = Vector3.new(-90, 180, 0)
Part23.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh24.Parent = Part23
Part25.Parent = Model1
Part25.Material = Enum.Material.Metal
Part25.BrickColor = BrickColor.new("Grime")
Part25.Rotation = Vector3.new(-90, 0, 180)
Part25.FormFactor = Enum.FormFactor.Custom
Part25.Size = Vector3.new(3, 0.400000006, 0.399999976)
Part25.CFrame = CFrame.new(12.8899288, 10.7000723, 37.7598228, -1, -1.52280863e-05, 5.43084116e-06, 5.90815625e-06, -7.7088643e-08, 1, -5.51722951e-06, 1, 6.90283105e-06)
Part25.BackSurface = Enum.SurfaceType.Weld
Part25.BottomSurface = Enum.SurfaceType.Weld
Part25.FrontSurface = Enum.SurfaceType.Weld
Part25.LeftSurface = Enum.SurfaceType.Weld
Part25.RightSurface = Enum.SurfaceType.Weld
Part25.TopSurface = Enum.SurfaceType.Smooth
Part25.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part25.Position = Vector3.new(12.8899288, 10.7000723, 37.7598228)
Part25.Orientation = Vector3.new(-90, 180, 0)
Part25.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh26.Parent = Part25
Part27.Parent = Model1
Part27.Material = Enum.Material.Metal
Part27.BrickColor = BrickColor.new("Grime")
Part27.Rotation = Vector3.new(90, 0, 0)
Part27.FormFactor = Enum.FormFactor.Plate
Part27.Size = Vector3.new(1, 0.400000006, 1)
Part27.CFrame = CFrame.new(13.8899403, 11.6000576, 37.3598328, 1, -1.52945649e-05, -5.42817907e-06, -5.90515128e-06, 2.23266634e-05, -1, 5.5838309e-06, 1, 1.55009166e-05)
Part27.BackSurface = Enum.SurfaceType.Weld
Part27.BottomSurface = Enum.SurfaceType.Smooth
Part27.FrontSurface = Enum.SurfaceType.Weld
Part27.LeftSurface = Enum.SurfaceType.Weld
Part27.RightSurface = Enum.SurfaceType.Weld
Part27.TopSurface = Enum.SurfaceType.Weld
Part27.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part27.Position = Vector3.new(13.8899403, 11.6000576, 37.3598328)
Part27.Orientation = Vector3.new(90, 0, 0)
Part27.Color = Color3.new(0.498039, 0.556863, 0.392157)
CylinderMesh28.Parent = Part27
CylinderMesh28.Offset = Vector3.new(0, 1.60000002, 0)
CylinderMesh28.Scale = Vector3.new(0.800000012, 8, 2)
CylinderMesh28.Scale = Vector3.new(0.800000012, 8, 2)
Part29.Parent = Model1
Part29.Material = Enum.Material.Metal
Part29.BrickColor = BrickColor.new("Grime")
Part29.Rotation = Vector3.new(180, 0, -180)
Part29.FormFactor = Enum.FormFactor.Plate
Part29.Size = Vector3.new(1, 0.800000012, 1)
Part29.CFrame = CFrame.new(13.8901453, 7.60008192, 38.9598312, -1, 6.80900757e-06, -1.28170986e-05, 7.24961728e-06, 1, -3.05093963e-05, 2.17730885e-05, -2.42142978e-05, -1)
Part29.BackSurface = Enum.SurfaceType.Weld
Part29.BottomSurface = Enum.SurfaceType.Weld
Part29.FrontSurface = Enum.SurfaceType.Weld
Part29.LeftSurface = Enum.SurfaceType.Weld
Part29.RightSurface = Enum.SurfaceType.Weld
Part29.TopSurface = Enum.SurfaceType.Smooth
Part29.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part29.Position = Vector3.new(13.8901453, 7.60008192, 38.9598312)
Part29.Orientation = Vector3.new(0, -180, 0)
Part29.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh30.Parent = Part29
Part31.Parent = Model1
Part31.Material = Enum.Material.Metal
Part31.BrickColor = BrickColor.new("Grime")
Part31.FormFactor = Enum.FormFactor.Plate
Part31.Size = Vector3.new(1, 0.800000012, 1)
Part31.CFrame = CFrame.new(11.8901434, 7.60010433, 38.9599037, 1, 6.32152023e-06, 2.89539616e-06, -6.78039805e-06, 1, 3.84974592e-05, -1.22286801e-05, -3.19370556e-05, 1)
Part31.BackSurface = Enum.SurfaceType.Weld
Part31.BottomSurface = Enum.SurfaceType.Weld
Part31.FrontSurface = Enum.SurfaceType.Weld
Part31.LeftSurface = Enum.SurfaceType.Weld
Part31.RightSurface = Enum.SurfaceType.Weld
Part31.TopSurface = Enum.SurfaceType.Smooth
Part31.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part31.Position = Vector3.new(11.8901434, 7.60010433, 38.9599037)
Part31.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh32.Parent = Part31
ObjectValue33.Name = "WER2"
ObjectValue33.Parent = Model1
ObjectValue33.Value = Weld22
VehicleSeat34.Parent = Model1
VehicleSeat34.BrickColor = BrickColor.new("Really red")
VehicleSeat34.Rotation = Vector3.new(0, 90, 0)
VehicleSeat34.Size = Vector3.new(2, 0.400000006, 2)
VehicleSeat34.CFrame = CFrame.new(-23.1100998, 4.80056763, 33.6601639, -1.67083635e-05, 6.97150199e-06, 1, -2.32027105e-07, 0.999991715, -7.13226291e-06, -1.00000143, 1.9876245e-06, -2.00193008e-05)
VehicleSeat34.TopSurface = Enum.SurfaceType.Weld
VehicleSeat34.HeadsUpDisplay = false
VehicleSeat34.MaxSpeed = 50
VehicleSeat34.Color = Color3.new(1, 0, 0)
VehicleSeat34.Position = Vector3.new(-23.1100998, 4.80056763, 33.6601639)
VehicleSeat34.Orientation = Vector3.new(0, 90, 0)
VehicleSeat34.Color = Color3.new(1, 0, 0)
Sound35.Name = "Swiv"
Sound35.Parent = VehicleSeat34
Sound35.Pitch = 0.69999998807907
Sound35.SoundId = "http://www.roblox.com/asset/?id=31245465"
Sound35.Volume = 0
Sound35.PlayOnRemove = true
Script36.Name = "Control"
Script36.Parent = VehicleSeat34
table.insert(cors,sandbox(Script36,function()
while true do
wait()
if script.Parent.Steer == 2 then
script.Parent.Swiv:play()
script.Parent.Parent.WER.Value.C0 = script.Parent.Parent.WER.Value.C0 * CFrame.fromEulerAnglesXYZ(0,0.01,0)
elseif script.Parent.Steer == -2 then
script.Parent.Swiv:play()
script.Parent.Parent.WER.Value.C0 = script.Parent.Parent.WER.Value.C0 * CFrame.fromEulerAnglesXYZ(0,-0.01,0)
elseif script.Parent.Steer == 0 and script.Parent.Throttle == 0 then
script.Parent.Swiv:pause()
end
end

end))
Script37.Name = "Control2"
Script37.Parent = VehicleSeat34
table.insert(cors,sandbox(Script37,function()
angle = 0

while true do
wait()
if script.Parent.Throttle == 1 and angle < 160 then
script.Parent.Swiv:play()
angle = angle + 1
script.Parent.Angle.Value = angle
script.Parent.Parent.WER2.Value.C0 = script.Parent.Parent.WER2.Value.C0 * CFrame.fromEulerAnglesXYZ(-0.01,0,0)
elseif script.Parent.Throttle == -1 and angle > 0 then
script.Parent.Swiv:play()
angle = angle - 1
script.Parent.Angle.Value = angle
script.Parent.Parent.WER2.Value.C0 = script.Parent.Parent.WER2.Value.C0 * CFrame.fromEulerAnglesXYZ(0.01,0,0)
end
end

end))
BlockMesh38.Parent = VehicleSeat34
Script39.Name = "Pickup"
Script39.Parent = VehicleSeat34
table.insert(cors,sandbox(Script39,function()
script.Parent.ChildAdded:connect(function(w)
print("ChildAdded")
if w.className=="Weld" then
print("IsAWeld")
if w.Name=="SeatWeld" then
print("IsASeatWeld")
if w.Part1.Parent:findFirstChild("Humanoid")~=nil then
print("IsAHumanoid")
pl=game.Players:GetPlayerFromCharacter(w.Part1.Parent)
if pl~=nil then
print("IsAPlayer")
if pl.PlayerGui:findFirstChild("VehicleGui")~=nil then
print("found vehicle gui - deleting")
pl.PlayerGui:findFirstChild("VehicleGui").Parent=nil
print("deleted")
else
print("no gui found - adding")
newgui=script.Parent.VehicleGui:clone()
newgui.Parent=pl.PlayerGui
newgui.Vehicle.Value=script.Parent.Parent
print("added")
end
end
end
end
end
end)

script.Parent.ChildRemoved:connect(function(w)
print("ChildRemoved")
if w.className=="Weld" then
print("IsAWeld")
if w.Name=="SeatWeld" then
print("IsASeatWeld")
if w.Part1.Parent:findFirstChild("Humanoid")~=nil then
print("IsAHumanoid")
pl=game.Players:GetPlayerFromCharacter(w.Part1.Parent)
if pl~=nil then
print("IsAPlayer")
if pl.PlayerGui:findFirstChild("VehicleGui")~=nil then
print("found vehicle gui - deleting")
pl.PlayerGui:findFirstChild("VehicleGui").Parent=nil
print("deleted")
else
print("no gui found - wierd...")
end
end
end
end
end
end)


end))
ScreenGui40.Name = "VehicleGui"
ScreenGui40.Parent = VehicleSeat34
Frame41.Parent = ScreenGui40
Frame41.Transparency = 1
Frame41.Size = UDim2.new(0.200000003, 0, 0.0500000007, 0)
Frame41.Position = UDim2.new(0, 0, 0.800000012, 0)
Frame41.BackgroundColor3 = Color3.new(0.905882, 0.905882, 0.905882)
Frame41.BackgroundTransparency = 1
Frame41.BorderColor3 = Color3.new(0, 0, 0)
TextButton42.Name = "Machine"
TextButton42.Parent = Frame41
TextButton42.Transparency = 1
TextButton42.Size = UDim2.new(1, 0, 2, 0)
TextButton42.Style = Enum.ButtonStyle.RobloxButtonDefault
TextButton42.Text = "Machine Guns"
TextButton42.Position = UDim2.new(2, 0, -1, 0)
TextButton42.Active = false
TextButton42.Visible = false
TextButton42.BackgroundColor3 = Color3.new(0, 0, 1)
TextButton42.BackgroundTransparency = 1
TextButton42.BorderColor3 = Color3.new(0, 0, 0)
TextButton42.AutoButtonColor = false
TextButton42.FontSize = Enum.FontSize.Size24
TextButton42.TextColor3 = Color3.new(1, 1, 1)
TextButton43.Name = "SABOT"
TextButton43.Parent = Frame41
TextButton43.Transparency = 0.5
TextButton43.Size = UDim2.new(2, 0, 2, 0)
TextButton43.Text = "Launch Cruise Missile"
TextButton43.Position = UDim2.new(0.0350000001, 0, 1.5, 0)
TextButton43.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton43.BackgroundTransparency = 0.5
TextButton43.BorderColor3 = Color3.new(0, 0, 0)
TextButton43.Font = Enum.Font.ArialBold
TextButton43.FontSize = Enum.FontSize.Size36
TextButton43.TextColor3 = Color3.new(1, 1, 1)
TextButton43.TextStrokeTransparency = 0
TextButton44.Name = "SMOKE"
TextButton44.Parent = Frame41
TextButton44.Size = UDim2.new(2, 0, 2, 0)
TextButton44.Style = Enum.ButtonStyle.RobloxButtonDefault
TextButton44.Text = "Fire SMOKE"
TextButton44.Position = UDim2.new(0.0500000007, 0, -3, 0)
TextButton44.Visible = false
TextButton44.BackgroundColor3 = Color3.new(0, 0, 1)
TextButton44.BorderColor3 = Color3.new(0, 0, 0)
TextButton44.FontSize = Enum.FontSize.Size48
TextButton44.TextColor3 = Color3.new(1, 1, 1)
TextButton45.Name = "HEAT"
TextButton45.Parent = Frame41
TextButton45.Transparency = 0.5
TextButton45.Size = UDim2.new(2, 0, 2, 0)
TextButton45.Text = "Fire 155mm Howitzer"
TextButton45.Position = UDim2.new(0.0250000115, 0, -1, 0)
TextButton45.Visible = false
TextButton45.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton45.BackgroundTransparency = 0.5
TextButton45.BorderColor3 = Color3.new(0, 0, 0)
TextButton45.Font = Enum.Font.ArialBold
TextButton45.FontSize = Enum.FontSize.Size36
TextButton45.TextColor3 = Color3.new(1, 1, 1)
Script46.Parent = Frame41
table.insert(cors,sandbox(Script46,function()
repeat wait() until script.Parent.Parent.Vehicle.Value~=nil

db=false
held=false

v = script.Parent.Parent.Vehicle
f = script.Parent
sabot = script.Parent.SABOT
enable = script.Parent.Parent.red_roof
fakemiss = v.Value.FakeMissile

function launchsabot()
enable.Visible = true
v.Value.Effect.Smoke.Enabled = true
v.Value.Effect.Fire:Play()
v.Value.Effect.Transparency = .5
local v1=v.Value.Missile:clone()
v1.CFrame = v.Value.Missile.CFrame * CFrame.new(0, 0, -5)
v1.Smoke.Enabled = true
v1.Smoke1.Enabled = true
v1.Smoke2.Enabled = true
v1.Smoke3.Enabled = true
v1.Smoke4.Enabled = true
v1.Fire.Enabled = true
v1.Spark.Enabled = true
fakemiss:remove()
local vel=Instance.new("BodyVelocity")
vel.Parent=v1
v1.Velocity=v1.CFrame.lookVector*150
vel.velocity=v1.Velocity
v1.CanCollide=false
v1.Transparency= 0
v1.Parent=workspace
wait(12)
v1:remove()
v.Value.Effect.Transparency = 1
v.Value.Effect.Smoke.Enabled = false
wait(7)
v1:remove()
sabot.Visible = false
end

function sabotclick()
print("click missile")
if db==true then return end
db=true
sabot.Text="Reloading..."
launchsabot()
sabot.Visible = false
db=false
end

sabot.MouseButton1Click:connect(sabotclick)





end))
ObjectValue47.Name = "Vehicle"
ObjectValue47.Parent = ScreenGui40
Frame48.Name = "CoordinateModule"
Frame48.Parent = ScreenGui40
Frame48.Transparency = 1
Frame48.Size = UDim2.new(0, 100, 0, 100)
Frame48.Position = UDim2.new(0, 50, 0, 400)
Frame48.BackgroundColor3 = Color3.new(1, 1, 1)
Frame48.BackgroundTransparency = 1
TextButton49.Name = "AddVariableX"
TextButton49.Parent = Frame48
TextButton49.Size = UDim2.new(0, 20, 0, 20)
TextButton49.Style = Enum.ButtonStyle.RobloxButton
TextButton49.Text = "+"
TextButton49.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton49.Font = Enum.Font.SourceSans
TextButton49.FontSize = Enum.FontSize.Size36
TextButton49.TextColor3 = Color3.new(1, 1, 1)
Script50.Parent = TextButton49
table.insert(cors,sandbox(Script50,function()
x = script.Parent.Parent.VariableX
vx = script.Parent.Parent.Variable1

function onButtonClicked()
x.Value = x.Value + 10
vx.Text="x:("..tostring(x.Value)..")"
end
script.Parent.MouseButton1Click:connect(onButtonClicked)
end))
TextButton51.Name = "SubtractVariableX"
TextButton51.Parent = Frame48
TextButton51.Size = UDim2.new(0, 20, 0, 20)
TextButton51.Style = Enum.ButtonStyle.RobloxButton
TextButton51.Text = "-"
TextButton51.Position = UDim2.new(0, 30, 0, 0)
TextButton51.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton51.Font = Enum.Font.SourceSans
TextButton51.FontSize = Enum.FontSize.Size36
TextButton51.TextColor3 = Color3.new(1, 1, 1)
Script52.Parent = TextButton51
table.insert(cors,sandbox(Script52,function()
x = script.Parent.Parent.VariableX
vx = script.Parent.Parent.Variable1

function onButtonClicked()
x.Value = x.Value - 10
vx.Text="x:("..tostring(x.Value)..")"
end
script.Parent.MouseButton1Click:connect(onButtonClicked)
end))
TextLabel53.Name = "Variable1"
TextLabel53.Parent = Frame48
TextLabel53.Size = UDim2.new(0, 150, 0, 20)
TextLabel53.Text = "x:(0)"
TextLabel53.Position = UDim2.new(0, 60, 0, 0)
TextLabel53.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel53.Font = Enum.Font.ArialBold
TextLabel53.FontSize = Enum.FontSize.Size14
TextLabel53.TextColor3 = Color3.new(1, 1, 1)
TextButton54.Name = "AddVariableZ"
TextButton54.Parent = Frame48
TextButton54.Size = UDim2.new(0, 20, 0, 20)
TextButton54.Style = Enum.ButtonStyle.RobloxButton
TextButton54.Text = "+"
TextButton54.Position = UDim2.new(0, 0, 0, 30)
TextButton54.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton54.Font = Enum.Font.SourceSans
TextButton54.FontSize = Enum.FontSize.Size36
TextButton54.TextColor3 = Color3.new(1, 1, 1)
Script55.Parent = TextButton54
table.insert(cors,sandbox(Script55,function()
z = script.Parent.Parent.VariableZ
vz = script.Parent.Parent.Variable2

function onButtonClicked()
z.Value = z.Value + 10
vz.Text="z:("..tostring(z.Value)..")"
end
script.Parent.MouseButton1Click:connect(onButtonClicked)
end))
TextButton56.Name = "SubtractVariableZ"
TextButton56.Parent = Frame48
TextButton56.Size = UDim2.new(0, 20, 0, 20)
TextButton56.Style = Enum.ButtonStyle.RobloxButton
TextButton56.Text = "-"
TextButton56.Position = UDim2.new(0, 30, 0, 30)
TextButton56.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton56.Font = Enum.Font.SourceSans
TextButton56.FontSize = Enum.FontSize.Size36
TextButton56.TextColor3 = Color3.new(1, 1, 1)
Script57.Parent = TextButton56
table.insert(cors,sandbox(Script57,function()
z = script.Parent.Parent.VariableZ
vz = script.Parent.Parent.Variable2

function onButtonClicked()
z.Value = z.Value - 10
vz.Text="z:("..tostring(z.Value)..")"
end
script.Parent.MouseButton1Click:connect(onButtonClicked)
end))
TextLabel58.Name = "Variable2"
TextLabel58.Parent = Frame48
TextLabel58.Size = UDim2.new(0, 150, 0, 20)
TextLabel58.Text = "y:(0)"
TextLabel58.Position = UDim2.new(0, 60, 0, 30)
TextLabel58.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel58.Font = Enum.Font.ArialBold
TextLabel58.FontSize = Enum.FontSize.Size14
TextLabel58.TextColor3 = Color3.new(1, 1, 1)
NumberValue59.Name = "VariableX"
NumberValue59.Parent = Frame48
NumberValue60.Name = "VariableY"
NumberValue60.Parent = Frame48
NumberValue61.Name = "VariableZ"
NumberValue61.Parent = Frame48
Frame62.Name = "MeterModule"
Frame62.Parent = ScreenGui40
Frame62.Size = UDim2.new(0, 100, 0, 160)
Frame62.Position = UDim2.new(0, 50, 0, 230)
Frame62.BackgroundColor3 = Color3.new(0.211765, 0.211765, 0.211765)
TextLabel63.Name = "S1A"
TextLabel63.Parent = Frame62
TextLabel63.Size = UDim2.new(0, 95, 0, 30)
TextLabel63.Text = "STAGE 1"
TextLabel63.Position = UDim2.new(0.0250000004, 0, 0.0250000004, 0)
TextLabel63.BackgroundColor3 = Color3.new(0.576471, 0.333333, 0.407843)
TextLabel63.Font = Enum.Font.ArialBold
TextLabel63.FontSize = Enum.FontSize.Size18
TextLabel64.Name = "S2A"
TextLabel64.Parent = Frame62
TextLabel64.Size = UDim2.new(0, 95, 0, 30)
TextLabel64.Text = "STAGE 2"
TextLabel64.Position = UDim2.new(0.0250000004, 0, 0.25, 1)
TextLabel64.BackgroundColor3 = Color3.new(0.576471, 0.333333, 0.407843)
TextLabel64.Font = Enum.Font.ArialBold
TextLabel64.FontSize = Enum.FontSize.Size18
TextLabel65.Name = "S3A"
TextLabel65.Parent = Frame62
TextLabel65.Size = UDim2.new(0, 95, 0, 30)
TextLabel65.Text = "STAGE 3"
TextLabel65.Position = UDim2.new(0.0250000004, 0, 0.5, 1)
TextLabel65.BackgroundColor3 = Color3.new(0.576471, 0.333333, 0.407843)
TextLabel65.Font = Enum.Font.ArialBold
TextLabel65.FontSize = Enum.FontSize.Size18
TextLabel66.Name = "S4A"
TextLabel66.Parent = Frame62
TextLabel66.Size = UDim2.new(0, 95, 0, 30)
TextLabel66.Text = "STAGE 4"
TextLabel66.Position = UDim2.new(0.0250000004, 0, 0.75, 1)
TextLabel66.BackgroundColor3 = Color3.new(0.576471, 0.333333, 0.407843)
TextLabel66.Font = Enum.Font.ArialBold
TextLabel66.FontSize = Enum.FontSize.Size18
TextLabel67.Name = "S1B"
TextLabel67.Parent = Frame62
TextLabel67.Size = UDim2.new(0, 95, 0, 30)
TextLabel67.Text = "STAGE 1"
TextLabel67.Position = UDim2.new(0.0250000004, 0, 0.0250000004, 0)
TextLabel67.Visible = false
TextLabel67.BackgroundColor3 = Color3.new(0.196078, 0.576471, 0.0901961)
TextLabel67.Font = Enum.Font.ArialBold
TextLabel67.FontSize = Enum.FontSize.Size18
TextLabel68.Name = "S2B"
TextLabel68.Parent = Frame62
TextLabel68.Size = UDim2.new(0, 95, 0, 30)
TextLabel68.Text = "STAGE 2"
TextLabel68.Position = UDim2.new(0.0250000004, 0, 0.25, 1)
TextLabel68.Visible = false
TextLabel68.BackgroundColor3 = Color3.new(0.196078, 0.576471, 0.0901961)
TextLabel68.Font = Enum.Font.ArialBold
TextLabel68.FontSize = Enum.FontSize.Size18
TextLabel69.Name = "S3B"
TextLabel69.Parent = Frame62
TextLabel69.Size = UDim2.new(0, 95, 0, 30)
TextLabel69.Text = "STAGE 3"
TextLabel69.Position = UDim2.new(0.0250000004, 0, 0.5, 1)
TextLabel69.Visible = false
TextLabel69.BackgroundColor3 = Color3.new(0.196078, 0.576471, 0.0901961)
TextLabel69.Font = Enum.Font.ArialBold
TextLabel69.FontSize = Enum.FontSize.Size18
TextLabel70.Name = "S4B"
TextLabel70.Parent = Frame62
TextLabel70.Size = UDim2.new(0, 95, 0, 30)
TextLabel70.Text = "STAGE 4"
TextLabel70.Position = UDim2.new(0.0250000004, 0, 0.75, 1)
TextLabel70.Visible = false
TextLabel70.BackgroundColor3 = Color3.new(0.196078, 0.576471, 0.0901961)
TextLabel70.Font = Enum.Font.ArialBold
TextLabel70.FontSize = Enum.FontSize.Size18
TextButton71.Name = "red_roof"
TextButton71.Parent = ScreenGui40
TextButton71.Transparency = 0.5
TextButton71.Size = UDim2.new(0, 100, 0, 20)
TextButton71.Text = "ENABLE"
TextButton71.Position = UDim2.new(0, 270, 0, 400)
TextButton71.Visible = false
TextButton71.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton71.BackgroundTransparency = 0.5
TextButton71.Font = Enum.Font.ArialBold
TextButton71.FontSize = Enum.FontSize.Size14
TextButton71.TextColor3 = Color3.new(1, 1, 1)
TextButton71.TextStrokeTransparency = 0
Script72.Parent = TextButton71
table.insert(cors,sandbox(Script72,function()
repeat wait() until script.Parent.Parent.Vehicle.Value~=nil

db=false
held=false

v = script.Parent.Parent.Vehicle
vz = script.Parent.Parent.CoordinateModule.VariableZ
vx = script.Parent.Parent.CoordinateModule.VariableX
vy = script.Parent.Parent.CoordinateModule.VariableY
wh = v.Value.Warhead
mm = script.Parent.Parent.MeterModule

function stage1()
	script.Parent.Visible = false
	mm.S1A.Visible = false
	mm.S1B.Visible = true
end

function stage2()
	mm.S1B.Visible = false
	mm.S1A.Visible = true
	mm.S2A.Visible = false
	mm.S2B.Visible = true
end

function stage3()
	mm.S2B.Visible = false
	mm.S2A.Visible = true
	mm.S3A.Visible = false
	mm.S3B.Visible = true
end

function stage4()
	mm.S3B.Visible = false
	mm.S3A.Visible = true
	mm.S4A.Visible = false
	mm.S4B.Visible = true	
end

function impact()
	wh.CFrame = CFrame.new((vx.Value), 1000, (vz.Value))
	wait(0.1)
	wh.Anchored = false
	wh.Transparency = 0
	wh.Touch.Disabled = false
	wh.Smoke.Enabled = true
	wh.Smoke2.Enabled = true
	wh.Smoke3.Enabled = true
	wh.Smoke4.Enabled = true
	wh.Light.Enabled = true
	wh.CanCollide = true
	local vel=Instance.new("BodyVelocity")
	vel.Parent=wh
	wh.Velocity=wh.CFrame.lookVector*60
	vel.velocity=wh.Velocity
end

function onButtonClicked()
	stage1()
	wait(5)
	stage2()
	wait(5)
	stage3()
	wait(5)
	stage4()
	wait(3)	
	mm.S4B.Visible = false
	mm.S4A.Visible = true
	impact()
end

script.Parent.MouseButton1Click:connect(onButtonClicked)
end))
Script73.Name = "MainFrame"
Script73.Parent = ScreenGui40
Script73.Disabled = true
table.insert(cors,sandbox(Script73,function()
repeat wait() until script.Parent.Parent.Vehicle.Value~=nil

db=false
held=false

v = script.Parent.Vehicle
vs = v.Value.VehicleSeat
mm = script.Parent.MeterModule
cm = script.Parent.CoordinateModule
fire = script.Parent.Frame
enable = script.Parent.red_roof
angle = vs.Angle

if angle.Value > 159 then
	mm.Visible = true
	cm.Visible = true
	fire.Visible = true
	enable.Visible = true
end

if angle.Value < 160 then
	mm.Visible = false
	cm.Visible = false
	fire.Visible = false
	enable.Visible = false
end

end))
NumberValue74.Name = "Angle"
NumberValue74.Parent = VehicleSeat34
Part75.Parent = Model1
Part75.Material = Enum.Material.Metal
Part75.BrickColor = BrickColor.new("Grime")
Part75.Rotation = Vector3.new(0, -90, 0)
Part75.FormFactor = Enum.FormFactor.Plate
Part75.Size = Vector3.new(1.80000007, 0.800000012, 1)
Part75.CFrame = CFrame.new(12.8898983, 7.6000824, 38.9598885, 1.79557064e-05, 9.34016316e-06, -1, 5.58539214e-05, 1, 9.81848007e-06, 1, -4.90284801e-05, 2.76660649e-05)
Part75.BackSurface = Enum.SurfaceType.Weld
Part75.BottomSurface = Enum.SurfaceType.Weld
Part75.FrontSurface = Enum.SurfaceType.Weld
Part75.LeftSurface = Enum.SurfaceType.Weld
Part75.RightSurface = Enum.SurfaceType.Weld
Part75.TopSurface = Enum.SurfaceType.Smooth
Part75.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part75.Position = Vector3.new(12.8898983, 7.6000824, 38.9598885)
Part75.Orientation = Vector3.new(0, -90, 0)
Part75.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh76.Parent = Part75
BlockMesh76.Scale = Vector3.new(1.29999995, 1, 1)
BlockMesh76.Scale = Vector3.new(1.29999995, 1, 1)
Part77.Name = "BarrelPart"
Part77.Parent = Model1
Part77.Material = Enum.Material.Metal
Part77.BrickColor = BrickColor.new("Grime")
Part77.Rotation = Vector3.new(180, -90, 0)
Part77.FormFactor = Enum.FormFactor.Custom
Part77.Size = Vector3.new(2, 0.200000003, 2)
Part77.CFrame = CFrame.new(12.3898935, 10.6001215, 38.9598274, -5.20252797e-07, -4.67066002e-06, -1, -1.12105145e-05, -1, 5.14798012e-06, -1, 4.38485722e-06, 1.02310514e-05)
Part77.BackSurface = Enum.SurfaceType.Weld
Part77.BottomSurface = Enum.SurfaceType.Smooth
Part77.FrontSurface = Enum.SurfaceType.Weld
Part77.LeftSurface = Enum.SurfaceType.Weld
Part77.RightSurface = Enum.SurfaceType.Weld
Part77.TopSurface = Enum.SurfaceType.Weld
Part77.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part77.Position = Vector3.new(12.3898935, 10.6001215, 38.9598274)
Part77.Orientation = Vector3.new(0, -90, -180)
Part77.Color = Color3.new(0.498039, 0.556863, 0.392157)
CylinderMesh78.Parent = Part77
Part79.Name = "Swivel"
Part79.Parent = Model1
Part79.Material = Enum.Material.Metal
Part79.BrickColor = BrickColor.new("Grime")
Part79.Rotation = Vector3.new(0, 90, 0)
Part79.CanCollide = false
Part79.FormFactor = Enum.FormFactor.Custom
Part79.Size = Vector3.new(3, 0.200000003, 3)
Part79.CFrame = CFrame.new(12.889883, 8.10011101, 38.9598198, 1.50947981e-05, 5.43772376e-06, 1, -2.21862356e-05, 1, -5.9147028e-06, -1, -1.53604906e-05, 5.38406312e-06)
Part79.BottomSurface = Enum.SurfaceType.Weld
Part79.RightSurface = Enum.SurfaceType.Weld
Part79.TopSurface = Enum.SurfaceType.Weld
Part79.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part79.Position = Vector3.new(12.889883, 8.10011101, 38.9598198)
Part79.Orientation = Vector3.new(0, 90, 0)
Part79.Color = Color3.new(0.498039, 0.556863, 0.392157)
CylinderMesh80.Parent = Part79
CylinderMesh80.Offset = Vector3.new(0, -0.100000001, 0)
CylinderMesh80.Scale = Vector3.new(1, 1.5, 0.949999988)
CylinderMesh80.Scale = Vector3.new(1, 1.5, 0.949999988)
Script81.Parent = Part79
table.insert(cors,sandbox(Script81,function()
b = script.Parent
c = script.Parent.Parent.Connector

	local weld = Instance.new("Weld")

	weld.Part0 = c
	weld.Part1 = b

	weld.C0 = CFrame.new(0, -1, 0)

	weld.Parent = c

script.Parent.Parent.WER.Value = weld
end))
Part82.Name = "Missile"
Part82.Parent = Model1
Part82.Material = Enum.Material.SmoothPlastic
Part82.BrickColor = BrickColor.new("Quill grey")
Part82.Transparency = 1
Part82.Rotation = Vector3.new(180, 90, 0)
Part82.FormFactor = Enum.FormFactor.Symmetric
Part82.Size = Vector3.new(2.20000005, 1, 2)
Part82.CFrame = CFrame.new(-23.0097218, 11.8003483, 38.8605461, -1.99113638e-05, -5.20105959e-06, 1, 2.55717896e-05, -1, -6.13996826e-06, 1, 1.21387684e-05, 8.00541045e-07)
Part82.BottomSurface = Enum.SurfaceType.Weld
Part82.TopSurface = Enum.SurfaceType.Weld
Part82.Color = Color3.new(0.87451, 0.87451, 0.870588)
Part82.Position = Vector3.new(-23.0097218, 11.8003483, 38.8605461)
Part82.Orientation = Vector3.new(0, 90, 180)
Part82.Color = Color3.new(0.87451, 0.87451, 0.870588)
Fire83.Parent = Part82
Fire83.Size = 30
Fire83.Color = Color3.new(0.92549, 0.545098, 0.27451)
Fire83.Enabled = false
Fire83.Heat = 0
Fire83.SecondaryColor = Color3.new(0.545098, 0.313726, 0.215686)
Fire83.Color = Color3.new(0.92549, 0.545098, 0.27451)
Smoke84.Parent = Part82
Smoke84.Size = 15
Smoke84.Enabled = false
Smoke84.Opacity = 1
Smoke84.RiseVelocity = 25
Smoke85.Name = "Smoke1"
Smoke85.Parent = Part82
Smoke85.Size = 15
Smoke85.Enabled = false
Smoke85.Opacity = 1
Smoke85.RiseVelocity = 25
Smoke86.Name = "Smoke2"
Smoke86.Parent = Part82
Smoke86.Size = 15
Smoke86.Enabled = false
Smoke86.Opacity = 1
Smoke86.RiseVelocity = 25
Smoke87.Name = "Smoke3"
Smoke87.Parent = Part82
Smoke87.Size = 15
Smoke87.Enabled = false
Smoke87.Opacity = 1
Smoke87.RiseVelocity = 25
Smoke88.Name = "Smoke4"
Smoke88.Parent = Part82
Smoke88.Size = 15
Smoke88.Enabled = false
Smoke88.Opacity = 1
Smoke88.RiseVelocity = 25
BillboardGui89.Name = "Spark"
BillboardGui89.Parent = Part82
BillboardGui89.Size = UDim2.new(35, 0, 35, 0)
BillboardGui89.Enabled = false
BillboardGui89.Active = true
ImageLabel90.Name = "Light"
ImageLabel90.Parent = BillboardGui89
ImageLabel90.Transparency = 1
ImageLabel90.Size = UDim2.new(1, 0, 1, 0)
ImageLabel90.Active = true
ImageLabel90.BackgroundColor3 = Color3.new(0.756863, 0.752941, 0.764706)
ImageLabel90.BackgroundTransparency = 1
ImageLabel90.Image = "http://www.roblox.com/asset/?id=43708803"
Script91.Parent = BillboardGui89
table.insert(cors,sandbox(Script91,function()
script.Parent.Adornee = script.Parent.Parent
end))
SpecialMesh92.Parent = Part82
SpecialMesh92.MeshId = "http://www.roblox.com/asset/?id=74333739"
SpecialMesh92.Scale = Vector3.new(24, 24, 24)
SpecialMesh92.MeshType = Enum.MeshType.FileMesh
SpecialMesh92.Scale = Vector3.new(24, 24, 24)
Script93.Name = "Sabot"
Script93.Parent = Part82
Script93.Disabled = true
table.insert(cors,sandbox(Script93,function()
wait(.1)
function onTouch(hit)
script.Parent.Anchored = true
script.Parent.Parent = Workspace
script.Parent.Transparency = 1
wait()
script.Parent.Atom.Disabled = false
end

script.Parent.Touched:connect(onTouch)
end))
Script94.Name = "Atom"
Script94.Parent = Part82
Script94.Disabled = true
table.insert(cors,sandbox(Script94,function()
print("Nuke Em' All")

local CloudID= "http://www.roblox.com/asset/?id=1095708"
local ColorTexture = "http://www.roblox.com/asset/?ID=1361097"
local RingID = "http://www.roblox.com/asset/?id=3270017"
local SphereID = "http://www.roblox.com/asset/?id=1185246"

local BasePosition = script.Parent.Position

local Size = 50

local Exp = Instance.new("Model")
Exp.Name = "ATOMICEXPLOSION"
Exp.Parent = game.Workspace

local BasePart = Instance.new("Part")
BasePart.formFactor = 0
BasePart.TopSurface = 0
BasePart.BottomSurface = 0
BasePart.Anchored = true
BasePart.Locked = true
BasePart.CanCollide = false

local BaseMesh = Instance.new("SpecialMesh")
BaseMesh.MeshType = "FileMesh"

local CloudMesh = BaseMesh:clone()
CloudMesh.MeshId = CloudID
CloudMesh.TextureId = ColorTexture
CloudMesh.VertexColor = Vector3.new(0.9,0.6,0)

local RingMesh = BaseMesh:clone()
RingMesh.MeshId = RingID

local SphereMesh = BaseMesh:clone()
SphereMesh.MeshId = SphereID

local Clouds = {}
local ShockWave = {}
local Sky = script.Sky


function Effects()
	script.Explode:Play()
	delay(0,function() 
		for i = 5, 1,-0.01 do
			wait()
			game.Lighting.Brightness = i
		end
	end)
end

function Destruction(Pos,Radius)
	local function Destroy(Model)
		for i ,v in ipairs(Model:getChildren()) do
			if v:isA("BasePart") then
				if (v.Position-Pos).magnitude < Radius then
					if v.Anchored == false then
						v:BreakJoints()
						v.Velocity = CFrame.new(v.Position,Pos):vectorToWorldSpace(Vector3.new(math.random(-5,5),5,1000))
						v.Material = "CorrodedMetal"
					end	
				end
			end
			if #v:getChildren() > 0 then
				Destroy(v)
			end
		end
	end
	Destroy(game.Workspace)
end
function Explode(Pos)

local Base = BasePart:clone()
Base.Position = Pos
	
local Mesh = CloudMesh:clone()
Mesh.Parent = Base 
Mesh.Scale = Vector3.new(2.5,1,4.5)

local PoleBase = BasePart:clone()
PoleBase.Position = Pos+Vector3.new(0,0.1,0)

local PoleBaseMesh = CloudMesh:clone()
PoleBaseMesh.Scale = Vector3.new(1.25,2,2.5)
PoleBaseMesh.Parent = PoleBase

local Cloud1 = BasePart:clone()
Cloud1.Position = Pos+Vector3.new(0,0.75,0)

local Cloud1Mesh = CloudMesh:clone()
Cloud1Mesh.Scale = Vector3.new(0.5,3,1)
Cloud1Mesh.Parent = Cloud1
	
local Cloud2 = BasePart:clone()
Cloud2.Position = Pos+Vector3.new(0,1.25,0)
	
local Cloud2Mesh = CloudMesh:clone()
Cloud2Mesh.Scale = Vector3.new(0.5,1.5,1)
Cloud2Mesh.Parent = Cloud2

local Cloud3 = BasePart:clone()
Cloud3.Position = Pos+Vector3.new(0,1.7,0)
	
local Cloud3Mesh = CloudMesh:clone()
Cloud3Mesh.Scale = Vector3.new(0.5,1.5,1)
Cloud3Mesh.Parent = Cloud3

local PoleRing = BasePart:clone()
PoleRing.Position = Pos+Vector3.new(0,1.3,0)
PoleRing.Transparency = 0.2
PoleRing.BrickColor = BrickColor.new("Dark stone grey")
PoleRing.CFrame = PoleRing.CFrame*CFrame.Angles(math.rad(90),0,0)

local Mesh = RingMesh:clone()
Mesh.Scale = Vector3.new(1.2,1.2,1.2)
Mesh.Parent = PoleRing

local MushCloud = BasePart:clone()
MushCloud.Position = Pos+Vector3.new(0,2.3,0)
	
local MushMesh = CloudMesh:clone() -- lol
MushMesh.Scale = Vector3.new(2.5,1.75,3.5)
MushMesh.Parent = MushCloud

local TopCloud = BasePart:clone()
TopCloud.Position = Pos+Vector3.new(0,2.7,0)
	
local TopMesh = CloudMesh:clone()
TopMesh.Scale = Vector3.new(7.5,1.5,1.5)
TopMesh.Parent = TopCloud

table.insert(Clouds,Base)
table.insert(Clouds,TopCloud)
table.insert(Clouds,MushCloud)
table.insert(Clouds,Cloud1)
table.insert(Clouds,Cloud2)
table.insert(Clouds,Cloud3)
table.insert(Clouds,PoleBase)
table.insert(Clouds,PoleRing)


local BigRing = BasePart:clone()
BigRing.Position = Pos
BigRing.CFrame = BigRing.CFrame*CFrame.Angles(math.rad(90),0,0)
	
local BigMesh = RingMesh:clone()
BigMesh.Scale = Vector3.new(5,5,1)
BigMesh.Parent = BigRing
	
local SmallRing = BasePart:clone()
SmallRing.Position = Pos
SmallRing.BrickColor = BrickColor.new("Dark stone grey")
SmallRing.CFrame = SmallRing.CFrame*CFrame.Angles(math.rad(90),0,0)

local SmallMesh = RingMesh:clone()
SmallMesh.Scale = Vector3.new(4.6,4.6,1.5)
SmallMesh.Parent = SmallRing

local InnerSphere = BasePart:clone()
InnerSphere.Position = Pos
InnerSphere.BrickColor = BrickColor.new("Bright orange")
InnerSphere.Transparency = 0.5

local InnerSphereMesh = SphereMesh:clone()	
InnerSphereMesh.Scale = Vector3.new(-6.5,-6.5,-6.5)
InnerSphereMesh.Parent = InnerSphere
	
local OutterSphere = BasePart:clone()
OutterSphere.Position = Pos
OutterSphere.BrickColor = BrickColor.new("Bright orange")
OutterSphere.Transparency = 0.5

local OutterSphereMesh = SphereMesh:clone()
OutterSphereMesh.Scale = Vector3.new(6.5,6.5,6.5)
OutterSphereMesh.Parent = OutterSphere

table.insert(ShockWave,BigRing)	
table.insert(ShockWave,SmallRing)
table.insert(ShockWave,OutterSphere)
table.insert(ShockWave,InnerSphere)
	Sky.Parent = game.Lighting
	for i , v in ipairs(ShockWave) do
		v.Parent = Exp
	end
	for i , v in ipairs(Clouds) do
		v.Parent = Exp
	end
	Effects()
	delay(0,function()
		for resize = Size/2.5, Size*3, 2 do
			wait()
			BigRing.Mesh.Scale = Vector3.new(5*resize,5*resize,1*resize)
			SmallRing.Mesh.Scale = Vector3.new(4.6*resize,4.6*resize,1.5*resize)
			InnerSphere.Mesh.Scale = Vector3.new(-6.5*resize,-6.5*resize,-6.5*resize)
			OutterSphere.Mesh.Scale = Vector3.new(6.5*resize,6.5*resize,6.5*resize)
			Destruction(Pos,3*resize)
		end
		for fade = 0, 1, 0.01 do
			wait()
			pcall(function()
				for i ,v in ipairs(ShockWave) do
					v.Transparency = fade
				end
			end)
		end
		for i ,v in ipairs(ShockWave) do
			v:Remove()
		end
		done1 = true
	end)
	delay(0,function()
		for resize = Size/5, Size, 1 do
			wait()
			pcall(function()
				Base.Mesh.Scale = Vector3.new(2.5*resize,1*resize,4.5*resize)
				TopCloud.Mesh.Scale = Vector3.new(0.75*resize,1.5*resize,1.5*resize)
				MushCloud.Mesh.Scale = Vector3.new(2.5*resize,1.75*resize,3.5*resize)
				Cloud1.Mesh.Scale = Vector3.new(0.5*resize,3*resize,1*resize)
				Cloud2.Mesh.Scale = Vector3.new(0.5*resize,1.5*resize,1*resize)
				Cloud3.Mesh.Scale = Vector3.new(0.5*resize,1.5*resize,1*resize)
				PoleBase.Mesh.Scale = Vector3.new(1*resize,2*resize,2.5*resize)
				PoleRing.Mesh.Scale = Vector3.new(1.2*resize,1.2*resize,1.2*resize)

				Base.Position = Pos+Vector3.new(0,0.05*resize,0)
				TopCloud.Position = Pos+Vector3.new(0,2.7*resize,0)
				MushCloud.Position = Pos+Vector3.new(0,2.3*resize,0)
				Cloud1.Position = Pos+Vector3.new(0,0.75*resize,0)
				Cloud2.Position = Pos+Vector3.new(0,1.25*resize,0)
				Cloud3.Position = Pos+Vector3.new(0,1.7*resize,0)
				PoleBase.Position = Pos+Vector3.new(0,0.1*resize,0)
				PoleRing.Position = Pos+Vector3.new(0,1.3*resize,0)
			end)
		end
		done2 = true
	end)
	wait(2)
	for y = 0.6,0,-0.0025 do
		wait()
		for i , v in ipairs(Clouds) do
			v.Mesh.VertexColor = Vector3.new(0.9,y,0)
		end
	end
	for r = 0.9,0.5,-0.01 do
		wait()
		for i , v in ipairs(Clouds) do
			v.Mesh.VertexColor = Vector3.new(r,0,0)
		end
	end
	for by = 0,0.5,0.005 do
		wait()
		for i , v in ipairs(Clouds) do
			v.Mesh.VertexColor = Vector3.new(0.5,by,by)
			v.Transparency = by*2
		end
		Base.Mesh.Scale = Base.Mesh.Scale+Vector3.new(0.1,0.1,0.1)
		TopCloud.Mesh.Scale = TopCloud.Mesh.Scale+Vector3.new(0.1,0.1,0.1)
		MushCloud.Mesh.Scale = MushCloud.Mesh.Scale+Vector3.new(0.1,0.1,0.1)
		Cloud1.Mesh.Scale = Cloud1.Mesh.Scale+Vector3.new(0.1,0.1,0.1)
		Cloud2.Mesh.Scale = Cloud2.Mesh.Scale+Vector3.new(0.1,0.1,0.1)
		Cloud3.Mesh.Scale = Cloud3.Mesh.Scale+Vector3.new(0.1,0.1,0.1)
		PoleBase.Mesh.Scale = PoleBase.Mesh.Scale+Vector3.new(0.1,0.1,0.1)
		PoleRing.Mesh.Scale = PoleRing.Mesh.Scale+Vector3.new(0.1,0.1,0.1)
	end
	done3 = true
	while true do wait(1) if done1 and done2 and done3 then break end end
	Exp:remove()
	wait(20)
	Sky:remove()
end


	

Explode(BasePosition)

script.Parent:remove()



	
	




end))
Sound95.Name = "Explode"
Sound95.Parent = Script94
Sound95.Pitch = 0.5
Sound95.SoundId = "http://www.roblox.com/asset?id=130768997"
Sound95.Volume = 1
Sky96.Parent = Script94
Sky96.SkyboxBk = "http://www.roblox.com/asset/?version=1&id=1012890"
Sky96.SkyboxDn = "http://www.roblox.com/asset/?version=1&id=1012891"
Sky96.SkyboxFt = "http://www.roblox.com/asset/?version=1&id=1012887"
Sky96.SkyboxLf = "http://www.roblox.com/asset/?version=1&id=1012889"
Sky96.SkyboxRt = "http://www.roblox.com/asset/?version=1&id=1012888"
Sky96.SkyboxUp = "http://www.roblox.com/asset/?version=1&id=1014449"
Part97.Name = "Effect"
Part97.Parent = Model1
Part97.Material = Enum.Material.SmoothPlastic
Part97.BrickColor = BrickColor.new("Earth green")
Part97.Transparency = 1
Part97.Rotation = Vector3.new(-90, 0, 90)
Part97.FormFactor = Enum.FormFactor.Symmetric
Part97.Size = Vector3.new(2.20000005, 1, 2)
Part97.CFrame = CFrame.new(-21.5097256, 11.3003311, 38.8604736, 1.99002643e-05, -1, 6.76171112e-06, -2.55639879e-05, 7.70061979e-06, 1, -1, -7.8946141e-07, -1.21309677e-05)
Part97.BottomSurface = Enum.SurfaceType.Weld
Part97.TopSurface = Enum.SurfaceType.Weld
Part97.Color = Color3.new(0.152941, 0.27451, 0.176471)
Part97.Position = Vector3.new(-21.5097256, 11.3003311, 38.8604736)
Part97.Orientation = Vector3.new(-90, 90, 0)
Part97.Color = Color3.new(0.152941, 0.27451, 0.176471)
Sound98.Name = "CSfire"
Sound98.Parent = Part97
Sound98.SoundId = "http://www.roblox.com/asset?id=132975999"
Sound98.Volume = 1
Sound99.Name = "Reload"
Sound99.Parent = Part97
Sound99.SoundId = "http://www.roblox.com/asset/?id=154199166"
Sound99.Volume = 1
SpecialMesh100.Parent = Part97
SpecialMesh100.Scale = Vector3.new(0.800000012, 8, 1)
SpecialMesh100.MeshType = Enum.MeshType.Sphere
SpecialMesh100.Scale = Vector3.new(0.800000012, 8, 1)
PointLight101.Parent = Part97
PointLight101.Color = Color3.new(1, 1, 0.498039)
PointLight101.Enabled = false
PointLight101.Color = Color3.new(1, 1, 0.498039)
Smoke102.Parent = Part97
Smoke102.Size = 50
Smoke102.Enabled = false
Smoke102.RiseVelocity = 10
Sound103.Name = "Fire"
Sound103.Parent = Part97
Sound103.Pitch = 0.5
Sound103.SoundId = "rbxassetid://181356975"
Sound103.Volume = 1
Model104.Name = "FakeMissile"
Model104.Parent = Model1
Part105.Name = "FakeMissile"
Part105.Parent = Model104
Part105.Material = Enum.Material.Metal
Part105.BrickColor = BrickColor.new("Quill grey")
Part105.Rotation = Vector3.new(180, 90, 0)
Part105.CanCollide = false
Part105.FormFactor = Enum.FormFactor.Custom
Part105.Size = Vector3.new(6.39999962, 1, 0.200000003)
Part105.CFrame = CFrame.new(-3.70967841, 11.0001984, 38.9599075, -1.99113711e-05, -5.20106005e-06, 1, 2.55717914e-05, -1, -6.13996781e-06, 1, 1.21387639e-05, 8.00539965e-07)
Part105.BottomSurface = Enum.SurfaceType.Weld
Part105.TopSurface = Enum.SurfaceType.Weld
Part105.Color = Color3.new(0.87451, 0.87451, 0.870588)
Part105.Position = Vector3.new(-3.70967841, 11.0001984, 38.9599075)
Part105.Orientation = Vector3.new(0, 90, 180)
Part105.Color = Color3.new(0.87451, 0.87451, 0.870588)
SpecialMesh106.Parent = Part105
SpecialMesh106.MeshId = "http://www.roblox.com/asset/?id=74333739"
SpecialMesh106.Scale = Vector3.new(25, 25, 24)
SpecialMesh106.MeshType = Enum.MeshType.FileMesh
SpecialMesh106.Scale = Vector3.new(25, 25, 24)
Part107.Name = "Warhead"
Part107.Parent = Model1
Part107.BrickColor = BrickColor.new("Institutional white")
Part107.Reflectance = 0.5
Part107.Transparency = 1
Part107.Rotation = Vector3.new(180, 0, 0)
Part107.Anchored = true
Part107.FormFactor = Enum.FormFactor.Plate
Part107.Size = Vector3.new(3.79999971, 6.59999943, 3.79999995)
Part107.CFrame = CFrame.new(-7.70991611, 33.3989334, 39.2596893, 0.999999702, -6.4844221e-06, -6.66087817e-06, -6.48497235e-06, -0.999999702, -1.0551862e-05, -6.67190989e-06, 1.05441059e-05, -1)
Part107.BottomSurface = Enum.SurfaceType.Weld
Part107.TopSurface = Enum.SurfaceType.Smooth
Part107.Color = Color3.new(0.972549, 0.972549, 0.972549)
Part107.Position = Vector3.new(-7.70991611, 33.3989334, 39.2596893)
Part107.Orientation = Vector3.new(0, -180, -180)
Part107.Color = Color3.new(0.972549, 0.972549, 0.972549)
SpecialMesh108.Parent = Part107
SpecialMesh108.MeshId = "http://www.roblox.com/asset/?id=1778999"
SpecialMesh108.Scale = Vector3.new(3, 5, 3)
SpecialMesh108.TextureId = "http://www.roblox.com/asset/?id=2821447"
SpecialMesh108.VertexColor = Vector3.new(0.600000024, 0.600000024, 0.600000024)
SpecialMesh108.MeshType = Enum.MeshType.FileMesh
SpecialMesh108.Scale = Vector3.new(3, 5, 3)
Smoke109.Parent = Part107
Smoke109.Size = 30
Smoke109.Enabled = false
Smoke109.Opacity = 1
Smoke109.RiseVelocity = 5
BillboardGui110.Name = "Light"
BillboardGui110.Parent = Part107
BillboardGui110.Size = UDim2.new(35, 0, 35, 0)
BillboardGui110.Enabled = false
BillboardGui110.Active = true
ImageLabel111.Name = "Light"
ImageLabel111.Parent = BillboardGui110
ImageLabel111.Transparency = 1
ImageLabel111.Size = UDim2.new(1, 0, 1, 0)
ImageLabel111.Active = true
ImageLabel111.BackgroundColor3 = Color3.new(0.756863, 0.752941, 0.764706)
ImageLabel111.BackgroundTransparency = 1
ImageLabel111.Image = "http://www.roblox.com/asset/?id=43708803"
Script112.Parent = BillboardGui110
table.insert(cors,sandbox(Script112,function()
script.Parent.Adornee = script.Parent.Parent
end))
Smoke113.Name = "Smoke2"
Smoke113.Parent = Part107
Smoke113.Size = 30
Smoke113.Enabled = false
Smoke113.Opacity = 1
Smoke113.RiseVelocity = 5
Smoke114.Name = "Smoke3"
Smoke114.Parent = Part107
Smoke114.Size = 30
Smoke114.Enabled = false
Smoke114.Opacity = 1
Smoke114.RiseVelocity = 5
Smoke115.Name = "Smoke4"
Smoke115.Parent = Part107
Smoke115.Size = 30
Smoke115.Enabled = false
Smoke115.Opacity = 1
Smoke115.RiseVelocity = 5
StringValue116.Name = "INFORMATION"
StringValue116.Parent = Part107
StringValue117.Name = "Nuke_Information"
StringValue117.Parent = StringValue116
StringValue117.Value = "Conventional, long-range warhead"
StringValue118.Name = "Nuke_Base"
StringValue118.Parent = StringValue116
StringValue118.Value = "TEL/Mobile"
Script119.Name = "Touch"
Script119.Parent = Part107
Script119.Disabled = true
table.insert(cors,sandbox(Script119,function()
wait(.1)
function onTouch(hit)
script.Parent.Anchored = true
script.Parent.Parent = Workspace
script.Parent.Transparency = 1
wait()
script.Parent.Atom.Disabled = false
end

script.Parent.Touched:connect(onTouch)
end))
Script120.Name = "Atom"
Script120.Parent = Part107
Script120.Disabled = true
table.insert(cors,sandbox(Script120,function()
print("Nuke Em' All")

local CloudID= "http://www.roblox.com/asset/?id=1095708"
local ColorTexture = "http://www.roblox.com/asset/?ID=1361097"
local RingID = "http://www.roblox.com/asset/?id=3270017"
local SphereID = "http://www.roblox.com/asset/?id=1185246"

local BasePosition = script.Parent.Position

local Size = 350

local Exp = Instance.new("Model")
Exp.Name = "ATOMICEXPLOSION"
Exp.Parent = game.Workspace

local BasePart = Instance.new("Part")
BasePart.formFactor = 0
BasePart.TopSurface = 0
BasePart.BottomSurface = 0
BasePart.Anchored = true
BasePart.Locked = true
BasePart.CanCollide = false

local BaseMesh = Instance.new("SpecialMesh")
BaseMesh.MeshType = "FileMesh"

local CloudMesh = BaseMesh:clone()
CloudMesh.MeshId = CloudID
CloudMesh.TextureId = ColorTexture
CloudMesh.VertexColor = Vector3.new(0.9,0.6,0)

local RingMesh = BaseMesh:clone()
RingMesh.MeshId = RingID

local SphereMesh = BaseMesh:clone()
SphereMesh.MeshId = SphereID

local Clouds = {}
local ShockWave = {}
local Sky = script.Sky


function Effects()
	script.Explode:Play()
	delay(0,function() 
		for i = 5, 1,-0.01 do
			wait()
			game.Lighting.Brightness = i
		end
	end)
end

function Destruction(Pos,Radius)
	local function Destroy(Model)
		for i ,v in ipairs(Model:getChildren()) do
			if v:isA("BasePart") then
				if (v.Position-Pos).magnitude < Radius then
					if v.Anchored == false then
						v:BreakJoints()
						v.Velocity = CFrame.new(v.Position,Pos):vectorToWorldSpace(Vector3.new(math.random(-5,5),5,1000))
						v.Material = "CorrodedMetal"
					end	
				end
			end
			if #v:getChildren() > 0 then
				Destroy(v)
			end
		end
	end
	Destroy(game.Workspace)
end
function Explode(Pos)

local Base = BasePart:clone()
Base.Position = Pos
	
local Mesh = CloudMesh:clone()
Mesh.Parent = Base 
Mesh.Scale = Vector3.new(2.5,1,4.5)

local PoleBase = BasePart:clone()
PoleBase.Position = Pos+Vector3.new(0,0.1,0)

local PoleBaseMesh = CloudMesh:clone()
PoleBaseMesh.Scale = Vector3.new(1.25,2,2.5)
PoleBaseMesh.Parent = PoleBase

local Cloud1 = BasePart:clone()
Cloud1.Position = Pos+Vector3.new(0,0.75,0)

local Cloud1Mesh = CloudMesh:clone()
Cloud1Mesh.Scale = Vector3.new(0.5,3,1)
Cloud1Mesh.Parent = Cloud1
	
local Cloud2 = BasePart:clone()
Cloud2.Position = Pos+Vector3.new(0,1.25,0)
	
local Cloud2Mesh = CloudMesh:clone()
Cloud2Mesh.Scale = Vector3.new(0.5,1.5,1)
Cloud2Mesh.Parent = Cloud2

local Cloud3 = BasePart:clone()
Cloud3.Position = Pos+Vector3.new(0,1.7,0)
	
local Cloud3Mesh = CloudMesh:clone()
Cloud3Mesh.Scale = Vector3.new(0.5,1.5,1)
Cloud3Mesh.Parent = Cloud3

local PoleRing = BasePart:clone()
PoleRing.Position = Pos+Vector3.new(0,1.3,0)
PoleRing.Transparency = 0.2
PoleRing.BrickColor = BrickColor.new("Dark stone grey")
PoleRing.CFrame = PoleRing.CFrame*CFrame.Angles(math.rad(90),0,0)

local Mesh = RingMesh:clone()
Mesh.Scale = Vector3.new(1.2,1.2,1.2)
Mesh.Parent = PoleRing

local MushCloud = BasePart:clone()
MushCloud.Position = Pos+Vector3.new(0,2.3,0)
	
local MushMesh = CloudMesh:clone() -- lol
MushMesh.Scale = Vector3.new(2.5,1.75,3.5)
MushMesh.Parent = MushCloud

local TopCloud = BasePart:clone()
TopCloud.Position = Pos+Vector3.new(0,2.7,0)
	
local TopMesh = CloudMesh:clone()
TopMesh.Scale = Vector3.new(7.5,1.5,1.5)
TopMesh.Parent = TopCloud

table.insert(Clouds,Base)
table.insert(Clouds,TopCloud)
table.insert(Clouds,MushCloud)
table.insert(Clouds,Cloud1)
table.insert(Clouds,Cloud2)
table.insert(Clouds,Cloud3)
table.insert(Clouds,PoleBase)
table.insert(Clouds,PoleRing)


local BigRing = BasePart:clone()
BigRing.Position = Pos
BigRing.CFrame = BigRing.CFrame*CFrame.Angles(math.rad(90),0,0)
	
local BigMesh = RingMesh:clone()
BigMesh.Scale = Vector3.new(5,5,1)
BigMesh.Parent = BigRing
	
local SmallRing = BasePart:clone()
SmallRing.Position = Pos
SmallRing.BrickColor = BrickColor.new("Dark stone grey")
SmallRing.CFrame = SmallRing.CFrame*CFrame.Angles(math.rad(90),0,0)

local SmallMesh = RingMesh:clone()
SmallMesh.Scale = Vector3.new(4.6,4.6,1.5)
SmallMesh.Parent = SmallRing

local InnerSphere = BasePart:clone()
InnerSphere.Position = Pos
InnerSphere.BrickColor = BrickColor.new("Bright orange")
InnerSphere.Transparency = 0.5

local InnerSphereMesh = SphereMesh:clone()	
InnerSphereMesh.Scale = Vector3.new(-6.5,-6.5,-6.5)
InnerSphereMesh.Parent = InnerSphere
	
local OutterSphere = BasePart:clone()
OutterSphere.Position = Pos
OutterSphere.BrickColor = BrickColor.new("Bright orange")
OutterSphere.Transparency = 0.5

local OutterSphereMesh = SphereMesh:clone()
OutterSphereMesh.Scale = Vector3.new(6.5,6.5,6.5)
OutterSphereMesh.Parent = OutterSphere

table.insert(ShockWave,BigRing)	
table.insert(ShockWave,SmallRing)
table.insert(ShockWave,OutterSphere)
table.insert(ShockWave,InnerSphere)
	Sky.Parent = game.Lighting
	for i , v in ipairs(ShockWave) do
		v.Parent = Exp
	end
	for i , v in ipairs(Clouds) do
		v.Parent = Exp
	end
	Effects()
	delay(0,function()
		for resize = Size/2.5, Size*3, 2 do
			wait()
			BigRing.Mesh.Scale = Vector3.new(5*resize,5*resize,1*resize)
			SmallRing.Mesh.Scale = Vector3.new(4.6*resize,4.6*resize,1.5*resize)
			InnerSphere.Mesh.Scale = Vector3.new(-6.5*resize,-6.5*resize,-6.5*resize)
			OutterSphere.Mesh.Scale = Vector3.new(6.5*resize,6.5*resize,6.5*resize)
			Destruction(Pos,3*resize)
		end
		for fade = 0, 1, 0.01 do
			wait()
			pcall(function()
				for i ,v in ipairs(ShockWave) do
					v.Transparency = fade
				end
			end)
		end
		for i ,v in ipairs(ShockWave) do
			v:Remove()
		end
		done1 = true
	end)
	delay(0,function()
		for resize = Size/5, Size, 1 do
			wait()
			pcall(function()
				Base.Mesh.Scale = Vector3.new(2.5*resize,1*resize,4.5*resize)
				TopCloud.Mesh.Scale = Vector3.new(0.75*resize,1.5*resize,1.5*resize)
				MushCloud.Mesh.Scale = Vector3.new(2.5*resize,1.75*resize,3.5*resize)
				Cloud1.Mesh.Scale = Vector3.new(0.5*resize,3*resize,1*resize)
				Cloud2.Mesh.Scale = Vector3.new(0.5*resize,1.5*resize,1*resize)
				Cloud3.Mesh.Scale = Vector3.new(0.5*resize,1.5*resize,1*resize)
				PoleBase.Mesh.Scale = Vector3.new(1*resize,2*resize,2.5*resize)
				PoleRing.Mesh.Scale = Vector3.new(1.2*resize,1.2*resize,1.2*resize)

				Base.Position = Pos+Vector3.new(0,0.05*resize,0)
				TopCloud.Position = Pos+Vector3.new(0,2.7*resize,0)
				MushCloud.Position = Pos+Vector3.new(0,2.3*resize,0)
				Cloud1.Position = Pos+Vector3.new(0,0.75*resize,0)
				Cloud2.Position = Pos+Vector3.new(0,1.25*resize,0)
				Cloud3.Position = Pos+Vector3.new(0,1.7*resize,0)
				PoleBase.Position = Pos+Vector3.new(0,0.1*resize,0)
				PoleRing.Position = Pos+Vector3.new(0,1.3*resize,0)
			end)
		end
		done2 = true
	end)
	wait(2)
	for y = 0.6,0,-0.0025 do
		wait()
		for i , v in ipairs(Clouds) do
			v.Mesh.VertexColor = Vector3.new(0.9,y,0)
		end
	end
	for r = 0.9,0.5,-0.01 do
		wait()
		for i , v in ipairs(Clouds) do
			v.Mesh.VertexColor = Vector3.new(r,0,0)
		end
	end
	for by = 0,0.5,0.005 do
		wait()
		for i , v in ipairs(Clouds) do
			v.Mesh.VertexColor = Vector3.new(0.5,by,by)
			v.Transparency = by*2
		end
		Base.Mesh.Scale = Base.Mesh.Scale+Vector3.new(0.1,0.1,0.1)
		TopCloud.Mesh.Scale = TopCloud.Mesh.Scale+Vector3.new(0.1,0.1,0.1)
		MushCloud.Mesh.Scale = MushCloud.Mesh.Scale+Vector3.new(0.1,0.1,0.1)
		Cloud1.Mesh.Scale = Cloud1.Mesh.Scale+Vector3.new(0.1,0.1,0.1)
		Cloud2.Mesh.Scale = Cloud2.Mesh.Scale+Vector3.new(0.1,0.1,0.1)
		Cloud3.Mesh.Scale = Cloud3.Mesh.Scale+Vector3.new(0.1,0.1,0.1)
		PoleBase.Mesh.Scale = PoleBase.Mesh.Scale+Vector3.new(0.1,0.1,0.1)
		PoleRing.Mesh.Scale = PoleRing.Mesh.Scale+Vector3.new(0.1,0.1,0.1)
	end
	done3 = true
	while true do wait(1) if done1 and done2 and done3 then break end end
	Exp:remove()
	wait(20)
	Sky:remove()
end


	

Explode(BasePosition)

script.Parent:remove()



	
	




end))
Sound121.Name = "Explode"
Sound121.Parent = Script120
Sound121.Pitch = 0.5
Sound121.SoundId = "http://www.roblox.com/asset?id=130768997"
Sound121.Volume = 1
Sky122.Parent = Script120
Sky122.SkyboxBk = "http://www.roblox.com/asset/?version=1&id=1012890"
Sky122.SkyboxDn = "http://www.roblox.com/asset/?version=1&id=1012891"
Sky122.SkyboxFt = "http://www.roblox.com/asset/?version=1&id=1012887"
Sky122.SkyboxLf = "http://www.roblox.com/asset/?version=1&id=1012889"
Sky122.SkyboxRt = "http://www.roblox.com/asset/?version=1&id=1012888"
Sky122.SkyboxUp = "http://www.roblox.com/asset/?version=1&id=1014449"
Part123.Parent = Model0
Part123.Material = Enum.Material.Ice
Part123.BrickColor = BrickColor.new("Dark stone grey")
Part123.Transparency = 0.5
Part123.Rotation = Vector3.new(7.5999999, 0, 0)
Part123.CanCollide = false
Part123.FormFactor = Enum.FormFactor.Custom
Part123.Size = Vector3.new(3, 2.5999999, 0.200000003)
Part123.CFrame = CFrame.new(-24.2097893, 8.72938347, 31.1316738, 1, 1.75870337e-05, 6.18270788e-05, -9.95769551e-06, 0.991205812, -0.132270217, -7.78449903e-05, 0.132281274, 0.991214573)
Part123.BackSurface = Enum.SurfaceType.Weld
Part123.BottomSurface = Enum.SurfaceType.Weld
Part123.FrontSurface = Enum.SurfaceType.Weld
Part123.LeftSurface = Enum.SurfaceType.Weld
Part123.RightSurface = Enum.SurfaceType.Weld
Part123.TopSurface = Enum.SurfaceType.Weld
Part123.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part123.Position = Vector3.new(-24.2097893, 8.72938347, 31.1316738)
Part123.Orientation = Vector3.new(7.5999999, 0, 0)
Part123.Color = Color3.new(0.388235, 0.372549, 0.384314)
BlockMesh124.Parent = Part123
BlockMesh124.Offset = Vector3.new(0, 0, 0.200000003)
BlockMesh124.Scale = Vector3.new(1, 1.14999998, 0.5)
BlockMesh124.Scale = Vector3.new(1, 1.14999998, 0.5)
Part125.Parent = Model0
Part125.Material = Enum.Material.Metal
Part125.BrickColor = BrickColor.new("Grime")
Part125.Rotation = Vector3.new(172.399994, 0, 180)
Part125.CanCollide = false
Part125.FormFactor = Enum.FormFactor.Custom
Part125.Size = Vector3.new(3, 0.400000006, 0.200000003)
Part125.CFrame = CFrame.new(-24.2096195, 10.2178173, 46.3855438, -1, -5.60768513e-07, -8.06703756e-05, 1.13161541e-05, 0.991207719, -0.132315725, 0.000104148734, -0.132298887, -0.991209865)
Part125.BackSurface = Enum.SurfaceType.Weld
Part125.BottomSurface = Enum.SurfaceType.Weld
Part125.FrontSurface = Enum.SurfaceType.Weld
Part125.LeftSurface = Enum.SurfaceType.Weld
Part125.RightSurface = Enum.SurfaceType.Weld
Part125.TopSurface = Enum.SurfaceType.Weld
Part125.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part125.Position = Vector3.new(-24.2096195, 10.2178173, 46.3855438)
Part125.Orientation = Vector3.new(7.5999999, -180, 0)
Part125.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh126.Parent = Part125
BlockMesh126.Offset = Vector3.new(0, 0, 0.200000003)
Part127.Parent = Model0
Part127.Material = Enum.Material.Ice
Part127.BrickColor = BrickColor.new("Dark stone grey")
Part127.Transparency = 0.5
Part127.Rotation = Vector3.new(-180, 0, -180)
Part127.CanCollide = false
Part127.FormFactor = Enum.FormFactor.Custom
Part127.Size = Vector3.new(4.4000001, 1.79999995, 0.200000003)
Part127.CFrame = CFrame.new(-23.5096817, 9.10065365, 36.3602753, -1, 9.14261545e-06, -6.24489476e-05, 9.84558574e-06, 0.99999088, 2.81994267e-06, 7.66839075e-05, 1.28775291e-05, -1.00000012)
Part127.BackSurface = Enum.SurfaceType.Weld
Part127.BottomSurface = Enum.SurfaceType.Weld
Part127.FrontSurface = Enum.SurfaceType.Weld
Part127.LeftSurface = Enum.SurfaceType.Weld
Part127.RightSurface = Enum.SurfaceType.Weld
Part127.TopSurface = Enum.SurfaceType.Weld
Part127.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part127.Position = Vector3.new(-23.5096817, 9.10065365, 36.3602753)
Part127.Orientation = Vector3.new(0, -180, 0)
Part127.Color = Color3.new(0.388235, 0.372549, 0.384314)
BlockMesh128.Parent = Part127
BlockMesh128.Offset = Vector3.new(0, 0, 0.200000003)
BlockMesh128.Scale = Vector3.new(1, 1.14999998, 0.5)
BlockMesh128.Scale = Vector3.new(1, 1.14999998, 0.5)
Part129.Parent = Model0
Part129.Material = Enum.Material.Metal
Part129.BrickColor = BrickColor.new("Grime")
Part129.Rotation = Vector3.new(7.5999999, 0, 0)
Part129.CanCollide = false
Part129.FormFactor = Enum.FormFactor.Custom
Part129.Size = Vector3.new(5.80000019, 0.400000036, 0.200000003)
Part129.CFrame = CFrame.new(-19.6098289, 7.63907337, 30.9858189, 1, 1.76825579e-05, 6.23572778e-05, -9.98225096e-06, 0.991205812, -0.132270217, -7.83831638e-05, 0.132281274, 0.991214573)
Part129.BackSurface = Enum.SurfaceType.Weld
Part129.BottomSurface = Enum.SurfaceType.Weld
Part129.FrontSurface = Enum.SurfaceType.Weld
Part129.LeftSurface = Enum.SurfaceType.Weld
Part129.RightSurface = Enum.SurfaceType.Weld
Part129.TopSurface = Enum.SurfaceType.Weld
Part129.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part129.Position = Vector3.new(-19.6098289, 7.63907337, 30.9858189)
Part129.Orientation = Vector3.new(7.5999999, 0, 0)
Part129.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh130.Parent = Part129
BlockMesh130.Offset = Vector3.new(0, 0, 0.200000003)
BlockMesh130.Scale = Vector3.new(1, 1.14999998, 1)
BlockMesh130.Scale = Vector3.new(1, 1.14999998, 1)
Part131.Parent = Model0
Part131.Material = Enum.Material.Ice
Part131.BrickColor = BrickColor.new("Dark stone grey")
Part131.Transparency = 0.5
Part131.Rotation = Vector3.new(7.5999999, 0, 0)
Part131.CanCollide = false
Part131.FormFactor = Enum.FormFactor.Custom
Part131.Size = Vector3.new(5.80000019, 2, 0.200000003)
Part131.CFrame = CFrame.new(-19.8097687, 8.82844543, 31.1445694, 1, 1.76347712e-05, 6.20919236e-05, -9.96978906e-06, 0.991205275, -0.132273212, -7.81138588e-05, 0.132284284, 0.991213918)
Part131.BackSurface = Enum.SurfaceType.Weld
Part131.BottomSurface = Enum.SurfaceType.Weld
Part131.FrontSurface = Enum.SurfaceType.Weld
Part131.LeftSurface = Enum.SurfaceType.Weld
Part131.RightSurface = Enum.SurfaceType.Weld
Part131.TopSurface = Enum.SurfaceType.Weld
Part131.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part131.Position = Vector3.new(-19.8097687, 8.82844543, 31.1445694)
Part131.Orientation = Vector3.new(7.5999999, 0, 0)
Part131.Color = Color3.new(0.388235, 0.372549, 0.384314)
BlockMesh132.Parent = Part131
BlockMesh132.Offset = Vector3.new(0, 0, 0.200000003)
BlockMesh132.Scale = Vector3.new(1, 1.14999998, 0.5)
BlockMesh132.Scale = Vector3.new(1, 1.14999998, 0.5)
Part133.Parent = Model0
Part133.Material = Enum.Material.Metal
Part133.BrickColor = BrickColor.new("Grime")
Part133.CanCollide = false
Part133.FormFactor = Enum.FormFactor.Custom
Part133.Size = Vector3.new(10.1999998, 0.999999881, 2.79999995)
Part133.CFrame = CFrame.new(0.190229297, 10.7005215, 34.0595284, 1, 8.29581222e-06, 4.42689707e-05, -8.66455866e-06, 0.99999088, 2.18264177e-06, -5.17070403e-05, 3.0374008e-06, 1.00000012)
Part133.BackSurface = Enum.SurfaceType.Weld
Part133.BottomSurface = Enum.SurfaceType.Weld
Part133.FrontSurface = Enum.SurfaceType.Weld
Part133.LeftSurface = Enum.SurfaceType.Weld
Part133.RightSurface = Enum.SurfaceType.Weld
Part133.TopSurface = Enum.SurfaceType.Weld
Part133.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part133.Position = Vector3.new(0.190229297, 10.7005215, 34.0595284)
Part133.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh134.Parent = Part133
Part135.Parent = Model0
Part135.Material = Enum.Material.Metal
Part135.BrickColor = BrickColor.new("Grime")
Part135.Rotation = Vector3.new(-180, 0, -180)
Part135.CanCollide = false
Part135.FormFactor = Enum.FormFactor.Custom
Part135.Size = Vector3.new(8.80000114, 0.200000003, 4.80000019)
Part135.CFrame = CFrame.new(-21.109726, 10.3005667, 33.8601379, -1, 9.14261545e-06, -6.24489476e-05, 9.84558574e-06, 0.99999088, 2.81994267e-06, 7.66839075e-05, 1.28775291e-05, -1.00000012)
Part135.BackSurface = Enum.SurfaceType.Weld
Part135.BottomSurface = Enum.SurfaceType.Weld
Part135.FrontSurface = Enum.SurfaceType.Weld
Part135.LeftSurface = Enum.SurfaceType.Weld
Part135.RightSurface = Enum.SurfaceType.Weld
Part135.TopSurface = Enum.SurfaceType.Weld
Part135.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part135.Position = Vector3.new(-21.109726, 10.3005667, 33.8601379)
Part135.Orientation = Vector3.new(0, -180, 0)
Part135.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh136.Parent = Part135
Part137.Parent = Model0
Part137.Material = Enum.Material.Metal
Part137.BrickColor = BrickColor.new("Grime")
Part137.Rotation = Vector3.new(7.5999999, 0, 0)
Part137.CanCollide = false
Part137.FormFactor = Enum.FormFactor.Custom
Part137.Size = Vector3.new(3.20000005, 0.400000006, 0.200000003)
Part137.CFrame = CFrame.new(-24.309742, 10.2161369, 31.330101, 1, 1.75873574e-05, 6.18266713e-05, -9.95750725e-06, 0.991204858, -0.132279024, -7.78446993e-05, 0.132290065, 0.991213858)
Part137.BackSurface = Enum.SurfaceType.Weld
Part137.BottomSurface = Enum.SurfaceType.Weld
Part137.FrontSurface = Enum.SurfaceType.Weld
Part137.LeftSurface = Enum.SurfaceType.Weld
Part137.RightSurface = Enum.SurfaceType.Weld
Part137.TopSurface = Enum.SurfaceType.Weld
Part137.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part137.Position = Vector3.new(-24.309742, 10.2161369, 31.330101)
Part137.Orientation = Vector3.new(7.5999999, 0, 0)
Part137.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh138.Parent = Part137
BlockMesh138.Offset = Vector3.new(0, 0, 0.200000003)
Part139.Parent = Model0
Part139.Material = Enum.Material.Metal
Part139.BrickColor = BrickColor.new("Grime")
Part139.Rotation = Vector3.new(-180, -0.00999999978, -180)
Part139.CanCollide = false
Part139.FormFactor = Enum.FormFactor.Custom
Part139.Size = Vector3.new(8.80000114, 0.200000003, 4.80000019)
Part139.CFrame = CFrame.new(-21.1093521, 10.3008881, 43.8603363, -1, 1.11894988e-05, -0.000103796992, 1.19273136e-05, 1, 3.20989275e-05, 0.000118718235, 4.26027473e-05, -1)
Part139.BackSurface = Enum.SurfaceType.Weld
Part139.BottomSurface = Enum.SurfaceType.Weld
Part139.FrontSurface = Enum.SurfaceType.Weld
Part139.LeftSurface = Enum.SurfaceType.Weld
Part139.RightSurface = Enum.SurfaceType.Weld
Part139.TopSurface = Enum.SurfaceType.Weld
Part139.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part139.Position = Vector3.new(-21.1093521, 10.3008881, 43.8603363)
Part139.Orientation = Vector3.new(0, -179.98999, 0)
Part139.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh140.Parent = Part139
Part141.Parent = Model0
Part141.Material = Enum.Material.Metal
Part141.BrickColor = BrickColor.new("Grime")
Part141.Rotation = Vector3.new(7.5999999, 0, 0)
Part141.CanCollide = false
Part141.FormFactor = Enum.FormFactor.Custom
Part141.Size = Vector3.new(5.5999999, 0.600000083, 0.200000003)
Part141.CFrame = CFrame.new(-19.7097855, 10.1169653, 31.3165245, 1, 1.75877558e-05, 6.18268677e-05, -9.95769642e-06, 0.991204143, -0.132281795, -7.78449903e-05, 0.132292852, 0.991212904)
Part141.BackSurface = Enum.SurfaceType.Weld
Part141.BottomSurface = Enum.SurfaceType.Weld
Part141.FrontSurface = Enum.SurfaceType.Weld
Part141.LeftSurface = Enum.SurfaceType.Weld
Part141.RightSurface = Enum.SurfaceType.Weld
Part141.TopSurface = Enum.SurfaceType.Weld
Part141.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part141.Position = Vector3.new(-19.7097855, 10.1169653, 31.3165245)
Part141.Orientation = Vector3.new(7.5999999, 0, 0)
Part141.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh142.Parent = Part141
BlockMesh142.Offset = Vector3.new(0, 0, 0.200000003)
Part143.Parent = Model0
Part143.Material = Enum.Material.Metal
Part143.BrickColor = BrickColor.new("Grime")
Part143.Rotation = Vector3.new(-180, -0.00999999978, -180)
Part143.CanCollide = false
Part143.FormFactor = Enum.FormFactor.Custom
Part143.Size = Vector3.new(4, 0.200000048, 0.400000006)
Part143.CFrame = CFrame.new(-23.5095596, 10.1009521, 41.6606407, -1, 1.09616185e-05, -9.92156856e-05, 1.215679e-05, 1, 2.88735409e-05, 0.000123329461, 4.58503346e-05, -1)
Part143.BackSurface = Enum.SurfaceType.Weld
Part143.BottomSurface = Enum.SurfaceType.Weld
Part143.FrontSurface = Enum.SurfaceType.Weld
Part143.LeftSurface = Enum.SurfaceType.Weld
Part143.RightSurface = Enum.SurfaceType.Weld
Part143.TopSurface = Enum.SurfaceType.Weld
Part143.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part143.Position = Vector3.new(-23.5095596, 10.1009521, 41.6606407)
Part143.Orientation = Vector3.new(0, -179.98999, 0)
Part143.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh144.Parent = Part143
Part145.Parent = Model0
Part145.Material = Enum.Material.Metal
Part145.BrickColor = BrickColor.new("Grime")
Part145.Rotation = Vector3.new(-180, 0, -180)
Part145.CanCollide = false
Part145.FormFactor = Enum.FormFactor.Custom
Part145.Size = Vector3.new(4, 0.200000048, 0.400000006)
Part145.CFrame = CFrame.new(-23.5096741, 10.1006269, 36.060318, -1, 9.1545362e-06, -6.27174304e-05, 9.85749102e-06, 0.99999088, 3.03555453e-06, 7.69523976e-05, 1.30931385e-05, -1.00000012)
Part145.BackSurface = Enum.SurfaceType.Weld
Part145.BottomSurface = Enum.SurfaceType.Weld
Part145.FrontSurface = Enum.SurfaceType.Weld
Part145.LeftSurface = Enum.SurfaceType.Weld
Part145.RightSurface = Enum.SurfaceType.Weld
Part145.TopSurface = Enum.SurfaceType.Weld
Part145.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part145.Position = Vector3.new(-23.5096741, 10.1006269, 36.060318)
Part145.Orientation = Vector3.new(0, -180, 0)
Part145.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh146.Parent = Part145
Part147.Parent = Model0
Part147.Material = Enum.Material.Ice
Part147.BrickColor = BrickColor.new("Dark stone grey")
Part147.Transparency = 0.5
Part147.Rotation = Vector3.new(0, 0.00999999978, 0)
Part147.CanCollide = false
Part147.FormFactor = Enum.FormFactor.Custom
Part147.Size = Vector3.new(4.4000001, 1.79999995, 0.200000003)
Part147.CFrame = CFrame.new(-23.5096359, 9.10095882, 41.3607674, 1, 1.08327658e-05, 9.66105945e-05, -1.1122107e-05, 1, -2.70385699e-05, -0.000102494581, 3.11788244e-05, 1)
Part147.BackSurface = Enum.SurfaceType.Weld
Part147.BottomSurface = Enum.SurfaceType.Weld
Part147.FrontSurface = Enum.SurfaceType.Weld
Part147.LeftSurface = Enum.SurfaceType.Weld
Part147.RightSurface = Enum.SurfaceType.Weld
Part147.TopSurface = Enum.SurfaceType.Weld
Part147.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part147.Position = Vector3.new(-23.5096359, 9.10095882, 41.3607674)
Part147.Orientation = Vector3.new(0, 0.00999999978, 0)
Part147.Color = Color3.new(0.388235, 0.372549, 0.384314)
BlockMesh148.Parent = Part147
BlockMesh148.Offset = Vector3.new(0, 0, 0.200000003)
BlockMesh148.Scale = Vector3.new(1, 1.14999998, 0.5)
BlockMesh148.Scale = Vector3.new(1, 1.14999998, 0.5)
Part149.Parent = Model0
Part149.Material = Enum.Material.Metal
Part149.BrickColor = BrickColor.new("Grime")
Part149.Rotation = Vector3.new(172.399994, -0.00999999978, 180)
Part149.CanCollide = false
Part149.FormFactor = Enum.FormFactor.Custom
Part149.Size = Vector3.new(6.20000029, 0.600000083, 0.200000003)
Part149.CFrame = CFrame.new(-19.8094444, 10.1184397, 46.3984222, -1, -9.0132653e-06, -0.000181728246, 1.62895012e-05, 0.991222322, -0.132206291, 0.00020543822, -0.132189453, -0.991224468)
Part149.BackSurface = Enum.SurfaceType.Weld
Part149.BottomSurface = Enum.SurfaceType.Weld
Part149.FrontSurface = Enum.SurfaceType.Weld
Part149.LeftSurface = Enum.SurfaceType.Weld
Part149.RightSurface = Enum.SurfaceType.Weld
Part149.TopSurface = Enum.SurfaceType.Weld
Part149.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part149.Position = Vector3.new(-19.8094444, 10.1184397, 46.3984222)
Part149.Orientation = Vector3.new(7.5999999, -179.98999, 0)
Part149.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh150.Parent = Part149
BlockMesh150.Offset = Vector3.new(0, 0, 0.200000003)
Part151.Parent = Model0
Part151.Material = Enum.Material.Metal
Part151.BrickColor = BrickColor.new("Grime")
Part151.Rotation = Vector3.new(-180, 0, -180)
Part151.CanCollide = false
Part151.FormFactor = Enum.FormFactor.Custom
Part151.Size = Vector3.new(0.400000125, 0.400000095, 4.80000019)
Part151.CFrame = CFrame.new(-25.7096767, 10.2006121, 33.8604965, -1, 9.1545362e-06, -6.27174304e-05, 9.85749102e-06, 0.99999088, 3.03555453e-06, 7.69523976e-05, 1.30931385e-05, -1.00000012)
Part151.BackSurface = Enum.SurfaceType.Weld
Part151.BottomSurface = Enum.SurfaceType.Weld
Part151.FrontSurface = Enum.SurfaceType.Weld
Part151.LeftSurface = Enum.SurfaceType.Weld
Part151.RightSurface = Enum.SurfaceType.Weld
Part151.TopSurface = Enum.SurfaceType.Weld
Part151.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part151.Position = Vector3.new(-25.7096767, 10.2006121, 33.8604965)
Part151.Orientation = Vector3.new(0, -180, 0)
Part151.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh152.Parent = Part151
Part153.Parent = Model0
Part153.Material = Enum.Material.Ice
Part153.BrickColor = BrickColor.new("Dark stone grey")
Part153.Transparency = 0.5
Part153.Rotation = Vector3.new(0, 90, 0)
Part153.CanCollide = false
Part153.FormFactor = Enum.FormFactor.Custom
Part153.Size = Vector3.new(4.4000001, 2.5999999, 0.200000003)
Part153.CFrame = CFrame.new(-26.0095062, 8.70113087, 44.0608444, -6.27532063e-05, 9.1800166e-06, 1, 6.16025354e-05, 1, -9.47351418e-06, -1, 6.58212812e-05, -6.87484062e-05)
Part153.BackSurface = Enum.SurfaceType.Weld
Part153.BottomSurface = Enum.SurfaceType.Weld
Part153.FrontSurface = Enum.SurfaceType.Weld
Part153.LeftSurface = Enum.SurfaceType.Weld
Part153.RightSurface = Enum.SurfaceType.Weld
Part153.TopSurface = Enum.SurfaceType.Weld
Part153.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part153.Position = Vector3.new(-26.0095062, 8.70113087, 44.0608444)
Part153.Orientation = Vector3.new(0, 90, 0)
Part153.Color = Color3.new(0.388235, 0.372549, 0.384314)
BlockMesh154.Parent = Part153
BlockMesh154.Offset = Vector3.new(0, 0, 0.200000003)
BlockMesh154.Scale = Vector3.new(1, 1.14999998, 0.5)
BlockMesh154.Scale = Vector3.new(1, 1.14999998, 0.5)
Part155.Parent = Model0
Part155.Material = Enum.Material.Metal
Part155.BrickColor = BrickColor.new("Grime")
Part155.Rotation = Vector3.new(180, 0, -180)
Part155.CanCollide = false
Part155.FormFactor = Enum.FormFactor.Custom
Part155.Size = Vector3.new(0.400000125, 2.60000014, 0.399999619)
Part155.CFrame = CFrame.new(-25.7094059, 8.70073032, 36.0606499, -1, 8.09867561e-06, -4.05344908e-05, 8.86677481e-06, 1, -1.35534392e-05, 5.598793e-05, -2.67428459e-06, -1)
Part155.BackSurface = Enum.SurfaceType.Weld
Part155.BottomSurface = Enum.SurfaceType.Weld
Part155.FrontSurface = Enum.SurfaceType.Weld
Part155.LeftSurface = Enum.SurfaceType.Weld
Part155.RightSurface = Enum.SurfaceType.Weld
Part155.TopSurface = Enum.SurfaceType.Weld
Part155.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part155.Position = Vector3.new(-25.7094059, 8.70073032, 36.0606499)
Part155.Orientation = Vector3.new(0, -180, 0)
Part155.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh156.Parent = Part155
Part157.Parent = Model0
Part157.Material = Enum.Material.Metal
Part157.BrickColor = BrickColor.new("Grime")
Part157.Rotation = Vector3.new(180, 0, -180)
Part157.CanCollide = false
Part157.FormFactor = Enum.FormFactor.Custom
Part157.Size = Vector3.new(0.400000125, 2.60000014, 0.399999619)
Part157.CFrame = CFrame.new(-25.7093887, 8.70087433, 41.6606712, -1, 8.28512475e-06, -4.41889606e-05, 8.58297699e-06, 1, -1.10809588e-05, 5.01835166e-05, -6.86198973e-06, -1)
Part157.BackSurface = Enum.SurfaceType.Weld
Part157.BottomSurface = Enum.SurfaceType.Weld
Part157.FrontSurface = Enum.SurfaceType.Weld
Part157.LeftSurface = Enum.SurfaceType.Weld
Part157.RightSurface = Enum.SurfaceType.Weld
Part157.TopSurface = Enum.SurfaceType.Weld
Part157.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part157.Position = Vector3.new(-25.7093887, 8.70087433, 41.6606712)
Part157.Orientation = Vector3.new(0, -180, 0)
Part157.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh158.Parent = Part157
Part159.Parent = Model0
Part159.Material = Enum.Material.Metal
Part159.BrickColor = BrickColor.new("Grime")
Part159.Transparency = 1
Part159.Rotation = Vector3.new(0, 0, -90)
Part159.CanCollide = false
Part159.FormFactor = Enum.FormFactor.Custom
Part159.Size = Vector3.new(0.600000024, 33.4000015, 1.20000005)
Part159.CFrame = CFrame.new(-4.310009, 11.8002071, 39.1599884, -6.21251684e-06, 1, 6.75599949e-07, -1, -6.68983739e-06, 1.11012896e-05, 4.27564555e-06, -1.03863886e-05, 1)
Part159.BackSurface = Enum.SurfaceType.Weld
Part159.BottomSurface = Enum.SurfaceType.Weld
Part159.FrontSurface = Enum.SurfaceType.Weld
Part159.LeftSurface = Enum.SurfaceType.Weld
Part159.RightSurface = Enum.SurfaceType.Weld
Part159.TopSurface = Enum.SurfaceType.Weld
Part159.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part159.Position = Vector3.new(-4.310009, 11.8002071, 39.1599884)
Part159.Orientation = Vector3.new(0, 0, -90)
Part159.Color = Color3.new(0.498039, 0.556863, 0.392157)
CylinderMesh160.Parent = Part159
CylinderMesh160.Offset = Vector3.new(6.5, 0, 0)
CylinderMesh160.Scale = Vector3.new(2, 1.5, 1.60000002)
CylinderMesh160.Scale = Vector3.new(2, 1.5, 1.60000002)
Part161.Parent = Model0
Part161.Material = Enum.Material.Metal
Part161.BrickColor = BrickColor.new("Grime")
Part161.Rotation = Vector3.new(-180, -0.00999999978, -180)
Part161.CanCollide = false
Part161.FormFactor = Enum.FormFactor.Custom
Part161.Size = Vector3.new(0.400000125, 0.400000095, 4.80000019)
Part161.CFrame = CFrame.new(-25.7093048, 10.200943, 43.8608704, -1, 1.09616185e-05, -9.92156856e-05, 1.215679e-05, 1, 2.88735409e-05, 0.000123329461, 4.58503346e-05, -1)
Part161.BackSurface = Enum.SurfaceType.Weld
Part161.BottomSurface = Enum.SurfaceType.Weld
Part161.FrontSurface = Enum.SurfaceType.Weld
Part161.LeftSurface = Enum.SurfaceType.Weld
Part161.RightSurface = Enum.SurfaceType.Weld
Part161.TopSurface = Enum.SurfaceType.Weld
Part161.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part161.Position = Vector3.new(-25.7093048, 10.200943, 43.8608704)
Part161.Orientation = Vector3.new(0, -179.98999, 0)
Part161.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh162.Parent = Part161
Part163.Name = "Brick"
Part163.Parent = Model0
Part163.Material = Enum.Material.Metal
Part163.BrickColor = BrickColor.new("Grime")
Part163.Transparency = 1
Part163.Rotation = Vector3.new(-81.8699951, 0, 0)
Part163.CanCollide = false
Part163.FormFactor = Enum.FormFactor.Custom
Part163.Size = Vector3.new(2, 0.200000003, 1.19999993)
Part163.CFrame = CFrame.new(-15.1100616, 9.22443581, 31.4195766, 1, -1.95444609e-05, 1.00356256e-05, -7.23307085e-06, 0.141354978, 0.989949763, -2.19993763e-05, -0.989958763, 0.141357139)
Part163.BackSurface = Enum.SurfaceType.Weld
Part163.BottomSurface = Enum.SurfaceType.Weld
Part163.FrontSurface = Enum.SurfaceType.Weld
Part163.LeftSurface = Enum.SurfaceType.Weld
Part163.RightSurface = Enum.SurfaceType.Weld
Part163.TopSurface = Enum.SurfaceType.Weld
Part163.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part163.Position = Vector3.new(-15.1100616, 9.22443581, 31.4195766)
Part163.Orientation = Vector3.new(-81.8699951, 0, 0)
Part163.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh164.Parent = Part163
BlockMesh164.Offset = Vector3.new(0, -0.189999998, 0)
Part165.Parent = Model0
Part165.Material = Enum.Material.Ice
Part165.BrickColor = BrickColor.new("Dark stone grey")
Part165.Transparency = 0.5
Part165.Rotation = Vector3.new(-0.00999999978, 90, 0)
Part165.CanCollide = false
Part165.FormFactor = Enum.FormFactor.Custom
Part165.Size = Vector3.new(4.4000001, 2.5999999, 0.200000003)
Part165.CFrame = CFrame.new(-26.0100727, 8.70062733, 33.660717, 1.50852629e-05, 8.59109969e-06, 1, -0.000113904629, 0.999991715, -9.33180672e-06, -1.00000143, -0.000103434344, 5.23921777e-08)
Part165.BackSurface = Enum.SurfaceType.Weld
Part165.BottomSurface = Enum.SurfaceType.Weld
Part165.FrontSurface = Enum.SurfaceType.Weld
Part165.LeftSurface = Enum.SurfaceType.Weld
Part165.RightSurface = Enum.SurfaceType.Weld
Part165.TopSurface = Enum.SurfaceType.Weld
Part165.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part165.Position = Vector3.new(-26.0100727, 8.70062733, 33.660717)
Part165.Orientation = Vector3.new(0, 90, -0.00999999978)
Part165.Color = Color3.new(0.388235, 0.372549, 0.384314)
BlockMesh166.Parent = Part165
BlockMesh166.Offset = Vector3.new(0, 0, 0.200000003)
BlockMesh166.Scale = Vector3.new(1, 1.14999998, 0.5)
BlockMesh166.Scale = Vector3.new(1, 1.14999998, 0.5)
WedgePart167.Parent = Model0
WedgePart167.Material = Enum.Material.Metal
WedgePart167.BrickColor = BrickColor.new("Grime")
WedgePart167.Rotation = Vector3.new(90, 0, 180)
WedgePart167.FormFactor = Enum.FormFactor.Custom
WedgePart167.Size = Vector3.new(10.1999998, 1.60000014, 1.00000012)
WedgePart167.CFrame = CFrame.new(0.190155506, 10.7001343, 31.8595524, -1, -6.39187638e-05, -9.26415669e-06, 9.63382809e-06, -1.61062781e-05, -0.99999088, 7.13567133e-05, -1.00000012, 1.08866034e-05)
WedgePart167.BackSurface = Enum.SurfaceType.Weld
WedgePart167.BottomSurface = Enum.SurfaceType.Weld
WedgePart167.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart167.Position = Vector3.new(0.190155506, 10.7001343, 31.8595524)
WedgePart167.Orientation = Vector3.new(89.7599945, -40.3999977, 149.110001)
WedgePart167.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh168.Parent = WedgePart167
SpecialMesh168.MeshType = Enum.MeshType.Wedge
WedgePart169.Parent = Model0
WedgePart169.Material = Enum.Material.Metal
WedgePart169.BrickColor = BrickColor.new("Grime")
WedgePart169.Rotation = Vector3.new(90, 0, 179.98999)
WedgePart169.CanCollide = false
WedgePart169.FormFactor = Enum.FormFactor.Custom
WedgePart169.Size = Vector3.new(0.400000006, 0.400000006, 3)
WedgePart169.CFrame = CFrame.new(-25.7095623, 8.90049076, 31.2609272, -1, -0.00011542545, -1.16997289e-05, 1.24401122e-05, 1.74538945e-05, -0.999991715, 0.000130459724, -1.00000143, -2.79238375e-05)
WedgePart169.BackSurface = Enum.SurfaceType.Weld
WedgePart169.BottomSurface = Enum.SurfaceType.Weld
WedgePart169.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart169.Position = Vector3.new(-25.7095623, 8.90049076, 31.2609272)
WedgePart169.Orientation = Vector3.new(89.7699966, -157.269989, 35.4799995)
WedgePart169.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh170.Parent = WedgePart169
SpecialMesh170.MeshType = Enum.MeshType.Wedge
WedgePart171.Parent = Model0
WedgePart171.Material = Enum.Material.Metal
WedgePart171.BrickColor = BrickColor.new("Grime")
WedgePart171.Rotation = Vector3.new(90, 0, 180)
WedgePart171.CanCollide = false
WedgePart171.FormFactor = Enum.FormFactor.Custom
WedgePart171.Size = Vector3.new(0.400000006, 1.20000005, 0.999999821)
WedgePart171.CFrame = CFrame.new(-25.7096157, 7.90141249, 35.2606316, -1, -4.28536587e-05, -1.1318748e-05, 1.20651166e-05, -9.25489076e-05, -0.999991715, 5.78865729e-05, -1.00000143, 8.20791174e-05)
WedgePart171.BackSurface = Enum.SurfaceType.Weld
WedgePart171.BottomSurface = Enum.SurfaceType.Weld
WedgePart171.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart171.Position = Vector3.new(-25.7096157, 7.90141249, 35.2606316)
WedgePart171.Orientation = Vector3.new(89.7699966, -7.8499999, 172.569992)
WedgePart171.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh172.Parent = WedgePart171
SpecialMesh172.MeshType = Enum.MeshType.Wedge
WedgePart173.Parent = Model0
WedgePart173.Material = Enum.Material.Metal
WedgePart173.BrickColor = BrickColor.new("Grime")
WedgePart173.Rotation = Vector3.new(-90, 0, -180)
WedgePart173.CanCollide = false
WedgePart173.FormFactor = Enum.FormFactor.Custom
WedgePart173.Size = Vector3.new(0.400000006, 0.200000003, 2.60000014)
WedgePart173.CFrame = CFrame.new(-25.7096691, 8.70045567, 31.560833, -1, 8.70646472e-05, 1.34475977e-05, 1.41952787e-05, 6.08148293e-05, 0.999991715, 0.000102097867, 1.00000143, -5.03454758e-05)
WedgePart173.BackSurface = Enum.SurfaceType.Weld
WedgePart173.BottomSurface = Enum.SurfaceType.Weld
WedgePart173.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart173.Position = Vector3.new(-25.7096691, 8.70045567, 31.560833)
WedgePart173.Orientation = Vector3.new(-89.7699966, 165.050003, 13.1399994)
WedgePart173.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh174.Parent = WedgePart173
SpecialMesh174.MeshType = Enum.MeshType.Wedge
WedgePart175.Parent = Model0
WedgePart175.Material = Enum.Material.Metal
WedgePart175.BrickColor = BrickColor.new("Grime")
WedgePart175.Rotation = Vector3.new(90, 0, -0.00999999978)
WedgePart175.CanCollide = false
WedgePart175.FormFactor = Enum.FormFactor.Custom
WedgePart175.Size = Vector3.new(0.400000006, 0.400000006, 3)
WedgePart175.CFrame = CFrame.new(-25.7104053, 8.90147972, 46.4605446, 1, 9.32686453e-05, -1.07004098e-05, -1.14709874e-05, 3.40783699e-05, -1, -0.000108721877, 1, 2.31999766e-05)
WedgePart175.BackSurface = Enum.SurfaceType.Weld
WedgePart175.BottomSurface = Enum.SurfaceType.Weld
WedgePart175.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart175.Position = Vector3.new(-25.7104053, 8.90147972, 46.4605446)
WedgePart175.Orientation = Vector3.new(90, 0.00999999978, 0)
WedgePart175.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh176.Parent = WedgePart175
SpecialMesh176.MeshType = Enum.MeshType.Wedge
WedgePart177.Parent = Model0
WedgePart177.Material = Enum.Material.Metal
WedgePart177.BrickColor = BrickColor.new("Grime")
WedgePart177.Rotation = Vector3.new(90, 0, 180)
WedgePart177.CanCollide = false
WedgePart177.FormFactor = Enum.FormFactor.Custom
WedgePart177.Size = Vector3.new(11.8000002, 0.400000006, 2.79999995)
WedgePart177.CFrame = CFrame.new(-10.8100128, 8.80036926, 31.4599285, -1, -1.98704856e-05, -7.10724089e-06, 7.16815839e-06, 1.53286351e-06, -0.99999088, 2.11030638e-05, -1.00000012, -2.38569896e-06)
WedgePart177.BackSurface = Enum.SurfaceType.Weld
WedgePart177.BottomSurface = Enum.SurfaceType.Weld
WedgePart177.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart177.Position = Vector3.new(-10.8100128, 8.80036926, 31.4599285)
WedgePart177.Orientation = Vector3.new(89.7599945, -108.559998, 77.9300003)
WedgePart177.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh178.Parent = WedgePart177
SpecialMesh178.MeshType = Enum.MeshType.Wedge
WedgePart179.Parent = Model0
WedgePart179.Material = Enum.Material.Metal
WedgePart179.BrickColor = BrickColor.new("Grime")
WedgePart179.Rotation = Vector3.new(-90, 0, -180)
WedgePart179.CanCollide = false
WedgePart179.FormFactor = Enum.FormFactor.Custom
WedgePart179.Size = Vector3.new(0.200000003, 0.200000003, 2.60000014)
WedgePart179.CFrame = CFrame.new(-16.8098984, 8.70064831, 31.5546684, -1, 3.86261199e-05, 8.03524836e-06, 8.7385406e-06, 3.54923986e-06, 0.999991119, 5.28609926e-05, 1.00000048, 6.47919069e-06)
WedgePart179.BackSurface = Enum.SurfaceType.Weld
WedgePart179.BottomSurface = Enum.SurfaceType.Weld
WedgePart179.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart179.Position = Vector3.new(-16.8098984, 8.70064831, 31.5546684)
WedgePart179.Orientation = Vector3.new(-89.7599945, 51.1199989, 67.9000015)
WedgePart179.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh180.Parent = WedgePart179
SpecialMesh180.MeshType = Enum.MeshType.Wedge
WedgePart181.Parent = Model0
WedgePart181.Material = Enum.Material.Metal
WedgePart181.BrickColor = BrickColor.new("Grime")
WedgePart181.Rotation = Vector3.new(90, 0, 180)
WedgePart181.CanCollide = false
WedgePart181.FormFactor = Enum.FormFactor.Custom
WedgePart181.Size = Vector3.new(0.200000003, 0.400000006, 3)
WedgePart181.CFrame = CFrame.new(-19.6100655, 8.90089989, 31.2546997, -1, -6.24609311e-05, -9.12487758e-06, 9.82918027e-06, -1.84945038e-05, -0.99999088, 7.66956946e-05, -1.00000012, 8.43711314e-06)
WedgePart181.BackSurface = Enum.SurfaceType.Weld
WedgePart181.BottomSurface = Enum.SurfaceType.Weld
WedgePart181.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart181.Position = Vector3.new(-19.6100655, 8.90089989, 31.2546997)
WedgePart181.Orientation = Vector3.new(89.7599945, -47.2399979, 152.009995)
WedgePart181.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh182.Parent = WedgePart181
SpecialMesh182.MeshType = Enum.MeshType.Wedge
WedgePart183.Parent = Model0
WedgePart183.Material = Enum.Material.Metal
WedgePart183.BrickColor = BrickColor.new("Grime")
WedgePart183.Rotation = Vector3.new(90, 0, 180)
WedgePart183.CanCollide = false
WedgePart183.FormFactor = Enum.FormFactor.Custom
WedgePart183.Size = Vector3.new(0.400000006, 0.400000006, 3)
WedgePart183.CFrame = CFrame.new(-22.7099266, 8.90095329, 31.255022, -1, -6.28153575e-05, -9.15679993e-06, 9.860717e-06, -1.23528207e-05, -0.999991715, 7.70501429e-05, -1.00000143, 2.44396688e-06)
WedgePart183.BackSurface = Enum.SurfaceType.Weld
WedgePart183.BottomSurface = Enum.SurfaceType.Weld
WedgePart183.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart183.Position = Vector3.new(-22.7099266, 8.90095329, 31.255022)
WedgePart183.Orientation = Vector3.new(89.7699966, -75.0599976, 141.399994)
WedgePart183.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh184.Parent = WedgePart183
SpecialMesh184.MeshType = Enum.MeshType.Wedge
WedgePart185.Parent = Model0
WedgePart185.Material = Enum.Material.Metal
WedgePart185.BrickColor = BrickColor.new("Grime")
WedgePart185.Rotation = Vector3.new(-90, 0, 0)
WedgePart185.CanCollide = false
WedgePart185.FormFactor = Enum.FormFactor.Custom
WedgePart185.Size = Vector3.new(0.400000006, 0.200000003, 2.60000014)
WedgePart185.CFrame = CFrame.new(-25.7090588, 8.70090199, 46.1605759, 1, -7.75331137e-05, 9.84157032e-06, -1.01347641e-05, 5.37735141e-05, 1, -8.35282772e-05, -1, 5.7992067e-05)
WedgePart185.BackSurface = Enum.SurfaceType.Weld
WedgePart185.BottomSurface = Enum.SurfaceType.Weld
WedgePart185.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart185.Position = Vector3.new(-25.7090588, 8.70090199, 46.1605759)
WedgePart185.Orientation = Vector3.new(-90, 0, 0)
WedgePart185.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh186.Parent = WedgePart185
SpecialMesh186.MeshType = Enum.MeshType.Wedge
WedgePart187.Parent = Model0
WedgePart187.Material = Enum.Material.Metal
WedgePart187.BrickColor = BrickColor.new("Grime")
WedgePart187.Rotation = Vector3.new(-90, 0, -180)
WedgePart187.CanCollide = false
WedgePart187.FormFactor = Enum.FormFactor.Custom
WedgePart187.Size = Vector3.new(0.200000003, 0.200000003, 2.60000014)
WedgePart187.CFrame = CFrame.new(-19.6096992, 8.70069408, 31.5548515, -1, 2.96698472e-05, 7.61610727e-06, 8.31959642e-06, 1.10488836e-05, 0.99999088, 4.39046744e-05, 1.00000012, -9.91035904e-07)
WedgePart187.BackSurface = Enum.SurfaceType.Weld
WedgePart187.BottomSurface = Enum.SurfaceType.Weld
WedgePart187.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart187.Position = Vector3.new(-19.6096992, 8.70069408, 31.5548515)
WedgePart187.Orientation = Vector3.new(-89.7599945, 97.409996, 36.9799995)
WedgePart187.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh188.Parent = WedgePart187
SpecialMesh188.MeshType = Enum.MeshType.Wedge
WedgePart189.Parent = Model0
WedgePart189.Material = Enum.Material.Metal
WedgePart189.BrickColor = BrickColor.new("Grime")
WedgePart189.Rotation = Vector3.new(-90, 0, -180)
WedgePart189.CanCollide = false
WedgePart189.FormFactor = Enum.FormFactor.Custom
WedgePart189.Size = Vector3.new(0.400000006, 0.200000003, 2.60000014)
WedgePart189.CFrame = CFrame.new(-22.7095509, 8.70071697, 31.5549793, -1, 2.9757899e-05, 7.61660112e-06, 8.32005298e-06, 1.00073721e-05, 0.999991715, 4.39926589e-05, 1.00000143, -9.81024186e-08)
WedgePart189.BackSurface = Enum.SurfaceType.Weld
WedgePart189.BottomSurface = Enum.SurfaceType.Weld
WedgePart189.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart189.Position = Vector3.new(-22.7095509, 8.70071697, 31.5549793)
WedgePart189.Orientation = Vector3.new(-89.7699966, 90.7399979, 39.7399979)
WedgePart189.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh190.Parent = WedgePart189
SpecialMesh190.MeshType = Enum.MeshType.Wedge
WedgePart191.Parent = Model0
WedgePart191.Material = Enum.Material.Metal
WedgePart191.BrickColor = BrickColor.new("Grime")
WedgePart191.Rotation = Vector3.new(90, 0, 180)
WedgePart191.CanCollide = false
WedgePart191.FormFactor = Enum.FormFactor.Custom
WedgePart191.Size = Vector3.new(0.200000003, 0.400000006, 3)
WedgePart191.CFrame = CFrame.new(-16.810257, 8.90075588, 31.25453, -1, -6.24630338e-05, -9.1277625e-06, 9.83149221e-06, -9.34280797e-06, -0.999991119, 7.66978701e-05, -1.00000048, -6.85276063e-07)
WedgePart191.BackSurface = Enum.SurfaceType.Weld
WedgePart191.BottomSurface = Enum.SurfaceType.Weld
WedgePart191.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart191.Position = Vector3.new(-16.810257, 8.90075588, 31.25453)
WedgePart191.Orientation = Vector3.new(89.7599945, -94.2900009, 133.539993)
WedgePart191.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh192.Parent = WedgePart191
SpecialMesh192.MeshType = Enum.MeshType.Wedge
Model193.Name = "Braces"
Model193.Parent = Model0
Part194.Name = "SideSupporters"
Part194.Parent = Model193
Part194.Material = Enum.Material.DiamondPlate
Part194.BrickColor = BrickColor.new("Dark stone grey")
Part194.Rotation = Vector3.new(-0.00999999978, -0.00999999978, -90)
Part194.CanCollide = false
Part194.FormFactor = Enum.FormFactor.Custom
Part194.Size = Vector3.new(0.800000012, 38.6000023, 0.599999905)
Part194.CFrame = CFrame.new(4.88875008, 11.701334, 42.4607582, -1.26398409e-05, 1, -0.000139337557, -1, -1.35639984e-05, 0.000109516797, 9.60821344e-05, 0.000120227873, 1)
Part194.BackSurface = Enum.SurfaceType.Weld
Part194.BottomSurface = Enum.SurfaceType.Weld
Part194.FrontSurface = Enum.SurfaceType.Weld
Part194.LeftSurface = Enum.SurfaceType.Weld
Part194.RightSurface = Enum.SurfaceType.Weld
Part194.TopSurface = Enum.SurfaceType.Weld
Part194.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part194.Position = Vector3.new(4.88875008, 11.701334, 42.4607582)
Part194.Orientation = Vector3.new(-0.00999999978, -0.00999999978, -90)
Part194.Color = Color3.new(0.388235, 0.372549, 0.384314)
CylinderMesh195.Parent = Part194
CylinderMesh195.Offset = Vector3.new(0.699999988, 0, -0.5)
Part196.Name = "SideSupporters"
Part196.Parent = Model193
Part196.Material = Enum.Material.DiamondPlate
Part196.BrickColor = BrickColor.new("Dark stone grey")
Part196.Rotation = Vector3.new(0, 0, -90)
Part196.CanCollide = false
Part196.FormFactor = Enum.FormFactor.Custom
Part196.Size = Vector3.new(0.800000012, 38.6000023, 0.599999905)
Part196.CFrame = CFrame.new(4.89028549, 11.7001047, 35.459919, -3.96238374e-06, 1, -1.33412796e-05, -1, -4.90152115e-06, 2.09537357e-05, 7.52074175e-06, -5.76958473e-06, 1)
Part196.BackSurface = Enum.SurfaceType.Weld
Part196.BottomSurface = Enum.SurfaceType.Weld
Part196.FrontSurface = Enum.SurfaceType.Weld
Part196.LeftSurface = Enum.SurfaceType.Weld
Part196.RightSurface = Enum.SurfaceType.Weld
Part196.TopSurface = Enum.SurfaceType.Weld
Part196.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part196.Position = Vector3.new(4.89028549, 11.7001047, 35.459919)
Part196.Orientation = Vector3.new(0, 0, -90)
Part196.Color = Color3.new(0.388235, 0.372549, 0.384314)
CylinderMesh197.Parent = Part196
CylinderMesh197.Offset = Vector3.new(0.699999988, 0, 0.5)
Part198.Name = "SideSupporters"
Part198.Parent = Model193
Part198.Material = Enum.Material.DiamondPlate
Part198.BrickColor = BrickColor.new("Dark stone grey")
Part198.Transparency = 1
Part198.Rotation = Vector3.new(-90, 90, 0)
Part198.CanCollide = false
Part198.FormFactor = Enum.FormFactor.Custom
Part198.Size = Vector3.new(0.399999976, 3.200001, 0.599999905)
Part198.CFrame = CFrame.new(12.6886978, 12.3010302, 41.0611801, -1.00123516e-05, 0.000133011898, 1, -1, -8.2736733e-05, -1.09407647e-05, 6.93024485e-05, -1, 0.000113901697)
Part198.BackSurface = Enum.SurfaceType.Weld
Part198.BottomSurface = Enum.SurfaceType.Weld
Part198.FrontSurface = Enum.SurfaceType.Weld
Part198.LeftSurface = Enum.SurfaceType.Weld
Part198.RightSurface = Enum.SurfaceType.Weld
Part198.TopSurface = Enum.SurfaceType.Weld
Part198.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part198.Position = Vector3.new(12.6886978, 12.3010302, 41.0611801)
Part198.Orientation = Vector3.new(0, 89.9899979, -90)
Part198.Color = Color3.new(0.388235, 0.372549, 0.384314)
CylinderMesh199.Parent = Part198
CylinderMesh199.Offset = Vector3.new(0.699999988, 0, 0.5)
Part200.Name = "SideSupporters"
Part200.Parent = Model193
Part200.Material = Enum.Material.DiamondPlate
Part200.BrickColor = BrickColor.new("Dark stone grey")
Part200.Transparency = 1
Part200.Rotation = Vector3.new(-90, 90, 0)
Part200.CanCollide = false
Part200.FormFactor = Enum.FormFactor.Custom
Part200.Size = Vector3.new(0.399999976, 3.200001, 0.599999905)
Part200.CFrame = CFrame.new(12.6900082, 12.3000383, 36.8591309, -2.95247196e-06, -2.58682812e-05, 1, -1, 2.89400232e-05, -3.89114075e-06, -4.23728707e-05, -1, -4.49793006e-05)
Part200.BackSurface = Enum.SurfaceType.Weld
Part200.BottomSurface = Enum.SurfaceType.Weld
Part200.FrontSurface = Enum.SurfaceType.Weld
Part200.LeftSurface = Enum.SurfaceType.Weld
Part200.RightSurface = Enum.SurfaceType.Weld
Part200.TopSurface = Enum.SurfaceType.Weld
Part200.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part200.Position = Vector3.new(12.6900082, 12.3000383, 36.8591309)
Part200.Orientation = Vector3.new(0, 90, -90)
Part200.Color = Color3.new(0.388235, 0.372549, 0.384314)
CylinderMesh201.Parent = Part200
CylinderMesh201.Offset = Vector3.new(0.699999988, 0, 0.5)
Part202.Name = "Emblem"
Part202.Parent = Model0
Part202.Material = Enum.Material.Metal
Part202.BrickColor = BrickColor.new("Grime")
Part202.CanCollide = false
Part202.FormFactor = Enum.FormFactor.Custom
Part202.Size = Vector3.new(3.60000014, 3.39999962, 0.200000003)
Part202.CFrame = CFrame.new(-20.5100327, 5.70076609, 30.9600067, 1, 7.46798696e-06, 2.7385162e-05, -7.62826676e-06, 0.999991715, -1.72890504e-05, -3.06962465e-05, 1.95087814e-05, 1.00000143)
Part202.BackSurface = Enum.SurfaceType.Weld
Part202.BottomSurface = Enum.SurfaceType.Weld
Part202.FrontSurface = Enum.SurfaceType.Weld
Part202.LeftSurface = Enum.SurfaceType.Weld
Part202.RightSurface = Enum.SurfaceType.Weld
Part202.TopSurface = Enum.SurfaceType.Weld
Part202.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part202.Position = Vector3.new(-20.5100327, 5.70076609, 30.9600067)
Part202.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh203.Parent = Part202
BlockMesh203.Offset = Vector3.new(0, 0, 0.200000003)
Part204.Parent = Model0
Part204.Material = Enum.Material.Metal
Part204.BrickColor = BrickColor.new("Grime")
Part204.Rotation = Vector3.new(-180, 0, -180)
Part204.FormFactor = Enum.FormFactor.Custom
Part204.Size = Vector3.new(6.19999933, 2.20000005, 2.60000038)
Part204.CFrame = CFrame.new(14.9899111, 9.90013885, 32.9597321, -1, 8.86935595e-06, -5.40786423e-05, 8.96597521e-06, 1, 8.80265179e-06, 5.60541885e-05, 1.01906853e-05, -1)
Part204.BackSurface = Enum.SurfaceType.Weld
Part204.BottomSurface = Enum.SurfaceType.Weld
Part204.FrontSurface = Enum.SurfaceType.Weld
Part204.LeftSurface = Enum.SurfaceType.Weld
Part204.RightSurface = Enum.SurfaceType.Weld
Part204.TopSurface = Enum.SurfaceType.Weld
Part204.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part204.Position = Vector3.new(14.9899111, 9.90013885, 32.9597321)
Part204.Orientation = Vector3.new(0, -180, 0)
Part204.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh205.Parent = Part204
Part206.Parent = Model0
Part206.Material = Enum.Material.Metal
Part206.BrickColor = BrickColor.new("Grime")
Part206.Rotation = Vector3.new(180, 0, -180)
Part206.FormFactor = Enum.FormFactor.Custom
Part206.Size = Vector3.new(5.19999933, 1.19999993, 4.00000048)
Part206.CFrame = CFrame.new(8.89008808, 8.60011578, 33.6598549, -1, 6.99085149e-06, -1.63561654e-05, 7.1075865e-06, 1, -6.3724741e-08, 1.87311598e-05, 1.60550485e-06, -1)
Part206.BackSurface = Enum.SurfaceType.Weld
Part206.BottomSurface = Enum.SurfaceType.Weld
Part206.FrontSurface = Enum.SurfaceType.Weld
Part206.LeftSurface = Enum.SurfaceType.Weld
Part206.RightSurface = Enum.SurfaceType.Weld
Part206.TopSurface = Enum.SurfaceType.Weld
Part206.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part206.Position = Vector3.new(8.89008808, 8.60011578, 33.6598549)
Part206.Orientation = Vector3.new(0, -180, 0)
Part206.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh207.Parent = Part206
Part208.Parent = Model0
Part208.Material = Enum.Material.Metal
Part208.BrickColor = BrickColor.new("Grime")
Part208.Rotation = Vector3.new(-180, 0, -180)
Part208.CanCollide = false
Part208.FormFactor = Enum.FormFactor.Custom
Part208.Size = Vector3.new(11.8000002, 4.19999981, 4.60000038)
Part208.CFrame = CFrame.new(-10.8099661, 8.10049725, 33.9599152, -1, 7.14305224e-06, -2.03425952e-05, 7.16210434e-06, 1, 1.88869399e-06, 2.07310459e-05, 2.16157287e-06, -1)
Part208.BackSurface = Enum.SurfaceType.Weld
Part208.BottomSurface = Enum.SurfaceType.Weld
Part208.FrontSurface = Enum.SurfaceType.Weld
Part208.LeftSurface = Enum.SurfaceType.Weld
Part208.RightSurface = Enum.SurfaceType.Weld
Part208.TopSurface = Enum.SurfaceType.Weld
Part208.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part208.Position = Vector3.new(-10.8099661, 8.10049725, 33.9599152)
Part208.Orientation = Vector3.new(0, -180, 0)
Part208.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh209.Parent = Part208
Part210.Name = "Emblem"
Part210.Parent = Model0
Part210.Material = Enum.Material.Metal
Part210.BrickColor = BrickColor.new("Grime")
Part210.Rotation = Vector3.new(-180, 0, -180)
Part210.CanCollide = false
Part210.FormFactor = Enum.FormFactor.Custom
Part210.Size = Vector3.new(3.60000014, 3.39999962, 0.200000003)
Part210.CFrame = CFrame.new(-20.5099678, 5.70037603, 46.760025, -1, 6.35870629e-06, -2.10810867e-06, 6.65713014e-06, 1, 1.4320929e-05, 8.12503458e-06, 1.85558729e-05, -1)
Part210.BackSurface = Enum.SurfaceType.Weld
Part210.BottomSurface = Enum.SurfaceType.Weld
Part210.FrontSurface = Enum.SurfaceType.Weld
Part210.LeftSurface = Enum.SurfaceType.Weld
Part210.RightSurface = Enum.SurfaceType.Weld
Part210.TopSurface = Enum.SurfaceType.Weld
Part210.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part210.Position = Vector3.new(-20.5099678, 5.70037603, 46.760025)
Part210.Orientation = Vector3.new(0, -180, 0)
Part210.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh211.Parent = Part210
BlockMesh211.Offset = Vector3.new(0, 0, 0.200000003)
Part212.Parent = Model0
Part212.Material = Enum.Material.Metal
Part212.BrickColor = BrickColor.new("Grime")
Part212.Rotation = Vector3.new(180, 0, -180)
Part212.CanCollide = false
Part212.FormFactor = Enum.FormFactor.Custom
Part212.Size = Vector3.new(3, 3, 5.19999981)
Part212.CFrame = CFrame.new(3.79019642, 8.70022011, 44.0599136, -1, 6.32772435e-06, -3.98295379e-06, 6.47945944e-06, 1, -8.76483864e-06, 7.04126296e-06, -6.61228023e-06, -1)
Part212.BackSurface = Enum.SurfaceType.Weld
Part212.BottomSurface = Enum.SurfaceType.Weld
Part212.FrontSurface = Enum.SurfaceType.Weld
Part212.LeftSurface = Enum.SurfaceType.Weld
Part212.RightSurface = Enum.SurfaceType.Weld
Part212.TopSurface = Enum.SurfaceType.Weld
Part212.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part212.Position = Vector3.new(3.79019642, 8.70022011, 44.0599136)
Part212.Orientation = Vector3.new(0, -180, 0)
Part212.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh213.Parent = Part212
Part214.Parent = Model0
Part214.Material = Enum.Material.Metal
Part214.BrickColor = BrickColor.new("Grime")
Part214.Rotation = Vector3.new(-180, 0, -180)
Part214.CanCollide = false
Part214.FormFactor = Enum.FormFactor.Custom
Part214.Size = Vector3.new(10.1999998, 0.999999881, 2.79999995)
Part214.CFrame = CFrame.new(0.190334558, 10.7001324, 43.6596947, -1, 8.83405392e-06, -5.33534985e-05, 9.60729267e-06, 0.99999088, 3.31501396e-05, 6.89792505e-05, 4.41338598e-05, -1.00000012)
Part214.BackSurface = Enum.SurfaceType.Weld
Part214.BottomSurface = Enum.SurfaceType.Weld
Part214.FrontSurface = Enum.SurfaceType.Weld
Part214.LeftSurface = Enum.SurfaceType.Weld
Part214.RightSurface = Enum.SurfaceType.Weld
Part214.TopSurface = Enum.SurfaceType.Weld
Part214.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part214.Position = Vector3.new(0.190334558, 10.7001324, 43.6596947)
Part214.Orientation = Vector3.new(0, -180, 0)
Part214.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh215.Parent = Part214
Part216.Parent = Model0
Part216.Material = Enum.Material.Metal
Part216.BrickColor = BrickColor.new("Grime")
Part216.Rotation = Vector3.new(180, 0, -180)
Part216.CanCollide = false
Part216.FormFactor = Enum.FormFactor.Custom
Part216.Size = Vector3.new(11.8000002, 0.399999976, 0.200000003)
Part216.CFrame = CFrame.new(-10.8095398, 6.20018864, 31.1600113, -1, 6.19986486e-06, -4.70125087e-07, 6.56853854e-06, 0.99999088, -1.11185163e-05, 7.90813283e-06, -5.89815954e-06, -1.00000012)
Part216.BackSurface = Enum.SurfaceType.Weld
Part216.BottomSurface = Enum.SurfaceType.Weld
Part216.FrontSurface = Enum.SurfaceType.Weld
Part216.LeftSurface = Enum.SurfaceType.Weld
Part216.RightSurface = Enum.SurfaceType.Weld
Part216.TopSurface = Enum.SurfaceType.Weld
Part216.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part216.Position = Vector3.new(-10.8095398, 6.20018864, 31.1600113)
Part216.Orientation = Vector3.new(0, -180, 0)
Part216.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh217.Parent = Part216
Part218.Parent = Model0
Part218.Material = Enum.Material.Metal
Part218.BrickColor = BrickColor.new("Grime")
Part218.Rotation = Vector3.new(-180, 0, -180)
Part218.CanCollide = false
Part218.FormFactor = Enum.FormFactor.Custom
Part218.Size = Vector3.new(11.8000002, 4.19999981, 4.60000038)
Part218.CFrame = CFrame.new(-10.8097363, 8.10028648, 43.7601395, -1, 7.16859677e-06, -2.04153348e-05, 7.45285433e-06, 1, 2.7828346e-06, 2.61436471e-05, 6.81482152e-06, -1)
Part218.BackSurface = Enum.SurfaceType.Weld
Part218.BottomSurface = Enum.SurfaceType.Weld
Part218.FrontSurface = Enum.SurfaceType.Weld
Part218.LeftSurface = Enum.SurfaceType.Weld
Part218.RightSurface = Enum.SurfaceType.Weld
Part218.TopSurface = Enum.SurfaceType.Weld
Part218.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part218.Position = Vector3.new(-10.8097363, 8.10028648, 43.7601395)
Part218.Orientation = Vector3.new(0, -180, 0)
Part218.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh219.Parent = Part218
Part220.Parent = Model0
Part220.Material = Enum.Material.Metal
Part220.BrickColor = BrickColor.new("Grime")
Part220.Rotation = Vector3.new(-180, 0, -180)
Part220.CanCollide = false
Part220.FormFactor = Enum.FormFactor.Custom
Part220.Size = Vector3.new(3, 3, 5.19999981)
Part220.CFrame = CFrame.new(3.79002571, 8.70051765, 33.6592712, -1, 8.50772994e-06, -4.85191158e-05, 8.51756067e-06, 1, 1.09945977e-05, 4.87300749e-05, 1.11423969e-05, -1)
Part220.BackSurface = Enum.SurfaceType.Weld
Part220.BottomSurface = Enum.SurfaceType.Weld
Part220.FrontSurface = Enum.SurfaceType.Weld
Part220.LeftSurface = Enum.SurfaceType.Weld
Part220.RightSurface = Enum.SurfaceType.Weld
Part220.TopSurface = Enum.SurfaceType.Weld
Part220.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part220.Position = Vector3.new(3.79002571, 8.70051765, 33.6592712)
Part220.Orientation = Vector3.new(0, -180, 0)
Part220.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh221.Parent = Part220
Part222.Parent = Model0
Part222.Material = Enum.Material.Metal
Part222.BrickColor = BrickColor.new("Grime")
Part222.Rotation = Vector3.new(180, 0, -180)
Part222.CanCollide = false
Part222.FormFactor = Enum.FormFactor.Custom
Part222.Size = Vector3.new(22, 0.799999714, 0.600000441)
Part222.CFrame = CFrame.new(-5.70979691, 8.60026169, 36.5600357, -1, 6.81412985e-06, -1.27640888e-05, 7.56088548e-06, 0.999981761, -9.83839709e-06, 2.78288353e-05, 7.34849891e-07, -1.00000024)
Part222.BackSurface = Enum.SurfaceType.Weld
Part222.BottomSurface = Enum.SurfaceType.Weld
Part222.FrontSurface = Enum.SurfaceType.Weld
Part222.LeftSurface = Enum.SurfaceType.Weld
Part222.RightSurface = Enum.SurfaceType.Weld
Part222.TopSurface = Enum.SurfaceType.Weld
Part222.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part222.Position = Vector3.new(-5.70979691, 8.60026169, 36.5600357)
Part222.Orientation = Vector3.new(0, -180, 0)
Part222.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh223.Parent = Part222
Part224.Parent = Model0
Part224.Material = Enum.Material.Metal
Part224.BrickColor = BrickColor.new("Grime")
Part224.Rotation = Vector3.new(180, 0, -180)
Part224.CanCollide = false
Part224.FormFactor = Enum.FormFactor.Custom
Part224.Size = Vector3.new(11.8000002, 1.39999998, 0.400000006)
Part224.CFrame = CFrame.new(-10.8097229, 6.70026398, 46.2599983, -1, 6.7584383e-06, -1.16997562e-05, 7.04279182e-06, 1, -3.34411698e-06, 1.74280249e-05, 6.87942702e-07, -1)
Part224.BackSurface = Enum.SurfaceType.Weld
Part224.BottomSurface = Enum.SurfaceType.Weld
Part224.FrontSurface = Enum.SurfaceType.Weld
Part224.LeftSurface = Enum.SurfaceType.Weld
Part224.RightSurface = Enum.SurfaceType.Weld
Part224.TopSurface = Enum.SurfaceType.Weld
Part224.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part224.Position = Vector3.new(-10.8097229, 6.70026398, 46.2599983)
Part224.Orientation = Vector3.new(0, -180, 0)
Part224.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh225.Parent = Part224
Part226.Parent = Model0
Part226.Material = Enum.Material.Metal
Part226.BrickColor = BrickColor.new("Grime")
Part226.Rotation = Vector3.new(-180, 0, -180)
Part226.CanCollide = false
Part226.FormFactor = Enum.FormFactor.Custom
Part226.Size = Vector3.new(7.19999981, 5, 5.19999981)
Part226.CFrame = CFrame.new(-1.30967951, 7.70056057, 33.659565, -1, 7.81613926e-06, -3.46217457e-05, 8.18463377e-06, 0.99999088, 4.60983938e-06, 4.20598662e-05, 9.83004793e-06, -1.00000012)
Part226.BackSurface = Enum.SurfaceType.Weld
Part226.BottomSurface = Enum.SurfaceType.Weld
Part226.FrontSurface = Enum.SurfaceType.Weld
Part226.LeftSurface = Enum.SurfaceType.Weld
Part226.RightSurface = Enum.SurfaceType.Weld
Part226.TopSurface = Enum.SurfaceType.Weld
Part226.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part226.Position = Vector3.new(-1.30967951, 7.70056057, 33.659565)
Part226.Orientation = Vector3.new(0, -180, 0)
Part226.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh227.Parent = Part226
Part228.Parent = Model0
Part228.Material = Enum.Material.Metal
Part228.BrickColor = BrickColor.new("Grime")
Part228.Rotation = Vector3.new(-180, 0, -180)
Part228.CanCollide = false
Part228.FormFactor = Enum.FormFactor.Custom
Part228.Size = Vector3.new(11.8000002, 1.39999998, 0.400000006)
Part228.CFrame = CFrame.new(-10.8100386, 6.70071936, 31.4599133, -1, 7.03509431e-06, -1.81622581e-05, 7.05417779e-06, 1, 3.9548047e-07, 1.85506979e-05, 6.6837697e-07, -1)
Part228.BackSurface = Enum.SurfaceType.Weld
Part228.BottomSurface = Enum.SurfaceType.Weld
Part228.FrontSurface = Enum.SurfaceType.Weld
Part228.LeftSurface = Enum.SurfaceType.Weld
Part228.RightSurface = Enum.SurfaceType.Weld
Part228.TopSurface = Enum.SurfaceType.Weld
Part228.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part228.Position = Vector3.new(-10.8100386, 6.70071936, 31.4599133)
Part228.Orientation = Vector3.new(0, -180, 0)
Part228.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh229.Parent = Part228
Part230.Parent = Model0
Part230.Material = Enum.Material.Metal
Part230.BrickColor = BrickColor.new("Grime")
Part230.Rotation = Vector3.new(-180, 0, -180)
Part230.CanCollide = false
Part230.FormFactor = Enum.FormFactor.Custom
Part230.Size = Vector3.new(7.19999981, 5, 5.19999981)
Part230.CFrame = CFrame.new(-1.30968046, 7.70014811, 44.0596848, -1, 9.28767258e-06, -6.2477724e-05, 9.65974232e-06, 0.99999088, 3.24114408e-05, 7.00270903e-05, 3.77095821e-05, -1.00000012)
Part230.BackSurface = Enum.SurfaceType.Weld
Part230.BottomSurface = Enum.SurfaceType.Weld
Part230.FrontSurface = Enum.SurfaceType.Weld
Part230.LeftSurface = Enum.SurfaceType.Weld
Part230.RightSurface = Enum.SurfaceType.Weld
Part230.TopSurface = Enum.SurfaceType.Weld
Part230.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part230.Position = Vector3.new(-1.30968046, 7.70014811, 44.0596848)
Part230.Orientation = Vector3.new(0, -180, 0)
Part230.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh231.Parent = Part230
Part232.Parent = Model0
Part232.Material = Enum.Material.Metal
Part232.BrickColor = BrickColor.new("Grime")
Part232.Rotation = Vector3.new(-180, -0.00999999978, -180)
Part232.CanCollide = false
Part232.FormFactor = Enum.FormFactor.Custom
Part232.Size = Vector3.new(4, 3.60000014, 0.400000006)
Part232.CFrame = CFrame.new(-23.5095253, 6.40087748, 41.6604347, -1, 1.09171879e-05, -9.79027827e-05, 1.12118551e-05, 1, 2.75443344e-05, 0.000103897743, 3.17625672e-05, -1)
Part232.BackSurface = Enum.SurfaceType.Weld
Part232.BottomSurface = Enum.SurfaceType.Weld
Part232.FrontSurface = Enum.SurfaceType.Weld
Part232.LeftSurface = Enum.SurfaceType.Weld
Part232.RightSurface = Enum.SurfaceType.Weld
Part232.TopSurface = Enum.SurfaceType.Weld
Part232.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part232.Position = Vector3.new(-23.5095253, 6.40087748, 41.6604347)
Part232.Orientation = Vector3.new(0, -179.98999, 0)
Part232.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh233.Parent = Part232
Part234.Parent = Model0
Part234.Material = Enum.Material.Metal
Part234.BrickColor = BrickColor.new("Grime")
Part234.Rotation = Vector3.new(180, 0, -180)
Part234.CanCollide = false
Part234.FormFactor = Enum.FormFactor.Custom
Part234.Size = Vector3.new(0.200000003, 4.19999981, 4.4000001)
Part234.CFrame = CFrame.new(-16.8097973, 8.10076141, 33.6598473, -1, 8.92862408e-06, -5.77830069e-05, 8.94776349e-06, 1, -8.51531922e-07, 5.81714412e-05, -5.790248e-07, -1)
Part234.BackSurface = Enum.SurfaceType.Weld
Part234.BottomSurface = Enum.SurfaceType.Weld
Part234.FrontSurface = Enum.SurfaceType.Weld
Part234.LeftSurface = Enum.SurfaceType.Weld
Part234.RightSurface = Enum.SurfaceType.Weld
Part234.TopSurface = Enum.SurfaceType.Weld
Part234.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part234.Position = Vector3.new(-16.8097973, 8.10076141, 33.6598473)
Part234.Orientation = Vector3.new(0, -180, 0)
Part234.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh235.Parent = Part234
Part236.Parent = Model0
Part236.Material = Enum.Material.Ice
Part236.BrickColor = BrickColor.new("Dark stone grey")
Part236.Transparency = 0.5
Part236.Rotation = Vector3.new(172.399994, 0, -180)
Part236.CanCollide = false
Part236.FormFactor = Enum.FormFactor.Custom
Part236.Size = Vector3.new(3, 2.5999999, 0.200000003)
Part236.CFrame = CFrame.new(-24.2096062, 8.73111153, 46.5839996, -1, 1.03770833e-06, -6.15868048e-05, 1.03748134e-05, 0.991209269, -0.132304236, 8.50215365e-05, -0.132287398, -0.991211414)
Part236.BackSurface = Enum.SurfaceType.Weld
Part236.BottomSurface = Enum.SurfaceType.Weld
Part236.FrontSurface = Enum.SurfaceType.Weld
Part236.LeftSurface = Enum.SurfaceType.Weld
Part236.RightSurface = Enum.SurfaceType.Weld
Part236.TopSurface = Enum.SurfaceType.Weld
Part236.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part236.Position = Vector3.new(-24.2096062, 8.73111153, 46.5839996)
Part236.Orientation = Vector3.new(7.5999999, -180, 0)
Part236.Color = Color3.new(0.388235, 0.372549, 0.384314)
BlockMesh237.Parent = Part236
BlockMesh237.Offset = Vector3.new(0, 0, 0.200000003)
BlockMesh237.Scale = Vector3.new(1, 1.14999998, 0.5)
BlockMesh237.Scale = Vector3.new(1, 1.14999998, 0.5)
Part238.Parent = Model0
Part238.Material = Enum.Material.Metal
Part238.BrickColor = BrickColor.new("Grime")
Part238.Rotation = Vector3.new(180, 0, -180)
Part238.CanCollide = false
Part238.FormFactor = Enum.FormFactor.Custom
Part238.Size = Vector3.new(22, 0.799999714, 0.600000441)
Part238.CFrame = CFrame.new(-5.70983505, 8.60029507, 41.1600647, -1, 6.14293958e-06, -2.86971044e-07, 6.52252311e-06, 0.99999088, -2.05128945e-05, 7.94687185e-06, -1.51366112e-05, -1.00000012)
Part238.BackSurface = Enum.SurfaceType.Weld
Part238.BottomSurface = Enum.SurfaceType.Weld
Part238.FrontSurface = Enum.SurfaceType.Weld
Part238.LeftSurface = Enum.SurfaceType.Weld
Part238.RightSurface = Enum.SurfaceType.Weld
Part238.TopSurface = Enum.SurfaceType.Weld
Part238.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part238.Position = Vector3.new(-5.70983505, 8.60029507, 41.1600647)
Part238.Orientation = Vector3.new(0, -180, 0)
Part238.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh239.Parent = Part238
Part240.Parent = Model0
Part240.Material = Enum.Material.Metal
Part240.BrickColor = BrickColor.new("Grime")
Part240.Rotation = Vector3.new(-180, 0, -180)
Part240.CanCollide = false
Part240.FormFactor = Enum.FormFactor.Custom
Part240.Size = Vector3.new(1.59999919, 0.799999952, 5.19999981)
Part240.CFrame = CFrame.new(3.09039879, 6.80017376, 33.6598129, -1, 7.68635618e-06, -3.03721881e-05, 7.69642338e-06, 1, 9.77274976e-06, 3.05831309e-05, 9.92072819e-06, -1)
Part240.BackSurface = Enum.SurfaceType.Weld
Part240.BottomSurface = Enum.SurfaceType.Weld
Part240.FrontSurface = Enum.SurfaceType.Weld
Part240.LeftSurface = Enum.SurfaceType.Weld
Part240.RightSurface = Enum.SurfaceType.Weld
Part240.TopSurface = Enum.SurfaceType.Weld
Part240.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part240.Position = Vector3.new(3.09039879, 6.80017376, 33.6598129)
Part240.Orientation = Vector3.new(0, -180, 0)
Part240.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh241.Parent = Part240
Part242.Parent = Model0
Part242.Material = Enum.Material.Ice
Part242.BrickColor = BrickColor.new("Dark stone grey")
Part242.Transparency = 0.5
Part242.Rotation = Vector3.new(172.399994, -0.00999999978, 180)
Part242.CanCollide = false
Part242.FormFactor = Enum.FormFactor.Custom
Part242.Size = Vector3.new(6, 2, 0.200000003)
Part242.CFrame = CFrame.new(-19.709465, 8.82992744, 46.5701866, -1, -7.48528237e-06, -0.000163338729, 1.53728633e-05, 0.991222322, -0.132206306, 0.000187008089, -0.132189468, -0.991224468)
Part242.BackSurface = Enum.SurfaceType.Weld
Part242.BottomSurface = Enum.SurfaceType.Weld
Part242.FrontSurface = Enum.SurfaceType.Weld
Part242.LeftSurface = Enum.SurfaceType.Weld
Part242.RightSurface = Enum.SurfaceType.Weld
Part242.TopSurface = Enum.SurfaceType.Weld
Part242.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part242.Position = Vector3.new(-19.709465, 8.82992744, 46.5701866)
Part242.Orientation = Vector3.new(7.5999999, -179.98999, 0)
Part242.Color = Color3.new(0.388235, 0.372549, 0.384314)
BlockMesh243.Parent = Part242
BlockMesh243.Offset = Vector3.new(0, 0, 0.200000003)
BlockMesh243.Scale = Vector3.new(1, 1.14999998, 0.5)
BlockMesh243.Scale = Vector3.new(1, 1.14999998, 0.5)
Part244.Parent = Model0
Part244.Material = Enum.Material.Metal
Part244.BrickColor = BrickColor.new("Grime")
Part244.Rotation = Vector3.new(-180, 0, -180)
Part244.CanCollide = false
Part244.FormFactor = Enum.FormFactor.Custom
Part244.Size = Vector3.new(22, 0.200000003, 5.20000029)
Part244.CFrame = CFrame.new(-5.70976353, 8.10029221, 38.8601913, -1, 7.18417186e-06, -2.02370084e-05, 7.56368945e-06, 0.99999088, 2.50288394e-06, 2.78970601e-05, 7.87922181e-06, -1.00000012)
Part244.BackSurface = Enum.SurfaceType.Weld
Part244.BottomSurface = Enum.SurfaceType.Weld
Part244.FrontSurface = Enum.SurfaceType.Weld
Part244.LeftSurface = Enum.SurfaceType.Weld
Part244.RightSurface = Enum.SurfaceType.Weld
Part244.TopSurface = Enum.SurfaceType.Weld
Part244.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part244.Position = Vector3.new(-5.70976353, 8.10029221, 38.8601913)
Part244.Orientation = Vector3.new(0, -180, 0)
Part244.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh245.Parent = Part244
Part246.Parent = Model0
Part246.Material = Enum.Material.Metal
Part246.BrickColor = BrickColor.new("Grime")
Part246.Rotation = Vector3.new(180, 0, -180)
Part246.CanCollide = false
Part246.FormFactor = Enum.FormFactor.Custom
Part246.Size = Vector3.new(0.799999237, 4.20000029, 0.400000006)
Part246.CFrame = CFrame.new(-17.109623, 8.10075474, 36.0598869, -1, 8.79787513e-06, -5.50586119e-05, 8.82257518e-06, 1, -2.83478767e-06, 5.55580045e-05, -2.48424249e-06, -1)
Part246.BackSurface = Enum.SurfaceType.Weld
Part246.BottomSurface = Enum.SurfaceType.Weld
Part246.FrontSurface = Enum.SurfaceType.Weld
Part246.LeftSurface = Enum.SurfaceType.Weld
Part246.RightSurface = Enum.SurfaceType.Weld
Part246.TopSurface = Enum.SurfaceType.Weld
Part246.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part246.Position = Vector3.new(-17.109623, 8.10075474, 36.0598869)
Part246.Orientation = Vector3.new(0, -180, 0)
Part246.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh247.Parent = Part246
Part248.Name = "wheel"
Part248.Parent = Model0
Part248.Material = Enum.Material.Metal
Part248.BrickColor = BrickColor.new("Grime")
Part248.Transparency = 1
Part248.Rotation = Vector3.new(90, 90, 0)
Part248.FormFactor = Enum.FormFactor.Symmetric
Part248.Friction = 1
Part248.Shape = Enum.PartType.Ball
Part248.Size = Vector3.new(5, 5, 5)
Part248.CFrame = CFrame.new(-22.5099754, 2.99934292, 28.5597458, 1.68583483e-05, 9.94351055e-08, 1, 1, 4.67716745e-08, -1.68586612e-05, -3.92897164e-08, 1, -1.10534181e-07)
Part248.BottomSurface = Enum.SurfaceType.Smooth
Part248.TopSurface = Enum.SurfaceType.Hinge
Part248.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part248.Position = Vector3.new(-22.5099754, 2.99934292, 28.5597458)
Part248.Orientation = Vector3.new(0, 90, 90)
Part248.Color = Color3.new(0.498039, 0.556863, 0.392157)
CylinderMesh249.Parent = Part248
CylinderMesh249.Offset = Vector3.new(0, -1.10000002, 0)
CylinderMesh249.Scale = Vector3.new(1, 0.600000024, 1)
CylinderMesh249.Scale = Vector3.new(1, 0.600000024, 1)
Part250.Parent = Model0
Part250.Material = Enum.Material.Metal
Part250.BrickColor = BrickColor.new("Grime")
Part250.Rotation = Vector3.new(180, 0, -180)
Part250.FormFactor = Enum.FormFactor.Custom
Part250.Size = Vector3.new(22.7999992, 3.99999976, 5.20000029)
Part250.CFrame = CFrame.new(-6.10987282, 6.00021553, 38.8599777, -1, 6.44594638e-06, -5.42557655e-06, 6.45635237e-06, 1, -7.76254092e-06, 5.63639105e-06, -7.6143624e-06, -1)
Part250.BottomSurface = Enum.SurfaceType.Weld
Part250.LeftSurface = Enum.SurfaceType.Weld
Part250.RightSurface = Enum.SurfaceType.Weld
Part250.TopSurface = Enum.SurfaceType.Weld
Part250.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part250.Position = Vector3.new(-6.10987282, 6.00021553, 38.8599777)
Part250.Orientation = Vector3.new(0, -180, 0)
Part250.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh251.Parent = Part250
Part252.Parent = Model0
Part252.Material = Enum.Material.Metal
Part252.BrickColor = BrickColor.new("Grime")
Part252.Rotation = Vector3.new(-180, 0, -180)
Part252.FormFactor = Enum.FormFactor.Custom
Part252.Size = Vector3.new(9.00000095, 0.800000072, 5.20000029)
Part252.CFrame = CFrame.new(-22.0095825, 4.40028095, 38.8602219, -1, 7.54429402e-06, -2.79332871e-05, 7.55442079e-06, 1, 8.47021511e-06, 2.81442171e-05, 8.61821627e-06, -1)
Part252.BackSurface = Enum.SurfaceType.Weld
Part252.BottomSurface = Enum.SurfaceType.Weld
Part252.FrontSurface = Enum.SurfaceType.Weld
Part252.LeftSurface = Enum.SurfaceType.Weld
Part252.RightSurface = Enum.SurfaceType.Weld
Part252.TopSurface = Enum.SurfaceType.Weld
Part252.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part252.Position = Vector3.new(-22.0095825, 4.40028095, 38.8602219)
Part252.Orientation = Vector3.new(0, -180, 0)
Part252.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh253.Parent = Part252
Part254.Parent = Model0
Part254.Material = Enum.Material.Metal
Part254.BrickColor = BrickColor.new("Grime")
Part254.Rotation = Vector3.new(-180, 0, -180)
Part254.CanCollide = false
Part254.FormFactor = Enum.FormFactor.Custom
Part254.Size = Vector3.new(8, 2.79999995, 0.400000006)
Part254.CFrame = CFrame.new(-21.5101471, 6.00087833, 31.2600803, -1, 6.5851641e-06, -8.26637188e-06, 6.74582452e-06, 0.999991715, 1.20076311e-05, 1.15773773e-05, 1.42274675e-05, -1.00000143)
Part254.BottomSurface = Enum.SurfaceType.Weld
Part254.FrontSurface = Enum.SurfaceType.Weld
Part254.LeftSurface = Enum.SurfaceType.Weld
Part254.RightSurface = Enum.SurfaceType.Weld
Part254.TopSurface = Enum.SurfaceType.Weld
Part254.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part254.Position = Vector3.new(-21.5101471, 6.00087833, 31.2600803)
Part254.Orientation = Vector3.new(0, -180, 0)
Part254.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh255.Parent = Part254
Part256.Parent = Model0
Part256.Material = Enum.Material.Metal
Part256.BrickColor = BrickColor.new("Grime")
Part256.Rotation = Vector3.new(180, 0, -180)
Part256.FormFactor = Enum.FormFactor.Custom
Part256.Size = Vector3.new(8, 1.20000005, 5.19999981)
Part256.CFrame = CFrame.new(-21.5099373, 3.40028739, 33.6600609, -1, 6.41632732e-06, -4.81871075e-06, 6.4790911e-06, 1, -8.07724973e-06, 6.09494327e-06, -7.18019601e-06, -1)
Part256.BottomSurface = Enum.SurfaceType.Weld
Part256.LeftSurface = Enum.SurfaceType.Weld
Part256.RightSurface = Enum.SurfaceType.Weld
Part256.TopSurface = Enum.SurfaceType.Weld
Part256.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part256.Position = Vector3.new(-21.5099373, 3.40028739, 33.6600609)
Part256.Orientation = Vector3.new(0, -180, 0)
Part256.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh257.Parent = Part256
Part258.Parent = Model0
Part258.Material = Enum.Material.Metal
Part258.BrickColor = BrickColor.new("Grime")
Part258.Rotation = Vector3.new(180, 0, -180)
Part258.CanCollide = false
Part258.FormFactor = Enum.FormFactor.Custom
Part258.Size = Vector3.new(8, 2.79999995, 0.400000006)
Part258.CFrame = CFrame.new(-21.509985, 6.00044394, 46.4600868, -1, 8.28853172e-06, -4.09939275e-05, 8.58829844e-06, 1, -3.20226973e-05, 4.70105078e-05, -2.77881045e-05, -1)
Part258.BackSurface = Enum.SurfaceType.Weld
Part258.BottomSurface = Enum.SurfaceType.Weld
Part258.LeftSurface = Enum.SurfaceType.Weld
Part258.RightSurface = Enum.SurfaceType.Weld
Part258.TopSurface = Enum.SurfaceType.Weld
Part258.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part258.Position = Vector3.new(-21.509985, 6.00044394, 46.4600868)
Part258.Orientation = Vector3.new(0, -180, 0)
Part258.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh259.Parent = Part258
Part260.Parent = Model0
Part260.Material = Enum.Material.Metal
Part260.BrickColor = BrickColor.new("Grime")
Part260.Rotation = Vector3.new(-180, 0, -180)
Part260.FormFactor = Enum.FormFactor.Custom
Part260.Size = Vector3.new(8, 0.600000083, 5.19999981)
Part260.CFrame = CFrame.new(-21.509903, 4.3003602, 44.0600548, -1, 5.38951872e-06, 1.67202743e-05, 5.68799487e-06, 1, 1.31562274e-06, -1.07034357e-05, 5.55068073e-06, -1)
Part260.BackSurface = Enum.SurfaceType.Weld
Part260.BottomSurface = Enum.SurfaceType.Weld
Part260.LeftSurface = Enum.SurfaceType.Weld
Part260.RightSurface = Enum.SurfaceType.Weld
Part260.TopSurface = Enum.SurfaceType.Weld
Part260.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part260.Position = Vector3.new(-21.509903, 4.3003602, 44.0600548)
Part260.Orientation = Vector3.new(0, 180, 0)
Part260.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh261.Parent = Part260
Part262.Parent = Model0
Part262.Material = Enum.Material.Metal
Part262.BrickColor = BrickColor.new("Grime")
Part262.Rotation = Vector3.new(172.399994, 0, -180)
Part262.CanCollide = false
Part262.FormFactor = Enum.FormFactor.Custom
Part262.Size = Vector3.new(6, 0.400000036, 0.200000003)
Part262.CFrame = CFrame.new(-19.7101326, 7.64007092, 46.7289124, -1, 7.62399668e-06, 1.59960618e-05, 6.63972241e-06, 0.991217554, -0.132242054, 7.24958954e-06, -0.132225215, -0.991219759)
Part262.BackSurface = Enum.SurfaceType.Weld
Part262.BottomSurface = Enum.SurfaceType.Weld
Part262.FrontSurface = Enum.SurfaceType.Weld
Part262.LeftSurface = Enum.SurfaceType.Weld
Part262.RightSurface = Enum.SurfaceType.Weld
Part262.TopSurface = Enum.SurfaceType.Weld
Part262.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part262.Position = Vector3.new(-19.7101326, 7.64007092, 46.7289124)
Part262.Orientation = Vector3.new(7.5999999, 180, 0)
Part262.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh263.Parent = Part262
BlockMesh263.Offset = Vector3.new(0, 0, 0.200000003)
BlockMesh263.Scale = Vector3.new(1, 1.14999998, 1)
BlockMesh263.Scale = Vector3.new(1, 1.14999998, 1)
Part264.Parent = Model0
Part264.Material = Enum.Material.Metal
Part264.BrickColor = BrickColor.new("Grime")
Part264.Rotation = Vector3.new(-180, 0, -180)
Part264.CanCollide = false
Part264.FormFactor = Enum.FormFactor.Custom
Part264.Size = Vector3.new(4.79999924, 4.20000029, 0.400000006)
Part264.CFrame = CFrame.new(-19.1095543, 8.10087967, 41.6602554, -1, 1.00066009e-05, -7.96175955e-05, 1.02973845e-05, 1, 1.46885304e-05, 8.55014368e-05, 1.88290433e-05, -1)
Part264.BackSurface = Enum.SurfaceType.Weld
Part264.BottomSurface = Enum.SurfaceType.Weld
Part264.FrontSurface = Enum.SurfaceType.Weld
Part264.LeftSurface = Enum.SurfaceType.Weld
Part264.RightSurface = Enum.SurfaceType.Weld
Part264.TopSurface = Enum.SurfaceType.Weld
Part264.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part264.Position = Vector3.new(-19.1095543, 8.10087967, 41.6602554)
Part264.Orientation = Vector3.new(0, -180, 0)
Part264.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh265.Parent = Part264
Part266.Parent = Model0
Part266.Material = Enum.Material.Metal
Part266.BrickColor = BrickColor.new("Grime")
Part266.Rotation = Vector3.new(-180, 0, -180)
Part266.CanCollide = false
Part266.FormFactor = Enum.FormFactor.Custom
Part266.Size = Vector3.new(3.99999928, 5.60000038, 0.400000006)
Part266.CFrame = CFrame.new(-19.5095768, 7.40064335, 36.0599785, -1, 9.13069925e-06, -6.21806248e-05, 9.83368318e-06, 0.99999088, 2.60451998e-06, 7.64155848e-05, 1.2662108e-05, -1.00000012)
Part266.BackSurface = Enum.SurfaceType.Weld
Part266.BottomSurface = Enum.SurfaceType.Weld
Part266.FrontSurface = Enum.SurfaceType.Weld
Part266.LeftSurface = Enum.SurfaceType.Weld
Part266.RightSurface = Enum.SurfaceType.Weld
Part266.TopSurface = Enum.SurfaceType.Weld
Part266.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part266.Position = Vector3.new(-19.5095768, 7.40064335, 36.0599785)
Part266.Orientation = Vector3.new(0, -180, 0)
Part266.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh267.Parent = Part266
Part268.Parent = Model0
Part268.Material = Enum.Material.Metal
Part268.BrickColor = BrickColor.new("Grime")
Part268.Rotation = Vector3.new(-180, 0, -180)
Part268.CanCollide = false
Part268.FormFactor = Enum.FormFactor.Custom
Part268.Size = Vector3.new(3.99999928, 1.40000033, 0.400000006)
Part268.CFrame = CFrame.new(-19.5098534, 5.30032063, 41.6600571, -1, 7.29569683e-06, -2.24659452e-05, 7.88762736e-06, 1, 4.21738878e-06, 3.43997672e-05, 1.26169134e-05, -1)
Part268.BackSurface = Enum.SurfaceType.Weld
Part268.BottomSurface = Enum.SurfaceType.Weld
Part268.FrontSurface = Enum.SurfaceType.Weld
Part268.LeftSurface = Enum.SurfaceType.Weld
Part268.RightSurface = Enum.SurfaceType.Weld
Part268.TopSurface = Enum.SurfaceType.Weld
Part268.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part268.Position = Vector3.new(-19.5098534, 5.30032063, 41.6600571)
Part268.Orientation = Vector3.new(0, -180, 0)
Part268.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh269.Parent = Part268
Part270.Parent = Model0
Part270.Material = Enum.Material.Metal
Part270.BrickColor = BrickColor.new("Grime")
Part270.Rotation = Vector3.new(-180, 0, -180)
Part270.FormFactor = Enum.FormFactor.Custom
Part270.Size = Vector3.new(8, 0.600000083, 5.19999981)
Part270.CFrame = CFrame.new(-21.5100098, 4.30057859, 33.6601372, -1, 6.76650234e-06, -2.10475282e-05, 6.92721051e-06, 0.999991715, 2.39840938e-06, 2.43584891e-05, 4.61806076e-06, -1.00000143)
Part270.BottomSurface = Enum.SurfaceType.Weld
Part270.FrontSurface = Enum.SurfaceType.Weld
Part270.LeftSurface = Enum.SurfaceType.Weld
Part270.RightSurface = Enum.SurfaceType.Weld
Part270.TopSurface = Enum.SurfaceType.Weld
Part270.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part270.Position = Vector3.new(-21.5100098, 4.30057859, 33.6601372)
Part270.Orientation = Vector3.new(0, -180, 0)
Part270.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh271.Parent = Part270
Part272.Parent = Model0
Part272.Material = Enum.Material.Metal
Part272.BrickColor = BrickColor.new("Grime")
Part272.Rotation = Vector3.new(180, 0, -180)
Part272.FormFactor = Enum.FormFactor.Custom
Part272.Size = Vector3.new(9.40000057, 3.19999981, 5.20000029)
Part272.CFrame = CFrame.new(-22.2094765, 6.40075827, 38.8604355, -1, 7.93084837e-06, -3.66540953e-05, 8.22882612e-06, 1, -1.67581202e-05, 4.26486076e-05, -1.25390716e-05, -1)
Part272.BackSurface = Enum.SurfaceType.Weld
Part272.BottomSurface = Enum.SurfaceType.Weld
Part272.FrontSurface = Enum.SurfaceType.Weld
Part272.LeftSurface = Enum.SurfaceType.Weld
Part272.RightSurface = Enum.SurfaceType.Weld
Part272.TopSurface = Enum.SurfaceType.Weld
Part272.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part272.Position = Vector3.new(-22.2094765, 6.40075827, 38.8604355)
Part272.Orientation = Vector3.new(0, -180, 0)
Part272.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh273.Parent = Part272
Part274.Parent = Model0
Part274.Material = Enum.Material.Metal
Part274.BrickColor = BrickColor.new("Grime")
Part274.Rotation = Vector3.new(-180, -0.00999999978, -180)
Part274.CanCollide = false
Part274.FormFactor = Enum.FormFactor.Custom
Part274.Size = Vector3.new(0.200000003, 4.19999981, 4.4000001)
Part274.CFrame = CFrame.new(-16.8093033, 8.10082817, 44.0597496, -1, 1.14173636e-05, -0.000108378299, 1.16978508e-05, 1, 3.53243195e-05, 0.00011410701, 3.93551636e-05, -1)
Part274.BackSurface = Enum.SurfaceType.Weld
Part274.BottomSurface = Enum.SurfaceType.Weld
Part274.FrontSurface = Enum.SurfaceType.Weld
Part274.LeftSurface = Enum.SurfaceType.Weld
Part274.RightSurface = Enum.SurfaceType.Weld
Part274.TopSurface = Enum.SurfaceType.Weld
Part274.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part274.Position = Vector3.new(-16.8093033, 8.10082817, 44.0597496)
Part274.Orientation = Vector3.new(0, -179.98999, 0)
Part274.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh275.Parent = Part274
Part276.Parent = Model0
Part276.Material = Enum.Material.Metal
Part276.BrickColor = BrickColor.new("Grime")
Part276.Rotation = Vector3.new(-180, 0, -180)
Part276.CanCollide = false
Part276.FormFactor = Enum.FormFactor.Custom
Part276.Size = Vector3.new(0.799999237, 1.40000033, 0.400000006)
Part276.CFrame = CFrame.new(-17.1096954, 6.70062399, 31.2602272, -1, 7.63167918e-06, -3.04036766e-05, 7.79194579e-06, 0.999991715, 1.59272313e-05, 3.37147576e-05, 1.81469222e-05, -1.00000143)
Part276.BackSurface = Enum.SurfaceType.Weld
Part276.BottomSurface = Enum.SurfaceType.Weld
Part276.FrontSurface = Enum.SurfaceType.Weld
Part276.LeftSurface = Enum.SurfaceType.Weld
Part276.RightSurface = Enum.SurfaceType.Weld
Part276.TopSurface = Enum.SurfaceType.Weld
Part276.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part276.Position = Vector3.new(-17.1096954, 6.70062399, 31.2602272)
Part276.Orientation = Vector3.new(0, -180, 0)
Part276.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh277.Parent = Part276
Part278.Parent = Model0
Part278.Material = Enum.Material.Metal
Part278.BrickColor = BrickColor.new("Grime")
Part278.Rotation = Vector3.new(180, 0, -180)
Part278.CanCollide = false
Part278.FormFactor = Enum.FormFactor.Custom
Part278.Size = Vector3.new(0.799999714, 1.39999998, 0.400000006)
Part278.CFrame = CFrame.new(-17.1098671, 6.70034742, 46.4597092, -1, 9.67943106e-06, -6.97521682e-05, 9.97899224e-06, 1, -1.5873462e-05, 7.57688613e-05, -1.16392221e-05, -1)
Part278.BackSurface = Enum.SurfaceType.Weld
Part278.BottomSurface = Enum.SurfaceType.Weld
Part278.FrontSurface = Enum.SurfaceType.Weld
Part278.LeftSurface = Enum.SurfaceType.Weld
Part278.RightSurface = Enum.SurfaceType.Weld
Part278.TopSurface = Enum.SurfaceType.Weld
Part278.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part278.Position = Vector3.new(-17.1098671, 6.70034742, 46.4597092)
Part278.Orientation = Vector3.new(0, -180, 0)
Part278.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh279.Parent = Part278
Part280.Parent = Model0
Part280.Material = Enum.Material.Metal
Part280.BrickColor = BrickColor.new("Grime")
Part280.Rotation = Vector3.new(180, 0, -180)
Part280.CanCollide = false
Part280.FormFactor = Enum.FormFactor.Custom
Part280.Size = Vector3.new(4, 3.60000014, 0.400000006)
Part280.CFrame = CFrame.new(-23.5096321, 6.40070248, 36.0604095, -1, 7.78029607e-06, -3.33969365e-05, 8.37296375e-06, 1, -1.92508596e-05, 4.53305838e-05, -1.08514441e-05, -1)
Part280.BackSurface = Enum.SurfaceType.Weld
Part280.BottomSurface = Enum.SurfaceType.Weld
Part280.FrontSurface = Enum.SurfaceType.Weld
Part280.LeftSurface = Enum.SurfaceType.Weld
Part280.RightSurface = Enum.SurfaceType.Weld
Part280.TopSurface = Enum.SurfaceType.Weld
Part280.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part280.Position = Vector3.new(-23.5096321, 6.40070248, 36.0604095)
Part280.Orientation = Vector3.new(0, -180, 0)
Part280.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh281.Parent = Part280
Part282.Parent = Model0
Part282.Material = Enum.Material.Metal
Part282.BrickColor = BrickColor.new("Grime")
Part282.Rotation = Vector3.new(-180, 0, -180)
Part282.CanCollide = false
Part282.FormFactor = Enum.FormFactor.Custom
Part282.Size = Vector3.new(1.00000012, 2.20000005, 5.19999981)
Part282.CFrame = CFrame.new(-26.0093632, 6.30065203, 33.6606827, -1, 9.146097e-06, -6.23015076e-05, 9.88777356e-06, 0.999991715, 1.19247252e-05, 7.7335586e-05, 2.23954721e-05, -1.00000143)
Part282.BackSurface = Enum.SurfaceType.Weld
Part282.BottomSurface = Enum.SurfaceType.Weld
Part282.FrontSurface = Enum.SurfaceType.Weld
Part282.LeftSurface = Enum.SurfaceType.Weld
Part282.RightSurface = Enum.SurfaceType.Weld
Part282.TopSurface = Enum.SurfaceType.Weld
Part282.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part282.Position = Vector3.new(-26.0093632, 6.30065203, 33.6606827)
Part282.Orientation = Vector3.new(0, -180, 0)
Part282.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh283.Parent = Part282
Part284.Parent = Model0
Part284.Material = Enum.Material.Metal
Part284.BrickColor = BrickColor.new("Grime")
Part284.Rotation = Vector3.new(-180, 0, -180)
Part284.FormFactor = Enum.FormFactor.Custom
Part284.Size = Vector3.new(0.400000095, 0.800000072, 5.19999981)
Part284.CFrame = CFrame.new(-26.7099648, 4.40034389, 38.8601379, -1, 6.28535236e-06, -2.60919842e-06, 6.58271165e-06, 1, 1.62551987e-06, 8.60384898e-06, 5.84486224e-06, -1)
Part284.BackSurface = Enum.SurfaceType.Weld
Part284.BottomSurface = Enum.SurfaceType.Weld
Part284.FrontSurface = Enum.SurfaceType.Weld
Part284.LeftSurface = Enum.SurfaceType.Weld
Part284.RightSurface = Enum.SurfaceType.Weld
Part284.TopSurface = Enum.SurfaceType.Weld
Part284.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part284.Position = Vector3.new(-26.7099648, 4.40034389, 38.8601379)
Part284.Orientation = Vector3.new(0, -180, 0)
Part284.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh285.Parent = Part284
Part286.Parent = Model0
Part286.Material = Enum.Material.Metal
Part286.BrickColor = BrickColor.new("Grime")
Part286.Rotation = Vector3.new(-180, -0.00999999978, -180)
Part286.CanCollide = false
Part286.FormFactor = Enum.FormFactor.Custom
Part286.Size = Vector3.new(1.00000012, 2.20000005, 5.19999981)
Part286.CFrame = CFrame.new(-26.0095215, 6.30111074, 44.0606766, -1, 9.61294518e-06, -0.000103726969, 9.90486296e-06, 1, 5.2497966e-05, 0.000109722117, 5.67162788e-05, -1)
Part286.BackSurface = Enum.SurfaceType.Weld
Part286.BottomSurface = Enum.SurfaceType.Weld
Part286.FrontSurface = Enum.SurfaceType.Weld
Part286.LeftSurface = Enum.SurfaceType.Weld
Part286.RightSurface = Enum.SurfaceType.Weld
Part286.TopSurface = Enum.SurfaceType.Weld
Part286.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part286.Position = Vector3.new(-26.0095215, 6.30111074, 44.0606766)
Part286.Orientation = Vector3.new(0, -179.98999, 0)
Part286.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh287.Parent = Part286
Part288.Name = "Brick"
Part288.Parent = Model0
Part288.Material = Enum.Material.Metal
Part288.BrickColor = BrickColor.new("Grime")
Part288.Transparency = 1
Part288.Rotation = Vector3.new(-98.1199951, 0, -180)
Part288.CanCollide = false
Part288.FormFactor = Enum.FormFactor.Custom
Part288.Size = Vector3.new(2, 0.200000003, 1.19999993)
Part288.CFrame = CFrame.new(-15.1093197, 9.22394657, 46.3002548, -1, 2.23412426e-05, -2.27283726e-06, 1.46798811e-06, 0.141308457, 0.989965618, 3.3739394e-05, 0.98996681, -0.141300574)
Part288.BackSurface = Enum.SurfaceType.Weld
Part288.BottomSurface = Enum.SurfaceType.Weld
Part288.FrontSurface = Enum.SurfaceType.Weld
Part288.LeftSurface = Enum.SurfaceType.Weld
Part288.RightSurface = Enum.SurfaceType.Weld
Part288.TopSurface = Enum.SurfaceType.Weld
Part288.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part288.Position = Vector3.new(-15.1093197, 9.22394657, 46.3002548)
Part288.Orientation = Vector3.new(-81.8799973, -180, 0)
Part288.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh289.Parent = Part288
BlockMesh289.Offset = Vector3.new(0, -0.189999998, 0)
Part290.Parent = Model0
Part290.Material = Enum.Material.Metal
Part290.BrickColor = BrickColor.new("Grime")
Part290.Rotation = Vector3.new(180, 0, -180)
Part290.FormFactor = Enum.FormFactor.Custom
Part290.Size = Vector3.new(0.400000095, 1.20000005, 5.19999981)
Part290.CFrame = CFrame.new(-26.709795, 4.60025549, 33.6601105, -1, 6.28825137e-06, -2.67255018e-06, 6.58563977e-06, 1, -9.30688202e-06, 8.66713162e-06, -5.08754056e-06, -1)
Part290.BackSurface = Enum.SurfaceType.Weld
Part290.BottomSurface = Enum.SurfaceType.Weld
Part290.FrontSurface = Enum.SurfaceType.Weld
Part290.LeftSurface = Enum.SurfaceType.Weld
Part290.RightSurface = Enum.SurfaceType.Weld
Part290.TopSurface = Enum.SurfaceType.Weld
Part290.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part290.Position = Vector3.new(-26.709795, 4.60025549, 33.6601105)
Part290.Orientation = Vector3.new(0, -180, 0)
Part290.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh291.Parent = Part290
Part292.Parent = Model0
Part292.Material = Enum.Material.Metal
Part292.BrickColor = BrickColor.new("Grime")
Part292.Rotation = Vector3.new(180, 0, -180)
Part292.FormFactor = Enum.FormFactor.Custom
Part292.Size = Vector3.new(0.400000095, 1.20000005, 5.19999981)
Part292.CFrame = CFrame.new(-26.7098675, 4.60042572, 44.0601082, -1, 6.28825137e-06, -2.67255018e-06, 6.58563977e-06, 1, -9.30688202e-06, 8.66713162e-06, -5.08754056e-06, -1)
Part292.BackSurface = Enum.SurfaceType.Weld
Part292.BottomSurface = Enum.SurfaceType.Weld
Part292.FrontSurface = Enum.SurfaceType.Weld
Part292.LeftSurface = Enum.SurfaceType.Weld
Part292.RightSurface = Enum.SurfaceType.Weld
Part292.TopSurface = Enum.SurfaceType.Weld
Part292.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part292.Position = Vector3.new(-26.7098675, 4.60042572, 44.0601082)
Part292.Orientation = Vector3.new(0, -180, 0)
Part292.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh293.Parent = Part292
WedgePart294.Parent = Model0
WedgePart294.Material = Enum.Material.Metal
WedgePart294.BrickColor = BrickColor.new("Grime")
WedgePart294.Rotation = Vector3.new(90, 0, -180)
WedgePart294.FormFactor = Enum.FormFactor.Custom
WedgePart294.Size = Vector3.new(22, 1.80000019, 0.800000131)
WedgePart294.CFrame = CFrame.new(-5.71021032, 8.60006523, 39.9598465, -1, 1.67611997e-05, -5.35971367e-06, 5.73934039e-06, 2.4999847e-06, -0.99999088, -9.10116614e-06, -1.00000012, -7.8765861e-06)
WedgePart294.BackSurface = Enum.SurfaceType.Weld
WedgePart294.BottomSurface = Enum.SurfaceType.Weld
WedgePart294.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart294.Position = Vector3.new(-5.71021032, 8.60006523, 39.9598465)
WedgePart294.Orientation = Vector3.new(89.7599945, -145.770004, 66.4599991)
WedgePart294.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh295.Parent = WedgePart294
SpecialMesh295.MeshType = Enum.MeshType.Wedge
WedgePart296.Parent = Model0
WedgePart296.Material = Enum.Material.Metal
WedgePart296.BrickColor = BrickColor.new("Grime")
WedgePart296.Rotation = Vector3.new(90, 0, 0)
WedgePart296.CanCollide = false
WedgePart296.FormFactor = Enum.FormFactor.Custom
WedgePart296.Size = Vector3.new(11.8000002, 0.400000006, 2.79999995)
WedgePart296.CFrame = CFrame.new(-10.8102522, 8.80012226, 46.259758, 1, 6.12342228e-06, -6.47552679e-06, -7.03663818e-06, 1.60052878e-05, -1, -1.74245251e-05, 1, 8.05025593e-06)
WedgePart296.BackSurface = Enum.SurfaceType.Weld
WedgePart296.BottomSurface = Enum.SurfaceType.Weld
WedgePart296.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart296.Position = Vector3.new(-10.8102522, 8.80012226, 46.259758)
WedgePart296.Orientation = Vector3.new(90, 0, 0)
WedgePart296.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh297.Parent = WedgePart296
SpecialMesh297.MeshType = Enum.MeshType.Wedge
WedgePart298.Parent = Model0
WedgePart298.Material = Enum.Material.Metal
WedgePart298.BrickColor = BrickColor.new("Grime")
WedgePart298.Rotation = Vector3.new(90, 0, 180)
WedgePart298.FormFactor = Enum.FormFactor.Custom
WedgePart298.Size = Vector3.new(10.1999998, 0.800000131, 1.00000012)
WedgePart298.CFrame = CFrame.new(0.190846562, 10.6997681, 41.8599472, -1, -1.71460924e-05, -7.07122672e-06, 7.44470481e-06, 3.71252099e-05, -0.99999088, 2.46954078e-05, -1.00000012, -4.24238897e-05)
WedgePart298.BackSurface = Enum.SurfaceType.Weld
WedgePart298.BottomSurface = Enum.SurfaceType.Weld
WedgePart298.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart298.Position = Vector3.new(0.190846562, 10.6997681, 41.8599472)
WedgePart298.Orientation = Vector3.new(89.7599945, -170.539993, 11.3400002)
WedgePart298.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh299.Parent = WedgePart298
SpecialMesh299.MeshType = Enum.MeshType.Wedge
WedgePart300.Parent = Model0
WedgePart300.Material = Enum.Material.Metal
WedgePart300.BrickColor = BrickColor.new("Grime")
WedgePart300.Rotation = Vector3.new(90, 0, 0)
WedgePart300.FormFactor = Enum.FormFactor.Custom
WedgePart300.Size = Vector3.new(22, 1.80000019, 0.800000131)
WedgePart300.CFrame = CFrame.new(-5.70992708, 8.6002655, 37.7604523, 1, -1.69808973e-05, -5.3198155e-06, -5.6994445e-06, -2.58807654e-06, -0.99999088, 9.32086368e-06, 1.00000012, -7.96467884e-06)
WedgePart300.BackSurface = Enum.SurfaceType.Weld
WedgePart300.BottomSurface = Enum.SurfaceType.Weld
WedgePart300.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart300.Position = Vector3.new(-5.70992708, 8.6002655, 37.7604523)
WedgePart300.Orientation = Vector3.new(89.7599945, -146.259995, -114.419998)
WedgePart300.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh301.Parent = WedgePart300
SpecialMesh301.MeshType = Enum.MeshType.Wedge
VehicleSeat302.Parent = Model0
VehicleSeat302.Material = Enum.Material.Metal
VehicleSeat302.BrickColor = BrickColor.new("Grime")
VehicleSeat302.Rotation = Vector3.new(0, 90, 0)
VehicleSeat302.Size = Vector3.new(2, 0.400000006, 2)
VehicleSeat302.CFrame = CFrame.new(-23.1098289, 4.8003788, 44.0599022, 1.1589701e-05, 5.60266608e-06, 1, -1.12916023e-05, 1, -6.19946923e-06, -1, -2.82160863e-06, -4.43901627e-07)
VehicleSeat302.TopSurface = Enum.SurfaceType.Weld
VehicleSeat302.HeadsUpDisplay = false
VehicleSeat302.MaxSpeed = 35
VehicleSeat302.Torque = 150
VehicleSeat302.Color = Color3.new(0.498039, 0.556863, 0.392157)
VehicleSeat302.Position = Vector3.new(-23.1098289, 4.8003788, 44.0599022)
VehicleSeat302.Orientation = Vector3.new(0, 90, 0)
VehicleSeat302.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart303.Parent = Model0
WedgePart303.Material = Enum.Material.Metal
WedgePart303.BrickColor = BrickColor.new("Grime")
WedgePart303.Rotation = Vector3.new(90, 0, -90)
WedgePart303.FormFactor = Enum.FormFactor.Custom
WedgePart303.Size = Vector3.new(5.19999933, 1, 1.20000005)
WedgePart303.CFrame = CFrame.new(-26.0089417, 4.60056925, 33.6610794, 1.45538397e-05, 1, -7.47078047e-06, -2.20777802e-05, -7.76782235e-06, -1, -1, 8.55936014e-06, 1.78583141e-05)
WedgePart303.BackSurface = Enum.SurfaceType.Weld
WedgePart303.BottomSurface = Enum.SurfaceType.Weld
WedgePart303.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart303.Position = Vector3.new(-26.0089417, 4.60056925, 33.6610794)
WedgePart303.Orientation = Vector3.new(90, 90, 0)
WedgePart303.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh304.Parent = WedgePart303
SpecialMesh304.MeshType = Enum.MeshType.Wedge
WedgePart305.Parent = Model0
WedgePart305.Material = Enum.Material.Metal
WedgePart305.BrickColor = BrickColor.new("Grime")
WedgePart305.Rotation = Vector3.new(90, 0, -180)
WedgePart305.FormFactor = Enum.FormFactor.Custom
WedgePart305.Size = Vector3.new(22, 0.600000143, 1.20000017)
WedgePart305.CFrame = CFrame.new(-5.71064138, 9.599576, 41.1605301, -1, 1.17034815e-05, -5.56241639e-06, 5.84649752e-06, -1.99384122e-05, -1, -5.97530743e-06, -1, 1.59061947e-05)
WedgePart305.BackSurface = Enum.SurfaceType.Weld
WedgePart305.BottomSurface = Enum.SurfaceType.Weld
WedgePart305.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart305.Position = Vector3.new(-5.71064138, 9.599576, 41.1605301)
WedgePart305.Orientation = Vector3.new(90, 180, 0)
WedgePart305.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh306.Parent = WedgePart305
SpecialMesh306.MeshType = Enum.MeshType.Wedge
WedgePart307.Parent = Model0
WedgePart307.Material = Enum.Material.Metal
WedgePart307.BrickColor = BrickColor.new("Grime")
WedgePart307.Rotation = Vector3.new(90, 0, 0)
WedgePart307.FormFactor = Enum.FormFactor.Custom
WedgePart307.Size = Vector3.new(22, 0.600000143, 1.20000017)
WedgePart307.CFrame = CFrame.new(-5.70935583, 9.60018349, 36.559742, 1, 5.02686817e-06, -6.43432486e-06, -6.48410469e-06, 8.01372698e-06, -1, -6.03618901e-06, 1, 7.30400461e-06)
WedgePart307.BackSurface = Enum.SurfaceType.Weld
WedgePart307.BottomSurface = Enum.SurfaceType.Weld
WedgePart307.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart307.Position = Vector3.new(-5.70935583, 9.60018349, 36.559742)
WedgePart307.Orientation = Vector3.new(90, 0, 0)
WedgePart307.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh308.Parent = WedgePart307
SpecialMesh308.MeshType = Enum.MeshType.Wedge
WedgePart309.Parent = Model0
WedgePart309.Material = Enum.Material.Metal
WedgePart309.BrickColor = BrickColor.new("Grime")
WedgePart309.Rotation = Vector3.new(90, 0, 0)
WedgePart309.FormFactor = Enum.FormFactor.Custom
WedgePart309.Size = Vector3.new(10.1999998, 0.800000131, 1.00000012)
WedgePart309.CFrame = CFrame.new(0.190338731, 10.7001028, 35.8596039, 1, 1.73247045e-05, -6.91621926e-06, -7.28482382e-06, -3.32206264e-06, -0.99999088, -2.47628068e-05, 1.00000012, -8.54242353e-06)
WedgePart309.BackSurface = Enum.SurfaceType.Weld
WedgePart309.BottomSurface = Enum.SurfaceType.Weld
WedgePart309.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart309.Position = Vector3.new(0.190338731, 10.7001028, 35.8596039)
WedgePart309.Orientation = Vector3.new(89.7599945, -141.009995, -114.509995)
WedgePart309.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh310.Parent = WedgePart309
SpecialMesh310.MeshType = Enum.MeshType.Wedge
WedgePart311.Parent = Model0
WedgePart311.Material = Enum.Material.Metal
WedgePart311.BrickColor = BrickColor.new("Grime")
WedgePart311.Rotation = Vector3.new(-90, 0, 90)
WedgePart311.FormFactor = Enum.FormFactor.Custom
WedgePart311.Size = Vector3.new(5.19999981, 1.39999998, 1.19999993)
WedgePart311.CFrame = CFrame.new(-26.2100182, 3.40037513, 33.6596451, -3.40397423e-06, -1, 6.33939817e-06, -9.03184537e-06, 6.52432982e-06, 1, -1, 7.16618433e-06, -6.38741267e-06)
WedgePart311.BackSurface = Enum.SurfaceType.Weld
WedgePart311.BottomSurface = Enum.SurfaceType.Weld
WedgePart311.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart311.Position = Vector3.new(-26.2100182, 3.40037513, 33.6596451)
WedgePart311.Orientation = Vector3.new(-90, 90, 0)
WedgePart311.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh312.Parent = WedgePart311
SpecialMesh312.MeshType = Enum.MeshType.Wedge
WedgePart313.Parent = Model0
WedgePart313.Material = Enum.Material.Metal
WedgePart313.BrickColor = BrickColor.new("Grime")
WedgePart313.Rotation = Vector3.new(90, 0, 0)
WedgePart313.FormFactor = Enum.FormFactor.Custom
WedgePart313.Size = Vector3.new(10.1999998, 1.60000014, 1.00000012)
WedgePart313.CFrame = CFrame.new(0.190321803, 10.6997337, 45.8596458, 1, 1.71271968e-05, -7.04050763e-06, -7.41398344e-06, -3.73043003e-05, -0.99999088, -2.46765048e-05, 1.00000012, -4.26029837e-05)
WedgePart313.BackSurface = Enum.SurfaceType.Weld
WedgePart313.BottomSurface = Enum.SurfaceType.Weld
WedgePart313.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart313.Position = Vector3.new(0.190321803, 10.6997337, 45.8596458)
WedgePart313.Orientation = Vector3.new(89.7599945, -170.619995, -168.759995)
WedgePart313.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh314.Parent = WedgePart313
SpecialMesh314.MeshType = Enum.MeshType.Wedge
WedgePart315.Parent = Model0
WedgePart315.Material = Enum.Material.Metal
WedgePart315.BrickColor = BrickColor.new("Grime")
WedgePart315.Rotation = Vector3.new(-90, 0, 90)
WedgePart315.FormFactor = Enum.FormFactor.Custom
WedgePart315.Size = Vector3.new(5.19999981, 1.39999998, 1.19999993)
WedgePart315.CFrame = CFrame.new(-26.2097702, 3.40055323, 44.0597954, 3.44685832e-05, -1, 5.8018918e-06, -6.04491834e-06, 5.80168262e-06, 1, -1, -3.44686086e-05, -6.04471643e-06)
WedgePart315.BackSurface = Enum.SurfaceType.Weld
WedgePart315.BottomSurface = Enum.SurfaceType.Weld
WedgePart315.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart315.Position = Vector3.new(-26.2097702, 3.40055323, 44.0597954)
WedgePart315.Orientation = Vector3.new(-90, 90, 0)
WedgePart315.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh316.Parent = WedgePart315
SpecialMesh316.MeshType = Enum.MeshType.Wedge
WedgePart317.Parent = Model0
WedgePart317.Material = Enum.Material.Metal
WedgePart317.BrickColor = BrickColor.new("Grime")
WedgePart317.Rotation = Vector3.new(180, 90, 0)
WedgePart317.FormFactor = Enum.FormFactor.Custom
WedgePart317.Size = Vector3.new(5.19999933, 1.20000005, 1)
WedgePart317.CFrame = CFrame.new(-26.0099239, 4.60073233, 33.6602364, -1.36232084e-05, -5.66421386e-06, 1, 2.05360793e-05, -1, -5.96129712e-06, 1, 1.63166333e-05, 7.62868513e-06)
WedgePart317.BottomSurface = Enum.SurfaceType.Weld
WedgePart317.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart317.Position = Vector3.new(-26.0099239, 4.60073233, 33.6602364)
WedgePart317.Orientation = Vector3.new(0, 90, 180)
WedgePart317.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh318.Parent = WedgePart317
SpecialMesh318.MeshType = Enum.MeshType.Wedge
WedgePart319.Parent = Model0
WedgePart319.Material = Enum.Material.Metal
WedgePart319.BrickColor = BrickColor.new("Grime")
WedgePart319.Rotation = Vector3.new(90, 0, -0.00999999978)
WedgePart319.CanCollide = false
WedgePart319.FormFactor = Enum.FormFactor.Custom
WedgePart319.Size = Vector3.new(0.400000006, 0.400000006, 3)
WedgePart319.CFrame = CFrame.new(-22.7094574, 8.90267277, 46.4604378, 1, 0.000103821971, -1.11975369e-05, -1.19384558e-05, -2.19714639e-06, -1, -0.000118742879, 1, -1.27009662e-05)
WedgePart319.BackSurface = Enum.SurfaceType.Weld
WedgePart319.BottomSurface = Enum.SurfaceType.Weld
WedgePart319.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart319.Position = Vector3.new(-22.7094574, 8.90267277, 46.4604378)
WedgePart319.Orientation = Vector3.new(90, 0.00999999978, 0)
WedgePart319.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh320.Parent = WedgePart319
SpecialMesh320.MeshType = Enum.MeshType.Wedge
WedgePart321.Parent = Model0
WedgePart321.Material = Enum.Material.Metal
WedgePart321.BrickColor = BrickColor.new("Grime")
WedgePart321.Rotation = Vector3.new(90, 0, 0)
WedgePart321.CanCollide = false
WedgePart321.FormFactor = Enum.FormFactor.Custom
WedgePart321.Size = Vector3.new(0.400000006, 1.20000005, 0.999999821)
WedgePart321.CFrame = CFrame.new(-25.7095184, 7.90136623, 42.4608383, 1, 7.70654951e-05, -9.90780518e-06, -1.02004242e-05, -6.15640529e-05, -1, -8.3060746e-05, 1, -6.57826022e-05)
WedgePart321.BackSurface = Enum.SurfaceType.Weld
WedgePart321.BottomSurface = Enum.SurfaceType.Weld
WedgePart321.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart321.Position = Vector3.new(-25.7095184, 7.90136623, 42.4608383)
WedgePart321.Orientation = Vector3.new(90, 0, 0)
WedgePart321.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh322.Parent = WedgePart321
SpecialMesh322.MeshType = Enum.MeshType.Wedge
WedgePart323.Parent = Model0
WedgePart323.Material = Enum.Material.Metal
WedgePart323.BrickColor = BrickColor.new("Grime")
WedgePart323.Rotation = Vector3.new(90, 0, -90)
WedgePart323.FormFactor = Enum.FormFactor.Custom
WedgePart323.Size = Vector3.new(5.19999933, 1, 1.20000005)
WedgePart323.CFrame = CFrame.new(-26.0092163, 4.60065508, 44.0591469, 1.43750112e-05, 1, -7.43051987e-06, -2.22713134e-05, -7.72756266e-06, -1, -1, 8.38053529e-06, 1.80518491e-05)
WedgePart323.BackSurface = Enum.SurfaceType.Weld
WedgePart323.BottomSurface = Enum.SurfaceType.Weld
WedgePart323.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart323.Position = Vector3.new(-26.0092163, 4.60065508, 44.0591469)
WedgePart323.Orientation = Vector3.new(90, 90, 0)
WedgePart323.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh324.Parent = WedgePart323
SpecialMesh324.MeshType = Enum.MeshType.Wedge
WedgePart325.Parent = Model0
WedgePart325.Material = Enum.Material.Metal
WedgePart325.BrickColor = BrickColor.new("Grime")
WedgePart325.Rotation = Vector3.new(-90, 0, 0)
WedgePart325.CanCollide = false
WedgePart325.FormFactor = Enum.FormFactor.Custom
WedgePart325.Size = Vector3.new(0.200000003, 0.200000003, 2.60000014)
WedgePart325.CFrame = CFrame.new(-16.8097363, 8.70052814, 46.1599655, 1, -2.12305386e-05, 7.18997535e-06, -8.38811684e-06, -4.9342907e-06, 1, -4.53438988e-05, -1, 1.20436125e-05)
WedgePart325.BackSurface = Enum.SurfaceType.Weld
WedgePart325.BottomSurface = Enum.SurfaceType.Weld
WedgePart325.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart325.Position = Vector3.new(-16.8097363, 8.70052814, 46.1599655)
WedgePart325.Orientation = Vector3.new(-90, 0, 0)
WedgePart325.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh326.Parent = WedgePart325
SpecialMesh326.MeshType = Enum.MeshType.Wedge
WedgePart327.Parent = Model0
WedgePart327.Material = Enum.Material.Metal
WedgePart327.BrickColor = BrickColor.new("Grime")
WedgePart327.Rotation = Vector3.new(-90, 0, 0)
WedgePart327.CanCollide = false
WedgePart327.FormFactor = Enum.FormFactor.Custom
WedgePart327.Size = Vector3.new(0.200000003, 0.200000003, 2.60000014)
WedgePart327.CFrame = CFrame.new(-19.6100292, 8.70045471, 46.1600151, 1, -2.11709685e-05, 7.23711082e-06, -8.43528869e-06, -6.71051566e-06, 1, -4.52843196e-05, -1, 1.02673966e-05)
WedgePart327.BackSurface = Enum.SurfaceType.Weld
WedgePart327.BottomSurface = Enum.SurfaceType.Weld
WedgePart327.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart327.Position = Vector3.new(-19.6100292, 8.70045471, 46.1600151)
WedgePart327.Orientation = Vector3.new(-90, 0, 0)
WedgePart327.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh328.Parent = WedgePart327
SpecialMesh328.MeshType = Enum.MeshType.Wedge
WedgePart329.Parent = Model0
WedgePart329.Material = Enum.Material.Metal
WedgePart329.BrickColor = BrickColor.new("Grime")
WedgePart329.Rotation = Vector3.new(90, 0, -0.00999999978)
WedgePart329.CanCollide = false
WedgePart329.FormFactor = Enum.FormFactor.Custom
WedgePart329.Size = Vector3.new(0.200000003, 0.400000006, 3)
WedgePart329.CFrame = CFrame.new(-16.8093224, 8.90175629, 46.4594421, 1, 9.91064226e-05, -1.10202109e-05, -1.22203146e-05, 2.08557285e-05, -1, -0.000123219652, 1, 3.87895125e-06)
WedgePart329.BackSurface = Enum.SurfaceType.Weld
WedgePart329.BottomSurface = Enum.SurfaceType.Weld
WedgePart329.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart329.Position = Vector3.new(-16.8093224, 8.90175629, 46.4594421)
WedgePart329.Orientation = Vector3.new(90, 0.00999999978, 0)
WedgePart329.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh330.Parent = WedgePart329
SpecialMesh330.MeshType = Enum.MeshType.Wedge
WedgePart331.Parent = Model0
WedgePart331.Material = Enum.Material.Metal
WedgePart331.BrickColor = BrickColor.new("Grime")
WedgePart331.Rotation = Vector3.new(180, -90, 0)
WedgePart331.FormFactor = Enum.FormFactor.Custom
WedgePart331.Size = Vector3.new(5.19999886, 2, 1.79999995)
WedgePart331.CFrame = CFrame.new(-16.609787, 5.0004549, 33.6600304, -4.89594822e-06, -6.62594812e-06, -1, -8.07483866e-06, -0.999996543, 6.68015446e-06, -1, 7.30284228e-06, 5.9940694e-06)
WedgePart331.BottomSurface = Enum.SurfaceType.Smooth
WedgePart331.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart331.Position = Vector3.new(-16.609787, 5.0004549, 33.6600304)
WedgePart331.Orientation = Vector3.new(0, -90, -180)
WedgePart331.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh332.Parent = WedgePart331
SpecialMesh332.MeshType = Enum.MeshType.Wedge
WedgePart333.Parent = Model0
WedgePart333.Material = Enum.Material.Metal
WedgePart333.BrickColor = BrickColor.new("Grime")
WedgePart333.Rotation = Vector3.new(180, 90, 0)
WedgePart333.FormFactor = Enum.FormFactor.Custom
WedgePart333.Size = Vector3.new(5.19999933, 1.20000005, 1)
WedgePart333.CFrame = CFrame.new(-26.00951, 4.60169315, 44.0594978, -7.2284929e-06, -6.09822428e-06, 1, 1.73822391e-05, -1, -6.69012343e-06, 1, 8.98247345e-06, -4.70518717e-06)
WedgePart333.BottomSurface = Enum.SurfaceType.Weld
WedgePart333.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart333.Position = Vector3.new(-26.00951, 4.60169315, 44.0594978)
WedgePart333.Orientation = Vector3.new(0, 90, 180)
WedgePart333.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh334.Parent = WedgePart333
SpecialMesh334.MeshType = Enum.MeshType.Wedge
WedgePart335.Parent = Model0
WedgePart335.Material = Enum.Material.Metal
WedgePart335.BrickColor = BrickColor.new("Grime")
WedgePart335.Rotation = Vector3.new(-90, 0, 0)
WedgePart335.CanCollide = false
WedgePart335.FormFactor = Enum.FormFactor.Custom
WedgePart335.Size = Vector3.new(0.400000006, 0.200000003, 2.60000014)
WedgePart335.CFrame = CFrame.new(-22.7096386, 8.70049095, 46.1598549, 1, 1.37711768e-05, 5.43959368e-06, -6.180333e-06, -2.95906248e-05, 1, -1.14948455e-06, -1, -1.90853934e-05)
WedgePart335.BackSurface = Enum.SurfaceType.Weld
WedgePart335.BottomSurface = Enum.SurfaceType.Weld
WedgePart335.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart335.Position = Vector3.new(-22.7096386, 8.70049095, 46.1598549)
WedgePart335.Orientation = Vector3.new(-90, 0, 0)
WedgePart335.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh336.Parent = WedgePart335
SpecialMesh336.MeshType = Enum.MeshType.Wedge
WedgePart337.Parent = Model0
WedgePart337.Material = Enum.Material.Metal
WedgePart337.BrickColor = BrickColor.new("Grime")
WedgePart337.Rotation = Vector3.new(90, 0, -0.00999999978)
WedgePart337.CanCollide = false
WedgePart337.FormFactor = Enum.FormFactor.Custom
WedgePart337.Size = Vector3.new(0.200000003, 0.400000006, 3)
WedgePart337.CFrame = CFrame.new(-19.6093693, 8.90126038, 46.4600639, 1, 9.91061097e-05, -1.10227156e-05, -1.22186893e-05, -2.08033562e-05, -1, -0.000123219797, 1, -3.77801443e-05)
WedgePart337.BackSurface = Enum.SurfaceType.Weld
WedgePart337.BottomSurface = Enum.SurfaceType.Weld
WedgePart337.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart337.Position = Vector3.new(-19.6093693, 8.90126038, 46.4600639)
WedgePart337.Orientation = Vector3.new(90, 0.00999999978, 0)
WedgePart337.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh338.Parent = WedgePart337
SpecialMesh338.MeshType = Enum.MeshType.Wedge
Part339.Parent = Model0
Part339.Material = Enum.Material.Metal
Part339.BrickColor = BrickColor.new("Grime")
Part339.Rotation = Vector3.new(-180, 0, -180)
Part339.FormFactor = Enum.FormFactor.Custom
Part339.Size = Vector3.new(5.59999943, 0.799999952, 1.80000031)
Part339.CFrame = CFrame.new(14.889924, 8.40013981, 32.9597015, -1, 8.84130441e-06, -5.35144209e-05, 8.93794913e-06, 1, 8.40500434e-06, 5.54899634e-05, 9.79304605e-06, -1)
Part339.BackSurface = Enum.SurfaceType.Weld
Part339.BottomSurface = Enum.SurfaceType.Weld
Part339.FrontSurface = Enum.SurfaceType.Weld
Part339.LeftSurface = Enum.SurfaceType.Weld
Part339.RightSurface = Enum.SurfaceType.Weld
Part339.TopSurface = Enum.SurfaceType.Weld
Part339.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part339.Position = Vector3.new(14.889924, 8.40013981, 32.9597015)
Part339.Orientation = Vector3.new(0, -180, 0)
Part339.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh340.Parent = Part339
Part341.Parent = Model0
Part341.Material = Enum.Material.Metal
Part341.BrickColor = BrickColor.new("Grime")
Part341.Rotation = Vector3.new(-180, 0, -180)
Part341.CanCollide = false
Part341.FormFactor = Enum.FormFactor.Custom
Part341.Size = Vector3.new(0.399999231, 0.799999893, 5.19999981)
Part341.CFrame = CFrame.new(-4.109828, 4.80027628, 44.0599098, -1, 6.43371504e-06, -5.15642932e-06, 6.81323763e-06, 0.99999088, 1.01975102e-05, 1.28165175e-05, 1.5574049e-05, -1.00000012)
Part341.BackSurface = Enum.SurfaceType.Weld
Part341.BottomSurface = Enum.SurfaceType.Weld
Part341.FrontSurface = Enum.SurfaceType.Weld
Part341.LeftSurface = Enum.SurfaceType.Weld
Part341.RightSurface = Enum.SurfaceType.Weld
Part341.TopSurface = Enum.SurfaceType.Weld
Part341.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part341.Position = Vector3.new(-4.109828, 4.80027628, 44.0599098)
Part341.Orientation = Vector3.new(0, -180, 0)
Part341.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh342.Parent = Part341
Part343.Parent = Model0
Part343.Material = Enum.Material.Metal
Part343.BrickColor = BrickColor.new("Grime")
Part343.Rotation = Vector3.new(180, 0, -180)
Part343.CanCollide = false
Part343.FormFactor = Enum.FormFactor.Custom
Part343.Size = Vector3.new(11.8000002, 0.799999952, 5.20000029)
Part343.CFrame = CFrame.new(11.190012, 7.60010147, 33.6598129, -1, 6.97483983e-06, -1.60322234e-05, 7.09157848e-06, 1, -2.91726792e-07, 1.8407216e-05, 1.37750521e-06, -1)
Part343.BackSurface = Enum.SurfaceType.Weld
Part343.BottomSurface = Enum.SurfaceType.Weld
Part343.FrontSurface = Enum.SurfaceType.Weld
Part343.LeftSurface = Enum.SurfaceType.Weld
Part343.RightSurface = Enum.SurfaceType.Weld
Part343.TopSurface = Enum.SurfaceType.Weld
Part343.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part343.Position = Vector3.new(11.190012, 7.60010147, 33.6598129)
Part343.Orientation = Vector3.new(0, -180, 0)
Part343.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh344.Parent = Part343
Part345.Parent = Model0
Part345.Material = Enum.Material.Metal
Part345.BrickColor = BrickColor.new("Grime")
Part345.Rotation = Vector3.new(180, 0, -180)
Part345.CanCollide = false
Part345.FormFactor = Enum.FormFactor.Custom
Part345.Size = Vector3.new(1.79999959, 0.799999952, 5.20000029)
Part345.CFrame = CFrame.new(16.189827, 7.60006905, 38.8596954, -1, 6.02205955e-06, 3.12409975e-06, 6.11911082e-06, 1, -1.37809102e-05, -1.14872091e-06, -1.23923655e-05, -1)
Part345.BackSurface = Enum.SurfaceType.Weld
Part345.BottomSurface = Enum.SurfaceType.Weld
Part345.FrontSurface = Enum.SurfaceType.Weld
Part345.LeftSurface = Enum.SurfaceType.Weld
Part345.RightSurface = Enum.SurfaceType.Weld
Part345.TopSurface = Enum.SurfaceType.Weld
Part345.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part345.Position = Vector3.new(16.189827, 7.60006905, 38.8596954)
Part345.Orientation = Vector3.new(0, 180, 0)
Part345.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh346.Parent = Part345
Part347.Parent = Model0
Part347.Material = Enum.Material.Metal
Part347.BrickColor = BrickColor.new("Grime")
Part347.Rotation = Vector3.new(180, 0, -180)
Part347.FormFactor = Enum.FormFactor.Custom
Part347.Size = Vector3.new(13.1999998, 1.59999967, 3.60000038)
Part347.CFrame = CFrame.new(-10.9098253, 3.60021257, 34.460022, -1, 6.43994736e-06, -5.3034978e-06, 6.4623523e-06, 1, -7.84834992e-06, 5.75847071e-06, -7.52855431e-06, -1)
Part347.BackSurface = Enum.SurfaceType.Weld
Part347.BottomSurface = Enum.SurfaceType.Weld
Part347.FrontSurface = Enum.SurfaceType.Weld
Part347.LeftSurface = Enum.SurfaceType.Weld
Part347.RightSurface = Enum.SurfaceType.Weld
Part347.TopSurface = Enum.SurfaceType.Weld
Part347.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part347.Position = Vector3.new(-10.9098253, 3.60021257, 34.460022)
Part347.Orientation = Vector3.new(0, -180, 0)
Part347.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh348.Parent = Part347
BlockMesh348.Offset = Vector3.new(0, 0.800000012, 0)
BlockMesh348.Scale = Vector3.new(1.10000002, 2, 1)
BlockMesh348.Scale = Vector3.new(1.10000002, 2, 1)
Part349.Parent = Model0
Part349.Material = Enum.Material.Metal
Part349.BrickColor = BrickColor.new("Grime")
Part349.Rotation = Vector3.new(-180, 0, -180)
Part349.CanCollide = false
Part349.FormFactor = Enum.FormFactor.Custom
Part349.Size = Vector3.new(0.800000191, 1.40000021, 5.19999981)
Part349.CFrame = CFrame.new(16.6903687, 6.50005674, 33.6597786, -1, 7.3178353e-06, -2.29274719e-05, 7.57607449e-06, 1, 1.38828382e-05, 2.81880748e-05, 1.75801961e-05, -1)
Part349.BackSurface = Enum.SurfaceType.Weld
Part349.BottomSurface = Enum.SurfaceType.Weld
Part349.FrontSurface = Enum.SurfaceType.Weld
Part349.LeftSurface = Enum.SurfaceType.Weld
Part349.RightSurface = Enum.SurfaceType.Weld
Part349.TopSurface = Enum.SurfaceType.Weld
Part349.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part349.Position = Vector3.new(16.6903687, 6.50005674, 33.6597786)
Part349.Orientation = Vector3.new(0, -180, 0)
Part349.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh350.Parent = Part349
Part351.Parent = Model0
Part351.Material = Enum.Material.Metal
Part351.BrickColor = BrickColor.new("Grime")
Part351.Rotation = Vector3.new(180, 0, -180)
Part351.FormFactor = Enum.FormFactor.Custom
Part351.Size = Vector3.new(11.8000002, 3.20000005, 5.20000029)
Part351.CFrame = CFrame.new(11.1901808, 5.60010195, 38.8599014, -1, 6.43885596e-06, -5.28130158e-06, 6.4634437e-06, 1, -7.86395231e-06, 5.78066692e-06, -7.51295283e-06, -1)
Part351.BottomSurface = Enum.SurfaceType.Weld
Part351.LeftSurface = Enum.SurfaceType.Weld
Part351.RightSurface = Enum.SurfaceType.Weld
Part351.TopSurface = Enum.SurfaceType.Weld
Part351.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part351.Position = Vector3.new(11.1901808, 5.60010195, 38.8599014)
Part351.Orientation = Vector3.new(0, -180, 0)
Part351.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh352.Parent = Part351
Part353.Parent = Model0
Part353.Material = Enum.Material.Metal
Part353.BrickColor = BrickColor.new("Grime")
Part353.Rotation = Vector3.new(-180, 0, -180)
Part353.FormFactor = Enum.FormFactor.Custom
Part353.Size = Vector3.new(13.1999998, 1.59999967, 3.60000038)
Part353.CFrame = CFrame.new(-10.909873, 3.60028696, 43.2598724, -1, 6.40441704e-06, -4.601201e-06, 6.40441613e-06, 1, 1.49602386e-07, 4.60120282e-06, 1.49572926e-07, -1)
Part353.BottomSurface = Enum.SurfaceType.Weld
Part353.LeftSurface = Enum.SurfaceType.Weld
Part353.RightSurface = Enum.SurfaceType.Weld
Part353.TopSurface = Enum.SurfaceType.Weld
Part353.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part353.Position = Vector3.new(-10.909873, 3.60028696, 43.2598724)
Part353.Orientation = Vector3.new(0, -180, 0)
Part353.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh354.Parent = Part353
BlockMesh354.Offset = Vector3.new(0, 0.800000012, 0)
BlockMesh354.Scale = Vector3.new(1.10000002, 2, 1)
BlockMesh354.Scale = Vector3.new(1.10000002, 2, 1)
Part355.Parent = Model0
Part355.Material = Enum.Material.Metal
Part355.BrickColor = BrickColor.new("Grime")
Part355.Rotation = Vector3.new(-180, 0, -180)
Part355.CanCollide = false
Part355.FormFactor = Enum.FormFactor.Custom
Part355.Size = Vector3.new(11.8000002, 0.399999976, 0.200000003)
Part355.CFrame = CFrame.new(-10.8097591, 6.2003026, 46.5602341, -1, 7.40343285e-06, -2.46297823e-05, 7.77740297e-06, 0.99999088, 5.76178718e-06, 3.21788757e-05, 1.10601068e-05, -1.00000012)
Part355.BackSurface = Enum.SurfaceType.Weld
Part355.BottomSurface = Enum.SurfaceType.Weld
Part355.FrontSurface = Enum.SurfaceType.Weld
Part355.LeftSurface = Enum.SurfaceType.Weld
Part355.RightSurface = Enum.SurfaceType.Weld
Part355.TopSurface = Enum.SurfaceType.Weld
Part355.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part355.Position = Vector3.new(-10.8097591, 6.2003026, 46.5602341)
Part355.Orientation = Vector3.new(0, -180, 0)
Part355.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh356.Parent = Part355
Part357.Parent = Model0
Part357.Material = Enum.Material.Metal
Part357.BrickColor = BrickColor.new("Grime")
Part357.Rotation = Vector3.new(180, 0, -180)
Part357.FormFactor = Enum.FormFactor.Custom
Part357.Size = Vector3.new(5.59999943, 0.799999952, 1.80000031)
Part357.CFrame = CFrame.new(14.8900795, 8.40018654, 44.7598724, -1, 6.8830459e-06, -1.4202913e-05, 7.07082381e-06, 1, -9.31228442e-06, 1.80205971e-05, -6.62894672e-06, -1)
Part357.BackSurface = Enum.SurfaceType.Weld
Part357.BottomSurface = Enum.SurfaceType.Weld
Part357.FrontSurface = Enum.SurfaceType.Weld
Part357.LeftSurface = Enum.SurfaceType.Weld
Part357.RightSurface = Enum.SurfaceType.Weld
Part357.TopSurface = Enum.SurfaceType.Weld
Part357.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part357.Position = Vector3.new(14.8900795, 8.40018654, 44.7598724)
Part357.Orientation = Vector3.new(0, -180, 0)
Part357.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh358.Parent = Part357
Part359.Parent = Model0
Part359.Material = Enum.Material.Metal
Part359.BrickColor = BrickColor.new("Grime")
Part359.Rotation = Vector3.new(-180, 0, -180)
Part359.CanCollide = false
Part359.FormFactor = Enum.FormFactor.Custom
Part359.Size = Vector3.new(0.799999356, 1.19999981, 5.19999981)
Part359.CFrame = CFrame.new(2.69019699, 5.80022383, 44.0595703, -1, 7.91060938e-06, -3.4820343e-05, 8.28971952e-06, 0.99999088, 1.29368718e-05, 4.24804894e-05, 1.83131688e-05, -1.00000012)
Part359.BackSurface = Enum.SurfaceType.Weld
Part359.BottomSurface = Enum.SurfaceType.Weld
Part359.FrontSurface = Enum.SurfaceType.Weld
Part359.LeftSurface = Enum.SurfaceType.Weld
Part359.RightSurface = Enum.SurfaceType.Weld
Part359.TopSurface = Enum.SurfaceType.Weld
Part359.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part359.Position = Vector3.new(2.69019699, 5.80022383, 44.0595703)
Part359.Orientation = Vector3.new(0, -180, 0)
Part359.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh360.Parent = Part359
Part361.Parent = Model0
Part361.Material = Enum.Material.Metal
Part361.BrickColor = BrickColor.new("Grime")
Part361.Rotation = Vector3.new(180, 0, -180)
Part361.CanCollide = false
Part361.FormFactor = Enum.FormFactor.Custom
Part361.Size = Vector3.new(0.799999356, 1.19999981, 5.19999981)
Part361.CFrame = CFrame.new(2.69034576, 5.80008698, 33.6597061, -1, 6.692429e-06, -1.03765615e-05, 7.06659148e-06, 0.99999088, -4.27647774e-06, 1.79255858e-05, 1.02187551e-06, -1.00000012)
Part361.BackSurface = Enum.SurfaceType.Weld
Part361.BottomSurface = Enum.SurfaceType.Weld
Part361.FrontSurface = Enum.SurfaceType.Weld
Part361.LeftSurface = Enum.SurfaceType.Weld
Part361.RightSurface = Enum.SurfaceType.Weld
Part361.TopSurface = Enum.SurfaceType.Weld
Part361.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part361.Position = Vector3.new(2.69034576, 5.80008698, 33.6597061)
Part361.Orientation = Vector3.new(0, -180, 0)
Part361.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh362.Parent = Part361
Part363.Parent = Model0
Part363.Material = Enum.Material.Metal
Part363.BrickColor = BrickColor.new("Grime")
Part363.Rotation = Vector3.new(180, 0, -180)
Part363.FormFactor = Enum.FormFactor.Custom
Part363.Size = Vector3.new(5.19999933, 1.19999993, 4.00000048)
Part363.CFrame = CFrame.new(8.89022923, 8.60020256, 44.0598717, -1, 6.46254784e-06, -5.67977986e-06, 7.01250519e-06, 1, -1.47377223e-05, 1.68665701e-05, -6.87466036e-06, -1)
Part363.BackSurface = Enum.SurfaceType.Weld
Part363.BottomSurface = Enum.SurfaceType.Weld
Part363.FrontSurface = Enum.SurfaceType.Weld
Part363.LeftSurface = Enum.SurfaceType.Weld
Part363.RightSurface = Enum.SurfaceType.Weld
Part363.TopSurface = Enum.SurfaceType.Weld
Part363.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part363.Position = Vector3.new(8.89022923, 8.60020256, 44.0598717)
Part363.Orientation = Vector3.new(0, -180, 0)
Part363.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh364.Parent = Part363
Part365.Parent = Model0
Part365.Material = Enum.Material.Metal
Part365.BrickColor = BrickColor.new("Grime")
Part365.Rotation = Vector3.new(180, 0, -180)
Part365.FormFactor = Enum.FormFactor.Custom
Part365.Size = Vector3.new(6.19999933, 2.20000005, 2.60000038)
Part365.CFrame = CFrame.new(14.9901371, 9.90013123, 44.7598419, -1, 6.21868867e-06, -8.11329301e-07, 6.58744511e-06, 1, -2.47506978e-06, 8.31362831e-06, 2.79819596e-06, -1)
Part365.BackSurface = Enum.SurfaceType.Weld
Part365.BottomSurface = Enum.SurfaceType.Weld
Part365.FrontSurface = Enum.SurfaceType.Weld
Part365.LeftSurface = Enum.SurfaceType.Weld
Part365.RightSurface = Enum.SurfaceType.Weld
Part365.TopSurface = Enum.SurfaceType.Weld
Part365.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part365.Position = Vector3.new(14.9901371, 9.90013123, 44.7598419)
Part365.Orientation = Vector3.new(0, -180, 0)
Part365.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh366.Parent = Part365
Part367.Parent = Model0
Part367.Material = Enum.Material.Metal
Part367.BrickColor = BrickColor.new("Grime")
Part367.Rotation = Vector3.new(180, 0, -180)
Part367.FormFactor = Enum.FormFactor.Custom
Part367.Size = Vector3.new(11.8000002, 0.799999952, 5.20000029)
Part367.CFrame = CFrame.new(11.190093, 7.60022306, 44.059761, -1, 4.3787395e-06, 3.62749852e-05, 4.74697981e-06, 1, -1.41841037e-05, -2.87727416e-05, -8.91064337e-06, -1)
Part367.BackSurface = Enum.SurfaceType.Weld
Part367.BottomSurface = Enum.SurfaceType.Weld
Part367.FrontSurface = Enum.SurfaceType.Weld
Part367.LeftSurface = Enum.SurfaceType.Weld
Part367.RightSurface = Enum.SurfaceType.Weld
Part367.TopSurface = Enum.SurfaceType.Weld
Part367.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part367.Position = Vector3.new(11.190093, 7.60022306, 44.059761)
Part367.Orientation = Vector3.new(0, 180, 0)
Part367.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh368.Parent = Part367
Part369.Parent = Model0
Part369.Material = Enum.Material.Metal
Part369.BrickColor = BrickColor.new("Grime")
Part369.Rotation = Vector3.new(180, 0, -180)
Part369.CanCollide = false
Part369.FormFactor = Enum.FormFactor.Custom
Part369.Size = Vector3.new(3.39999962, 0.799999893, 5.20000029)
Part369.CFrame = CFrame.new(6.99010181, 7.6001296, 38.8598747, -1, 6.44049305e-06, -5.31459591e-06, 6.46180661e-06, 1, -7.84054919e-06, 5.74737214e-06, -7.53635504e-06, -1)
Part369.BackSurface = Enum.SurfaceType.Weld
Part369.BottomSurface = Enum.SurfaceType.Weld
Part369.FrontSurface = Enum.SurfaceType.Weld
Part369.LeftSurface = Enum.SurfaceType.Weld
Part369.RightSurface = Enum.SurfaceType.Weld
Part369.TopSurface = Enum.SurfaceType.Weld
Part369.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part369.Position = Vector3.new(6.99010181, 7.6001296, 38.8598747)
Part369.Orientation = Vector3.new(0, -180, 0)
Part369.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh370.Parent = Part369
Part371.Parent = Model0
Part371.Material = Enum.Material.Metal
Part371.BrickColor = BrickColor.new("Really black")
Part371.Rotation = Vector3.new(-90, 90, 0)
Part371.CanCollide = false
Part371.FormFactor = Enum.FormFactor.Custom
Part371.Size = Vector3.new(5.5999999, 1.79999995, 5.60000038)
Part371.CFrame = CFrame.new(-7.3100009, 2.80016303, 31.7599716, -6.42304258e-06, -4.95945733e-06, 1, -1, -8.09017456e-06, -6.47926254e-06, 7.28673149e-06, -1, -6.10251254e-06)
Part371.BottomSurface = Enum.SurfaceType.Weld
Part371.FrontSurface = Enum.SurfaceType.Weld
Part371.LeftSurface = Enum.SurfaceType.Weld
Part371.RightSurface = Enum.SurfaceType.Weld
Part371.TopSurface = Enum.SurfaceType.Weld
Part371.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part371.Position = Vector3.new(-7.3100009, 2.80016303, 31.7599716)
Part371.Orientation = Vector3.new(0, 90, -90)
Part371.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
CylinderMesh372.Parent = Part371
Part373.Parent = Model0
Part373.Material = Enum.Material.Metal
Part373.BrickColor = BrickColor.new("Grime")
Part373.Rotation = Vector3.new(-180, 0, -180)
Part373.CanCollide = false
Part373.FormFactor = Enum.FormFactor.Custom
Part373.Size = Vector3.new(1.59999919, 0.799999952, 5.19999981)
Part373.CFrame = CFrame.new(3.09007359, 6.80019569, 44.0596123, -1, 6.8204281e-06, -1.29195741e-05, 7.19992431e-06, 0.99999088, 5.89834963e-06, 2.05796405e-05, 1.12747821e-05, -1.00000012)
Part373.BackSurface = Enum.SurfaceType.Weld
Part373.BottomSurface = Enum.SurfaceType.Weld
Part373.FrontSurface = Enum.SurfaceType.Weld
Part373.LeftSurface = Enum.SurfaceType.Weld
Part373.RightSurface = Enum.SurfaceType.Weld
Part373.TopSurface = Enum.SurfaceType.Weld
Part373.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part373.Position = Vector3.new(3.09007359, 6.80019569, 44.0596123)
Part373.Orientation = Vector3.new(0, -180, 0)
Part373.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh374.Parent = Part373
Part375.Parent = Model0
Part375.Material = Enum.Material.Metal
Part375.BrickColor = BrickColor.new("Grime")
Part375.Rotation = Vector3.new(-180, 0, -180)
Part375.FormFactor = Enum.FormFactor.Custom
Part375.Size = Vector3.new(8, 1.20000005, 5.19999981)
Part375.CFrame = CFrame.new(-21.5098934, 3.4003644, 44.0600357, -1, 7.54534176e-06, -2.77179206e-05, 7.54488246e-06, 1, 1.65513575e-05, 2.77180479e-05, 1.65511501e-05, -1)
Part375.BackSurface = Enum.SurfaceType.Weld
Part375.BottomSurface = Enum.SurfaceType.Weld
Part375.LeftSurface = Enum.SurfaceType.Weld
Part375.RightSurface = Enum.SurfaceType.Weld
Part375.TopSurface = Enum.SurfaceType.Weld
Part375.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part375.Position = Vector3.new(-21.5098934, 3.4003644, 44.0600357)
Part375.Orientation = Vector3.new(0, -180, 0)
Part375.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh376.Parent = Part375
Part377.Parent = Model0
Part377.Material = Enum.Material.Metal
Part377.BrickColor = BrickColor.new("Grime")
Part377.Rotation = Vector3.new(180, 0, -180)
Part377.CanCollide = false
Part377.FormFactor = Enum.FormFactor.Custom
Part377.Size = Vector3.new(6.19999981, 2.39999986, 5.19999981)
Part377.CFrame = CFrame.new(-0.809634686, 4.00016212, 33.659977, -1, 5.6025101e-06, 1.15597104e-05, 5.61264596e-06, 1, -1.9705436e-05, -1.1348955e-05, -1.95571592e-05, -1)
Part377.BackSurface = Enum.SurfaceType.Weld
Part377.BottomSurface = Enum.SurfaceType.Weld
Part377.FrontSurface = Enum.SurfaceType.Weld
Part377.LeftSurface = Enum.SurfaceType.Weld
Part377.RightSurface = Enum.SurfaceType.Weld
Part377.TopSurface = Enum.SurfaceType.Weld
Part377.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part377.Position = Vector3.new(-0.809634686, 4.00016212, 33.659977)
Part377.Orientation = Vector3.new(0, 180, 0)
Part377.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh378.Parent = Part377
Part379.Parent = Model0
Part379.Material = Enum.Material.Metal
Part379.BrickColor = BrickColor.new("Grime")
Part379.Rotation = Vector3.new(180, 0, -180)
Part379.CanCollide = false
Part379.FormFactor = Enum.FormFactor.Custom
Part379.Size = Vector3.new(0.399999231, 0.799999893, 5.19999981)
Part379.CFrame = CFrame.new(-4.10968304, 4.80014801, 33.6599922, -1, 5.95867459e-06, 4.37692006e-06, 5.96897416e-06, 1, -1.46642387e-05, -4.16614375e-06, -1.45159993e-05, -1)
Part379.BackSurface = Enum.SurfaceType.Weld
Part379.BottomSurface = Enum.SurfaceType.Weld
Part379.FrontSurface = Enum.SurfaceType.Weld
Part379.LeftSurface = Enum.SurfaceType.Weld
Part379.RightSurface = Enum.SurfaceType.Weld
Part379.TopSurface = Enum.SurfaceType.Weld
Part379.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part379.Position = Vector3.new(-4.10968304, 4.80014801, 33.6599922)
Part379.Orientation = Vector3.new(0, 180, 0)
Part379.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh380.Parent = Part379
Part381.Name = "wheel"
Part381.Parent = Model0
Part381.Material = Enum.Material.Metal
Part381.BrickColor = BrickColor.new("Grime")
Part381.Transparency = 1
Part381.Rotation = Vector3.new(-90, -90, 0)
Part381.FormFactor = Enum.FormFactor.Symmetric
Part381.Friction = 1
Part381.Shape = Enum.PartType.Ball
Part381.Size = Vector3.new(5, 5, 5)
Part381.CFrame = CFrame.new(-22.5099869, 2.99934506, 49.1596909, -1.68524257e-05, -5.57238771e-08, -1, 1, -4.68407961e-08, -1.6852111e-05, -3.93574737e-08, -1, 6.68240361e-08)
Part381.BottomSurface = Enum.SurfaceType.Smooth
Part381.TopSurface = Enum.SurfaceType.Hinge
Part381.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part381.Position = Vector3.new(-22.5099869, 2.99934506, 49.1596909)
Part381.Orientation = Vector3.new(0, -90, 90)
Part381.Color = Color3.new(0.498039, 0.556863, 0.392157)
CylinderMesh382.Parent = Part381
CylinderMesh382.Offset = Vector3.new(0, -1.10000002, 0)
CylinderMesh382.Scale = Vector3.new(1, 0.600000024, 1)
CylinderMesh382.Scale = Vector3.new(1, 0.600000024, 1)
Part383.Parent = Model0
Part383.Material = Enum.Material.Metal
Part383.BrickColor = BrickColor.new("Really black")
Part383.Rotation = Vector3.new(-90, 90, 0)
Part383.CanCollide = false
Part383.FormFactor = Enum.FormFactor.Custom
Part383.Size = Vector3.new(5.5999999, 1.79999995, 5.60000038)
Part383.CFrame = CFrame.new(-13.909976, 2.80021191, 31.7600212, -6.42304258e-06, -4.95945733e-06, 1, -1, -8.09017456e-06, -6.47926254e-06, 7.28673149e-06, -1, -6.10251254e-06)
Part383.BottomSurface = Enum.SurfaceType.Weld
Part383.FrontSurface = Enum.SurfaceType.Weld
Part383.LeftSurface = Enum.SurfaceType.Weld
Part383.RightSurface = Enum.SurfaceType.Weld
Part383.TopSurface = Enum.SurfaceType.Weld
Part383.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part383.Position = Vector3.new(-13.909976, 2.80021191, 31.7600212)
Part383.Orientation = Vector3.new(0, 90, -90)
Part383.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
CylinderMesh384.Parent = Part383
Part385.Parent = Model0
Part385.Material = Enum.Material.Metal
Part385.BrickColor = BrickColor.new("Really black")
Part385.Rotation = Vector3.new(90, -90, 0)
Part385.CanCollide = false
Part385.FormFactor = Enum.FormFactor.Custom
Part385.Size = Vector3.new(5.5999999, 1.79999995, 5.60000038)
Part385.CFrame = CFrame.new(-13.9099016, 2.80034089, 45.9599915, -5.31013347e-06, -1.75913701e-05, -1, -1, 8.41797737e-06, 5.30998523e-06, 8.4178846e-06, 1, -1.75914138e-05)
Part385.BottomSurface = Enum.SurfaceType.Weld
Part385.FrontSurface = Enum.SurfaceType.Weld
Part385.LeftSurface = Enum.SurfaceType.Weld
Part385.RightSurface = Enum.SurfaceType.Weld
Part385.TopSurface = Enum.SurfaceType.Weld
Part385.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part385.Position = Vector3.new(-13.9099016, 2.80034089, 45.9599915)
Part385.Orientation = Vector3.new(0, -90, -90)
Part385.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
CylinderMesh386.Parent = Part385
WedgePart387.Parent = Model0
WedgePart387.Material = Enum.Material.Metal
WedgePart387.BrickColor = BrickColor.new("Grime")
WedgePart387.Rotation = Vector3.new(-180, -90, 0)
WedgePart387.FormFactor = Enum.FormFactor.Custom
WedgePart387.Size = Vector3.new(5.19999981, 1.20000005, 0.800000072)
WedgePart387.CFrame = CFrame.new(3.49014544, 5.80042076, 33.6599541, -5.22691334e-06, -6.46520948e-06, -1, 5.58827878e-06, -1, 6.48099831e-06, -1, -5.81446511e-06, 5.54879989e-06)
WedgePart387.BottomSurface = Enum.SurfaceType.Weld
WedgePart387.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart387.Position = Vector3.new(3.49014544, 5.80042076, 33.6599541)
WedgePart387.Orientation = Vector3.new(0, -90, 180)
WedgePart387.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh388.Parent = WedgePart387
SpecialMesh388.MeshType = Enum.MeshType.Wedge
WedgePart389.Parent = Model0
WedgePart389.Material = Enum.Material.Metal
WedgePart389.BrickColor = BrickColor.new("Grime")
WedgePart389.Rotation = Vector3.new(180, 90, 0)
WedgePart389.CanCollide = false
WedgePart389.FormFactor = Enum.FormFactor.Custom
WedgePart389.Size = Vector3.new(5.19999981, 1.60000014, 0.400000006)
WedgePart389.CFrame = CFrame.new(-4.10981941, 3.60051203, 33.6600952, 5.08384437e-06, -6.67719132e-06, 1, 8.03388048e-06, -0.999993205, -6.73167688e-06, 1, 7.2622679e-06, -6.18094418e-06)
WedgePart389.BottomSurface = Enum.SurfaceType.Weld
WedgePart389.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart389.Position = Vector3.new(-4.10981941, 3.60051203, 33.6600952)
WedgePart389.Orientation = Vector3.new(0, 90, 180)
WedgePart389.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh390.Parent = WedgePart389
SpecialMesh390.MeshType = Enum.MeshType.Wedge
WedgePart391.Parent = Model0
WedgePart391.Material = Enum.Material.Metal
WedgePart391.BrickColor = BrickColor.new("Grime")
WedgePart391.Rotation = Vector3.new(-180, 90, 0)
WedgePart391.CanCollide = false
WedgePart391.FormFactor = Enum.FormFactor.Custom
WedgePart391.Size = Vector3.new(5.19999981, 0.800000072, 0.600000024)
WedgePart391.CFrame = CFrame.new(-4.60982037, 4.80040455, 44.0597725, 1.23189566e-05, -7.03911064e-06, 1, -4.74273656e-06, -0.999981761, -7.78240428e-06, 1.00000024, -1.52694429e-05, -2.73172082e-05)
WedgePart391.BottomSurface = Enum.SurfaceType.Weld
WedgePart391.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart391.Position = Vector3.new(-4.60982037, 4.80040455, 44.0597725)
WedgePart391.Orientation = Vector3.new(0, 90, -180)
WedgePart391.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh392.Parent = WedgePart391
SpecialMesh392.MeshType = Enum.MeshType.Wedge
WedgePart393.Parent = Model0
WedgePart393.Material = Enum.Material.Metal
WedgePart393.BrickColor = BrickColor.new("Grime")
WedgePart393.Rotation = Vector3.new(180, -90, 0)
WedgePart393.FormFactor = Enum.FormFactor.Custom
WedgePart393.Size = Vector3.new(5.19999981, 0.800000072, 1.4000001)
WedgePart393.CFrame = CFrame.new(4.59036112, 6.80025482, 44.0597649, -1.38457381e-07, -6.21204481e-06, -1, -1.1573351e-05, -0.999996543, 6.72009583e-06, -1, 3.97761823e-06, 1.09616794e-05)
WedgePart393.BottomSurface = Enum.SurfaceType.Weld
WedgePart393.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart393.Position = Vector3.new(4.59036112, 6.80025482, 44.0597649)
WedgePart393.Orientation = Vector3.new(0, -90, -180)
WedgePart393.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh394.Parent = WedgePart393
SpecialMesh394.MeshType = Enum.MeshType.Wedge
WedgePart395.Parent = Model0
WedgePart395.Material = Enum.Material.Metal
WedgePart395.BrickColor = BrickColor.new("Grime")
WedgePart395.Rotation = Vector3.new(180, -90, 0)
WedgePart395.FormFactor = Enum.FormFactor.Custom
WedgePart395.Size = Vector3.new(5.19999981, 0.800000072, 1.4000001)
WedgePart395.CFrame = CFrame.new(4.59042549, 6.80014467, 33.6591415, 5.75830927e-06, -5.91780463e-06, -1, -1.57273789e-05, -1, 6.3936277e-06, -1, 8.98918006e-06, 3.81148857e-06)
WedgePart395.BottomSurface = Enum.SurfaceType.Weld
WedgePart395.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart395.Position = Vector3.new(4.59042549, 6.80014467, 33.6591415)
WedgePart395.Orientation = Vector3.new(0, -90, -180)
WedgePart395.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh396.Parent = WedgePart395
SpecialMesh396.MeshType = Enum.MeshType.Wedge
WedgePart397.Parent = Model0
WedgePart397.Material = Enum.Material.Metal
WedgePart397.BrickColor = BrickColor.new("Grime")
WedgePart397.Rotation = Vector3.new(180, 90, 0)
WedgePart397.CanCollide = false
WedgePart397.FormFactor = Enum.FormFactor.Custom
WedgePart397.Size = Vector3.new(5.19999981, 1.60000014, 0.400000006)
WedgePart397.CFrame = CFrame.new(-4.10966873, 3.60070205, 44.0600739, -1.83692464e-05, -5.51331595e-06, 1, 1.6215803e-05, -0.99999088, -5.89260162e-06, 1.00000012, 1.0839356e-05, 1.07093201e-05)
WedgePart397.BottomSurface = Enum.SurfaceType.Weld
WedgePart397.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart397.Position = Vector3.new(-4.10966873, 3.60070205, 44.0600739)
WedgePart397.Orientation = Vector3.new(0, 90, 180)
WedgePart397.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh398.Parent = WedgePart397
SpecialMesh398.MeshType = Enum.MeshType.Wedge
WedgePart399.Parent = Model0
WedgePart399.Material = Enum.Material.Metal
WedgePart399.BrickColor = BrickColor.new("Grime")
WedgePart399.Rotation = Vector3.new(-180, -90, 0)
WedgePart399.FormFactor = Enum.FormFactor.Custom
WedgePart399.Size = Vector3.new(5.19999981, 1.20000005, 0.800000072)
WedgePart399.CFrame = CFrame.new(3.49025035, 5.80047512, 44.0598679, 1.49187254e-05, -5.46336423e-06, -1, 1.28550873e-05, -0.99999088, 5.84314057e-06, -1.00000012, -1.82317744e-05, -7.25863902e-06)
WedgePart399.BottomSurface = Enum.SurfaceType.Weld
WedgePart399.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart399.Position = Vector3.new(3.49025035, 5.80047512, 44.0598679)
WedgePart399.Orientation = Vector3.new(0, -90, 180)
WedgePart399.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh400.Parent = WedgePart399
SpecialMesh400.MeshType = Enum.MeshType.Wedge
WedgePart401.Parent = Model0
WedgePart401.Material = Enum.Material.Metal
WedgePart401.BrickColor = BrickColor.new("Grime")
WedgePart401.Rotation = Vector3.new(-180, -90, 0)
WedgePart401.FormFactor = Enum.FormFactor.Custom
WedgePart401.Size = Vector3.new(5.19999981, 2.4000001, 0.800000072)
WedgePart401.CFrame = CFrame.new(2.69040108, 4.00057888, 33.659893, -1.2307155e-05, -6.81548408e-06, -1, 4.87608668e-06, -1, 6.82578775e-06, -1, -5.02421426e-06, 1.25180559e-05)
WedgePart401.BottomSurface = Enum.SurfaceType.Weld
WedgePart401.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart401.Position = Vector3.new(2.69040108, 4.00057888, 33.659893)
WedgePart401.Orientation = Vector3.new(0, -90, 180)
WedgePart401.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh402.Parent = WedgePart401
SpecialMesh402.MeshType = Enum.MeshType.Wedge
WedgePart403.Parent = Model0
WedgePart403.Material = Enum.Material.Metal
WedgePart403.BrickColor = BrickColor.new("Grime")
WedgePart403.Rotation = Vector3.new(180, 90, 0)
WedgePart403.FormFactor = Enum.FormFactor.Custom
WedgePart403.Size = Vector3.new(5.19999981, 1.4000001, 1.80000007)
WedgePart403.CFrame = CFrame.new(15.3911648, 6.50011253, 33.6598206, -5.57357816e-06, -6.14820556e-06, 1, 6.22643574e-06, -1, -6.27145073e-06, 1, 4.4634462e-06, 3.06545007e-06)
WedgePart403.BottomSurface = Enum.SurfaceType.Weld
WedgePart403.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart403.Position = Vector3.new(15.3911648, 6.50011253, 33.6598206)
WedgePart403.Orientation = Vector3.new(0, 90, 180)
WedgePart403.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh404.Parent = WedgePart403
SpecialMesh404.MeshType = Enum.MeshType.Wedge
WedgePart405.Parent = Model0
WedgePart405.Material = Enum.Material.Metal
WedgePart405.BrickColor = BrickColor.new("Grime")
WedgePart405.Rotation = Vector3.new(180, 90, 0)
WedgePart405.CanCollide = false
WedgePart405.FormFactor = Enum.FormFactor.Custom
WedgePart405.Size = Vector3.new(5.19999981, 0.800000072, 0.600000024)
WedgePart405.CFrame = CFrame.new(-4.60990286, 4.80025768, 33.6599922, -1.13140413e-05, -5.86295255e-06, 1, 1.95633838e-05, -0.999981761, -6.5924678e-06, 1.00000024, 9.23195239e-06, -3.40660699e-06)
WedgePart405.BottomSurface = Enum.SurfaceType.Weld
WedgePart405.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart405.Position = Vector3.new(-4.60990286, 4.80025768, 33.6599922)
WedgePart405.Orientation = Vector3.new(0, 90, 180)
WedgePart405.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh406.Parent = WedgePart405
SpecialMesh406.MeshType = Enum.MeshType.Wedge
WedgePart407.Parent = Model0
WedgePart407.Material = Enum.Material.Metal
WedgePart407.BrickColor = BrickColor.new("Grime")
WedgePart407.Rotation = Vector3.new(180, -90, 0)
WedgePart407.FormFactor = Enum.FormFactor.Custom
WedgePart407.Size = Vector3.new(1.59999871, 2, 1.79999995)
WedgePart407.CFrame = CFrame.new(-16.609375, 5.00049973, 45.8597336, 6.52338531e-06, -6.1213882e-06, -1, -1.60775817e-05, -1, 6.68229768e-06, -1, 8.12245889e-06, 4.77771937e-06)
WedgePart407.BottomSurface = Enum.SurfaceType.Smooth
WedgePart407.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart407.Position = Vector3.new(-16.609375, 5.00049973, 45.8597336)
WedgePart407.Orientation = Vector3.new(0, -90, -180)
WedgePart407.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh408.Parent = WedgePart407
SpecialMesh408.MeshType = Enum.MeshType.Wedge
Part409.Parent = Model0
Part409.Material = Enum.Material.Metal
Part409.BrickColor = BrickColor.new("Grime")
Part409.Rotation = Vector3.new(180, 0, -180)
Part409.FormFactor = Enum.FormFactor.Custom
Part409.Size = Vector3.new(1.19999981, 1.20000005, 15.999999)
Part409.CFrame = CFrame.new(18.0901623, 3.40006208, 38.8598328, -1, 6.87710462e-06, -1.40845405e-05, 7.06488026e-06, 1, -9.22855088e-06, 1.79022245e-05, -6.54521045e-06, -1)
Part409.BackSurface = Enum.SurfaceType.Weld
Part409.BottomSurface = Enum.SurfaceType.Weld
Part409.LeftSurface = Enum.SurfaceType.Weld
Part409.RightSurface = Enum.SurfaceType.Weld
Part409.TopSurface = Enum.SurfaceType.Weld
Part409.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part409.Position = Vector3.new(18.0901623, 3.40006208, 38.8598328)
Part409.Orientation = Vector3.new(0, -180, 0)
Part409.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh410.Parent = Part409
Part411.Parent = Model0
Part411.Material = Enum.Material.Metal
Part411.BrickColor = BrickColor.new("Grime")
Part411.Rotation = Vector3.new(-180, 0, -180)
Part411.FormFactor = Enum.FormFactor.Custom
Part411.Size = Vector3.new(2.00000024, 4, 15.6000004)
Part411.CFrame = CFrame.new(18.0899773, 6.00011158, 38.8595161, -1, 8.79176241e-06, -5.25169889e-05, 8.88845261e-06, 1, 7.70221322e-06, 5.44925242e-05, 9.09026676e-06, -1)
Part411.BackSurface = Enum.SurfaceType.Weld
Part411.BottomSurface = Enum.SurfaceType.Weld
Part411.FrontSurface = Enum.SurfaceType.Weld
Part411.LeftSurface = Enum.SurfaceType.Weld
Part411.RightSurface = Enum.SurfaceType.Weld
Part411.TopSurface = Enum.SurfaceType.Weld
Part411.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part411.Position = Vector3.new(18.0899773, 6.00011158, 38.8595161)
Part411.Orientation = Vector3.new(0, -180, 0)
Part411.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh412.Parent = Part411
Part413.Parent = Model0
Part413.Material = Enum.Material.Metal
Part413.BrickColor = BrickColor.new("Grime")
Part413.Rotation = Vector3.new(-180, 0, -180)
Part413.CanCollide = false
Part413.FormFactor = Enum.FormFactor.Custom
Part413.Size = Vector3.new(6.19999981, 2.39999986, 5.19999981)
Part413.CFrame = CFrame.new(-0.809948921, 4.00028038, 44.0597649, -1, 6.57104692e-06, -7.88472062e-06, 6.95060317e-06, 0.99999088, 2.1937858e-06, 1.55447615e-05, 7.57022963e-06, -1.00000012)
Part413.BackSurface = Enum.SurfaceType.Weld
Part413.BottomSurface = Enum.SurfaceType.Weld
Part413.FrontSurface = Enum.SurfaceType.Weld
Part413.LeftSurface = Enum.SurfaceType.Weld
Part413.RightSurface = Enum.SurfaceType.Weld
Part413.TopSurface = Enum.SurfaceType.Weld
Part413.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part413.Position = Vector3.new(-0.809948921, 4.00028038, 44.0597649)
Part413.Orientation = Vector3.new(0, -180, 0)
Part413.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh414.Parent = Part413
Part415.Parent = Model0
Part415.Material = Enum.Material.Metal
Part415.BrickColor = BrickColor.new("Grime")
Part415.Rotation = Vector3.new(180, 0, -180)
Part415.FormFactor = Enum.FormFactor.Custom
Part415.Size = Vector3.new(13.1999998, 1.19999969, 12.4000006)
Part415.CFrame = CFrame.new(10.0900612, 3.40011263, 38.85989, -1, 6.44758302e-06, -5.45887087e-06, 6.45471619e-06, 1, -7.73913871e-06, 5.60309672e-06, -7.63776461e-06, -1)
Part415.BottomSurface = Enum.SurfaceType.Weld
Part415.LeftSurface = Enum.SurfaceType.Weld
Part415.RightSurface = Enum.SurfaceType.Weld
Part415.TopSurface = Enum.SurfaceType.Weld
Part415.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part415.Position = Vector3.new(10.0900612, 3.40011263, 38.85989)
Part415.Orientation = Vector3.new(0, -180, 0)
Part415.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh416.Parent = Part415
BlockMesh416.Offset = Vector3.new(0, 2, 0)
BlockMesh416.Scale = Vector3.new(1.20000005, 4.33400011, 1)
BlockMesh416.Scale = Vector3.new(1.20000005, 4.33400011, 1)
Part417.Parent = Model0
Part417.Material = Enum.Material.Metal
Part417.BrickColor = BrickColor.new("Really black")
Part417.Rotation = Vector3.new(90, -90, 0)
Part417.CanCollide = false
Part417.FormFactor = Enum.FormFactor.Custom
Part417.Size = Vector3.new(5.5999999, 1.79999995, 5.60000038)
Part417.CFrame = CFrame.new(-7.30992794, 2.80029297, 45.9599228, -5.31013347e-06, -1.75913701e-05, -1, -1, 8.41797737e-06, 5.30998523e-06, 8.4178846e-06, 1, -1.75914138e-05)
Part417.BottomSurface = Enum.SurfaceType.Weld
Part417.FrontSurface = Enum.SurfaceType.Weld
Part417.LeftSurface = Enum.SurfaceType.Weld
Part417.RightSurface = Enum.SurfaceType.Weld
Part417.TopSurface = Enum.SurfaceType.Weld
Part417.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part417.Position = Vector3.new(-7.30992794, 2.80029297, 45.9599228)
Part417.Orientation = Vector3.new(0, -90, -90)
Part417.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
CylinderMesh418.Parent = Part417
Part419.Name = "wheel"
Part419.Parent = Model0
Part419.Material = Enum.Material.Metal
Part419.BrickColor = BrickColor.new("Grime")
Part419.Transparency = 1
Part419.Rotation = Vector3.new(90, 90, 0)
Part419.FormFactor = Enum.FormFactor.Symmetric
Part419.Friction = 1
Part419.Shape = Enum.PartType.Ball
Part419.Size = Vector3.new(5, 5, 5)
Part419.CFrame = CFrame.new(18.0901184, 2.99934506, 28.3597851, 2.72848411e-09, 5.54910464e-08, 1, 1, 4.68062353e-08, -3.27418093e-09, -3.90050445e-08, 1, -6.65888464e-08)
Part419.BottomSurface = Enum.SurfaceType.Smooth
Part419.TopSurface = Enum.SurfaceType.Hinge
Part419.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part419.Position = Vector3.new(18.0901184, 2.99934506, 28.3597851)
Part419.Orientation = Vector3.new(0, 90, 90)
Part419.Color = Color3.new(0.498039, 0.556863, 0.392157)
CylinderMesh420.Parent = Part419
CylinderMesh420.Offset = Vector3.new(0, -1.10000002, 0)
CylinderMesh420.Scale = Vector3.new(1, 0.600000024, 1)
CylinderMesh420.Scale = Vector3.new(1, 0.600000024, 1)
Part421.Parent = Model0
Part421.Material = Enum.Material.Metal
Part421.BrickColor = BrickColor.new("Really black")
Part421.Rotation = Vector3.new(-90, 90, 0)
Part421.CanCollide = false
Part421.FormFactor = Enum.FormFactor.Custom
Part421.Size = Vector3.new(5.5999999, 1.79999995, 5.60000038)
Part421.CFrame = CFrame.new(6.2899642, 2.80008507, 31.7599297, -6.44921874e-06, -5.4921652e-06, 1, -1, -7.7157365e-06, -6.45307955e-06, 7.66116682e-06, -1, -5.5698024e-06)
Part421.BottomSurface = Enum.SurfaceType.Weld
Part421.FrontSurface = Enum.SurfaceType.Weld
Part421.LeftSurface = Enum.SurfaceType.Weld
Part421.RightSurface = Enum.SurfaceType.Weld
Part421.TopSurface = Enum.SurfaceType.Weld
Part421.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part421.Position = Vector3.new(6.2899642, 2.80008507, 31.7599297)
Part421.Orientation = Vector3.new(0, 90, -90)
Part421.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
CylinderMesh422.Parent = Part421
Part423.Parent = Model0
Part423.Material = Enum.Material.Metal
Part423.BrickColor = BrickColor.new("Really black")
Part423.Rotation = Vector3.new(-90, 90, 0)
Part423.CanCollide = false
Part423.FormFactor = Enum.FormFactor.Custom
Part423.Size = Vector3.new(5.5999999, 1.79999995, 5.60000038)
Part423.CFrame = CFrame.new(13.4899158, 2.80003095, 31.7598763, -6.44921874e-06, -5.4921652e-06, 1, -1, -7.7157365e-06, -6.45307955e-06, 7.66116682e-06, -1, -5.5698024e-06)
Part423.BottomSurface = Enum.SurfaceType.Weld
Part423.FrontSurface = Enum.SurfaceType.Weld
Part423.LeftSurface = Enum.SurfaceType.Weld
Part423.RightSurface = Enum.SurfaceType.Weld
Part423.TopSurface = Enum.SurfaceType.Smooth
Part423.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part423.Position = Vector3.new(13.4899158, 2.80003095, 31.7598763)
Part423.Orientation = Vector3.new(0, 90, -90)
Part423.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
CylinderMesh424.Parent = Part423
Part425.Parent = Model0
Part425.Material = Enum.Material.Metal
Part425.BrickColor = BrickColor.new("Really black")
Part425.Rotation = Vector3.new(90, -90, 0)
Part425.CanCollide = false
Part425.FormFactor = Enum.FormFactor.Custom
Part425.Size = Vector3.new(5.5999999, 1.79999995, 5.60000038)
Part425.CFrame = CFrame.new(6.29016876, 2.80019403, 45.9599304, -6.44921874e-06, 5.4921652e-06, -1, -1, 7.7157365e-06, 6.45307955e-06, 7.66116682e-06, 1, 5.5698024e-06)
Part425.BottomSurface = Enum.SurfaceType.Weld
Part425.FrontSurface = Enum.SurfaceType.Weld
Part425.LeftSurface = Enum.SurfaceType.Weld
Part425.RightSurface = Enum.SurfaceType.Weld
Part425.TopSurface = Enum.SurfaceType.Weld
Part425.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part425.Position = Vector3.new(6.29016876, 2.80019403, 45.9599304)
Part425.Orientation = Vector3.new(0, -90, -90)
Part425.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
CylinderMesh426.Parent = Part425
Part427.Parent = Model0
Part427.Material = Enum.Material.Metal
Part427.BrickColor = BrickColor.new("Grime")
Part427.Rotation = Vector3.new(-180, 0, -180)
Part427.CanCollide = false
Part427.FormFactor = Enum.FormFactor.Custom
Part427.Size = Vector3.new(0.800000191, 1.40000021, 5.19999981)
Part427.CFrame = CFrame.new(16.6901779, 6.50009441, 44.059761, -1, 7.6314127e-06, -2.93200592e-05, 7.72801832e-06, 1, 1.66543414e-05, 3.12956508e-05, 1.80426377e-05, -1)
Part427.BackSurface = Enum.SurfaceType.Weld
Part427.BottomSurface = Enum.SurfaceType.Weld
Part427.FrontSurface = Enum.SurfaceType.Weld
Part427.LeftSurface = Enum.SurfaceType.Weld
Part427.RightSurface = Enum.SurfaceType.Weld
Part427.TopSurface = Enum.SurfaceType.Weld
Part427.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part427.Position = Vector3.new(16.6901779, 6.50009441, 44.059761)
Part427.Orientation = Vector3.new(0, -180, 0)
Part427.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh428.Parent = Part427
WedgePart429.Parent = Model0
WedgePart429.Material = Enum.Material.Metal
WedgePart429.BrickColor = BrickColor.new("Grime")
WedgePart429.Rotation = Vector3.new(-180, -90, 0)
WedgePart429.FormFactor = Enum.FormFactor.Custom
WedgePart429.Size = Vector3.new(5.19999981, 2.4000001, 0.800000072)
WedgePart429.CFrame = CFrame.new(2.69045496, 4.00031519, 44.0597382, -1.79814906e-05, -7.07093022e-06, -1, 9.26739267e-06, -0.99999088, 7.4503323e-06, -1.00000012, -1.46438188e-05, 2.5641586e-05)
WedgePart429.BottomSurface = Enum.SurfaceType.Weld
WedgePart429.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart429.Position = Vector3.new(2.69045496, 4.00031519, 44.0597382)
WedgePart429.Orientation = Vector3.new(0, -90, 180)
WedgePart429.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh430.Parent = WedgePart429
SpecialMesh430.MeshType = Enum.MeshType.Wedge
WedgePart431.Parent = Model0
WedgePart431.Material = Enum.Material.Metal
WedgePart431.BrickColor = BrickColor.new("Grime")
WedgePart431.Rotation = Vector3.new(180, 90, 0)
WedgePart431.FormFactor = Enum.FormFactor.Custom
WedgePart431.Size = Vector3.new(5.19999981, 1.4000001, 1.80000007)
WedgePart431.CFrame = CFrame.new(15.3902655, 6.50043106, 44.0596695, -1.61600074e-05, -5.6243216e-06, 1, 1.58236417e-05, -1, -6.17393925e-06, 1, 7.96042968e-06, 4.97321707e-06)
WedgePart431.BottomSurface = Enum.SurfaceType.Weld
WedgePart431.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart431.Position = Vector3.new(15.3902655, 6.50043106, 44.0596695)
WedgePart431.Orientation = Vector3.new(0, 90, 180)
WedgePart431.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh432.Parent = WedgePart431
SpecialMesh432.MeshType = Enum.MeshType.Wedge
Part433.Name = "wheel"
Part433.Parent = Model0
Part433.Material = Enum.Material.Metal
Part433.BrickColor = BrickColor.new("Grime")
Part433.Transparency = 1
Part433.Rotation = Vector3.new(-90, -90, 0)
Part433.FormFactor = Enum.FormFactor.Symmetric
Part433.Friction = 1
Part433.Shape = Enum.PartType.Ball
Part433.Size = Vector3.new(5, 5, 5)
Part433.CFrame = CFrame.new(18.0901108, 2.99934506, 49.3595123, 2.72848411e-09, -5.54910464e-08, -1, 1, -4.68062353e-08, 3.27418093e-09, -3.90050445e-08, -1, 6.65888464e-08)
Part433.BottomSurface = Enum.SurfaceType.Smooth
Part433.TopSurface = Enum.SurfaceType.Hinge
Part433.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part433.Position = Vector3.new(18.0901108, 2.99934506, 49.3595123)
Part433.Orientation = Vector3.new(0, -90, 90)
Part433.Color = Color3.new(0.498039, 0.556863, 0.392157)
CylinderMesh434.Parent = Part433
CylinderMesh434.Offset = Vector3.new(0, -1.10000002, 0)
CylinderMesh434.Scale = Vector3.new(1, 0.600000024, 1)
CylinderMesh434.Scale = Vector3.new(1, 0.600000024, 1)
Part435.Parent = Model0
Part435.Material = Enum.Material.Metal
Part435.BrickColor = BrickColor.new("Really black")
Part435.Rotation = Vector3.new(90, -90, 0)
Part435.CanCollide = false
Part435.FormFactor = Enum.FormFactor.Custom
Part435.Size = Vector3.new(5.5999999, 1.79999995, 5.60000038)
Part435.CFrame = CFrame.new(13.4901199, 2.80014706, 45.9598923, -6.44921874e-06, 5.4921652e-06, -1, -1, 7.7157365e-06, 6.45307955e-06, 7.66116682e-06, 1, 5.5698024e-06)
Part435.BottomSurface = Enum.SurfaceType.Weld
Part435.FrontSurface = Enum.SurfaceType.Weld
Part435.LeftSurface = Enum.SurfaceType.Weld
Part435.RightSurface = Enum.SurfaceType.Weld
Part435.TopSurface = Enum.SurfaceType.Smooth
Part435.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part435.Position = Vector3.new(13.4901199, 2.80014706, 45.9598923)
Part435.Orientation = Vector3.new(0, -90, -90)
Part435.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
CylinderMesh436.Parent = Part435
Part437.Parent = Model0
Part437.Material = Enum.Material.Metal
Part437.BrickColor = BrickColor.new("Grime")
Part437.Rotation = Vector3.new(90, -90, 0)
Part437.CanCollide = false
Part437.FormFactor = Enum.FormFactor.Custom
Part437.Size = Vector3.new(3.59999943, 0.200000003, 3.20000005)
Part437.CFrame = CFrame.new(-13.9098864, 2.80032659, 46.9600143, -6.56966131e-06, -1.93433134e-05, -1, -1, 9.822832e-06, 6.56947122e-06, 9.82270558e-06, 1, -1.93433771e-05)
Part437.BottomSurface = Enum.SurfaceType.Weld
Part437.FrontSurface = Enum.SurfaceType.Weld
Part437.LeftSurface = Enum.SurfaceType.Weld
Part437.RightSurface = Enum.SurfaceType.Weld
Part437.TopSurface = Enum.SurfaceType.Weld
Part437.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part437.Position = Vector3.new(-13.9098864, 2.80032659, 46.9600143)
Part437.Orientation = Vector3.new(0, -90, -90)
Part437.Color = Color3.new(0.498039, 0.556863, 0.392157)
CylinderMesh438.Parent = Part437
CylinderMesh438.Offset = Vector3.new(0, -0.170000002, 0)
Part439.Parent = Model0
Part439.Material = Enum.Material.Metal
Part439.BrickColor = BrickColor.new("Grime")
Part439.Rotation = Vector3.new(90, -90, 0)
Part439.CanCollide = false
Part439.FormFactor = Enum.FormFactor.Custom
Part439.Size = Vector3.new(3.59999943, 0.200000003, 3.20000005)
Part439.CFrame = CFrame.new(13.5900993, 2.8001523, 46.9598885, -6.44267539e-06, 5.35898835e-06, -1, -1, 7.80934624e-06, 6.45962518e-06, 7.56755799e-06, 1, 5.70298016e-06)
Part439.BottomSurface = Enum.SurfaceType.Weld
Part439.FrontSurface = Enum.SurfaceType.Weld
Part439.LeftSurface = Enum.SurfaceType.Weld
Part439.RightSurface = Enum.SurfaceType.Weld
Part439.TopSurface = Enum.SurfaceType.Weld
Part439.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part439.Position = Vector3.new(13.5900993, 2.8001523, 46.9598885)
Part439.Orientation = Vector3.new(0, -90, -90)
Part439.Color = Color3.new(0.498039, 0.556863, 0.392157)
CylinderMesh440.Parent = Part439
CylinderMesh440.Offset = Vector3.new(0, -0.170000002, 0)
Part441.Parent = Model0
Part441.Material = Enum.Material.Metal
Part441.BrickColor = BrickColor.new("Grime")
Part441.Rotation = Vector3.new(90, -90, 0)
Part441.CanCollide = false
Part441.FormFactor = Enum.FormFactor.Custom
Part441.Size = Vector3.new(3.59999943, 0.200000003, 3.20000005)
Part441.CFrame = CFrame.new(6.28996181, 2.70008087, 30.7599239, -6.44267539e-06, 5.35898835e-06, -1, -1, 7.80934624e-06, 6.45962518e-06, 7.56755799e-06, 1, 5.70298016e-06)
Part441.BottomSurface = Enum.SurfaceType.Weld
Part441.FrontSurface = Enum.SurfaceType.Weld
Part441.LeftSurface = Enum.SurfaceType.Weld
Part441.RightSurface = Enum.SurfaceType.Weld
Part441.TopSurface = Enum.SurfaceType.Weld
Part441.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part441.Position = Vector3.new(6.28996181, 2.70008087, 30.7599239)
Part441.Orientation = Vector3.new(0, -90, -90)
Part441.Color = Color3.new(0.498039, 0.556863, 0.392157)
CylinderMesh442.Parent = Part441
CylinderMesh442.Offset = Vector3.new(0, -0.170000002, 0)
Part443.Parent = Model0
Part443.Material = Enum.Material.Metal
Part443.BrickColor = BrickColor.new("Grime")
Part443.Rotation = Vector3.new(90, -90, 0)
Part443.CanCollide = false
Part443.FormFactor = Enum.FormFactor.Custom
Part443.Size = Vector3.new(3.59999943, 0.200000003, 3.20000005)
Part443.CFrame = CFrame.new(-7.40999508, 2.70016646, 30.7599983, -6.36196455e-06, 3.71647275e-06, -1, -1, 8.96386427e-06, 6.54035557e-06, 6.41305041e-06, 1, 7.34550258e-06)
Part443.BottomSurface = Enum.SurfaceType.Weld
Part443.FrontSurface = Enum.SurfaceType.Weld
Part443.LeftSurface = Enum.SurfaceType.Weld
Part443.RightSurface = Enum.SurfaceType.Weld
Part443.TopSurface = Enum.SurfaceType.Weld
Part443.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part443.Position = Vector3.new(-7.40999508, 2.70016646, 30.7599983)
Part443.Orientation = Vector3.new(0, -90, -90)
Part443.Color = Color3.new(0.498039, 0.556863, 0.392157)
CylinderMesh444.Parent = Part443
CylinderMesh444.Offset = Vector3.new(0, -0.170000002, 0)
Part445.Parent = Model0
Part445.Material = Enum.Material.Metal
Part445.BrickColor = BrickColor.new("Grime")
Part445.Rotation = Vector3.new(90, -90, 0)
Part445.CanCollide = false
Part445.FormFactor = Enum.FormFactor.Custom
Part445.Size = Vector3.new(3.59999943, 0.200000003, 3.20000005)
Part445.CFrame = CFrame.new(13.4899139, 2.70003438, 30.759882, -6.44267539e-06, 5.35898835e-06, -1, -1, 7.80934624e-06, 6.45962518e-06, 7.56755799e-06, 1, 5.70298016e-06)
Part445.BottomSurface = Enum.SurfaceType.Weld
Part445.FrontSurface = Enum.SurfaceType.Weld
Part445.LeftSurface = Enum.SurfaceType.Weld
Part445.RightSurface = Enum.SurfaceType.Weld
Part445.TopSurface = Enum.SurfaceType.Weld
Part445.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part445.Position = Vector3.new(13.4899139, 2.70003438, 30.759882)
Part445.Orientation = Vector3.new(0, -90, -90)
Part445.Color = Color3.new(0.498039, 0.556863, 0.392157)
CylinderMesh446.Parent = Part445
CylinderMesh446.Offset = Vector3.new(0, -0.170000002, 0)
Part447.Parent = Model0
Part447.Material = Enum.Material.Metal
Part447.BrickColor = BrickColor.new("Grime")
Part447.Rotation = Vector3.new(90, -90, 0)
Part447.CanCollide = false
Part447.FormFactor = Enum.FormFactor.Custom
Part447.Size = Vector3.new(3.59999943, 0.200000003, 3.20000005)
Part447.CFrame = CFrame.new(-13.9099846, 2.80021143, 30.7600117, -6.36196455e-06, 3.71647275e-06, -1, -1, 8.96386427e-06, 6.54035557e-06, 6.41305041e-06, 1, 7.34550258e-06)
Part447.BottomSurface = Enum.SurfaceType.Weld
Part447.FrontSurface = Enum.SurfaceType.Weld
Part447.LeftSurface = Enum.SurfaceType.Weld
Part447.RightSurface = Enum.SurfaceType.Weld
Part447.TopSurface = Enum.SurfaceType.Weld
Part447.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part447.Position = Vector3.new(-13.9099846, 2.80021143, 30.7600117)
Part447.Orientation = Vector3.new(0, -90, -90)
Part447.Color = Color3.new(0.498039, 0.556863, 0.392157)
CylinderMesh448.Parent = Part447
CylinderMesh448.Offset = Vector3.new(0, -0.170000002, 0)
Part449.Parent = Model0
Part449.Material = Enum.Material.Metal
Part449.BrickColor = BrickColor.new("Grime")
Part449.Rotation = Vector3.new(90, -90, 0)
Part449.CanCollide = false
Part449.FormFactor = Enum.FormFactor.Custom
Part449.Size = Vector3.new(3.59999943, 0.200000003, 3.20000005)
Part449.CFrame = CFrame.new(-7.30978823, 2.80027866, 46.9599609, -6.56966131e-06, -1.93433134e-05, -1, -1, 9.822832e-06, 6.56947122e-06, 9.82270558e-06, 1, -1.93433771e-05)
Part449.BottomSurface = Enum.SurfaceType.Weld
Part449.FrontSurface = Enum.SurfaceType.Weld
Part449.LeftSurface = Enum.SurfaceType.Weld
Part449.RightSurface = Enum.SurfaceType.Weld
Part449.TopSurface = Enum.SurfaceType.Weld
Part449.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part449.Position = Vector3.new(-7.30978823, 2.80027866, 46.9599609)
Part449.Orientation = Vector3.new(0, -90, -90)
Part449.Color = Color3.new(0.498039, 0.556863, 0.392157)
CylinderMesh450.Parent = Part449
CylinderMesh450.Offset = Vector3.new(0, -0.170000002, 0)
Part451.Parent = Model0
Part451.Material = Enum.Material.Metal
Part451.BrickColor = BrickColor.new("Grime")
Part451.Rotation = Vector3.new(90, -90, 0)
Part451.CanCollide = false
Part451.FormFactor = Enum.FormFactor.Custom
Part451.Size = Vector3.new(3.59999943, 0.200000003, 3.20000005)
Part451.CFrame = CFrame.new(6.2901721, 2.80019784, 46.9599152, -6.44267539e-06, 5.35898835e-06, -1, -1, 7.80934624e-06, 6.45962518e-06, 7.56755799e-06, 1, 5.70298016e-06)
Part451.BottomSurface = Enum.SurfaceType.Weld
Part451.FrontSurface = Enum.SurfaceType.Weld
Part451.LeftSurface = Enum.SurfaceType.Weld
Part451.RightSurface = Enum.SurfaceType.Weld
Part451.TopSurface = Enum.SurfaceType.Weld
Part451.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part451.Position = Vector3.new(6.2901721, 2.80019784, 46.9599152)
Part451.Orientation = Vector3.new(0, -90, -90)
Part451.Color = Color3.new(0.498039, 0.556863, 0.392157)
CylinderMesh452.Parent = Part451
CylinderMesh452.Offset = Vector3.new(0, -0.170000002, 0)
for i,v in pairs(mas:GetChildren()) do
	v.Parent = workspace
	pcall(function() v:MakeJoints() end)
end
mas:Destroy()
for i,v in pairs(cors) do
	spawn(function()
		pcall(v)
	end)
end


  	end    

})

Tab:AddButton({

	Name = "传送玩家",

	Callback = function()

     loadstring(game:HttpGet('https://raw.githubusercontent.com/Infinity2346/Tect-Menu/main/Teleport%20Gui.lua'))()

  	end    

})

Tab:AddButton({

	Name = "位置吸人",

	Callback = function()

     --[[
Subscribe to Zaptosis
--]]

local L_1_ = true;
local L_2_ = game.Players.LocalPlayer.Character.HumanoidRootPart;
local L_3_ = L_2_.Position - Vector3.new(5, 0, 0)

game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(L_4_arg1)
	if L_4_arg1 == 'f' then
		L_1_ = not L_1_
	end;
	if L_4_arg1 == 'r' then
		L_2_ = game.Players.LocalPlayer.Character.HumanoidRootPart;
		L_3_ = L_2_.Position - Vector3.new(5, 0, 0)
	end
end)

for L_5_forvar1, L_6_forvar2 in pairs(game.Players:GetPlayers()) do
	if L_6_forvar2 == game.Players.LocalPlayer then
	else
		local L_7_ = coroutine.create(function()
			game:GetService('RunService').RenderStepped:Connect(function()
				local L_8_, L_9_ = pcall(function()
					local L_10_ = L_6_forvar2.Character;
					if L_10_ then
						if L_10_:FindFirstChild("HumanoidRootPart") then
							if L_1_ then
								L_6_forvar2.Backpack:ClearAllChildren()
								for L_11_forvar1, L_12_forvar2 in pairs(L_10_:GetChildren()) do
									if L_12_forvar2:IsA("Tool") then
										L_12_forvar2:Destroy()
									end
								end;
								L_10_.HumanoidRootPart.CFrame = CFrame.new(L_3_)
							end
						end
					end
				end)
				if L_8_ then
				else
					warn("Unnormal error: "..L_9_)
				end
			end)
		end)
		coroutine.resume(L_7_)
	end
end;

game.Players.PlayerAdded:Connect(function(L_13_arg1)   
	if L_13_arg1 == game.Players.LocalPlayer then
	else
		local L_14_ = coroutine.create(function()
			game:GetService('RunService').RenderStepped:Connect(function()
				local L_15_, L_16_ = pcall(function()
					local L_17_ = L_13_arg1.Character;
					if L_17_ then
						if L_17_:FindFirstChild("HumanoidRootPart") then
							if L_1_ then
								L_13_arg1.Backpack:ClearAllChildren()
								for L_18_forvar1, L_19_forvar2 in pairs(L_17_:GetChildren()) do
									if L_19_forvar2:IsA("Tool") then
										L_19_forvar2:Destroy()
									end
								end;
								L_17_.HumanoidRootPart.CFrame = CFrame.new(L_3_)
							end
						end
					end
				end)
				if L_15_ then
				else
					warn("Unnormal error: "..L_16_)
				end
			end)
		end)
		coroutine.resume(L_14_)
	end           
end)

  	end    

})

local Tab = Window:MakeTab({

    Name = "道具",

    Icon = "rbxassetid://4483345998",

    PremiumOnly = false

})

Tab:AddButton({

	Name = "偷别人物品",

	Callback = function()

     --Copy And Paste:
for i,v in pairs (game.Players:GetChildren()) do
wait()
for i,b in pairs (v.Backpack:GetChildren()) do
b.Parent = game.Players.LocalPlayer.Backpack
end
end

  	end    

})

Tab:AddButton({

	Name = "传送工具",

	Callback = function()

     mouse = game.Players.LocalPlayer:GetMouse() tool = Instance.new("Tool") tool.RequiresHandle = false tool.Name = "[FE] TELEPORT TOOL" tool.Activated:connect(function() local pos = mouse.Hit+Vector3.new(0,2.5,0) pos = CFrame.new(pos.X,pos.Y,pos.Z) game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos end) tool.Parent = game.Players.LocalPlayer.Backpack

  	end    

})

Tab:AddButton({

	Name = "建筑工具",

	Callback = function()

     loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/BTools.txt"))()

  	end    

})

Tab:AddButton({

	Name = "隐身工具",

	Callback = function()

     loadstring(game:HttpGet("https://gist.githubusercontent.com/skid123skidlol/cd0d2dce51b3f20ad1aac941da06a1a1/raw/f58b98cce7d51e53ade94e7bb460e4f24fb7e0ff/%257BFE%257D%2520Invisible%2520Tool%2520(can%2520hold%2520tools)",true))()

  	end    

})

Tab:AddButton({

	Name = "死亡笔记",

	Callback = function()

     --Made by Hirari_Tear, credits to expro for the GUI--

local Handle = Instance.new('Part')

local Mesh = Instance.new('SpecialMesh')

local Death = Instance.new('Tool')

Death.Name = "Death Note"

Handle.Name = "Handle"

Death.Parent = game.Players.LocalPlayer.Backpack

Death.GripForward = Vector3.new(0.331, -0.766, 0.551)

Death.GripPos = Vector3.new(-0.8, 0, -0.8)

Death.GripRight = Vector3.new(-0.943, -0.297, 0.152)

Death.GripUp = Vector3.new(-0.048, 0.57, 0.82)

Death.ToolTip = "Kill your fucking rival"

Handle.Parent = Death

Mesh.Parent = Handle

Mesh.MeshId = "http://www.roblox.com/asset/?id=1136139"

Mesh.TextureId = "http://www.roblox.com/asset/?id=18276952"

Mesh.Scale = Vector3.new(0.55, 0.174, 0.6)

Handle.Rotation = Vector3.new(0,-90,0)

Death.Equipped:connect(function(mouse)

local Bounce = Enum.EasingStyle.Bounce

local Quad = Enum.EasingStyle.Quad

local Normal = Enum.EasingStyle.Linear



local ScreenGui = Instance.new("ScreenGui", game.Players["LocalPlayer"].PlayerGui)

ScreenGui.Name = "Death Note"



local open = Instance.new("ImageButton", ScreenGui)

open.Position = UDim2.new(1, -110, 1, 500)

open.Size = UDim2.new(0, 100,0, 150)

open.Image = "rbxassetid://18536731"

open:TweenPosition(UDim2.new(1, -110, 1, -150), "In", Bounce, 0.8, true)



local Note = Instance.new("Frame", ScreenGui)

Note.Active = true

Note.Position = UDim2.new(1, -321, 1, 500)

Note.Size = UDim2.new(0, 320,0, 250)

Note.Visible = false

Note.Draggable = true



open.MouseButton1Down:connect(function()

open:TweenPosition(UDim2.new(open.Position.X.Scale,open.Position.X.Offset, 1, 500), "Out", Normal, 0.8, true)

wait(0.30)

open.Visible = false

Note.Visible = true

Note.Position = UDim2.new(1, -321, 1, 500)

Note:TweenPosition(UDim2.new(1, -321, 1, -251), "In", Normal, 0.5, true)

end)



local bg = Instance.new("Frame", Note)

bg.BackgroundColor3 = Color3.fromRGB(31, 31, 31)

bg.Size = UDim2.new(0, 160,0, 250)

bg.ZIndex = 2



-- Background



local close = Instance.new("TextButton", bg)

close.BackgroundColor3 = Color3.fromRGB(0, 0, 0)

close.BackgroundTransparency = 1

close.Position = UDim2.new(0, 8,0, 10)

close.Size = UDim2.new(0, 10,0, 10)

close.ZIndex = 4

close.Font = "Cartoon"

close.Text = "X"

close.TextColor3 = Color3.fromRGB(255, 255, 255)

close.TextSize = "17"



close.MouseButton1Down:connect(function()

Note:TweenPosition(UDim2.new(Note.Position.X.Scale,Note.Position.X.Offset,1, 500), "Out", Normal, 0.5, true)

wait(0.30)

Note.Visible = false

open.Visible = true

open:TweenPosition(UDim2.new(1, -110, 1, -150), "In", Normal, 0.8, true)

end)



local image1 = Instance.new("ImageLabel", bg)

image1.BackgroundTransparency = 1

image1.Size = UDim2.new(1, 0,1, 0)

image1.ZIndex = 3

image1.Image = "rbxassetid://18528551"



local title = Instance.new("TextLabel", bg)

title.BackgroundTransparency = 1

title.Position = UDim2.new(0, 0,0, 30)

title.Size = UDim2.new(1, 0,0, 30)

title.ZIndex = 4

title.Font = "Bodoni"

title.Text = "DEATH NOTE"

title.TextColor3 = Color3.fromRGB(255, 255, 255)

title.TextSize = "18"



local body = Instance.new("TextLabel", bg)

body.BackgroundTransparency = 1

body.Position = UDim2.new(0, 15,0, 65)

body.Size = UDim2.new(0, 134,0, 40)

body.ZIndex = 4

body.Font = "Garamond"

body.Text = "Type in somebody's name to kill them."

body.TextColor3 = Color3.fromRGB(255, 255, 255)

body.TextSize = "19"

body.TextWrapped = true

body.TextXAlignment = "Left"

body.TextYAlignment = "Top"



local line = Instance.new("TextLabel", body)

line.BackgroundTransparency = 1

line.Position = UDim2.new(0, 0,0, 50)

line.Size = UDim2.new(0, 130,0, 40)

line.ZIndex = 4

line.Font = "Garamond"

line.Text = "________________"

line.TextColor3 = Color3.fromRGB(255, 255, 255)

line.TextSize = "19"

line.TextWrapped = true

line.TextXAlignment = "Left"

line.TextYAlignment = "Top"



local text = Instance.new("TextLabel", body)

text.BackgroundTransparency = 1

text.Position = UDim2.new(0, 0,0, 100)

text.Size = UDim2.new(0, 134,0, 40)

text.ZIndex = 4

text.Font = "Garamond"

text.Text = "This was made by RcDZ."

text.TextColor3 = Color3.fromRGB(255, 255, 255)

text.TextSize = "19"

text.TextWrapped = true

text.TextXAlignment = "Left"

text.TextYAlignment = "Top"



-- Page



local page = Instance.new("Frame", Note)

page.BackgroundColor3 = Color3.fromRGB(236, 236, 236)

page.Position = UDim2.new(0, 160,0, 0)

page.Size = UDim2.new(0, 160,0, 250)

page.ZIndex = 2



local list = Instance.new("TextBox", page)

list.BackgroundTransparency = 1

list.Position = UDim2.new(0, 25,0, 20)

list.Size = UDim2.new(0.8, 5,0, 230)

list.ZIndex = 4

list.Font = "Antique"

list.Text = ""

list.TextColor3 = Color3.fromRGB(0, 0, 0)

list.TextSize = "23"

list.TextWrapped = true

list.TextXAlignment = "Left"

list.TextYAlignment = "Top"



local image2 = Instance.new("ImageLabel", page)

image2.BackgroundTransparency = 1

image2.Size = UDim2.new(1, 0,1, 0)

image2.ZIndex = 3

image2.Image = "rbxassetid://170279713"

image2.Transparency = 0.2



while true do

repeat wait() until game.Workspace:FindFirstChild(list.Text)

if game.Workspace[list.Text]:FindFirstChild("Humanoid") then

game.Workspace[list.Text].Humanoid.PlatformStand = true

game.Workspace[list.Text].Humanoid.Health = 0

elseif game.Workspace[list.Text]:FindFirstChild("Zombie") then

game.Workspace[list.Text].Zombie.PlatformStand = true

game.Workspace[list.Text].Zombie.Health = 0

end

end

end)

Death.Unequipped:connect(function(mouse)

game.Players.LocalPlayer.PlayerGui["Death Note"]:remove()

end)
--12333

  	end    

})

Tab:AddButton({

	Name = "分头行动",

	Callback = function()

     --made by Nightmare#0930
local lp = game.Players.LocalPlayer
local char = lp.Character

for i, v in pairs(char:GetChildren()) do
    if v:IsA("BallSocketConstraint") then
        v:Destroy()
    end
end

for i, v in pairs(char:GetChildren()) do
    if v:IsA("HingeConstraint") then
        v:Destroy()
    end
end

for i, v in pairs(char.Humanoid:GetAccessories()) do
local hat = v.Name

char[hat].Archivable = true
local fake = char[hat]:Clone()
fake.Parent = char
fake.Handle.Transparency = 1

local hold = false
local enabled = false

char[hat].Handle.AccessoryWeld:Destroy()

local tool = Instance.new("Tool", lp.Backpack)
tool.RequiresHandle = true
tool.CanBeDropped = false
tool.Name = hat

local handle = Instance.new("Part", tool)
handle.Name = "Handle"
handle.Size = Vector3.new(1, 1, 1)
handle.Massless = true
handle.Transparency = 1

local positions = {
    forward = tool.GripForward,
    pos = tool.GripPos,
    right = tool.GripRight,
    up = tool.GripUp
}

tool.Equipped:connect(function()
 hold = true
end)

tool.Unequipped:connect(function()
   hold = false
end)

tool.Activated:connect(function()
    if enabled == false then
        enabled = true
        tool.GripForward = Vector3.new(-0.976,0,-0.217)
    tool.GripPos = Vector3.new(.95,-0.76,1.4)
    tool.GripRight = Vector3.new(0.217,0, 0.976)
    tool.GripUp = Vector3.new(0,1,0)
    wait(.8)
    tool.GripForward = positions.forward
    tool.GripPos = positions.pos
    tool.GripRight = positions.right
    tool.GripUp = positions.up
    enabled = false
    end
end)

game:GetService("RunService").Heartbeat:connect(function()
    pcall(function()
       char[hat].Handle.Velocity = Vector3.new(30, 0, 0)
if hold == false then
    char[hat].Handle.CFrame = fake.Handle.CFrame
elseif hold == true then
    char[hat].Handle.CFrame = handle.CFrame
    end
end)
end)
end

  	end    

})

Tab:AddButton({

	Name = "小刀（没用）",

	Callback = function()

     --e = Kill 
--q = Fix Knife


me = game.Players.LocalPlayer
char = me.Character
selected = false
attacking = false
hurt = false
grabbed = nil
mode = "kill"
bloodcolors = {"Bright red", "Really red", "Crimson"}
enabled = true
enabled2 = true

local breaksound = Instance.new("Sound")
breaksound.SoundId = "http://www.roblox.com/asset/?id=2801263"
breaksound.Parent = game.Workspace
breaksound.Volume = 0.8
	
local killsound = Instance.new("Sound")
killsound.SoundId = "http://www.roblox.com/asset?id=16950449"
killsound.Pitch = 0.65
killsound.Parent = game.Workspace

local drainsound = Instance.new("Sound")
drainsound.SoundId = "http://www.roblox.com/asset/?id=2785493"
drainsound.Pitch = 0.7


function prop(part, parent, collide, tran, ref, x, y, z, color, anchor, form)
part.Parent = parent
part.formFactor = form
part.CanCollide = collide
part.Transparency = tran
part.Reflectance = ref
part.Size = Vector3.new(x,y,z)
part.BrickColor = BrickColor.new(color)
part.TopSurface = 0
part.BottomSurface = 0
part.Anchored = anchor
part.Locked = true
part:BreakJoints()
end

function weld(w, p, p1, a, b, c, x, y, z)
w.Parent = p
w.Part0 = p
w.Part1 = p1
w.C1 = CFrame.fromEulerAnglesXYZ(a,b,c) * CFrame.new(x,y,z)
end

function mesh(mesh, parent, x, y, z, type)
mesh.Parent = parent
mesh.Scale = Vector3.new(x, y, z)
mesh.MeshType = type
end

function remgui()
	for _,v in pairs(me.PlayerGui:GetChildren()) do
		if v.Name == "Modeshow" then
			v:remove()
		end
	end
end

function inform(text,delay)
	remgui()
	local sc = Instance.new("ScreenGui")
	sc.Parent = me.PlayerGui
	sc.Name = "Modeshow"
	local bak = Instance.new("Frame",sc)
	bak.BackgroundColor3 = Color3.new(1,1,1)
	bak.Size = UDim2.new(0.94,0,0.1,0)
	bak.Position = UDim2.new(0.03,0,0.037,0)
	bak.BorderSizePixel = 0
	local gi = Instance.new("TextLabel",sc)
	gi.Size = UDim2.new(0.92,0,0.09,0)
	gi.BackgroundColor3 = Color3.new(0,0,0)
	gi.Position = UDim2.new(0.04,0,0.042,0)
	gi.TextColor3 = Color3.new(1,1,1)
	gi.FontSize = "Size14"
	gi.Text = text
	coroutine.resume(coroutine.create(function()
		wait(delay)
		sc:remove()
	end))
end

if char:findFirstChild("Bricks",true) then
	char:findFirstChild("Bricks",true):remove()
end

bricks = Instance.new("Model",me.Character)
bricks.Name = "Bricks"

--Parts-------------------------Parts-------------------------Parts-------------------------Parts----------------------

rarm = char:findFirstChild("Right Arm")
larm = char:findFirstChild("Left Arm")
lleg = char:findFirstChild("Left Leg")
torso = char:findFirstChild("Torso")
hum = char:findFirstChild("Humanoid")
rleg = char:findFirstChild("Right Leg")

righthold = Instance.new("Part")
prop(righthold, bricks, false, 1, 0, 0.1, 0.1, 0.1, "Mid gray", false, "Custom")
w11 = Instance.new("Weld")
weld(w11, rarm, righthold, 0, 0, 0, 0, 1, 0)

lefthold = Instance.new("Part")
prop(lefthold, bricks, false, 1, 0, 0.1, 0.1, 0.1, "Mid gray", false, "Custom")
w12 = Instance.new("Weld")
weld(w12, larm, lefthold, 0, 0, 0, 0, 1, 0)

hold = Instance.new("Part")
prop(hold, bricks, false, 0, 0, 0.2, 0.3, 0.3, "Black", false, "Custom")
oh = Instance.new("Weld")
weld(oh, torso, hold, -math.pi/-0.86, 1.5, math.rad(0), -0.35, -0.4, -0.5)

knife = Instance.new("Part")
knife.Material = "Wood"
prop(knife, bricks, false, 0, 0, 0.25, 1.1, 0.3, "Pine Cone", false, "Custom")
orr = Instance.new("Weld")
weld(orr, hold, knife, 0, 0, 0, 0, 0.7, 0)
ar = Instance.new("Weld")
weld(ar, lefthold, nil, math.pi/2, 0, math.pi, 0, 0, 0)

blade = Instance.new("Part")
blade.Material = "Neon"
prop(blade, bricks, false, 0, 0, 0.1, 2.5, 0.25, "Mid gray", false, "Custom")
Instance.new("BlockMesh",blade).Scale = Vector3.new(0.3,1,1)
w2 = Instance.new("Weld")
weld(w2, knife, blade, 0, 0, 0, 0, -0.65, 0)

blade2 = Instance.new("Part")
blade2.Material = "Neon"
prop(blade2, bricks, false, 0, 0, 0.1, 0.4, 0.25, "Mid gray", false, "Custom")
local mew = Instance.new("SpecialMesh",blade2)
mew.MeshType = "Wedge"
mew.Scale = Vector3.new(0.3,1,1)
w3 = Instance.new("Weld")
weld(w3, blade, blade2, 0, 0, 0, 0, -1.45, 0)


rb = Instance.new("Part")
prop(rb, bricks, false, 1, 0, 0.1, 0.1, 0.1, "Bright red", false, "Custom")
w13 = Instance.new("Weld")
weld(w13, torso, rb, 0, 0, 0, -1.5, -0.5, 0)

lb = Instance.new("Part")
prop(lb, bricks, false, 1, 0, 0.1, 0.1, 0.1, "Bright red", false, "Custom")
w14 = Instance.new("Weld")
weld(w14, torso, lb, 0, 0, 0, 1.5, -0.5, 0)

rw = Instance.new("Weld")
weld(rw, rb, nil, 0, 0, 0, 0, 0.5, 0)

lw = Instance.new("Weld")
weld(lw, lb, nil, 0, 0, 0, 0, 0.5, 0)

grabweld = nil
platlol = nil
lolhum = nil

function touch(h)
	if hurt then
		if grabbed == nil then
			local hu = h.Parent:findFirstChild("Humanoid")
			local head = h.Parent:findFirstChild("Head")
			local torz = h.Parent:findFirstChild("Torso")
			if hu ~= nil and head ~= nil and torz ~= nil and h.Parent.Name ~= name then
				if hu.Health > 0 then
				grabbed = torz
				hu.PlatformStand = true
				local w = Instance.new("Weld")
				weld(w,righthold,grabbed,math.pi/2,0.2,0,0.7,-0.9,-0.6)
				grabweld = w
				lolhum = hu
				local lolxd = true
				platlol = lolxd
				hu.Changed:connect(function(prop)
					if prop == "PlatformStand" and platlol then
						hu.PlatformStand = true
					end
				end)
				end
			end
		end
	end
end

righthold.Touched:connect(touch)
lefthold.Touched:connect(touch)

function bleed(part,po)
	local lol1 = math.random(5,30)/100
	local lol2 = math.random(5,30)/100
	local lol3 = math.random(5,30)/100
	local lol4 = math.random(1,#bloodcolors)
	local p = Instance.new("Part")
	prop(p,part.Parent,false,0,0,lol1,lol2,lol3,bloodcolors[lol4],false,"Custom")
	p.CFrame = part.CFrame * CFrame.new(math.random(-5,5)/10,po,math.random(-5,5)/10)
	p.Velocity = Vector3.new(math.random(-25,25),math.random(-25,25),math.random(-25,25))
	p.RotVelocity = Vector3.new(math.random(-400,400)/10,math.random(-400,400)/10,math.random(-400,400)/10)
	p.CanCollide = true
	coroutine.resume(coroutine.create(function()
		wait(3)
		p:remove()
	end))
end

h = Instance.new("HopperBin",me.Backpack)

h.Name = "Knife"

script.Parent = h


bin = h



function select(mouse)
	orr.Part1 = nil
	ar.Part1 = knife
	mouse.Button1Down:connect(function()
		if attacking == false then
			attacking = true
			lw.Part1 = larm
			rw.Part1 = rarm
			hurt = true
			for i=1, 8 do
				rw.C0 = rw.C0 * CFrame.new(-0.03,0,-0.08) * CFrame.fromEulerAnglesXYZ(0.18,0.04,0)
				lw.C0 = lw.C0 * CFrame.new(0.06,0,-0.06) * CFrame.fromEulerAnglesXYZ(0.15,-0.11,-0.05)
				wait()
			end
			wait(1)
			hurt = false
			if grabbed == nil then
				for i=1, 4 do
					rw.C0 = rw.C0 * CFrame.new(0.06,0,0.16) * CFrame.fromEulerAnglesXYZ(-0.36,-0.08,0)
					lw.C0 = lw.C0 * CFrame.new(-0.12,0,0.12) * CFrame.fromEulerAnglesXYZ(-0.3,0.22,0.05)
					wait()
				end
				lw.C0 = CFrame.new(0,0,0)
				rw.C0 = CFrame.new(0,0,0)
				lw.Part1 = nil
				rw.Part1 = nil
				attacking = false
			end
		elseif hurt == false and grabbed ~= nil and mode == "drop" then
			enabled2 = true
			grabweld:remove()
			grabweld = nil
			platlol = false
			grabbed = nil
			lolhum.PlatformStand = false
			lolhum = nil
			for i=1, 4 do
				rw.C0 = rw.C0 * CFrame.new(0.06,0,0.16) * CFrame.fromEulerAnglesXYZ(-0.36,-0.08,0)
				lw.C0 = lw.C0 * CFrame.new(-0.12,0,0.16) * CFrame.fromEulerAnglesXYZ(-0.3,0.2,0)
				wait()
			end
			lw.C0 = CFrame.new(0,0,0)
			rw.C0 = CFrame.new(0,0,0)
			lw.Part1 = nil
			rw.Part1 = nil
			attacking = false
			platlol = nil
			
		elseif hurt == false and grabbed ~= nil and grabweld ~= nil and mode == "kill" and enabled2 == true then
			enabled2 = false
			enabled = false
			
			breaksound.Parent = grabbed
			breaksound:Play()
			
			for i=1, 5 do
				lw.C0 = lw.C0 * CFrame.new(0.02,0.15,-0.02) * CFrame.fromEulerAnglesXYZ(-0.05,0,-0.03)
				wait()
			end
			local duh = grabbed
			bleed(duh,1)
			bleed(duh,1)
			bleed(duh,1)
			bleed(duh,1)
			bleed(duh,1)				
			bleed(duh,1)
			bleed(duh,1)
			bleed(duh,1)
			bleed(duh,1)
			bleed(duh,1)
			wait(0.12)
			for i=1, 5 do
				lw.C0 = lw.C0 * CFrame.new(-0.02,-0.15,0.02) * CFrame.fromEulerAnglesXYZ(0.05,-0,0.03)
				wait()
			end
			
			
			if grabbed.Parent:findFirstChild("HumanoidRootPart",true) then
                        for i, plr in pairs(game.Players:GetChildren()) do
                        if plr.Name ~= game.Players.LocalPlayer.Name then
                        for i = 1, 10 do
                        game.ReplicatedStorage.meleeEvent:FireServer(plr)
                        end
                 end
          end
			end
			grabbed.Parent.Humanoid.Health = grabbed.Parent.Humanoid.Health / 1.5
			
		elseif hurt == false and grabbed ~= nil and grabweld ~= nil and mode == "drain" and enabled == true then
				enabled = false
				enabled2 = true
				
				for i=1, 2 do
					lw.C0 = lw.C0 * CFrame.new(0.06,0,-0.06) * CFrame.fromEulerAnglesXYZ(0.15,-0.11,-0.05)
					wait()
				end	

				while char.Humanoid.Health == char.Humanoid.MaxHealth do
					bleed(grabbed, 1)
					char.Humanoid.Health = char.Humanoid.Health + 1
					grabbed.Parent.Humanoid.Health = grabbed.Parent.Humanoid.Health - 1
					wait(0.0335)
				end
				
				for i=1, 1 do
					lw.C0 = lw.C0 * CFrame.new(-0.12,0,0.12) * CFrame.fromEulerAnglesXYZ(-0.3,0.22,0.05)
					wait()
				end
				enabled = true
				
				
		elseif hurt == false and grabbed ~= nil and grabweld ~= nil and mode == "throw" then
			enabled2 = true
			grabweld:remove()
			grabweld = nil
			local bf = Instance.new("BodyForce",grabbed)
			bf.force = torso.CFrame.lookVector * 4000
			bf.force = bf.force + Vector3.new(0,1500,0)
			coroutine.resume(coroutine.create(function()
				wait(0.12)
				bf:remove()
			end))
			for i=1, 6 do
				rw.C0 = rw.C0 * CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0.35,0,0)
				lw.C0 = lw.C0 * CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(-0.18,0,0)
				wait()
			end
			for i=1, 4 do
				rw.C0 = rw.C0 * CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(-0.47,0,0)
				lw.C0 = lw.C0 * CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0.2,0,0)
				wait()
			end
			wait(0.2)
			platlol = false
			grabbed = nil
			lolhum.PlatformStand = false
			lolhum = nil
			for i=1, 4 do
				rw.C0 = rw.C0 * CFrame.new(0.06,0,0.16) * CFrame.fromEulerAnglesXYZ(-0.36,-0.08,0)
				lw.C0 = lw.C0 * CFrame.new(-0.12,0,0.16) * CFrame.fromEulerAnglesXYZ(-0.3,0.2,0)
				wait()
			end
			lw.C0 = CFrame.new(0,0,0)
			rw.C0 = CFrame.new(0,0,0)
			lw.Part1 = nil
			rw.Part1 = nil
			attacking = false
			platlol = nil
		elseif hurt == false and grabbed ~= nil and lolhum ~= nil and grabweld ~= nil and mode == "para" then
			enabled2 = true
			killsound.Parent = grabbed
			killsound:Play()
			for i=1, 5 do
				lw.C0 = lw.C0 * CFrame.new(0.02,0.12,0.1) * CFrame.fromEulerAnglesXYZ(-0.05,0,-0.03)
				wait()
			end
			local ne = grabbed:findFirstChild("Neck")
			coroutine.resume(coroutine.create(function()
				local duh = grabbed
				local duh2 = grabbed.Parent.Head
				local lolas = lolhum
				duh.RotVelocity = Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
				for i=1, 75 do
					wait()
					local hm = math.random(1,15)
					pcall(function()
						if hm == 1 then
							duh2.Sound.Pitch = math.random(90,110)/100
							duh2.Sound:play()
							script.Parent.Splat:Play();
						end
					end)

					if hm > 0 and hm < 4 then

						bleed(duh,1)
						bleed(duh2,-0.1)
						bleed(duh,1)
						bleed(duh2,-0.1)
						bleed(duh,1)
						bleed(duh,1)
						bleed(duh,1)										
					end
				end
				wait(1.2)
				
				lolas.Health = 0
				for i=1, 85 do
					wait()
					local hm = math.random(1,9)
					pcall(function()
						if hm == 1 then
							duh2.Sound.Pitch = math.random(90,110)/100
							duh2.Sound:play()
						end
					end)
					if hm > 0 and hm < 3 then
						bleed(duh,1)
						bleed(duh2,-0.5)
					end
				end
			end))
			for i=1, 3 do
				lw.C0 = lw.C0 * CFrame.new(0.02,0.12,0.1) * CFrame.fromEulerAnglesXYZ(-0.05,0,-0.03)
				if ne ~= nil then
					grabbed.Neck.C0 = grabbed.Neck.C0 * CFrame.fromEulerAnglesXYZ(-0.35,0,0)
				end
				wait()
			end
			grabweld:remove()
			grabweld = nil
			for i=1, 4 do
				lw.C0 = lw.C0 * CFrame.new(-0.04,-0.24,-0.2) * CFrame.fromEulerAnglesXYZ(0.1,0,0.06)
				wait()
			end
			for i=1, 4 do
				rw.C0 = rw.C0 * CFrame.new(0.06,0,0.16) * CFrame.fromEulerAnglesXYZ(-0.36,-0.08,0)
				lw.C0 = lw.C0 * CFrame.new(-0.12,0,0.12) * CFrame.fromEulerAnglesXYZ(-0.3,0.22,0.05)
				wait()
			end
			lw.C0 = CFrame.new(0,0,0)
			rw.C0 = CFrame.new(0,0,0)
			lw.Part1 = nil
			rw.Part1 = nil
			platlol = false
			grabbed = nil
			lolhum = nil
			attacking = false
			platlol = nil
		end
	end)
	mouse.KeyDown:connect(function(kai)
		key = kai:lower()
		if key == "q" then
			mode = "drop"
			inform("Fix Knife",1)
		elseif key == "e" then
			mode = "kill"
			inform("Kill",1)
		end
	end)
end

function desel()
	repeat wait() until attacking == false
	orr.Part1 = knife
	ar.Part1 = nil
end

bin.Selected:connect(select)
bin.Deselected:connect(desel)

char.Humanoid.Died:connect(function()
	pcall(function()
		grabweld:remove()
		grabweld = nil
		grabbed = nil
		platlol = false
		platlol = nil
	end)
end)

inform("Prison Life v2.0.2 Grab Knife Loaded | e = Kill /\ q = Fix Knife",3)
wait(3.2)
inform("Made By ASADCATONVERM :D", 2)

  	end    

})

Tab:AddButton({

  Name = "耶稣十字架",

  Callback = function ()

    loadstring(game:HttpGet("https://raw.githubusercontent.com/cbhlyy/lyycbh/main/shizi2"))()

  end

})

Tab:AddButton({

  Name = "紫光十字架",

  Callback = function ()

    loadstring(game:HttpGet("https://raw.githubusercontent.com/cbhlyy/lyycbh/main/shizi3"))()

  end

})

Tab:AddButton({

  Name = "万圣节十字架",

  Callback = function ()

    loadstring(game:HttpGet("https://raw.githubusercontent.com/cbhlyy/lyycbh/main/shizi4"))()

  end

})

Tab:AddButton({

  Name = "普通十字架",

  Callback = function ()

    loadstring(game:HttpGet("https://raw.githubusercontent.com/cbhlyy/lyycbh/main/shizizhen"))()

  end

})

local Tab = Window:MakeTab({

    Name = "脚本",

    Icon = "rbxassetid://4483345998",

    PremiumOnly = false

})

Tab:AddButton({

	Name = "doors汉化",

	Callback = function()

     loadstring(game:HttpGet("https://raw.githubusercontent.com/XSKMS/MS-Chinese-XXZ/refs/heads/main/rename.txt"))()

  	end    

})