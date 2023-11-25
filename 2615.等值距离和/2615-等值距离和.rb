# @param {Integer[]} nums
# @return {Integer[]}
def distance(nums)
  arr = nums.uniq.to_h { |item| [item, []] }
  nums.each_with_index do |item, index|
    if arr.has_key?(item)
      arr[item].push(index)
    end
  end
  ans = Array.new(nums.length, 0)
  arr.each_pair do |key, value|
    n = value.length
    s = Array.new(n + 1, 0)
    for i in 0...value.length
      s[i + 1] = s[i] + value[i]
    end
    for i in 0...value.length
      left = value[i] * i - s[i]
      right = s[n] - s[i] - value[i] * (n - i)
      ans[value[i]] = left + right
    end
  end
  ans
end
