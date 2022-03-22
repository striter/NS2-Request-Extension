if Client then
        gMuteCustomVoices = false

        local function DestroySoundEffect(self)
        
            if self.soundEffectInstance then
            
                Client.DestroySoundEffect(self.soundEffectInstance)
                self.soundEffectInstance = nil
                
            end
            
        end
----------
        function SoundEffect:OnInitialized()
            local assetName = Shared.GetSoundName(self.assetIndex)
            local customVoice = string.find(assetName,"CNTaunts.fev") ~= nil
            self.muted = gMuteCustomVoices and customVoice
        end
----------
        function SoundEffect:OnDestroy()
            DestroySoundEffect(self)
        end
        
        --[[
        XXX Must be fixable ... the predictorId does what?
        XXX fieldwatcher on assetIndex and positional? Is it really required for positional? Or assetIndex for that matter...
        XXX should we not do this in Initialize?
        XXX ensure fieldwatcher works / gets called whenever an entity is created on client?
        --]]
        local function SharedUpdate(self)
            if  self.muted then
                return
            end

            PROFILE("SoundEffect:SharedUpdate")
            
            if self.predictorId ~= Entity.invalidId then
            
                local predictor = Shared.GetEntity(self.predictorId)
                if Client.GetLocalPlayer() == predictor and Client.GetIsControllingPlayer() then
                    return
                end
                
            end
           
            if self.clientAssetIndex ~= self.assetIndex then
            
                DestroySoundEffect(self)
                
                self.clientAssetIndex = self.assetIndex
                
                if self.assetIndex ~= 0 then
                
                    self.soundEffectInstance = Client.CreateSoundEffect(self.assetIndex)
                    self.soundEffectInstance:SetParent(self:GetId())
                    
                end
            
            end
            
            -- Only attempt to play if the index seems valid.
            if self.assetIndex ~= 0 then
            
                if self.clientPlaying ~= self.playing or self.clientStartTime ~= self.startTime then
                
                    self.clientPlaying = self.playing
                    self.clientStartTime = self.startTime
                    
                    if self.playing then
                    
                        self.soundEffectInstance:Start()
                        self.soundEffectInstance:SetVolume(self.volume)
                        if self.clientSetParameters then
                        
                            for c = 1, #self.clientSetParameters do
                            
                                local param = self.clientSetParameters[c]
                                self.soundEffectInstance:SetParameter(param.name, param.value, param.speed)
                                
                            end
                            self.clientSetParameters = nil
                            
                        end
                        
                    else
                        self.soundEffectInstance:Stop()
                    end
                    
                end
                
            end
            
            -- Update 3D positional setting.
            if self.soundEffectInstance and self.clientPositional ~= self.positional then
            
                self.soundEffectInstance:SetPositional(self.positional)
                self.clientPositional = self.positional
                
            end
            
        end
        
        function SoundEffect:OnUpdate(deltaTime)
            SharedUpdate(self)
        end
        
        function SoundEffect:OnProcessMove()
            SharedUpdate(self)
        end
        
        function SoundEffect:OnProcessSpectate()
            SharedUpdate(self)
        end
end
