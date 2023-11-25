# @param {Integer[]} nums
# @return {Integer}
def rob(nums)
  len = nums.length
  if len == 1
    return nums[0]
  elsif len == 2
    return [nums[0], nums[1]].max
  else
    return [robrange(nums, 0, len - 2), robrange(nums, 1, len - 1)].max
  end
end

def robrange(nums, start, ending)
  first = nums[start]
  second = [nums[start], nums[start + 1]].max
  for i in start + 2..ending
    first, second = second, [first + nums[i], second].max
  end
  return second
end
