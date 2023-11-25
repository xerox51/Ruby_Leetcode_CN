# @param {Integer[]} nums
# @param {Integer} diff
# @return {Integer}
def arithmetic_triplets(nums, diff)
  ans = 0
  h = {}
  for i in 0...nums.length
    h[nums[i]] = i
  end
  for i in 0...nums.length
    if h.has_key?(nums[i] + diff) and h.has_key?(nums[i] + diff + diff)
      ans += 1
    end
  end
  return ans
end
