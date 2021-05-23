local Workspace = game:GetService('Workspace')
local RunService = game:GetService('RunService')

local SpawnPoint = Workspace:findFirstChild('SpawnLocation')

RunService.Stepped:connect(function()
    SpawnPoint.CFrame = SpawnPoint.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(1), math.rad(0))
end)