local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local correctKey1 = "nwadlaskdwadakkdlwajdwakdkslwajdjKDAKSKJDLWAJKDSALDWAJDJKSALKDLAWSKJLDAWLD_WDAWÑDSADJWAKJHSDHLKWAJKDLKAWKJDLKASDJIWAIDAISDIAWISUDwaioUSID1" -- Reemplaza "password" con tu clave correcta

local Window = Library.CreateLib("Net Hub guis (Jailbreak)", "DarkTheme")

local Tab = Window:NewTab("Guis")

local Section = Tab:NewSection("Key System for vynixus")

Section:NewButton("load Vynixus", "Oficial Vynixus, press to execute", function()
    Section:NewLabel("loading 3 sec")
    Section:NewButton("Copy Vynixus key", "press to copy key", function()
        setclipboard("sx_CFV0oqstmPWI0oHQJ")
    end)
    wait("3")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Jailbreak/Script.lua"))()
end)

Section:NewButton("Discord (Vynixus)", "Oficial Vynixus discord, press to copy", function()
    setclipboard("https://discord.gg/vynixius")
    Section:NewLabel("Copied")
end)

Library:Init()
