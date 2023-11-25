# @param {Integer} k
# @param {Integer[]} prices
# @return {Integer}
def max_profit(k, prices)
  unless prices then return 0 end
  n = prices.length
  k = [k, n / 2].min
  buy = Array.new(k + 1, 0)
  sell = Array.new(k + 1, 0)
  buy[0], sell[0] = -prices[0], 0
  1.upto(k) do |i|
    sell[i] = -1.0 / 0.0
    buy[i] = sell[i]
  end
  1.upto(n - 1) do |i|
    buy[0] = [buy[0], sell[0] - prices[i]].max
    1.upto(k) do |j|
      buy[j] = [buy[j], sell[j] - prices[i]].max
      sell[j] = [sell[j], buy[j - 1] + prices[i]].max
    end
  end
  sell.max
end
