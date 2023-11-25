# @param {Integer[]} nums
# @return {Integer[]}
def sort_array_by_parity(nums)
  a = nums.select { |element| element % 2 == 0 }
  nums.select! { |element| element % 2 > 0 }
  a.concat(nums)
end
