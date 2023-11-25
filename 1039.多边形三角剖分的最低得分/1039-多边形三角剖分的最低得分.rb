# @param {Integer[]} values
# @return {Integer}
def min_score_triangulation(values)
  n = values.length
  dp = Array.new(n) { Array.new(n, 0) }
  for r in 2...n
    (r - 2).downto(0) do |l|
      dp[l][r] = values[l] * values[r] * values[l + 1] + dp[l][l + 1] + dp[l + 1][r]
      for m in l + 1...r
        dp[l][r] = [dp[l][r], values[l] * values[r] * values[m] + dp[l][m] + dp[m][r]].min
      end
    end
  end
  dp[0][n - 1]
end
