-- Conditions and flow control structures

message = 0
condition = -25

if condition > 0 then
  message = 1
elseif condition < -100 then
  message = -1
elseif condition == -25 then
  message = 'Condition is equal to 25'
else
  message = 'No conditions met!'
end

function love.draw()
  love.graphics.setFont(love.graphics.newFont((50)))
  love.graphics.print(message)
end
