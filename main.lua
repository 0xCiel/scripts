if identifyexecutor():find("Bunni") then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/0xCiel/scripts/refs/heads/main/fixes/drawingAPIfix.lua"))(

    )
end
local SupportedGames = {
    RogueBlox = {
        ids = {
            4661565222,
            15864234183,
            15921330324,
            16532229858,
            16850025301,
            16857291886,
            18842701736,
            78405841523354,
            105363382526961
        },
        script = "https://raw.githubusercontent.com/0xCiel/scripts/refs/heads/main/rogueblox.lua"
    },
    Deepwoken = {
        ids = {
            5735553160,
            6032399813,
            6473861193,
            6832934465,
            6832944305,
            8668476218,
            8712356310,
            9528956055,
            9598091549,
            9854906953,
            11108929042,
            12522881268,
            12522889886,
            12522892314,
            12559711136,
            13789332988,
            13891466013,
            13891478131,
            14299563111,
            14759951085,
            14910041900,
            15043797592,
            15043798946,
            15607970249,
            18139512873,
            70979303281827
        },
        script = "https://raw.githubusercontent.com/0xCiel/deepwokenscript/refs/heads/main/main.lua"
    },
    Archived = {
        ids = {
            99831550635699,
            14038329225,
            103668683568092,
            110059584602949,
            120385351511202
        },
        script = "https://raw.githubusercontent.com/0xCiel/scripts/refs/heads/main/archived.lua"
    },
 HEIAN = {
        ids = {
            14773491200,
            18677118023,
            138234680258401,
        },
        script = "https://raw.githubusercontent.com/0xCiel/scripts/refs/heads/main/heian.lua"
    }
}

local function Load()
    for i, gd in pairs(SupportedGames) do
        for i, id in ipairs(gd.ids) do
            if id == game.PlaceId then
                return loadstring(game:HttpGet(gd.script))()
            end
        end
    end
    return loadstring(
        game:HttpGet("https://raw.githubusercontent.com/0xCiel/scripts/refs/heads/main/CielUniversal.lua")
    )()
end

Load()
