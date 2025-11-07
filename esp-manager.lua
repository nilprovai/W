local CollectionService = game:GetService("CollectionService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local WorldOrigin = workspace:FindFirstChild("_WorldOrigin")
local Locations = WorldOrigin and WorldOrigin:FindFirstChild("Locations")

local eventIslandNames = {
    "Mirage Island",
    "Prehistoric Island",
    "Kitsune Island"
}

local function createIslandESP()
    if not Locations then return end
    
    for _, location in pairs(Locations:GetChildren()) do
        pcall(function()
            if getgenv().Settings["ESP Island"] then
                local isEventIsland = false
                for _, eventName in ipairs(eventIslandNames) do
                    if location.Name == eventName then
                        isEventIsland = true
                        break
                    end
                end
                
                if isEventIsland then
                    if not location:FindFirstChild("NameEsp") then
                        local billboardGui = Instance.new("BillboardGui", location)
                        billboardGui.Name = "NameEsp"
                        billboardGui.ExtentsOffset = Vector3.new(0, 1, 0)
                        billboardGui.Size = UDim2.new(1, 200, 1, 30)
                        billboardGui.Adornee = location
                        billboardGui.AlwaysOnTop = true
                        
                        local textLabel = Instance.new("TextLabel", billboardGui)
                        textLabel.Font = Enum.Font.Code
                        textLabel.TextSize = 14
                        textLabel.TextWrapped = true
                        textLabel.Size = UDim2.new(1, 0, 1, 0)
                        textLabel.TextYAlignment = Enum.TextYAlignment.Top
                        textLabel.BackgroundTransparency = 1
                        textLabel.TextStrokeTransparency = 0.5
                        textLabel.TextColor3 = Color3.fromRGB(80, 245, 245)
                    else
                        local playerHead = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Head")
                        if playerHead then
                            local distance = (playerHead.Position - location.Position).Magnitude
                            local distanceInMeters = math.round(distance / 3)
                            location.NameEsp.TextLabel.Text = string.format("%s\n%d M", location.Name, distanceInMeters)
                        end
                    end
                else
                    if location.Name ~= "Sea" then
                        if not location:FindFirstChild("NameEsp") then
                            local billboardGui = Instance.new("BillboardGui", location)
                            billboardGui.Name = "NameEsp"
                            billboardGui.ExtentsOffset = Vector3.new(0, 1, 0)
                            billboardGui.Size = UDim2.new(1, 200, 1, 30)
                            billboardGui.Adornee = location
                            billboardGui.AlwaysOnTop = true
                            
                            local textLabel = Instance.new("TextLabel", billboardGui)
                            textLabel.Font = Enum.Font.Code
                            textLabel.TextSize = 14
                            textLabel.TextWrapped = true
                            textLabel.Size = UDim2.new(1, 0, 1, 0)
                            textLabel.TextYAlignment = Enum.TextYAlignment.Top
                            textLabel.BackgroundTransparency = 1
                            textLabel.TextStrokeTransparency = 0.5
                            textLabel.TextColor3 = Color3.fromRGB(98, 252, 252)
                        end
                        local playerHead = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Head")
                        if playerHead and location:FindFirstChild("NameEsp") then
                            local distance = (playerHead.Position - location.Position).Magnitude
                            local distanceInMeters = math.round(distance / 3)
                            location.NameEsp.TextLabel.Text = string.format("%s\n%d M", location.Name, distanceInMeters)
                        end
                    end
                end
            elseif location:FindFirstChild("NameEsp") then
                location:FindFirstChild("NameEsp"):Destroy()
            end
        end)
    end
end

local function createPlayerESP()
    for _, player in pairs(Players:GetChildren()) do
        pcall(function()
            if player.Character and player ~= LocalPlayer then
                if getgenv().Settings["ESP Players"] then
                    local playerHead = player.Character:FindFirstChild("Head")
                    if playerHead then
                        local espName = "PlayerNameEsp"
                        
                        if not playerHead:FindFirstChild(espName) then
                            local billboardGui = Instance.new("BillboardGui", playerHead)
                            billboardGui.Name = espName
                            billboardGui.ExtentsOffset = Vector3.new(0, 1, 0)
                            billboardGui.Size = UDim2.new(1, 200, 1, 30)
                            billboardGui.Adornee = playerHead
                            billboardGui.AlwaysOnTop = true
                            
                            local textLabel = Instance.new("TextLabel", billboardGui)
                            textLabel.Font = Enum.Font.Code
                            textLabel.TextSize = 14
                            textLabel.TextWrapped = true
                            textLabel.Size = UDim2.new(1, 0, 1, 0)
                            textLabel.TextYAlignment = Enum.TextYAlignment.Top
                            textLabel.BackgroundTransparency = 1
                            textLabel.TextStrokeTransparency = 0.5
                            
                            if player.Team == LocalPlayer.Team then
                                textLabel.TextColor3 = Color3.fromRGB(0, 0, 254)
                            else
                                textLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
                            end
                        end
                        local localHead = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Head")
                        if localHead and player.Character then
                            local espLabel = playerHead:FindFirstChild(espName)
                            if espLabel and espLabel:FindFirstChild("TextLabel") then
                                local distance = (localHead.Position - playerHead.Position).Magnitude
                                local distanceInMeters = math.round(distance / 3)
                                local humanoid = player.Character:FindFirstChild("Humanoid")
                                local level = player:FindFirstChild("Data") and player.Data:FindFirstChild("Level") and player.Data.Level.Value or "?"
                                local healthPercent = humanoid and math.round(humanoid.Health * 100 / humanoid.MaxHealth) or 0
                                
                                espLabel.TextLabel.Text = string.format("%s | %s | %d M\nHealth: %d%%", 
                                    level, player.Name, distanceInMeters, healthPercent)
                            end
                        end
                    end
                else
                    local playerHead = player.Character and player.Character:FindFirstChild("Head")
                    if playerHead then
                        local espElement = playerHead:FindFirstChild("PlayerNameEsp")
                        if espElement then
                            espElement:Destroy()
                        end
                    end
                end
            end
        end)
    end
end

local function createGearESP()
    local mysticIsland = workspace.Map:FindFirstChild("MysticIsland")
    if not mysticIsland then return end

    for _, part in pairs(mysticIsland:GetDescendants()) do
        pcall(function()
            if getgenv().Settings["ESP Gear"] then
                if part:IsA("BasePart") and part.Name == "Part" and part.Material == Enum.Material.Neon then
                    if not part:FindFirstChild("NameEsp") then
                        local billboardGui = Instance.new("BillboardGui", part)
                        billboardGui.Name = "NameEsp"
                        billboardGui.ExtentsOffset = Vector3.new(0, 1, 0)
                        billboardGui.Size = UDim2.new(1, 200, 1, 30)
                        billboardGui.Adornee = part
                        billboardGui.AlwaysOnTop = true
                        
                        local textLabel = Instance.new("TextLabel", billboardGui)
                        textLabel.Font = Enum.Font.Code
                        textLabel.TextSize = 14
                        textLabel.TextWrapped = true
                        textLabel.Size = UDim2.new(1, 0, 1, 0)
                        textLabel.TextYAlignment = Enum.TextYAlignment.Top
                        textLabel.BackgroundTransparency = 1
                        textLabel.TextStrokeTransparency = 0.5
                        textLabel.TextColor3 = Color3.fromRGB(80, 245, 245)
                    end
                    local playerHead = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Head")
                    if playerHead and part:FindFirstChild("NameEsp") then
                        local distance = (playerHead.Position - part.Position).Magnitude
                        local distanceInMeters = math.round(distance / 3)
                        part.NameEsp.TextLabel.Text = string.format("Gear\n%d M", distanceInMeters)
                    end
                end
            else
                if part:IsA("BasePart") then
                    local espElement = part:FindFirstChild("NameEsp")
                    if espElement then
                        espElement:Destroy()
                    end
                end
            end
        end)
    end
end

local function createChestESP()
    if getgenv().Settings["ESP Chests"] then
        local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
        local playerPosition = character:GetPivot().Position
        local taggedChests = CollectionService:GetTagged("_ChestTagged")
        
        for _, chest in ipairs(taggedChests) do
            if not chest:GetAttribute("IsDisabled") then
                local chestPosition
                local success, result = pcall(function()
                    return chest:GetPivot().Position
                end)
                
                if success then
                    chestPosition = result
                elseif chest:IsA("BasePart") then
                    chestPosition = chest.Position
                else
                    continue
                end
                
                local distanceFromPlayer = (chestPosition - playerPosition).Magnitude
                local existingESP = chest:FindFirstChild("ChestEspAttachment")
                if not existingESP then
                    local attachment = Instance.new("Attachment")
                    attachment.Name = "ChestEspAttachment"
                    attachment.Parent = chest
                    attachment.Position = Vector3.new(0, 3, 0)
                    
                    local billboardGui = Instance.new("BillboardGui")
                    billboardGui.Name = "NameEsp"
                    billboardGui.Size = UDim2.new(0, 200, 0, 30)
                    billboardGui.Adornee = attachment
                    billboardGui.ExtentsOffset = Vector3.new(0, 1, 0)
                    billboardGui.AlwaysOnTop = true
                    billboardGui.Parent = attachment
                    
                    local textLabel = Instance.new("TextLabel")
                    textLabel.Font = Enum.Font.Code
                    textLabel.TextSize = 14
                    textLabel.TextWrapped = true
                    textLabel.Size = UDim2.new(1, 0, 1, 0)
                    textLabel.TextYAlignment = Enum.TextYAlignment.Top
                    textLabel.BackgroundTransparency = 1
                    textLabel.TextStrokeTransparency = 0.5
                    textLabel.TextColor3 = Color3.fromRGB(80, 245, 245)
                    textLabel.Parent = billboardGui
                end
                local espBillboard = existingESP and existingESP:FindFirstChild("NameEsp")
                if espBillboard and espBillboard:FindFirstChild("TextLabel") then
                    local distanceInMeters = math.floor(distanceFromPlayer / 3)
                    local chestDisplayName = chest.Name:gsub("Label", "")
                    espBillboard.TextLabel.Text = string.format("[%s] %d M", chestDisplayName, distanceInMeters)
                end
            end
        end
    else
        for _, chest in ipairs(CollectionService:GetTagged("_ChestTagged")) do
            local espAttachment = chest:FindFirstChild("ChestEspAttachment")
            if espAttachment then
                espAttachment:Destroy()
            end
        end
    end
end

local function createDevilFruitESP()    
    for _, object in pairs(workspace:GetChildren()) do
        pcall(function()
            if getgenv().Settings["ESP Fruit"] then
                if string.find(object.Name, "Fruit") then
                    local handle = object:FindFirstChild("Handle")
                    if handle then
                        local espName = "FruitNameEsp"
                        
                        if not handle:FindFirstChild(espName) then
                            local billboardGui = Instance.new("BillboardGui", handle)
                            billboardGui.Name = espName
                            billboardGui.ExtentsOffset = Vector3.new(0, 1, 0)
                            billboardGui.Size = UDim2.new(1, 200, 1, 30)
                            billboardGui.Adornee = handle
                            billboardGui.AlwaysOnTop = true
                            
                            local textLabel = Instance.new("TextLabel", billboardGui)
                            textLabel.Font = Enum.Font.Code
                            textLabel.TextSize = 14
                            textLabel.TextWrapped = true
                            textLabel.Size = UDim2.new(1, 0, 1, 0)
                            textLabel.TextYAlignment = Enum.TextYAlignment.Top
                            textLabel.BackgroundTransparency = 1
                            textLabel.TextStrokeTransparency = 0.5
                            textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                        end
                        local playerHead = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Head")
                        if playerHead and handle:FindFirstChild(espName) then
                            local distance = (playerHead.Position - handle.Position).Magnitude
                            local distanceInMeters = math.round(distance / 3)
                            handle[espName].TextLabel.Text = string.format("[%s]\n%d M", object.Name, distanceInMeters)
                        end
                    end
                end
            else
                local handle = object:FindFirstChild("Handle")
                if handle then
                    local espElement = handle:FindFirstChild("FruitNameEsp")
                    if espElement then
                        espElement:Destroy()
                    end
                end
            end
        end)
    end
end

local function createLegendarySwordESP()
    if not getgenv().Settings["ESP Legendary Sword"] then
        if workspace:FindFirstChild("LegendarySwordMarker") then
            workspace:FindFirstChild("LegendarySwordMarker"):Destroy()
        end
        return
    end

    for _, npc in pairs(ReplicatedStorage.NPCs:GetChildren()) do
        if npc.Name == "Legendary Sword Dealer " then
            local markerPart = workspace:FindFirstChild("LegendarySwordMarker")
            if not markerPart then
                markerPart = Instance.new("Part")
                markerPart.Name = "LegendarySwordMarker"
                markerPart.Transparency = 1
                markerPart.Size = Vector3.new(1, 1, 1)
                markerPart.Anchored = true
                markerPart.CanCollide = false
                markerPart.Parent = workspace
                markerPart.CFrame = npc.HumanoidRootPart.CFrame
            end
            if markerPart and not markerPart:FindFirstChild("NameEsp") then
                local billboardGui = Instance.new("BillboardGui", markerPart)
                billboardGui.Name = "NameEsp"
                billboardGui.ExtentsOffset = Vector3.new(0, 1, 0)
                billboardGui.Size = UDim2.new(1, 200, 1, 30)
                billboardGui.Adornee = markerPart
                billboardGui.AlwaysOnTop = true
                
                local textLabel = Instance.new("TextLabel", billboardGui)
                textLabel.Font = Enum.Font.Code
                textLabel.TextSize = 14
                textLabel.TextWrapped = true
                textLabel.Size = UDim2.new(1, 0, 1, 0)
                textLabel.TextYAlignment = Enum.TextYAlignment.Top
                textLabel.BackgroundTransparency = 1
                textLabel.TextStrokeTransparency = 0.5
                textLabel.TextColor3 = Color3.fromRGB(80, 245, 245)
            end
            local playerHead = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Head")
            if playerHead and npc.HumanoidRootPart and markerPart and markerPart:FindFirstChild("NameEsp") then
                local distance = (playerHead.Position - npc.HumanoidRootPart.Position).Magnitude
                local distanceInMeters = math.round(distance / 3)
                markerPart.NameEsp.TextLabel.Text = string.format("%s\n%d M", npc.Name, distanceInMeters)
            end
        end
    end
end

task.spawn(function()
	while task.wait(.5) do
		createPlayerESP()
		createGearESP()
		createChestESP()
		createDevilFruitESP()
        createIslandESP()
		createLegendarySwordESP()
	end
end)
