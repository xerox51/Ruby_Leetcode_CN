# @param {Integer[]} nums
# @return {Integer}
def array_pair_sum(nums)
  nums.sort!
  total = 0
  (0...nums.length).step(2) do |i|
    total += nums[i]
  end
  total
end
