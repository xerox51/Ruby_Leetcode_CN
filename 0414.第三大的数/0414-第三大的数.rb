# @param {Integer[]} nums
# @return {Integer}
def third_max(nums)
  answer = nums.uniq.sort
  if answer.length >= 3
    answer[-3]
  else
    answer.max
  end
end
