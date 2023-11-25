# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)
  if nums.index(target) == nil
    ans = nums.bsearch_index { |element| element > target }
    if ans == nil
      return nums.length
    else
      return ans
    end
  else
    return nums.index(target)
  end
end
