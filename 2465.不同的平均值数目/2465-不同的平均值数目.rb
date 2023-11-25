# @param {Integer[]} nums
# @return {Integer}
def distinct_averages(nums)
  ans = {}
  nums.sort!
  for i in 0..nums.length / 2
    unless ans.has_key?((nums[i] + nums[nums.length - 1 - i]).to_f / 2)
      ans[(nums[i] + nums[nums.length - 1 - i]).to_f / 2] = 1
    end
  end
  ans.size
end
