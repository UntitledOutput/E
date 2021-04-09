local min = -10
local max = 10

local tbl = {
  math.random(min, max),
  math.random(min, max),
  math.random(min, max),
  math.random(min, max),
  math.random(min, max),
  math.random(min, max),
  math.random(min, max),
  math.random(min, max),
  math.random(min, max),
  math.random(min, max),
  math.random(min, max),
}

for i, v in pairs(tbl) do
  if v > 5 then
    print(v.." is over 5!")
  else
    print(v.."is not over 5.")
  end
end
