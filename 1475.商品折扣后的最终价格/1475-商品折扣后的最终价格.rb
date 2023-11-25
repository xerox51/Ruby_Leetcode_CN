# @param {Integer[]} prices
# @return {Integer[]}
def final_prices(prices)
  stack = []
  for i in 0...prices.length
    j = i + 1
    while j < prices.length
      if prices[j] <= prices[i]
        stack.push(prices[i] - prices[j])
        break
      end
      if j == prices.length - 1 and prices[j] > prices[i]
        stack.push(prices[i])
        break
      end
      j += 1
    end
  end
  stack.push(prices.last)
  stack
end
