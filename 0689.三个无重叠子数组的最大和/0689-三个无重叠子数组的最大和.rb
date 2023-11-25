# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}
def max_sum_of_three_subarrays(nums, k)
  ans = Array.new(3, 0)
  sum1, maxSum1, maxSum1Idx = 0, 0, 0
  sum2, maxSum12, maxSum12Idx1, maxSum12Idx2 = 0, 0, 0, 0
  sum3, maxTotal = 0, 0
  for i in 2 * k...nums.length
    sum1 += nums[i - k * 2]
    sum2 += nums[i - k]
    sum3 += nums[i]
    if i >= k * 3 - 1
      if sum1 > maxSum1
        maxSum1 = sum1
        maxSum1Idx = i - k * 3 + 1
      end
      if maxSum1 + sum2 > maxSum12
        maxSum12 = maxSum1 + sum2
        maxSum12Idx1 = maxSum1Idx
        maxSum12Idx2 = i - k * 2 + 1
      end
      if maxSum12 + sum3 > maxTotal
        maxTotal = maxSum12 + sum3
        ans[0] = maxSum12Idx1
        ans[1] = maxSum12Idx2
        ans[2] = i - k + 1
      end
      sum1 -= nums[i - k * 3 + 1]
      sum2 -= nums[i - k * 2 + 1]
      sum3 -= nums[i - k + 1]
    end
  end
  return ans
end
