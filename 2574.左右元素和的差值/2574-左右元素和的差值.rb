# @param {Integer[]} nums
# @return {Integer[]}
def left_rigth_difference(nums)
  left = 0
  right = nums.sum - nums[0]
  ans = []
  nums.each_index do |index|
    if index < nums.length - 1
      ans.push((left - right).abs)
      left = left + nums[index]
      right = right - nums[index + 1]
    else
      ans.push((nums.sum - nums[index] - 0).abs)
    end
  end
  ans
end
