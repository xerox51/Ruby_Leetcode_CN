# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def search_range(nums, target)
  left = 0
  right = nums.length - 1
  while left <= right
    mid = (left + right) / 2
    if nums[mid] < target
      left = mid + 1
    elsif nums[mid] > target
      right = mid - 1
    end
    if nums[mid] == target
      flag = mid
      break
    end
  end
  if flag == nil
    return [-1, -1]
  else
    start = nums[0, flag + 1].bsearch_index { |element| element >= target }
    ending = nums[flag, nums.length - flag].bsearch_index { |element| element > target }
    if start == nums.length - 1
      return [start, start]
    elsif ending == nil and start < nums.length - 1
      return [start, nums.length - 1]
    else
      return [start, ending - 1 + flag]
    end
  end
end
