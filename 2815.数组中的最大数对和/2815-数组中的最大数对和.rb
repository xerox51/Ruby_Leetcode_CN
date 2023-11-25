# @param {Integer[]} nums
# @return {Integer}
def max_sum(nums)
  h = {}
  for i in 0...nums.length
    a = nums[i].to_s.each_char.to_a.map { |item| item.to_i }
    b = a.max
    unless h.has_key?(b)
      h[b] = [nums[i]]
    else
      h[b].push(nums[i])
    end
  end
  ans = 0
  h.each_pair do |key, value|
    if value.length > 1
      a = value.sort
      b = a[-2] + a[-1]
      ans = [ans, b].max
    end
  end
  if ans == 0
    return -1
  else
    return ans
  end
end
