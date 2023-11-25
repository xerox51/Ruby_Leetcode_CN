# @param {Integer[]} nums
# @return {Integer}
def maximum_sum(nums)
  h = {}
  for i in 0...nums.length
    if h.has_key?(cal_every_bit(nums[i]))
      h[cal_every_bit(nums[i])].push(nums[i])
    end
    unless h.has_key?(cal_every_bit(nums[i]))
      h[cal_every_bit(nums[i])] = [nums[i]]
    end
  end
  total = h.values.select { |item| item.size >= 2 }
  if total.empty?
    return -1
  else
    max_num = 0
    for item in total
      item.sort!
      items = item[-2] + item[-1]
      if items > max_num
        max_num = items
      end
    end
    return max_num
  end
end

def cal_every_bit(num)
  ans = 0
  if num < 10
    return num
  end
  while num > 0
    ans += num % 10
    num = num / 10
  end
  return ans
end
