# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}
def max_sliding_window(nums, k)
  n = nums.length
  q = []
  for i in 0...k
    while q.length > 0 && nums[i] >= nums[q[-1]]
      q.pop
    end
    q.push(i)
  end
  ans = [nums[q[0]]]
  for i in k...n
    while q.length > 0 && nums[i] >= nums[q[-1]]
      q.pop
    end
    q.push(i)
    while q.length > 0 && q[0] <= i - k
      q.shift
    end
    if q.length > 0
      ans.push(nums[q[0]])
    end
  end
  ans
end
