# @param {Integer[]} nums
# @return {Integer}
def find_duplicate(nums)
  slow, fast = 0, 0
  slow = nums[slow]
  fast = nums[nums[fast]]
  while slow != fast
    slow = nums[slow]
    fast = nums[nums[fast]]
  end
  slow = 0
  while slow != fast
    slow = nums[slow]
    fast = nums[fast]
  end
  slow
end
