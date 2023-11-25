# @param {Integer} n
# @return {Integer}
def pivot_integer(n)
  ans = -1
  for i in 1..n
    if (1 + i) * i / 2 == (i + n) * (n - i + 1) / 2
      ans = i
      break
    end
  end
  ans
end
