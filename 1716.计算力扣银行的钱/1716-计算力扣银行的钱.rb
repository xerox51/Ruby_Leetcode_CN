# @param {Integer} n
# @return {Integer}
def total_money(n)
  ans = 0
  start = 1
  while n > 0
    if n >= 7
      ans += (start + start + 6) * 7 / 2
      start += 1
      n -= 7
    else
      ans += (start + start + n - 1) * n / 2
      n = 0
    end
  end
  ans
end
