# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def target_indices(nums, target)
  nums.sort!
  ans = (0...nums.length).select { |item| nums[item] == target }
  ans
end
