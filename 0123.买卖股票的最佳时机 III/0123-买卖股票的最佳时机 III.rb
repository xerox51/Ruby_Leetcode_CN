# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  n = prices.length
  buy1, buy2 = -prices[0], -prices[0]
  sell1, sell2 = 0, 0
  for i in 1...n
    buy1 = [buy1, -prices[i]].max
    sell1 = [sell1, buy1 + prices[i]].max
    buy2 = [buy2, sell1 - prices[i]].max
    sell2 = [sell2, buy2 + prices[i]].max
  end
  sell2
end
