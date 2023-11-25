# @param {Integer[]} nums
# @return {Integer}
def max_ascending_sum(nums)
  if nums.length == 1
    return nums[0]
  end
  ans = []
  temp = nums[0]
  for i in 1...nums.length
    if nums[i - 1] < nums[i] and i != nums.length - 1
      temp += nums[i]
    elsif nums[i - 1] < nums[i] and i == nums.length - 1
      temp += nums[i]
      ans.push(temp)
    else
      ans.push(temp)
      temp = nums[i]
    end
  end
  ans.max
end
