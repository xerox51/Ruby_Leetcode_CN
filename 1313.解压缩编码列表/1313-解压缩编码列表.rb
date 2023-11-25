# @param {Integer[]} nums
# @return {Integer[]}
def decompress_rl_elist(nums)
  ans = []
  (0...nums.length).step(2) do |i|
    temp = Array.new(nums[i], nums[i + 1])
    ans.concat(temp)
  end
  ans
end
