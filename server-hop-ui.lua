local ServerHopLibrary = {}

local getgenv = getgenv or function()
    return shared
end

local function New(Name, Properties, Children)
    local Object = Instance.new(Name)

    for Name, Value in next, Properties or {} do
        if Name ~= "ThemeTag" and Name ~= "ImageThemeTag" then
            Object[Name] = Value
        end
    end

    for _, Child in next, Children or {} do
        Child.Parent = Object
    end

    return Object
end

local function Tween(obj, info, properties, callback)
    local anim = game:GetService("TweenService"):Create(obj, TweenInfo.new(unpack(info)), properties)
    anim:Play()

    if callback then
        anim.Completed:Connect(callback)
    end

    return anim
end

local RunService = game:GetService("RunService")
local LocalPlayer = game:GetService("Players").LocalPlayer

local GUI = New("ScreenGui", {
    Parent = LocalPlayer.PlayerGui or game:GetService("CoreGui"),
    IgnoreGuiInset = true,
    ResetOnSpawn = false
})

function ServerHopLibrary:CreateScreen(Config)
    assert(Config.Duration, "Duration is required!")
    assert(Config.Reason, "Reason is required!")
    
    local Screen = {}
    local StartTime = tick()
    local EndTime = StartTime + Config.Duration

    Screen.JobId = New("TextLabel", {
        BackgroundTransparency = 1,
        AnchorPoint = Vector2.new(0.5, 0),
        Position = UDim2.new(0.5, 0, 0, 2),
        Size = UDim2.new(1, 0, 0, 20),
        Font = Enum.Font.GothamBold,
        TextColor3 = Color3.fromRGB(255, 255, 255),
        TextSize = 14,
        TextTransparency = 0.5,
        Text = string.format("Server ID: %s", game.JobId or "00000000-0000-0000-0000-000000000000")
    })

    Screen.HopText = New("TextLabel", {
        AnchorPoint = Vector2.new(0.5, 0.5),
        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        BackgroundTransparency = 1,
        BorderColor3 = Color3.fromRGB(0, 0, 0),
        BorderSizePixel = 0,
        Position = UDim2.new(0.5, 0, 0.56, 0),
        Size = UDim2.new(1, 0, 0, 35),
        Font = Enum.Font.GothamBold,
        Text = string.format("Switching servers in %ds...", Config.Duration),
        TextColor3 = Color3.fromRGB(255, 255, 255),
        TextSize = 22,
        TextWrapped = true,
        TextYAlignment = Enum.TextYAlignment.Top,
    })

    Screen.BottomText = New("TextLabel", {
        AnchorPoint = Vector2.new(0.5, 0.5),
        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        BackgroundTransparency = 1,
        BorderColor3 = Color3.fromRGB(0, 0, 0),
        BorderSizePixel = 0,
        Position = UDim2.new(0.5, 0, 0.6, 0),
        Size = UDim2.new(1, 0, 0, 20),
        Font = Enum.Font.Gotham,
        Text = "Double-click anywhere to cancel",
        TextColor3 = Color3.fromRGB(255, 255, 255),
        TextSize = 14,
        TextTransparency = 0.4,
        TextWrapped = true,
    })

    Screen.HopReason = New("TextLabel", {
        AnchorPoint = Vector2.new(0.5, 0.5),
        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        BackgroundTransparency = 1,
        BorderColor3 = Color3.fromRGB(0, 0, 0),
        BorderSizePixel = 0,
        Position = UDim2.new(0.5, 0, 0.6, 0),
        Size = UDim2.new(1, 0, 0, 20),
        Font = Enum.Font.Gotham,
        Text = "Reason: " .. Config.Reason,
        TextColor3 = Color3.fromRGB(255, 255, 255),
        TextSize = 16,
        TextWrapped = true,
    })

    Screen.TextHolder = New("Frame", {
        AnchorPoint = Vector2.new(0.5, 0.5),
        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        BackgroundTransparency = 1,
        BorderColor3 = Color3.fromRGB(0, 0, 0),
        BorderSizePixel = 0,
        Position = UDim2.new(0.5, 0, 0.5, 0),
        AutomaticSize = Enum.AutomaticSize.XY
    }, {
        New("UIListLayout", {
            SortOrder = Enum.SortOrder.LayoutOrder,
        }),

        New("TextLabel", {
            AnchorPoint = Vector2.new(0.5, 0.5),
            BackgroundColor3 = Color3.fromRGB(255, 255, 255),
            BackgroundTransparency = 1,
            BorderColor3 = Color3.fromRGB(0, 0, 0),
            BorderSizePixel = 0,
            Position = UDim2.new(0.5, 0, 0.5, 0),
            Size = UDim2.new(1, 0, 0, 76),
            Font = Enum.Font.GothamBold,
            Text = "W-azure",
            TextColor3 = Color3.fromRGB(173, 188, 230),
            TextSize = 80,
        }),

        Screen.HopText,
        Screen.HopReason,
        Screen.BottomText
    })

    Screen.InnerProgressBar = New("Frame", {
        BackgroundColor3 = Color3.fromRGB(173, 188, 230),
        BorderColor3 = Color3.fromRGB(0, 0, 0),
        BorderSizePixel = 0,
        Size = UDim2.new(1, 0, 1, 0),
    }, {
        New("UICorner", {
            CornerRadius = UDim.new(0, 999),
        }),
    })

    Screen.ProgressBar = New("Frame", {
        AnchorPoint = Vector2.new(0.5, 0.5),
        BackgroundColor3 = Color3.fromRGB(17, 17, 27),
        BorderColor3 = Color3.fromRGB(0, 0, 0),
        BorderSizePixel = 0,
        Position = UDim2.fromScale(0.5, 0.94),
        Size = UDim2.new(0.35, 0, 0, 8),
    }, {
        New("UICorner", {
            CornerRadius = UDim.new(0, 999),
        }),

        Screen.InnerProgressBar
    })

    Screen.Frame = New("CanvasGroup", {
        Parent = GUI,
        Size = UDim2.fromScale(1, 1),
        BackgroundColor3 = Color3.fromRGB(0, 0, 0),
        BackgroundTransparency = 0.3,
        GroupTransparency = 1
    }, {
        Screen.JobId,
        Screen.TextHolder,
        Screen.ProgressBar
    })

    local Aborted = false
    local LastClickTime = 0
    local DoubleClickTime = 0.5

    Screen.Frame.InputBegan:Connect(function(Input)
        if Input.UserInputType == Enum.UserInputType.MouseButton1 or 
           Input.UserInputType == Enum.UserInputType.Touch then
            local CurrentClickTime = tick()

            if (CurrentClickTime - LastClickTime) < DoubleClickTime then
                Aborted = true
            end

            LastClickTime = CurrentClickTime
        end
    end)

    local Finish = false
    local Status = nil

    task.spawn(function()
        local UpdateRate = 0
        
        while not Finish do
            task.wait(UpdateRate)
            
            if Aborted then
                local CloseTimeout = 15
                local CloseStartTime = tick()
                local CloseEndTime = CloseStartTime + CloseTimeout
                
                Screen.HopReason.Text = "Reason: Aborted by user."
                Screen.HopText.Text = "Server hop cancelled"
                Screen.BottomText.Text = string.format("UI will close in %d seconds", CloseTimeout)
                
                Screen.InnerProgressBar.Size = UDim2.new(1, 0, 1, 0)
                
                task.wait(1)
                
                while not Finish do
                    task.wait(UpdateRate)
                    
                    local CurrentTime = tick()
                    local RemainingTime = math.max(0, CloseEndTime - CurrentTime)
                    local Progress = math.clamp(RemainingTime / CloseTimeout, 0, 1)
                    local TimeLeft = math.ceil(RemainingTime)
                    
                    Screen.HopText.Text = string.format("UI will close in %ds", TimeLeft)
                    Screen.InnerProgressBar.Size = UDim2.new(Progress, 0, 1, 0)
                    
                    if RemainingTime <= 0 then
                        Screen.TextHolder.Visible = false
                        Screen.JobId.Visible = false
                        Screen.ProgressBar.Visible = false
                        Status = false
                        Finish = true
                        
                        Tween(Screen.Frame, {0.35, Enum.EasingStyle.Exponential, Enum.EasingDirection.InOut}, {
                            GroupTransparency = 1
                        }, function()
                            Screen.Frame:Destroy()
                        end)
                        
                        break
                    end
                end
                
                break
            end
            
            local CurrentTime = tick()
            local RemainingTime = math.max(0, EndTime - CurrentTime)
            local Progress = math.clamp(RemainingTime / Config.Duration, 0, 1)
            local TimeLeft = math.ceil(RemainingTime)
            
            Screen.HopText.Text = string.format("Switching servers in %ds...", TimeLeft)
            Screen.InnerProgressBar.Size = UDim2.new(Progress, 0, 1, 0)
            
            if RemainingTime <= 0 then
                Screen.HopText.Text = "Switching servers..."
                Status = true
                Finish = true
                break
            end
        end
    end)

    Tween(Screen.Frame, {0.35, Enum.EasingStyle.Exponential, Enum.EasingDirection.InOut}, {
        GroupTransparency = 0
    })

    repeat task.wait() until Finish
    
    return Status
end

ServerHopLibrary:CreateScreen({Duration=5, Reason="Random"})
