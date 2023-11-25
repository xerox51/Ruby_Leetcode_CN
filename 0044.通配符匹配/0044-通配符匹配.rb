# @param {String} s
# @param {String} p
# @return {Boolean}
def is_match(s, p)
  m, n = s.length, p.length
  dp = Array.new(m + 1) { Array.new(n + 1, false) }
  dp[0][0] = true
  1.upto(n) do |i|
    if p[i - 1] == "*"
      dp[0][i] = true
    else
      break
    end
  end
  1.upto(m) do |i|
    1.upto(n) do |j|
      if p[j - 1] == "*"
        dp[i][j] = dp[i][j - 1] | dp[i - 1][j]
      elsif p[j - 1] == "?" || s[i - 1] == p[j - 1]
        dp[i][j] = dp[i - 1][j - 1]
      end
    end
  end
  dp[m][n]
end
