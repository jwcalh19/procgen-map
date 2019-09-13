local Element = require 'element'
--sample upload
map = {}
pictures = {'grass.png', 'shore.png'}

function love.load()
  for x = 1, 6 do
    map[x] = {}
    for y = 1, 6 do
      map[x][y] = Element:new(pictures[love.math.random(1, 2)])
      map[x][y].x = (map[x][y].img:getWidth() / 2 * (x - 1)) - map[x][y].img:getWidth() / 2 * (y-1)
      map[x][y].y = (map[x][y].img:getHeight() / 3.15 * (x - 1)) + map[x][y].img:getHeight() / 3.15 * (y-1)
    end
  end
end


function love.update(dt)

end


function love.draw()
  for x = 1, 6 do
    for y = 1, 6 do
      love.graphics.draw(map[x][y].img, map[x][y].x, map[x][y].y)
    end
  end
end
