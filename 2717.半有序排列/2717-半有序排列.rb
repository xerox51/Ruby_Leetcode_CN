# @param {Integer[]} nums
# @return {Integer}
def semi_ordered_permutation(nums)
  n = nums.length
  p = nums.index(1)
  q = nums.index(n)
  if p > q
    s = 1
  else
    s = 0
  end
  p + n - 1 - q - s
end
