# @param {Integer[]} nums
# @return {Integer}
def find_magic_index(nums)
  start = 0
  while start < nums.length
    if nums[start] > start
      start = nums[start]
    elsif nums[start] == start
      return start
    else
      start += 1
    end
  end
  return -1
end
