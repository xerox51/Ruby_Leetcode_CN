# @param {Integer[]} nums
# @return {Integer}
def missing_number(nums)
  nums.sort!
  for i in 0...nums.length
    if nums[i] != i
      return i
    end
    if i == nums.length - 1 and nums[i] == i
      return nums.length
    end
  end
end
