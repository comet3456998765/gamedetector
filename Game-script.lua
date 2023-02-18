local games = {
    [{606849621}] = "https://raw.githubusercontent.com/comet3456998765/jailbreakgui/main/Jailbreakguiscript.lua"
}

for ids, url in next, games do
    if table.find(ids, game.PlaceId) then
        loadstring(game:HttpGet(url))()
        break
    end
end
