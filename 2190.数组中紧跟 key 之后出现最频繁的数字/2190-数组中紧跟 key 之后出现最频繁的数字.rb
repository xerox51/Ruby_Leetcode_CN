# @param {Integer[]} nums
# @param {Integer} key
# @return {Integer}
def most_frequent(nums, key)
  h = {}
  for i in 0...nums.length
    if i < nums.length - 1 and nums[i] == key and h.has_key?(key)
      h[key].push(nums[i + 1])
    elsif i < nums.length - 1 and nums[i] == key and not h.has_key?(key)
      h[key] = [nums[i + 1]]
    end
  end
  ans = h[key].sort
  arr = h[key].sort.uniq
  flag = ans.count(arr[0])
  temp = arr[0]
  for item in arr
    m = ans.count(item)
    if m > flag
      flag = m
      temp = item
    end
  end
  return temp
end
