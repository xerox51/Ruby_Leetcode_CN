# @param {Integer[]} nums
# @return {Boolean}
def check(nums)
  num = nums.sort
  n = nums.length
  for i in 0...n
    ans = Array.new(n, 0)
    for j in 0...n
      ans[j] = nums[(j + i) % n]
    end
    if ans == num
      return true
    end
  end
  false
end
