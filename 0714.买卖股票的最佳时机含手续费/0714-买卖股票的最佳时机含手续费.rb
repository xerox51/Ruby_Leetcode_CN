# @param {Integer[]} prices
# @param {Integer} fee
# @return {Integer}
def max_profit(prices, fee)
  n = prices.length
  buy = prices[0] + fee
  profit = 0
  for i in 1...n
    if prices[i] + fee < buy
      buy = prices[i] + fee
    elsif prices[i] > buy
      profit += prices[i] - buy
      buy = prices[i]
    end
  end
  profit
end
