# @param {Integer[]} nums
# @return {Integer}
def jump(nums)
  ans, ending, max_pos = 0, 0, 0
  0.upto(nums.length - 2) do |i|
    max_pos = [nums[i] + i, max_pos].max
    if i == ending
      ending = max_pos
      ans += 1
    end
  end
  ans
end
