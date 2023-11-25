# @param {Integer[]} nums
# @return {Integer}
def find_max_consecutive_ones(nums)
  arr = []
  ans = 0
  for i in 0...nums.length
    if nums[i] == 1 and i < nums.length - 1
      ans += 1
    elsif nums[i] == 1 and i == nums.length - 1
      ans += 1
      arr.push(ans)
    else
      arr.push(ans)
      ans = 0
    end
  end
  arr.max
end
