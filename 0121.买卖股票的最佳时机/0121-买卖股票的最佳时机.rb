# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  minprice = 10001
  maxprofit = 0
  for i in 0...prices.length
    if prices[i] < minprice
      minprice = prices[i]
    elsif prices[i] - minprice > maxprofit
      maxprofit = prices[i] - minprice
    end
  end
  return maxprofit
end
