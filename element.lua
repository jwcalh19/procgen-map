local Element = {}

function Element:new(img)
  local element = {
    img = love.graphics.newImage(img),
    x = 0,
    y = 0,
  }
  setmetatable(self, element)
  self.__index = self
  return element
end

return Element