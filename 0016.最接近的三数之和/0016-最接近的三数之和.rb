# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def three_sum_closest(nums, target)
  nums.sort!
  n = nums.length
  best = 10 ** 7

  for i in 0...n
    if i > 0 and nums[i] == nums[i - 1]
      next
    end
    j, k = i + 1, n - 1
    while j < k
      s = nums[i] + nums[j] + nums[k]
      if s == target
        return target
      end
      if (s - target).abs < (best - target).abs
        best = s
      end
      if s > target
        k0 = k - 1
        while j < k0 and nums[k0] == nums[k]
          k0 -= 1
        end
        k = k0
      else
        j0 = j + 1
        while j0 < k and nums[j0] == nums[j]
          j0 += 1
        end
        j = j0
      end
    end
  end
  best
end
