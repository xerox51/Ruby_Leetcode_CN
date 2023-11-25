# @param {Integer[]} nums
# @return {Boolean}
def can_partition(nums)
  if nums.length < 2
    return false
  end
  if nums.sum.odd?
    return false
  end
  if nums.max > nums.sum / 2
    return false
  end
  target = nums.sum / 2
  dp = Array.new(target + 1, false)
  dp[0] = true
  for i in 0...nums.length
    num = nums[i]
    j = target
    while j >= num
      dp[j] |= dp[j - num]
      j -= 1
    end
  end
  return dp[target]
end
