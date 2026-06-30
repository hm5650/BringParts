local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local Workspace = game:GetService("Workspace")
local Camera = workspace.CurrentCamera
local LocalPlayer = Players.LocalPlayer
local character
local humanoidRootPart
local Gui = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local UICorner_Main = Instance.new("UICorner")
local Label = Instance.new("TextLabel")
local UICorner_Label = Instance.new("UICorner")
local UITextSizeConstraint_Label = Instance.new("UITextSizeConstraint")
local Controls = Instance.new("Frame")
local Box = Instance.new("TextBox")
local UICorner_Box = Instance.new("UICorner")
local UITextSizeConstraint_Box = Instance.new("UITextSizeConstraint")
local TargetButton = Instance.new("TextButton")
local UICorner_Target = Instance.new("UICorner")
local UITextSizeConstraint_Target = Instance.new("UITextSizeConstraint")
local SpectateButton = Instance.new("TextButton")
local UICorner_Spectate = Instance.new("UICorner")
local UITextSizeConstraint_Spectate = Instance.new("UITextSizeConstraint")
local BringButton = Instance.new("TextButton")
local UICorner_Bring = Instance.new("UICorner")
local UITextSizeConstraint_Bring = Instance.new("UITextSizeConstraint")
local StatusLabel = Instance.new("TextLabel")
local UICorner_Status = Instance.new("UICorner")
Gui.Name = "Gui"
Gui.Parent = gethui() or Players.LocalPlayer:WaitForChild("PlayerGui")
Gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Gui.ResetOnSpawn = false
Main.Name = "Main"
Main.Parent = Gui
Main.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
Main.BackgroundTransparency = 0.1
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.3, 0, 0.4, 0)
Main.Size = UDim2.new(0.3, 0, 0.3, 0)
Main.Active = true
Main.Draggable = true
UICorner_Main.CornerRadius = UDim.new(0, 20)
UICorner_Main.Parent = Main
Label.Name = "Label"
Label.Parent = Main
Label.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Label.BackgroundTransparency = 0.2
Label.BorderSizePixel = 0
Label.Size = UDim2.new(1, 0, 0.18, 0)
Label.Font = Enum.Font.Code
Label.Text = "Bring Parts / YT: @gpsickle"
Label.TextColor3 = Color3.fromRGB(220, 220, 220)
Label.TextScaled = true
Label.TextSize = 14
Label.TextWrapped = true
UICorner_Label.CornerRadius = UDim.new(0, 12)
UICorner_Label.Parent = Label
UITextSizeConstraint_Label.Parent = Label
UITextSizeConstraint_Label.MaxTextSize = 24
Controls.Name = "Controls"
Controls.Parent = Main
Controls.BackgroundTransparency = 1
Controls.Position = UDim2.new(0, 0, 0.18, 0)
Controls.Size = UDim2.new(1, 0, 0.32, 0)
Box.Name = "Box"
Box.Parent = Controls
Box.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
Box.BackgroundTransparency = 0.1
Box.BorderSizePixel = 0
Box.Position = UDim2.new(0.05, 0, 0.15, 0)
Box.Size = UDim2.new(0.55, 0, 0.7, 0)
Box.Font = Enum.Font.Code
Box.PlaceholderText = "Player name"
Box.Text = ""
Box.TextColor3 = Color3.fromRGB(220, 220, 220)
Box.TextScaled = true
Box.TextSize = 35
Box.TextWrapped = true
Box.ClearTextOnFocus = false
UICorner_Box.CornerRadius = UDim.new(0, 12)
UICorner_Box.Parent = Box
UITextSizeConstraint_Box.Parent = Box
UITextSizeConstraint_Box.MaxTextSize = 35
TargetButton.Name = "TargetButton"
TargetButton.Parent = Controls
TargetButton.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
TargetButton.BackgroundTransparency = 0.1
TargetButton.BorderSizePixel = 0
TargetButton.Position = UDim2.new(0.65, 0, 0.15, 0)
TargetButton.Size = UDim2.new(0.3, 0, 0.7, 0)
TargetButton.Font = Enum.Font.Code
TargetButton.Text = "Players"
TargetButton.TextColor3 = Color3.fromRGB(220, 220, 220)
TargetButton.TextScaled = true
TargetButton.TextSize = 24
TargetButton.TextWrapped = true
UICorner_Target.CornerRadius = UDim.new(0, 12)
UICorner_Target.Parent = TargetButton
UITextSizeConstraint_Target.Parent = TargetButton
UITextSizeConstraint_Target.MaxTextSize = 24
SpectateButton.Name = "SpectateButton"
SpectateButton.Parent = Main
SpectateButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
SpectateButton.BackgroundTransparency = 0.1
SpectateButton.BorderSizePixel = 0
SpectateButton.Position = UDim2.new(0.05, 0, 0.55, 0)
SpectateButton.Size = UDim2.new(0.4, 0, 0.18, 0)
SpectateButton.Font = Enum.Font.Code
SpectateButton.Text = "Spectate: Off"
SpectateButton.TextColor3 = Color3.fromRGB(220, 220, 220)
SpectateButton.TextScaled = true
SpectateButton.TextSize = 24
SpectateButton.TextWrapped = true
UICorner_Spectate.CornerRadius = UDim.new(0, 12)
UICorner_Spectate.Parent = SpectateButton
UITextSizeConstraint_Spectate.Parent = SpectateButton
UITextSizeConstraint_Spectate.MaxTextSize = 24
BringButton.Name = "BringButton"
BringButton.Parent = Main
BringButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
BringButton.BackgroundTransparency = 0.1
BringButton.BorderSizePixel = 0
BringButton.Position = UDim2.new(0.55, 0, 0.55, 0)
BringButton.Size = UDim2.new(0.4, 0, 0.18, 0)
BringButton.Font = Enum.Font.Code
BringButton.Text = "Bring: Off"
BringButton.TextColor3 = Color3.fromRGB(220, 220, 220)
BringButton.TextScaled = true
BringButton.TextSize = 28
BringButton.TextWrapped = true
UICorner_Bring.CornerRadius = UDim.new(0, 12)
UICorner_Bring.Parent = BringButton
UITextSizeConstraint_Bring.Parent = BringButton
UITextSizeConstraint_Bring.MaxTextSize = 28
StatusLabel.Name = "StatusLabel"
StatusLabel.Parent = Main
StatusLabel.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
StatusLabel.BackgroundTransparency = 0.15
StatusLabel.BorderSizePixel = 0
StatusLabel.Position = UDim2.new(0.1, 0, 0.78, 0)
StatusLabel.Size = UDim2.new(0.8, 0, 0.15, 0)
StatusLabel.Font = Enum.Font.Code
StatusLabel.Text = "Target: None"
StatusLabel.TextColor3 = Color3.fromRGB(180, 180, 180)
StatusLabel.TextScaled = true
StatusLabel.TextSize = 20
StatusLabel.TextWrapped = true
UICorner_Status.CornerRadius = UDim.new(0, 10)
UICorner_Status.Parent = StatusLabel
local targetMode = "Players"
local spectateActive = false
local blackHoleActive = false
local currentTarget = nil
local cycleIndex = 1
local cycleConnection = nil
local spectateMonitorConnection = nil
local DescendantAddedConnection
local originalCameraSubject = nil
local originalCameraType = nil
local Folder = Instance.new("Folder", Workspace)
local Part = Instance.new("Part", Folder)
local Attachment1 = Instance.new("Attachment", Part)
Part.Anchored = true
Part.CanCollide = false
Part.Transparency = 1
local controlledParts = {}
if not getgenv().Network then
	getgenv().Network = {
		BaseParts = {},
		Velocity = Vector3.new(14.46262424, 14.46262424, 14.46262424)
	}
	Network.RetainPart = function(Part)
		if Part:IsA("BasePart") and Part:IsDescendantOf(Workspace) then
			table.insert(Network.BaseParts, Part)
			Part.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
			Part.CanCollide = false
		end
	end
	local function EnablePartControl()
		LocalPlayer.ReplicationFocus = Workspace
		RunService.Heartbeat:Connect(function()
			sethiddenproperty(LocalPlayer, "SimulationRadius", math.huge)
			for _, Part in pairs(Network.BaseParts) do
				if Part:IsDescendantOf(Workspace) then
					Part.Velocity = Network.Velocity
				end
			end
		end)
	end
	EnablePartControl()
end
local function ForcePart(v)
	if v:IsA("BasePart") and not v.Anchored
		and not v.Parent:FindFirstChildOfClass("Humanoid")
		and not v.Parent:FindFirstChild("Head")
		and v.Name ~= "Handle" then
		for _, x in ipairs(v:GetChildren()) do
			if x:IsA("BodyMover") or x:IsA("RocketPropulsion") then
				x:Destroy()
			end
		end
		if v:FindFirstChild("Attachment") then v:FindFirstChild("Attachment"):Destroy() end
		if v:FindFirstChild("AlignPosition") then v:FindFirstChild("AlignPosition"):Destroy() end
		if v:FindFirstChild("Torque") then v:FindFirstChild("Torque"):Destroy() end
		v.CanCollide = false
		local Torque = Instance.new("Torque", v)
		Torque.Torque = Vector3.new(100000, 100000, 100000)
		local AlignPosition = Instance.new("AlignPosition", v)
		local Attachment2 = Instance.new("Attachment", v)
		Torque.Attachment0 = Attachment2
		AlignPosition.MaxForce = math.huge
		AlignPosition.MaxVelocity = math.huge
		AlignPosition.Responsiveness = 200
		AlignPosition.Attachment0 = Attachment2
		AlignPosition.Attachment1 = Attachment1
		controlledParts[v] = true
	end
end
local function releaseParts()
	for part in pairs(controlledParts) do
		if part and part.Parent then
			local align = part:FindFirstChild("AlignPosition")
			if align then align:Destroy() end
			local torque = part:FindFirstChild("Torque")
			if torque then torque:Destroy() end
			local att = part:FindFirstChild("Attachment")
			if att then att:Destroy() end
			part.CanCollide = true
			part.CustomPhysicalProperties = nil
		end
	end
	controlledParts = {}
end
local function clear()
	spawn(function()
		while not blackHoleActive do
			task.wait(0.5)
			for part in pairs(controlledParts) do
				if part and part.Parent and part.Position.Y < 200 then
					part:Destroy()
					controlledParts[part] = nil
				end
			end
		end
	end)
end
local function getPlayer(name)
	local lowerName = string.lower(name)
	for _, p in pairs(Players:GetPlayers()) do
		if p ~= LocalPlayer then
			local lowerPlayer = string.lower(p.Name)
			if string.find(lowerPlayer, lowerName) then
				return p
			elseif string.find(string.lower(p.DisplayName), lowerName) then
				return p
			end
		end
	end
end
local function validplr()
	local valid = {}
	for _, p in pairs(Players:GetPlayers()) do
		if p ~= LocalPlayer and p.Character and p.Character:FindFirstChild("HumanoidRootPart") then
			table.insert(valid, p)
		end
	end
	return valid
end
local function isTargetValid(target)
	return target and target.Character and target.Character:FindFirstChildOfClass("Humanoid") and
		   target.Character.Humanoid.Health > 0
end
local function updateTarget()
	if targetMode == "Players" then
		currentTarget = getPlayer(Box.Text)
	else
		local players = validplr()
		if #players > 0 then
			cycleIndex = (cycleIndex % #players) + 1
			currentTarget = players[cycleIndex]
		else
			currentTarget = nil
		end
	end
	if currentTarget then
		StatusLabel.Text = "Target: " .. currentTarget.Name
	else
		StatusLabel.Text = "Target: None"
	end
	if spectateActive then
		if isTargetValid(currentTarget) then
			view()
		else
			noview()
			spectateActive = false
			SpectateButton.Text = "Spectate: Off"
		end
	end
	return currentTarget
end
local function cframe()
	if currentTarget and currentTarget.Character and currentTarget.Character:FindFirstChild("HumanoidRootPart") then
		return currentTarget.Character.HumanoidRootPart.CFrame
	end
	return nil
end
local function allthing()
	if cycleConnection then cycleConnection:Disconnect() end
	cycleConnection = RunService.Heartbeat:Connect(function()
		if targetMode == "All" and blackHoleActive then
			if tick() % 3 < 0.1 then
				updateTarget()
			end
		end
	end)
end
local function view()
	if not currentTarget or not isTargetValid(currentTarget) then
		if spectateActive then
			spectateActive = false
			SpectateButton.Text = "Spectate: Off"
			noview()
		end
		return
	end
	local character = currentTarget.Character
	local humanoid = character:FindFirstChildOfClass("Humanoid")
	if not humanoid then return end
	if not originalCameraType then
		originalCameraType = Camera.CameraType
		originalCameraSubject = Camera.CameraSubject
	end
	Camera.CameraType = Enum.CameraType.Custom
	Camera.CameraSubject = humanoid
end
local function noview()
	if originalCameraType and originalCameraSubject then
		Camera.CameraType = originalCameraType
		Camera.CameraSubject = originalCameraSubject
	else
		Camera.CameraType = Enum.CameraType.Custom
		Camera.CameraSubject = LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
	end
	originalCameraType = nil
	originalCameraSubject = nil
end
local function startSpectateMonitoring()
	if spectateMonitorConnection then
		spectateMonitorConnection:Disconnect()
	end
	spectateMonitorConnection = RunService.Heartbeat:Connect(function()
		if not spectateActive then
			if spectateMonitorConnection then
				spectateMonitorConnection:Disconnect()
				spectateMonitorConnection = nil
			end
			return
		end
		if not isTargetValid(currentTarget) then
			if targetMode == "All" then
				local newTarget = updateTarget()
				if newTarget and isTargetValid(newTarget) then
					view()
				else
					noview()
					spectateActive = false
					SpectateButton.Text = "Spectate: Off"
				end
			else
				noview()
				if currentTarget then
					currentTarget.CharacterAdded:Connect(function()
						if spectateActive and currentTarget == currentTarget then
							task.wait(0.5)
							if spectateActive and isTargetValid(currentTarget) then
								view()
							end
						end
					end)
				else
					spectateActive = false
					SpectateButton.Text = "Spectate: Off"
				end
			end
		else
			if Camera.CameraSubject ~= currentTarget.Character:FindFirstChildOfClass("Humanoid") then
				view()
			end
		end
	end)
end
local function togview()
	if not currentTarget then
		print("No target to spectate")
		return
	end
	spectateActive = not spectateActive
	SpectateButton.Text = spectateActive and "Spectate: On" or "Spectate: Off"
	if spectateActive then
		if isTargetValid(currentTarget) then
			view()
			startSpectateMonitoring()
		else
			print("Target is not valid (dead or no character)")
			spectateActive = false
			SpectateButton.Text = "Spectate: Off"
		end
	else
		noview()
		if spectateMonitorConnection then
			spectateMonitorConnection:Disconnect()
			spectateMonitorConnection = nil
		end
	end
end
local function toggleBlackHole()
	blackHoleActive = not blackHoleActive
	if blackHoleActive then
		BringButton.Text = "Bring: On"
		updateTarget()
		if not currentTarget then
			blackHoleActive = false
			BringButton.Text = "Bring: Off"
			print("No valid target")
			return
		end
		for _, v in ipairs(Workspace:GetDescendants()) do
			ForcePart(v)
		end
		DescendantAddedConnection = Workspace.DescendantAdded:Connect(function(v)
			if blackHoleActive then
				ForcePart(v)
			end
		end)
		if targetMode == "All" then
			allthing()
		end
		spawn(function()
			while blackHoleActive and RunService.RenderStepped:Wait() do
				local cframe = cframe()
				if cframe then
					Attachment1.WorldCFrame = cframe
				end
			end
		end)
	else
		BringButton.Text = "Bring: Off"
		releaseParts()
		clear()
		if DescendantAddedConnection then
			DescendantAddedConnection:Disconnect()
			DescendantAddedConnection = nil
		end
		if cycleConnection then
			cycleConnection:Disconnect()
			cycleConnection = nil
		end
		if spectateActive then
			togview()
		end
	end
end
local function fadeBox(show)
	local targetTransparency = show and 0.1 or 1
	local tweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
	local goals = {
		BackgroundTransparency = targetTransparency,
		TextTransparency = show and 0 or 1
	}
	local tween = TweenService:Create(Box, tweenInfo, goals)
	tween:Play()
	Box.Active = show
	Box.Selectable = show
end
local function targetmode()
	local newMode = targetMode == "Players" and "All" or "Players"
	targetMode = newMode
	TargetButton.Text = targetMode
	if targetMode == "Players" then
		TargetButton.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
	else
		TargetButton.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
	end
	fadeBox(targetMode == "Players")
	if spectateActive then
		if targetMode == "All" then
			updateTarget()
			startSpectateMonitoring()
		else
			startSpectateMonitoring()
		end
	end
	if blackHoleActive then
		updateTarget()
		if targetMode == "All" then
			allthing()
		else
			if cycleConnection then
				cycleConnection:Disconnect()
				cycleConnection = nil
			end
		end
	end
end
TargetButton.MouseButton1Click:Connect(targetmode)
SpectateButton.MouseButton1Click:Connect(togview)
BringButton.MouseButton1Click:Connect(function()
	if targetMode == "Players" then
		local player = getPlayer(Box.Text)
		if player then
			character = player.Character or player.CharacterAdded:Wait(5)
			if character then
				humanoidRootPart = character:WaitForChild("HumanoidRootPart", 5)
				if humanoidRootPart then
					currentTarget = player
					toggleBlackHole()
				else
					print("Player has no HumanoidRootPart")
				end
			else
				print("Player character not found")
			end
		else
			print("Player not selected or not found")
		end
	else
		local players = validplr()
		if #players > 0 then
			cycleIndex = 1
			currentTarget = players[1]
			toggleBlackHole()
		else
			print("No valid players found")
		end
	end
end)
Box.FocusLost:Connect(function(enterPressed)
	if enterPressed then
		local player = getPlayer(Box.Text)
		if player then
			Box.Text = player.Name
			print("Player found:", player.Name)
			if not blackHoleActive then
				currentTarget = player
				StatusLabel.Text = "Target: " .. player.Name
			end
		else
			print("Player not found")
		end
	end
end)
local guiVisible = true
UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
	if input.KeyCode == Enum.KeyCode.RightControl and not gameProcessedEvent then
		guiVisible = not guiVisible
		local targetTransparency = guiVisible and 0.1 or 1
		local tween = TweenService:Create(Main, TweenInfo.new(0.3), {
			BackgroundTransparency = targetTransparency
		})
		tween:Play()
		for _, child in ipairs(Main:GetChildren()) do
			if child:IsA("TextButton") or child:IsA("TextBox") or child:IsA("TextLabel") then
				local childTween = TweenService:Create(child, TweenInfo.new(0.3), {
					BackgroundTransparency = targetTransparency,
					TextTransparency = guiVisible and 0 or 1
				})
				childTween:Play()
			end
		end
		Main.Active = guiVisible
		Main.Draggable = guiVisible
	end
end)
fadeBox(true)
StatusLabel.Text = "Target: None"
Players.PlayerRemoving:Connect(function(player)
	if player == currentTarget then
		if spectateActive then
			noview()
			spectateActive = false
			SpectateButton.Text = "Spectate: Off"
		end
		updateTarget()
	end
end)
for _, player in pairs(Players:GetPlayers()) do
	if player ~= LocalPlayer then
		player.CharacterAdded:Connect(function()
			if targetMode == "All" and blackHoleActive then
				updateTarget()
			end
		end)
	end
end
LocalPlayer:WaitForChild("PlayerGui").ChildRemoved:Connect(function(child)
	if child == Gui then
		if spectateActive then
			noview()
		end
		if spectateMonitorConnection then
			spectateMonitorConnection:Disconnect()
		end
		if cycleConnection then
			cycleConnection:Disconnect()
		end
		if DescendantAddedConnection then
			DescendantAddedConnection:Disconnect()
		end
		Folder:Destroy()
	end
end)
