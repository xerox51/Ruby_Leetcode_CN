# @param {Integer[]} nums
# @return {Integer}
def find_value_of_partition(nums)
  nums.sort!
  l = nums.length
  ans = nums[1] - nums[0]
  for i in 0...l - 1
    ans = [ans, nums[i + 1] - nums[i]].min
  end
  ans
end
