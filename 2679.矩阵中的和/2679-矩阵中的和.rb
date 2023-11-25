# @param {Integer[][]} nums
# @return {Integer}
def matrix_sum(nums)
  ans = 0
  m = []
  for i in 0...nums.length
    nums[i].sort!
    m.push(nums[i])
  end
  n = m.transpose
  for i in 0...n.length
    ans += n[i].max
  end
  ans
end
