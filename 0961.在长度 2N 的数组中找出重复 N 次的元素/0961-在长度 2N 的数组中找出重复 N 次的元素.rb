# @param {Integer[]} nums
# @return {Integer}
def repeated_n_times(nums)
  nums.sort!
  for i in 0...nums.length
    if i < nums.length - 1 and nums[i] == nums[i + 1]
      return nums[i]
    end
  end
end
