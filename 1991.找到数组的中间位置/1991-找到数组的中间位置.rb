# @param {Integer[]} nums
# @return {Integer}
def find_middle_index(nums)
  for i in 0...nums.length
    if i < nums.length - 1 and nums[0, i].sum == nums[i + 1, nums.length - i - 1].sum
      return i
    end
    if i == nums.length - 1 and nums[0, i].sum == 0
      return i
    end
  end
  return -1
end
