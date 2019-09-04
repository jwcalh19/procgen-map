local Element = require 'element'

function love.load()
    foo = Element:new('city.jpg')
end


function love.update(dt)

end


function love.draw()
    love.graphics.print('hello, world')
    love.graphics.draw(foo.img, foo.x, foo.y)
end