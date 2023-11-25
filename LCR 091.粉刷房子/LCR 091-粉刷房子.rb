# @param {Integer[][]} costs
# @return {Integer}
def min_cost(costs)
  dp = costs[0]
  for i in 1...costs.length
    dpnew = Array.new(3, 0)
    for j in 0...costs[i].length
      dpnew[j] = [dp[(j + 1) % 3], dp[(j + 2) % 3]].min + costs[i][j]
    end
    dp = dpnew
  end
  return [[dp[0], dp[1]].min, dp[2]].min
end
