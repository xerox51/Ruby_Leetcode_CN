# @param {Integer[]} nums
# @return {Integer}
def max_sub_array(nums)
  pre, maxAns = 0, nums[0]
  nums.each do |item|
    pre = [pre + item, item].max
    maxAns = [maxAns, pre].max
  end
  maxAns
end
