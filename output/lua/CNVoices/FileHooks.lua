ModLoader.SetupFileHook("lua/VoiceOver.lua", "lua/CNVoices/VoiceOver.lua", "post")
ModLoader.SetupFileHook("lua/GUIRequestMenu.lua", "lua/CNVoices/GUIRequestMenu.lua", "replace")
ModLoader.SetupFileHook("lua/SoundEffect.lua", "lua/CNVoices/SoundEffect.lua", "post")
ModLoader.SetupFileHook("lua/Voting.lua", "lua/CNVoices/Voting.lua", "post")
ModLoader.SetupFileHook("lua/Shared.lua", "lua/CNVoices/Shared.lua", "post")
ModLoader.SetupFileHook("lua/Globals.lua", "lua/CNVoices/Globals.lua", "post")
ModLoader.SetupFileHook("lua/NetworkMessages_Server.lua", "lua/CNVoices/NetworkMessages_Server.lua", "post")

if AddHintModPanel then
    local panelMaterial = PrecacheAsset("materials/CNCommunityVoices/Banner.material")
    AddHintModPanel(panelMaterial, "https://docs.qq.com/doc/DUHZFaHNQdExQSlZs", "OK 这就要打开我的文本框了")
end