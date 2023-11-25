# @param {Integer} n
# @return {Integer}
def climb_stairs(n)
  p, q, r = 0, 0, 1
  for i in 1..n
    p = q
    q = r
    r = p + q
  end
  return r
end
