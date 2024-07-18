-- Создаем новый ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "MovableGui"
screenGui.ResetOnSpawn = false
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Создаем Frame (основной контейнер)
local frame = Instance.new("Frame")
frame.Name = "MainFrame"
frame.Size = UDim2.new(0, 300, 0, 200)
frame.Position = UDim2.new(0.5, -150, 0.5, -100)
frame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
frame.BorderSizePixel = 0
frame.ClipsDescendants = true
frame.Parent = screenGui

-- Закругляем края Frame
local roundedCorner = Instance.new("UICorner")
roundedCorner.CornerRadius = UDim.new(0, 15)
roundedCorner.Parent = frame

-- Создаем надпись "Created by was_record"
local createdByText = Instance.new("TextLabel")
createdByText.Name = "CreatedByText"
createdByText.Size = UDim2.new(0.7, 0, 0, 20)
createdByText.Position = UDim2.new(0, 10, 0, 0)
createdByText.BackgroundTransparency = 1
createdByText.Text = "Created by was_record"
createdByText.TextColor3 = Color3.fromRGB(180, 180, 180) -- Светло-серый цвет
createdByText.Font = Enum.Font.GothamBold -- Жирный шрифт
createdByText.TextSize = 14
createdByText.TextXAlignment = Enum.TextXAlignment.Left
createdByText.Parent = frame

-- Создаем кнопку "Close"
local closeButton = Instance.new("TextButton")
closeButton.Name = "CloseButton"
closeButton.Size = UDim2.new(0.2, 0, 0, 15)
closeButton.Position = UDim2.new(0.78, 0, 0, 5)
closeButton.BackgroundColor3 = Color3.fromRGB(150, 0, 0) -- Темно-красный цвет
closeButton.Text = "Close"
closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
closeButton.Font = Enum.Font.GothamBold
closeButton.TextSize = 14
closeButton.Parent = frame

-- Закругляем края кнопки "Close"
local closeButtonCorner = Instance.new("UICorner")
closeButtonCorner.CornerRadius = UDim.new(0, 5)
closeButtonCorner.Parent = closeButton

-- Функция для закрытия GUI и удаления скрипта
local function closeGui()
    screenGui:Destroy()
end

-- Обработчик нажатия кнопки "Close"
closeButton.Activated:Connect(closeGui)

-- Создаем кнопку внутри GUI
local button = Instance.new("TextButton")
button.Name = "noclip"
button.Size = UDim2.new(0, 100, 0, 50)
button.Position = UDim2.new(0, 10, 0, 30) -- Смещение кнопки ниже надписи
button.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
button.Text = "NoClip: Off"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.Font = Enum.Font.GothamBold
button.TextSize = 12
button.Parent = frame

local buttonCorner = Instance.new("UICorner")
buttonCorner.CornerRadius = UDim.new(0, 10)
buttonCorner.Parent = button

local UserInputService = game:GetService("UserInputService")
local scrollPosition = 0

UserInputService.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseWheel then
        scrollPosition = scrollPosition - input.Position.Z * 20
        scrollPosition = math.clamp(scrollPosition, -frame.AbsoluteSize.Y + 200, 0)

        for _, child in pairs(frame:GetChildren()) do
            if child:IsA("GuiObject") then
                child.Position = child.Position + UDim2.new(0, 0, 0, input.Position.Z * 20)
            end
        end
    end
end)

-- Создаем надпись "Created by was_record"
local createdByText = Instance.new("TextLabel")
createdByText.Name = "CreatedByText"
createdByText.Size = UDim2.new(0.7, 0, 0, 20)
createdByText.Position = UDim2.new(0, 10, 0, 0)
createdByText.BackgroundTransparency = 1
createdByText.Text = "Created by was_record"
createdByText.TextColor3 = Color3.fromRGB(180, 180, 180) -- Светло-серый цвет
createdByText.Font = Enum.Font.GothamBold -- Жирный шрифт
createdByText.TextSize = 14
createdByText.TextXAlignment = Enum.TextXAlignment.Left
createdByText.Parent = frame

-- Создаем кнопку "Close"
local closeButton = Instance.new("TextButton")
closeButton.Name = "CloseButton"
closeButton.Size = UDim2.new(0.2, 0, 0, 15)
closeButton.Position = UDim2.new(0.78, 0, 0, 5)
closeButton.BackgroundColor3 = Color3.fromRGB(150, 0, 0) -- Темно-красный цвет
closeButton.Text = "Close"
closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
closeButton.Font = Enum.Font.GothamBold
closeButton.TextSize = 14
closeButton.Parent = frame

-- Закругляем края кнопки "Close"
local closeButtonCorner = Instance.new("UICorner")
closeButtonCorner.CornerRadius = UDim.new(0, 5)
closeButtonCorner.Parent = closeButton

-- Функция для закрытия GUI и удаления скрипта
local function closeGui()
    screenGui:Destroy()
end

-- Обработчик нажатия кнопки "Close"
closeButton.Activated:Connect(closeGui)

-- Создаем кнопку внутри GUI
local button = Instance.new("TextButton")
button.Name = "noclip"
button.Size = UDim2.new(0, 100, 0, 50)
button.Position = UDim2.new(0, 10, 0, 30) -- Смещение кнопки ниже надписи
button.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
button.Text = "NoClip: Off"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.Font = Enum.Font.GothamBold
button.TextSize = 12
button.Parent = frame

-- Закругляем края кнопки
local buttonCorner = Instance.new("UICorner")
buttonCorner.CornerRadius = UDim.new(0, 10)
buttonCorner.Parent = button

-- Создаем кнопку внутри GUI для Flight
local flightButton = Instance.new("TextButton")
flightButton.Name = "flight"
flightButton.Size = UDim2.new(0, 100, 0, 50)
flightButton.Position = UDim2.new(0, 10, 0, 90) -- Смещение кнопки ниже Noclip
flightButton.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
flightButton.Text = "Flight: Off"
flightButton.TextColor3 = Color3.fromRGB(255, 255, 255)
flightButton.Font = Enum.Font.GothamBold
flightButton.TextSize = 12
flightButton.Parent = frame

-- Закругляем края кнопки Flight
local flightButtonCorner = Instance.new("UICorner")
flightButtonCorner.CornerRadius = UDim.new(0, 10)
flightButtonCorner.Parent = flightButton

-- Создаем кнопку внутри GUI для ESP
local espButton = Instance.new("TextButton")
espButton.Name = "esp"
espButton.Size = UDim2.new(0, 100, 0, 50)
espButton.Position = UDim2.new(0, 120, 0, 30) -- Смещение кнопки ниже надписи
espButton.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
espButton.Text = "ESP: Off"
espButton.TextColor3 = Color3.fromRGB(255, 255, 255)
espButton.Font = Enum.Font.GothamBold
espButton.TextSize = 12
espButton.Parent = frame

-- Закругляем края кнопки ESP
local espButtonCorner = Instance.new("UICorner")
espButtonCorner.CornerRadius = UDim.new(0, 10)
espButtonCorner.Parent = espButton

-- Создаем кнопку для FullBright
local fullBrightButton = Instance.new("TextButton")
fullBrightButton.Name = "FullBrightButton"
fullBrightButton.Size = UDim2.new(0, 100, 0, 50)
fullBrightButton.Position = UDim2.new(0, 10, 0, 210) -- Смещение кнопки ниже других элементов
fullBrightButton.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
fullBrightButton.Text = "FullBright: Off"
fullBrightButton.TextColor3 = Color3.fromRGB(255, 255, 255)
fullBrightButton.Font = Enum.Font.GothamBold
fullBrightButton.TextSize = 12
fullBrightButton.Parent = frame

-- Закругляем края кнопки FullBright
local fullBrightButtonCorner = Instance.new("UICorner")
fullBrightButtonCorner.CornerRadius = UDim.new(0, 10)
fullBrightButtonCorner.Parent = fullBrightButton

-- Переменная для отслеживания состояния кнопки
local isFullBrightOn = false
local isEspOn = false
local isFlightOn = false
local isOn = false
local steppedConnection = nil

-- Получаем TweenService
local TweenService = game:GetService("TweenService")

-- Функция для создания анимации
local function createTween(instance, properties, duration)
    local tweenInfo = TweenInfo.new(duration, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    local tween = TweenService:Create(instance, tweenInfo, properties)
    return tween
end

-- Функция для включения ESP
local function enableEsp()
    for _, player in pairs(game.Players:GetPlayers()) do
        if player ~= game.Players.LocalPlayer then
            local highlight = Instance.new("Highlight")
            highlight.Name = "ESPHighlight"
            highlight.Adornee = player.Character
            highlight.FillColor = Color3.new(1, 0, 0)
            highlight.FillTransparency = 0.5
            highlight.OutlineColor = Color3.new(1, 0, 0)
            highlight.OutlineTransparency = 0
            highlight.Parent = player.Character
        end
    end
end

-- Функция для выключения ESP
local function disableEsp()
    for _, player in pairs(game.Players:GetPlayers()) do
        if player ~= game.Players.LocalPlayer then
            local highlight = player.Character:FindFirstChild("ESPHighlight")
            if highlight then
                highlight:Destroy()
            end
        end
    end
end

local function toggleEspButton()
    isEspOn = not isEspOn
    if isEspOn then
        local tween = createTween(espButton, {BackgroundColor3 = Color3.fromRGB(0, 255, 0)}, 0.5)
        tween:Play()
        espButton.Text = "ESP: On"
        enableEsp()
    else
        local tween = createTween(espButton, {BackgroundColor3 = Color3.fromRGB(60, 60, 60)}, 0.5)
        tween:Play()
        espButton.Text = "ESP: Off"
        disableEsp()
    end
end

espButton.Activated:Connect(toggleEspButton)

local function toggleFullBright()
    isFullBrightOn = not isFullBrightOn
    if isFullBrightOn then
        game.Lighting.Brightness = 5
        game.Lighting.GlobalShadows = false
        fullBrightButton.Text = "FullBright: On"
        local tween = createTween(fullBrightButton, {BackgroundColor3 = Color3.fromRGB(0, 255, 0)}, 0.5)
        tween:Play()
    else
        game.Lighting.Brightness = 1
        game.Lighting.GlobalShadows = true
        fullBrightButton.Text = "FullBright: Off"
        local tween = createTween(fullBrightButton, {BackgroundColor3 = Color3.fromRGB(60, 60, 60)}, 0.5)
        tween:Play()
    end
end

-- Обработчик нажатия кнопки FullBright
fullBrightButton.Activated:Connect(toggleFullBright)

fullBrightButton.MouseButton1Down:Connect(function()
    local tween = createTween(fullBrightButton, {Size = UDim2.new(0, 90, 0, 45), BackgroundColor3 = Color3.fromRGB(80, 80, 80)}, 0.1)
    tween:Play()
end)

fullBrightButton.MouseButton1Up:Connect(function()
    local tween = createTween(fullBrightButton, {Size = UDim2.new(0, 100, 0, 50), BackgroundColor3 = Color3.fromRGB(60, 60, 60)}, 0.1)
    tween:Play()
end)

-- Анимация нажатия кнопки ESP
espButton.MouseButton1Down:Connect(function()
    local tween = createTween(espButton, {Size = UDim2.new(0, 90, 0, 45), BackgroundColor3 = Color3.fromRGB(80, 80, 80)}, 0.1)
    tween:Play()
end)

espButton.MouseButton1Up:Connect(function()
    local tween = createTween(espButton, {Size = UDim2.new(0, 100, 0, 50), BackgroundColor3 = Color3.fromRGB(60, 60, 60)}, 0.1)
    tween:Play()
end)

-- Функция для включения Noclip
local function enableNoclip()
    steppedConnection = game:GetService("RunService").Stepped:Connect(function()
        local character = game.Players.LocalPlayer.Character
        if character then
            for _, part in pairs(character:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.CanCollide = false
                end
            end
        end
    end)
end

-- Функция для выключения Noclip
local function disableNoclip()
    if steppedConnection then
        steppedConnection:Disconnect()
        steppedConnection = nil
    end
    local character = game.Players.LocalPlayer.Character
    if character then
        for _, part in pairs(character:GetDescendants()) do
            if part:IsA("BasePart") then
                part.CanCollide = true
            end
        end
    end
end

-- Функция для переключения состояния кнопки
local function toggleButton()
    isOn = not isOn
    if isOn then
        local tween = createTween(button, {BackgroundColor3 = Color3.fromRGB(0, 255, 0)}, 0.5)
        tween:Play()
        button.Text = "Noclip: On"
        enableNoclip()
    else
        local tween = createTween(button, {BackgroundColor3 = Color3.fromRGB(60, 60, 60)}, 0.5)
        tween:Play()
        button.Text = "Noclip: Off"
        disableNoclip()
    end
end

FLYING = false
QEfly = true
iyflyspeed = 1
vehicleflyspeed = 1

-- Функция для запуска полета
function sFLY(vfly)
    repeat wait() until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
    repeat wait() until game.Players.LocalPlayer:GetMouse()
    if flyKeyDown or flyKeyUp then flyKeyDown:Disconnect() flyKeyUp:Disconnect() end

    local T = game.Players.LocalPlayer.Character.HumanoidRootPart
    local CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
    local lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
    local SPEED = 0

    local function FLY()
        FLYING = true
        local BG = Instance.new('BodyGyro')
        local BV = Instance.new('BodyVelocity')
        BG.P = 9e4
        BG.Parent = T
        BV.Parent = T
        BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
        BG.cframe = T.CFrame
        BV.velocity = Vector3.new(0, 0, 0)
        BV.maxForce = Vector3.new(9e9, 9e9, 9e9)
        task.spawn(function()
            repeat wait()
                if not vfly and game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
                    game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = true
                end
                if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0 then
                    SPEED = 50
                elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0) and SPEED ~= 0 then
                    SPEED = 0
                end
                if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 or (CONTROL.Q + CONTROL.E) ~= 0 then
                    BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
                    lCONTROL = {F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R}
                elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and (CONTROL.Q + CONTROL.E) == 0 and SPEED ~= 0 then
                    BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(lCONTROL.L + lCONTROL.R, (lCONTROL.F + lCONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
                else
                    BV.velocity = Vector3.new(0, 0, 0)
                end
                BG.cframe = workspace.CurrentCamera.CoordinateFrame
            until not FLYING
            CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
            lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
            SPEED = 0
            BG:Destroy()
            BV:Destroy()
            if game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
                game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
            end
        end)
    end
    flyKeyDown = game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(KEY)
        if KEY:lower() == 'w' then
            CONTROL.F = (vfly and vehicleflyspeed or iyflyspeed)
        elseif KEY:lower() == 's' then
            CONTROL.B = - (vfly and vehicleflyspeed or iyflyspeed)
        elseif KEY:lower() == 'a' then
            CONTROL.L = - (vfly and vehicleflyspeed or iyflyspeed)
        elseif KEY:lower() == 'd' then
            CONTROL.R = (vfly and vehicleflyspeed or iyflyspeed)
        elseif QEfly and KEY:lower() == 'e' then
            CONTROL.Q = (vfly and vehicleflyspeed or iyflyspeed)*2
        elseif QEfly and KEY:lower() == 'q' then
            CONTROL.E = -(vfly and vehicleflyspeed or iyflyspeed)*2
        end
        pcall(function() workspace.CurrentCamera.CameraType = Enum.CameraType.Track end)
    end)
    flyKeyUp = game.Players.LocalPlayer:GetMouse().KeyUp:Connect(function(KEY)
        if KEY:lower() == 'w' then
            CONTROL.F = 0
        elseif KEY:lower() == 's' then
            CONTROL.B = 0
        elseif KEY:lower() == 'a' then
            CONTROL.L = 0
        elseif KEY:lower() == 'd' then
            CONTROL.R = 0
        elseif KEY:lower() == 'e' then
            CONTROL.Q = 0
        elseif KEY:lower() == 'q' then
            CONTROL.E = 0
        end
    end)
    FLY()
end

-- Функция для остановки полета
function NOFLY()
    FLYING = false
    if flyKeyDown or flyKeyUp then flyKeyDown:Disconnect() flyKeyUp:Disconnect() end
    if game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
        game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
    end
    pcall(function() workspace.CurrentCamera.CameraType = Enum.CameraType.Custom end)
end

-- Функция для переключения состояния кнопки полета
local function toggleFlightButton()
    isFlightOn = not isFlightOn
    if isFlightOn then
        local tween = createTween(flightButton, {BackgroundColor3 = Color3.fromRGB(0, 255, 0)}, 0.5)
        tween:Play()
        flightButton.Text = "Flight: On"
        sFLY(false)  -- Запуск полета
    else
        local tween = createTween(flightButton, {BackgroundColor3 = Color3.fromRGB(60, 60, 60)}, 0.5)
        tween:Play()
        flightButton.Text = "Flight: Off"
        NOFLY()  -- Остановка полета
    end
end

-- Обработчик нажатия кнопки
button.Activated:Connect(toggleButton)

flightButton.Activated:Connect(toggleFlightButton)

-- Анимация нажатия кнопки
button.MouseButton1Down:Connect(function()
    local tween = createTween(button, {Size = UDim2.new(0, 90, 0, 45), BackgroundColor3 = Color3.fromRGB(80, 80, 80)}, 0.1)
    tween:Play()
end)

button.MouseButton1Up:Connect(function()
    local tween = createTween(button, {Size = UDim2.new(0, 100, 0, 50), BackgroundColor3 = Color3.fromRGB(60, 60, 60)}, 0.1)
    tween:Play()
end)

flightButton.MouseButton1Down:Connect(function()
    local tween = createTween(flightButton, {Size = UDim2.new(0, 90, 0, 45), BackgroundColor3 = Color3.fromRGB(80, 80, 80)}, 0.1)
    tween:Play()
end)

flightButton.MouseButton1Up:Connect(function()
    local tween = createTween(flightButton, {Size = UDim2.new(0, 100, 0, 50), BackgroundColor3 = Color3.fromRGB(60, 60, 60)}, 0.1)
    tween:Play()
end)

-- Создаем вторую кнопку для открытия/закрытия GUI
local toggleButton = Instance.new("TextButton")
toggleButton.Name = "ToggleButton"
toggleButton.Size = UDim2.new(0, 100, 0, 50)
toggleButton.Position = UDim2.new(1, -150, 0.5, -25) -- По центру правой части экрана
toggleButton.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
toggleButton.Text = "Toggle GUI"
toggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
toggleButton.Font = Enum.Font.Gotham
toggleButton.TextSize = 18
toggleButton.Parent = screenGui

-- Закругляем края второй кнопки
local toggleButtonCorner = Instance.new("UICorner")
toggleButtonCorner.CornerRadius = UDim.new(0, 10)
toggleButtonCorner.Parent = toggleButton

local function toggleGuiVisibility()
    if frame.Visible then
        local tweenFrame = createTween(frame, {BackgroundTransparency = 1}, 1.0) -- Увеличено время анимации
        local tweenText = createTween(createdByText, {TextTransparency = 1}, 1.0) -- Увеличено время анимации
        local tweenNoclipButton = createTween(button, {BackgroundTransparency = 1, TextTransparency = 1}, 1.0) -- Увеличено время анимации
        local tweenFlightButton = createTween(flightButton, {BackgroundTransparency = 1, TextTransparency = 1}, 1.0) -- Увеличено время анимации
        local tweenCloseButton = createTween(closeButton, {BackgroundTransparency = 1, TextTransparency = 1}, 1.0) -- Увеличено время анимации
        local tweenEspButton = createTween(espButton, {BackgroundTransparency = 1, TextTransparency = 1}, 1.0) -- Увеличено время анимации
        local tweenFullBrightButton = createTween(fullBrightButton, {BackgroundTransparency = 1, TextTransparency = 1}, 1.0) -- Увеличено время анимации
        tweenFrame:Play()
        tweenText:Play()
        tweenNoclipButton:Play()
        tweenFlightButton:Play()
        tweenCloseButton:Play()
        tweenEspButton:Play()
        tweenFullBrightButton:Play()

        -- Дожидаемся завершения всех анимаций перед скрытием фрейма
        tweenFrame.Completed:Connect(function()
            frame.Visible = false
            frame.BackgroundTransparency = 0
            createdByText.TextTransparency = 0
            button.BackgroundTransparency = 0
            button.TextTransparency = 0
            flightButton.BackgroundTransparency = 0
            flightButton.TextTransparency = 0
            closeButton.BackgroundTransparency = 0
            closeButton.TextTransparency = 0
            espButton.BackgroundTransparency = 0
            espButton.TextTransparency = 0
            fullBrightButton.BackgroundTransparency = 0
            fullBrightButton.TextTransparency = 0
        end)
    else
        frame.Visible = true
        local tweenFrame = createTween(frame, {BackgroundTransparency = 0}, 1.0) -- Увеличено время анимации
        local tweenText = createTween(createdByText, {TextTransparency = 0}, 1.0) -- Увеличено время анимации
        local tweenNoclipButton = createTween(button, {BackgroundTransparency = 0, TextTransparency = 0}, 1.0) -- Увеличено время анимации
        local tweenFlightButton = createTween(flightButton, {BackgroundTransparency = 0, TextTransparency = 0}, 1.0) -- Увеличено время анимации
        local tweenCloseButton = createTween(closeButton, {BackgroundTransparency = 0, TextTransparency = 0}, 1.0) -- Увеличено время анимации
        local tweenEspButton = createTween(espButton, {BackgroundTransparency = 0, TextTransparency = 0}, 1.0) -- Увеличено время анимации
        local tweenFullBrightButton = createTween(fullBrightButton, {BackgroundTransparency = 0, TextTransparency = 0}, 1.0) -- Увеличено время анимации
        tweenFrame:Play()
        tweenText:Play()
        tweenNoclipButton:Play()
        tweenFlightButton:Play()
        tweenCloseButton:Play()
        tweenEspButton:Play()
        tweenFullBrightButton:Play()
    end
end

-- Обработчик нажатия второй кнопки
toggleButton.Activated:Connect(toggleGuiVisibility)

-- Анимация нажатия второй кнопки
toggleButton.MouseButton1Down:Connect(function()
    local tween = createTween(toggleButton, {Size = UDim2.new(0, 90, 0, 45), BackgroundColor3 = Color3.fromRGB(80, 80, 80)}, 0.1)
    tween:Play()
end)

toggleButton.MouseButton1Up:Connect(function()
    local tween = createTween(toggleButton, {Size = UDim2.new(0, 100, 0, 50), BackgroundColor3 = Color3.fromRGB(60, 60, 60)}, 0.1)
    tween:Play()
end)

-- Перемещение второй кнопки
local draggingToggleButton = false
local dragInputToggleButton = nil
local dragStartToggleButton = nil
local startPosToggleButton = nil

local function updateToggleButton(input)
    local delta = input.Position - dragStartToggleButton
    toggleButton.Position = UDim2.new(startPosToggleButton.X.Scale, startPosToggleButton.X.Offset + delta.X, startPosToggleButton.Y.Scale, startPosToggleButton.Y.Offset + delta.Y)
end

toggleButton.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        draggingToggleButton = true
        dragStartToggleButton = input.Position
        startPosToggleButton = toggleButton.Position

        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                draggingToggleButton = false
            end
        end)
    end
end)

toggleButton.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInputToggleButton = input
    end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
    if input == dragInputToggleButton and draggingToggleButton then
        updateToggleButton(input)
    end
end)

-- Перемещение GUI
local dragging = false
local dragInput = nil
local dragStart = nil
local startPos = nil

local function update(input)
    local delta = input.Position - dragStart
    frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

frame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = frame.Position

        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

frame.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        update(input)
    end
end)

-- Обработчик нажатия клавиши "Правый Ctrl"
game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessedEvent)
    if not gameProcessedEvent and input.KeyCode == Enum.KeyCode.RightControl then
        toggleGuiVisibility()
    end
end)

-- Создаем кнопку "goto"
local gotoButton = Instance.new("TextButton")
gotoButton.Name = "GotoButton"
gotoButton.Size = UDim2.new(0, 100, 0, 50)
gotoButton.Position = UDim2.new(0, 10, 0, 150) -- Смещение кнопки ниже ESP
gotoButton.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
gotoButton.Text = "Goto"
gotoButton.TextColor3 = Color3.fromRGB(255, 255, 255)
gotoButton.Font = Enum.Font.GothamBold
gotoButton.TextSize = 12
gotoButton.Parent = frame

-- Закругляем края кнопки "goto"
local gotoButtonCorner = Instance.new("UICorner")
gotoButtonCorner.CornerRadius = UDim.new(0, 10)
gotoButtonCorner.Parent = gotoButton

-- Создаем поле ввода для никнейма игрока
local playerNameInput = Instance.new("TextBox")
playerNameInput.Name = "PlayerNameInput"
playerNameInput.Size = UDim2.new(0, 150, 0, 30)
playerNameInput.Position = UDim2.new(0, 120, 0, 160) -- Смещение поля ввода рядом с кнопкой
playerNameInput.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
playerNameInput.TextColor3 = Color3.fromRGB(255, 255, 255)
playerNameInput.Font = Enum.Font.Gotham
playerNameInput.TextSize = 14
playerNameInput.PlaceholderText = "Enter player name"
playerNameInput.Parent = frame

-- Закругляем края поля ввода
local playerNameInputCorner = Instance.new("UICorner")
playerNameInputCorner.CornerRadius = UDim.new(0, 5)
playerNameInputCorner.Parent = playerNameInput

-- Функция для телепортации к игроку
local function teleportToPlayer(playerName)
    local players = game.Players:GetPlayers()
    for _, player in pairs(players) do
        if player.Name:lower() == playerName:lower() then
            if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                local localPlayer = game.Players.LocalPlayer
                if localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart") then
                    localPlayer.Character.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame + Vector3.new(3, 1, 0)
                end
            end
            break
        end
    end
end

-- Обработчик нажатия кнопки "goto"
gotoButton.Activated:Connect(function()
    local playerName = playerNameInput.Text
    if playerName and playerName ~= "" then
        teleportToPlayer(playerName)
    end
end)

-- Анимация нажатия кнопки "goto"
gotoButton.MouseButton1Down:Connect(function()
    local tween = createTween(gotoButton, {Size = UDim2.new(0, 90, 0, 45), BackgroundColor3 = Color3.fromRGB(80, 80, 80)}, 0.1)
    tween:Play()
end)

gotoButton.MouseButton1Up:Connect(function()
    local tween = createTween(gotoButton, {Size = UDim2.new(0, 100, 0, 50), BackgroundColor3 = Color3.fromRGB(60, 60, 60)}, 0.1)
    tween:Play()
end)