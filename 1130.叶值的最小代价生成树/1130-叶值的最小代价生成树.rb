# @param {Integer[]} arr
# @return {Integer}
def mct_from_leaf_values(arr)
  n = arr.length
  dp = Array.new(n) { Array.new(n, 1.0 / 0.0) }
  mval = Array.new(n) { Array.new(n, 0) }
  0.upto(n - 1) do |j|
    mval[j][j] = arr[j]
    dp[j][j] = 0
    (j - 1).downto(0) do |i|
      mval[i][j] = [arr[i], mval[i + 1][j]].max
      (i).upto(j - 1) do |k|
        dp[i][j] = [dp[i][j], dp[i][k] + dp[k + 1][j] + mval[i][k] * mval[k + 1][j]].min
      end
    end
  end
  return dp[0][n - 1]
end
