# @param {Integer[]} nums
# @param {Integer[]} nums_divide
# @return {Integer}
def min_operations(nums, nums_divide)
  nums.sort!
  n = nums.uniq.length
  arr = nums.uniq
  ndivide = nums_divide.uniq
  if nums.first == 1
    return 0
  end
  flag = find_index(nums[0], ndivide)
  if flag
    return 0
  end
  temp = nil
  for i in 0...arr.length
    if find_index(arr[i], ndivide)
      temp = i
      break
    end
  end
  if temp == nil
    return -1
  else
    return nums.bsearch_index { |item| item >= arr[temp] }
  end
end

def find_index(num, items)
  for item in items
    if item % num != 0
      return false
    end
  end
  return true
end
