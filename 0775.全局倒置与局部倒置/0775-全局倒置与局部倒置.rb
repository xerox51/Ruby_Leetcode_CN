# @param {Integer[]} nums
# @return {Boolean}
def is_ideal_permutation(nums)
  min_suf = nums[-1]
  (nums.length - 2).downto(1) do |i|
    if nums[i - 1] > min_suf
      return false
    end
    min_suf = [min_suf, nums[i]].min
  end
  return true
end
