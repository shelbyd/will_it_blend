SimulationCraftProfile = {}
function SimulationCraftProfile:New(profile)
  object = {
    _profile = profile
  }
  setmetatable(object, self)
  self.__index = self
  return object
end

function SimulationCraftProfile:ToString()
  local lines = {
    self._profile.class .. "=\"" .. self._profile.name .. "\"",
    "level=" .. self._profile.level,
  }
  return table.concat(lines, "\n")
end
