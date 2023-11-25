# @param {Integer[]} nums
# @return {Integer}
def sum_counts(nums)
  n = nums.length
  ans = 0
  mod = 10 ** 9 + 7
  for i in 0...n
    for j in 1..n
      if j + i <= n
        ans += nums[i, j].uniq.length ** 2
      end
    end
  end
  ans % mod
end
