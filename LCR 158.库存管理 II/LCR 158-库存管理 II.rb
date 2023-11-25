# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
  h = {}
  n = nums.length / 2
  if nums.length == 1
    return nums[0]
  end
  for i in 0...nums.length
    if h.has_key?(nums[i])
      h[nums[i]] += 1
      if h[nums[i]] > n
        return nums[i]
      end
    else
      h[nums[i]] = 1
    end
  end
end
