# @param {Integer[]} nums
# @return {Integer[][]}
def subsets(nums)
  temp = [[], nums]
  for i in 1..nums.length - 1
    temp.concat(nums.combination(i).to_a)
  end
  temp
end
