# @param {Integer[]} nums
# @return {Integer}
def largest_perimeter(nums)
  nums.sort!
  for i in 0...nums.length - 2
    if nums[nums.length - i - 3] + nums[nums.length - i - 2] > nums[nums.length - i - 1]
      return nums[nums.length - i - 1] + nums[nums.length - i - 2] + nums[nums.length - i - 3]
    end
  end
  return 0
end
