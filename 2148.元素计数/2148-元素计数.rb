# @param {Integer[]} nums
# @return {Integer}
def count_elements(nums)
  if nums.uniq.length <= 2
    0
  else
    nums.delete(nums.max)
    nums.delete(nums.min)
    nums.length
  end
end
