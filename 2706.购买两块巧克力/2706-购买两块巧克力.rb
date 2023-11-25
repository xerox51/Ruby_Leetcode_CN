# @param {Integer[]} prices
# @param {Integer} money
# @return {Integer}
def buy_choco(prices, money)
  m = prices.length
  a = prices.min
  prices.delete(a)
  l = prices.length
  n = prices.min
  if m - l >= 2
    if 2 * a > money
      return money
    else
      return money - 2 * a
    end
  else
    if a + n > money
      return money
    else
      return money - a - n
    end
  end
end
