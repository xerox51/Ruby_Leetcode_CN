# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def sort_colors(nums)
  n = nums.length
  ptr = 0
  for i in 0...n
    if nums[i] == 0
      nums[i], nums[ptr] = nums[ptr], nums[i]
      ptr += 1
    end
  end
  for i in ptr...n
    if nums[i] == 1
      nums[i], nums[ptr] = nums[ptr], nums[i]
      ptr += 1
    end
  end
end
