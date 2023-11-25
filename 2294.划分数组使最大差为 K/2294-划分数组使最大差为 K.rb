# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def partition_array(nums, k)
  nums.sort!
  i = 0
  j = 0
  ans = 0
  while i < nums.length
    if nums[i] - nums[j] > k
      ans += 1
      j = i
    end
    i += 1
  end
  return ans + 1
end
