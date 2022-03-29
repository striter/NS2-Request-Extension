
debug.appendtoenum(kVoiceId,'Disease')
debug.appendtoenum(kVoiceId,'OttoJCHZ')
debug.appendtoenum(kVoiceId,'OttoSpeak')
debug.appendtoenum(kVoiceId,'OttoOXG')
debug.appendtoenum(kVoiceId,'OttoKTHULU')
debug.appendtoenum(kVoiceId,'OttoDDD')
debug.appendtoenum(kVoiceId,'OttoJB')
debug.appendtoenum(kVoiceId,'OttoStory')
debug.appendtoenum(kVoiceId,'XuanSpeak')
debug.appendtoenum(kVoiceId,'XuanWoof')
debug.appendtoenum(kVoiceId,'XuanOhoo')
debug.appendtoenum(kVoiceId,'XuanRea')
debug.appendtoenum(kVoiceId,'XuanAha')
debug.appendtoenum(kVoiceId,'XuanStory')
debug.appendtoenum(kVoiceId,'Liberity')
debug.appendtoenum(kVoiceId,'DuiDuiDui')
debug.appendtoenum(kVoiceId,'CZHL')
debug.appendtoenum(kVoiceId,'Summer')
debug.appendtoenum(kVoiceId,'Hitme')
debug.appendtoenum(kVoiceId,'LockerRoom')
debug.appendtoenum(kVoiceId,'Wu')
debug.appendtoenum(kVoiceId,'Ah')
debug.appendtoenum(kVoiceId,'Slap')
debug.appendtoenum(kVoiceId,'AnikiSpeak')

local kAdditionalSoundData =
{
    [kVoiceId.Disease] = { Sound = "sound/CNTaunts.fev/ma/Laugh", Description = "REQUEST_DISEASE",Interval = 2, AlertTechId = kTechId.None },  
    [kVoiceId.OttoJCHZ] = { Sound = "sound/CNTaunts.fev/Otto/JCHZ", Description = "REQUEST_OTTO_FOOD", AlertTechId = kTechId.None },  
    [kVoiceId.OttoOXG] = { Sound = "sound/CNTaunts.fev/Otto/OXG", Description = "REQUEST_OTTO_OXG", Interval = 0.7, AlertTechId = kTechId.None },  
    [kVoiceId.OttoKTHULU] = { Sound = "sound/CNTaunts.fev/Otto/KTHULU", Description = "REQUEST_OTTO_KTHULU", Interval = 1, AlertTechId = kTechId.None },  
    [kVoiceId.OttoSpeak] = { Sound = "sound/CNTaunts.fev/Otto/Speak", Description = "REQUEST_OTTO_SPEAK", AlertTechId = kTechId.None },  
    [kVoiceId.OttoDDD] = { Sound = "sound/CNTaunts.fev/Otto/DDD", Description = "REQUEST_OTTO_DDD", Interval = 1,  AlertTechId = kTechId.None },  
    [kVoiceId.OttoJB] = { Sound = "sound/CNTaunts.fev/Otto/JB", Description = "REQUEST_OTTO_JB", Interval = 1,  AlertTechId = kTechId.None },  
    [kVoiceId.OttoStory] = { Sound = "sound/CNTaunts.fev/Otto/Story", Description = "REQUEST_OTTO_STORY", Interval = 63.3,  AlertTechId = kTechId.None },  
    [kVoiceId.XuanSpeak] = { Sound = "sound/CNTaunts.fev/Xuan/Speak", Description = "REQUEST_XUAN_SPEAK", AlertTechId = kTechId.None },  
    [kVoiceId.XuanWoof] = { Sound = "sound/CNTaunts.fev/Xuan/Woof", Description = "REQUEST_XUAN_WOOF", AlertTechId = kTechId.None },  
    [kVoiceId.XuanOhoo] = { Sound = "sound/CNTaunts.fev/Xuan/Ohoo", Description = "REQUEST_XUAN_OHOO",  Interval = 0.75, AlertTechId = kTechId.None },  
    [kVoiceId.XuanRea] = { Sound = "sound/CNTaunts.fev/Xuan/Rea", Description = "REQUEST_XUAN_REA", Interval = 2.5,  AlertTechId = kTechId.None },  
    [kVoiceId.XuanAha] = { Sound = "sound/CNTaunts.fev/Xuan/Aha", Description = "REQUEST_XUAN_AHA",  Interval = 1.5, AlertTechId = kTechId.None },  
    [kVoiceId.XuanStory] = { Sound = "sound/CNTaunts.fev/Xuan/Story", Description = "REQUEST_XUAN_STORY",  Interval = 73, AlertTechId = kTechId.None },  
    [kVoiceId.Liberity] = { Sound = "sound/CNTaunts.fev/CUSTOM/Liberity", Description = "REQUEST_LIBERITY",  Interval = 11, AlertTechId = kTechId.None },  
    [kVoiceId.DuiDuiDui] = { Sound = "sound/CNTaunts.fev/CUSTOM/DuiDuiDui", Description = "REQUEST_DUIDUIDUI",  Interval = 31, AlertTechId = kTechId.None },  
    [kVoiceId.Hitme] = { Sound = "sound/CNTaunts.fev/CUSTOM/Hitme", Description = "REQUEST_HITME",  Interval = 8, AlertTechId = kTechId.None },  
    [kVoiceId.CZHL] = { Sound = "sound/CNTaunts.fev/CUSTOM/CZHL", Description = "REQUEST_CZHL",  Interval = 14, AlertTechId = kTechId.None },  
    [kVoiceId.Summer] = { Sound = "sound/CNTaunts.fev/CUSTOM/Summer", Description = "REQUEST_SUMMER",  Interval = 46, AlertTechId = kTechId.None },  

    [kVoiceId.LockerRoom] = { Sound = "sound/CNTaunts.fev/CUSTOM/LockerRoom", Description = "REQUEST_LOCKERROOM",  Interval = 50, AlertTechId = kTechId.None },  
    [kVoiceId.Ah] = { Sound = "sound/CNTaunts.fev/Aniki/ah", Description = "REQUEST_AH",  Interval = 0.75, AlertTechId = kTechId.None },  
    [kVoiceId.Wu] = { Sound = "sound/CNTaunts.fev/Aniki/wu", Description = "REQUEST_WU",  Interval = 0.75, AlertTechId = kTechId.None },  
    [kVoiceId.Slap] = { Sound = "sound/CNTaunts.fev/Aniki/slap", Description = "REQUEST_SLAP",  Interval = 0.75, AlertTechId = kTechId.None },  
    [kVoiceId.AnikiSpeak] = { Sound = "sound/CNTaunts.fev/Aniki/speak", Description = "REQUEST_ANIKI",  Interval = 2, AlertTechId = kTechId.None },  
}

for _, data in pairs(kAdditionalSoundData) do
    PrecacheAsset(data.Sound)
end

local baseGetVoiceSoundData = GetVoiceSoundData
function GetVoiceSoundData(voiceId)
    local addtionalData =kAdditionalSoundData[voiceId]
    if addtionalData then
        return addtionalData
    end
    return baseGetVoiceSoundData(voiceId)
end

local kSpectatorMenu =
{
    [LEFT_MENU] = {kVoiceId.Disease,kVoiceId.OttoOXG, kVoiceId.Slap,kVoiceId.AnikiSpeak,kVoiceId.Ah,kVoiceId.Wu,kVoiceId.AnikiSpeak},
    [RIGHT_MENU] = {kVoiceId.Summer,kVoiceId.LockerRoom,kVoiceId.XuanStory, kVoiceId.OttoStory,kVoiceId.Liberity,kVoiceId.DuiDuiDui}
}

function GetRequestMenuTeam(side, className , teamType)
    if teamType == kNeutralTeamType then
        return kSpectatorMenu[side]
    end

    return GetRequestMenu(side,className)
end

if Client then
    local baseGetVoiceDescriptionText = GetVoiceDescriptionText
    function GetVoiceDescriptionText(voiceId)
        local soundData = kAdditionalSoundData[voiceId]
        if soundData then
            return Locale.ResolveString(soundData.Description)
        end

        return baseGetVoiceDescriptionText(voiceId)
    end
end