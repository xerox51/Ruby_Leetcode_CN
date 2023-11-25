# @param {Integer[]} nums
# @return {Integer}
def max_sub_array(nums)
  a = nums.first
  for i in 1...nums.length
    if nums[i] + nums[i - 1] > nums[i]
      nums[i] += nums[i - 1]
    end
    if nums[i] > a
      a = nums[i]
    end
  end
  a
end
