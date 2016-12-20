CharacterProfile = {}

function CharacterProfile:New(api)
  object = {
    _api = api
  }
  setmetatable(object, self)
  self.__index = self
  return object
end
