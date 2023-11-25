# @param {Integer[]} nums
# @return {Integer}
def minimum_right_shifts(nums)
  a = nums.sort
  b = nums.length
  if a == nums
    return 0
  end
  for i in 0...b
    c = nums[-1]
    nums[1, b - 1] = nums[0, b - 1]
    nums[0] = c
    if nums == a
      return i + 1
    end
  end
  return -1
end
