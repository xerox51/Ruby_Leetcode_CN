# @param {Integer[]} nums
# @return {Integer}
def min_operations(nums)
  ans = {}
  nums.each do |item|
    if ans.has_key?(item)
      ans[item] += 1
    else
      ans[item] = 1
    end
  end
  if ans.values.min == 1
    return -1
  else
    total = ans.values
    tmp = 0
    total.each do |item|
      it = item
      i = 0
      while it > 0
        if it >= 3
          it -= 3
          i += 1
        else
          it -= 2
          i += 1
        end
      end
      tmp += i
    end
    tmp
  end
end
