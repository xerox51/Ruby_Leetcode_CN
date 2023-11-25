# @param {Integer[]} nums
# @return {Integer}
def max_alternating_sum(nums)
  even, odd = nums[0], 0
  for i in 1...nums.length
    even, odd = [even, odd + nums[i]].max, [odd, even - nums[i]].max
  end
  even
end
