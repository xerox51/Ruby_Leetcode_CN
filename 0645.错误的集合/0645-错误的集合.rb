# @param {Integer[]} nums
# @return {Integer[]}
def find_error_nums(nums)
  nums.sort!
  ans = Array.new(2)
  pre = 0
  nums.each do |item|
    if item == pre
      ans[0] = item
    elsif item - pre > 1
      ans[1] = pre + 1
    end
    pre = item
  end
  n = nums.length
  if nums[n - 1] != n
    ans[1] = n
  end
  return ans
end
