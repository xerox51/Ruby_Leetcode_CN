# @param {Integer[]} nums
# @return {Integer[]}
def smaller_numbers_than_current(nums)
  ans = []
  for i in 0...nums.length
    item = nums.select { |item| item < nums[i] }
    ans.push(item.length)
  end
  ans
end
