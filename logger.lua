local Modules = {
    Colors = {
        ["CYAN"] = "85, 255, 255",  
        ["BLUE"] = "0, 150, 255",   
        ["RED"] = "255, 85, 85",    
        ["YELLOW"] = "255, 255, 85",
        ["GREEN"] = "85, 255, 85",  
        ["MAGENTA"] = "255, 85, 255",  
        ["WHITE"] = "255, 255, 255",
    },
    Services = {
        RunService = game:GetService("RunService"),
        CoreGui = game:GetService("CoreGui")
    }
}

Modules.ChangeColor = function() 
    local DevConsoleMaster
    repeat task.wait()
        DevConsoleMaster = Modules.Services.CoreGui:FindFirstChild("DevConsoleMaster")
    until DevConsoleMaster

    local Loop;
    Loop = Modules.Services.RunService.Heartbeat:Connect(function()
        local success, err = pcall(function()
            for _, label in pairs(DevConsoleMaster:GetDescendants()) do 
                if label:IsA("TextLabel") then 
                    label.RichText = true 
                end 
            end
        end)

        if not success then 
            warn(`[W-ERROR] An error occurred: {err}`)
            Loop:Disconnect()
            task.wait(2)
            Modules.ChangeColor()
        end 
    end)
end

Modules.Print = function(message, messageType, customColor)
    messageType = messageType or "INFO"
    local color = customColor or Modules.Colors["WHITE"]
    local prefix = ""
    
    if messageType == "DEBUG" then
        color = Modules.Colors["BLUE"]
        prefix = "[W-DEBUG]"
    elseif messageType == "INFO" then
        color = Modules.Colors["CYAN"]
        prefix = "[W-INFO]"
    elseif messageType == "ERROR" then
        color = Modules.Colors["RED"]
        prefix = "[W-ERROR]"
    elseif messageType == "SUCCESS" then
        color = Modules.Colors["GREEN"]
        prefix = "[W-SUCCESS]"
    elseif messageType == "WARNING" then
        color = Modules.Colors["YELLOW"]
        prefix = "[W-WARNING]"
    else
        prefix = `[{messageType}]`
    end
    
    local formattedMessage = string.format("<font color='rgb(%s)' size='15'>%s %s</font>", color, prefix, tostring(message))
    print(formattedMessage)
end

Modules.Debug = function(message)
    Modules.Print(message, "DEBUG")
end

Modules.Info = function(message)
    Modules.Print(message, "INFO")
end

Modules.Error = function(message)
    Modules.Print(message, "ERROR")
end

Modules.Success = function(message)
    Modules.Print(message, "SUCCESS")
end

Modules.Warning = function(message)
    Modules.Print(message, "WARNING")
end

Modules.AdvancedLoadingBar = function(watermark, stages)
    --[[
        stages format: {
            {message = "Loading assets", steps = 20, symbol = "=", color = "LIGHTCYAN_EX"},
            {message = "Connecting to server", steps = 15, symbol = "#", color = "LIGHTBLUE_EX"},
            {message = "Finalizing", steps = 10, symbol = "*", color = "LIGHTGREEN_EX"}
        }
    ]]
    
    local Text = watermark .. tostring(math.random(500, 20000))
    print(Text)

    local loadingLabel = nil

    repeat task.wait()
        for _, label in pairs(Modules.Services.CoreGui:FindFirstChild("DevConsoleMaster"):GetDescendants()) do 
            if label:IsA("TextLabel") and string.find(label.Text:lower(), Text:lower()) then 
                loadingLabel = label 
                break
            end 
        end 
    until loadingLabel

    local start = os.time()
    local totalSteps = 0
    
    for _, stage in ipairs(stages) do
        totalSteps = totalSteps + stage.steps
    end

    local currentStep = 0

    for _, stage in ipairs(stages) do
        local progress = ""
        local stageColor = Modules.Colors[stage.color] or Modules.Colors["CYAN"]
        
        for i = 1, stage.steps do
            currentStep = currentStep + 1
            progress = progress .. (stage.symbol or "#")
            local percentage = math.floor((currentStep / totalSteps) * 100)
            
            loadingLabel.Text = string.format("<font color='rgb(%s)' size='15'>[%s] %s [%d%%] %s</font>", 
                stageColor, watermark, stage.message, percentage, progress)
            task.wait(stage.delay or 0.05)
        end
    end

    loadingLabel.Text = string.format("<font color='rgb(%s)' size='15'>[%s] Successfully loaded in %ds</font>", 
        Modules.Colors["GREEN"], watermark, os.time() - start)
end

-- Initialize
task.spawn(Modules.ChangeColor)

return Modules
