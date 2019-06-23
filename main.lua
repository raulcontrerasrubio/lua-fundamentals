-- Conditions and flow control structures
local message = 0
local condition = -25

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

--- increment(var, amount, times).
-- Increments the variable on times * amount value.
-- @param var The initial variable. If not provided, 0 by default.
-- @param amount The amount to add to the variable on each cycle.
-- @param times The number of cycles.
-- @return A new number.
function increment(var, amount, times)
  if not var then var = 0 end
  if not amount or not times then return var end
  local value = var

  for j = 0, times-1, 1 do
    value = value + amount
  end
  return value
end


function printNumber()
  love.graphics.print(increment(100, 40, 0))
end


-- Tables
testScores = {95, 87, 98}
testScores.subject = "History"
res = 0
for i, value in ipairs(testScores) do
  res = res + value * i
end

function love.draw()
  love.graphics.setFont(love.graphics.newFont((50)))
  -- love.graphics.print(message)
  -- love.graphics.print(pickle)
  -- printNumber()
  love.graphics.print(res)
end
