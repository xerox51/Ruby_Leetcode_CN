# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def purchase_plans(nums, target)
  nums.sort!
  a = nums[0]
  mod = 10 ** 9 + 7
  if a >= target
    return 0
  end
  total = 0
  for i in 0...nums.length
    ans = nums.bsearch_index { |item| item > target - nums[i] }
    if ans != nil and nums[ans] <= nums[i]
      total += ans
    elsif ans != nil and nums[ans] > nums[i]
      total += ans - 1
    else
      total += nums.length - 1
    end
  end
  (total / 2) % mod
end
