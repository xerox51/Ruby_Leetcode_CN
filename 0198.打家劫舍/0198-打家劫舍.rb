# @param {Integer[]} nums
# @return {Integer}
def rob(nums)
  len = nums.length
  if len == 1
    return nums[0]
  end
  dp = Array.new(len, 0)
  dp[0] = nums[0]
  dp[1] = [nums[0], nums[1]].max
  for i in 2...len
    dp[i] = [dp[i - 2] + nums[i], dp[i - 1]].max
  end
  return dp[len - 1]
end
