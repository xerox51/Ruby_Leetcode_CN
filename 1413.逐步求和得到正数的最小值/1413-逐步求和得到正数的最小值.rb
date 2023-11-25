# @param {Integer[]} nums
# @return {Integer}
def min_start_value(nums)
  temp = nums[0]
  ans = nums[0]
  for i in 1...nums.length
    ans += nums[i]
    temp = [temp, ans].min
  end
  if temp >= 0
    return 1
  else
    return temp.abs + 1
  end
end
