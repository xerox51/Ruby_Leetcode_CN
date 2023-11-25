# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def move_zeroes(nums)
  n = nums.length
  left = 0
  right = 0
  while right < n
    if nums[right] != 0
      nums[left], nums[right] = nums[right], nums[left]
      left += 1
    end
    right += 1
  end
end
