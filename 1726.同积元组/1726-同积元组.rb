# @param {Integer[]} nums
# @return {Integer}
def tuple_same_product(nums)
  h = {}
  for i in 0...nums.length
    for j in i + 1...nums.length
      if h.has_key?(nums[i] * nums[j])
        h[nums[i] * nums[j]] += 1
      else
        h[nums[i] * nums[j]] = 1
      end
    end
  end
  ans = 0
  h.each_pair do |key, value|
    ans += value * (value - 1) * 4
  end
  ans
end
