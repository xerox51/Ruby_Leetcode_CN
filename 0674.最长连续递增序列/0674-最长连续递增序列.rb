# @param {Integer[]} nums
# @return {Integer}
def find_length_of_lcis(nums)
  if nums.length == 1
    return 1
  end
  ans = []
  temp = 1
  for i in 0...nums.length - 1
    if nums[i] < nums[i + 1] and i < nums.length - 2
      temp += 1
    elsif nums[i] >= nums[i + 1] and i < nums.length - 2
      ans.push(temp)
      temp = 1
    elsif i == nums.length - 2 and nums[i] < nums[i + 1]
      temp += 1
      ans.push(temp)
    elsif i == nums.length - 2 and nums[i] >= nums[i + 1]
      ans.push(temp)
    end
  end
  ans.max
end
