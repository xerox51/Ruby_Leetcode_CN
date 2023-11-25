# @param {Integer[]} nums
# @return {Integer}
def sum_of_power(nums)
  nums.sort!
  dp, pre_sum = 0, 0
  res, mod = 0, 10 ** 9 + 7
  for i in 0...nums.length
    dp = (nums[i] + pre_sum) % mod
    pre_sum = (pre_sum + dp) % mod
    res = (res + nums[i] * nums[i] * dp) % mod
  end
  res
end
