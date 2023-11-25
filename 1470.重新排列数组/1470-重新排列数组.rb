# @param {Integer[]} nums
# @param {Integer} n
# @return {Integer[]}
def shuffle(nums, n)
  ans = []
  for i in 0...nums.length / 2
    ans.push(nums[i])
    ans.push(nums[i + nums.length / 2])
  end
  ans
end
