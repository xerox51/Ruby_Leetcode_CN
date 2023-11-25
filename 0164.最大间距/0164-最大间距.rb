# @param {Integer[]} nums
# @return {Integer}
def maximum_gap(nums)
  if nums.length < 2
    return 0
  end
  nums.sort!
  ans = 0
  for i in 0...nums.length
    if i != nums.length - 1
      ans = [ans, nums[i + 1] - nums[i]].max
    end
  end
  return ans
end
