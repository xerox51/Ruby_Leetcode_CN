# @param {Integer[]} nums
# @return {Integer}
def maximum_difference(nums)
  ans = 0
  for i in 0...nums.length - 1
    for j in i + 1...nums.length
      ans = [ans, nums[j] - nums[i]].max
    end
  end
  if ans == 0
    return -1
  else
    return ans
  end
end
