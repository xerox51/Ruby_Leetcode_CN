# @param {Integer[]} nums
# @return {Integer}
def smallest_equal(nums)
  for i in 0...nums.length
    if i % 10 == nums[i]
      return i
    end
  end
  return -1
end
