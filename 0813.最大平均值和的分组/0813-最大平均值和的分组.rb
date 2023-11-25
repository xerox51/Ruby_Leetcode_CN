# @param {Integer[]} nums
# @param {Integer} k
# @return {Float}
def largest_sum_of_averages(nums, k)
  n = nums.length
  prefix = []
  for i in 0..nums.length
    prefix.push(nums[0, i].sum)
  end
  dp = Array.new(n + 1) { Array.new(k + 1, 0) }
  for i in 1..n
    dp[i][1] = prefix[i] / i.to_f
  end
  for j in 2..k
    for i in j..n
      for x in j - 1...i
        dp[i][j] = [dp[i][j], dp[x][j - 1] + (prefix[i] - prefix[x]) / (i - x).to_f].max
      end
    end
  end
  dp[n][k]
end
