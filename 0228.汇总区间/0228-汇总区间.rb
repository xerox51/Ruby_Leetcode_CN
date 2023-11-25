# @param {Integer[]} nums
# @return {String[]}
def summary_ranges(nums)
  ans = []
  start = nums[0]
  for i in 0...nums.length
    if i < nums.length - 1 and nums[i] + 1 == nums[i + 1]
      next
    else
      ended = nums[i]
      if start == ended
        ans.push(start.to_s)
      else
        ans.push(start.to_s + "->" + ended.to_s)
      end
      start = nums[i + 1]
    end
  end
  ans
end
