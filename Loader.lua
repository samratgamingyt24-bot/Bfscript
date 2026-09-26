-- local script_mode = "PVP" -- PVP, FARM
local scripts = {
    [6765805766] = { -- Block Spin
        PVP  = "https://api.luarmor.net/files/v4/loaders/ef80dfe25f05c00967ddd6fc1aa70253.lua",
        FARM = "https://api.luarmor.net/files/v4/loaders/e09810426f9798b4decaee7ef06fde5e.lua",
    },
    [994732206] = { -- Blox Fruits
        PVP = "https://api.luarmor.net/files/v4/loaders/341aeb3eaa42e6423a4cdbf2b148e77f.lua",
    }
}

local cfg = scripts[game.GameId]
if not cfg then
    game:GetService("Players").LocalPlayer:Kick("Game not supported")
    return
end

loadstring(game:HttpGet(cfg[(script_mode or "PVP"):upper()] or cfg.PVP))()
