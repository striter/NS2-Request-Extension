ModLoader.SetupFileHook("lua/VoiceOver.lua", "lua/CNVoices/VoiceOver.lua", "replace")
ModLoader.SetupFileHook("lua/GUIRequestMenu.lua", "lua/CNVoices/GUIRequestMenu.lua", "replace")

if AddHintModPanel then
    local panelMaterial = PrecacheAsset("materials/CNCommunityVoices/Banner.material")
    AddHintModPanel(panelMaterial, "https://docs.qq.com/doc/DUHZFaHNQdExQSlZs","惹啊啊啊啊啊啊啊")
end