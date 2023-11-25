# @param {Integer[]} nums
# @return {Boolean}
def is_monotonic(nums)
  nums.sort == nums || nums.sort.reverse == nums
end
