# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def subarray_gcd(nums, k)
  ans = 0
  for i in 0...nums.length
    g = 0
    for j in i...nums.length
      g = g.gcd(nums[j])
      if g % k != 0
        break
      end
      if g == k
        ans += 1
      end
    end
  end
  ans
end
