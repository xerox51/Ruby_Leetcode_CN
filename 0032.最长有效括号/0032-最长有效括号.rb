# @param {String} s
# @return {Integer}
def longest_valid_parentheses(s)
  maxans = 0
  dp = Array.new(s.length, 0)
  (1...s.length).each do |i|
    if s[i] == ")"
      if s[i - 1] == "("
        if i >= 2
          dp[i] = dp[i - 2] + 2
        else
          dp[i] = 2
        end
      elsif i - dp[i - 1] > 0 && s[i - dp[i - 1] - 1] == "("
        if i - dp[i - 1] >= 2
          dp[i] = dp[i - 1] + dp[i - dp[i - 1] - 2] + 2
        else
          dp[i] = dp[i - 1] + 2
        end
      end
      maxans = [maxans, dp[i]].max
    end
  end
  maxans
end
