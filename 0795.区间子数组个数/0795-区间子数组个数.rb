# @param {Integer[]} nums
# @param {Integer} left
# @param {Integer} right
# @return {Integer}
def num_subarray_bounded_max(nums, left, right)
  res = 0
  last2, last1 = -1, -1
  for i in 0...nums.length
    if left <= nums[i] and nums[i] <= right
      last1 = i
    elsif nums[i] > right
      last2 = i
      last1 = -1
    end
    if last1 != -1
      res += last1 - last2
    end
  end
  res
end
