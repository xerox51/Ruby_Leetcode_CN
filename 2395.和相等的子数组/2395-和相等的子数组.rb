# @param {Integer[]} nums
# @return {Boolean}
def find_subarrays(nums)
  ans = []
  for i in 0...nums.length - 1
    ans.push(nums[i] + nums[i + 1])
  end
  if ans.uniq.length != ans.length
    return true
  else
    return false
  end
end
