# @param {Integer[]} nums
# @return {Integer[]}
def single_number(nums)
  nums.sort!
  ans = []
  if nums.length == 2
    return nums
  end
  for i in 1...nums.length - 1
    if i == 1 and nums[i - 1] != nums[i] and nums[i] == nums[i + 1]
      ans.push(nums[i - 1])
    elsif i == 1 and nums[i - 1] != nums[i] and nums[i] != nums[i + 1]
      ans.push(nums[i - 1], nums[i])
    elsif nums[i] != nums[i - 1] and nums[i] != nums[i + 1] and i > 1 and i < nums.length - 2
      ans.push(nums[i])
    elsif i == nums.length - 2 and nums[i - 1] != nums[i] and nums[i + 1] != nums[i]
      ans.push(nums[i], nums[i + 1])
    elsif i == nums.length - 2 and nums[i - 1] == nums[i] and nums[i + 1] != nums[i]
      ans.push(nums[i + 1])
    end
  end
  ans
end
