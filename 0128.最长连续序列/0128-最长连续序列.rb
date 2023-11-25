# @param {Integer[]} nums
# @return {Integer}
def longest_consecutive(nums)
  if nums.length == 0
    return 0
  end
  nums.sort!
  len = 1
  ans = [1]
  for i in 0...nums.length - 1
    if i >= 0 and i <= nums.length - 3 and nums[i + 1] - nums[i] == 1
      len += 1
    elsif i >= 0 and nums[i + 1] - nums[i] > 1
      ans.push(len)
      len = 1
    elsif i == nums.length - 2 and nums[i + 1] - nums[i] == 1
      len += 1
      ans.push(len)
    elsif i == nums.length - 2 and nums[i + 1] - nums[i] == 0
      ans.push(len)
    end
  end
  ans.max
end
