# @param {Integer[]} nums
# @return {Integer[]}
def find_duplicates(nums)
  nums.sort!
  ans = []
  for i in 0...nums.length - 1
    if nums[i] == nums[i + 1]
      ans.push(nums[i])
    end
  end
  ans
end
