# @param {Integer[]} nums
# @return {Integer}
def min_deletion(nums)
  n = nums.length
  ans = 0
  check = true
  for i in 0...n - 1
    if nums[i] == nums[i + 1] && check
      ans += 1
    else
      check = !check
    end
  end
  if (n - ans) % 2 != 0
    ans += 1
  end
  ans
end
