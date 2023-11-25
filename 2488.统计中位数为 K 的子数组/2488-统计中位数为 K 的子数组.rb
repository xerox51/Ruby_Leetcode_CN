# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def count_subarrays(nums, k)
  kindex = -1
  nums.each_with_index do |item, index|
    if item == k
      kindex = index
      break
    end
  end
  ans = 0
  counts = {}
  counts[0] = 1
  total = 0
  nums.each_with_index do |item, index|
    total += sign(item - k)
    if index < kindex
      if counts.has_key?(total)
        counts[total] += 1
      else
        counts[total] = 1
      end
    else
      if counts.has_key?(total)
        prev0 = counts[total]
      else
        prev0 = 0
      end
      if counts.has_key?(total - 1)
        prev1 = counts[total - 1]
      else
        prev1 = 0
      end
      ans += (prev0 + prev1)
    end
  end
  return ans
end

def sign(num)
  if num == 0
    return 0
  end
  if num > 0
    return 1
  end
  return -1
end
