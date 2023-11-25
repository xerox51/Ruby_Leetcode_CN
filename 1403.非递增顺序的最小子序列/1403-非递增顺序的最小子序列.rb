# @param {Integer[]} nums
# @return {Integer[]}
def min_subsequence(nums)
  nums.sort!
  nums.reverse!
  i = 0
  ans = []
  while i < nums.length
    ans.push(nums[i])
    if i < nums.length - 1 and ans.sum > nums[i + 1, nums.length - i - 1].sum
      break
    end
    i += 1
  end
  return ans
end
