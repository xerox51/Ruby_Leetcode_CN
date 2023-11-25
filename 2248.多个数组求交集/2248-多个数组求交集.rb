# @param {Integer[][]} nums
# @return {Integer[]}
def intersection(nums)
  ans = nums[0]
  for i in 1...nums.length
    ans = ans.intersection(nums[i])
  end
  return ans.sort
end
