-- gOb Notif
game:GetService("StarterGui"):SetCore("SendNotification", {
     Title = "gOb scripts",
     Text = "LOL Time to Exploit!",
     Icon = "rbxthumb://type=Asset&id=126389658690593&w=150&h=150",
     Duration = 15
})

-- Guest 666 CHARACTER
local Guest = game:GetObjects("rbxassetid://2788748777")[1]

------
warn("<><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>")	
warn(">Guest 666 the Roblox Horror<")
warn("            |||Script created by gObl00x for fun|||")
warn("<><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>")
--[[
		> ͔͈̱̲̆̄ͫ̾They ̙̰̠͕ͤcalled ̗̭͇͈̖̠̔̌me,̸͓̠ͨ̍̌ͩ̾ͭ ̷̝͔̺̯̖̰̓͌ͫ͆͋ͩͅt͐̃rash ̯͙̓ͯ̍̔͡<


		>They ͂͢Pushed ̺̤͍͈ͨ̈́͢me ̙͚̓̾into ͔darkness..<


		>Now ̮̥͔̝̟̅̅͌ͭ̃ͯͨ͠Y'ALL ͚̬̥̹͔͉̥ͦ̚WILL ͪSUFFER ̶̰̻̬̠̀͗̈́̐ Inṯ̨ͥͣͮ̊ỏ̶̳̦̘̲͒̈̚̚ ̫͎̪̲͔̮ͨ́̉͂ͯ̿̚͞ͅa͙̯̤̺̹͕͝ ͍̈́͗͛̈́Be͆t̩͈̬̖̽ͬt̩̺̗̬͓̟̱ͭe͉͔ͅr̸͐̈́͋̐ ̢͍͉͕͚͚̖͍Pl͙̘̪̺͑ͥ́͗̇ͧ͜a̘̝͓̙͖̥ͩ̈c̨͖̫̩̞͇ͮe͉ͧ̌'<
--]]

-- <><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><> --

			print("  <>Controls<>	")

	print("Q: Ghost Echo <> (Ghosts Exist, and He Wants to Dismember u..)")
	
	print("G: Scary Laugh <> (Scary)")
	
	print("H: Threat <> (ur the TARGET)")
	

-- <><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><> --

--//====================================================\\--
--||			   666 VARIABLES
--\\====================================================//--

local Space = game.Workspace
local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local PlayerGui = Player.PlayerGui
local Cam = Space.CurrentCamera
local Backpack = Player.Backpack
local Character = Player.Character
local Humanoid = Character.Humanoid
local Mouse = Player:GetMouse()
local RootPart = Character["HumanoidRootPart"]
local Torso = Character["Torso"]
local Head = Character["Head"]
local RightArm = Character["Right Arm"]
local LeftArm = Character["Left Arm"]
local RightLeg = Character["Right Leg"]
local LeftLeg = Character["Left Leg"]
local RootJoint = RootPart["RootJoint"]
local Neck = Torso["Neck"]
local RightShoulder = Torso["Right Shoulder"]
local LeftShoulder = Torso["Left Shoulder"]
local RightHip = Torso["Right Hip"]
local LeftHip = Torso["Left Hip"]
local UserInputService = game:GetService("UserInputService")
local SS = game:GetService("SoundService")

IT = Instance.new
CF = CFrame.new
VT = Vector3.new
RAD = math.rad
C3 = Color3.new
UD2 = UDim2.new
BRICKC = BrickColor.new
EULER = CFrame.fromEulerAnglesXYZ
MRANDOM = math.random

-- Anim IDs
local Equip = 94160581
local Hold = 96559165
local Stab = 96559159
local Unequip = 94160581
local Laugh = 129423131
local Point = 128853357

--//====================================================\\--
--||			   BOMBO KNIFE
--\\====================================================//--

local Knife = IT("Tool", Backpack)
Knife.TextureId = "rbxassetid://77538764465517"
Knife.Name = "Bombo's Knife"
Knife.ToolTip = "Bombo"
Knife.RequiresHandle = true

local trackStart, trackSupport, trackAttack
local handle = IT("Part")
handle.Name = "Handle"
handle.Size = VT(1, 4, 1)
handle.CanCollide = false
handle.Anchored = false
handle.Parent = Knife

local mesh

Knife.Equipped:Connect(function()
    -- Equip anim
    local AnimSt = IT("Animation")
    AnimSt.AnimationId = "rbxassetid://" .. Equip
    trackStart = Humanoid:LoadAnimation(AnimSt)
    trackStart:Play()
    -- Mesh
    mesh = IT("SpecialMesh")
    mesh.MeshId = "rbxassetid://121944778"
    mesh.TextureId = "rbxassetid://121944805"
    mesh.Scale = VT(1, 1, 1)
    mesh.Offset = VT(0, 1, -0.1)
    mesh.Parent = handle
    -- Equip sound
    local slashKnife = IT("Sound", Character)
    slashKnife.Name = "Equip"
    slashKnife.SoundId = "rbxassetid://6632854296"
    slashKnife.Volume = 5
    slashKnife:Play()
    task.wait(0.1)  
    -- Hold anim (looped)  
    local AnimSp = IT("Animation")  
    AnimSp.AnimationId = "rbxassetid://" .. Hold  
    trackSupport = Humanoid:LoadAnimation(AnimSp)  
    trackSupport.Looped = true  
    trackSupport:Play()
end)

Knife.Activated:Connect(function()
    -- Knife Slash Anim
    local AnimAtt = IT("Animation")
    AnimAtt.AnimationId = "rbxassetid://".. Stab
    trackAttack = Humanoid:LoadAnimation(AnimAtt)
    trackAttack:Play()
    -- Knife Slash Sound
    local slashKnife = IT("Sound", Character)
    slashKnife.Name = "Slash"
    slashKnife.SoundId = "rbxassetid://18512262218"
    slashKnife.Volume = 5
    slashKnife:Play()

    local hitCooldown = {}
    local connection
    connection = Knife.Handle.Touched:Connect(function(hit)
        local Humanoid1 = hit.Parent:FindFirstChild("Humanoid")
        if Humanoid1 and not hitCooldown[Humanoid1] then
            hitCooldown[Humanoid1] = true
            local stabSound = IT("Sound", Knife.Handle)
            stabSound.SoundId = "rbxassetid://18512256042"
            stabSound.Volume = 5
            stabSound:Play()
            Humanoid1:TakeDamage(7.3)
            game.Debris:AddItem(stabSound, 1)
        end
    end)

    trackAttack.Stopped:Wait()
    hitCooldown = {}
    connection:Disconnect()
end)

Knife.Unequipped:Connect(function()
  if trackSupport then
     trackSupport:Stop()
  end
  if mesh then
     mesh:Destroy()
     mesh = nil
  end
end)

skybox = IT("Part", Character)
skybox.Size = VT(0,0,0)
skybox.Anchored = true
skybox.CanCollide = true

--//====================================================\\--
--||			   CHARACTER
--\\====================================================//--

-- Guest TAG
local naeeym = IT("BillboardGui", Character)
naeeym.Size = UD2(0,100,0,40)
naeeym.StudsOffset = VT(0,2,0)
naeeym.Adornee = Head
local tecks = IT("TextLabel",naeeym)
tecks.BackgroundTransparency = 1
tecks.BorderSizePixel = 0
tecks.Text = "Guest 666"
tecks.Font = "Fantasy"
tecks.FontSize = "Size24"
tecks.TextStrokeTransparency = 0
tecks.TextStrokeColor3 = C3(0,0,0)
tecks.TextColor3 = C3(0,0,0)
tecks.Size = UD2(1,0,0.5,0)

-- Change skin color
LeftArm.BrickColor = BRICKC(C3(0, 0, 0))
RightArm.BrickColor = BRICKC(C3(0, 0, 0))
LeftLeg.BrickColor = BRICKC(C3(0, 0, 0))
RightLeg.BrickColor = BRICKC(C3(0, 0, 0))
Torso.BrickColor = BRICKC(C3(0, 0, 0))
Head.BrickColor = BRICKC(C3(0, 0, 0))

-- Remove cloth
for _, v in pairs(Character:GetChildren()) do
    if v:IsA("Shirt") or v:IsA("Pants") or v:IsA("ShirtGraphic") or v:IsA("Accessory") then
        v:Destroy()
    end
end

-- Remove Face
local face = Head:FindFirstChild("face")
if face then
  face:Destroy()
end

-- If not HatAttachment then is created
if not Head:FindFirstChild("HatAttachment") then
    local att = IT("Attachment")
    att.Name = "HatAttachment"
    att.Parent = Head
    att.Position = VT(0, 0.5, 0)
end

-- Guest Stuff
local HAT = Guest:FindFirstChildWhichIsA("Hat")
if HAT then
    HAT.Parent = Character
    HAT.Name = "666 Hat"
    local handle = HAT:FindFirstChild("Handle")
    if handle then
        local weld = Instance.new("Motor6D")
        weld.Name = "AccessoryWeld"
        weld.Part0 = Character.Head
        weld.Part1 = handle
        weld.C0 = CF(0, 0.5, -0.11)
        weld.Parent = handle
    end
end

local SHIRT = Guest.Shirt:Clone()
SHIRT.Name = "666 Shirt"
SHIRT.Parent = Character

local PANTS = Guest.Clothing:Clone()
PANTS.Name = "666 Pants"
PANTS.Parent = Character

local GuestF = IT("Decal")
GuestF.Name = "666 Face"
GuestF.Texture = "rbxassetid://179693472"
GuestF.Parent = Head
GuestF.Face = Enum.NormalId.Front

-- // CHARACTER EFFECTS \\ --
function BurningEff(part)
    local eff1 = IT("ParticleEmitter",part)
    eff1.Size = NumberSequence.new(.1)
    eff1.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(.2,0),NumberSequenceKeypoint.new(1,1)})
    eff1.LightEmission = 1
    eff1.Lifetime = NumberRange.new(1)
    eff1.Speed = NumberRange.new(0)
    eff1.Rate = 100
    eff1.Texture = "rbxassetid://347504241"
    eff1.Acceleration = VT(0,10,0)
    eff1.Color = ColorSequence.new(C3(1,0,0))

    local eff2 = IT("ParticleEmitter",part)
    eff2.Size = NumberSequence.new(.1)
    eff2.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(.2,0),NumberSequenceKeypoint.new(1,1)})
    eff2.LightEmission = 1
    eff2.Lifetime = NumberRange.new(1)
    eff2.Speed = NumberRange.new(0)
    eff2.Rate = 100
    eff2.Texture = "rbxassetid://347504259"
    eff2.Acceleration = VT(0,10,0)
    eff2.Color = ColorSequence.new(C3(1,0,0))

    local eff3 = IT("ParticleEmitter",part)
    eff3.Size = NumberSequence.new(1)
    eff3.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(1,1)})
    eff3.LightEmission = 1
    eff3.Lifetime = NumberRange.new(1)
    eff3.Speed = NumberRange.new(0)
    eff3.Rate = 100
    eff3.Texture = "rbxasset://textures/particles/fire_main.dds"
    eff3.Acceleration = VT(0,10,0)
    eff3.Color = ColorSequence.new(C3(1,0,0))
end

-- Trail of Corruption // 666 Tag
local lastTrace
local running = true
local function Loop()
    while running do
        if Character and Humanoid and Humanoid.Health > 0 then
            skybox.CFrame = skybox.CFrame * EULER(0, RAD(1), 0)
            tecks.Position = UD2(0, MRANDOM(-3,3), 0, MRANDOM(-3,3))

            lastTrace = IT("Part", Space)
            lastTrace.Name = "GuestTrace"
            lastTrace.Size = VT(10, 0.5, 10)
            lastTrace.Material = "Granite"
            lastTrace.BrickColor = BRICKC("Really black")
            lastTrace.Transparency = .3
            lastTrace.CanCollide = false
            lastTrace.Anchored = true
            lastTrace.CFrame = Torso.CFrame - VT(0,3,0)
            BurningEff(lastTrace)
            game.Debris:AddItem(lastTrace, 2)
        end
        task.wait(0.1)
    end
end

-- Ghost Echo
local ghostEchoActive = false
local ghostEchoConnection

local function ghostEchoEffect()
    while ghostEchoActive do
        for _, limb in ipairs(Character:GetChildren()) do
            if limb:IsA("BasePart") then
                local ghost = Instance.new("Part")
                if limb.Name == "Head" then
                    ghost.Size = Vector3.new(1, 1, 1)
                else
                    ghost.Size = limb.Size
                end
                ghost.CFrame = limb.CFrame
                ghost.Anchored = true
                ghost.CanCollide = false
                ghost.Parent = Space
                ghost.Material = "Neon"
                ghost.BrickColor = BRICKC("Really black")
                ghost.Transparency = 0.35
                BurningEff(ghost)
                game.Debris:AddItem(ghost, 1)
            end
        end
        task.wait(0.1)
    end
end
local function damagePlayer(hit)
    if hit.Parent:FindFirstChild("Humanoid") then
        local Humanoid1 = hit.Parent.Humanoid
        Humanoid1:TakeDamage(0.8)
    end
end

-- Paralel loop (Subliminal messages)
task.spawn(function()
    while running do
        task.wait(0.1)
        local chance = math.random(0,100)
        if chance < 10 then
            local sel = math.random(1,3)
            if sel == 1 then
                tecks.Text = "Bullied.."
            elseif sel == 2 then
                tecks.Text = "REVENGE"
            elseif sel == 3 then
                tecks.Text = "DESTROY Y'ALL"
            end
        else
            tecks.Text = "Guest 666"
        end
    end
end)

-- Paralel loop
task.spawn(Loop)

local dead = IT("Sound", Torso.Parent)
dead.SoundId = "rbxassetid://264486467"
dead.Volume = 10
dead.Looped = false
--
local scream = IT("Sound", SS)
scream.SoundId = "rbxassetid://11984351"
scream.Volume = 7
scream.PlaybackSpeed = 0.7
scream.Looped = false
--
local deathmus = IT("Sound", Space)
deathmus.SoundId = "rbxassetid://1840493961"
deathmus.Volume = 5.7
deathmus.PlaybackSpeed = 0.7
deathmus.Looped = true
--
local nightwind = IT("Sound", Space)
nightwind.SoundId = "rbxassetid://238895410"
nightwind.Volume = 9
nightwind.Looped = true

-- Soundtrack
local Theme666 = IT("Sound", Character)
Theme666.Name = "666"
Theme666.Volume = 9.5
Theme666.Looped = true
Theme666.SoundId = "rbxassetid://101593989848708"
Theme666.Pitch = 0.077
Theme666:Play()
-- Specs
local Hint = IT("Hint", PlayerGui)
Hint.Text = "Keys: [Q] = Ghost Echo, [G] = Scary Laugh, [H] = Threat"

--//====================================================\\--
--||			         STUFF
--\\====================================================//--

local laughAnim = IT("Animation")
laughAnim.AnimationId = "rbxassetid://".. Laugh
local laughTrack = Humanoid:LoadAnimation(laughAnim)
laughTrack:AdjustSpeed(100)
local laughSound = IT("Sound", Character)
laughSound.SoundId = "rbxassetid://111531561995063"
laughSound.Volume = 1

local aimAnim = IT("Animation")
aimAnim.AnimationId = "rbxassetid://".. Point
local aimTrack = Humanoid:LoadAnimation(aimAnim)
aimTrack:AdjustSpeed(100)
local threatSound = IT("Sound", Character)
threatSound.SoundId = "rbxassetid://112366358437630"
threatSound.Volume = 1

local ghostEchoSound = IT("Sound", Character)
ghostEchoSound.SoundId = "rbxassetid://73525171878116"
ghostEchoSound.Volume = 1
ghostEchoSound.Looped = true

UserInputService.InputBegan:Connect(function(input)
   if input.KeyCode == Enum.KeyCode.G then
    laughTrack:Play()
    laughSound:Play()
   end
end)

UserInputService.InputBegan:Connect(function(input)
   if input.KeyCode == Enum.KeyCode.H then
    threatSound:Play()
    aimTrack:Play()
   end
end)

UserInputService.InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.Q then
        ghostEchoActive = not ghostEchoActive
        if ghostEchoActive then
            Humanoid.WalkSpeed = 35
            ghostEchoSound:Play()
            ghostEchoConnection = Humanoid.Touched:Connect(damagePlayer)
            spawn(ghostEchoEffect)
        else
            Humanoid.WalkSpeed = 16
            ghostEchoSound:Stop()
            if ghostEchoConnection then
                ghostEchoConnection:Disconnect()
            end
        end
    end
end)

--//====================================================\\--
--||			     DEFEATED
--\\====================================================//--

Humanoid.Died:Connect(function()
running = false
    if lastTrace then
        lastTrace:Destroy()
    end
    if ghost then
        ghost:Destroy()
    end
local pat = IT("Part", Space)
pat.Transparency = 1
pat.Anchored = true
pat.CFrame = Torso.CFrame
naeeym.Parent = pat
naeeym.Adornee = pat
skybox.Parent = Space
--
if tecks.Text == "Guest 666" or tecks.Text == "Bullied.." or tecks.Text == "REVENGE" or tecks.Text == "DESTROY Y'ALL" then
    tecks.TextSize = 48
    tecks.TextColor3 = C3(1,0,0)
    tecks.Text = "I'LL RETURN"
end
--
Theme666:Destroy()
Hint:Destroy()
dead:Play()
scream:Play()
deathmus:Play()
nightwind:Play()
game.Lighting.OutdoorAmbient = C3(0,0,0)
game.Lighting.TimeOfDay = "00:00:00"
game.Lighting.FogColor = C3(0,0,0)
game.Lighting.FogEnd = 1000
local ex = IT("Explosion", Space)
ex.Position = Torso.Position
ex.Visible = false
ex.BlastRadius = 999999999999999999999999
ex.BlastPressure = 9999999999999999999999999
end)

--//====================================================\\--
--||			     END OF HORROR SCRIPT
--\\====================================================//--
