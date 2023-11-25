# @param {Integer[]} nums
# @param {Integer} p
# @return {Integer}
def minimize_max(nums, p)
  nums.sort!
  n = nums.length
  l = 0
  r = 10 ** 9
  while l < r
    mid = ((l + r) >> 1)
    if check(mid, nums, p)
      r = mid
    else
      l = mid + 1
    end
  end
  r
end

def check(mid, nums, p)
  n = nums.length
  cnt = 0
  i = 0
  while i < n - 1
    if nums[i + 1] - nums[i] <= mid
      cnt += 1
      i += 2
    else
      i += 1
    end
  end
  return cnt >= p
end
