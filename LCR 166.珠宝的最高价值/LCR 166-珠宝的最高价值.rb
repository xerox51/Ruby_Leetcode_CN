# @param {Integer[][]} grid
# @return {Integer}
def max_value(grid)
  dp = Array.new(grid.length) { Array.new(grid[0].length, 0) }
  for i in 0...grid.length
    for j in 0...grid[0].length
      if i > 0
        dp[i][j] = [dp[i][j], dp[i - 1][j]].max
      end
      if j > 0
        dp[i][j] = [dp[i][j], dp[i][j - 1]].max
      end
      dp[i][j] += grid[i][j]
    end
  end
  dp[grid.length - 1][grid[0].length - 1]
end
