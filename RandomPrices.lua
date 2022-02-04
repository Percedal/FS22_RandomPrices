RandomPrices = {}

addModEventListener(RandomPrices)

function RandomPrices:loadMap(name)
    for key,fillType in pairs(g_currentMission.fillTypeManager:getFillTypes()) do
        print("----RandomPrices----", key, fillType.name)
        for i = 1, 12, 1 do
            fillType.economy.factors[i] = 1
        end
    end
end