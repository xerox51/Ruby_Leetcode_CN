# @param {Integer} num_bottles
# @param {Integer} num_exchange
# @return {Integer}
def num_water_bottles(num_bottles, num_exchange)
  ans = 0
  m = num_bottles
  n = num_exchange
  v = m
  ans += v
  while v >= n
    s = v / n
    v = v - s * n + s
    ans += s
  end
  ans
end
