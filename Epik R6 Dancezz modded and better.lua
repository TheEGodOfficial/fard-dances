-- gObl00x Notification
game:GetService("StarterGui"):SetCore("SendNotification", { 
    Title = "gOb scripts",
    Text = "LOL Time to Exploit! (E God was here...)",
    Icon = "rbxassetid://126389658690593",
    Duration = 15
})
-- MusicFolder
if makefolder and not isfolder("Epik Musics") then
    makefolder("Epik Musics")
end
-- THEME
if not isfile("Epik Musics/Friday Theme.mp3") then
       writefile("Epik Musics/Friday Theme.mp3", game:HttpGet("https://github.com/gObl00x/Epik-Musics/raw/refs/heads/main/Friday%20Theme.mp3"))
end
--//==============================================================================================//--
--||		EPIK R6 DANCEZZZ CREATED BY gObl00x // NEW ANIMATOR6D // added old dances and some more by e god
--|| Ya sorry, I'll not make all these animations or the ones from the previous version to CFrames
--\\===========================================================================================//--

local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local Character = Player.Character or Player.CharacterAdded:Wait()
local Humanoid = Character:FindFirstChildOfClass("Humanoid")
local Backpack = Player.Backpack
local RootPart = Character:WaitForChild("HumanoidRootPart")
local Mouse = Player:GetMouse()
local SS = game:GetService("SoundService")
local IsDancing = false
local currentAnim = nil
IT = Instance.new
V3 = Vector3.new
CF = CFrame.new
RAD = math.rad

----- ANIMATOR 6D --------
if not getgenv().Animator6D or getgenv().Animator6DStop then
    getgenv().Animator6DLoadedPro = nil
    loadstring(game:HttpGet("https://raw.githubusercontent.com/gObl00x/Stuff/refs/heads/main/Animator6D.lua"))()
end
--------------------------

--// CAMERA FOLLOWS HEAD (Without changing CameraSubject) \\--
local RunService = game:GetService('RunService')
local Head = Character:FindFirstChild("Head")

RunService.RenderStepped:Connect(function(deltaTime: number)
local function Alpha(n)
   return math.clamp(n * deltaTime * 60, 0, 1)
end
	Humanoid.CameraOffset = Humanoid.CameraOffset:Lerp((RootPart.CFrame * CF(0, 1.5, 0)):PointToObjectSpace(Head.Position),Alpha(0.15))
end)
-------------------------------------------------------------

-- // CHANGE DEFAULT ANIMS WITH EPIK ANIMS \\ --
----------------------------------------------------
-- // Get animations \\ --
local animPack = game:GetObjects("rbxassetid://11405076389")[1].R6["Run + Walk + Jump + Fall R6"]
local AnimFolder = animPack:FindFirstChild("AnimSaves")

local IdleAnim = game:GetObjects("rbxassetid://16600175853")[1].AnimSaves:FindFirstChild("Idle 7")
local WalkAnim = AnimFolder:FindFirstChild("Walk V4")
local JumpAnim = AnimFolder:FindFirstChild("Jump V2")
local SitAnim  = game:GetObjects("rbxassetid://12452064144")[1]["R6 Animation Rig"].AnimSaves:FindFirstChild("SITTING")

-- // Animation Paths \\ --
local AnimPaths = {
    Idle = IdleAnim,
    Walk = WalkAnim,
    Jump = JumpAnim,
    Sit  = SitAnim
}
----------------------------------------------------

-- // PLAYER Anim Table \\ --
local PlayerAnims = {
    Idle = { KFS = AnimPaths.Idle, IsPlaying = false },
    Walk = { KFS = AnimPaths.Walk, IsPlaying = false },
    Jump = { KFS = AnimPaths.Jump, IsPlaying = false },
    Sit  = { KFS = AnimPaths.Sit,  IsPlaying = false },
}
----------------------------------------------------

----------------------------------------------------

-- // Play Animations \\ --
local function playAnim(animName, looped)
    if currentAnim == animName then return end
    if getgenv().Animator6DStop then
        getgenv().Animator6DStop()
    end

    local anim = PlayerAnims[animName]
    if anim and anim.KFS then
        for _, data in pairs(PlayerAnims) do
            data.IsPlaying = false
        end
        anim.IsPlaying = true
        currentAnim = animName
        
          getgenv().Animator6D(anim.KFS, 1, looped)
    end
end
----------------------------------------------------

-- // Detect Anims \\ --
RunService.RenderStepped:Connect(function(deltaTime)
	local moving = Humanoid.MoveDirection.Magnitude > 0
	local jumping = Humanoid.FloorMaterial == Enum.Material.Air
	local sitting = Humanoid.Sit or (Humanoid:GetState() == Enum.HumanoidStateType.Seated)

	if IsDancing then return end

	if sitting then
		if not PlayerAnims.Sit.IsPlaying then
			playAnim("Sit", true)
		end
		return
	end

	if jumping then
		if not PlayerAnims.Jump.IsPlaying then
			playAnim("Jump", false)
		end
		return
	end

	if moving then
		if not PlayerAnims.Walk.IsPlaying then
			playAnim("Walk", true)
		end
	else
		if not PlayerAnims.Idle.IsPlaying then
			playAnim("Idle", true)
		end
	end
end)
----------------------------------------------------

----- GLOBAL CACHE -------
local EffectFolder = Character:FindFirstChild("EffectFolder")
if not EffectFolder then
	EffectFolder = IT("Folder")
	EffectFolder.Name = "EffectFolder"
	EffectFolder.Parent = Character
end
-- Effects Cache
mesh = IT("SpecialMesh")
mesh.MeshId = "rbxassetid://1439035575"
mesh.TextureId = "rbxassetid://1439035619"
mesh.Scale = V3(1, 1, 1.5)
mesh.Offset = V3(0, -0.4, 0)
mesh.Parent = EffectFolder

-- Music Cache
local Music1 = IT("Sound", EffectFolder)
Music1.Name = "Smug"
local Music2 = IT("Sound", EffectFolder)
Music2.Name = "Hakari"
local Music3 = IT("Sound", EffectFolder)
Music3.Name = "Rat Dance"
local Music4 = IT("Sound", EffectFolder)
Music4.Name = "Kazotsky Kick"
local Music5 = IT("Sound", EffectFolder)
Music5.Name = "Boppin"
local Music6 = IT("Sound", EffectFolder)
Music6.Name = "Moongazer"
local Music7 = IT("Sound", EffectFolder)
Music7.Name = "Mannrobics"
local Music8 = IT("Sound", EffectFolder)
Music8.Name = "Reanimated"
local Music9 = IT("Sound", EffectFolder)
Music9.Name = "Goopie"
local Music10 = IT("Sound", EffectFolder)
Music10.Name = "Fresh"
local Music11 = IT("Sound", EffectFolder)
Music11.Name = "Sequencia de Vapor"
local Music12 = IT("Sound", EffectFolder)
Music12.Name = "Mr.WMD Boombox"
local Music13 = IT("Sound", EffectFolder)
Music13.Name = "Take The L"
local Music14 = IT("Sound", EffectFolder)
Music14.Name = "Secret"
local Music15 = IT("Sound", EffectFolder)
Music15.Name = "Caramelldansen"
local Music16 = IT("Sound", EffectFolder)
Music16.Name = "Spooky Month"
local Music17 = IT("Sound", EffectFolder)
Music17.Name = "Boogie Down"
local Music18 = IT("Sound", EffectFolder)
Music18.Name = "Mio Honda Step"
local Music19 = IT("Sound", EffectFolder)
Music19.Name = "Fright Funk"
--------------------------

-- // PLAY EPIK SOUNDTRACK // --
local theme = IT("Sound", SS)
theme.Name = "THEME"
theme.SoundId = getcustomasset("Epik Musics/Friday Theme.mp3")
theme.Volume = 0.75
theme.Looped = true
theme:Play()
--------------------------------

--//==============================================================================================//--
--||		THE FUN STARTS HERE 
--\\===========================================================================================//--

-- // Smug Tool Dance \\ --
local tool1 = IT("Tool", Backpack)
tool1.Name = "Smug"
tool1.RequiresHandle = false
--
if not isfile("Epik Musics/Dancing.mp3") then
       writefile("Epik Musics/Dancing.mp3", game:HttpGet("https://github.com/gObl00x/Epik-Musics/raw/refs/heads/main/Dancing.mp3"))
end
--
tool1.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
    Humanoid.WalkSpeed = 10
       getgenv().Animator6D(6512463532, 1, true)
-- Music
Music1.Parent = Character
Music1.SoundId = getcustomasset("Epik Musics/Dancing.mp3")
Music1.Looped = true
Music1:Play()
end
end)

tool1.Unequipped:Connect(function()
if Music1.Parent == Character and Music1.Playing then
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
    Humanoid.WalkSpeed = 16
       Music1:Stop()
       Music1.Parent = EffectFolder
    end
    print("Dance 1 and music stopped")
end)

-- // Hakari Tool Dance \\ --
local tool2 = IT("Tool", Backpack)
tool2.Name = "Hakari"
tool2.RequiresHandle = false
--
if not isfile("Epik Musics/hakari.mp3") then
       writefile("Epik Musics/hakari.mp3", game:HttpGet("https://github.com/gObl00x/Epik-Musics/raw/refs/heads/main/Hakari.mp3"))
end
--
local CachedEffects = {}
tool2.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
       getgenv().Animator6D(17147170140, 1, true)
-- Aura
local EffectModel = game:GetObjects("rbxassetid://17286931410")[1]
for _, limb in ipairs(Character:GetChildren()) do
	if limb:IsA("BasePart") then
for _, obj in ipairs(EffectModel:GetDescendants()) do
	if obj:IsA("ParticleEmitter") or obj:IsA("Trail") or obj:IsA("Beam") then
		local Aura = obj:Clone()
		Aura.Parent = limb
		table.insert(CachedEffects, Aura)
		   end
		end
	end
end
EffectModel:Destroy()
-- Music
Music2.Parent = Character
Music2.SoundId = getcustomasset("Epik Musics/Hakari.mp3")
Music2.Looped = true
Music2:Play()
end
end)

tool2.Unequipped:Connect(function()
if Music2.Parent == Character and Music2.Playing then
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
       Music2:Stop()
       Music2.Parent = EffectFolder
    end
    for _, Aura in pairs(CachedEffects) do
           Aura:Destroy()
		end
    local CachedEffects = {}
    print("Dance 2 and music stopped")
end)


-- // Rat Dance Tool Dance \\ --
local tool3 = IT("Tool", Backpack)
tool3.Name = "Rat Dance"
tool3.RequiresHandle = false
--
if not isfile("Epik Musics/rat.mp3") then
       writefile("Epik Musics/rat.mp3", game:HttpGet("https://github.com/Nitro-GT/music/raw/refs/heads/main/rat.mp3"))
end
--
tool3.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
       getgenv().Animator6D(117971041844492, 1, true)
-- Music
Music3.Parent = Character
Music3.SoundId = getcustomasset("Epik Musics/rat.mp3")
Music3.Looped = true
Music3:Play()
end
end)

tool3.Unequipped:Connect(function()
if Music3.Parent == Character and Music3.Playing then
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
       Music3:Stop()
       Music3.Parent = EffectFolder
    end
    print("Dance 3 and music stopped")
end)


-- // Kazotsky Kick Tool Dance \\ --
local tool4 = IT("Tool", Backpack)
tool4.Name = "Kazotsky Kick"
tool4.RequiresHandle = false
--
if not isfile("Epik Musics/Kazotsky Kick.mp3") then
       writefile("Epik Musics/Kazotsky Kick.mp3", game:HttpGet("https://github.com/gObl00x/Epik-Musics/raw/refs/heads/main/Kazotsky%20Kick.mp3"))
end
local KazotskyKick= game:GetObjects("rbxassetid://8903870018")[1].AnimSaves["Kazotsky Kick"]
--
tool4.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
        Humanoid.WalkSpeed = 6
       getgenv().Animator6D(KazotskyKick, 1, true)
-- Music
Music4.Parent = Character
Music4.SoundId = getcustomasset("Epik Musics/Kazotsky Kick.mp3")
Music4.Looped = true
Music4:Play()
end
end)

tool4.Unequipped:Connect(function()
if Music4.Parent == Character and Music4.Playing then
Humanoid.WalkSpeed = 16
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
       Music4:Stop()
       Music4.Parent = EffectFolder
    end
    print("Dance 4 and music stopped")
end)


-- // Boppin Tool Dance \\ --
local tool5 = IT("Tool", Backpack)
tool5.Name = "Boppin"
tool5.RequiresHandle = false
--
if not isfile("Epik Musics/Boppin.mp3") then
       writefile("Epik Musics/Boppin.mp3", game:HttpGet("https://github.com/gObl00x/Epik-Musics/raw/refs/heads/main/Boppin.mp3"))
end
--
tool5.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
       getgenv().Animator6D(15710560047, 1, true)
-- Music
Music5.Parent = Character
Music5.SoundId = getcustomasset("Epik Musics/Boppin.mp3")
Music5.Looped = true
Music5:Play()
end
end)

tool5.Unequipped:Connect(function()
if Music5.Parent == Character and Music5.Playing then
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
       Music5:Stop()
       Music5.Parent = EffectFolder
    end
    print("Dance 5 and music stopped")
end)


-- // Moongazer Tool Dance \\ --
local tool6 = IT("Tool", Backpack)
tool6.Name = "Moongazer"
tool6.RequiresHandle = false
--
if not isfile("Epik Musics/Moongazer.mp3") then
       writefile("Epik Musics/Moongazer.mp3", game:HttpGet("https://github.com/Nitro-GT/music/raw/refs/heads/main/Moongazer.mp3"))
end
--
tool6.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
       getgenv().Animator6D(80947480089411, 1, true)
-- Music
Music6.Parent = Character
Music6.SoundId = getcustomasset("Epik Musics/Moongazer.mp3")
Music6.Looped = true
Music6:Play()
end
end)

tool6.Unequipped:Connect(function()
if Music6.Parent == Character and Music6.Playing then
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
       Music6:Stop()
       Music6.Parent = EffectFolder
    end
    print("Dance 6 and music stopped")
end)


-- // Mannrobics Tool Dance \\ --
local tool7 = IT("Tool", Backpack)
tool7.Name = "Mannrobics"
tool7.RequiresHandle = false
--
if not isfile("Epik Musics/Mannrobics.mp3") then
       writefile("Epik Musics/Mannrobics.mp3", game:HttpGet("https://github.com/gObl00x/Epik-Musics/raw/refs/heads/main/Mannrobics.mp3"))
end
--
tool7.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
       getgenv().Animator6D(3678753938, 1, true)
-- Music
Music7.Parent = Character
Music7.SoundId = getcustomasset("Epik Musics/Mannrobics.mp3")
Music7.Looped = true
Music7:Play()
end
end)

tool7.Unequipped:Connect(function()
if Music7.Parent == Character and Music7.Playing then
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
       Music7:Stop()
       Music7.Parent = EffectFolder
    end
    print("Dance 7 and music stopped")
end)


-- // Reanimated Tool Dance \\ --
local tool8 = IT("Tool", Backpack)
tool8.Name = "Reanimated"
tool8.RequiresHandle = false
--
if not isfile("Epik Musics/Reanimated.mp3") then
       writefile("Epik Musics/Reanimated.mp3", game:HttpGet("https://github.com/gObl00x/Epik-Musics/raw/refs/heads/main/Reanimated.mp3"))
end
local Reanimated = game:GetObjects("rbxassetid://9382474754")[1].AnimSaves:FindFirstChild("Reanimated")
--
tool8.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
       getgenv().Animator6D(Reanimated, 1, true)
-- Music
Music8.Parent = Character
Music8.SoundId = getcustomasset("Epik Musics/Reanimated.mp3")
Music8.Looped = true
Music8:Play()
end
end)

tool8.Unequipped:Connect(function()
if Music8.Parent == Character and Music8.Playing then
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
       Music8:Stop()
       Music8.Parent = EffectFolder
    end
    print("Dance 8 and music stopped")
end)


-- // Goopie Tool Dance \\ --
local tool9 = IT("Tool", Backpack)
tool9.Name = "Goopie"
tool9.RequiresHandle = false
--
if not isfile("Epik Musics/Goopie.mp3") then
       writefile("Epik Musics/Goopie.mp3", game:HttpGet("https://github.com/gObl00x/Epik-Musics/raw/refs/heads/main/Goopie.mp3"))
end
--
tool9.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
       getgenv().Animator6D(13096880262, 1, true)
-- Music
Music9.Parent = Character
Music9.SoundId = getcustomasset("Epik Musics/Goopie.mp3")
Music9.Looped = true
Music9:Play()
end
end)

tool9.Unequipped:Connect(function()
if Music9.Parent == Character and Music9.Playing then
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
       Music9:Stop()
       Music9.Parent = EffectFolder
    end
    print("Dance 9 and music stopped")
end)


-- // Fresh Tool Dance \\ --
local tool10 = IT("Tool", Backpack)
tool10.Name = "Fresh"
tool10.RequiresHandle = false
--
if not isfile("Epik Musics/Fresh.mp3") then
       writefile("Epik Musics/Fresh.mp3", game:HttpGet("https://github.com/gObl00x/Epik-Musics/raw/refs/heads/main/Fresh.mp3"))
end
local Fresh = game:GetObjects("rbxassetid://93309532260574")[1].Emotes.AnimSaves["Fresh"]
--
tool10.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
         Humanoid.WalkSpeed = 5
       getgenv().Animator6D(Fresh, 1, true)
-- Music
Music10.Parent = Character
Music10.SoundId = getcustomasset("Epik Musics/Fresh.mp3")
Music10.Looped = true
Music10:Play()
end
end)

tool10.Unequipped:Connect(function()
if Music10.Parent == Character and Music10.Playing then
Humanoid.WalkSpeed = 16
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
       Music10:Stop()
       Music10.Parent = EffectFolder
    end
    print("Dance 10 and music stopped")
end)


-- // SequênciaDeVapor Tool Dance \\ --
local tool11 = IT("Tool", Backpack)
tool11.Name = "SequênciaDeVapor"
tool11.RequiresHandle = false
--
if not isfile("Epik Musics/SequenciaDeVapor.mp3") then
       writefile("Epik Musics/SequenciaDeVapor.mp3", game:HttpGet("https://github.com/gObl00x/Epik-Musics/raw/refs/heads/main/SequenciaDeVapor.mp3"))
end
local Sequencia = game:GetObjects("rbxassetid://93309532260574")[1].Emotes.AnimSaves["Sea Santis"]
--
tool11.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
        Humanoid.WalkSpeed = 0
       getgenv().Animator6D(Sequencia, 1, true)
-- Music
Music11.Parent = Character
Music11.SoundId = getcustomasset("Epik Musics/SequenciaDeVapor.mp3")
Music11.Looped = true
Music11:Play()
end
end)

tool11.Unequipped:Connect(function()
if Music11.Parent == Character and Music11.Playing then
Humanoid.WalkSpeed = 16
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
       Music11:Stop()
       Music11.Parent = EffectFolder
    end
    print("Dance 11 and music stopped")
end)


-- // Mr.WMD Boombox Tool Dance \\ --
local tool12 = IT("Tool", Backpack)
tool12.Name = "Mr.WMD Boombox"
tool12.RequiresHandle = false
--
local handle = IT("Part")
handle.Name = "Handle"
handle.Size = V3(0.01, 0.01, 0.01)
handle.CanCollide = false
handle.Anchored = false
handle.Parent = tool12

local weld = IT("WeldConstraint")
handle.CFrame = Character["Right Leg"].CFrame * CF(0, -1, 0) * CFrame.Angles(0, RAD(90), 0)
handle.Parent = Character["Right Leg"]
weld.Part0 = Character["Right Leg"]
weld.Part1 = handle
weld.Parent = handle
--
if not isfile("Epik Musics/Wipe me Down.mp3") then
       writefile("Epik Musics/Wipe me Down.mp3", game:HttpGet("https://github.com/gObl00x/Epik-Musics/raw/refs/heads/main/Wipe%20me%20Down.mp3"))
end
local Boombox = game:GetObjects("rbxassetid://93309532260574")[1].Emotes.AnimSaves["Rapper box"]
--
tool12.Equipped:Connect(function()
    if Character and mesh.Parent == EffectFolder then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
        mesh.Parent = handle
        Humanoid.WalkSpeed = 0
       getgenv().Animator6D(Boombox, 1, true)
-- Music
Music12.Parent = Character
Music12.SoundId = getcustomasset("Epik Musics/Wipe me Down.mp3")
Music12.Looped = true
Music12:Play()
end
end)

tool12.Unequipped:Connect(function()
Humanoid.WalkSpeed = 16
if Music12.Parent == Character and Music12.Playing then
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
    Music12:Stop()
    Music12.Parent = EffectFolder
    end
     if mesh.Parent == handle then
        mesh.Parent = EffectFolder
     end
    print("Dance 12 and music stopped")
end)


-- // Take The L Tool Dance \\ --
local tool13 = IT("Tool", Backpack)
tool13.Name = "Take The L"
tool13.RequiresHandle = false
--
if not isfile("Epik Musics/L Emote.mp3") then
       writefile("Epik Musics/L Emote.mp3", game:HttpGet("https://github.com/gObl00x/Epik-Musics/raw/refs/heads/main/L%20Emote.mp3"))
end
local TakeTheL= game:GetObjects("rbxassetid://8903870018")[1].AnimSaves["Take The L"]
--
tool13.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
        Humanoid.WalkSpeed = 6.5
       getgenv().Animator6D(TakeTheL, 1, true)
-- Music
Music13.Parent = Character
Music13.SoundId = getcustomasset("Epik Musics/L Emote.mp3")
Music13.Looped = true
Music13:Play()
end
end)

tool13.Unequipped:Connect(function()
if Music13.Parent == Character and Music13.Playing then
Humanoid.WalkSpeed = 16
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
       Music13:Stop()
       Music13.Parent = EffectFolder
    end
    print("Dance 13 and music stopped")
end)


-- // It's a Secret Tool Dance \\ --
local tool14 = IT("Tool", Backpack)
tool14.Name = "It's a Secret"
tool14.RequiresHandle = false
--
if not isfile("Epik Musics/secret.mp3") then
       writefile("Epik Musics/secret.mp3", game:HttpGet("https://github.com/Nitro-GT/music/raw/refs/heads/main/secret.mp3"))
end
local ItsASecret = game:GetObjects("rbxassetid://17767173972")[1].AnimSaves:FindFirstChild("StockDance One")
--
tool14.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
        Humanoid.WalkSpeed = 4
       getgenv().Animator6D(ItsASecret, 1, true)
-- Music
Music14.Parent = Character
Music14.SoundId = getcustomasset("Epik Musics/secret.mp3")
Music14.Looped = true
Music14:Play()
end
end)

tool14.Unequipped:Connect(function()
if Music14.Parent == Character and Music14.Playing then
Humanoid.WalkSpeed = 16
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
    Music14:Stop()
    Music14.Parent = EffectFolder
end
    print("Dance 14 and music stopped")
end)


-- // Caramelldansen Tool Dance \\ --
local tool15 = IT("Tool", Backpack)
tool15.Name = "Caramelldansen"
tool15.RequiresHandle = false
--
if not isfile("Epik Musics/caramell.mp3") then
       writefile("Epik Musics/caramell.mp3", game:HttpGet("https://github.com/Nitro-GT/music/raw/refs/heads/main/caramell.mp3"))
end
local caramell = game:GetObjects("rbxassetid://6929983041")[1].AnimSaves:FindFirstChild("Imported Animation Clip")
--
tool15.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
        Humanoid.WalkSpeed = 2.5
       getgenv().Animator6D(caramell, 1, true)
-- Music
Music15.Parent = Character
Music15.SoundId = getcustomasset("Epik Musics/caramell.mp3")
Music15.Looped = true
Music15:Play()
end
end)

tool15.Unequipped:Connect(function()
if Music15.Parent == Character and Music15.Playing then
Humanoid.WalkSpeed = 16
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
    Music15:Stop()
    Music15.Parent = EffectFolder
end
    print("Dance 15 and music stopped")
end)


-- // Spooky Month Tool Dance \\ --
local tool16 = IT("Tool", Backpack)
tool16.Name = "Spooky Month"
tool16.RequiresHandle = false
--
if not isfile("Epik Musics/Spooky Month.mp3") then
       writefile("Epik Musics/Spooky Month.mp3", game:HttpGet("https://github.com/gObl00x/Epik-Musics/raw/refs/heads/main/Spooky%20Month.mp3"))
end
local Spooky = game:GetObjects("rbxassetid://11512762330")[1].AnimSaves:FindFirstChild("Pump Idle")
--
tool16.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
        Humanoid.WalkSpeed = 2.5
       getgenv().Animator6D(Spooky, 1, true)
-- Music
Music16.Parent = Character
Music16.SoundId = getcustomasset("Epik Musics/Spooky Month.mp3")
Music16.Looped = true
Music16:Play()
end
end)

tool16.Unequipped:Connect(function()
if Music16.Parent == Character and Music16.Playing then
Humanoid.WalkSpeed = 16
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
    Music16:Stop()
    Music16.Parent = EffectFolder
end
    print("Dance 16 and music stopped")
end)


-- // Boogie Down Tool Dance \\ --
local tool17 = IT("Tool", Backpack)
tool17.Name = "Boogie Down"
tool17.RequiresHandle = false
local Boogie = game:GetObjects("rbxassetid://16621824519")[1].AnimSaves:FindFirstChild("Boogie Down")
--
tool17.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
        Humanoid.WalkSpeed = 1.5
       getgenv().Animator6D(Boogie, 1.1, true)
Music17.Parent = Character
Music17.SoundId = getcustomasset("Epik Musics/boogie.mp3")
Music17.Looped = true
Music17.PlaybackSpeed = 2
Music17:Play()
end
end)

tool17.Unequipped:Connect(function()
if Music17.Parent == Character and Music17.Playing then
Humanoid.WalkSpeed = 16
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
    Music17:Stop()
    Music17.Parent = EffectFolder
end
    print("Dance 17 and music stopped")
end)


-- // Mio Honda Step Tool Dance \\ --
local tool18 = IT("Tool", Backpack)
tool18.Name = "Mio Honda Step"
tool18.RequiresHandle = false
--
if not isfile("Epik Musics/Step.mp3") then
       writefile("Epik Musics/Step.mp3", game:HttpGet("https://github.com/gObl00x/Epik-Musics/raw/refs/heads/main/Step.mp3"))
end
local Step = game:GetObjects("rbxassetid://6925949000")[1].AnimSaves:FindFirstChild("Imported Animation Clip")
--
tool18.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
    Humanoid.WalkSpeed = 1.8
       getgenv().Animator6D(Step, 1, true)
-- Music
Music18.Parent = Character
Music18.SoundId = getcustomasset("Epik Musics/Step.mp3")
Music18.Looped = true
Music18:Play()
end
end)

tool18.Unequipped:Connect(function()
if Music18.Parent == Character and Music18.Playing then
Humanoid.WalkSpeed = 16
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
    Music18:Stop()
    Music18.Parent = EffectFolder
end
    print("Dance 18 and music stopped")
end)


-- // Fright Funk Tool Dance \\ --
local tool19 = IT("Tool", Backpack)
tool19.Name = "Fright Funk"
tool19.RequiresHandle = false
--
if not isfile("Epik Musics/frightfunk.mp3") then
       writefile("Epik Musics/frightfunk.mp3", game:HttpGet("https://github.com/Nitro-GT/music/raw/refs/heads/main/frightfunk.mp3"))
end
local frightfunk = game:GetObjects("rbxassetid://5337215274")[1].AnimSaves:FindFirstChild("Power Dance")
--
tool19.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
    Humanoid.WalkSpeed = 10
       getgenv().Animator6D(frightfunk, 1.2, true)
-- Music
Music19.Parent = Character
Music19.SoundId = getcustomasset("Epik Musics/frightfunk.mp3")
Music19.Looped = true
Music19:Play()
end
end)

tool19.Unequipped:Connect(function()
if Music19.Parent == Character and Music19.Playing then
Humanoid.WalkSpeed = 16
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
    Music19:Stop()
    Music19.Parent = EffectFolder
end
    print("Dance 19 and music stopped")
end)

-- // The hero Tool Dance \\ --
local tool19 = IT("Tool", Backpack)
tool19.Name = "The Hero"
tool19.RequiresHandle = false
--
if not isfile("The Hero.mp3") then
       writefile("The Hero.mp3", game:HttpGet("https://github.com/gObl00x/Epik-Musics/raw/refs/heads/main/The%20Hero.mp3"))
end
--
tool19.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
    Humanoid.WalkSpeed = 10
       getgenv().Animator6D(133160365635320, 1, true)
-- Music
Music19.Parent = Character
Music19.SoundId = getcustomasset("The Hero.mp3")
Music19.Looped = true
Music19:Play()
end
end)

tool19.Unequipped:Connect(function()
if Music19.Parent == Character and Music19.Playing then
Humanoid.WalkSpeed = 16
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
    Music19:Stop()
    Music19.Parent = EffectFolder
end
    print("Dance 19 and music stopped")
end)

-- // Two Tool Dance \\ --
local tool19 = IT("Tool", Backpack)
tool19.Name = "Two"
tool19.RequiresHandle = false
--
if not isfile("Two.mp3") then
       writefile("Two.mp3", game:HttpGet("https://github.com/gObl00x/Epik-Musics/raw/refs/heads/main/Two.mp3"))
end
--
tool19.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
    Humanoid.WalkSpeed = 10
       getgenv().Animator6D(137845929482571, 1, true)
-- Music
Music19.Parent = Character
Music19.SoundId = getcustomasset("Two.mp3")
Music19.Looped = true
Music19:Play()
end
end)

tool19.Unequipped:Connect(function()
if Music19.Parent == Character and Music19.Playing then
Humanoid.WalkSpeed = 16
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
    Music19:Stop()
    Music19.Parent = EffectFolder
end
    print("Dance 19 and music stopped")
end)

-- // The flop Tool Dance \\ --
local tool19 = IT("Tool", Backpack)
tool19.Name = "The Flop"
tool19.RequiresHandle = false
--
if not isfile("The Flop.mp3") then
       writefile("The Flop.mp3", game:HttpGet("https://github.com/gObl00x/Epik-Musics/raw/refs/heads/main/The%20Flop.mp3"))
end
--
tool19.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
    Humanoid.WalkSpeed = 10
       getgenv().Animator6D(84447598378239, 1, true)
-- Music
Music19.Parent = Character
Music19.SoundId = getcustomasset("The Flop.mp3")
Music19.Looped = true
Music19:Play()
end
end)

tool19.Unequipped:Connect(function()
if Music19.Parent == Character and Music19.Playing then
Humanoid.WalkSpeed = 16
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
    Music19:Stop()
    Music19.Parent = EffectFolder
end
    print("Dance 19 and music stopped")
end)

-- // Club penguin Tool Dance \\ --
local tool19 = IT("Tool", Backpack)
tool19.Name = "Club Penguin"
tool19.RequiresHandle = false
--
if not isfile("Club Penguin.mp3") then
       writefile("Club Penguin.mp3", game:HttpGet("https://github.com/gObl00x/Epik-Musics/raw/refs/heads/main/Club%20Penguin.mp3"))
end
--
tool19.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
    Humanoid.WalkSpeed = 10
       getgenv().Animator6D(89761302048916, 1, true)
-- Music
Music19.Parent = Character
Music19.SoundId = getcustomasset("Club Penguin.mp3")
Music19.Looped = true
Music19:Play()
end
end)

tool19.Unequipped:Connect(function()
if Music19.Parent == Character and Music19.Playing then
Humanoid.WalkSpeed = 16
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
    Music19:Stop()
    Music19.Parent = EffectFolder
end
    print("Dance 19 and music stopped")
end)

-- // Breakdance Tool Dance \\ --
local tool19 = IT("Tool", Backpack)
tool19.Name = "Breakdance"
tool19.RequiresHandle = false
--
if not isfile("Breakdance.mp3") then
       writefile("Breakdance.mp3", game:HttpGet("https://github.com/gObl00x/Epik-Musics/raw/refs/heads/main/Breakdance.mp3"))
end
--
tool19.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
    Humanoid.WalkSpeed = 10
       getgenv().Animator6D(132886479585903, 1, true)
-- Music
Music19.Parent = Character
Music19.SoundId = getcustomasset("Breakdance.mp3")
Music19.Looped = true
Music19:Play()
end
end)

tool19.Unequipped:Connect(function()
if Music19.Parent == Character and Music19.Playing then
Humanoid.WalkSpeed = 16
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
    Music19:Stop()
    Music19.Parent = EffectFolder
end
    print("Dance 19 and music stopped")
end)

-- // Insanity Tool Dance \\ --
local tool19 = IT("Tool", Backpack)
tool19.Name = "Insanity"
tool19.RequiresHandle = false
--
if not isfile("Insanity.mp3") then
       writefile("Insanity.mp3", game:HttpGet("https://github.com/gObl00x/Epik-Musics/raw/refs/heads/main/Insanity.mp3"))
end
--
tool19.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
    Humanoid.WalkSpeed = 10
       getgenv().Animator6D(139483347792972, 1, true)
-- Music
Music19.Parent = Character
Music19.SoundId = getcustomasset("Insanity.mp3")
Music19.Looped = true
Music19:Play()
end
end)

tool19.Unequipped:Connect(function()
if Music19.Parent == Character and Music19.Playing then
Humanoid.WalkSpeed = 16
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
    Music19:Stop()
    Music19.Parent = EffectFolder
end
    print("Dance 19 and music stopped")
end)

-- // Step Tool Dance \\ --
local tool19 = IT("Tool", Backpack)
tool19.Name = "Step"
tool19.RequiresHandle = false
--
if not isfile("Step.mp3") then
       writefile("Step.mp3", game:HttpGet("https://github.com/gObl00x/Epik-Musics/raw/refs/heads/main/Step.mp3"))
end
--
tool19.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
    Humanoid.WalkSpeed = 10
       getgenv().Animator6D(124074233795203, 1, true)
-- Music
Music19.Parent = Character
Music19.SoundId = getcustomasset("Step.mp3")
Music19.Looped = true
Music19:Play()
end
end)

tool19.Unequipped:Connect(function()
if Music19.Parent == Character and Music19.Playing then
Humanoid.WalkSpeed = 16
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
    Music19:Stop()
    Music19.Parent = EffectFolder
end
    print("Dance 19 and music stopped")
end)

-- // Poke dance Tool Dance \\ --
local tool19 = IT("Tool", Backpack)
tool19.Name = "Poke Dance"
tool19.RequiresHandle = false
--
if not isfile("Poke Dance.mp3") then
       writefile("Poke Dance.mp3", game:HttpGet("https://github.com/gObl00x/Epik-Musics/raw/refs/heads/main/Poke%20Dance.mp3"))
end
--
tool19.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
    Humanoid.WalkSpeed = 10
       getgenv().Animator6D(18986687692, 1, true)
-- Music
Music19.Parent = Character
Music19.SoundId = getcustomasset("Poke Dance.mp3")
Music19.Looped = true
Music19:Play()
end
end)

tool19.Unequipped:Connect(function()
if Music19.Parent == Character and Music19.Playing then
Humanoid.WalkSpeed = 16
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
    Music19:Stop()
    Music19.Parent = EffectFolder
end
    print("Dance 19 and music stopped")
end)

-- // Chinese dance Tool Dance \\ --
local tool19 = IT("Tool", Backpack)
tool19.Name = "Chinese Dance"
tool19.RequiresHandle = false
--
if not isfile("Chinese Dance.mp3") then
       writefile("Chinese Dance.mp3", game:HttpGet("https://github.com/gObl00x/Epik-Musics/raw/refs/heads/main/Chinese%20Dance.mp3"))
end
--
tool19.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
    Humanoid.WalkSpeed = 10
       getgenv().Animator6D(124210157097622, 1, true)
-- Music
Music19.Parent = Character
Music19.SoundId = getcustomasset("Chinese Dance.mp3")
Music19.Looped = true
Music19:Play()
end
end)

tool19.Unequipped:Connect(function()
if Music19.Parent == Character and Music19.Playing then
Humanoid.WalkSpeed = 16
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
    Music19:Stop()
    Music19.Parent = EffectFolder
end
    print("Dance 19 and music stopped")
end)

-- // Doodle Tool Dance \\ --
local tool19 = IT("Tool", Backpack)
tool19.Name = "Doodle"
tool19.RequiresHandle = false
--
if not isfile("Doodle.mp3") then
       writefile("Doodle.mp3", game:HttpGet("https://github.com/gObl00x/Epik-Musics/raw/refs/heads/main/Doodle.mp3"))
end
--
tool19.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
    Humanoid.WalkSpeed = 10
       getgenv().Animator6D(137721173051346, 1, true)
-- Music
Music19.Parent = Character
Music19.SoundId = getcustomasset("Doodle.mp3")
Music19.Looped = true
Music19:Play()
end
end)

tool19.Unequipped:Connect(function()
if Music19.Parent == Character and Music19.Playing then
Humanoid.WalkSpeed = 16
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
    Music19:Stop()
    Music19.Parent = EffectFolder
end
    print("Dance 19 and music stopped")
end)

-- // Shinji chair Tool Dance \\ --
local tool19 = IT("Tool", Backpack)
tool19.Name = "Shinji Chair"
tool19.RequiresHandle = false
--
if not isfile("Shinji Meme.mp3") then
       writefile("Shinji Meme.mp3", game:HttpGet("https://github.com/gObl00x/Epik-Musics/raw/refs/heads/main/Shinji%20Meme.mp3"))
end
--
tool19.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
    Humanoid.WalkSpeed = 10
       getgenv().Animator6D(130485792890829, 1, true)
-- Music
Music19.Parent = Character
Music19.SoundId = getcustomasset("Shinji Meme.mp3")
Music19.Looped = true
Music19:Play()
end
end)

tool19.Unequipped:Connect(function()
if Music19.Parent == Character and Music19.Playing then
Humanoid.WalkSpeed = 16
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
    Music19:Stop()
    Music19.Parent = EffectFolder
end
    print("Dance 19 and music stopped")
end)

-- // Rakuten Lemonade Tool Dance \\ --
local tool19 = IT("Tool", Backpack)
tool19.Name = "Rakuten Lemonade"
tool19.RequiresHandle = false
--
if not isfile("Rakuten Lemonade.mp3") then
       writefile("Rakuten Lemonade.mp3", game:HttpGet("https://github.com/gObl00x/Epik-Musics/raw/refs/heads/main/Rakuten%20Lemonade.mp3"))
end
--
tool19.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
    Humanoid.WalkSpeed = 10
       getgenv().Animator6D(18985726113, 1, true)
-- Music
Music19.Parent = Character
Music19.SoundId = getcustomasset("Rakuten Lemonade.mp3")
Music19.Looped = true
Music19:Play()
end
end)

tool19.Unequipped:Connect(function()
if Music19.Parent == Character and Music19.Playing then
Humanoid.WalkSpeed = 16
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
    Music19:Stop()
    Music19.Parent = EffectFolder
end
    print("Dance 19 and music stopped")
end)

-- // Lonely lonely Tool Dance \\ --
local tool19 = IT("Tool", Backpack)
tool19.Name = "Lonely Lonely"
tool19.RequiresHandle = false
--
if not isfile("Lonely Lonely.mp3") then
       writefile("Lonely Lonely.mp3", game:HttpGet("https://github.com/gObl00x/Epik-Musics/raw/refs/heads/main/Lonely%20Lonely.mp3"))
end
--
tool19.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
    Humanoid.WalkSpeed = 10
       getgenv().Animator6D(135780829162802, 1, true)
-- Music
Music19.Parent = Character
Music19.SoundId = getcustomasset("Lonely Lonely.mp3")
Music19.Looped = true
Music19:Play()
end
end)

tool19.Unequipped:Connect(function()
if Music19.Parent == Character and Music19.Playing then
Humanoid.WalkSpeed = 16
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
    Music19:Stop()
    Music19.Parent = EffectFolder
end
    print("Dance 19 and music stopped")
end)

-- // Shuba duck Tool Dance \\ --
local tool19 = IT("Tool", Backpack)
tool19.Name = "Shuba Duck"
tool19.RequiresHandle = false
--
if not isfile("Hey Ya.mp3") then
       writefile("Hey Ya.mp3", game:HttpGet("https://github.com/gObl00x/Epik-Musics/raw/refs/heads/main/Hey%20Ya.mp3"))
end
--
tool19.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
    Humanoid.WalkSpeed = 10
       getgenv().Animator6D(13357063395, 1, true)
-- Music
Music19.Parent = Character
Music19.SoundId = getcustomasset("Hey Ya.mp3")
Music19.Looped = true
Music19:Play()
end
end)

tool19.Unequipped:Connect(function()
if Music19.Parent == Character and Music19.Playing then
Humanoid.WalkSpeed = 16
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
    Music19:Stop()
    Music19.Parent = EffectFolder
end
    print("Dance 19 and music stopped")
end)

-- // Prince of egypt Tool Dance \\ --
local tool19 = IT("Tool", Backpack)
tool19.Name = "Prince of Egypt"
tool19.RequiresHandle = false
--
if not isfile("Prince Of Egypt.mp3") then
       writefile("Prince Of Egypt.mp3", game:HttpGet("https://github.com/gObl00x/Epik-Musics/raw/refs/heads/main/Prince%20Of%20Egypt.mp3"))
end
--
tool19.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
    Humanoid.WalkSpeed = 10
       getgenv().Animator6D(100136360352723, 1, true)
-- Music
Music19.Parent = Character
Music19.SoundId = getcustomasset("Prince Of Egypt.mp3")
Music19.Looped = true
Music19:Play()
end
end)

tool19.Unequipped:Connect(function()
if Music19.Parent == Character and Music19.Playing then
Humanoid.WalkSpeed = 16
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
    Music19:Stop()
    Music19.Parent = EffectFolder
end
    print("Dance 19 and music stopped")
end)

-- // Shoo whop Tool Dance \\ --
local tool19 = IT("Tool", Backpack)
tool19.Name = "Shoo Whop"
tool19.RequiresHandle = false
--
if not isfile("Shoo Whop.mp3") then
       writefile("Shoo Whop.mp3", game:HttpGet("https://github.com/gObl00x/Epik-Musics/raw/refs/heads/main/Shoo%20Whop.mp3"))
end
--
tool19.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
    Humanoid.WalkSpeed = 10
       getgenv().Animator6D(121535445943256, 1, true)
-- Music
Music19.Parent = Character
Music19.SoundId = getcustomasset("Shoo Whop.mp3")
Music19.Looped = true
Music19:Play()
end
end)

tool19.Unequipped:Connect(function()
if Music19.Parent == Character and Music19.Playing then
Humanoid.WalkSpeed = 16
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
    Music19:Stop()
    Music19.Parent = EffectFolder
end
    print("Dance 19 and music stopped")
end)

-- // PoPiPo Tool Dance \\ --
local tool19 = IT("Tool", Backpack)
tool19.Name = "PoPiPo"
tool19.RequiresHandle = false
--
if not isfile("PopPiPo.mp3") then
       writefile("PoPiPo.mp3", game:HttpGet("https://github.com/gObl00x/Epik-Musics/raw/refs/heads/main/PoPiPo.mp3"))
end
--
tool19.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
    Humanoid.WalkSpeed = 10
       getgenv().Animator6D(78991327797272, 1, true)
-- Music
Music19.Parent = Character
Music19.SoundId = getcustomasset("PoPiPo.mp3")
Music19.Looped = true
Music19:Play()
end
end)

tool19.Unequipped:Connect(function()
if Music19.Parent == Character and Music19.Playing then
Humanoid.WalkSpeed = 16
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
    Music19:Stop()
    Music19.Parent = EffectFolder
end
    print("Dance 19 and music stopped")
end)

-- // Monoko Tool Dance \\ --
local tool19 = IT("Tool", Backpack)
tool19.Name = "Monoko"
tool19.RequiresHandle = false
--
if not isfile("Monoko.mp3") then
       writefile("Monoko.mp3", game:HttpGet("https://github.com/gObl00x/Epik-Musics/raw/refs/heads/main/Monoko.mp3"))
end
--
tool19.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
    Humanoid.WalkSpeed = 10
       getgenv().Animator6D(139889845987864, 1, true)
-- Music
Music19.Parent = Character
Music19.SoundId = getcustomasset("Monoko.mp3")
Music19.Looped = true
Music19:Play()
end
end)

tool19.Unequipped:Connect(function()
if Music19.Parent == Character and Music19.Playing then
Humanoid.WalkSpeed = 16
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
    Music19:Stop()
    Music19.Parent = EffectFolder
end
    print("Dance 19 and music stopped")
end)

-- // Lagtrain Tool Dance \\ --
local tool19 = IT("Tool", Backpack)
tool19.Name = "Lagtrain"
tool19.RequiresHandle = false
--
if not isfile("Lagtrain.mp3") then
       writefile("Lagtrain.mp3", game:HttpGet("https://github.com/gObl00x/Epik-Musics/raw/refs/heads/main/Lagtrain.mp3"))
end
--
tool19.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
    Humanoid.WalkSpeed = 10
       getgenv().Animator6D(131559207454945, 1, true)
-- Music
Music19.Parent = Character
Music19.SoundId = getcustomasset("Lagtrain.mp3")
Music19.Looped = true
Music19:Play()
end
end)

tool19.Unequipped:Connect(function()
if Music19.Parent == Character and Music19.Playing then
Humanoid.WalkSpeed = 16
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
    Music19:Stop()
    Music19.Parent = EffectFolder
end
    print("Dance 19 and music stopped")
end)

-- // Inside in my head Tool Dance \\ --
local tool19 = IT("Tool", Backpack)
tool19.Name = "Inside In My Head"
tool19.RequiresHandle = false
--
if not isfile("In My Head.mp3") then
       writefile("In My Head.mp3", game:HttpGet("https://github.com/gObl00x/Epik-Musics/raw/refs/heads/main/In%20My%20Head.mp3"))
end
--
tool19.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
    Humanoid.WalkSpeed = 10
       getgenv().Animator6D(114160464579438, 1, true)
-- Music
Music19.Parent = Character
Music19.SoundId = getcustomasset("In My Head.mp3")
Music19.Looped = true
Music19:Play()
end
end)

tool19.Unequipped:Connect(function()
if Music19.Parent == Character and Music19.Playing then
Humanoid.WalkSpeed = 16
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
    Music19:Stop()
    Music19.Parent = EffectFolder
end
    print("Dance 19 and music stopped")
end)

-- // Lemon Melon Cookie Tool Dance \\ --
local tool19 = IT("Tool", Backpack)
tool19.Name = "Lemon Melon Cookie"
tool19.RequiresHandle = false
--
if not isfile("LMC.mp3") then
       writefile("LMC.mp3", game:HttpGet("https://github.com/gObl00x/Epik-Musics/raw/refs/heads/main/LMC.mp3"))
end
--
tool19.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
    Humanoid.WalkSpeed = 10
       getgenv().Animator6D(120262284704633, 1, true)
-- Music
Music19.Parent = Character
Music19.SoundId = getcustomasset("LMC.mp3")
Music19.Looped = true
Music19:Play()
end
end)

tool19.Unequipped:Connect(function()
if Music19.Parent == Character and Music19.Playing then
Humanoid.WalkSpeed = 16
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
    Music19:Stop()
    Music19.Parent = EffectFolder
end
    print("Dance 19 and music stopped")
end)

-- // Get Down Tool Dance \\ --
local tool19 = IT("Tool", Backpack)
tool19.Name = "Get Down"
tool19.RequiresHandle = false
--
if not isfile("Get Down.mp3") then
       writefile("Get Down.mp3", game:HttpGet("https://github.com/gObl00x/Epik-Musics/raw/refs/heads/main/Get%20Down.mp3"))
end
--
tool19.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
    Humanoid.WalkSpeed = 10
       getgenv().Animator6D(98916367562022, 1, true)
-- Music
Music19.Parent = Character
Music19.SoundId = getcustomasset("Get Down.mp3")
Music19.Looped = true
Music19:Play()
end
end)

tool19.Unequipped:Connect(function()
if Music19.Parent == Character and Music19.Playing then
Humanoid.WalkSpeed = 16
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
    Music19:Stop()
    Music19.Parent = EffectFolder
end
    print("Dance 19 and music stopped")
end)

-- // Dia delicia Tool Dance \\ --
local tool19 = IT("Tool", Backpack)
tool19.Name = "Dia Delicia"
tool19.RequiresHandle = false
--
if not isfile("Dia Delicia.mp3") then
       writefile("Dia Delicia.mp3", game:HttpGet("https://github.com/gObl00x/Epik-Musics/raw/refs/heads/main/Dia%20Delicia.mp3"))
end
--
tool19.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
    Humanoid.WalkSpeed = 10
       getgenv().Animator6D(80641587562132, 1, true)
-- Music
Music19.Parent = Character
Music19.SoundId = getcustomasset("Dia Delicia.mp3")
Music19.Looped = true
Music19:Play()
end
end)

tool19.Unequipped:Connect(function()
if Music19.Parent == Character and Music19.Playing then
Humanoid.WalkSpeed = 16
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
    Music19:Stop()
    Music19.Parent = EffectFolder
end
    print("Dance 19 and music stopped")
end)

-- // Epik Tool Dance \\ --
local tool19 = IT("Tool", Backpack)
tool19.Name = "Epik"
tool19.RequiresHandle = false
--
if not isfile("Epik.mp3") then
       writefile("Epik.mp3", game:HttpGet("https://github.com/gObl00x/Epik-Musics/raw/refs/heads/main/Epik.mp3"))
end
--
tool19.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
    Humanoid.WalkSpeed = 10
       getgenv().Animator6D(135424282094138, 1, true)
-- Music
Music19.Parent = Character
Music19.SoundId = getcustomasset("Epik.mp3")
Music19.Looped = true
Music19:Play()
end
end)

tool19.Unequipped:Connect(function()
if Music19.Parent == Character and Music19.Playing then
Humanoid.WalkSpeed = 16
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
    Music19:Stop()
    Music19.Parent = EffectFolder
end
    print("Dance 19 and music stopped")
end)

-- // Shigure Tool Dance \\ --
local tool19 = IT("Tool", Backpack)
tool19.Name = "Shigure"
tool19.RequiresHandle = false
--
if not isfile("Loli Dance.mp3") then -- why is it named this bro
       writefile("Loli Dance.mp3", game:HttpGet("https://github.com/gObl00x/Epik-Musics/raw/refs/heads/main/Loli%20Dance.mp3"))
end
--
tool19.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
    Humanoid.WalkSpeed = 10
       getgenv().Animator6D(14887006269, 1, true)
-- Music
Music19.Parent = Character
Music19.SoundId = getcustomasset("Loli Dance.mp3")
Music19.Looped = true
Music19:Play()
end
end)

tool19.Unequipped:Connect(function()
if Music19.Parent == Character and Music19.Playing then
Humanoid.WalkSpeed = 16
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
    Music19:Stop()
    Music19.Parent = EffectFolder
end
    print("Dance 19 and music stopped")
end)

-- // I WANNA RUN AWAY Tool Dance \\ --
local tool19 = IT("Tool", Backpack)
tool19.Name = "I WANNA RUN AWAY"
tool19.RequiresHandle = false
--
if not isfile("IWRA.mp3") then
       writefile("IWRA.mp3", game:HttpGet("https://github.com/gObl00x/Epik-Musics/raw/refs/heads/main/IWRA.mp3"))
end
--
tool19.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
    Humanoid.WalkSpeed = 10
       getgenv().Animator6D(131562546189485, 1, true)
-- Music
Music19.Parent = Character
Music19.SoundId = getcustomasset("IWRA.mp3")
Music19.Looped = true
Music19:Play()
end
end)

tool19.Unequipped:Connect(function()
if Music19.Parent == Character and Music19.Playing then
Humanoid.WalkSpeed = 16
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
    Music19:Stop()
    Music19.Parent = EffectFolder
end
    print("Dance 19 and music stopped")
end)

-- // Whatsapp Meme Tool Dance \\ --
local tool19 = IT("Tool", Backpack)
tool19.Name = "WhatsApp Meme"
tool19.RequiresHandle = false
--
if not isfile("WhatsApp Meme.mp3") then
       writefile("WhatsApp Meme.mp3", game:HttpGet("https://github.com/gObl00x/Epik-Musics/raw/refs/heads/main/WhatsApp%20Meme.mp3"))
end
--
tool19.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
    Humanoid.WalkSpeed = 10
       getgenv().Animator6D(131539514978219, 1, true)
-- Music
Music19.Parent = Character
Music19.SoundId = getcustomasset("WhatsApp Meme.mp3")
Music19.Looped = true
Music19:Play()
end
end)

tool19.Unequipped:Connect(function()
if Music19.Parent == Character and Music19.Playing then
Humanoid.WalkSpeed = 16
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
    Music19:Stop()
    Music19.Parent = EffectFolder
end
    print("Dance 19 and music stopped")
end)

-- // Goofy Tool Dance \\ --
local tool19 = IT("Tool", Backpack)
tool19.Name = "Goofy"
tool19.RequiresHandle = false
--
if not isfile("Goofy Song.mp3") then
       writefile("Goofy Song.mp3", game:HttpGet("https://github.com/gObl00x/Epik-Musics/raw/refs/heads/main/Goofy%20Song.mp3"))
end
--
tool19.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
    Humanoid.WalkSpeed = 10
       getgenv().Animator6D(75148929064618, 1, true)
-- Music
Music19.Parent = Character
Music19.SoundId = getcustomasset("Goofy Song.mp3")
Music19.Looped = true
Music19:Play()
end
end)

tool19.Unequipped:Connect(function()
if Music19.Parent == Character and Music19.Playing then
Humanoid.WalkSpeed = 16
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
    Music19:Stop()
    Music19.Parent = EffectFolder
end
    print("Dance 19 and music stopped")
end)

-- // Who can it be now Tool Dance \\ --
local tool19 = IT("Tool", Backpack)
tool19.Name = "Who Can It Be Now?"
tool19.RequiresHandle = false
--
if not isfile("WCIBN.mp3") then
       writefile("WCIBN.mp3", game:HttpGet("https://github.com/gObl00x/Epik-Musics/raw/refs/heads/main/WCIBN.mp3"))
end
--
tool19.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
    Humanoid.WalkSpeed = 10
       getgenv().Animator6D(16240038168, 1, true)
-- Music
Music19.Parent = Character
Music19.SoundId = getcustomasset("WCIBN.mp3")
Music19.Looped = true
Music19:Play()
end
end)

tool19.Unequipped:Connect(function()
if Music19.Parent == Character and Music19.Playing then
Humanoid.WalkSpeed = 16
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
    Music19:Stop()
    Music19.Parent = EffectFolder
end
    print("Dance 19 and music stopped")
end)

-- // Pretty Princess Tool Dance \\ --
local tool19 = IT("Tool", Backpack)
tool19.Name = "Pretty Princess"
tool19.RequiresHandle = false
--
if not isfile("Pretty Princess Theme.mp3") then
       writefile("Pretty Princess Theme.mp3", game:HttpGet("https://github.com/gObl00x/Epik-Musics/raw/refs/heads/main/Pretty%20Princess%20Theme.mp3"))
end
--
tool19.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
    Humanoid.WalkSpeed = 10
       getgenv().Animator6D(118452043589079, 1, true)
-- Music
Music19.Parent = Character
Music19.SoundId = getcustomasset("Pretty Princess Theme.mp3")
Music19.Looped = true
Music19:Play()
end
end)

tool19.Unequipped:Connect(function()
if Music19.Parent == Character and Music19.Playing then
Humanoid.WalkSpeed = 16
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
    Music19:Stop()
    Music19.Parent = EffectFolder
end
    print("Dance 19 and music stopped")
end)

-- // I miss the quiet Tool Dance \\ --
local tool19 = IT("Tool", Backpack)
tool19.Name = "I Miss The Quiet"
tool19.RequiresHandle = false
--
if not isfile("IMissTheQuietYesIdooo.mp3") then
       writefile("IMissTheQuietYesIdooo.mp3", game:HttpGet("https://github.com/EpicFire8/Music/raw/refs/heads/main/IMissTheQuietYesIdooo.mp3"))
end
--
tool19.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
    Humanoid.WalkSpeed = 10
       getgenv().Animator6D(100986631322204, 1, true)
-- Music
Music19.Parent = Character
Music19.SoundId = getcustomasset("IMissTheQuietYesIdooo.mp3")
Music19.Looped = true
Music19:Play()
end
end)

tool19.Unequipped:Connect(function()
if Music19.Parent == Character and Music19.Playing then
Humanoid.WalkSpeed = 16
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
    Music19:Stop()
    Music19.Parent = EffectFolder
end
    print("Dance 19 and music stopped")
end)

-- // Brickbattle Tool Dance \\ --
local tool19 = IT("Tool", Backpack)
tool19.Name = "Brickbattle"
tool19.RequiresHandle = false
--
if not isfile("Brickbattler.mp3") then
       writefile("Brickbattler.mp3", game:HttpGet("https://github.com/EpicFire8/Music/raw/refs/heads/main/Brickbattler.mp3"))
end
--
tool19.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
    Humanoid.WalkSpeed = 10
       getgenv().Animator6D(138531569676600, 1, true)
-- Music
Music19.Parent = Character
Music19.SoundId = getcustomasset("Brickbattler.mp3")
Music19.Looped = true
Music19:Play()
end
end)

tool19.Unequipped:Connect(function()
if Music19.Parent == Character and Music19.Playing then
Humanoid.WalkSpeed = 16
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
    Music19:Stop()
    Music19.Parent = EffectFolder
end
    print("Dance 19 and music stopped")
end)

-- // Cupcakes Tool Dance \\ --
local tool19 = IT("Tool", Backpack)
tool19.Name = "Cupcakes"
tool19.RequiresHandle = false
--
if not isfile("Cupcakes HD.mp3") then
       writefile("Cupcakes HD.mp3", game:HttpGet("https://github.com/EpicFire8/Music/raw/refs/heads/main/Cupcakes%20HD.mp3"))
end
--
tool19.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
    Humanoid.WalkSpeed = 10
       getgenv().Animator6D(126397719425664, 1, true)
-- Music
Music19.Parent = Character
Music19.SoundId = getcustomasset("Cupcake HD.mp3")
Music19.Looped = true
Music19:Play()
end
end)

tool19.Unequipped:Connect(function()
if Music19.Parent == Character and Music19.Playing then
Humanoid.WalkSpeed = 16
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
    Music19:Stop()
    Music19.Parent = EffectFolder
end
    print("Dance 19 and music stopped")
end)

-- // 2Two2 Tool Dance \\ --
local tool19 = IT("Tool", Backpack)
tool19.Name = "2Two2"
tool19.RequiresHandle = false
--
if not isfile("2Two2.mp3") then
       writefile("2Two2.mp3", game:HttpGet("https://github.com/EpicFire8/Music/raw/refs/heads/main/2Two2.mp3"))
end
--
tool19.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
    Humanoid.WalkSpeed = 10
       getgenv().Animator6D(89348834081653, 1, true)
-- Music
Music19.Parent = Character
Music19.SoundId = getcustomasset("2Two2.mp3")
Music19.Looped = true
Music19:Play()
end
end)

tool19.Unequipped:Connect(function()
if Music19.Parent == Character and Music19.Playing then
Humanoid.WalkSpeed = 16
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
    Music19:Stop()
    Music19.Parent = EffectFolder
end
    print("Dance 19 and music stopped")
end)

-- // Arona Dance Tool Dance \\ --
local tool19 = IT("Tool", Backpack)
tool19.Name = "Arona Dance"
tool19.RequiresHandle = false
--
if not isfile("AronaDance.mp3") then
       writefile("AronaDance.mp3", game:HttpGet("https://github.com/EpicFire8/Music/raw/refs/heads/main/AronaDance.mp3"))
end
--
tool19.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
    Humanoid.WalkSpeed = 10
       getgenv().Animator6D(113953995772094, 1, true)
-- Music
Music19.Parent = Character
Music19.SoundId = getcustomasset("AronaDance.mp3")
Music19.Looped = true
Music19:Play()
end
end)

tool19.Unequipped:Connect(function()
if Music19.Parent == Character and Music19.Playing then
Humanoid.WalkSpeed = 16
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
    Music19:Stop()
    Music19.Parent = EffectFolder
end
    print("Dance 19 and music stopped")
end)

-- // Asseumptions Tool Dance \\ --
local tool19 = IT("Tool", Backpack)
tool19.Name = "Assumptions"
tool19.RequiresHandle = false
--
if not isfile("Assumptions.mp3") then
       writefile("Assumptions.mp3", game:HttpGet("https://github.com/EpicFire8/Music/raw/refs/heads/main/Assumptions.mp3"))
end
--
tool19.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
    Humanoid.WalkSpeed = 10
       getgenv().Animator6D(75148929064618, 1, true)
-- Music
Music19.Parent = Character
Music19.SoundId = getcustomasset("Assumptions.mp3")
Music19.Looped = true
Music19:Play()
end
end)

tool19.Unequipped:Connect(function()
if Music19.Parent == Character and Music19.Playing then
Humanoid.WalkSpeed = 16
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
    Music19:Stop()
    Music19.Parent = EffectFolder
end
    print("Dance 19 and music stopped")
end)

-- // BIGSHOT Tool Dance \\ --
local tool19 = IT("Tool", Backpack)
tool19.Name = "BIGSHOT"
tool19.RequiresHandle = false
--
if not isfile("BIGSHOT.mp3") then
       writefile("BIGSHOT.mp3", game:HttpGet("https://github.com/EpicFire8/Music/raw/refs/heads/main/BIGSHOT.mp3"))
end
--
tool19.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
    Humanoid.WalkSpeed = 10
       getgenv().Animator6D(8071025449, 1, true)
-- Music
Music19.Parent = Character
Music19.SoundId = getcustomasset("BIGSHOT.mp3")
Music19.Looped = true
Music19:Play()
end
end)

tool19.Unequipped:Connect(function()
if Music19.Parent == Character and Music19.Playing then
Humanoid.WalkSpeed = 16
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
    Music19:Stop()
    Music19.Parent = EffectFolder
end
    print("Dance 19 and music stopped")
end)

-- // Spamtom dance Tool Dance \\ --
local tool19 = IT("Tool", Backpack)
tool19.Name = "Spamtom Dance"
tool19.RequiresHandle = false
--
if not isfile("BIGSHOT.mp3") then
       writefile("BIGSHOT.mp3", game:HttpGet("https://github.com/EpicFire8/Music/raw/refs/heads/main/BIGSHOT.mp3"))
end
--
tool19.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
    Humanoid.WalkSpeed = 10
       getgenv().Animator6D(89348834081653, 1, true)
-- Music
Music19.Parent = Character
Music19.SoundId = getcustomasset("BIGSHOT.mp3")
Music19.Looped = true
Music19:Play()
end
end)

tool19.Unequipped:Connect(function()
if Music19.Parent == Character and Music19.Playing then
Humanoid.WalkSpeed = 16
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
    Music19:Stop()
    Music19.Parent = EffectFolder
end
    print("Dance 19 and music stopped")
end)

-- // Bluudud Alarm Tool Dance \\ --
local tool19 = IT("Tool", Backpack)
tool19.Name = "Bluudud Alarm"
tool19.RequiresHandle = false
--
if not isfile("Bluudud Alarm.mp3") then
       writefile("Bluudud Alarm.mp3", game:HttpGet("https://github.com/EpicFire8/Music/raw/refs/heads/main/Bluudud%20Alarm.mp3"))
end
--
tool19.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
    Humanoid.WalkSpeed = 10
       getgenv().Animator6D(97789180606119, 1, true)
-- Music
Music19.Parent = Character
Music19.SoundId = getcustomasset("Bluudud Alarm.mp3")
Music19.Looped = true
Music19:Play()
end
end)

tool19.Unequipped:Connect(function()
if Music19.Parent == Character and Music19.Playing then
Humanoid.WalkSpeed = 16
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
    Music19:Stop()
    Music19.Parent = EffectFolder
end
    print("Dance 19 and music stopped")
end)

-- // C14 Tool Dance \\ --
local tool19 = IT("Tool", Backpack)
tool19.Name = "C14"
tool19.RequiresHandle = false
--
if not isfile("C14.mp3") then
       writefile("C14.mp3", game:HttpGet("https://github.com/EpicFire8/Music/raw/refs/heads/main/C14.mp3"))
end
--
tool19.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
    Humanoid.WalkSpeed = 10
       getgenv().Animator6D(118452043589079, 1, true)
-- Music
Music19.Parent = Character
Music19.SoundId = getcustomasset("C14.mp3")
Music19.Looped = true
Music19:Play()
end
end)

tool19.Unequipped:Connect(function()
if Music19.Parent == Character and Music19.Playing then
Humanoid.WalkSpeed = 16
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
    Music19:Stop()
    Music19.Parent = EffectFolder
end
    print("Dance 19 and music stopped")
end)

-- // Cafeteria Tool Dance \\ --
local tool19 = IT("Tool", Backpack)
tool19.Name = "Cafeteria"
tool19.RequiresHandle = false
--
if not isfile("Cafeteria.mp3") then
       writefile("Cafeteria.mp3", game:HttpGet("https://github.com/EpicFire8/Music/raw/refs/heads/main/Cafeteria.mp3"))
end
--
tool19.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
    Humanoid.WalkSpeed = 10
       getgenv().Animator6D(111079857314277, 1, true)
-- Music
Music19.Parent = Character
Music19.SoundId = getcustomasset("Cafeteria.mp3")
Music19.Looped = true
Music19:Play()
end
end)

tool19.Unequipped:Connect(function()
if Music19.Parent == Character and Music19.Playing then
Humanoid.WalkSpeed = 16
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
    Music19:Stop()
    Music19.Parent = EffectFolder
end
    print("Dance 19 and music stopped")
end)

-- // Sit Tool Dance \\ --
local tool19 = IT("Tool", Backpack)
tool19.Name = "Sit"
tool19.RequiresHandle = false
--
if not isfile("Calm.mp3") then
       writefile("Calm.mp3", game:HttpGet("https://github.com/EpicFire8/Music/raw/refs/heads/main/Calm.mp3"))
end
--
tool19.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
    Humanoid.WalkSpeed = 10
       getgenv().Animator6D(134311400337263, 1, true)
-- Music
Music19.Parent = Character
Music19.SoundId = getcustomasset("Calm.mp3")
Music19.Looped = true
Music19:Play()
end
end)

tool19.Unequipped:Connect(function()
if Music19.Parent == Character and Music19.Playing then
Humanoid.WalkSpeed = 16
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
    Music19:Stop()
    Music19.Parent = EffectFolder
end
    print("Dance 19 and music stopped")
end)

-- // Dance if you are peak Tool Dance \\ --
local tool19 = IT("Tool", Backpack)
tool19.Name = "Dance if You Are Peak"
tool19.RequiresHandle = false
--
if not isfile("Dance is you are peak (Headlock).mp3") then
       writefile("Dance is you are peak (Headlock).mp3", game:HttpGet("https://github.com/EpicFire8/Music/raw/refs/heads/main/Dance%20is%20you%20are%20peak%20(Headlock).mp3"))
end
--
tool19.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
    Humanoid.WalkSpeed = 10
       getgenv().Animator6D(135424282094138, 1, true)
-- Music
Music19.Parent = Character
Music19.SoundId = getcustomasset("Dance is you are peak (Headlock).mp3")
Music19.Looped = true
Music19:Play()
end
end)

tool19.Unequipped:Connect(function()
if Music19.Parent == Character and Music19.Playing then
Humanoid.WalkSpeed = 16
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
    Music19:Stop()
    Music19.Parent = EffectFolder
end
    print("Dance 19 and music stopped")
end)

-- // Endoskeleton Tool Dance \\ --
local tool19 = IT("Tool", Backpack)
tool19.Name = "Endoskeleton"
tool19.RequiresHandle = false
--
if not isfile("Endoskeleton.mp3") then
       writefile("Endoskeleton.mp3", game:HttpGet("https://github.com/EpicFire8/Music/raw/refs/heads/main/Endoskeleton.mp3"))
end
--
tool19.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
    Humanoid.WalkSpeed = 10
       getgenv().Animator6D(99015977795000, 1, true)
-- Music
Music19.Parent = Character
Music19.SoundId = getcustomasset("Endoskeleton.mp3")
Music19.Looped = true
Music19:Play()
end
end)

tool19.Unequipped:Connect(function()
if Music19.Parent == Character and Music19.Playing then
Humanoid.WalkSpeed = 16
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
    Music19:Stop()
    Music19.Parent = EffectFolder
end
    print("Dance 19 and music stopped")
end)

-- // Epical Tool Dance \\ --
local tool19 = IT("Tool", Backpack)
tool19.Name = "Epical"
tool19.RequiresHandle = false
--
if not isfile("Epical.mp3") then
       writefile("Epical.mp3", game:HttpGet("https://github.com/EpicFire8/Music/raw/refs/heads/main/Epical.mp3"))
end
--
tool19.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
    Humanoid.WalkSpeed = 10
       getgenv().Animator6D(135424282094138, 1, true)
-- Music
Music19.Parent = Character
Music19.SoundId = getcustomasset("Epical.mp3")
Music19.Looped = true
Music19:Play()
end
end)

tool19.Unequipped:Connect(function()
if Music19.Parent == Character and Music19.Playing then
Humanoid.WalkSpeed = 16
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
    Music19:Stop()
    Music19.Parent = EffectFolder
end
    print("Dance 19 and music stopped")
end)

-- // Get Down Tool Dance \\ --
local tool19 = IT("Tool", Backpack)
tool19.Name = "Get Down!"
tool19.RequiresHandle = false
--
if not isfile("GET DOWN!2.mp3") then
       writefile("GET DOWN!2.mp3", game:HttpGet("https://github.com/EpicFire8/Music/raw/refs/heads/main/GET%20DOWN!2.mp3"))
end
--
tool19.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
    Humanoid.WalkSpeed = 10
       getgenv().Animator6D(98916367562022, 1, true)
-- Music
Music19.Parent = Character
Music19.SoundId = getcustomasset("GET DOWB!2.mp3")
Music19.Looped = true
Music19:Play()
end
end)

tool19.Unequipped:Connect(function()
if Music19.Parent == Character and Music19.Playing then
Humanoid.WalkSpeed = 16
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
    Music19:Stop()
    Music19.Parent = EffectFolder
end
    print("Dance 19 and music stopped")
end)

-- // Internet Angel Tool Dance \\ --
local tool19 = IT("Tool", Backpack)
tool19.Name = "Internet Angel"
tool19.RequiresHandle = false
--
if not isfile("INTERNET ANGEL.mp3") then
       writefile("INTERNET ANGEL.mp3", game:HttpGet("https://github.com/EpicFire8/Music/raw/refs/heads/main/INTERNET%20ANGEL.mp3"))
end
--
tool19.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
    Humanoid.WalkSpeed = 10
       getgenv().Animator6D(18986591475, 1, true)
-- Music
Music19.Parent = Character
Music19.SoundId = getcustomasset("INTERNET ANGEL.mp3")
Music19.Looped = true
Music19:Play()
end
end)

tool19.Unequipped:Connect(function()
if Music19.Parent == Character and Music19.Playing then
Humanoid.WalkSpeed = 16
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
    Music19:Stop()
    Music19.Parent = EffectFolder
end
    print("Dance 19 and music stopped")
end)

-- // Internet Yamero Tool Dance \\ --
local tool19 = IT("Tool", Backpack)
tool19.Name = "Internet Yamero"
tool19.RequiresHandle = false
--
if not isfile("Inernet Yamero.mp3") then
       writefile("Internet Yamero.mp3", game:HttpGet("https://github.com/EpicFire8/Music/raw/refs/heads/main/InternetYamero.mp3"))
end
--
tool19.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
    Humanoid.WalkSpeed = 10
       getgenv().Animator6D(99905571448278, 1, true)
-- Music
Music19.Parent = Character
Music19.SoundId = getcustomasset("Internet Yamero.mp3")
Music19.Looped = true
Music19:Play()
end
end)

tool19.Unequipped:Connect(function()
if Music19.Parent == Character and Music19.Playing then
Humanoid.WalkSpeed = 16
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
    Music19:Stop()
    Music19.Parent = EffectFolder
end
    print("Dance 19 and music stopped")
end)

-- // Iron Lung Tool Dance \\ --
local tool19 = IT("Tool", Backpack)
tool19.Name = "Iron Lung"
tool19.RequiresHandle = false
--
if not isfile("Ironlung.mp3") then
       writefile("Ironlung.mp3", game:HttpGet("https://github.com/EpicFire8/Music/raw/refs/heads/main/Ironlung.mp3"))
end
--
tool19.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
    Humanoid.WalkSpeed = 10
       getgenv().Animator6D(77298361270388, 1, true)
-- Music
Music19.Parent = Character
Music19.SoundId = getcustomasset("Ironlung.mp3")
Music19.Looped = true
Music19:Play()
end
end)

tool19.Unequipped:Connect(function()
if Music19.Parent == Character and Music19.Playing then
Humanoid.WalkSpeed = 16
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
    Music19:Stop()
    Music19.Parent = EffectFolder
end
    print("Dance 19 and music stopped")
end)

-- // Tenna Tool Dance \\ --
local tool19 = IT("Tool", Backpack)
tool19.Name = "Tenna"
tool19.RequiresHandle = false
--
if not isfile("ItsTVTIME!.mp3") then
       writefile("ItsTVTIME!.mp3", game:HttpGet("https://github.com/EpicFire8/Music/raw/refs/heads/main/ItsTVTIME!.mp3"))
end
--
tool19.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
    Humanoid.WalkSpeed = 10
       getgenv().Animator6D(97351316825183, 1, true)
-- Music
Music19.Parent = Character
Music19.SoundId = getcustomasset("ItsTVTIME!.mp3")
Music19.Looped = true
Music19:Play()
end
end)

tool19.Unequipped:Connect(function()
if Music19.Parent == Character and Music19.Playing then
Humanoid.WalkSpeed = 16
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
    Music19:Stop()
    Music19.Parent = EffectFolder
end
    print("Dance 19 and music stopped")
end)

-- // Konton Tool Dance \\ --
local tool19 = IT("Tool", Backpack)
tool19.Name = "Konton"
tool19.RequiresHandle = false
--
if not isfile("Konton.mp3") then
       writefile("Konton.mp3", game:HttpGet("https://github.com/EpicFire8/Music/raw/refs/heads/main/Konton.mp3"))
end
--
tool19.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
    Humanoid.WalkSpeed = 10
       getgenv().Animator6D(83719399570827, 1, true)
-- Music
Music19.Parent = Character
Music19.SoundId = getcustomasset("Konton.mp3")
Music19.Looped = true
Music19:Play()
end
end)

tool19.Unequipped:Connect(function()
if Music19.Parent == Character and Music19.Playing then
Humanoid.WalkSpeed = 16
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
    Music19:Stop()
    Music19.Parent = EffectFolder
end
    print("Dance 19 and music stopped")
end)

-- // Lemon Demon Tool Dance \\ --
local tool19 = IT("Tool", Backpack)
tool19.Name = "Lemon Demon"
tool19.RequiresHandle = false
--
if not isfile("Lemon Demon - Modify.mp3") then
       writefile("Lemon Demon - Modify.mp3", game:HttpGet("https://github.com/EpicFire8/Music/raw/refs/heads/main/Lemon%20Demon%20-%20Modify.mp3"))
end
--
tool19.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
    Humanoid.WalkSpeed = 10
       getgenv().Animator6D(101484588555482, 1, true)
-- Music
Music19.Parent = Character
Music19.SoundId = getcustomasset("Lemon Demon - Modify.mp3")
Music19.Looped = true
Music19:Play()
end
end)

tool19.Unequipped:Connect(function()
if Music19.Parent == Character and Music19.Playing then
Humanoid.WalkSpeed = 16
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
    Music19:Stop()
    Music19.Parent = EffectFolder
end
    print("Dance 19 and music stopped")
end)

-- // Liar Dance Tool Dance \\ --
local tool19 = IT("Tool", Backpack)
tool19.Name = "Liar Dance"
tool19.RequiresHandle = false
--
if not isfile("LiarDance.mp3") then
       writefile("LiarDance.mp3", game:HttpGet("https://github.com/EpicFire8/Music/raw/refs/heads/main/LiarDance.mp3"))
end
--
tool19.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
    Humanoid.WalkSpeed = 10
       getgenv().Animator6D(129584064125006, 1, true)
-- Music
Music19.Parent = Character
Music19.SoundId = getcustomasset("LiarDance.mp3")
Music19.Looped = true
Music19:Play()
end
end)

tool19.Unequipped:Connect(function()
if Music19.Parent == Character and Music19.Playing then
Humanoid.WalkSpeed = 16
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
    Music19:Stop()
    Music19.Parent = EffectFolder
end
    print("Dance 19 and music stopped")
end)

-- // Limbo Tool Dance \\ --
local tool19 = IT("Tool", Backpack)
tool19.Name = "Limbo"
tool19.RequiresHandle = false
--
if not isfile("Limbo.mp3") then
       writefile("Limbo.mp3", game:HttpGet("https://github.com/EpicFire8/Music/raw/refs/heads/main/Limbo.mp3"))
end
--
tool19.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
    Humanoid.WalkSpeed = 10
       getgenv().Animator6D(17308598027, 1, true)
-- Music
Music19.Parent = Character
Music19.SoundId = getcustomasset("Limbo.mp3")
Music19.Looped = true
Music19:Play()
end
end)

tool19.Unequipped:Connect(function()
if Music19.Parent == Character and Music19.Playing then
Humanoid.WalkSpeed = 16
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
    Music19:Stop()
    Music19.Parent = EffectFolder
end
    print("Dance 19 and music stopped")
end)

-- // Shucks mid customscene Tool Dance \\ --
local tool19 = IT("Tool", Backpack)
tool19.Name = "Shucks Mid Customscene"
tool19.RequiresHandle = false
--
if not isfile("MID SHUCKS SPANISH.mp3") then
       writefile("MID SHUCKS SPANISH.mp3", game:HttpGet("https://github.com/EpicFire8/Music/raw/refs/heads/main/MID%20SHUCKS%20SPANISH.mp3"))
end
--
tool19.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
    Humanoid.WalkSpeed = 10
       getgenv().Animator6D(129311159923059, 1, true)
-- Music
Music19.Parent = Character
Music19.SoundId = getcustomasset("MID SHUCKS SPANISH.mp3")
Music19.Looped = true
Music19:Play()
end
end)

tool19.Unequipped:Connect(function()
if Music19.Parent == Character and Music19.Playing then
Humanoid.WalkSpeed = 16
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
    Music19:Stop()
    Music19.Parent = EffectFolder
end
    print("Dance 19 and music stopped")
end)

-- // Mesmerizer Tool Dance \\ --
local tool19 = IT("Tool", Backpack)
tool19.Name = "Mesmerizer"
tool19.RequiresHandle = false
--
if not isfile("Mesmerizer.mp3") then
       writefile("Mesmerizer.mp3", game:HttpGet("https://github.com/EpicFire8/Music/raw/refs/heads/main/Mesmerizer.mp3"))
end
--
tool19.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
    Humanoid.WalkSpeed = 10
       getgenv().Animator6D(107578737342278, 1, true)
-- Music
Music19.Parent = Character
Music19.SoundId = getcustomasset("Mesmerizer.mp3")
Music19.Looped = true
Music19:Play()
end
end)

tool19.Unequipped:Connect(function()
if Music19.Parent == Character and Music19.Playing then
Humanoid.WalkSpeed = 16
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
    Music19:Stop()
    Music19.Parent = EffectFolder
end
    print("Dance 19 and music stopped")
end)

-- // Out of touch Tool Dance \\ --
local tool19 = IT("Tool", Backpack)
tool19.Name = "Out of touch"
tool19.RequiresHandle = false
--
if not isfile("Out of touch.mp3") then
       writefile("Out of touch.mp3", game:HttpGet("https://github.com/EpicFire8/Music/raw/refs/heads/main/Out%20of%20touch.mp3"))
end
--
tool19.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
    Humanoid.WalkSpeed = 10
       getgenv().Animator6D(135867676375598, 1, true)
-- Music
Music19.Parent = Character
Music19.SoundId = getcustomasset("Out of touch.mp3")
Music19.Looped = true
Music19:Play()
end
end)

tool19.Unequipped:Connect(function()
if Music19.Parent == Character and Music19.Playing then
Humanoid.WalkSpeed = 16
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
    Music19:Stop()
    Music19.Parent = EffectFolder
end
    print("Dance 19 and music stopped")
end)

-- // RUNAWAY Tool Dance \\ --
local tool19 = IT("Tool", Backpack)
tool19.Name = "RUN AWAY"
tool19.RequiresHandle = false
--
if not isfile("RUNAWAY.mp3") then
       writefile("RUNAWAY.mp3", game:HttpGet("https://github.com/EpicFire8/Music/raw/refs/heads/main/RUNAWAY.mp3"))
end
--
tool19.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
    Humanoid.WalkSpeed = 10
       getgenv().Animator6D(119147810948063, 1, true)
-- Music
Music19.Parent = Character
Music19.SoundId = getcustomasset("RUNAWAY.mp3")
Music19.Looped = true
Music19:Play()
end
end)

tool19.Unequipped:Connect(function()
if Music19.Parent == Character and Music19.Playing then
Humanoid.WalkSpeed = 16
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
    Music19:Stop()
    Music19.Parent = EffectFolder
end
    print("Dance 19 and music stopped")
end)

-- // Shucks Tool Dance \\ --
local tool19 = IT("Tool", Backpack)
tool19.Name = "Shucks"
tool19.RequiresHandle = false
--
if not isfile("Shucks.mp3") then
       writefile("Shucks.mp3", game:HttpGet("https://github.com/EpicFire8/Music/raw/refs/heads/main/Shucks.mp3"))
end
--
tool19.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
    Humanoid.WalkSpeed = 10
       getgenv().Animator6D(74238051754912, 1, true)
-- Music
Music19.Parent = Character
Music19.SoundId = getcustomasset("Shucks.mp3")
Music19.Looped = true
Music19:Play()
end
end)

tool19.Unequipped:Connect(function()
if Music19.Parent == Character and Music19.Playing then
Humanoid.WalkSpeed = 16
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
    Music19:Stop()
    Music19.Parent = EffectFolder
end
    print("Dance 19 and music stopped")
end)

-- // Jun Tool Dance \\ --
local tool19 = IT("Tool", Backpack)
tool19.Name = "Jun fight with a paralysis demon"
tool19.RequiresHandle = false
--
if not isfile("Shinji's and juns Final battle Song.mp3") then
       writefile("Shinji's and juns Final battle Song.mp3", game:HttpGet("https://github.com/EpicFire8/Music/raw/refs/heads/main/Shinji's%20and%20juns%20Final%20battle%20Song.mp3"))
end
--
tool19.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
    Humanoid.WalkSpeed = 10
       getgenv().Animator6D(108034281000187, 1, true)
-- Music
Music19.Parent = Character
Music19.SoundId = getcustomasset("Shinji's and juns Final battle Song.mp3")
Music19.Looped = true
Music19:Play()
end
end)

tool19.Unequipped:Connect(function()
if Music19.Parent == Character and Music19.Playing then
Humanoid.WalkSpeed = 16
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
    Music19:Stop()
    Music19.Parent = EffectFolder
end
    print("Dance 19 and music stopped")
end)

-- // Break core Tool Dance \\ --
local tool19 = IT("Tool", Backpack)
tool19.Name = "Let me break down for you mark (Sinful)"
tool19.RequiresHandle = false
--
if not isfile("Sinful.mp3") then
       writefile("Sinful.mp3", game:HttpGet("https://github.com/EpicFire8/Music/raw/refs/heads/main/Sinful.mp3"))
end
--
tool19.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
    Humanoid.WalkSpeed = 10
       getgenv().Animator6D(132886479585903, 1, true)
-- Music
Music19.Parent = Character
Music19.SoundId = getcustomasset("Sinful.mp3")
Music19.Looped = true
Music19:Play()
end
end)

tool19.Unequipped:Connect(function()
if Music19.Parent == Character and Music19.Playing then
Humanoid.WalkSpeed = 16
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
    Music19:Stop()
    Music19.Parent = EffectFolder
end
    print("Dance 19 and music stopped")
end)

-- // Silly billy Tool Dance \\ --
local tool19 = IT("Tool", Backpack)
tool19.Name = "Silly Billy"
tool19.RequiresHandle = false
--
if not isfile("SillyBilly.mp3") then
       writefile("SillyBilly.mp3", game:HttpGet("https://github.com/EpicFire8/Music/raw/refs/heads/main/SillyBilly.mp3"))
end
--
tool19.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
    Humanoid.WalkSpeed = 10
       getgenv().Animator6D(107464355830477, 1, true)
-- Music
Music19.Parent = Character
Music19.SoundId = getcustomasset("SillyBilly.mp3")
Music19.Looped = true
Music19:Play()
end
end)

tool19.Unequipped:Connect(function()
if Music19.Parent == Character and Music19.Playing then
Humanoid.WalkSpeed = 16
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
    Music19:Stop()
    Music19.Parent = EffectFolder
end
    print("Dance 19 and music stopped")
end)

-- // Static Tool Dance \\ --
local tool19 = IT("Tool", Backpack)
tool19.Name = "Panic, In Static!"
tool19.RequiresHandle = false
--
if not isfile("Static2.mp3") then
       writefile("Static2.mp3", game:HttpGet("https://github.com/EpicFire8/Music/raw/refs/heads/main/Static2.mp3"))
end
--
tool19.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
    Humanoid.WalkSpeed = 10
       getgenv().Animator6D(124415802608501, 1, true)
-- Music
Music19.Parent = Character
Music19.SoundId = getcustomasset("Static2.mp3")
Music19.Looped = true
Music19:Play()
end
end)

tool19.Unequipped:Connect(function()
if Music19.Parent == Character and Music19.Playing then
Humanoid.WalkSpeed = 16
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
    Music19:Stop()
    Music19.Parent = EffectFolder
end
    print("Dance 19 and music stopped")
end)

-- // Subterfuge Tool Dance \\ --
local tool19 = IT("Tool", Backpack)
tool19.Name = "Subterfuge"
tool19.RequiresHandle = false
--
if not isfile("Subturefuge.mp3") then
       writefile("Subturefuge.mp3", game:HttpGet("https://github.com/EpicFire8/Music/raw/refs/heads/main/Subturefuge.mp3"))
end
--
tool19.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
    Humanoid.WalkSpeed = 10
       getgenv().Animator6D(87482480949358, 1, true)
-- Music
Music19.Parent = Character
Music19.SoundId = getcustomasset("Subturefuge.mp3")
Music19.Looped = true
Music19:Play()
end
end)

tool19.Unequipped:Connect(function()
if Music19.Parent == Character and Music19.Playing then
Humanoid.WalkSpeed = 16
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
    Music19:Stop()
    Music19.Parent = EffectFolder
end
    print("Dance 19 and music stopped")
end)

-- // Muffin Tool Dance \\ --
local tool19 = IT("Tool", Backpack)
tool19.Name = "Die die die! Its muffin time!"
tool19.RequiresHandle = false
--
if not isfile("THEMUFFINSONG.mp3") then
        writefile("THEMUFFINSONG.mp3", game:HttpGet("https://github.com/EpicFire8/Music/raw/refs/heads/main/THEMUFFINSONG.mp3"))
end
--
tool19.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
    Humanoid.WalkSpeed = 10
       getgenv().Animator6D(70924317602904, 1, true)
-- Music
Music19.Parent = Character
Music19.SoundId = getcustomasset("THEMUFFINSONG.mp3")
Music19.Looped = true
Music19:Play()
end
end)

tool19.Unequipped:Connect(function()
if Music19.Parent == Character and Music19.Playing then
Humanoid.WalkSpeed = 16
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
    Music19:Stop()
    Music19.Parent = EffectFolder
end
    print("Dance 19 and music stopped")
end)

-- // TWERKNATION28-NUMBER Tool Dance \\ --
local tool19 = IT("Tool", Backpack)
tool19.Name = "TWERKNATION28-NUMBER" -- dont blame me blame the other guy who made the modded for the old version
tool19.RequiresHandle = false
--
if not isfile("TWERKNATION28-NUMBER.mp3") then
       writefile("TWERKNATION28-NUMBER.mp3", game:HttpGet("https://github.com/EpicFire8/Music/raw/refs/heads/main/TWERKNATION28-NUMBER.mp3"))
end
--
tool19.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
    Humanoid.WalkSpeed = 10
       getgenv().Animator6D(131539514978219, 1, true)
-- Music
Music19.Parent = Character
Music19.SoundId = getcustomasset("TWERKNATION28-NUMBER.mp3")
Music19.Looped = true
Music19:Play()
end
end)

tool19.Unequipped:Connect(function()
if Music19.Parent == Character and Music19.Playing then
Humanoid.WalkSpeed = 16
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
    Music19:Stop()
    Music19.Parent = EffectFolder
end
    print("Dance 19 and music stopped")
end)

-- // Twiddlefinger Tool Dance \\ --
local tool19 = IT("Tool", Backpack)
tool19.Name = "Twiddlefinger"
tool19.RequiresHandle = false
--
if not isfile("TWIDDLEFINGER.mp3.mp3") then
       writefile("TWIDDLEFINGER.mp3.mp3", game:HttpGet("https://github.com/EpicFire8/Music/raw/refs/heads/main/TWIDDLEFINGER.mp3.mp3"))
end
--
tool19.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
    Humanoid.WalkSpeed = 10
       getgenv().Animator6D(18376750786, 1, true)
-- Music
Music19.Parent = Character
Music19.SoundId = getcustomasset("TWIDDLEFINGER.mp3.mp3")
Music19.Looped = true
Music19:Play()
end
end)

tool19.Unequipped:Connect(function()
if Music19.Parent == Character and Music19.Playing then
Humanoid.WalkSpeed = 16
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
    Music19:Stop()
    Music19.Parent = EffectFolder
end
    print("Dance 19 and music stopped")
end)

-- // Tick tock Tool Dance \\ --
local tool19 = IT("Tool", Backpack)
tool19.Name = "Tick tock!"
tool19.RequiresHandle = false
--
if not isfile("TickTockEmote.mp3") then
       writefile("TickTockEmote.mp3", game:HttpGet("https://github.com/EpicFire8/Music/raw/refs/heads/main/TickTockEmote.mp3"))
end
--
tool19.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
    Humanoid.WalkSpeed = 10
       getgenv().Animator6D(74187447524398, 1, true)
-- Music
Music19.Parent = Character
Music19.SoundId = getcustomasset("TickTockEmote.mp3")
Music19.Looped = true
Music19:Play()
end
end)

tool19.Unequipped:Connect(function()
if Music19.Parent == Character and Music19.Playing then
Humanoid.WalkSpeed = 16
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
    Music19:Stop()
    Music19.Parent = EffectFolder
end
    print("Dance 19 and music stopped")
end)

-- // Teto Tool Dance \\ --
local tool19 = IT("Tool", Backpack)
tool19.Name = "Teto"
tool19.RequiresHandle = false
--
if not isfile("おちゃめ機能.mp3") then
       writefile("おちゃめ機能.mp3", game:HttpGet("https://github.com/EpicFire8/Music/raw/refs/heads/main/おちゃめ機能.mp3"))
end
--
tool19.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
    Humanoid.WalkSpeed = 10
       getgenv().Animator6D(95648759792903, 1, true)
-- Music
Music19.Parent = Character
Music19.SoundId = getcustomasset("おちゃめ機能.mp3")
Music19.Looped = true
Music19:Play()
end
end)

tool19.Unequipped:Connect(function()
if Music19.Parent == Character and Music19.Playing then
Humanoid.WalkSpeed = 16
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
    Music19:Stop()
    Music19.Parent = EffectFolder
end
    print("Dance 19 and music stopped")
end)

-- // Chronoshift Tool Dance \\ --
local tool19 = IT("Tool", Backpack)
tool19.Name = "Chronoshift"
tool19.RequiresHandle = false
--
if not isfile("chronoshift.mp3") then
       writefile("chronoshift.mp3", game:HttpGet("https://github.com/EpicFire8/Music/raw/refs/heads/main/chronoshift.mp3"))
end
--
tool19.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
    Humanoid.WalkSpeed = 10
       getgenv().Animator6D(136302258505787, 1, true)
-- Music
Music19.Parent = Character
Music19.SoundId = getcustomasset("chronoshift.mp3")
Music19.Looped = true
Music19:Play()
end
end)

tool19.Unequipped:Connect(function()
if Music19.Parent == Character and Music19.Playing then
Humanoid.WalkSpeed = 16
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
    Music19:Stop()
    Music19.Parent = EffectFolder
end
    print("Dance 19 and music stopped")
end)

-- // Noli Intro Tool Dance \\ --
local tool19 = IT("Tool", Backpack)
tool19.Name = "Noli Intro"
tool19.RequiresHandle = false
--
if not isfile("NOLI.mp3") then
       writefile("NOLI.mp3", game:HttpGet("https://github.com/EpicFire8/Music/raw/refs/heads/main/NOLI.mp3"))
end
--
tool19.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
    Humanoid.WalkSpeed = 10
       getgenv().Animator6D(84987078674309, 1, true)
-- Music
Music19.Parent = Character
Music19.SoundId = getcustomasset("NOLI.mp3")
Music19.Looped = true
Music19:Play()
end
end)

tool19.Unequipped:Connect(function()
if Music19.Parent == Character and Music19.Playing then
Humanoid.WalkSpeed = 16
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
    Music19:Stop()
    Music19.Parent = EffectFolder
end
    print("Dance 19 and music stopped")
end)

-- // Noli Outro Tool Dance \\ --
local tool19 = IT("Tool", Backpack)
tool19.Name = "Noli Outro"
tool19.RequiresHandle = false
--
if not isfile("NOLIOutro.mp3") then
       writefile("NOLIOutro.mp3", game:HttpGet("https://github.com/EpicFire8/Music/raw/refs/heads/main/NOLIOutro.mp3"))
end
--
tool19.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
    Humanoid.WalkSpeed = 10
       getgenv().Animator6D(134750797885169, 1, true)
-- Music
Music19.Parent = Character
Music19.SoundId = getcustomasset("NOLIOutro.mp3")
Music19.Looped = true
Music19:Play()
end
end)

tool19.Unequipped:Connect(function()
if Music19.Parent == Character and Music19.Playing then
Humanoid.WalkSpeed = 16
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
    Music19:Stop()
    Music19.Parent = EffectFolder
end
    print("Dance 19 and music stopped")
end)

-- // Noli Stunned Tool Dance \\ --
local tool19 = IT("Tool", Backpack)
tool19.Name = "Noli Stun Pose"
tool19.RequiresHandle = false
--
if not isfile("VOIDSOUND.mp3") then
        writefile("VOIDSOUND.mp3", game:HttpGet("https://github.com/EpicFire8/Music/raw/refs/heads/main/VOIDSOUND.mp3"))
end
--
tool19.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
    Humanoid.WalkSpeed = 10
       getgenv().Animator6D(137680069002162, 1, true)
-- Music
Music19.Parent = Character
Music19.SoundId = getcustomasset("VOIDSOUND.mp3")
Music19.Looped = true
Music19:Play()
end
end)

tool19.Unequipped:Connect(function()
if Music19.Parent == Character and Music19.Playing then
Humanoid.WalkSpeed = 16
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
    Music19:Stop()
    Music19.Parent = EffectFolder
end
    print("Dance 19 and music stopped")
end)

-- // Saxophone Tool Dance \\ --
local tool19 = IT("Tool", Backpack)
tool19.Name = "I got a brand new saxaphone"
tool19.RequiresHandle = false
--
if not isfile("SAXAPHONE.mp3") then
       writefile("SAXAPHONE.mp3", game:HttpGet("https://github.com/EpicFire8/Music/raw/refs/heads/main/SAXAPHONE.mp3"))
end
--
tool19.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
    Humanoid.WalkSpeed = 10
       getgenv().Animator6D(76640626326290, 1, true)
-- Music
Music19.Parent = Character
Music19.SoundId = getcustomasset("SAXAPHONE.mp3")
Music19.Looped = true
Music19:Play()
end
end)

tool19.Unequipped:Connect(function()
if Music19.Parent == Character and Music19.Playing then
Humanoid.WalkSpeed = 16
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
    Music19:Stop()
    Music19.Parent = EffectFolder
end
    print("Dance 19 and music stopped")
end)

-- // Eggroll Tool Dance \\ --
local tool19 = IT("Tool", Backpack)
tool19.Name = "EggRoll"
tool19.RequiresHandle = false
--
if not isfile("Eggroll.mp3") then
       writefile("Eggroll.mp3", game:HttpGet("https://github.com/EpicFire8/Music/raw/refs/heads/main/Eggroll.mp3"))
end
--
tool19.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
    Humanoid.WalkSpeed = 10
       getgenv().Animator6D(108580088290625, 1, true)
-- Music
Music19.Parent = Character
Music19.SoundId = getcustomasset("Eggroll.mp3")
Music19.Looped = true
Music19:Play()
end
end)

tool19.Unequipped:Connect(function()
if Music19.Parent == Character and Music19.Playing then
Humanoid.WalkSpeed = 16
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
    Music19:Stop()
    Music19.Parent = EffectFolder
end
    print("Dance 19 and music stopped")
end)

-- // So much Tool Dance \\ --
local tool19 = IT("Tool", Backpack)
tool19.Name = "So much (idk name)"
tool19.RequiresHandle = false
--
if not isfile("anybodycanfindlove(except you.).mp3") then
       writefile("anybodycanfindlove(except you.).mp3", game:HttpGet("https://github.com/EpicFire8/Music/raw/refs/heads/main/anybodycanfindlove(except you.).mp3"))
end
--
tool19.Equipped:Connect(function()
    if Character then
    IsDancing = true
    getgenv().jumping = nil
    getgenv().moving = nil
    theme:Stop()
    Humanoid.WalkSpeed = 10
       getgenv().Animator6D(90600572265074, 1, true)
-- Music
Music19.Parent = Character
Music19.SoundId = getcustomasset("anybodycanfindlove(except you.).mp3")
Music19.Looped = true
Music19:Play()
end
end)

tool19.Unequipped:Connect(function()
if Music19.Parent == Character and Music19.Playing then
Humanoid.WalkSpeed = 16
    IsDancing = false
    getgenv().Animator6DStop()
    theme:Play()
    Music19:Stop()
    Music19.Parent = EffectFolder
end
    print("Dance 19 and music stopped")
end)

-- ending it here since all the rest are basically the same song

-- Avoid duplication of music
Humanoid.Died:Connect(function()
local Theme = SS:FindFirstChild("THEME")
local Music = Character:FindFirstChildOfClass("Sound") or EffectFolder:FindFirstChildOfClass("Sound")
   if Theme and Music then
      Theme.Parent = Character
      Music:Stop()
      Music:Destroy()
end
end)
