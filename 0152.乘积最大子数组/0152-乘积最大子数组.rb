# @param {Integer[]} nums
# @return {Integer}
def max_product(nums)
  maxf, minf, ans = nums[0], nums[0], nums[0]
  for i in 1...nums.length
    mx, mn = maxf, minf
    maxf = [mx * nums[i], nums[i], mn * nums[i]].max
    minf = [mn * nums[i], nums[i], mx * nums[i]].min
    ans = [maxf, ans].max
  end
  ans
end
