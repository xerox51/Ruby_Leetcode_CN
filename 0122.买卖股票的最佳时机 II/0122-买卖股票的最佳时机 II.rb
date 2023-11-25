# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  ans = 0
  for i in 1...prices.length
    ans += [0, prices[i] - prices[i - 1]].max
  end
  return ans
end
