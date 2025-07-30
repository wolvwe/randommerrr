--//====================================================\\--
--||			   CREATED BY LifeBest
--\\====================================================//--



wait(0.2)



Player = game:GetService("Players").LocalPlayer
PlayerGui = Player.PlayerGui
Cam = workspace.CurrentCamera
Backpack = Player.Backpack
Character = Player.Character
Humanoid = Character.Humanoid
Mouse = Player:GetMouse()
RootPart = Character["HumanoidRootPart"]
Torso = Character["Torso"]
Head = Character["Head"]
RightArm = Character["Right Arm"]
LeftArm = Character["Left Arm"]
RightLeg = Character["Right Leg"]
LeftLeg = Character["Left Leg"]
RootJoint = RootPart["RootJoint"]
Neck = Torso["Neck"]
RightShoulder = Torso["Right Shoulder"]
LeftShoulder = Torso["Left Shoulder"]
RightHip = Torso["Right Hip"]
LeftHip = Torso["Left Hip"]
local sick = Instance.new("Sound",Character)
sick.SoundId = "rbxassetid://1382487536"
sick.Looped = true
sick.Pitch = 1
sick.Volume = 5
sick:Play()
LightningBolts = {}
LastBolt = nil

local naeeym2 = Instance.new("BillboardGui",Character)
naeeym2.AlwaysOnTop = true
naeeym2.Size = UDim2.new(5,35,2,35)
naeeym2.StudsOffset = Vector3.new(0,3,0)
naeeym2.Adornee = Character.Head
naeeym2.Name = "Name"
--naeeym2.PlayerToHideFrom = Player
naeeym2.MaxDistance = 200
local tecks2 = Instance.new("TextLabel",naeeym2)
tecks2.BackgroundTransparency = 1
tecks2.TextScaled = true
tecks2.BorderSizePixel = 0
tecks2.Text = ""
tecks2.Font = "Antique"
tecks2.TextSize = 30
tecks2.TextStrokeTransparency = 0.9
tecks2.TextColor3 = Color3.new(0,0,0)
tecks2.TextStrokeColor3 = Color3.new(0,0,1)
tecks2.Size = UDim2.new(1,0,0.5,0)
tecks2.Parent = naeeym2

IT = Instance.new
CF = CFrame.new
VT = Vector3.new
RAD = math.rad
C3 = Color3.new
UD2 = UDim2.new
BRICKC = BrickColor.new
ANGLES = CFrame.Angles
EULER = CFrame.fromEulerAnglesXYZ
COS = math.cos
ACOS = math.acos
SIN = math.sin
ASIN = math.asin
ABS = math.abs
MRANDOM = math.random
FLOOR = math.floor

function CreateMesh(MESH, PARENT, MESHTYPE, MESHID, TEXTUREID, SCALE, OFFSET)
	local NEWMESH = IT(MESH)
	if MESH == "SpecialMesh" then
		NEWMESH.MeshType = MESHTYPE
		if MESHID ~= "nil" and MESHID ~= "" then
			NEWMESH.MeshId = "http://www.roblox.com/asset/?id="..MESHID
		end
		if TEXTUREID ~= "nil" and TEXTUREID ~= "" then
			NEWMESH.TextureId = "http://www.roblox.com/asset/?id="..TEXTUREID
		end
	end
	NEWMESH.Offset = OFFSET or VT(0, 0, 0)
	NEWMESH.Scale = SCALE
	NEWMESH.Parent = PARENT
	return NEWMESH
end

function CreatePart(FORMFACTOR, PARENT, MATERIAL, REFLECTANCE, TRANSPARENCY, BRICKCOLOR, NAME, SIZE)
	local NEWPART = IT("Part")
	NEWPART.formFactor = FORMFACTOR
	NEWPART.Reflectance = REFLECTANCE
	NEWPART.Transparency = TRANSPARENCY
	NEWPART.CanCollide = false
	NEWPART.Anchored = true
	NEWPART.Locked = true
	NEWPART.BrickColor = BRICKC(tostring(BRICKCOLOR))
	NEWPART.Name = NAME
	NEWPART.Size = SIZE
	NEWPART.Position = Torso.Position
	NEWPART.Material = MATERIAL
	NEWPART:BreakJoints()
	NEWPART.Parent = PARENT
	return NEWPART
end


--//=================================\\
--||		  CUSTOMIZATION
--\\=================================//

Class_Name = "Template"
Weapon_Name = "Add-ons"

Custom_Colors = {
	Custom_Color_1 = BRICKC("Institutional Cyan"); --1st color for the weapon.
	Custom_Color_2 = BRICKC("Institutional Cyan"); --2nd color for the weapon.

	Custom_Color_3 = BRICKC("Institutional Cyan"); --Color for the abilities.
	Custom_Color_4 = BRICKC("Institutional Cyan"); --Color for the secondary bar.
	Custom_Color_5 = BRICKC("Institutional Cyan"); --Color for the mana bar.
	Custom_Color_6 = BRICKC("Institutional Cyan"); --Color for the health bar.
	Custom_Color_7 = BRICKC("Institutional Cyan"); --Color for the stun bar.

	Custom_Color_8 = BRICKC("Institutional Cyan"); --Background for the mana bar.
	Custom_Color_9 = BRICKC("Institutional Cyan"); --Background for the secondary mana bar.
	Custom_Color_10 = BRICKC("Institutional Cyan"); --Background for the stun bar.
	Custom_Color_11 = BRICKC("Institutional Cyan"); --Background for the health bar.
	Custom_Color_12 = BRICKC("Institutional Cyan"); --Background for the abilities.
}


Player_Size = 1 --Size of the player.
Animation_Speed = 3
Frame_Speed = 1 / 60 -- (1 / 30) OR (1 / 60)

local Speed = 16
local Effects2 = {}

--//=================================\\
--|| 	  END OF CUSTOMIZATION
--\\=================================//

	local function weldBetween(a, b)
	    local weldd = Instance.new("ManualWeld")
	    weldd.Part0 = a
	    weldd.Part1 = b
	    weldd.C0 = CFrame.new()
	    weldd.C1 = b.CFrame:inverse() * a.CFrame
	    weldd.Parent = a
	    return weldd
	end

function createaccessory(attachmentpart,mesh,texture,scale,offset,color)
local acs = Instance.new("Part")
acs.CanCollide = false
acs.Anchored = false
acs.Size = Vector3.new(0,0,0)
acs.CFrame = attachmentpart.CFrame
acs.Parent = Character
acs.BrickColor = color
    local meshs = Instance.new("SpecialMesh")
    meshs.MeshId = mesh
    meshs.TextureId = texture
    meshs.Parent = acs
    meshs.Scale = scale
    meshs.Offset = offset
weldBetween(attachmentpart,acs)
end

function createbodypart(TYPE,COLOR,PART,OFFSET,SIZE)
if TYPE == "Gem" then
	local acs = CreatePart(3, Character, "Plastic", 0, 0, COLOR, "Part", VT(0,0,0))
	acs.Anchored = false
    acs.CanCollide = false
	acs.CFrame = PART.CFrame
	local acs2 = CreateMesh("SpecialMesh", acs, "FileMesh", "9756362", "", SIZE, OFFSET)
weldBetween(PART,acs)
elseif TYPE == "Skull" then
	local acs = CreatePart(3, Character, "Plastic", 0, 0, COLOR, "Part", VT(0,0,0))
	acs.Anchored = false
    acs.CanCollide = false
	acs.CFrame = PART.CFrame
	local acs2 = CreateMesh("SpecialMesh", acs, "FileMesh", "4770583", "", SIZE, OFFSET)
weldBetween(PART,acs)
elseif TYPE == "Eye" then
	local acs = CreatePart(3, Character, "Neon", 0, 0, COLOR, "Part", VT(0,0,0))
	acs.Anchored = false
    acs.CanCollide = false
	acs.CFrame = PART.CFrame
	local acs2 = CreateMesh("SpecialMesh", acs, "Sphere", "", "", SIZE, OFFSET)
weldBetween(PART,acs)
end
end

--//=================================\\
--|| 	      USEFUL VALUES
--\\=================================//

local ROOTC0 = CF(0, 0, 0) * ANGLES(RAD(-90), RAD(0), RAD(180))
local NECKC0 = CF(0, 1, 0) * ANGLES(RAD(-90), RAD(0), RAD(180))
local RIGHTSHOULDERC0 = CF(-0.5, 0, 0) * ANGLES(RAD(0), RAD(90), RAD(0))
local LEFTSHOULDERC0 = CF(0.5, 0, 0) * ANGLES(RAD(0), RAD(-90), RAD(0))
local CO1 = 0
local CO2 = 0
local CO3 = 0
local CO4 = 0
local CHANGEDEFENSE = 0
local CHANGEDAMAGE = 0
local CHANGEMOVEMENT = 0
local ANIM = "Idle"
local ATTACK = false
local EQUIPPED = false
local KEYHOLD = true
local HOLD = false
local COMBO = 1
local LASTPOINT = nil
local BLCF = nil
local SCFR = nil
local STAGGERHITANIM = false
local STAGGERANIM = false
local STUNANIM = false
local CRITCHANCENUMBER = 0
local IDLENUMBER = 0
local DONUMBER = 0
local HANDIDLE = false
local SINE = 0
local CHANGE = 2 / Animation_Speed
local WALKINGANIM = false
local WALK = 0
local DISABLEJUMPING = false
local HASBEENBLOCKED = false
local STUNDELAYNUMBER = 0
local MANADELAYNUMBER = 0
local SECONDARYMANADELAYNUMBER = 0
local ROBLOXIDLEANIMATION = IT("Animation")
ROBLOXIDLEANIMATION.Name = "Roblox Idle Animation"
ROBLOXIDLEANIMATION.AnimationId = "http://www.roblox.com/asset/?id=180435571"
--ROBLOXIDLEANIMATION.Parent = Humanoid
local WEAPONGUI = IT("ScreenGui", nil)
WEAPONGUI.Name = "Weapon GUI"
local WEAPONTOOL = IT("HopperBin", nil)
WEAPONTOOL.Name = Weapon_Name
local Weapon = IT("Model")
Weapon.Name = Weapon_Name
local Effects = IT("Folder", Weapon)
Effects.Name = "Effects"
local ANIMATOR = Humanoid.Animator
local ANIMATE = Character.Animate
local HITPLAYERSOUNDS = {--[["199149137", "199149186", "199149221", "199149235", "199149269", "199149297"--]]"263032172", "263032182", "263032200", "263032221", "263032252", "263033191"}
local HITARMORSOUNDS = {"199149321", "199149338", "199149367", "199149409", "199149452"}
local HITWEAPONSOUNDS = {"199148971", "199149025", "199149072", "199149109", "199149119"}
local HITBLOCKSOUNDS = {"199148933", "199148947"}
local CASTSOUNDS = {"1369158","2974000","2974249"}
local BOLTSOUNDS = {"821439273","224339201","168586586"}
local TORNADOSOUND = "362395087"
local UNANCHOR = true
local TOP = "1214113669"
local BOTTOM = "1214113757"

--//=================================\\
--\\=================================//

--//=================================\\
--||			  STATS
--\\=================================//

if Character:FindFirstChild("Stats") ~= nil then
Character:FindFirstChild("Stats").Parent = nil
end

local Stats = IT("Folder", nil)
Stats.Name = "Stats"
local ChangeStat = IT("Folder", Stats)
ChangeStat.Name = "ChangeStat"
local Defense = IT("NumberValue", Stats)
Defense.Name = "Defense"
Defense.Value = 1
local Movement = IT("NumberValue", Stats)
Movement.Name = "Movement"
Movement.Value = 1
local Damage = IT("NumberValue", Stats)
Damage.Name = "Damage"
Damage.Value = 1
local Mana = IT("NumberValue", Stats)
Mana.Name = "Mana"
Mana.Value = 0
local SecondaryMana = IT("NumberValue", Stats)
SecondaryMana.Name = "SecondaryMana"
SecondaryMana.Value = 0
local CanCrit = IT("BoolValue", Stats)
CanCrit.Name = "CanCrit"
CanCrit.Value = false
local CritChance = IT("NumberValue", Stats)
CritChance.Name = "CritChance"
CritChance.Value = 20
local CanPenetrateArmor = IT("BoolValue", Stats)
CanPenetrateArmor.Name = "CanPenetrateArmor"
CanPenetrateArmor.Value = false
local AntiTeamKill = IT("BoolValue", Stats)
AntiTeamKill.Name = "AntiTeamKill"
AntiTeamKill.Value = false
local Rooted = IT("BoolValue", Stats)
Rooted.Name = "Rooted"
Rooted.Value = false
local Block = IT("BoolValue", Stats)
Block.Name = "Block"
Block.Value = false
local RecentEnemy = IT("ObjectValue", Stats)
RecentEnemy.Name = "RecentEnemy"
RecentEnemy.Value = nil
local StaggerHit = IT("BoolValue", Stats)
StaggerHit.Name = "StaggerHit"
StaggerHit.Value = false
local Stagger = IT("BoolValue", Stats)
Stagger.Name = "Stagger"
Stagger.Value = false
local Stun = IT("BoolValue", Stats)
Stun.Name = "Stun"
Stun.Value = false
local StunValue = IT("NumberValue", Stats)
StunValue.Name = "StunValue"
StunValue.Value = 0


--//=================================\\
--\\=================================//





--//=================================\\
--|| 	     DEBUFFS / BUFFS
--\\=================================//

local DEFENSECHANGE1 = IT("NumberValue", ChangeStat)
DEFENSECHANGE1.Name = "ChangeDefense"
DEFENSECHANGE1.Value = 0

local MOVEMENTCHANGE1 = IT("NumberValue", nil)
MOVEMENTCHANGE1.Name = "ChangeMovement"
MOVEMENTCHANGE1.Value = 0

--//=================================\\
--\\=================================//





--//=================================\\
--|| SAZERENOS' ARTIFICIAL HEARTBEAT
--\\=================================//

ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "ArtificialHB"

script:WaitForChild("ArtificialHB")

frame = Frame_Speed
tf = 0
allowframeloss = false
tossremainder = false
lastframe = tick()
script.ArtificialHB:Fire()

game:GetService("RunService").Heartbeat:connect(function(s, p)
	tf = tf + s
	if tf >= frame then
		if allowframeloss then
			script.ArtificialHB:Fire()
			lastframe = tick()
		else
			for i = 1, math.floor(tf / frame) do
				script.ArtificialHB:Fire()
			end
		lastframe = tick()
		end
		if tossremainder then
			tf = 0
		else
			tf = tf - frame * math.floor(tf / frame)
		end
	end
end)

--//=================================\\
--\\=================================//





--//=================================\\
--|| 	      SOME FUNCTIONS
--\\=================================//

function Raycast(POSITION, DIRECTION, RANGE, IGNOREDECENDANTS)
	return workspace:FindPartOnRay(Ray.new(POSITION, DIRECTION.unit * RANGE), IGNOREDECENDANTS)
end

function PositiveAngle(NUMBER)
	if NUMBER >= 0 then
		NUMBER = 0
	end
	return NUMBER
end

function NegativeAngle(NUMBER)
	if NUMBER <= 0 then
		NUMBER = 0
	end
	return NUMBER
end

function Swait(NUMBER)
	if NUMBER == 0 or NUMBER == nil then
		ArtificialHB.Event:wait()
	else
		for i = 1, NUMBER do
			ArtificialHB.Event:wait()
		end
	end
end

function QuaternionFromCFrame(cf)
	local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components()
	local trace = m00 + m11 + m22
	if trace > 0 then 
		local s = math.sqrt(1 + trace)
		local recip = 0.5 / s
		return (m21 - m12) * recip, (m02 - m20) * recip, (m10 - m01) * recip, s * 0.5
	else
		local i = 0
		if m11 > m00 then
			i = 1
		end
		if m22 > (i == 0 and m00 or m11) then
			i = 2
		end
		if i == 0 then
			local s = math.sqrt(m00 - m11 - m22 + 1)
			local recip = 0.5 / s
			return 0.5 * s, (m10 + m01) * recip, (m20 + m02) * recip, (m21 - m12) * recip
		elseif i == 1 then
			local s = math.sqrt(m11 - m22 - m00 + 1)
			local recip = 0.5 / s
			return (m01 + m10) * recip, 0.5 * s, (m21 + m12) * recip, (m02 - m20) * recip
		elseif i == 2 then
			local s = math.sqrt(m22 - m00 - m11 + 1)
			local recip = 0.5 / s return (m02 + m20) * recip, (m12 + m21) * recip, 0.5 * s, (m10 - m01) * recip
		end
	end
end
 
function QuaternionToCFrame(px, py, pz, x, y, z, w)
	local xs, ys, zs = x + x, y + y, z + z
	local wx, wy, wz = w * xs, w * ys, w * zs
	local xx = x * xs
	local xy = x * ys
	local xz = x * zs
	local yy = y * ys
	local yz = y * zs
	local zz = z * zs
	return CFrame.new(px, py, pz, 1 - (yy + zz), xy - wz, xz + wy, xy + wz, 1 - (xx + zz), yz - wx, xz - wy, yz + wx, 1 - (xx + yy))
end
 
function QuaternionSlerp(a, b, t)
	local cosTheta = a[1] * b[1] + a[2] * b[2] + a[3] * b[3] + a[4] * b[4]
	local startInterp, finishInterp;
	if cosTheta >= 0.0001 then
		if (1 - cosTheta) > 0.0001 then
			local theta = ACOS(cosTheta)
			local invSinTheta = 1 / SIN(theta)
			startInterp = SIN((1 - t) * theta) * invSinTheta
			finishInterp = SIN(t * theta) * invSinTheta
		else
			startInterp = 1 - t
			finishInterp = t
		end
	else
		if (1 + cosTheta) > 0.0001 then
			local theta = ACOS(-cosTheta)
			local invSinTheta = 1 / SIN(theta)
			startInterp = SIN((t - 1) * theta) * invSinTheta
			finishInterp = SIN(t * theta) * invSinTheta
		else
			startInterp = t - 1
			finishInterp = t
		end
	end
	return a[1] * startInterp + b[1] * finishInterp, a[2] * startInterp + b[2] * finishInterp, a[3] * startInterp + b[3] * finishInterp, a[4] * startInterp + b[4] * finishInterp
end

function Clerp(a, b, t)
	local qa = {QuaternionFromCFrame(a)}
	local qb = {QuaternionFromCFrame(b)}
	local ax, ay, az = a.x, a.y, a.z
	local bx, by, bz = b.x, b.y, b.z
	local _t = 1 - t
	return QuaternionToCFrame(_t * ax + t * bx, _t * ay + t * by, _t * az + t * bz, QuaternionSlerp(qa, qb, t))
end

function CreateFrame(PARENT, TRANSPARENCY, BORDERSIZEPIXEL, POSITION, SIZE, COLOR, BORDERCOLOR, NAME)
	local frame = IT("Frame")
	frame.BackgroundTransparency = TRANSPARENCY
	frame.BorderSizePixel = BORDERSIZEPIXEL
	frame.Position = POSITION
	frame.Size = SIZE
	frame.BackgroundColor3 = COLOR
	frame.BorderColor3 = BORDERCOLOR
	frame.Name = NAME
	frame.Parent = PARENT
	return frame
end

function CreateLabel(PARENT, TEXT, TEXTCOLOR, TEXTFONTSIZE, TEXTFONT, TRANSPARENCY, BORDERSIZEPIXEL, STROKETRANSPARENCY, NAME)
	local label = IT("TextLabel")
	label.BackgroundTransparency = 1
	label.Size = UD2(1, 0, 1, 0)
	label.Position = UD2(0, 0, 0, 0)
	label.TextColor3 = C3(255, 255, 255)
	label.TextStrokeTransparency = STROKETRANSPARENCY
	label.TextTransparency = TRANSPARENCY
	label.FontSize = TEXTFONTSIZE
	label.Font = TEXTFONT
	label.BorderSizePixel = BORDERSIZEPIXEL
	label.TextScaled = true
	label.Text = TEXT
	label.Name = NAME
	label.Parent = PARENT
	return label
end

function NoOutlines(PART)
	PART.TopSurface, PART.BottomSurface, PART.LeftSurface, PART.RightSurface, PART.FrontSurface, PART.BackSurface = 10, 10, 10, 10, 10, 10
end


function CreateWeldOrSnapOrMotor(TYPE, PARENT, PART0, PART1, C0, C1)
	local NEWWELD = IT(TYPE)
	NEWWELD.Part0 = PART0
	NEWWELD.Part1 = PART1
	NEWWELD.C0 = C0
	NEWWELD.C1 = C1
	NEWWELD.Parent = PARENT
	return NEWWELD
end

function CreateSound(ID, PARENT, VOLUME, PITCH, DOESLOOP)
	local NEWSOUND = nil
	coroutine.resume(coroutine.create(function()
		NEWSOUND = IT("Sound", PARENT)
		NEWSOUND.Volume = VOLUME
		NEWSOUND.Pitch = PITCH
		NEWSOUND.SoundId = "http://www.roblox.com/asset/?id="..ID
		Swait()
		NEWSOUND:play()
		if DOESLOOP == false then
			repeat Swait() until NEWSOUND.Playing == false
			NEWSOUND:remove()
		elseif DOESLOOP == true then
			NEWSOUND.Looped = true
		end
	end))
	return NEWSOUND
end

function CFrameFromTopBack(at, top, back)
	local right = top:Cross(back)
	return CF(at.x, at.y, at.z, right.x, top.x, back.x, right.y, top.y, back.y, right.z, top.z, back.z)
end

function CreateWave(inair,size,doesrotate,rotatedirection,waitt,part,offset,color)
	local wave = CreatePart(3, Effects, "Neon", 0, 0.5, BRICKC(color), "Effect", VT(0,0,0))
	local mesh = IT("SpecialMesh",wave)
	mesh.MeshType = "FileMesh"
	mesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
	mesh.Scale = VT(size,size,size)
	mesh.Offset = VT(0,0,-size/8)
	wave.CFrame = CF(part.Position) * CF(0,offset,0) * ANGLES(RAD(inair),RAD(0),RAD(0))
	coroutine.resume(coroutine.create(function(PART)
		for i = 1, waitt do
			Swait()
			mesh.Scale = mesh.Scale + VT(size/5,0,size/5)
			mesh.Offset = VT(0,0,-(mesh.Scale.X/8))
			if doesrotate == true then
				wave.CFrame = wave.CFrame * CFrame.fromEulerAnglesXYZ(0, rotatedirection, 0)
			end
			wave.Transparency = wave.Transparency + (0.5/waitt)
			if wave.Transparency > 0.99 then
				wave:remove()
			end
		end
	end))
end

function CreateSwirl(inair,size,doesrotate,rotatedirection,waitt,part,offset,color)
	local wave = CreatePart(3, Effects, "Neon", 0, 0.5, BRICKC(color), "Effect", VT(0,0,0))
	local mesh = IT("SpecialMesh",wave)
	mesh.MeshType = "FileMesh"
	mesh.MeshId = "http://www.roblox.com/asset/?id=1051557"
	mesh.Scale = VT(size,size,size)
	wave.CFrame = CF(part.Position) * CF(0,offset,0) * ANGLES(RAD(inair),RAD(0),RAD(0))
	coroutine.resume(coroutine.create(function(PART)
		for i = 1, waitt do
			Swait()
			mesh.Scale = mesh.Scale + VT(size/5,0,size/5)
			if doesrotate == true then
				wave.CFrame = wave.CFrame * CFrame.fromEulerAnglesXYZ(0, rotatedirection, 0)
			end
			wave.Transparency = wave.Transparency + (0.5/waitt)
			if wave.Transparency > 0.99 then
				wave:remove()
			end
		end
	end))
end

function CreateTornado(inair,size,doesrotate,rotatedirection,waitt,part,offset,color)
	local wave = CreatePart(3, Effects, "Neon", 0, 0.5, BRICKC(color), "Effect", VT(0,0,0))
	local mesh = IT("SpecialMesh",wave)
	mesh.MeshType = "FileMesh"
	mesh.MeshId = "http://www.roblox.com/asset/?id=102638417"
	mesh.Scale = VT(size,size,size)
	wave.CFrame = CF(part.Position) * CF(0,offset,0) * ANGLES(RAD(inair),RAD(0),RAD(0))
	coroutine.resume(coroutine.create(function(PART)
		for i = 1, waitt do
			Swait()
			if doesrotate == true then
				wave.CFrame = wave.CFrame * CFrame.fromEulerAnglesXYZ(0, rotatedirection, 0)
			end
			wave.Transparency = wave.Transparency + (0.5/waitt)
			if wave.Transparency > 0.99 then
				wave.Parent = nil
			end
		end
	end))
	return wave
end

function CreateRing(inair,size,doesrotate,rotatedirection,waitt,part,offset,spin1,spin2,color)
	local wave = CreatePart(3, Effects, "Neon", 0, 0.5, BRICKC(color), "Effect", VT(0,0,0))
	local mesh = IT("SpecialMesh",wave)
	mesh.MeshType = "FileMesh"
	mesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
	mesh.Scale = VT(size,size,size)
	mesh.Offset = VT(0,0,0)
	wave.CFrame = CF(part.Position) * CF(0,offset,0) * ANGLES(RAD(inair),RAD(0),RAD(0))
	coroutine.resume(coroutine.create(function(PART)
		for i = 1, waitt do
			Swait()
			mesh.Scale = mesh.Scale + VT(size/5,size/5,size/5)
			if doesrotate == true then
				wave.CFrame = wave.CFrame * CFrame.fromEulerAnglesXYZ(spin2, rotatedirection, spin1)
			end
			wave.Transparency = wave.Transparency + (0.5/waitt)
			if wave.Transparency > 0.99 then
				wave:remove()
			end
		end
	end))
end

function MagicSphere(size,waitt,part,offset,color)
	local wave = CreatePart(3, Effects, "Neon", 0, 0, BRICKC(color), "Effect", VT(0,0,0))
	local mesh = IT("SpecialMesh",wave)
	mesh.MeshType = "FileMesh"
	mesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
	mesh.Scale = VT(size,size,size)
	mesh.Offset = VT(0,0,0)
	wave.CFrame = CF(part.Position) * CF(0,offset,0) * ANGLES(RAD(0),RAD(0),RAD(0))
	coroutine.resume(coroutine.create(function(PART)
		for i = 1, waitt do
			Swait()
			mesh.Scale = mesh.Scale + VT(size/5,size/5,size/5)
			wave.Transparency = wave.Transparency + (1/waitt)
			if wave.Transparency > 0.99 then
				wave:remove()
			end
		end
	end))
end

function MagicBlock(size,waitt,part,offset,color)
	local wave = CreatePart(3, Effects, "Neon", 0, 0, BRICKC(color), "Effect", VT(size,size,size))
	local mesh = IT("BlockMesh",wave)
	wave.CFrame = CF(part.Position) * CF(0,offset,0) * ANGLES(RAD(0),RAD(0),RAD(0))
	coroutine.resume(coroutine.create(function(PART)
		for i = 1, waitt do
			Swait()
			mesh.Scale = mesh.Scale + VT(size/15,size/15,size/15)
			wave.CFrame = CF(wave.Position) * ANGLES(RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360)))
			wave.Transparency = wave.Transparency + (1/waitt)
			if wave.Transparency > 0.99 then
				wave:remove()
			end
		end
	end))
end

local EyeSizes={
	NumberSequenceKeypoint.new(0,1,0),
	NumberSequenceKeypoint.new(1,0.2,0)
}
local EyeTrans={
	NumberSequenceKeypoint.new(0,0.8,0),
	NumberSequenceKeypoint.new(1,1,0)
}
local PE=Instance.new("ParticleEmitter")
PE.LightEmission=0
PE.Size=NumberSequence.new(EyeSizes)
PE.Transparency=NumberSequence.new(EyeTrans)
PE.Lifetime=NumberRange.new(0.35,0.35,0.35)
PE.Rotation=NumberRange.new(0,360)
PE.Rate=15
PE.Acceleration = Vector3.new(0,75,0)
PE.Drag = 5
PE.Enabled = false
PE.Speed = NumberRange.new(0,0,0)
PE.Texture="http://www.roblox.com/asset/?id=1179557490"
PE.ZOffset = 0
PE.Name = "Particles"

function CreateParticles(art,text,accel,drag,rate,type,isenabledbydefault)
	local particle = PE:Clone()
	particle.Parent = art
	particle.Acceleration = accel
	PE.Rate = rate
	if type == "Fire" then
		local EyeSizes={
			NumberSequenceKeypoint.new(0,1,0.3),
			NumberSequenceKeypoint.new(1,0.2,0.2)
		}
		PE.Size = NumberSequence.new(EyeSizes)
	elseif type == "Smoke" then
		local EyeSizes={
			NumberSequenceKeypoint.new(0,1,0),
			NumberSequenceKeypoint.new(1,5,0.5)
		}
		PE.Size = NumberSequence.new(EyeSizes)
	elseif type == "Solid" then
		local EyeSizes={
			NumberSequenceKeypoint.new(0,1,0),
			NumberSequenceKeypoint.new(1,1,0)
		}
		PE.Size = NumberSequence.new(EyeSizes)
	end
	PE.Drag = drag
	particle.Texture = "http://www.roblox.com/asset/?id="..text
	particle.Enabled = isenabledbydefault
return particle
end

local Decal = IT("Decal")

function CreateMagicCircle(size,doesrotate,rotatedirection,waitt,cframe,alwaysfade)
	local sinkhole = IT("Part")
	sinkhole.Size = VT(size,0,size)
	sinkhole.CFrame = cframe
	--sinkhole.Orientation = VT(0,0,0)
	sinkhole.Parent = Effects
	sinkhole.Material = "Neon"
	sinkhole.Color = C3(1,0,0)
	sinkhole.Anchored = true
	sinkhole.CanCollide = false
	sinkhole.Transparency = 1
	local decal = Decal:Clone()
	decal.Parent = sinkhole
	decal.Face = "Top"
	decal.Texture = "http://www.roblox.com/asset/?id="..TOP
	local decal2 = Decal:Clone()
	decal2.Parent = sinkhole
	decal2.Face = "Bottom"
	decal2.Texture = "http://www.roblox.com/asset/?id="..BOTTOM
	coroutine.resume(coroutine.create(function(PART)
		for i = 1, waitt do
			Swait()
			if doesrotate == true then
				sinkhole.CFrame = sinkhole.CFrame * CFrame.fromEulerAnglesXYZ(0, rotatedirection, 0)
			end
			if alwaysfade == true then
				decal.Transparency = decal.Transparency + (1/waitt)
				decal2.Transparency = decal.Transparency + (1/waitt)
			end
			if i > waitt-11 and (alwaysfade ~= true) then
				decal.Transparency = decal.Transparency + 0.1
				decal2.Transparency = decal.Transparency + 0.1
			end
		end
		sinkhole.Parent = nil
	end))
	return sinkhole
end

--//=================================\\
--\\=================================//


--//=================================\\
--||	     WEAPON CREATION
--\\=================================//

if Player_Size ~= 1 then
	for _, v in pairs (Weapon:GetChildren()) do
		if v.ClassName == "Motor" or v.ClassName == "Weld" or v.ClassName == "Snap" then
			local p1 = v.Part1
			v.Part1 = nil
			local cf1, cf2, cf3, cf4, cf5, cf6, cf7, cf8, cf9, cf10, cf11, cf12 = v.C1:components()
			v.C1 = CF(cf1 * Player_Size, cf2 * Player_Size, cf3 * Player_Size, cf4, cf5, cf6, cf7, cf8, cf9, cf10, cf11, cf12)
			v.Part1 = p1
		elseif v.ClassName == "Part" then
			for _, b in pairs (v:GetChildren()) do
				if b.ClassName == "SpecialMesh" or b.ClassName == "BlockMesh" then
					b.Scale = VT(b.Scale.x * Player_Size, b.Scale.y * Player_Size, b.Scale.z * Player_Size)
				end
			end
		end
	end
end

for _, c in pairs(Weapon:GetChildren()) do
	if c.ClassName == "Part" then
		c.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
	end
end

Weapon.Parent = Character

Humanoid.Died:connect(function()
	ATTACK = true
end)

print(Class_Name.." loaded.")

--//=================================\\
--||         BIG ZAPS
--\\=================================//

BaseLightning = IT("Part")
BaseLightning.Anchored = true
BaseLightning.CanCollide = false
BaseLightning.Material = "Neon"

function CheckTableForString(Table, String)
	for i, v in pairs(Table) do
		if string.find(string.lower(String), string.lower(v)) then
			return true
		end
	end
	return false
end

function CheckIntangible(Hit)
	local ProjectileNames = {"Water", "Arrow", "Projectile", "Effect", "Rail", "Lightning", "Bullet"}
	if Hit and Hit.Parent then
		if ((not Hit.CanCollide or CheckTableForString(ProjectileNames, Hit.Name)) and not Hit.Parent:FindFirstChild("Humanoid")) then
			return true
		end
	end
	return false
end

Debris = game:GetService("Debris")

function CastZapRay(StartPos, Vec, Length, Ignore, DelayIfHit)
	local Ignore = ((type(Ignore) == "table" and Ignore) or {Ignore})
	local RayHit, RayPos, RayNormal = game:GetService("Workspace"):FindPartOnRayWithIgnoreList(Ray.new(StartPos, Vec * Length), Ignore)
	if RayHit and CheckIntangible(RayHit) then
		if DelayIfHit then
			wait()
		end
		RayHit, RayPos, RayNormal = CastZapRay((RayPos + (Vec * 0.01)), Vec, (Length - ((StartPos - RayPos).magnitude)), Ignore, DelayIfHit)
	end
	return RayHit, RayPos, RayNormal
end

--Zap({StartPosition = Position, TargetPosition = Position, Character = Character, Color = "Color", Individual = true})
function Zap(Table)
	local StartPos, TargetPos, Character, Color = Table.StartPosition, Table.TargetPosition, Table.Character, Table.Color
	local Duration = (Table.Duration or 2)
	local FadeRate = (Table.FadeRate or 0.05)
	local Offset = (Table.Offset or 2)
	local Individualize = (Table.Individualize or false)
	local MaxRange = (Table.MaxRange or 200)
	local DoesKill = (Table.DoesKill or false)
	local SegmentLength = (Table.SegmentLength or 5)
	local TimeToFade = (Table.TimeToFade or 0.5)
	local Ignore = (Table.Ignore or {})
	local SIZE = (Table.Size or 0.3)
	if not StartPos or not TargetPos or not Character then
		return
	end
	local LightningModel = Effects
	for i, v in pairs({Character, LightningModel}) do
		table.insert(Ignore, v)
	end
	local LastPos = StartPos
	local Direction = CFrame.new(StartPos, TargetPos).lookVector
	local RayHit, RayPos, RayNormal = CastZapRay(StartPos, Direction, MaxRange, Ignore, false)
	local RayLength = (StartPos - RayPos).Magnitude
	local Struck = false
	local TotalSegments = math.ceil(RayLength / SegmentLength)
	Direction = CFrame.new(StartPos, RayPos).lookVector
	local LightningBolt = IT("Model",Effects)
	LightningBolt.Name = "Lightning"
	if not Individualize then
		table.insert(LightningBolts, LightningBolt)
	end
	LastBolt = LightningBolt
	Debris:AddItem(LightningBolt, Duration)
	LightningBolt.Parent = LightningModel
	for i = 1, TotalSegments do
		if not Struck then
			local Entropy = Vector3.new(((math.random() * Offset*2.5) - Offset), ((math.random() * Offset*2.5) - Offset), ((math.random() * Offset*2.5) - Offset))
			local NewPos = (StartPos + (Direction * (RayLength * (i / TotalSegments))) + Entropy)
			local SegmentVec = (NewPos - LastPos)
			local RayHit, RayPos, RayNormal = CastZapRay(LastPos, SegmentVec.Unit, SegmentVec.Magnitude, {Character, LightningModel}, false) 
			local RayVec = (LastPos - RayPos)
			local LightningPart = BaseLightning:Clone()
			LightningPart.BrickColor = BrickColor.new(Color)
			LightningPart.Size = Vector3.new(SIZE, SIZE, RayVec.Magnitude)
			LightningPart.CFrame = (CFrame.new(LastPos, RayPos) * CFrame.new(0, 0, -(RayVec.Magnitude / 2)))
			table.insert(Effects2,{LightningPart,"Disappear",0.025,1,1,1,2})
			--Make circular
			local CylinderMesh = IT("CylinderMesh",LightningPart)
			local OrigCF = LightningPart.CFrame
			LightningPart.Size = Vector3.new(LightningPart.Size.X, LightningPart.Size.Z, LightningPart.Size.Y)
			LightningPart.CFrame = (OrigCF * CFrame.Angles((math.pi / 2), 0, 0))
			LightningPart.Parent = LightningBolt
			LastPos = NewPos
			if DoesKill == true then
				killnearest(NewPos,40,100)
				AoEDamage(NewPos,75,15,65,0,false,6,3,false)
			end
			Spawn(function()
				local FadeRate = 0.05
				local OrigTransparency = LightningPart.Transparency
				for i = 1, (TimeToFade / FadeRate) do
					wait(FadeRate)
					LightningPart.Transparency = (OrigTransparency + (i / (TimeToFade / FadeRate)))
				end
			end)
		end
	end
	return {RayHit = RayHit, RayPos = RayPos, RayNormal = RayNormal, LightningModel = LightningModel}
end


--//=================================\\
--||	     DAMAGE FUNCTIONS
--\\=================================//

function StatLabel(LABELTYPE, CFRAME, TEXT, COLOR)
	local STATPART = CreatePart(3, Effects, "SmoothPlastic", 0, 1, "Fog", "Effect", VT())
	STATPART.CFrame = CF(CFRAME.p + VT(0, 1.5, 0))
	local BODYGYRO = IT("BodyGyro", STATPART)
	local BODYPOSITION = IT("BodyPosition", STATPART)
	BODYPOSITION.P = 2000
	BODYPOSITION.D = 100
	BODYPOSITION.maxForce = VT(math.huge, math.huge, math.huge)
	if LABELTYPE == "Normal" then
		BODYPOSITION.position = STATPART.Position + VT(MRANDOM(-2, 2), 6, MRANDOM(-2, 2))
	elseif LABELTYPE == "Debuff" then
		BODYPOSITION.position = STATPART.Position + VT(MRANDOM(-2, 2), 8, MRANDOM(-2, 2))
	elseif LABELTYPE == "Interruption" then
		BODYPOSITION.position = STATPART.Position + VT(MRANDOM(-2,2), 8, MRANDOM(-2, 2))
	end
	game:GetService("Debris"):AddItem(STATPART ,5)
	local BILLBOARDGUI = Instance.new("BillboardGui", STATPART)
	BILLBOARDGUI.Adornee = STATPART
	BILLBOARDGUI.Size = UD2(2.5, 0, 2.5 ,0)
	BILLBOARDGUI.StudsOffset = VT(-2, 2, 0)
	BILLBOARDGUI.AlwaysOnTop = false
	local TEXTLABEL = Instance.new("TextLabel", BILLBOARDGUI)
	TEXTLABEL.BackgroundTransparency = 1
	TEXTLABEL.Size = UD2(2.5, 0, 2.5, 0)
	TEXTLABEL.Text = TEXT
	TEXTLABEL.Font = "SciFi"
	TEXTLABEL.FontSize="Size42"
	TEXTLABEL.TextColor3 = COLOR
	TEXTLABEL.TextStrokeTransparency = 1
	TEXTLABEL.TextScaled = true
	TEXTLABEL.TextWrapped = true
	coroutine.resume(coroutine.create(function(THEPART, THEBODYPOSITION, THETEXTLABEL)
		wait(0.2)
		for i=1, 5 do
			wait()
			THEBODYPOSITION.Position = THEPART.Position - VT(0, 0.5 ,0)
		end
		wait(1.2)
		for i=1, 5 do
			wait()
			THETEXTLABEL.TextTransparency = THETEXTLABEL.TextTransparency + 0.2
			THETEXTLABEL.TextStrokeTransparency = THETEXTLABEL.TextStrokeTransparency + 0.2
			THEBODYPOSITION.position = THEPART.Position + VT(0, 0.5, 0)
		end
		THEPART.Parent = nil
	end),STATPART, BODYPOSITION, TEXTLABEL)
end


--//=================================\\
--||			DAMAGING
--\\=================================//

function dealdamage(hit,min,max,maxstrength,beserk,critrate,critmultiplier)
	if hit.Parent:FindFirstChildOfClass("Humanoid") and hit.Parent:FindFirstChild("HitBy"..Player.Name) == nil then
		local humanoid = hit.Parent:FindFirstChildOfClass("Humanoid")
		local dmg = "inf"
		if humanoid.Health > 0 then
			if beserk == true then
				humanoid.Health = 0
			else
				CreateSound("260430060", hit, 1.2, MRANDOM(7, 12) / 10,false)
				hit.Velocity = CFrame.new(Torso.Position,hit.Position).lookVector*5*maxstrength
				if math.random(1,100) < critrate+1 then
					humanoid.Health = humanoid.Health - dmg*critmultiplier
					StatLabel("Normal", hit.CFrame * CF(0, 0 + (hit.Size.z - 1), 0), "CRIT/"..dmg*critmultiplier, C3(255/255, 0, 0))
				else
					humanoid.Health = humanoid.Health - dmg
					StatLabel("Normal", hit.CFrame * CF(0, 0 + (hit.Size.z - 1), 0), dmg, C3(0, 0, 0))
				end
				local defence = Instance.new("BoolValue",hit.Parent)
				defence.Name = ("HitBy"..Player.Name)
				game:GetService("Debris"):AddItem(defence, 0.5)
			end
		end
	end
end

function AoEDamage(position,radius,min,max,maxstrength,beserk,critrate,critmultiplier,CanBeDodgedByJumping)
	local dmg = "inf"
	for i,v in ipairs(workspace:GetChildren()) do
	if v:FindFirstChild("HitBy"..Player.Name) == nil then
		local body = v:GetChildren()
			for part = 1, #body do
				if(v:FindFirstChild("HitBy"..Player.Name) == nil and (body[part].ClassName == "Part" or body[part].ClassName == "MeshPart") and v ~= Character) then
					if(body[part].Position - position).Magnitude < radius then
						if v.ClassName == "Model" then
							if v:FindFirstChild("Humanoid") then
								if v.Humanoid.Health ~= 0 then
									if CanBeDodgedByJumping == true then
										if body[part].Position.Y < position.Y+5 then
											if math.random(1,100) < critrate+1 then
												v.Humanoid.Health = v.Humanoid.Health - dmg*critmultiplier
												StatLabel("Normal", body[part].CFrame * CF(0, 0 + (body[part].Size.z - 1), 0), "CRIT/"..dmg*critmultiplier, C3(255/255, 0, 0))
											else
												v.Humanoid.Health = v.Humanoid.Health - dmg
												StatLabel("Normal", body[part].CFrame * CF(0, 0 + (body[part].Size.z - 1), 0), dmg, C3(0, 0, 0))
											end
											local defence = Instance.new("BoolValue",v)
											defence.Name = ("HitBy"..Player.Name)
											game:GetService("Debris"):AddItem(defence, 0.5)
										end
									else
										if beserk == true then
											v.Humanoid.Health = 0
										end
										if math.random(1,100) < critrate+1 then
											v.Humanoid.Health = v.Humanoid.Health - dmg*critmultiplier
											StatLabel("Normal", body[part].CFrame * CF(0, 0 + (body[part].Size.z - 1), 0), "CRIT/"..dmg*critmultiplier, C3(255/255, 0, 0))
										else
											v.Humanoid.Health = v.Humanoid.Health - dmg
											StatLabel("Normal", body[part].CFrame * CF(0, 0 + (body[part].Size.z - 1), 0), dmg, C3(0, 0, 0))
										end
										local defence = Instance.new("BoolValue",v)
										defence.Name = ("HitBy"..Player.Name)
										game:GetService("Debris"):AddItem(defence, 0.5)
									end
								end
							elseif v:FindFirstChild("Humanoid") == nil then
								v:BreakJoints()
							end
						end
						body[part].Velocity = CFrame.new(position,body[part].Position).lookVector*-maxstrength
					end
				end
			end
			if v.ClassName == "Part" then
				if v.Anchored == false and (v.Position - position).Magnitude < radius then
					v.Velocity = CFrame.new(position,v.Position).lookVector*-maxstrength
				end
			end
		end
	end
end

function killnearest(position,range,maxstrength)
	for i,v in ipairs(workspace:GetChildren()) do
	local body = v:GetChildren()
		for part = 1, #body do
			if((body[part].ClassName == "Part" or body[part].ClassName == "MeshPart") and v ~= Character) then
				if(body[part].Position - position).Magnitude < range then
					if v.ClassName == "Model" then
						v:BreakJoints()
					end
					--table.insert(Effects2,{body[part],"Disappear",0.02,2,2,2,2})
					body[part].Velocity = CFrame.new(position,body[part].Position).lookVector*5*maxstrength
				end
			end
		end
		if v.ClassName == "Part" then
			if v.Anchored == false and (v.Position - position).Magnitude < range then
				--table.insert(Effects2,{v,"Disappear",0.02,2,2,2,2})
				v.Velocity = CFrame.new(position,v.Position).lookVector*5*maxstrength
			end
		end
	end
end

--//=================================\\
--||	ATTACK FUNCTIONS AND STUFF
--\\=================================//

function turnto(pos)
	RootPart.CFrame = CF(RootPart.Position,VT(pos.X,RootPart.Position.Y,pos.Z))
end

function RayCast(Position, Direction, MaxDistance, IgnoreList)
	return game:GetService("Workspace"):FindPartOnRayWithIgnoreList(Ray.new(Position, Direction.unit * (MaxDistance or 999.999)), IgnoreList) 
end

function attacktemplate()
	ATTACK = true
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, 0 * Player_Size + 0.05 * COS(SINE / 12) * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(5 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -1 * Player_Size, -0 * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -1 * Player_Size, -0 * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
	end
	ATTACK = false
end

function GaleForce()
	ATTACK = true
	for i=0, 1.5, 0.1 / Animation_Speed do
		Swait()
		turnto(Mouse.Hit.p)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(90)), 0.4 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(-5), RAD(0), RAD(-75)), 0.2 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(100)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(25), RAD(-25)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -1 * Player_Size, -0 * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -1 * Player_Size, -0 * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
	end
	local SIZE = 5
	local loop = 0
	repeat
		Swait()
		turnto(Mouse.Hit.p)
		loop = loop + 1
		if SIZE < 40 then
			if loop == 5 then
				SIZE = SIZE + 1
				loop = 0
			end
		end
		CreateMagicCircle(SIZE/3,false,-0.2,3*2,RightArm.CFrame * CF(0,-1.1,0),true)
	until KEYHOLD == false
	local force = IT("Part",Effects)
	force.Size = VT(0,0,0)
	force.CanCollide = false
	force.Anchored = false
	force.CFrame = RightArm.CFrame * CF(0,-1.1-(SIZE/10),0)
	local bv = Instance.new("BodyVelocity") 
	bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
	bv.velocity = RootPart.CFrame.lookVector*70
	bv.Parent = force
	bv.Name = "DASH"
	local loop = CreateSound(TORNADOSOUND, force, SIZE, MRANDOM(7, 12) / 10,true)
	CreateSound(CASTSOUNDS[MRANDOM(1,#CASTSOUNDS)], RightArm, 5, 1 ,false)
	coroutine.resume(coroutine.create(function()
		Swait(SIZE*10)
		force.Parent = nil
	end))
	coroutine.resume(coroutine.create(function()
		repeat
			Swait()
			CreateSwirl(0,SIZE,true,-2,5,force,0,"Stone grey")
			CreateSwirl(0,SIZE*0.7,true,2,5,force,0,"Stone grey")
			AoEDamage(force.Position,SIZE*1.5,45,65,100,false,7,2,false)
		until force.Parent == nil
	end))
	for i=0, 1.5, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(90)), 0.4 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(-5), RAD(0), RAD(-75)), 0.2 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(100)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(25), RAD(-25)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -1 * Player_Size, -0 * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -1 * Player_Size, -0 * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
	end
	ATTACK = false
end

function ThunderStorm()
	ATTACK = true
	Rooted = true
	CreateSound("305685800", Head, 10, 1.1 ,false)
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, 0 * Player_Size + 0.05 * COS(SINE / 12) * Player_Size) * ANGLES(RAD(-15), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(-25 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(150), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(150), RAD(0), RAD(0)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -1 * Player_Size, -0 * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-30)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -1 * Player_Size, -0 * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(30)), 0.15 / Animation_Speed)
	end
	local SIZE = 1
	local cloud = IT("Part",Effects)
	cloud.Size = VT(0,0,0)
	cloud.Color = C3(0.3,0.3,0.3)
	cloud.Anchored = true
	cloud.CanCollide = false
	cloud.CFrame = CF(RootPart.Position) * CF(0,125,0)
	local mesh = IT("SpecialMesh",cloud)
	mesh.MeshType = "FileMesh"
	mesh.MeshId = "http://www.roblox.com/asset/?id=111820358"
	mesh.Scale = VT(1000,50,1000)
	cloud.Transparency = 1
	CreateSound("267154400", Effects, 5, 1 ,false)
	for i = 1, 500 do
		Swait()
		if math.random(1,50) == 1 then
			Zap({MaxRange = 125 ,StartPosition = RootPart.Position, TargetPosition = cloud.Position, Character = Character, Color = "Bright blue", Individual = true})
		end
		cloud.CFrame = CF(RootPart.Position) * CF(0,125,0)
		CreateMagicCircle(SIZE/25,false,-0.2,3*2,RootPart.CFrame * CF(0,-2.9,0),true)
		CreateMagicCircle(SIZE,false,-0.2,3*2,cloud.CFrame,true)
		cloud.Transparency = cloud.Transparency - (1/500)
		SIZE = SIZE + 1
	end
	cloud.Transparency = 0
	local sound = CreateSound("236148388", Effects, 3, 1 ,true)
	local lighteffect = IT("BlurEffect",game.Lighting)
	lighteffect.Size = 0
	coroutine.resume(coroutine.create(function()
		for i =1, 12 do
			Swait()
			lighteffect.Size = lighteffect.Size + 0.2
		end
	end))
	coroutine.resume(coroutine.create(function()
		for i = 1, 1200 do
			Swait()
			CreateMagicCircle(SIZE/25,false,-0.2,3*2,RootPart.CFrame * CF(0,-2.9,0),true)
			cloud.CFrame = CF(RootPart.Position) * CF(0,125,0)
			for i =1, 2 do
				local droplet = IT("Part",Effects)
				droplet.Size = VT(1,2,1)
				droplet.CanCollide = false
				droplet.Color = BRICKC("Steel blue").Color
				local mesh = IT("SpecialMesh",droplet)
				mesh.MeshType = "Sphere"
				droplet.Position = VT(cloud.Position.X+math.random(-600,600),cloud.Position.Y,cloud.Position.Z+math.random(-600,600))
			end
			CreateMagicCircle(SIZE,false,-0.2,3*2,cloud.CFrame,true)
			if math.random(1,15) == 1 then
				local POS = VT(RootPart.Position.X+math.random(-200,200),cloud.Position.Y,RootPart.Position.Z+math.random(-200,200))
				local POS2 = VT(POS.X+math.random(-30,30),RootPart.Position.Y,POS.Z+math.random(-30,30))
				local RayData = Zap({Offset = 12, Size = 6, SegmentLength = 8, StartPosition = POS, TargetPosition = POS2, Character = Character, Color = "Bright blue", Individual = true, DoesKill = true})
				if RayData then
					CreateSound(BOLTSOUNDS[MRANDOM(1,#BOLTSOUNDS)], Effects, 1, 1 ,false)
					--MagicBlock(2.5,50,RayData.RayPos,0,BRICKC("Bright blue").Color)
				end
			end
		end
		sound:remove()
		coroutine.resume(coroutine.create(function()
			for i =1, 12 do
				Swait()
				lighteffect.Size = lighteffect.Size - 0.2
			end
			lighteffect:remove()
		end))
		for i = 1, 500 do
			Swait()
			CreateMagicCircle(SIZE/25,false,-0.2,3*2,cloud.CFrame * CF(0,-125-2.9,0),true)
			CreateMagicCircle(SIZE,false,-0.2,3*2,cloud.CFrame,true)
			cloud.Transparency = cloud.Transparency + (1/500)
			SIZE = SIZE - 1
		end
		MagicBlock(5,50,cloud,0,BRICKC("Fog").Color)
		MagicBlock(2.5,50,cloud,0,BRICKC("Fog").Color)
		cloud:remove()
	end))
	Rooted = false
	ATTACK = false
end

function TornadoAlley()
	ATTACK = true
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0.2 * Player_Size, -0.1 * Player_Size + 0.05 * COS(SINE / 12) * Player_Size) * ANGLES(RAD(-12.5), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(5 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(150), RAD(0), RAD(5)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(150), RAD(0), RAD(-5)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -1 * Player_Size, -0 * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-12.5)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.2 * Player_Size, -1.2 * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(12.5)), 0.15 / Animation_Speed)
	end
	local SIZE = 6
	repeat
		Swait()
		if SIZE < 200 then
			SIZE = SIZE*1.004
		end
		CreateMagicCircle(SIZE/3,false,-0.2,3*2,LeftLeg.CFrame * CF(0,-1.1,0),true)
	until KEYHOLD == false
	local Animation_Speed2 = Animation_Speed/8
	for i=0, 1, 0.1 / Animation_Speed2 do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, -0.2 * Player_Size, -0.2 * Player_Size + 0.05 * COS(SINE / 12) * Player_Size) * ANGLES(RAD(25), RAD(0), RAD(0)), 0.15 / Animation_Speed2)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(5 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.15 / Animation_Speed2)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(25)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed2)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(-25)) * LEFTSHOULDERC0, 0.15 / Animation_Speed2)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -1 * Player_Size, -0 * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(25)), 0.15 / Animation_Speed2)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.5 * Player_Size, -1 * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(5), RAD(-25)), 0.15 / Animation_Speed2)
	end
	CreateSound(CASTSOUNDS[MRANDOM(1,#CASTSOUNDS)], LeftLeg, 5, 1 ,false)
	CreateMagicCircle(SIZE,true,-0.2,35,RootPart.CFrame * CF(0,-2.5,0))
	local nado = CreateTornado(0,SIZE,true,-0.7,35,RootPart,SIZE,"Fog")
	local loop = CreateSound(TORNADOSOUND, Effects, SIZE/10, MRANDOM(7, 12) / 10,true)
	coroutine.resume(coroutine.create(function()
		repeat
			Swait()
			AoEDamage(nado.Position,SIZE*4,15,35,100,false,3,2,false)
		until nado.Parent == nil
		for i = 1, 10 do
			Swait()
			loop.Volume = loop.Volume - ((SIZE/10)/10)
		end
		loop:remove()
		Swait(65)
		if SIZE > 300 then
			CreateSound("305685800", Head, 10, 1.1 ,false)
		end
	end))
	local RayHit, RayPos = RayCast(Torso.Position, Vector3.new(0, -1, 0), (Torso.Size.Y * 2.5), {Character})
	local SpawnPosition = RayPos
	local floor = RayHit
	local cframe = RootPart.CFrame
	local LastPosition = RootPart.Position
	coroutine.resume(coroutine.create(function()
		for i = 1, 20 do
			if i == 20 then
				SIZE = SIZE*1.3
			end
			local RayHit, RayPos = RayCast(LastPosition, cframe.lookVector, SIZE, {workspace})
			local End = RayPos
			LastPosition = End
			local locatepart = Instance.new("Part",Effects)
			locatepart.Position = End
			locatepart.CanCollide = false
			locatepart.Anchored = true
			locatepart.Transparency = 1
			CreateSound(CASTSOUNDS[MRANDOM(1,#CASTSOUNDS)], locatepart, 5, 1 ,false)
			CreateMagicCircle(SIZE*0.9,true,-0.2,35,locatepart.CFrame * CF(0,-2.5,0))
			CreateTornado(0,SIZE,true,0.7,35,locatepart,SIZE,"Fog")
			local nado = CreateTornado(0,SIZE,true,-0.7,35,locatepart,SIZE,"Fog")
			local loop = CreateSound(TORNADOSOUND, Effects, SIZE/10, MRANDOM(7, 12) / 10,true)
			coroutine.resume(coroutine.create(function()
				repeat
					Swait()
					AoEDamage(nado.Position,SIZE*4,25,45,100,false,3,2,false)
				until nado.Parent == nil
				for i = 1, 10 do
					Swait()
					loop.Volume = loop.Volume - ((SIZE/10)/10)
				end
				loop:remove()
			end))
			Swait(10)
		end
	end))
	ATTACK = false
end

function Tornado()
	ATTACK = true
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0.2 * Player_Size, -0.1 * Player_Size + 0.05 * COS(SINE / 12) * Player_Size) * ANGLES(RAD(-12.5), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(5 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(150), RAD(0), RAD(5)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(150), RAD(0), RAD(-5)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -1 * Player_Size, -0 * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-12.5)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.2 * Player_Size, -1.2 * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(12.5)), 0.15 / Animation_Speed)
	end
	local SIZE = 6
	repeat
		Swait()
		if SIZE < 250 then
			SIZE = SIZE*1.012
		end
		CreateMagicCircle(SIZE/10,false,-0.2,3*2,LeftLeg.CFrame * CF(0,-1.1,0),true)
	until KEYHOLD == false
	local Animation_Speed2 = Animation_Speed/8
	for i=0, 1, 0.1 / Animation_Speed2 do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, -0.2 * Player_Size, -0.2 * Player_Size + 0.05 * COS(SINE / 12) * Player_Size) * ANGLES(RAD(25), RAD(0), RAD(0)), 0.15 / Animation_Speed2)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(5 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.15 / Animation_Speed2)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(25)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed2)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(-25)) * LEFTSHOULDERC0, 0.15 / Animation_Speed2)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -1 * Player_Size, -0 * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(25)), 0.15 / Animation_Speed2)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.5 * Player_Size, -1 * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(5), RAD(-25)), 0.15 / Animation_Speed2)
	end
	CreateSound(CASTSOUNDS[MRANDOM(1,#CASTSOUNDS)], LeftLeg, 5, 1 ,false)
	CreateMagicCircle(SIZE,true,-0.2,SIZE+45*3,RootPart.CFrame * CF(0,-2.5,0))
	CreateTornado(0,SIZE*0.9,true,0.7,SIZE+45*3,RootPart,SIZE,"Fog")
	local nado = CreateTornado(0,SIZE,true,-0.7,SIZE+45*3,RootPart,SIZE,"Fog")
	local loop = CreateSound(TORNADOSOUND, Effects, SIZE/10, MRANDOM(7, 12) / 10,true)
	coroutine.resume(coroutine.create(function()
		repeat
			Swait()
			AoEDamage(nado.Position,SIZE*2,15,35,100,false,3,2,false)
		until nado.Parent == nil
		for i = 1, 10 do
			Swait()
			loop.Volume = loop.Volume - ((SIZE/10)/10)
		end
		loop:remove()
		Swait(65)
		if SIZE > 100 then
			CreateSound("305685800", Head, 10, 1.1 ,false)
		end
	end))
	ATTACK = false
end

function grasp()
	ATTACK = true
	local GRAB = nil
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -0.2 * Player_Size + 0.05 * COS(SINE / 12) * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(-25)), 0.15 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(5 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(15)), 0.15 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(90), RAD(0), RAD(90)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-40), RAD(0), RAD(-20)) * LEFTSHOULDERC0, 0.2 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.8 * Player_Size - 0.05 * COS(SINE / 12) * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(95), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(-2.5)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.8 * Player_Size - 0.05 * COS(SINE / 12) * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(-15), RAD(-75), RAD(0)) * ANGLES(RAD(-7.5), RAD(0), RAD(-15)), 0.15 / Animation_Speed)
	end
	local paw = RightArm.Touched:Connect(function(hit)
		if GRAB == nil then
			if hit.Parent:FindFirstChild("Humanoid") then
				GRAB = hit.Parent:FindFirstChild("Torso") or hit.Parent:FindFirstChild("UpperTorso")
				MagicBlock(1,20,GRAB,0,BRICKC("Fog").Color)
			end
		end
	end) 
	for i=0, 1, 0.1 / Animation_Speed do
        Swait()
        RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -0.2 * Player_Size + 0.05 * COS(SINE / 12) * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(55)), 0.15 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(5 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(-45)), 0.45 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, -1 * Player_Size) * ANGLES(RAD(60), RAD(0), RAD(-25)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-40), RAD(0), RAD(-20)) * LEFTSHOULDERC0, 0.2 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.8 * Player_Size - 0.05 * COS(SINE / 12) * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(95), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(-2.5)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.8 * Player_Size - 0.05 * COS(SINE / 12) * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(-35), RAD(-75), RAD(0)) * ANGLES(RAD(-7.5), RAD(0), RAD(-15)), 0.15 / Animation_Speed)
	end
	if GRAB ~= nil then
		GRAB.Anchored = true
		for i=0, 2, 0.1 / Animation_Speed do
			Swait()
			turnto(GRAB.Position)
			Rooted = true
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0.35 * Player_Size, 0 * Player_Size + 0.05 * COS(SINE / 12) * Player_Size) * ANGLES(RAD(-5), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(5), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0.5 * Player_Size) * ANGLES(RAD(90), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0.5 * Player_Size) * ANGLES(RAD(90), RAD(0), RAD(0)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -1 * Player_Size, -0 * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(15)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -1 * Player_Size, -0 * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(-5)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		end
		coroutine.resume(coroutine.create(function()
			CreateSound(CASTSOUNDS[MRANDOM(1,#CASTSOUNDS)], GRAB, 5, 1 ,false)
			for i = 1, 150 do
				if GRAB then
					Swait()
					GRAB.CFrame = GRAB.CFrame * CF(0,0.5,0)
					CreateMagicCircle(15,false,-0.2,3*2,GRAB.CFrame * CF(0,-4.1,0),true)
				end
			end
			for i = 1, 50 do
				if GRAB then
					Swait()
					CreateMagicCircle(15,false,-0.2,3*2,GRAB.CFrame * CF(0,-4.1,0),true)
				end
			end
			if GRAB then
				GRAB.Parent:BreakJoints()
				GRAB.Anchored = false
				CreateSound(CASTSOUNDS[MRANDOM(1,#CASTSOUNDS)], GRAB, 5, 1 ,false)
				CreateMagicCircle(15,true,-0.2,45+45*3,GRAB.CFrame * CF(0,-2.5-15,0))
				local nado = CreateTornado(0,15,true,-0.7,45+45*3,GRAB,0,"Fog")
				local loop = CreateSound(TORNADOSOUND, Effects, 35/10, MRANDOM(7, 12) / 10,true)
				coroutine.resume(coroutine.create(function()
					repeat
						Swait()
						AoEDamage(nado.Position,15*2,15,35,100,false,3,2,false)
					until nado.Parent == nil
					for i = 1, 10 do
						Swait()
						loop.Volume = loop.Volume - ((10/10)/10)
					end
					loop:remove()
					Swait(65)
				end))
			end
		end))
		local Animation_Speed2 = Animation_Speed/2
		for i=0, 1, 0.1 / Animation_Speed2 do
			Swait()
			Rooted = true
			turnto(GRAB.Position)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, -0.35 * Player_Size, 0 * Player_Size + 0.05 * COS(SINE / 12) * Player_Size) * ANGLES(RAD(5), RAD(0), RAD(0)), 0.15 / Animation_Speed2)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 0.15 / Animation_Speed2)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, -0.5 * Player_Size) * ANGLES(RAD(90), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed2)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, -0.5 * Player_Size) * ANGLES(RAD(90), RAD(0), RAD(0)) * LEFTSHOULDERC0, 0.15 / Animation_Speed2)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -1 * Player_Size, -0 * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(-15)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed2)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -1 * Player_Size, -0 * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(5)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed2)
		end
	end
	Rooted = false
	ATTACK = false
end

function warp()
	local ori = RootPart.Position
	MagicBlock(3,50,RootPart,0,BRICKC("Bright blue").Color)
	local RayData = Zap({MaxRange = 75 ,StartPosition = RootPart.Position, TargetPosition = Mouse.Hit.p, Character = Character, Color = "Bright blue", Individual = true})
	if RayData then
		local Pos = RayData.RayPos
		RootPart.CFrame = CF(Pos)
		turnto(ori)
		MagicBlock(3,50,RootPart,0,BRICKC("Bright blue").Color)
		CreateMagicCircle(35,true,-0.2,75,CF(Pos),false)
		CreateSound(BOLTSOUNDS[MRANDOM(1,#BOLTSOUNDS)], Effects, 1, 1 ,false)
	end
end

--//=================================\\
--||	  ASSIGN THINGS TO KEYS
--\\=================================//

Humanoid.Changed:connect(function(Jump)
	if Jump == "Jump" and (Disable_Jump == true or DISABLEJUMPING == true) then
		Humanoid.Jump = false
	end
end)

function MouseDown(Mouse)
	if ATTACK == false then
	end
end

function MouseUp(Mouse)
HOLD = false
end

function KeyDown(Key)
	KEYHOLD = true
	if Key == "k" and ATTACK == false then
		warp()
	end
	if Key == "e" and ATTACK == false then
		Tornado()
	end
	if Key == "x" and ATTACK == false then
		ThunderStorm()
	end
	if Key == "j" and ATTACK == false then
		grasp()
	end
	if Key == "g" and ATTACK == false then
		TornadoAlley()
	end
	if Key == "q" and ATTACK == false then
		GaleForce()
	end
	if Key == "t" and ATTACK == false then
		CreateSound("305685800", Head, 10, 1.1 ,false)
	end
end

function KeyUp(Key)
	KEYHOLD = false
end

	Mouse.Button1Down:connect(function(NEWKEY)
		MouseDown(NEWKEY)
	end)
	Mouse.Button1Up:connect(function(NEWKEY)
		MouseUp(NEWKEY)
	end)
	Mouse.KeyDown:connect(function(NEWKEY)
		KeyDown(NEWKEY)
	end)
	Mouse.KeyUp:connect(function(NEWKEY)
		KeyUp(NEWKEY)
	end)

--//=================================\\
--\\=================================//


function unanchor()
	if UNANCHOR == true then
		g = Character:GetChildren()
		for i = 1, #g do
			if g[i].ClassName == "Part" then
				g[i].Anchored = false
			end
		end
	end
end


--//=================================\\
--||	WRAP THE WHOLE SCRIPT UP
--\\=================================//

Humanoid.Changed:connect(function(Jump)
	if Jump == "Jump" and (Disable_Jump == true or DISABLEJUMPING == true) then
		Humanoid.Jump = false
	end
end)

createbodypart("Eye","Fog",Head,VT(0.25, 0, -0.5),VT(3,3,3))
createbodypart("Eye","Fog",Head,VT(-0.25, 0, -0.5),VT(3,3,3))
createbodypart("Eye","Fog",Head,VT(0, 0.2, -0.55),VT(5,5,3))

		ANIMATE.Parent = nil
		local IDLEANIMATION = Humanoid:LoadAnimation(ROBLOXIDLEANIMATION)
		IDLEANIMATION:Play()

while true do
	Swait()
	SINE = SINE + CHANGE
	local TORSOVELOCITY = (RootPart.Velocity * VT(1, 0, 1)).magnitude
	local TORSOVERTICALVELOCITY = RootPart.Velocity.y
	local LV = Torso.CFrame:pointToObjectSpace(Torso.Velocity - Torso.Position)
	local HITFLOOR = Raycast(RootPart.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 4 * Player_Size, Character)
	local WALKSPEEDVALUE = 6 / (Humanoid.WalkSpeed / 16)
		if ANIM == "Walk" and TORSOVELOCITY > 1 then
			RootJoint.C1 = Clerp(RootJoint.C1, ROOTC0 * CF(0, 0, -0.1 * COS(SINE / (WALKSPEEDVALUE / 2)) * Player_Size) * ANGLES(RAD(0), RAD(0) - RootPart.RotVelocity.Y / 75, RAD(0)), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
			Neck.C1 = Clerp(Neck.C1, CF(0 * Player_Size, -0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-90), RAD(0), RAD(180)) * ANGLES(RAD(2.5 * SIN(SINE / (WALKSPEEDVALUE / 2))), RAD(0), RAD(0) - Head.RotVelocity.Y / 30), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
			RightHip.C1 = Clerp(RightHip.C1, CF(0.5 * Player_Size, 0.875 * Player_Size - 0.125 * SIN(SINE / WALKSPEEDVALUE) * Player_Size, -0.125 * COS(SINE / WALKSPEEDVALUE) * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0) - RightLeg.RotVelocity.Y / 75, RAD(0), RAD(60 * COS(SINE / WALKSPEEDVALUE))), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
			LeftHip.C1 = Clerp(LeftHip.C1, CF(-0.5 * Player_Size, 0.875 * Player_Size + 0.125 * SIN(SINE / WALKSPEEDVALUE) * Player_Size, 0.125 * COS(SINE / WALKSPEEDVALUE) * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0) + LeftLeg.RotVelocity.Y / 75, RAD(0), RAD(60 * COS(SINE / WALKSPEEDVALUE))), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
		elseif (ANIM ~= "Walk") or (TORSOVELOCITY < 1) then
			RootJoint.C1 = Clerp(RootJoint.C1, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
			Neck.C1 = Clerp(Neck.C1, CF(0 * Player_Size, -0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-90), RAD(0), RAD(180)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
			RightHip.C1 = Clerp(RightHip.C1, CF(0.5 * Player_Size, 1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
			LeftHip.C1 = Clerp(LeftHip.C1, CF(-0.5 * Player_Size, 1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
		end
		if TORSOVERTICALVELOCITY > 1 and HITFLOOR == nil then
			ANIM = "Jump"
			if ATTACK == false then
				RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(-20), RAD(0), RAD(0)), 0.2 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-40), RAD(0), RAD(20)) * RIGHTSHOULDERC0, 0.2 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-40), RAD(0), RAD(-20)) * LEFTSHOULDERC0, 0.2 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -1 * Player_Size, -0.3 * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(-20)), 0.2 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -1 * Player_Size, -0.3 * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(20)), 0.2 / Animation_Speed)
	        end
		elseif TORSOVERTICALVELOCITY < -1 and HITFLOOR == nil then
			ANIM = "Fall"
			if ATTACK == false then
				RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(20), RAD(0), RAD(0)), 0.2 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(60)) * RIGHTSHOULDERC0, 0.2 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(-60)) * LEFTSHOULDERC0, 0.2 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(20)), 0.2 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(10)), 0.2 / Animation_Speed)
			end
		elseif TORSOVELOCITY < 1 and HITFLOOR ~= nil then
			ANIM = "Idle"
			if ATTACK == false then
				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -0.2 * Player_Size + 0.05 * COS(SINE / 12) * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(15 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(12)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.8 * Player_Size - 0.05 * COS(SINE / 12) * Player_Size, -0.01 * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.8 * Player_Size - 0.05 * COS(SINE / 12) * Player_Size, -0.01 * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			end
		elseif TORSOVELOCITY > 1 and HITFLOOR ~= nil then
			ANIM = "Walk"
			WALK = WALK + 1 / Animation_Speed
			if WALK >= 15 - (5 * (Humanoid.WalkSpeed / 16 / Player_Size)) then
				WALK = 0
				if WALKINGANIM == true then
					WALKINGANIM = false
				elseif WALKINGANIM == false then
					WALKINGANIM = true
				end
			end
			--RightHip.C1 = Clerp(RightHip.C1, CF(0.5 * Player_Size, 0.875 * Player_Size - 0.125 * SIN(SINE / WALKSPEEDVALUE) * Player_Size, -0.125 * COS(SINE / WALKSPEEDVALUE) * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0) - RightLeg.RotVelocity.Y / 75, RAD(0), RAD(60 * COS(SINE / WALKSPEEDVALUE))), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
			--LeftHip.C1 = Clerp(LeftHip.C1, CF(-0.5 * Player_Size, 0.875 * Player_Size + 0.125 * SIN(SINE / WALKSPEEDVALUE) * Player_Size, 0.125 * COS(SINE / WALKSPEEDVALUE) * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0) + LeftLeg.RotVelocity.Y / 75, RAD(0), RAD(60 * COS(SINE / WALKSPEEDVALUE))), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
			if ATTACK == false then
				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -0.2 * Player_Size + 0.05 * COS(SINE / 12) * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(15 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(60 * COS(SINE / WALKSPEEDVALUE)), RAD(0), RAD(12)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-60 * COS(SINE / WALKSPEEDVALUE)), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -1 * Player_Size, -0 * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -1 * Player_Size, -0 * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			end
		end
if #Effects2>0 then
for e=1,#Effects2 do
if Effects2[e]~=nil then
local Thing=Effects2[e]
if Thing~=nil then
local Part=Thing[1]
local Mode=Thing[2]
local Delay=Thing[3]
local IncX=Thing[4]
local IncY=Thing[5]
local IncZ=Thing[6]
local Part2=Thing[8]
if Thing[1].Transparency<=1 then
if Thing[2]=="Block1" then
Thing[1].CFrame=Thing[1].CFrame
Mesh=Thing[1].Mesh
Mesh.Scale=Mesh.Scale+VT(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Cylinder" then
Mesh=Thing[1].Mesh
Mesh.Scale=Mesh.Scale+VT(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Blood" then
Mesh=Thing[7]
Thing[1].CFrame=Thing[1].CFrame*CF(0,.5,0)
Mesh.Scale=Mesh.Scale+VT(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Elec" then
Mesh=Thing[1].Mesh
Mesh.Scale=Mesh.Scale+VT(Thing[7],Thing[8],Thing[9])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Disappear" then
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
end
else
Part.Parent=nil
table.remove(Effects2,e)
end
end
end
end
end
unanchor()
Humanoid.MaxHealth = "inf"
Humanoid.Health = "inf"
if Rooted == false then
	Disable_Jump = false
	Humanoid.WalkSpeed = Speed
elseif Rooted == true then
	Disable_Jump = true
	Humanoid.WalkSpeed = 0
end
Humanoid.DisplayDistanceType = "None"
q = Character:GetChildren()
	for u = 1, #q do
		if q[u].ClassName == "Accessory" or q[u].ClassName == "Hat" then
			if q[u].Handle:FindFirstChild("FaceFrontAttachment") then
				q[u]:remove()
			end
		end
	end
if Head:FindFirstChild("face") then
	Head.face:remove()
end
end

--//=================================\\
--\\=================================//





--//====================================================\\--
--||			  		 END OF SCRIPT
--\\====================================================//--
