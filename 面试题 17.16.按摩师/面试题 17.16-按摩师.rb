# @param {Integer[]} nums
# @return {Integer}
def massage(nums)
  n = nums.length
  if n == 0
    return 0
  end
  dp0, dp1 = 0, nums[0]
  for i in 1...n
    tdp0 = [dp0, dp1].max
    tdp1 = dp0 + nums[i]
    dp0 = tdp0
    dp1 = tdp1
  end
  [dp0, dp1].max
end
