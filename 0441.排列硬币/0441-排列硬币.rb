# @param {Integer} n
# @return {Integer}
def arrange_coins(n)
  m = (2 * n).pow(0.5).floor
  if m * (m + 1) / 2 > n
    return m - 1
  else
    return m
  end
end
