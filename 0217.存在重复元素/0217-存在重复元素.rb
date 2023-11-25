# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums)
  return nums.uniq.length != nums.length
end
