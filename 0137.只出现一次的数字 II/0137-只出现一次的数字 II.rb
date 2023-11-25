# @param {Integer[]} nums
# @return {Integer}
def single_number(nums)
  if nums.length == 1
    return nums[0]
  end
  nums.sort!
  i = 0
  while i < nums.length
    if i == 0 and nums[i] != nums[i + 1]
      return nums[i]
    end
    if i < nums.length - 2 and nums[i] == nums[i + 1] and nums[i + 1] == nums[i + 2]
      i = i + 3
    end
    if i < nums.length - 1 and nums[i] != nums[i + 1]
      return nums[i]
    end
    if i == nums.length - 1
      return nums[i]
    end
  end
end
