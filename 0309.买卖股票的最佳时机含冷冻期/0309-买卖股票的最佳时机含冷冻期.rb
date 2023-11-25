# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  unless prices.length != 0 then return 0 end
  n = prices.length
  f0, f1, f2 = -prices[0], 0, 0
  for i in 1...n
    newf0 = [f0, f2 - prices[i]].max
    newf1 = f0 + prices[i]
    newf2 = [f1, f2].max
    f0, f1, f2 = newf0, newf1, newf2
  end
  [f1, f2].max
end
