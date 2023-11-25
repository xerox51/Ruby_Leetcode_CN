# @param {Integer[]} coins
# @return {Integer}
def get_maximum_consecutive(coins)
  res = 1
  coins.sort!
  coins.each do |item|
    if item > res
      break
    end
    res += item
  end
  res
end
