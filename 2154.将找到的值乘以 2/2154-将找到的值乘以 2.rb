# @param {Integer[]} nums
# @param {Integer} original
# @return {Integer}
def find_final_value(nums, original)
  h = {}
  for i in 0...nums.length
    h[nums[i]] = i
  end
  while h.has_key?(original)
    original = original * 2
  end
  return original
end
