# @param {Integer[]} nums
# @return {Integer}
def max_value_after_reverse(nums)
  value, n = 0, nums.length
  (0...n - 1).each do |i|
    value += (nums[i] - nums[i + 1]).abs
  end
  mx1 = 0
  (1...n - 1).each do |i|
    mx1 = [mx1, (nums[0] - nums[i + 1]).abs - (nums[i] - nums[i + 1]).abs].max
    mx1 = [mx1, (nums[n - 1] - nums[i - 1]).abs - (nums[i] - nums[i - 1]).abs].max
  end
  mx2, mn2 = (-3) * (10 ** 9), 3 * (10 ** 9)
  (0...n - 1).each do |i|
    x, y = nums[i], nums[i + 1]
    mx2 = [mx2, [x, y].min].max
    mn2 = [mn2, [x, y].max].min
  end
  value + [mx1, 2 * (mx2 - mn2)].max
end
