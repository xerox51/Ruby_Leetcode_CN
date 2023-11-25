# @param {Integer[]} nums
# @return {Boolean}
def is_good(nums)
  l = nums.length - 1
  a = (1..l).to_a
  a.concat([l])
  nums.sort == a
end
