# @param {Integer[]} nums
# @return {Integer[]}
def frequency_sort(nums)
  h = {}
  for i in 0...nums.length
    if h.has_key?(nums[i])
      h[nums[i]][0] += 1
    end
    unless h.has_key?(nums[i])
      h[nums[i]] = [1, nums[i]]
    end
  end
  ans = h.values.sort_by { |element| [element[0], -element[1]] }
  temp = []
  for item in ans
    arr = Array.new(item[0], item[1])
    temp.concat(arr)
  end
  temp
end
