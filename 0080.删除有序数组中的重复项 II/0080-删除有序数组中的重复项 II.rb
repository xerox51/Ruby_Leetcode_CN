# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
  n = nums.length
  if n <= 2
    return n
  end
  slow, fast = 2, 2
  while fast < n
    if nums[slow - 2] != nums[fast]
      nums[slow] = nums[fast]
      slow += 1
    end
    fast += 1
  end
  slow
end
