# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
  h = {}
  for i in 0...nums.length
    h[nums[i]] = i
  end
  if h.has_key?(target)
    return h[target]
  else
    return -1
  end
end
