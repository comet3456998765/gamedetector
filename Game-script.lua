local games = {
    [{606849621}] = "https://raw.githubusercontent.com/comet3456998765/jailbreakgui/main/Jailbreakguiscript.lua",
    [{413424176}] = "https://raw.githubusercontent.com/comet3456998765/Clone-Tycoon-2/main/YesNetGui"
    [{155615604}] = "https://raw.githubusercontent.com/comet3456998765/All-games-new-/main/ForGamedetector"
}

for ids, url in next, games do
    if table.find(ids, game.PlaceId) then
        loadstring(game:HttpGet(url))()
        break
    end
end

loadstring(game:HttpGet(local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Checking id", HidePremium = false,IntroText = "Net Hub Checking id", SaveConfig = true, ConfigFolder = "OrionTest"})
local player = game.Players.LocalPlayer
local whitelist = {3620776639,2313283831,4281918792,4273722840,1867773459} -- Lista de IDs permitidas
local blacklist = {1782259947} -- Lista de IDs no permitidas

local Tab = Window:MakeTab({
Name = "Checking",
Icon = "rbxassetid://4483345998",
PremiumOnly = false
})
local Section = Tab:AddSection({
Name = "Checking"
})
Tab:AddButton({
Name = "Check ID",
Callback = function()
if table.find(whitelist, player.UserId, 1,2,3,4) then
Tab:AddLabel("Estado/Condition")
Tab:AddLabel("Jugador permitido/Allowed player (3 sec)")
wait("3")
loadstring(game:HttpGet("https://raw.githubusercontent.com/comet3456998765/World-Hub-for-owners/main/Noimportanttags.lua"))()
wait("2")
OrionLib:Destroy()
else
print("no whitelist in owners version!")
Tab:AddLabel("Estado/Condition")
	Tab:AddLabel("Jugador no registrado en listas/Player not registered in lists")
	loadstring(game:HttpGet("https://raw.githubusercontent.com/comet3456998765/Key-system/main/YesKeysystem.lua"))()
end
if table.find(blacklist, player.UserId, 1) then
	Tab:AddLabel("Estado/Condition")
	Tab:AddLabel("Jugador no permitido/Player not allowed")
	loadstring(game:HttpGet("https://raw.githubusercontent.com/comet3456998765/forblackedlist/main/Yesblacklisteds"))()
	else

end
end
})
OrionLib:Init()))()
