# @param {Integer[]} nums
# @return {Integer}
def most_frequent_even(nums)
  nums.sort!
  ans = nums.uniq
  temp = {}
  for item in ans
    if item % 2 == 0
      temp[item] = nums.count(item)
    end
  end
  unless temp.empty?
    max_num = temp.values.max
    temp.key(max_num)
  else
    -1
  end
end
