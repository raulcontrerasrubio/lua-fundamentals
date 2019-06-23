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

-- Loops
num = 0
test = 0
while num < 10 do
  num = num + 1
  test = test - 5
end

pickle = 0
for i = 1, 3, 1 do
  pickle = (pickle + 10) * i
end

function increment(var, amount, times)
  if not var then
    var = 0
  end

  for j = 0, times-1, 1 do
    var = var + amount
  end
  return var
end


function love.draw()
  love.graphics.setFont(love.graphics.newFont((50)))
  -- love.graphics.print(message)
  -- love.graphics.print(pickle)
  value = increment(1004, 3, 45)
  love.graphics.print(value)
end
