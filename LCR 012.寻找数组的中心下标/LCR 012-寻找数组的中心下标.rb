# @param {Integer[]} nums
# @return {Integer}
def pivot_index(nums)
  left = 0
  right = nums.sum - nums[0]
  i = 0
  if left == right
    return 0
  end
  while left != right and i < nums.length - 1
    left = left + nums[i]
    right = right - nums[i + 1]
    if left == right
      return i + 1
    end
    if i == nums.length - 2 and left != right
      break
    end
    i += 1
  end
  return -1
end
