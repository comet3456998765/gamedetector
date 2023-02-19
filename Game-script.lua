-- Instances:
local Intro = Instance.new("ScreenGui")
local base = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local texto = Instance.new("TextLabel")
local UICorner_2 = Instance.new("UICorner")

-- Properties:
Intro.Name = "Intro"
Intro.Parent = game.CoreGui
Intro.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

base.Name = "base"
base.Parent = Intro
base.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
base.Position = UDim2.new(0.5, -106, 1, -50) -- Start position: centered above the screen
base.Size = UDim2.new(0, 212, 0, 40)

UICorner.Parent = base

texto.Name = "texto"
texto.Parent = base
texto.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
texto.Position = UDim2.new(0.007, 0, 0, 0)
texto.Size = UDim2.new(0, 210, 0, 40)
texto.Font = Enum.Font.SourceSans
texto.Text = "Created by Chinese Dev#4124"
texto.TextColor3 = Color3.fromRGB(255, 255, 255)
texto.TextScaled = true
texto.TextSize = 14
texto.TextWrapped = true

UICorner_2.Parent = texto

-- TweenPosition animation:
local endPosition = UDim2.new(0.5, -106, 0.5, -20)
local startSize = UDim2.new(0, 212, 0, 0)
local endSize = UDim2.new(0, 212, 0, 40)
local tween1 = game:GetService("TweenService"):Create(base, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
    Size = startSize,
    Position = endPosition
})
local tween2 = game:GetService("TweenService"):Create(base, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
    Size = endSize,
})
tween1:Play()
tween1.Completed:Connect(function()
    tween2:Play()
end)

-- Change the label text when the animation is completed:
tween2.Completed:Connect(function()
    wait(3)
    texto.Text = "Animation completed!"
    wait(3)
    texto.Text = "Animation in dev!"
    wait(3)
    texto.Text = "Script Loaded!!!"
    wait(3)
    tween2:Cancel()
    local tween3 = game:GetService("TweenService"):Create(base, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
        Position = UDim2.new(0.5, -106, 1, -50)
    })
    tween3:Play()
    tween3.Completed:Connect(function()
        base.Visible = false
    end)
end)


wait(4)
local games = {
    [{606849621}] = "https://raw.githubusercontent.com/comet3456998765/jailbreakgui/main/Jailbreakguiscript.lua",
    [{413424176}] = "https://raw.githubusercontent.com/comet3456998765/Clone-Tycoon-2/main/YesNetGui",
    [{155615604}] = "https://raw.githubusercontent.com/comet3456998765/All-games-new-/main/ForGamedetector",
}

for ids, url in next, games do
    if table.find(ids, game.PlaceId) then
        loadstring(game:HttpGet(url))()
        break
    end
end

loadstring(game:HttpGet("https://raw.githubusercontent.com/comet3456998765/Supportsystem/main/file.lua"))()
