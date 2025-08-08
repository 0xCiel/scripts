if identifyexecutor():find("Bunni") then loadstring(game:HttpGet("https://raw.githubusercontent.com/0xCiel/scripts/refs/heads/main/fixes/drawingAPIfix.lua"))() end
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
            78405841523354},
        script = "https://raw.githubusercontent.com/0xCiel/scripts/refs/heads/main/rogueblox.lua"
    },
    TypeSoul = {
        ids = {
            14067606919,
            14069122388,
            14069678431,
            14069866342,
            14069956183,
            14070029709,
            14071822972,
            14282767684,
            14282768170,
            15126191380,
            15176590855,
            15214773359,
            15284243363,
            15284244204,
            15336080245,
            16722271122,
            16787374647,
            16795663529,
            16845411199,
            16883972004,
            16883976493,
            16895606055,
            17047374266,
            17078737609,
            17109530042,
            17128085292,
            17165937667,
            17206327946,
            17497764728,
            17497925847,
            17870505248,
            18214402201,
            18301446679,
            18363155549,
            18413381799,
            18567652860,
            18637069183,
            18917174184,
            74845003421880,
            74919509524142,
            79007765026427,
            81535625330190,
            85663041002311,
            88570549485653,
            91349401025981,
            97361360710328,
            99658992953850,
            104037350304891,
            106827243474698,
            108123877604820,
            112666253566696,
            115509275831248,
            116052447681870,
            116089004404557,
            117368893549457,
            121370145778591,
            121766282797354,
            122291183918016,
            126276657485357,
            130562349623101,
            130996985148664,
            133427200412304,
            138059541435332,
            139786130224667,
            140430392513905},
        script = "https://raw.githubusercontent.com/0xCiel/scripts/refs/heads/main/typesoul.lua"
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
        game:HttpGet("https://raw.githubusercontent.com/0xCiel/scripts/refs/heads/main/CielUniversal.lua"))()
end

Load()
