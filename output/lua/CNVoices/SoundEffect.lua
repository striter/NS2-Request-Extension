if Client then
    gMuteCustomVoices = false

    function SoundEffect:OnInitialized()
        local assetName = Shared.GetSoundName(self.assetIndex)
        self.customVoice = string.find(assetName, "CNTaunts.fev") ~= nil
    end

    local function CustomVoiceMute(self)
        if not self.customVoice then
            return
        end
        if self.playing and self.soundEffectInstance then
            self.soundEffectInstance:SetVolume(gMuteCustomVoices and 0 or 1)
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
