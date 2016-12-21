require("SimulationCraftProfile")

local function contains(state, arguments)
  local testString = arguments[1]
  local subString = arguments[2]

  return string.match(testString, subString)
end
assert:register("assertion", "contains", contains)

local function basicProfile()
  return {
    name = "Foobar",
    class = "mage",
    level = 110,
  }
end

local function subject()
  return SimulationCraftProfile:New(basicProfile())
end

describe("SimulationCraftProfile", function()
  describe("#ToString", function()
    it("includes character name", function()
      assert.contains(subject():ToString(), "mage=\"Foobar\"")
    end)

    it("includes character level", function()
      assert.contains(subject():ToString(), "level=110")
    end)

    it("separates name and level with a newline", function()
      assert.contains(subject():ToString(), "Foobar\"\nlevel")
    end)
  end)
end)
