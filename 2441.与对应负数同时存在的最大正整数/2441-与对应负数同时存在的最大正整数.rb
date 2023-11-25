# @param {Integer[]} nums
# @return {Integer}
def find_max_k(nums)
  nums.sort!
  ans = {}
  for i in 0...nums.length
    if nums[i] < 0
      ans[nums[i]] = -1
    elsif nums[i] > 0 and ans.has_key?(-nums[i])
      ans[-nums[i]] = nums[i]
    end
  end
  if ans.empty?
    -1
  else
    ans.values.max
  end
end
