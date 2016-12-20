WillItBlend = LibStub("AceAddon-3.0"):NewAddon("WillItBlend")
AceConsole = LibStub("AceConsole-3.0")

function WillItBlend:OnInitialize()
  AceConsole:Print("Hello, World!")
  AceConsole:RegisterChatCommand("blend", HandleBlendChatCommand)
end

function WillItBlend:OnEnable()
end

function WillItBlend:OnDisable()
end

function HandleBlendChatCommand(input)
  -- local CharacterProfile = GetCharacterProfile()
  -- local SimulationCraftProfile = SimulationCraftProfile:New(CharacterProfile)
  local SimulationCraftProfile = SimulationCraftProfile:New()
  ShowCopyableText(SimulationCraftProfile:ToString())
end

function ShowCopyableText(text)
  WibCopyFrame:Show()
  WibCopyFrameScroll:Show()
  WibCopyFrameScrollText:Show()
  WibCopyFrameScrollText:SetText(text)
  WibCopyFrameScrollText:HighlightText()
end
