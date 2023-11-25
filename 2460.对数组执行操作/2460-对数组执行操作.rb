# @param {Integer[]} nums
# @return {Integer[]}
def apply_operations(nums)
  for i in 0...nums.length - 1
    if nums[i] == nums[i + 1]
      nums[i] *= 2
      nums[i + 1] = 0
    end
  end
  n_zero = nums.select { |item| item > 0 }
  zero = nums.select { |item| item == 0 }
  nums = n_zero.concat(zero)
end
