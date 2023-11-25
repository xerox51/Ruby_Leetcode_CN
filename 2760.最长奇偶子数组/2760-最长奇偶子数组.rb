# @param {Integer[]} nums
# @param {Integer} threshold
# @return {Integer}
def longest_alternating_subarray(nums, threshold)
  ans = 0
  m = nums.length
  nums.each_with_index do |item, index|
    ans = [ans, judge(index, nums, threshold)].max
    if ans >= m - index
      break
    end
  end
  ans
end

def judge(l, nums, threshold)
  i = l
  k = l
  if nums[i] % 2 != 0
    return 0
  end
  n1 = nil
  n2 = nil
  while i < nums.length
    if i < nums.length - 1 && nums[i] % 2 == nums[i + 1] % 2
      n1 = i
      break
    end
    i += 1
  end
  while k < nums.length
    if nums[k] > threshold
      n2 = k
      break
    end
    k += 1
  end
  if n1 == nil and n2 == nil
    return nums.length - l
  elsif n1 != nil and n2 == nil
    return n1 - l + 1
  elsif n1 == nil and n2 != nil
    return n2 - l
  else
    return [n1 - l + 1, n2 - l].min
  end
end
