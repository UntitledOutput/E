local tbl = {
  math.random(1, 10),
  math.random(1, 10),
  math.random(1, 10),
  math.random(1, 10),
  math.random(1, 10),
  math.random(1, 10),
  math.random(1, 10),
  math.random(1, 10),
}

for i, v in pairs(tbl) do
  if v > 5 then
    print(v.." is over 5!")
  end
end
