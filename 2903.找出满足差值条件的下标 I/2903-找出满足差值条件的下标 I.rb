# @param {Integer[]} nums
# @param {Integer} index_difference
# @param {Integer} value_difference
# @return {Integer[]}
def find_indices(nums, index_difference, value_difference)
  for i in 0...nums.length
    for j in 0...nums.length
      if (i - j).abs >= index_difference and (nums[i] - nums[j]).abs >= value_difference
        return [i, j]
      end
    end
  end
  [-1, -1]
end
