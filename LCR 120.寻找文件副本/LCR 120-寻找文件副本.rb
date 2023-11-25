# @param {Integer[]} nums
# @return {Integer}
def find_repeat_number(nums)
  h = {}
  for i in 0...nums.length
    if h.has_key?(nums[i])
      return nums[i]
    else
      h[nums[i]] = 1
    end
  end
end
