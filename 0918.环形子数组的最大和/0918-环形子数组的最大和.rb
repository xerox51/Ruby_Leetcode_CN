# @param {Integer[]} nums
# @return {Integer}
def max_subarray_sum_circular(nums)
  n = nums.length
  leftMax = Array.new(n, 0)
  leftMax[0], leftSum = nums[0], nums[0]
  pre, res = nums[0], nums[0]
  for i in 1...n
    pre = [pre + nums[i], nums[i]].max
    res = [res, pre].max
    leftSum += nums[i]
    leftMax[i] = [leftMax[i - 1], leftSum].max
  end
  rightSum = 0
  (n - 1).downto(1) do |i|
    rightSum += nums[i]
    res = [res, rightSum + leftMax[i - 1]].max
  end
  res
end
