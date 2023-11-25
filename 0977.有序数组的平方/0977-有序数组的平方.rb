# @param {Integer[]} nums
# @return {Integer[]}
def sorted_squares(nums)
  ans = []
  for item in nums
    ans.push(item * item)
  end
  ans.sort
end
