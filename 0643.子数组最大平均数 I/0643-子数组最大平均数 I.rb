# @param {Integer[]} nums
# @param {Integer} k
# @return {Float}
def find_max_average(nums, k)
  total = nums[0, k].sum
  n = nums.length
  maxsum = total
  k.upto(n - 1) do |i|
    total = total - nums[i - k] + nums[i]
    maxsum = [maxsum, total].max
  end
  maxsum / k.to_f
end
