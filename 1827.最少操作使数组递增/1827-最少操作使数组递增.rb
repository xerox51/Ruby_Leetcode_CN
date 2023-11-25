# @param {Integer[]} nums
# @return {Integer}
def min_operations(nums)
  i = 0
  ans = 0
  while i < nums.length
    if i < nums.length - 1 and nums[i] >= nums[i + 1]
      ans += nums[i] - nums[i + 1] + 1
      nums[i + 1] = nums[i] + 1
    end
    i += 1
  end
  return ans
end
