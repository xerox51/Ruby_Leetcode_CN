# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
  nums.sort!
  n = nums.length
  m = nums[n / 2]
  if nums.count(m) > n / 2
    return m
  else
    return -1
  end
end
