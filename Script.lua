local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()

local Window = Library.CreateLib("  CasualScript", "RJTheme7") -- Замени RJTheme3 на твою тему, если нужно

local Tab = Window:NewTab("Help")

-- Подсекция
local Section = Tab:NewSection("Добро пожаловать, рад видеть!")

-- Заголовок
Section:NewLabel("✨ CasualScript by 'PavelDIPF' ✨")

Section:NewLabel("❓ Вопросы, ошибки, баги, предложения")

Section:NewLabel("💬 Пишите сюда: https://t.me/Pasha_Zoloto")

Section:NewLabel("🛠️ Скрипт был разработан в одиночку by 'PavelDIPF'")

Section:NewLabel("🎮 Этот скрипт предназначен для CasualStock")

Section:NewLabel("📱 Telegram by CasualStock: https://t.me/casualstockrbx")

Section:NewLabel("🙏 Спасибо, что играешь с моим скриптом! 🌟")

local Tab = Window:NewTab("Movement")

local Section = Tab:NewSection("Телепорты")

Section:NewButton("Телепорт к Барыге", "Быстрая телепортация к Барыге", function()
-- Локальный скрипт для поиска игрока и телепортации на новые координаты

local playerName = "ACAYNT_G4"  -- Имя искомого игрока
local targetPlayer = nil
local targetPosition = Vector3.new(16.69569206237793, 165.5271453857422, -35.45377731323242)  -- Заданные координаты

-- Функция для поиска игрока
local function findPlayer()
    for _, player in pairs(game.Players:GetPlayers()) do
        if player.Name == playerName then
            targetPlayer = player
            break
        end
    end
end

-- Функция для телепортации игрока на заданные координаты
local function teleportPlayer()
    if targetPlayer and targetPlayer.Character then
        local character = targetPlayer.Character
        local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
        humanoidRootPart.CFrame = CFrame.new(targetPosition)  -- Телепортация на новые координаты
        print(playerName .. " телепортирован на позицию: " .. tostring(targetPosition))
    else
        print(playerName .. " не найден или не в игре.")
    end
end

-- Поиск игрока и телепортация
findPlayer()
teleportPlayer()

end)

Section:NewButton("Телепорт в ТЦ", "Быстрая телепортация в ТЦ", function()
-- Локальный скрипт для поиска игрока и телепортации на новые координаты

local playerName = "ACAYNT_G4"  -- Имя искомого игрока
local targetPlayer = nil
local targetPosition = Vector3.new(1.4840127229690552, 181.68943786621094, 138.5951690673828)  -- Заданные координаты

-- Функция для поиска игрока
local function findPlayer()
    for _, player in pairs(game.Players:GetPlayers()) do
        if player.Name == playerName then
            targetPlayer = player
            break
        end
    end
end

-- Функция для телепортации игрока на заданные координаты
local function teleportPlayer()
    if targetPlayer and targetPlayer.Character then
        local character = targetPlayer.Character
        local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
        humanoidRootPart.CFrame = CFrame.new(targetPosition)  -- Телепортация на новые координаты
        print(playerName .. " телепортирован на позицию: " .. tostring(targetPosition))
    else
        print(playerName .. " не найден или не в игре.")
    end
end

-- Поиск игрока и телепортация
findPlayer()
teleportPlayer()

end)

Section:NewButton("Телепорт в БАНК", "Телепортация в БАНК, Тьньконн", function()
-- Локальный скрипт для поиска игрока и телепортации его

local playerName = "ACAYNT_G4"  -- Имя искомого игрока
local targetPlayer = nil
local targetPosition = Vector3.new(6.574471950531006, 190.4480438232422, -468.61065673828125)  -- Заданные координаты

-- Функция для поиска игрока
local function findPlayer()
    for _, player in pairs(game.Players:GetPlayers()) do
        if player.Name == playerName then
            targetPlayer = player
            break
        end
    end
end

-- Функция для телепортации игрока на заданные координаты
local function teleportPlayer()
    if targetPlayer and targetPlayer.Character then
        local character = targetPlayer.Character
        local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
        humanoidRootPart.CFrame = CFrame.new(targetPosition)
        print(playerName .. " телепортирован на позицию: " .. tostring(targetPosition))
    else
        print(playerName .. " не найден или не в игре.")
    end
end

-- Поиск игрока и телепортация
findPlayer()
teleportPlayer()

end)

local Section = Tab:NewSection("Ходьба")

-- Скрипт для переключателя
Section:NewToggle("NoClip", "Toggle NoClip", function(state)
    if state then
        -- Включение NoClip
        _G.NoClip = true
        local function noclip()
            while _G.NoClip do
                for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                    if v:IsA("BasePart") and v.CanCollide == true then
                        v.CanCollide = false
                    end
                end
                game:GetService("RunService").Stepped:wait()
            end
        end
        -- Запуск функции NoClip в новом потоке
        spawn(noclip)
        print("NoClip On")
    else
        -- Выключение NoClip
        _G.NoClip = false
        for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
            if v:IsA("BasePart") then
                v.CanCollide = true
            end
        end
        print("NoClip Off")
    end
end)


Section:NewSlider("SpeedHack", "Увеличит скорость от 16 до 40", 40,16, function(SpeedHacks) -- 500 (Макс. значение) | 0 (Мин. значение)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = SpeedHacks
end)

Section:NewSlider("HighJump", "Увеличит Прыжок от 50 до 120", 120,50, function(JumpHacks) -- 500 (Макс. значение) | 0 (Мин. значение)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = JumpHacks
end)

local Tab = Window:NewTab("Visuals")

local Section = Tab:NewSection("Вещи")

local Players = game:GetService("Players")

Section:NewButton("Одеть Сет Антона Чигуры", "На вас оденутся Вещи", function()
    -- Получаем персонажа игрока
    local player = Players.LocalPlayer
    local character = player.Character

    -- Ищем Shirt и Pants в персонаже
    local shirt = character:FindFirstChildOfClass("Shirt")
    local pants = character:FindFirstChildOfClass("Pants")
    
    -- Устанавливаем новые шаблоны одежды
    if shirt then
        shirt.ShirtTemplate = "rbxassetid://5773140178"
    end
    if pants then
        pants.PantsTemplate = "rbxassetid://7798302568"
    end

    -- Выводим в консоль информацию
    print("Одежда для " .. player.Name .. " обновлена!")
end)

Section:NewButton("Одеть Мейсон Маржелу", "На вас оденеться Маржела", function()
    -- Получаем персонажа игрока
    local player = Players.LocalPlayer
    local character = player.Character

    -- Ищем Shirt и Pants в персонаже
    local shirt = character:FindFirstChildOfClass("Shirt")
    
    -- Устанавливаем новые шаблоны одежды
    if shirt then
        shirt.ShirtTemplate = "rbxassetid://13898853467"
    end

    -- Выводим в консоль информацию
    print("Одежда для " .. player.Name .. " обновлена!")
end)

Section:NewButton("Одеть Новогодний Свитер 'Louis Vuitton'", "На вас оденеться Свитер", function()
    -- Получаем персонажа игрока
    local player = Players.LocalPlayer
    local character = player.Character

    -- Ищем Shirt и Pants в персонаже
    local shirt = character:FindFirstChildOfClass("Shirt")
    
    -- Устанавливаем новые шаблоны одежды
    if shirt then
        shirt.ShirtTemplate = "rbxassetid://6105652166"
    end

    -- Выводим в консоль информацию
    print("Одежда для " .. player.Name .. " обновлена!")
end)

local Tab = Window:NewTab("Esp")
