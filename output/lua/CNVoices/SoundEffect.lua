if Client then
    gMuteCustomVoices = false

    local baseOnInitialized = SoundEffect.OnInitialized
    function SoundEffect:OnInitialized()
        baseOnInitialized(self)
        local assetName = Shared.GetSoundName(self.assetIndex)
        self.customVoice = string.find(assetName, "CNTaunts.fev") ~= nil
    end

    local function CustomVoiceMute(self)
        if not self.customVoice then
            return
        end
        if self.playing and self.soundEffectInstance then
            local volume = OptionsDialogUI_GetSoundVolume() / 100
            volume = volume * (gMuteCustomVoices and 0 or 1)
            if self.volume ~= volume then
                self.volume = volume
                self.soundEffectInstance:SetVolume(volume)
            end
        end
    end

    local baseOnUpdate = SoundEffect.OnUpdate
    function SoundEffect:OnUpdate(deltaTime)
        baseOnUpdate(self)
        CustomVoiceMute(self)
    end

    local baseOnProcessMove = SoundEffect.OnProcessMove
    function SoundEffect:OnProcessMove()
        baseOnProcessMove(self)
        CustomVoiceMute(self)
    end

    local baseOnProcessSpectate = SoundEffect.OnProcessSpectate
    function SoundEffect:OnProcessSpectate()
        baseOnProcessSpectate(self)
        CustomVoiceMute(self)
    end
end
