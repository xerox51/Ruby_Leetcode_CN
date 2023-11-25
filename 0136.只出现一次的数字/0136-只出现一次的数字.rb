# @param {Integer[]} nums
# @return {Integer}
def single_number(nums)
  nums.sort!
  for i in 0...nums.length
    if i == 0 and nums[i] != nums[i + 1]
      return nums[i]
    elsif i < nums.length - 1 and nums[i] != nums[i - 1] and nums[i] != nums[i + 1]
      return nums[i]
    elsif i == nums.length - 1 and nums[i] != nums[i - 1]
      return nums[i]
    end
  end
end
