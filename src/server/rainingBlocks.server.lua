local Workspace = game:GetService('Workspace')
local RunService = game:GetService('RunService')
local Debris = game:GetService('Debris')

local Settings = {
    MaxX = 400,
    MaxY = 400,
    MaxZ = 400,

    MaxPosX = 500,
    MaxPosZ = 500,
    PosY = 1000,
}

while wait(1) do
    for i = 1, 10 do
        local Part = Instance.new('Part', Workspace)
        Part.Size = Vector3.new(math.random(-Settings.MaxX / 2, Settings.MaxX / 2), math.random(-Settings.MaxY / 2, Settings.MaxY / 2), math.random(-Settings.MaxZ / 2, Settings.MaxZ / 2))
        Part.CFrame = CFrame.new(math.random(-Settings.MaxPosX / 2, Settings.MaxPosX / 2), Settings.PosY, math.random(-Settings.MaxPosZ / 2, Settings.MaxPosZ / 2))
        Part.BrickColor = BrickColor.Random()
        Debris:AddItem(Part, 20)
    end
end