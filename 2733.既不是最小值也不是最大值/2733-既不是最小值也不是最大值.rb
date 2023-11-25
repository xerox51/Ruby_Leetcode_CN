# @param {Integer[]} nums
# @return {Integer}
def find_non_min_or_max(nums)
  if nums.uniq.length <= 2
    return -1
  else
    return nums.uniq.sort[1]
  end
end
