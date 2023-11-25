# @param {Integer[]} nums
# @return {Integer}
def find_closest_number(nums)
  nums.sort!
  n = nums.bsearch_index { |element| element > 0 }
  if n == nil
    return nums.last
  elsif n == 0
    return nums.first
  elsif n > 0 and nums[n].abs <= nums[n - 1].abs
    return nums[n]
  elsif n > 0 and nums[n].abs > nums[n - 1].abs
    return nums[n - 1]
  end
end
