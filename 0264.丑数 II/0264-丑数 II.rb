# @param {Integer} n
# @return {Integer}
def nth_ugly_number(n)
  dp = Array.new(n + 1, 0)
  dp[1] = 1
  p2, p3, p5 = 1, 1, 1
  for i in 2..n
    num2 = dp[p2] * 2
    num3 = dp[p3] * 3
    num5 = dp[p5] * 5
    dp[i] = [[num2, num3].min, num5].min
    if dp[i] == num2
      p2 += 1
    end
    if dp[i] == num3
      p3 += 1
    end
    if dp[i] == num5
      p5 += 1
    end
  end
  dp[n]
end
