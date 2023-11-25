# @param {Integer[]} nums
# @return {Integer}
def array_sign(nums)
  if nums.include?(0)
    return 0
  end
  negative = nums.select { |element| element < 0 }
  if negative.length % 2 == 1
    return -1
  else
    return 1
  end
end
