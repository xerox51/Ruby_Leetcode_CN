# @param {Integer} n
# @return {Float}
def soup_servings(n)
  n = (n + 24) / 25
  if n >= 179
    return 1.0
  end
  dp = Array.new(n + 1) { Array.new(n + 1, 0.0) }
  for i in 0...dp[0].length
    if i == 0
      dp[0][i] = 0.5
    else
      dp[0][i] = 1.0
    end
  end
  for i in 1...n + 1
    for j in 1...n + 1
      dp[i][j] = (dp[[0, i - 4].max][j] + dp[[0, i - 3].max][[0, j - 1].max] + dp[[0, i - 2].max][[0, j - 2].max] + dp[[0, i - 1].max][[0, j - 3].max]) / 4
    end
  end
  return dp[n][n]
end
