SimulationCraftProfile = {}
function SimulationCraftProfile:New()
  object = {}
  setmetatable(object, self)
  self.__index = self
  return object
end

function SimulationCraftProfile:ToString()
  return "This is copyable, and from SimulationCraftProfile!"
end
