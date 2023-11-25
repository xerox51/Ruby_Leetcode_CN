# @param {Integer} n
# @return {Integer}
def trailing_zeroes(n)
  ans = 0
  while n > 0
    n = n / 5
    ans += n
  end
  ans
end
