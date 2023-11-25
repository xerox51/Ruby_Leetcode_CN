# @param {Integer[]} nums
# @param {Integer} k
# @return {Boolean}
def contains_nearby_duplicate(nums, k)
  h = {}
  for i in 0...nums.length
    if i > k
      h.delete(nums[i - k - 1])
    end
    if h.has_key?(nums[i])
      return true
    end
    h[nums[i]] = 1
  end
  return false
end
