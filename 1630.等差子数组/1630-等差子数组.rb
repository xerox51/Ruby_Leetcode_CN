# @param {Integer[]} nums
# @param {Integer[]} l
# @param {Integer[]} r
# @return {Boolean[]}
def check_arithmetic_subarrays(nums, l, r)
  ans = []
  l.each_with_index do |item, index|
    s = nums[item, r[index] - item + 1]
    s.sort!
    s0 = s[1] - s[0]
    flag = false
    1.upto(s.length - 1) do |i|
      if s[i] - s[i - 1] != s0
        ans.push(false)
        flag = true
        break
      end
    end
    unless flag
      ans.push(true)
    end
  end
  ans
end
