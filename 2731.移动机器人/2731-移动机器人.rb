# @param {Integer[]} nums
# @param {String} s
# @param {Integer} d
# @return {Integer}
def sum_distance(nums, s, d)
  n = nums.length
  mod = 10 ** 9 + 7
  pos = Array.new(n, 0)
  0.upto(n - 1) do |i|
    if s[i] == "L"
      pos[i] = nums[i] - d
    else
      pos[i] = nums[i] + d
    end
  end
  pos.sort!
  res = 0
  1.upto(n - 1) do |i|
    res += (pos[i] - pos[i - 1]) * i % mod * (n - i) % mod
    res %= mod
  end
  res
end
